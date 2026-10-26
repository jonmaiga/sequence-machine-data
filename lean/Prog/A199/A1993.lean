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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199300: a(n) = (2*n + 1)*7^n.

The programs for A199300, the canonical program `A199300.P17020320036334192141` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199300 has offset 0).

The definition of A199300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*7^n` (program `A199300.P17020320036334192141`, by `A199300.P17020320036334192141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199300.P17020320036334192141

`(2*n+1)*7^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199300

/-- `(2*n+1)*7^n` -/
def P17020320036334192141.Spec : Prop :=
  ∀ n, (P17020320036334192141.a n : ℤ) = A199300 n

theorem P17020320036334192141.correct : P17020320036334192141.Spec := by
  intro n
  simp only [A199300]

end A199300

/-! ## A199300.P1775303964120216377

`14*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=21`
-/

namespace A199300.P1775303964120216377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  14 * a (n - 1) - 49 * a (n - 2)

end

end A199300.P1775303964120216377

namespace A199300

/-- `14*a(n-1)-49*a(n-2)` -/
def P1775303964120216377.Spec : Prop :=
  ∀ n, P1775303964120216377.a n = A199300 n

theorem P1775303964120216377.correct : P1775303964120216377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A199300, Nat.add_sub_cancel, A199300.P1775303964120216377.a, A199300.P17020320036334192141.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A199300, Nat.add_sub_cancel, A199300.P1775303964120216377.a, A199300.P17020320036334192141.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199300

/-! ## A199300.P3525392027260160662

`abs(Δ[n²]*A000420(n))`
-/

namespace A199300.P3525392027260160662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000420 n|

end

end A199300.P3525392027260160662

namespace A199300

/-- `abs(Δ[n²]*A000420(n))` -/
def P3525392027260160662.Spec : Prop :=
  ∀ n, P3525392027260160662.a n = A199300 n

end A199300

/-! ## A199300.P11807394216481480557

`(4*n+2)*A017925(2*n)/2`
-/

namespace A199300.P11807394216481480557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 2 : ℤ) * A017925 (2 * n) : ℚ) / 2

end

end A199300.P11807394216481480557

namespace A199300

/-- `(4*n+2)*A017925(2*n)/2` -/
def P11807394216481480557.Spec : Prop :=
  ∀ n, P11807394216481480557.a n = (A199300 n : ℚ)

end A199300

/-! ## A199300.P1522563088762376442

`A109808(n+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A199300.P1522563088762376442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109808 (n + 1) + 7 * a (n - 1)

end

end A199300.P1522563088762376442

namespace A199300

/-- `A109808(n+1)+7*a(n-1)` -/
def P1522563088762376442.Spec : Prop :=
  ∀ n, P1522563088762376442.a n = A199300 n

theorem P1522563088762376442.correct : P1522563088762376442.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199300, Nat.add_sub_cancel, A199300.P1522563088762376442.a, A199300.P17020320036334192141.a, A109808, A109808.P10761423487218282710.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199300, Nat.add_sub_cancel, A199300.P1522563088762376442.a, A199300.P17020320036334192141.a, A109808, A109808.P10761423487218282710.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199300

/-! ## A199300.P13049710901780481369

`A036293(n)+7^n/tan(acot(n+1))`
-/

namespace A199300.P13049710901780481369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036293 n : ℝ) + (7 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A199300.P13049710901780481369

namespace A199300

/-- `A036293(n)+7^n/tan(acot(n+1))` -/
def P13049710901780481369.Spec : Prop :=
  ∀ n, P13049710901780481369.a n = (A199300 n : ℝ)

end A199300

/-! ## A199300.P14079683933371110250

`A000420(n)+2*A036293(n)`
-/

namespace A199300.P14079683933371110250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + 2 * A036293 n

end

end A199300.P14079683933371110250

namespace A199300

/-- `A000420(n)+2*A036293(n)` -/
def P14079683933371110250.Spec : Prop :=
  ∀ n, P14079683933371110250.a n = A199300 n

theorem P14079683933371110250.correct : P14079683933371110250.Spec := by
  intro n
  simp only [A199300, Nat.add_sub_cancel, A199300.P14079683933371110250.a, A199300.P17020320036334192141.a, A000420, A000420.P3695589171832359676.a, A036293, A036293.P8879774288884538033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199300

/-! ## A199300.P12008989554381821478

`2*A027473(n+1)-A000420(n)`
-/

namespace A199300.P12008989554381821478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027473 (n + 1) - A000420 n

end

end A199300.P12008989554381821478

namespace A199300

/-- `2*A027473(n+1)-A000420(n)` -/
def P12008989554381821478.Spec : Prop :=
  ∀ n, P12008989554381821478.a n = A199300 n

end A199300

/-! ## A199300.P9432618635034825159

`(A016813(n)+1)*A000420(n)/2`
-/

namespace A199300.P9432618635034825159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016813 n + 1) * A000420 n : ℚ) / 2

end

end A199300.P9432618635034825159

namespace A199300

/-- `(A016813(n)+1)*A000420(n)/2` -/
def P9432618635034825159.Spec : Prop :=
  ∀ n, P9432618635034825159.a n = (A199300 n : ℚ)

theorem P9432618635034825159.correct : P9432618635034825159.Spec := by
  intro n
  simp only [A199300, Nat.add_sub_cancel, A199300.P9432618635034825159.a, A199300.P17020320036334192141.a, A000420, A000420.P3695589171832359676.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199300

/-! ## A199300.P3133992182865744985

`A000420(n)+n*A109808(n+1)`
-/

namespace A199300.P3133992182865744985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + (n : ℤ) * A109808 (n + 1)

end

end A199300.P3133992182865744985

namespace A199300

/-- `A000420(n)+n*A109808(n+1)` -/
def P3133992182865744985.Spec : Prop :=
  ∀ n, P3133992182865744985.a n = A199300 n

theorem P3133992182865744985.correct : P3133992182865744985.Spec := by
  intro n
  simp only [A199300, Nat.add_sub_cancel, A199300.P3133992182865744985.a, A199300.P17020320036334192141.a, A000420, A000420.P3695589171832359676.a, A109808, A109808.P10761423487218282710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199300

/-! ## A199300.P307063351743811476

`A123752(2*n)+n*A123752(2*n+1)`
-/

namespace A199300.P307063351743811476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * n) + (n : ℤ) * A123752 (2 * n + 1)

end

end A199300.P307063351743811476

namespace A199300

/-- `A123752(2*n)+n*A123752(2*n+1)` -/
def P307063351743811476.Spec : Prop :=
  ∀ n, P307063351743811476.a n = A199300 n

end A199300

/-! ## A199300.P14872038933617744834

`A000420(n)+A000420(n)*A005843(n)`
-/

namespace A199300.P14872038933617744834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + A000420 n * A005843 n

end

end A199300.P14872038933617744834

namespace A199300

/-- `A000420(n)+A000420(n)*A005843(n)` -/
def P14872038933617744834.Spec : Prop :=
  ∀ n, P14872038933617744834.a n = A199300 n

theorem P14872038933617744834.correct : P14872038933617744834.Spec := by
  intro n
  simp only [A199300, Nat.add_sub_cancel, A199300.P14872038933617744834.a, A199300.P17020320036334192141.a, A000420, A000420.P3695589171832359676.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199300

/-! ## A199300.P14921512108777017791

`A005408(n)+A005408(n)*A024075(n)`
-/

namespace A199300.P14921512108777017791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A005408 n * A024075 n

end

end A199300.P14921512108777017791

namespace A199300

/-- `A005408(n)+A005408(n)*A024075(n)` -/
def P14921512108777017791.Spec : Prop :=
  ∀ n, P14921512108777017791.a n = A199300 n

theorem P14921512108777017791.correct : P14921512108777017791.Spec := by
  intro n
  simp only [A199300, Nat.add_sub_cancel, A199300.P14921512108777017791.a, A199300.P17020320036334192141.a, A005408, A005408.P17437947328870227736.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199300

/-! ## A199300.P1423056077936570009

`A005843(n+1)*A017925(2*n)-A017925(2*n)`
-/

namespace A199300.P1423056077936570009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A017925 (2 * n) - A017925 (2 * n)

end

end A199300.P1423056077936570009

namespace A199300

/-- `A005843(n+1)*A017925(2*n)-A017925(2*n)` -/
def P1423056077936570009.Spec : Prop :=
  ∀ n, P1423056077936570009.a n = A199300 n

end A199300

/-! ## A199300.P13995708922345293848

`A000420(n)*A016945(n)/3`
-/

namespace A199300.P13995708922345293848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n * A016945 n : ℚ) / 3

end

end A199300.P13995708922345293848

namespace A199300

/-- `A000420(n)*A016945(n)/3` -/
def P13995708922345293848.Spec : Prop :=
  ∀ n, P13995708922345293848.a n = (A199300 n : ℚ)

theorem P13995708922345293848.correct : P13995708922345293848.Spec := by
  intro n
  simp only [A199300, Nat.add_sub_cancel, A199300.P13995708922345293848.a, A199300.P17020320036334192141.a, A000420, A000420.P3695589171832359676.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199300

/-!
# A199301: a(n) = (2n+1)*8^n.

The programs for A199301, the canonical program `A199301.P14907240042379616468` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199301 has offset 0).

The definition of A199301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*8^n` (program `A199301.P14907240042379616468`, by `A199301.P14907240042379616468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199301.P14907240042379616468

`(2*n+1)*8^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199301

/-- `(2*n+1)*8^n` -/
def P14907240042379616468.Spec : Prop :=
  ∀ n, (P14907240042379616468.a n : ℤ) = A199301 n

theorem P14907240042379616468.correct : P14907240042379616468.Spec := by
  intro n
  simp only [A199301]

end A199301

/-! ## A199301.P7810598903601045608

`16*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=24`
-/

namespace A199301.P7810598903601045608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  16 * a (n - 1) - 64 * a (n - 2)

end

end A199301.P7810598903601045608

namespace A199301

/-- `16*a(n-1)-64*a(n-2)` -/
def P7810598903601045608.Spec : Prop :=
  ∀ n, P7810598903601045608.a n = A199301 n

theorem P7810598903601045608.correct : P7810598903601045608.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A199301, Nat.add_sub_cancel, A199301.P7810598903601045608.a, A199301.P14907240042379616468.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A199301, Nat.add_sub_cancel, A199301.P7810598903601045608.a, A199301.P14907240042379616468.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199301

/-! ## A199301.P5835944544287196145

`lcm(8^n, Δ[n²])`
-/

namespace A199301.P5835944544287196145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (8 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199301.P5835944544287196145

namespace A199301

/-- `lcm(8^n, Δ[n²])` -/
def P5835944544287196145.Spec : Prop :=
  ∀ n, (P5835944544287196145.a n : ℤ) = A199301 n

end A199301

/-! ## A199301.P6998568711051049594

`record[(n+1)*A094014(n)]`
-/

namespace A199301.P6998568711051049594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199301.P6998568711051049594

namespace A199301

/-- `record[(n+1)*A094014(n)]` -/
def P6998568711051049594.Spec : Prop :=
  ∀ n, P6998568711051049594.a n = A199301 n

end A199301

/-! ## A199301.P11637617247676918513

`A013730(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A199301.P11637617247676918513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013730 n + 8 * a (n - 1)

end

end A199301.P11637617247676918513

namespace A199301

/-- `A013730(n)+8*a(n-1)` -/
def P11637617247676918513.Spec : Prop :=
  ∀ n, P11637617247676918513.a n = A199301 n

end A199301

/-! ## A199301.P828739415701956813

`A001018(n)+2*A036294(n)`
-/

namespace A199301.P828739415701956813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + 2 * A036294 n

end

end A199301.P828739415701956813

namespace A199301

/-- `A001018(n)+2*A036294(n)` -/
def P828739415701956813.Spec : Prop :=
  ∀ n, P828739415701956813.a n = A199301 n

theorem P828739415701956813.correct : P828739415701956813.Spec := by
  intro n
  simp only [A199301, Nat.add_sub_cancel, A199301.P828739415701956813.a, A199301.P14907240042379616468.a, A001018, A001018.P5588564631493008987.a, A036294, A036294.P5330429695356076462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199301

/-! ## A199301.P15696408083953536096

`A001018(n)+n*A013730(n)`
-/

namespace A199301.P15696408083953536096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + (n : ℤ) * A013730 n

end

end A199301.P15696408083953536096

namespace A199301

/-- `A001018(n)+n*A013730(n)` -/
def P15696408083953536096.Spec : Prop :=
  ∀ n, P15696408083953536096.a n = A199301 n

end A199301

/-! ## A199301.P2107691829880810168

`record[A099375(n)*A305561(A099375(n))]`
-/

namespace A199301.P2107691829880810168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A305561 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199301.P2107691829880810168

namespace A199301

/-- `record[A099375(n)*A305561(A099375(n))]` -/
def P2107691829880810168.Spec : Prop :=
  ∀ n, P2107691829880810168.a n = A199301 n

end A199301

/-! ## A199301.P10795644819417018683

`A001018(n)+A001018(n)*A005843(n)`
-/

namespace A199301.P10795644819417018683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + A001018 n * A005843 n

end

end A199301.P10795644819417018683

namespace A199301

/-- `A001018(n)+A001018(n)*A005843(n)` -/
def P10795644819417018683.Spec : Prop :=
  ∀ n, P10795644819417018683.a n = A199301 n

theorem P10795644819417018683.correct : P10795644819417018683.Spec := by
  intro n
  simp only [A199301, Nat.add_sub_cancel, A199301.P10795644819417018683.a, A199301.P14907240042379616468.a, A001018, A001018.P5588564631493008987.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199301

/-! ## A199301.P4228509440210352354

`(2*n+1)*A000079(A016777(n))/2`
-/

namespace A199301.P4228509440210352354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A000079 (A016777 n).toNat : ℚ) / 2

end

end A199301.P4228509440210352354

namespace A199301

/-- `(2*n+1)*A000079(A016777(n))/2` -/
def P4228509440210352354.Spec : Prop :=
  ∀ n, P4228509440210352354.a n = (A199301 n : ℚ)

end A199301

/-! ## A199301.P4953970515541333142

`A001787(2*n+1)*A001787(n+1)/(n+1)`
-/

namespace A199301.P4953970515541333142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (2 * n + 1) * A001787 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A199301.P4953970515541333142

namespace A199301

/-- `A001787(2*n+1)*A001787(n+1)/(n+1)` -/
def P4953970515541333142.Spec : Prop :=
  ∀ n, P4953970515541333142.a n = (A199301 n : ℚ)

end A199301

/-! ## A199301.P13117965270009003134

`A058962(n)*A118415(n+1)/A016813(n)`
-/

namespace A199301.P13117965270009003134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058962 n * A118415 (n + 1) : ℚ) / (A016813 n : ℚ)

end

end A199301.P13117965270009003134

namespace A199301

/-- `A058962(n)*A118415(n+1)/A016813(n)` -/
def P13117965270009003134.Spec : Prop :=
  ∀ n, P13117965270009003134.a n = (A199301 n : ℚ)

end A199301

/-! ## A199301.P17164177876128901115

`A111983(∑[n])`
-/

namespace A199301.P17164177876128901115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111983 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199301.P17164177876128901115

namespace A199301

/-- `A111983(∑[n])` -/
def P17164177876128901115.Spec : Prop :=
  ∀ n, P17164177876128901115.a n = A199301 n

end A199301

/-! ## A199301.P765906686459290536

`record[A111983(n)]`
-/

namespace A199301.P765906686459290536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199301.P765906686459290536

namespace A199301

/-- `record[A111983(n)]` -/
def P765906686459290536.Spec : Prop :=
  ∀ n, P765906686459290536.a n = A199301 n

end A199301

/-!
# A199302: Palindromic primes in the sense of A007500 with digits '0', '1' and '2' only.

The programs for A199302, there is no canonical definition to state claims against.
-/

/-! ## A199302.P13373722817286925659

`∩[A007089(n), A178316(n+1)]`
-/

namespace A199302.P13373722817286925659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199302.P13373722817286925659

/-! ## A199302.P8768954554657838474

`∩[A007500(n+1), A007089(n)]`
-/

namespace A199302.P8768954554657838474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199302.P8768954554657838474

/-! ## A199302.P8720020811290613179

`∩[A007091(n), A178316(n+1)]`
-/

namespace A199302.P8720020811290613179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199302.P8720020811290613179

/-! ## A199302.P7479855711140625467

`∩[A007500(n+1), A036953(n+1)]`
-/

namespace A199302.P7479855711140625467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199302.P7479855711140625467

/-!
# A199303: Palindromic primes in the sense of A007500 with digits '0', '1' and '3' only.

The programs for A199303, there is no canonical definition to state claims against.
-/

/-! ## A199303.P10829715550035392663

`∩[A007500(n+1), A260044(n+1)]`
-/

namespace A199303.P10829715550035392663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199303.P10829715550035392663

/-! ## A199303.P8162035960189978246

`∩[A260044(n+1), A341089(n+1)]`
-/

namespace A199303.P8162035960189978246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199303.P8162035960189978246

/-! ## A199303.P12855473008930444560

`∩[A085869(n+1), A260044(n+1)]`
-/

namespace A199303.P12855473008930444560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199303.P12855473008930444560

/-! ## A199303.P12860997636862754040

`∩[A062895(n+1), A260044(n+1)]`
-/

namespace A199303.P12860997636862754040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199303.P12860997636862754040

/-! ## A199303.P10236465080041442540

`∩[A095179(n+1), A260044(n+1)]`
-/

namespace A199303.P10236465080041442540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199303.P10236465080041442540

/-!
# A199305: Palindromic primes in the sense of A007500 with digits '0', '1' and '5' only.

The programs for A199305, there is no canonical definition to state claims against.
-/

/-! ## A199305.P3485416567235408831

`∩[A178316(n+1), A199325(n+1)]`
-/

namespace A199305.P3485416567235408831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199305.P3485416567235408831

/-! ## A199305.P16904053623528472644

`∩[A178316(n+1), A386024(n+1)]`
-/

namespace A199305.P16904053623528472644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199305.P16904053623528472644

/-! ## A199305.P13187110754127613644

`∩[A178316(n+1), A386027(n+1)]`
-/

namespace A199305.P13187110754127613644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199305.P13187110754127613644

/-! ## A199305.P14221580654696343318

`∩[A178316(n+1), A386032(n+1)]`
-/

namespace A199305.P14221580654696343318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199305.P14221580654696343318

/-! ## A199305.P3401896889663165741

`∩[A007500(n+1), A199325(n+1)]`
-/

namespace A199305.P3401896889663165741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199305.P3401896889663165741

/-!
# A199306: Palindromic primes in the sense of A007500 with digits '0', '1' and '6' only.

The programs for A199306, there is no canonical definition to state claims against.
-/

/-! ## A199306.P9041567766904779836

`A199326(eq[A199322(3*n+1), A199358(n+1)])`
-/

namespace A199306.P9041567766904779836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199322 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A199306.P9041567766904779836

/-!
# A199307: Primes of the form 4*k^3 + 1.

The programs for A199307, there is no canonical definition to state claims against.
-/

/-! ## A199307.P8075557732286234103

`1+A033430(A115104(n+1))`
-/

namespace A199307.P8075557732286234103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A033430 (A115104 (n + 1)).toNat

end

end A199307.P8075557732286234103

/-! ## A199307.P421182158350041621

`A274324(2*A115104(n+1))`
-/

namespace A199307.P421182158350041621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (2 * A115104 (n + 1)).toNat

end

end A199307.P421182158350041621

/-! ## A199307.P3502950416342351760

`A321069(2*A115104(n+1))`
-/

namespace A199307.P3502950416342351760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (2 * A115104 (n + 1)).toNat

end

end A199307.P3502950416342351760

/-! ## A199307.P2807539947385657966

`record[A321069(A065330(n+1)+1)]`
-/

namespace A199307.P2807539947385657966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (A065330 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199307.P2807539947385657966

/-! ## A199307.P8272991922700020040

`A321069(eq[1, A321069(n+1)%(n+1)]+1)`
-/

namespace A199307.P8272991922700020040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321069 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199307.P8272991922700020040

/-! ## A199307.P17481125309019530542

`A321069(A115104(n+1)+A115104(n+1))`
-/

namespace A199307.P17481125309019530542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (A115104 (n + 1) + A115104 (n + 1)).toNat

end

end A199307.P17481125309019530542

/-!
# A199308: a(n) = (7*5^n+1)/4.

The programs for A199308, the canonical program `A199308.P8969987968452800729` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199308 has offset 0).

The definition of A199308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*5^n+1)/4` (program `A199308.P11414779462885687673`, by `A199308.P11414779462885687673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199308.P8969987968452800729

`5*a(n-1)-1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199308

/-- `5*a(n-1)-1` -/
def P8969987968452800729.Spec : Prop :=
  ∀ n, P8969987968452800729.a n = A199308 n

theorem P8969987968452800729.correct : P8969987968452800729.Spec := by
  intro n
  simp only [A199308]

end A199308

/-! ## A199308.P11414779462885687673

`(7*5^n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199308.P11414779462885687673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 5 ^ n + 1 : ℚ) / 4

end

end A199308.P11414779462885687673

namespace A199308

/-- `(7*5^n+1)/4` -/
def P11414779462885687673.Spec : Prop :=
  ∀ n, P11414779462885687673.a n = (A199308 n : ℚ)

theorem P11414779462885687673.correct : P11414779462885687673.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199308, Nat.add_sub_cancel, A199308.P11414779462885687673.a, A199308.P8969987968452800729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199308, Nat.add_sub_cancel, A199308.P11414779462885687673.a, A199308.P8969987968452800729.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199308

/-! ## A199308.P7694443826338122403

`ogf((2-3x)/(1-6x+5x^2))`
-/

namespace A199308.P7694443826338122403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -6, 5] n

end

end A199308.P7694443826338122403

namespace A199308

/-- `ogf((2-3x)/(1-6x+5x^2))` -/
def P7694443826338122403.Spec : Prop :=
  ∀ n, P7694443826338122403.a n = A199308 n

end A199308

/-! ## A199308.P2705633915116459730

`lcm(5, a(n-1))-1` with `a(0)=2`
-/

namespace A199308.P2705633915116459730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 1

end

end A199308.P2705633915116459730

namespace A199308

/-- `lcm(5, a(n-1))-1` -/
def P2705633915116459730.Spec : Prop :=
  ∀ n, P2705633915116459730.a n = A199308 n

end A199308

/-! ## A199308.P9353531351234047031

`a(n-1)/(1-4/5)-1` with `a(0)=2`
-/

namespace A199308.P9353531351234047031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 1

end

end A199308.P9353531351234047031

namespace A199308

/-- `a(n-1)/(1-4/5)-1` -/
def P9353531351234047031.Spec : Prop :=
  ∀ n, P9353531351234047031.a n = (A199308 n : ℚ)

end A199308

/-! ## A199308.P5338294116418145385

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=2`
-/

namespace A199308.P5338294116418145385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 1))))

end

end A199308.P5338294116418145385

namespace A199308

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` -/
def P5338294116418145385.Spec : Prop :=
  ∀ n, P5338294116418145385.a n = A199308 n

theorem P5338294116418145385.correct : P5338294116418145385.Spec := by
  intro n
  simp only [A199308, Nat.add_sub_cancel, A199308.P5338294116418145385.a, A199308.P8969987968452800729.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199308

/-! ## A199308.P13189854071729374513

`a(n-1)-(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=2`
-/

namespace A199308.P13189854071729374513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A199308.P13189854071729374513

namespace A199308

/-- `a(n-1)-(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P13189854071729374513.Spec : Prop :=
  ∀ n, P13189854071729374513.a n = A199308 n

theorem P13189854071729374513.correct : P13189854071729374513.Spec := by
  intro n
  simp only [A199308, Nat.add_sub_cancel, A199308.P13189854071729374513.a, A199308.P8969987968452800729.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199308

/-! ## A199308.P12967901121976083589

`A117617(n)+1`
-/

namespace A199308.P12967901121976083589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117617 n + 1

end

end A199308.P12967901121976083589

namespace A199308

/-- `A117617(n)+1` -/
def P12967901121976083589.Spec : Prop :=
  ∀ n, P12967901121976083589.a n = A199308 n

end A199308

/-! ## A199308.P4246584702768434133

`ceil(A198766(n)/2)`
-/

namespace A199308.P4246584702768434133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198766 n : ℚ) / 2⌉

end

end A199308.P4246584702768434133

namespace A199308

/-- `ceil(A198766(n)/2)` -/
def P4246584702768434133.Spec : Prop :=
  ∀ n, P4246584702768434133.a n = A199308 n

end A199308

/-! ## A199308.P12431540280662551586

`A026384(2*n)+1`
-/

namespace A199308.P12431540280662551586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026384 (2 * n) + 1

end

end A199308.P12431540280662551586

namespace A199308

/-- `A026384(2*n)+1` -/
def P12431540280662551586.Spec : Prop :=
  ∀ n, P12431540280662551586.a n = A199308 n

end A199308

/-! ## A199308.P11587231421507786064

`7*A003463(n)+2`
-/

namespace A199308.P11587231421507786064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A003463 n + 2

end

end A199308.P11587231421507786064

namespace A199308

/-- `7*A003463(n)+2` -/
def P11587231421507786064.Spec : Prop :=
  ∀ n, P11587231421507786064.a n = A199308 n

end A199308

/-! ## A199308.P13692582957695479149

`ceil(A026396(2*n)/2)`
-/

namespace A199308.P13692582957695479149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026396 (2 * n) : ℚ) / 2⌉

end

end A199308.P13692582957695479149

namespace A199308

/-- `ceil(A026396(2*n)/2)` -/
def P13692582957695479149.Spec : Prop :=
  ∀ n, P13692582957695479149.a n = A199308 n

end A199308

/-! ## A199308.P6959237292361848694

`A020729(n)-A003463(n)`
-/

namespace A199308.P6959237292361848694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n - A003463 n

end

end A199308.P6959237292361848694

namespace A199308

/-- `A020729(n)-A003463(n)` -/
def P6959237292361848694.Spec : Prop :=
  ∀ n, P6959237292361848694.a n = A199308 n

end A199308

/-! ## A199308.P4822684296053623850

`Δ[A034478(n)]-A003463(n)`
-/

namespace A199308.P4822684296053623850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003463 n

end

end A199308.P4822684296053623850

namespace A199308

/-- `Δ[A034478(n)]-A003463(n)` -/
def P4822684296053623850.Spec : Prop :=
  ∀ n, P4822684296053623850.a n = A199308 n

end A199308

/-! ## A199308.P2455535272220494821

`A034478(n)+A003463(n+1)`
-/

namespace A199308.P2455535272220494821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + A003463 (n + 1)

end

end A199308.P2455535272220494821

namespace A199308

/-- `A034478(n)+A003463(n+1)` -/
def P2455535272220494821.Spec : Prop :=
  ∀ n, P2455535272220494821.a n = A199308 n

end A199308

/-! ## A199308.P12225919386884727758

`A003463(n)+A057651(n)+1`
-/

namespace A199308.P12225919386884727758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (A057651 n + 1)

end

end A199308.P12225919386884727758

namespace A199308

/-- `A003463(n)+A057651(n)+1` -/
def P12225919386884727758.Spec : Prop :=
  ∀ n, P12225919386884727758.a n = A199308 n

end A199308

/-! ## A199308.P6918240518714812986

`2*A000351(n)-A003463(n)`
-/

namespace A199308.P6918240518714812986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000351 n - A003463 n

end

end A199308.P6918240518714812986

namespace A199308

/-- `2*A000351(n)-A003463(n)` -/
def P6918240518714812986.Spec : Prop :=
  ∀ n, P6918240518714812986.a n = A199308 n

end A199308

/-! ## A199308.P11238814674999647060

`A083065(n)+A083065(n)+A003463(n)`
-/

namespace A199308.P11238814674999647060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 n + (A083065 n + A003463 n)

end

end A199308.P11238814674999647060

namespace A199308

/-- `A083065(n)+A083065(n)+A003463(n)` -/
def P11238814674999647060.Spec : Prop :=
  ∀ n, P11238814674999647060.a n = A199308 n

end A199308

/-! ## A199308.P6100296295761983377

`A047850(n+1)+A083065(n)-A047850(n)`
-/

namespace A199308.P6100296295761983377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 (n + 1) + (A083065 n - A047850 n)

end

end A199308.P6100296295761983377

namespace A199308

/-- `A047850(n+1)+A083065(n)-A047850(n)` -/
def P6100296295761983377.Spec : Prop :=
  ∀ n, P6100296295761983377.a n = A199308 n

end A199308

/-! ## A199308.P5172067932231262421

`A003463(n+1)+A003463(n+1)-A125833(n)`
-/

namespace A199308.P5172067932231262421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) + (A003463 (n + 1) - A125833 n)

end

end A199308.P5172067932231262421

namespace A199308

/-- `A003463(n+1)+A003463(n+1)-A125833(n)` -/
def P5172067932231262421.Spec : Prop :=
  ∀ n, P5172067932231262421.a n = A199308 n

end A199308

/-!
# A199309: a(n) = (7*5^n+1)/2.

The programs for A199309, the canonical program `A199309.P5568352898260851423` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199309 has offset 0).

The definition of A199309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*5^n+1)/2` (program `A199309.P6373893826349776209`, by `A199309.P6373893826349776209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199309.P5568352898260851423

`5*a(n-1)-2` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199309

/-- `5*a(n-1)-2` -/
def P5568352898260851423.Spec : Prop :=
  ∀ n, P5568352898260851423.a n = A199309 n

theorem P5568352898260851423.correct : P5568352898260851423.Spec := by
  intro n
  simp only [A199309]

end A199309

/-! ## A199309.P6373893826349776209

`(7*5^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199309.P6373893826349776209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 5 ^ n + 1 : ℚ) / 2

end

end A199309.P6373893826349776209

namespace A199309

/-- `(7*5^n+1)/2` -/
def P6373893826349776209.Spec : Prop :=
  ∀ n, P6373893826349776209.a n = (A199309 n : ℚ)

theorem P6373893826349776209.correct : P6373893826349776209.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199309, Nat.add_sub_cancel, A199309.P6373893826349776209.a, A199309.P5568352898260851423.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199309, Nat.add_sub_cancel, A199309.P6373893826349776209.a, A199309.P5568352898260851423.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199309

/-! ## A199309.P7492089860280754535

`ogf((4-6x)/(1-6x+5x^2))`
-/

namespace A199309.P7492089860280754535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6] [1, -6, 5] n

end

end A199309.P7492089860280754535

namespace A199309

/-- `ogf((4-6x)/(1-6x+5x^2))` -/
def P7492089860280754535.Spec : Prop :=
  ∀ n, P7492089860280754535.a n = A199309 n

end A199309

/-! ## A199309.P3627260803618325218

`lcm(5, a(n-1))-2` with `a(0)=4`
-/

namespace A199309.P3627260803618325218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 2

end

end A199309.P3627260803618325218

namespace A199309

/-- `lcm(5, a(n-1))-2` -/
def P3627260803618325218.Spec : Prop :=
  ∀ n, P3627260803618325218.a n = A199309 n

end A199309

/-! ## A199309.P18414290446075813054

`a(n-1)/(1-4/5)-2` with `a(0)=4`
-/

namespace A199309.P18414290446075813054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 2

end

end A199309.P18414290446075813054

namespace A199309

/-- `a(n-1)/(1-4/5)-2` -/
def P18414290446075813054.Spec : Prop :=
  ∀ n, P18414290446075813054.a n = (A199309 n : ℚ)

end A199309

/-! ## A199309.P15460804983085472101

`A198766(n)+1`
-/

namespace A199309.P15460804983085472101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198766 n + 1

end

end A199309.P15460804983085472101

namespace A199309

/-- `A198766(n)+1` -/
def P15460804983085472101.Spec : Prop :=
  ∀ n, P15460804983085472101.a n = A199309 n

end A199309

/-! ## A199309.P11451175298415219590

`2*A199308(n)`
-/

namespace A199309.P11451175298415219590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199308 n

end

end A199309.P11451175298415219590

namespace A199309

/-- `2*A199308(n)` -/
def P11451175298415219590.Spec : Prop :=
  ∀ n, P11451175298415219590.a n = A199309 n

end A199309

/-! ## A199309.P12005571160284473935

`A026396(2*n)+1`
-/

namespace A199309.P12005571160284473935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026396 (2 * n) + 1

end

end A199309.P12005571160284473935

namespace A199309

/-- `A026396(2*n)+1` -/
def P12005571160284473935.Spec : Prop :=
  ∀ n, P12005571160284473935.a n = A199309 n

end A199309

/-! ## A199309.P4259802246076360914

`2*(A117617(n)+1)`
-/

namespace A199309.P4259802246076360914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117617 n + 1)

end

end A199309.P4259802246076360914

namespace A199309

/-- `2*(A117617(n)+1)` -/
def P4259802246076360914.Spec : Prop :=
  ∀ n, P4259802246076360914.a n = A199309 n

end A199309

/-! ## A199309.P10851599732436063947

`7*A034478(n)-3`
-/

namespace A199309.P10851599732436063947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A034478 n - 3

end

end A199309.P10851599732436063947

namespace A199309

/-- `7*A034478(n)-3` -/
def P10851599732436063947.Spec : Prop :=
  ∀ n, P10851599732436063947.a n = A199309 n

end A199309

/-! ## A199309.P7036798715622505259

`7*A137410(n)+11`
-/

namespace A199309.P7036798715622505259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A137410 n + 11

end

end A199309.P7036798715622505259

namespace A199309

/-- `7*A137410(n)+11` -/
def P7036798715622505259.Spec : Prop :=
  ∀ n, P7036798715622505259.a n = A199309 n

end A199309

/-! ## A199309.P1536685253153148678

`2*(A026384(2*n)+1)`
-/

namespace A199309.P1536685253153148678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026384 (2 * n) + 1)

end

end A199309.P1536685253153148678

namespace A199309

/-- `2*(A026384(2*n)+1)` -/
def P1536685253153148678.Spec : Prop :=
  ∀ n, P1536685253153148678.a n = A199309 n

end A199309

/-! ## A199309.P7480925736802674725

`A034474(n)+∑[A020729(n)]`
-/

namespace A199309.P7480925736802674725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199309.P7480925736802674725

namespace A199309

/-- `A034474(n)+∑[A020729(n)]` -/
def P7480925736802674725.Spec : Prop :=
  ∀ n, P7480925736802674725.a n = A199309 n

end A199309

/-! ## A199309.P12576980475538027864

`Δ[A024050(n)]-A137410(n)`
-/

namespace A199309.P12576980475538027864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137410 n

end

end A199309.P12576980475538027864

namespace A199309

/-- `Δ[A024050(n)]-A137410(n)` -/
def P12576980475538027864.Spec : Prop :=
  ∀ n, P12576980475538027864.a n = A199309 n

end A199309

/-! ## A199309.P2667941872431310662

`A034478(n+1)+A000351(n)`
-/

namespace A199309.P2667941872431310662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 (n + 1) + A000351 n

end

end A199309.P2667941872431310662

namespace A199309

/-- `A034478(n+1)+A000351(n)` -/
def P2667941872431310662.Spec : Prop :=
  ∀ n, P2667941872431310662.a n = A199309 n

end A199309

/-! ## A199309.P489264383116745009

`A020729(n)+A057651(n)+1`
-/

namespace A199309.P489264383116745009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n + (A057651 n + 1)

end

end A199309.P489264383116745009

namespace A199309

/-- `A020729(n)+A057651(n)+1` -/
def P489264383116745009.Spec : Prop :=
  ∀ n, P489264383116745009.a n = A199309 n

end A199309

/-! ## A199309.P14806568074995512265

`A000351(n+1)-A057651(n)`
-/

namespace A199309.P14806568074995512265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (n + 1) - A057651 n

end

end A199309.P14806568074995512265

namespace A199309

/-- `A000351(n+1)-A057651(n)` -/
def P14806568074995512265.Spec : Prop :=
  ∀ n, P14806568074995512265.a n = A199309 n

end A199309

/-! ## A199309.P17027827822220697789

`A083065(n+1)-A003463(n)`
-/

namespace A199309.P17027827822220697789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 (n + 1) - A003463 n

end

end A199309.P17027827822220697789

namespace A199309

/-- `A083065(n+1)-A003463(n)` -/
def P17027827822220697789.Spec : Prop :=
  ∀ n, P17027827822220697789.a n = A199309 n

end A199309

/-! ## A199309.P4948335938492737139

`A057651(n)+A081655(n)+2`
-/

namespace A199309.P4948335938492737139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (A081655 n + 2)

end

end A199309.P4948335938492737139

namespace A199309

/-- `A057651(n)+A081655(n)+2` -/
def P4948335938492737139.Spec : Prop :=
  ∀ n, P4948335938492737139.a n = A199309 n

end A199309

/-! ## A199309.P8533254903565448061

`A198765(n)/2+1`
-/

namespace A199309.P8533254903565448061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198765 n : ℚ) / 2 + 1

end

end A199309.P8533254903565448061

namespace A199309

/-- `A198765(n)/2+1` -/
def P8533254903565448061.Spec : Prop :=
  ∀ n, P8533254903565448061.a n = (A199309 n : ℚ)

theorem P8533254903565448061.correct : P8533254903565448061.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199309, Nat.add_sub_cancel, A199309.P8533254903565448061.a, A199309.P5568352898260851423.a, A198765, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199309, Nat.add_sub_cancel, A199309.P8533254903565448061.a, A199309.P5568352898260851423.a, A198765, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199309

/-!
# A199310: a(n) = 7*5^n+1.

The programs for A199310, the canonical program `A199310.P10808348001800915976` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199310 has offset 0).

The definition of A199310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*5^n+1` (program `A199310.P10808348001800915976`, by `A199310.P10808348001800915976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199310.P10808348001800915976

`7*5^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199310

/-- `7*5^n+1` -/
def P10808348001800915976.Spec : Prop :=
  ∀ n, (P10808348001800915976.a n : ℤ) = A199310 n

theorem P10808348001800915976.correct : P10808348001800915976.Spec := by
  intro n
  simp only [A199310]

end A199310

/-! ## A199310.P1997098630213301413

`ogf((8-12x)/(1-6x+5x^2))`
-/

namespace A199310.P1997098630213301413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -12] [1, -6, 5] n

end

end A199310.P1997098630213301413

namespace A199310

/-- `ogf((8-12x)/(1-6x+5x^2))` -/
def P1997098630213301413.Spec : Prop :=
  ∀ n, P1997098630213301413.a n = A199310 n

end A199310

/-! ## A199310.P6799823345265534403

`abs(4-5*a(n-1))` with `a(0)=8`
-/

namespace A199310.P6799823345265534403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |4 - 5 * a (n - 1)|

end

end A199310.P6799823345265534403

namespace A199310

/-- `abs(4-5*a(n-1))` -/
def P6799823345265534403.Spec : Prop :=
  ∀ n, P6799823345265534403.a n = A199310 n

end A199310

/-! ## A199310.P7122789930510623488

`5*(a(n-1)-4/5)` with `a(0)=8`
-/

namespace A199310.P7122789930510623488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199310.P7122789930510623488

namespace A199310

/-- `5*(a(n-1)-4/5)` -/
def P7122789930510623488.Spec : Prop :=
  ∀ n, P7122789930510623488.a n = (A199310 n : ℚ)

theorem P7122789930510623488.correct : P7122789930510623488.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199310, Nat.add_sub_cancel, A199310.P7122789930510623488.a, A199310.P10808348001800915976.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199310, Nat.add_sub_cancel, A199310.P7122789930510623488.a, A199310.P10808348001800915976.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199310

/-! ## A199310.P12427516512164408473

`4*∑[5*a(n-1)]` with `a(0)=2, a(1)=7`
-/

namespace A199310.P12427516512164408473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199310.P12427516512164408473

namespace A199310

/-- `4*∑[5*a(n-1)]` -/
def P12427516512164408473.Spec : Prop :=
  ∀ n, (P12427516512164408473.a n : ℤ) = A199310 n

end A199310

/-! ## A199310.P12833836576033439394

`floor(a(n-1)+4*(a(n-1)-1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199310.P12833836576033439394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 4 * (a (n - 1) - 1)

end

end A199310.P12833836576033439394

namespace A199310

/-- `floor(a(n-1)+4*(a(n-1)-1))` -/
def P12833836576033439394.Spec : Prop :=
  ∀ n, P12833836576033439394.a n = A199310 n

theorem P12833836576033439394.correct : P12833836576033439394.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199310, Nat.add_sub_cancel, A199310.P12833836576033439394.a, A199310.P10808348001800915976.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199310, Nat.add_sub_cancel, A199310.P12833836576033439394.a, A199310.P10808348001800915976.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199310

/-! ## A199310.P11378789476302443310

`floor(a(n-1)-4*(1-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199310.P11378789476302443310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - 4 * (1 - a (n - 1))

end

end A199310.P11378789476302443310

namespace A199310

/-- `floor(a(n-1)-4*(1-a(n-1)))` -/
def P11378789476302443310.Spec : Prop :=
  ∀ n, P11378789476302443310.a n = A199310 n

theorem P11378789476302443310.correct : P11378789476302443310.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199310, Nat.add_sub_cancel, A199310.P11378789476302443310.a, A199310.P10808348001800915976.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199310, Nat.add_sub_cancel, A199310.P11378789476302443310.a, A199310.P10808348001800915976.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199310

/-! ## A199310.P15983284152510473345

`2*A199309(n)`
-/

namespace A199310.P15983284152510473345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199309 n

end

end A199310.P15983284152510473345

namespace A199310

/-- `2*A199309(n)` -/
def P15983284152510473345.Spec : Prop :=
  ∀ n, P15983284152510473345.a n = A199310 n

end A199310

/-! ## A199310.P17763123869669284475

`4*A199308(n)`
-/

namespace A199310.P17763123869669284475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199308 n

end

end A199310.P17763123869669284475

namespace A199310

/-- `4*A199308(n)` -/
def P17763123869669284475.Spec : Prop :=
  ∀ n, P17763123869669284475.a n = A199310 n

end A199310

/-! ## A199310.P4559459856080772725

`2*(A198766(n)+1)`
-/

namespace A199310.P4559459856080772725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198766 n + 1)

end

end A199310.P4559459856080772725

namespace A199310

/-- `2*(A198766(n)+1)` -/
def P4559459856080772725.Spec : Prop :=
  ∀ n, P4559459856080772725.a n = A199310 n

end A199310

/-! ## A199310.P3290898172501570966

`4*(A117617(n)+1)`
-/

namespace A199310.P3290898172501570966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A117617 n + 1)

end

end A199310.P3290898172501570966

namespace A199310

/-- `4*(A117617(n)+1)` -/
def P3290898172501570966.Spec : Prop :=
  ∀ n, P3290898172501570966.a n = A199310 n

end A199310

/-! ## A199310.P2738094452952510108

`2*(A026396(2*n)+1)`
-/

namespace A199310.P2738094452952510108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026396 (2 * n) + 1)

end

end A199310.P2738094452952510108

namespace A199310

/-- `2*(A026396(2*n)+1)` -/
def P2738094452952510108.Spec : Prop :=
  ∀ n, P2738094452952510108.a n = A199310 n

end A199310

/-! ## A199310.P6327545411628260129

`2*(7*A137410(n)+11)`
-/

namespace A199310.P6327545411628260129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (7 * A137410 n + 11)

end

end A199310.P6327545411628260129

namespace A199310

/-- `2*(7*A137410(n)+11)` -/
def P6327545411628260129.Spec : Prop :=
  ∀ n, P6327545411628260129.a n = A199310 n

end A199310

/-! ## A199310.P6976703872684839429

`2*(Δ[A024050(n)]-A137410(n))`
-/

namespace A199310.P6976703872684839429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A137410 n)

end

end A199310.P6976703872684839429

namespace A199310

/-- `2*(Δ[A024050(n)]-A137410(n))` -/
def P6976703872684839429.Spec : Prop :=
  ∀ n, P6976703872684839429.a n = A199310 n

end A199310

/-! ## A199310.P13836831508645973042

`2*(A199213(n+1)-(A199215(n)-1))`
-/

namespace A199310.P13836831508645973042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199213 (n + 1) - (A199215 n - 1))

end

end A199310.P13836831508645973042

namespace A199310

/-- `2*(A199213(n+1)-(A199215(n)-1))` -/
def P13836831508645973042.Spec : Prop :=
  ∀ n, P13836831508645973042.a n = A199310 n

end A199310

/-! ## A199310.P16504273062465339814

`2*(A162963(2*(n+1))-A238366(2*n))`
-/

namespace A199310.P16504273062465339814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A162963 (2 * (n + 1)) - A238366 (2 * n))

end

end A199310.P16504273062465339814

namespace A199310

/-- `2*(A162963(2*(n+1))-A238366(2*n))` -/
def P16504273062465339814.Spec : Prop :=
  ∀ n, P16504273062465339814.a n = A199310 n

end A199310

/-!
# A199311: a(n) = 8*5^n+1.

The programs for A199311, the canonical program `A199311.P5770621047872164959` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199311 has offset 0).

The definition of A199311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*5^n+1` (program `A199311.P5770621047872164959`, by `A199311.P5770621047872164959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199311.P5770621047872164959

`8*5^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199311

/-- `8*5^n+1` -/
def P5770621047872164959.Spec : Prop :=
  ∀ n, (P5770621047872164959.a n : ℤ) = A199311 n

theorem P5770621047872164959.correct : P5770621047872164959.Spec := by
  intro n
  simp only [A199311]

end A199311

/-! ## A199311.P4902359742528407180

`or(1, 8*5^n)`
-/

namespace A199311.P4902359742528407180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * 5 ^ n)

end

end A199311.P4902359742528407180

namespace A199311

/-- `or(1, 8*5^n)` -/
def P4902359742528407180.Spec : Prop :=
  ∀ n, (P4902359742528407180.a n : ℤ) = A199311 n

end A199311

/-! ## A199311.P6235923988186101789

`xor(1, 8*5^n)`
-/

namespace A199311.P6235923988186101789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * 5 ^ n)

end

end A199311.P6235923988186101789

namespace A199311

/-- `xor(1, 8*5^n)` -/
def P6235923988186101789.Spec : Prop :=
  ∀ n, (P6235923988186101789.a n : ℤ) = A199311 n

end A199311

/-! ## A199311.P6762710712476647736

`ogf((9-13x)/(1-6x+5x^2))`
-/

namespace A199311.P6762710712476647736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -13] [1, -6, 5] n

end

end A199311.P6762710712476647736

namespace A199311

/-- `ogf((9-13x)/(1-6x+5x^2))` -/
def P6762710712476647736.Spec : Prop :=
  ∀ n, P6762710712476647736.a n = A199311 n

end A199311

/-! ## A199311.P1310843835742799135

`Δ[lcm(2, 5^n)+n]`
-/

namespace A199311.P1310843835742799135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (5 ^ n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199311.P1310843835742799135

namespace A199311

/-- `Δ[lcm(2, 5^n)+n]` -/
def P1310843835742799135.Spec : Prop :=
  ∀ n, P1310843835742799135.a n = A199311 n

end A199311

/-! ## A199311.P12906218032060659070

`abs(4-5*a(n-1))` with `a(0)=9`
-/

namespace A199311.P12906218032060659070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  |4 - 5 * a (n - 1)|

end

end A199311.P12906218032060659070

namespace A199311

/-- `abs(4-5*a(n-1))` -/
def P12906218032060659070.Spec : Prop :=
  ∀ n, P12906218032060659070.a n = A199311 n

end A199311

/-! ## A199311.P9394094670206943337

`and(5*a(n-1), -5)` with `a(0)=9`
-/

namespace A199311.P9394094670206943337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  Int.land (5 * a (n - 1)) (-5)

end

end A199311.P9394094670206943337

namespace A199311

/-- `and(5*a(n-1), -5)` -/
def P9394094670206943337.Spec : Prop :=
  ∀ n, P9394094670206943337.a n = A199311 n

end A199311

/-! ## A199311.P9919290233901437611

`5*(a(n-1)-4/5)` with `a(0)=9`
-/

namespace A199311.P9919290233901437611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199311.P9919290233901437611

namespace A199311

/-- `5*(a(n-1)-4/5)` -/
def P9919290233901437611.Spec : Prop :=
  ∀ n, P9919290233901437611.a n = (A199311 n : ℚ)

theorem P9919290233901437611.correct : P9919290233901437611.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199311, Nat.add_sub_cancel, A199311.P9919290233901437611.a, A199311.P5770621047872164959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199311, Nat.add_sub_cancel, A199311.P9919290233901437611.a, A199311.P5770621047872164959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199311

/-! ## A199311.P15418689914333395862

`Δ[A060460(n+1)]`
-/

namespace A199311.P15418689914333395862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199311.P15418689914333395862

namespace A199311

/-- `Δ[A060460(n+1)]` -/
def P15418689914333395862.Spec : Prop :=
  ∀ n, P15418689914333395862.a n = A199311 n

theorem P15418689914333395862.correct : P15418689914333395862.Spec := by
  intro n
  simp only [A199311, Nat.add_sub_cancel, A199311.P15418689914333395862.f1, A199311.P15418689914333395862.a, A199311.P5770621047872164959.a, A060460, A060460.P1071313539857256782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199311

/-! ## A199311.P10605627451144477091

`Δ[Δ[A121177(n+1)]+n]`
-/

namespace A199311.P10605627451144477091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199311.P10605627451144477091

namespace A199311

/-- `Δ[Δ[A121177(n+1)]+n]` -/
def P10605627451144477091.Spec : Prop :=
  ∀ n, P10605627451144477091.a n = A199311 n

end A199311

/-! ## A199311.P390654017536887336

`Δ[∑[A235702(n+1)/3]+n]`
-/

namespace A199311.P390654017536887336
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235702 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199311.P390654017536887336

namespace A199311

/-- `Δ[∑[A235702(n+1)/3]+n]` -/
def P390654017536887336.Spec : Prop :=
  ∀ n, P390654017536887336.a n = (A199311 n : ℚ)

end A199311

/-!
# A199312: a(n) = (9*5^n+1)/2.

The programs for A199312, the canonical program `A199312.P5594330682606621135` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199312 has offset 0).

The definition of A199312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*5^n+1)/2` (program `A199312.P3266733407938538022`, by `A199312.P3266733407938538022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199312.P5594330682606621135

`5*a(n-1)-2` with `a(0)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199312

/-- `5*a(n-1)-2` -/
def P5594330682606621135.Spec : Prop :=
  ∀ n, P5594330682606621135.a n = A199312 n

theorem P5594330682606621135.correct : P5594330682606621135.Spec := by
  intro n
  simp only [A199312]

end A199312

/-! ## A199312.P3266733407938538022

`(9*5^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199312.P3266733407938538022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 5 ^ n + 1 : ℚ) / 2

end

end A199312.P3266733407938538022

namespace A199312

/-- `(9*5^n+1)/2` -/
def P3266733407938538022.Spec : Prop :=
  ∀ n, P3266733407938538022.a n = (A199312 n : ℚ)

theorem P3266733407938538022.correct : P3266733407938538022.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199312, Nat.add_sub_cancel, A199312.P3266733407938538022.a, A199312.P5594330682606621135.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199312, Nat.add_sub_cancel, A199312.P3266733407938538022.a, A199312.P5594330682606621135.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199312

/-! ## A199312.P18187726853143878941

`ogf((5-7x)/(1-6x+5x^2))`
-/

namespace A199312.P18187726853143878941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7] [1, -6, 5] n

end

end A199312.P18187726853143878941

namespace A199312

/-- `ogf((5-7x)/(1-6x+5x^2))` -/
def P18187726853143878941.Spec : Prop :=
  ∀ n, P18187726853143878941.a n = A199312 n

end A199312

/-! ## A199312.P1777390687276246174

`lcm(5, 1-a(n-1))+3` with `a(0)=5`
-/

namespace A199312.P1777390687276246174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Int.lcm 5 (1 - (a (n - 1) : ℤ)) + 3

end

end A199312.P1777390687276246174

namespace A199312

/-- `lcm(5, 1-a(n-1))+3` -/
def P1777390687276246174.Spec : Prop :=
  ∀ n, (P1777390687276246174.a n : ℤ) = A199312 n

end A199312

/-! ## A199312.P1964419803565188754

`a(n-1)/(1-4/5)-2` with `a(0)=5`
-/

namespace A199312.P1964419803565188754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 2

end

end A199312.P1964419803565188754

namespace A199312

/-- `a(n-1)/(1-4/5)-2` -/
def P1964419803565188754.Spec : Prop :=
  ∀ n, P1964419803565188754.a n = (A199312 n : ℚ)

end A199312

/-! ## A199312.P11135474165732448765

`a(n-1)-(2-lcm(4, a(n-1)))` with `a(0)=5`
-/

namespace A199312.P11135474165732448765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (2 - (Int.lcm 4 (a (n - 1)) : ℤ))

end

end A199312.P11135474165732448765

namespace A199312

/-- `a(n-1)-(2-lcm(4, a(n-1)))` -/
def P11135474165732448765.Spec : Prop :=
  ∀ n, P11135474165732448765.a n = A199312 n

end A199312

/-! ## A199312.P14491498254374354484

`2*A198769(n)+1`
-/

namespace A199312.P14491498254374354484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198769 n + 1

end

end A199312.P14491498254374354484

namespace A199312

/-- `2*A198769(n)+1` -/
def P14491498254374354484.Spec : Prop :=
  ∀ n, P14491498254374354484.a n = A199312 n

end A199312

/-! ## A199312.P17002286867389827241

`3*A057651(n)+2`
-/

namespace A199312.P17002286867389827241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A057651 n + 2

end

end A199312.P17002286867389827241

namespace A199312

/-- `3*A057651(n)+2` -/
def P17002286867389827241.Spec : Prop :=
  ∀ n, P17002286867389827241.a n = A199312 n

end A199312

/-! ## A199312.P11155078946480598946

`3*A199213(n)-1`
-/

namespace A199312.P11155078946480598946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199213 n - 1

end

end A199312.P11155078946480598946

namespace A199312

/-- `3*A199213(n)-1` -/
def P11155078946480598946.Spec : Prop :=
  ∀ n, P11155078946480598946.a n = A199312 n

end A199312

/-! ## A199312.P15027907393143051345

`6*A083065(n)-1`
-/

namespace A199312.P15027907393143051345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A083065 n - 1

end

end A199312.P15027907393143051345

namespace A199312

/-- `6*A083065(n)-1` -/
def P15027907393143051345.Spec : Prop :=
  ∀ n, P15027907393143051345.a n = A199312 n

end A199312

/-! ## A199312.P7292219813873020708

`9*A034478(n)-4`
-/

namespace A199312.P7292219813873020708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A034478 n - 4

end

end A199312.P7292219813873020708

namespace A199312

/-- `9*A034478(n)-4` -/
def P7292219813873020708.Spec : Prop :=
  ∀ n, P7292219813873020708.a n = A199312 n

end A199312

/-! ## A199312.P8534400559697621459

`A198766(n)+A034474(n)`
-/

namespace A199312.P8534400559697621459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198766 n + A034474 n

end

end A199312.P8534400559697621459

namespace A199312

/-- `A198766(n)+A034474(n)` -/
def P8534400559697621459.Spec : Prop :=
  ∀ n, P8534400559697621459.a n = A199312 n

end A199312

/-! ## A199312.P3183118159162387089

`A199214(n)+A057651(n)`
-/

namespace A199312.P3183118159162387089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199214 n + A057651 n

end

end A199312.P3183118159162387089

namespace A199312

/-- `A199214(n)+A057651(n)` -/
def P3183118159162387089.Spec : Prop :=
  ∀ n, P3183118159162387089.a n = A199312 n

end A199312

/-! ## A199312.P8748875470978787647

`A034478(n)+A005054(n+1)`
-/

namespace A199312.P8748875470978787647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + A005054 (n + 1)

end

end A199312.P8748875470978787647

namespace A199312

/-- `A034478(n)+A005054(n+1)` -/
def P8748875470978787647.Spec : Prop :=
  ∀ n, P8748875470978787647.a n = A199312 n

end A199312

/-! ## A199312.P11131740248008269927

`A083065(n+1)+A083065(n)`
-/

namespace A199312.P11131740248008269927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 (n + 1) + A083065 n

end

end A199312.P11131740248008269927

namespace A199312

/-- `A083065(n+1)+A083065(n)` -/
def P11131740248008269927.Spec : Prop :=
  ∀ n, P11131740248008269927.a n = A199312 n

end A199312

/-! ## A199312.P11202194254026010609

`A034474(n+1)-A034478(n)`
-/

namespace A199312.P11202194254026010609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 (n + 1) - A034478 n

end

end A199312.P11202194254026010609

namespace A199312

/-- `A034474(n+1)-A034478(n)` -/
def P11202194254026010609.Spec : Prop :=
  ∀ n, P11202194254026010609.a n = A199312 n

end A199312

/-! ## A199312.P4936603034618181449

`A024049(n+1)-A137410(n)`
-/

namespace A199312.P4936603034618181449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 (n + 1) - A137410 n

end

end A199312.P4936603034618181449

namespace A199312

/-- `A024049(n+1)-A137410(n)` -/
def P4936603034618181449.Spec : Prop :=
  ∀ n, P4936603034618181449.a n = A199312 n

end A199312

/-! ## A199312.P15289803975424777904

`A024049(n)+A198766(n)+2`
-/

namespace A199312.P15289803975424777904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n + (A198766 n + 2)

end

end A199312.P15289803975424777904

namespace A199312

/-- `A024049(n)+A198766(n)+2` -/
def P15289803975424777904.Spec : Prop :=
  ∀ n, P15289803975424777904.a n = A199312 n

end A199312

/-! ## A199312.P18238864875932753181

`A057651(n)+A198762(n)+2`
-/

namespace A199312.P18238864875932753181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (A198762 n + 2)

end

end A199312.P18238864875932753181

namespace A199312

/-- `A057651(n)+A198762(n)+2` -/
def P18238864875932753181.Spec : Prop :=
  ∀ n, P18238864875932753181.a n = A199312 n

end A199312

/-! ## A199312.P9097406675985917244

`A242328(n+1)-A132079(n)`
-/

namespace A199312.P9097406675985917244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242328 (n + 1) - A132079 n

end

end A199312.P9097406675985917244

namespace A199312

/-- `A242328(n+1)-A132079(n)` -/
def P9097406675985917244.Spec : Prop :=
  ∀ n, P9097406675985917244.a n = A199312 n

end A199312

/-!
# A199313: a(n) = 9*5^n+1.

The programs for A199313, the canonical program `A199313.P8030145359950833022` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199313 has offset 0).

The definition of A199313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*5^n+1` (program `A199313.P8030145359950833022`, by `A199313.P8030145359950833022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199313.P8030145359950833022

`9*5^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199313

/-- `9*5^n+1` -/
def P8030145359950833022.Spec : Prop :=
  ∀ n, (P8030145359950833022.a n : ℤ) = A199313 n

theorem P8030145359950833022.correct : P8030145359950833022.Spec := by
  intro n
  simp only [A199313]

end A199313

/-! ## A199313.P7339071464515515871

`xor(3, 9*5^n)`
-/

namespace A199313.P7339071464515515871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (9 * 5 ^ n)

end

end A199313.P7339071464515515871

namespace A199313

/-- `xor(3, 9*5^n)` -/
def P7339071464515515871.Spec : Prop :=
  ∀ n, (P7339071464515515871.a n : ℤ) = A199313 n

end A199313

/-! ## A199313.P5769343818293046839

`ogf((10-14x)/(1-6x+5x^2))`
-/

namespace A199313.P5769343818293046839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -14] [1, -6, 5] n

end

end A199313.P5769343818293046839

namespace A199313

/-- `ogf((10-14x)/(1-6x+5x^2))` -/
def P5769343818293046839.Spec : Prop :=
  ∀ n, P5769343818293046839.a n = A199313 n

end A199313

/-! ## A199313.P8545861915977254198

`or(2, 9*5^n-1)`
-/

namespace A199313.P8545861915977254198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((9 * 5 ^ n : ℤ) - 1)

end

end A199313.P8545861915977254198

namespace A199313

/-- `or(2, 9*5^n-1)` -/
def P8545861915977254198.Spec : Prop :=
  ∀ n, P8545861915977254198.a n = A199313 n

end A199313

/-! ## A199313.P15797090238053456851

`abs(4-5*a(n-1))` with `a(0)=10`
-/

namespace A199313.P15797090238053456851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |4 - 5 * a (n - 1)|

end

end A199313.P15797090238053456851

namespace A199313

/-- `abs(4-5*a(n-1))` -/
def P15797090238053456851.Spec : Prop :=
  ∀ n, P15797090238053456851.a n = A199313 n

end A199313

/-! ## A199313.P1097759996029603617

`5*(a(n-1)-4/5)` with `a(0)=10`
-/

namespace A199313.P1097759996029603617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199313.P1097759996029603617

namespace A199313

/-- `5*(a(n-1)-4/5)` -/
def P1097759996029603617.Spec : Prop :=
  ∀ n, P1097759996029603617.a n = (A199313 n : ℚ)

theorem P1097759996029603617.correct : P1097759996029603617.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199313, Nat.add_sub_cancel, A199313.P1097759996029603617.a, A199313.P8030145359950833022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199313, Nat.add_sub_cancel, A199313.P1097759996029603617.a, A199313.P8030145359950833022.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199313

/-! ## A199313.P13959296776154532080

`2*A199312(n)`
-/

namespace A199313.P13959296776154532080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199312 n

end

end A199313.P13959296776154532080

namespace A199313

/-- `2*A199312(n)` -/
def P13959296776154532080.Spec : Prop :=
  ∀ n, P13959296776154532080.a n = A199313 n

end A199313

/-! ## A199313.P7882785194922282933

`2*(3*A057651(n)+2)`
-/

namespace A199313.P7882785194922282933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A057651 n + 2)

end

end A199313.P7882785194922282933

namespace A199313

/-- `2*(3*A057651(n)+2)` -/
def P7882785194922282933.Spec : Prop :=
  ∀ n, P7882785194922282933.a n = A199313 n

end A199313

/-! ## A199313.P15000036711029880706

`2*(A198766(n)+A034474(n))`
-/

namespace A199313.P15000036711029880706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198766 n + A034474 n)

end

end A199313.P15000036711029880706

namespace A199313

/-- `2*(A198766(n)+A034474(n))` -/
def P15000036711029880706.Spec : Prop :=
  ∀ n, P15000036711029880706.a n = A199313 n

end A199313

/-! ## A199313.P10739987521973469092

`2*(A199214(n)+A057651(n))`
-/

namespace A199313.P10739987521973469092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199214 n + A057651 n)

end

end A199313.P10739987521973469092

namespace A199313

/-- `2*(A199214(n)+A057651(n))` -/
def P10739987521973469092.Spec : Prop :=
  ∀ n, P10739987521973469092.a n = A199313 n

end A199313

/-! ## A199313.P4855162145077304584

`Δ[A268414(n+1)+A268414(n)]`
-/

namespace A199313.P4855162145077304584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268414 (n + 1) + A268414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199313.P4855162145077304584

namespace A199313

/-- `Δ[A268414(n+1)+A268414(n)]` -/
def P4855162145077304584.Spec : Prop :=
  ∀ n, P4855162145077304584.a n = A199313 n

end A199313

/-! ## A199313.P2610929782786098316

`2*(A034478(n+1)+A020699(n+1))`
-/

namespace A199313.P2610929782786098316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034478 (n + 1) + A020699 (n + 1))

end

end A199313.P2610929782786098316

namespace A199313

/-- `2*(A034478(n+1)+A020699(n+1))` -/
def P2610929782786098316.Spec : Prop :=
  ∀ n, P2610929782786098316.a n = A199313 n

end A199313

/-! ## A199313.P16278844013646040456

`lcm(2, Δ[A083234(n)/A122803(n)])`
-/

namespace A199313.P16278844013646040456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083234 n : ℚ) / (A122803 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A199313.P16278844013646040456

namespace A199313

/-- `lcm(2, Δ[A083234(n)/A122803(n)])` -/
def P16278844013646040456.Spec : Prop :=
  ∀ n, (P16278844013646040456.a n : ℤ) = A199313 n

end A199313

/-! ## A199313.P9675904499258905314

`(A052268(n+1)+A011782(n+1))/A011782(n+1)`
-/

namespace A199313.P9675904499258905314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052268 (n + 1) + A011782 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A199313.P9675904499258905314

namespace A199313

/-- `(A052268(n+1)+A011782(n+1))/A011782(n+1)` -/
def P9675904499258905314.Spec : Prop :=
  ∀ n, P9675904499258905314.a n = (A199313 n : ℚ)

end A199313

/-!
# A199314: a(n) = (11*5^n + 1)/4.

The programs for A199314, the canonical program `A199314.P1746508721688792151` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199314 has offset 0).

The definition of A199314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*5^n+1)/4` (program `A199314.P16107571788077633065`, by `A199314.P16107571788077633065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199314.P1746508721688792151

`5*a(n-1)-1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199314

/-- `5*a(n-1)-1` -/
def P1746508721688792151.Spec : Prop :=
  ∀ n, P1746508721688792151.a n = A199314 n

theorem P1746508721688792151.correct : P1746508721688792151.Spec := by
  intro n
  simp only [A199314]

end A199314

/-! ## A199314.P16107571788077633065

`(11*5^n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199314.P16107571788077633065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 5 ^ n + 1 : ℚ) / 4

end

end A199314.P16107571788077633065

namespace A199314

/-- `(11*5^n+1)/4` -/
def P16107571788077633065.Spec : Prop :=
  ∀ n, P16107571788077633065.a n = (A199314 n : ℚ)

theorem P16107571788077633065.correct : P16107571788077633065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199314, Nat.add_sub_cancel, A199314.P16107571788077633065.a, A199314.P1746508721688792151.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199314, Nat.add_sub_cancel, A199314.P16107571788077633065.a, A199314.P1746508721688792151.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199314

/-! ## A199314.P3498068999330726823

`ogf((3-4x)/(1-6x+5x^2))`
-/

namespace A199314.P3498068999330726823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -6, 5] n

end

end A199314.P3498068999330726823

namespace A199314

/-- `ogf((3-4x)/(1-6x+5x^2))` -/
def P3498068999330726823.Spec : Prop :=
  ∀ n, P3498068999330726823.a n = A199314 n

end A199314

/-! ## A199314.P10023872749985335714

`lcm(5, a(n-1))-1` with `a(0)=3`
-/

namespace A199314.P10023872749985335714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 1

end

end A199314.P10023872749985335714

namespace A199314

/-- `lcm(5, a(n-1))-1` -/
def P10023872749985335714.Spec : Prop :=
  ∀ n, P10023872749985335714.a n = A199314 n

end A199314

/-! ## A199314.P11081635768511374155

`Δ[a(n-1)/(1-4/5)-n]` with `a(0)=1`
-/

namespace A199314.P11081635768511374155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / (1 - (4 : ℚ) / 5) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199314.P11081635768511374155

namespace A199314

/-- `Δ[a(n-1)/(1-4/5)-n]` -/
def P11081635768511374155.Spec : Prop :=
  ∀ n, P11081635768511374155.a n = (A199314 n : ℚ)

end A199314

/-! ## A199314.P17561495107951292565

`Δ[A164045(n)]`
-/

namespace A199314.P17561495107951292565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199314.P17561495107951292565

namespace A199314

/-- `Δ[A164045(n)]` -/
def P17561495107951292565.Spec : Prop :=
  ∀ n, P17561495107951292565.a n = A199314 n

end A199314

/-! ## A199314.P11366329483737458533

`A117088(n)+2`
-/

namespace A199314.P11366329483737458533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117088 n + 2

end

end A199314.P11366329483737458533

namespace A199314

/-- `A117088(n)+2` -/
def P11366329483737458533.Spec : Prop :=
  ∀ n, P11366329483737458533.a n = A199314 n

end A199314

/-! ## A199314.P1290969607818714671

`A056487(2*n+1)-A003463(n)`
-/

namespace A199314.P1290969607818714671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (2 * n + 1) - A003463 n

end

end A199314.P1290969607818714671

namespace A199314

/-- `A056487(2*n+1)-A003463(n)` -/
def P1290969607818714671.Spec : Prop :=
  ∀ n, P1290969607818714671.a n = A199314 n

end A199314

/-! ## A199314.P14151992302905098659

`A125833(n+1)-4*A003463(n)`
-/

namespace A199314.P14151992302905098659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125833 (n + 1) - 4 * A003463 n

end

end A199314.P14151992302905098659

namespace A199314

/-- `A125833(n+1)-4*A003463(n)` -/
def P14151992302905098659.Spec : Prop :=
  ∀ n, P14151992302905098659.a n = A199314 n

end A199314

/-! ## A199314.P8312018007725035400

`A083065(n)+A083065(n)+A003463(n+1)`
-/

namespace A199314.P8312018007725035400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 n + (A083065 n + A003463 (n + 1))

end

end A199314.P8312018007725035400

namespace A199314

/-- `A083065(n)+A083065(n)+A003463(n+1)` -/
def P8312018007725035400.Spec : Prop :=
  ∀ n, P8312018007725035400.a n = A199314 n

end A199314

/-! ## A199314.P1836333306327535381

`A125833(n+1)-(A125833(n)+A003463(n))`
-/

namespace A199314.P1836333306327535381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125833 (n + 1) - (A125833 n + A003463 n)

end

end A199314.P1836333306327535381

namespace A199314

/-- `A125833(n+1)-(A125833(n)+A003463(n))` -/
def P1836333306327535381.Spec : Prop :=
  ∀ n, P1836333306327535381.a n = A199314 n

end A199314

/-! ## A199314.P18157926981567584408

`A083065(n+1)+A047850(n)-A047850(n+1)`
-/

namespace A199314.P18157926981567584408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 (n + 1) + (A047850 n - A047850 (n + 1))

end

end A199314.P18157926981567584408

namespace A199314

/-- `A083065(n+1)+A047850(n)-A047850(n+1)` -/
def P18157926981567584408.Spec : Prop :=
  ∀ n, P18157926981567584408.a n = A199314 n

end A199314

/-!
# A199315: a(n) = (11*5^n+1)/2.

The programs for A199315, the canonical program `A199315.P4157199259677345144` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199315 has offset 0).

The definition of A199315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*5^n+1)/2` (program `A199315.P11498221557479538627`, by `A199315.P11498221557479538627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199315.P4157199259677345144

`5*a(n-1)-2` with `a(0)=6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199315

/-- `5*a(n-1)-2` -/
def P4157199259677345144.Spec : Prop :=
  ∀ n, P4157199259677345144.a n = A199315 n

theorem P4157199259677345144.correct : P4157199259677345144.Spec := by
  intro n
  simp only [A199315]

end A199315

/-! ## A199315.P11498221557479538627

`(11*5^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199315.P11498221557479538627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 5 ^ n + 1 : ℚ) / 2

end

end A199315.P11498221557479538627

namespace A199315

/-- `(11*5^n+1)/2` -/
def P11498221557479538627.Spec : Prop :=
  ∀ n, P11498221557479538627.a n = (A199315 n : ℚ)

theorem P11498221557479538627.correct : P11498221557479538627.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199315, Nat.add_sub_cancel, A199315.P11498221557479538627.a, A199315.P4157199259677345144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199315, Nat.add_sub_cancel, A199315.P11498221557479538627.a, A199315.P4157199259677345144.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199315

/-! ## A199315.P4535843553179196963

`ogf((6-8x)/(1-6x+5x^2))`
-/

namespace A199315.P4535843553179196963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -8] [1, -6, 5] n

end

end A199315.P4535843553179196963

namespace A199315

/-- `ogf((6-8x)/(1-6x+5x^2))` -/
def P4535843553179196963.Spec : Prop :=
  ∀ n, P4535843553179196963.a n = A199315 n

end A199315

/-! ## A199315.P6120678375379974388

`lcm(5, a(n-1))-2` with `a(0)=6`
-/

namespace A199315.P6120678375379974388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 2

end

end A199315.P6120678375379974388

namespace A199315

/-- `lcm(5, a(n-1))-2` -/
def P6120678375379974388.Spec : Prop :=
  ∀ n, P6120678375379974388.a n = A199315 n

end A199315

/-! ## A199315.P9854276415526103435

`a(n-1)/(1-4/5)-2` with `a(0)=6`
-/

namespace A199315.P9854276415526103435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 2

end

end A199315.P9854276415526103435

namespace A199315

/-- `a(n-1)/(1-4/5)-2` -/
def P9854276415526103435.Spec : Prop :=
  ∀ n, P9854276415526103435.a n = (A199315 n : ℚ)

end A199315

/-! ## A199315.P15964749869179377850

`A198771(n)+1`
-/

namespace A199315.P15964749869179377850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198771 n + 1

end

end A199315.P15964749869179377850

namespace A199315

/-- `A198771(n)+1` -/
def P15964749869179377850.Spec : Prop :=
  ∀ n, P15964749869179377850.a n = A199315 n

end A199315

/-! ## A199315.P16089381510872011714

`2*A199314(n)`
-/

namespace A199315.P16089381510872011714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199314 n

end

end A199315.P16089381510872011714

namespace A199315

/-- `2*A199314(n)` -/
def P16089381510872011714.Spec : Prop :=
  ∀ n, P16089381510872011714.a n = A199315 n

end A199315

/-! ## A199315.P5902496284876550070

`2*Δ[A164045(n)]`
-/

namespace A199315.P5902496284876550070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A199315.P5902496284876550070

namespace A199315

/-- `2*Δ[A164045(n)]` -/
def P5902496284876550070.Spec : Prop :=
  ∀ n, P5902496284876550070.a n = A199315 n

end A199315

/-! ## A199315.P638317913144543619

`2*(A117088(n)+2)`
-/

namespace A199315.P638317913144543619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117088 n + 2)

end

end A199315.P638317913144543619

namespace A199315

/-- `2*(A117088(n)+2)` -/
def P638317913144543619.Spec : Prop :=
  ∀ n, P638317913144543619.a n = A199315 n

end A199315

/-! ## A199315.P16005247556840857218

`11*A034478(n)-5`
-/

namespace A199315.P16005247556840857218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A034478 n - 5

end

end A199315.P16005247556840857218

namespace A199315

/-- `11*A034478(n)-5` -/
def P16005247556840857218.Spec : Prop :=
  ∀ n, P16005247556840857218.a n = A199315 n

end A199315

/-! ## A199315.P16233449359512372443

`A034478(n)+A000351(n+1)`
-/

namespace A199315.P16233449359512372443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + A000351 (n + 1)

end

end A199315.P16233449359512372443

namespace A199315

/-- `A034478(n)+A000351(n+1)` -/
def P16233449359512372443.Spec : Prop :=
  ∀ n, P16233449359512372443.a n = A199315 n

end A199315

/-! ## A199315.P2573471657411753686

`A057651(n)+A198763(n)+2`
-/

namespace A199315.P2573471657411753686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (A198763 n + 2)

end

end A199315.P2573471657411753686

namespace A199315

/-- `A057651(n)+A198763(n)+2` -/
def P2573471657411753686.Spec : Prop :=
  ∀ n, P2573471657411753686.a n = A199315 n

end A199315

/-! ## A199315.P16128691889967981079

`A081655(n)+A198766(n)+2`
-/

namespace A199315.P16128691889967981079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081655 n + (A198766 n + 2)

end

end A199315.P16128691889967981079

namespace A199315

/-- `A081655(n)+A198766(n)+2` -/
def P16128691889967981079.Spec : Prop :=
  ∀ n, P16128691889967981079.a n = A199315 n

end A199315

/-! ## A199315.P11854690822193328522

`A199213(n)+A199215(n)-1`
-/

namespace A199315.P11854690822193328522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199213 n + (A199215 n - 1)

end

end A199315.P11854690822193328522

namespace A199315

/-- `A199213(n)+A199215(n)-1` -/
def P11854690822193328522.Spec : Prop :=
  ∀ n, P11854690822193328522.a n = A199315 n

end A199315

/-! ## A199315.P5744653321547745830

`Δ[A000351(n)]+A057651(n)+1`
-/

namespace A199315.P5744653321547745830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A057651 n + 1)

end

end A199315.P5744653321547745830

namespace A199315

/-- `Δ[A000351(n)]+A057651(n)+1` -/
def P5744653321547745830.Spec : Prop :=
  ∀ n, P5744653321547745830.a n = A199315 n

end A199315

/-! ## A199315.P15388491858994755546

`Δ[A024049(n)]+A057651(n)+1`
-/

namespace A199315.P15388491858994755546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A057651 n + 1)

end

end A199315.P15388491858994755546

namespace A199315

/-- `Δ[A024049(n)]+A057651(n)+1` -/
def P15388491858994755546.Spec : Prop :=
  ∀ n, P15388491858994755546.a n = A199315 n

end A199315

/-! ## A199315.P15437705123581317731

`Δ[A034474(n)]+A057651(n)+1`
-/

namespace A199315.P15437705123581317731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A057651 n + 1)

end

end A199315.P15437705123581317731

namespace A199315

/-- `Δ[A034474(n)]+A057651(n)+1` -/
def P15437705123581317731.Spec : Prop :=
  ∀ n, P15437705123581317731.a n = A199315 n

end A199315

/-! ## A199315.P17734032380144251445

`2*(Δ[A024050(n)]-A104891(n))`
-/

namespace A199315.P17734032380144251445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A104891 n)

end

end A199315.P17734032380144251445

namespace A199315

/-- `2*(Δ[A024050(n)]-A104891(n))` -/
def P17734032380144251445.Spec : Prop :=
  ∀ n, P17734032380144251445.a n = A199315 n

end A199315

/-! ## A199315.P1490724262855468102

`A121177(n+1)+A034474(n+1)`
-/

namespace A199315.P1490724262855468102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) + A034474 (n + 1)

end

end A199315.P1490724262855468102

namespace A199315

/-- `A121177(n+1)+A034474(n+1)` -/
def P1490724262855468102.Spec : Prop :=
  ∀ n, P1490724262855468102.a n = A199315 n

end A199315

/-! ## A199315.P9720304881563613614

`A198770(n)/2+1`
-/

namespace A199315.P9720304881563613614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198770 n : ℚ) / 2 + 1

end

end A199315.P9720304881563613614

namespace A199315

/-- `A198770(n)/2+1` -/
def P9720304881563613614.Spec : Prop :=
  ∀ n, P9720304881563613614.a n = (A199315 n : ℚ)

theorem P9720304881563613614.correct : P9720304881563613614.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199315, Nat.add_sub_cancel, A199315.P9720304881563613614.a, A199315.P4157199259677345144.a, A198770, A198770.P7006575279309314523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199315, Nat.add_sub_cancel, A199315.P9720304881563613614.a, A199315.P4157199259677345144.a, A198770, A198770.P7006575279309314523.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199315

/-!
# A199316: a(n) = 11*5^n+1.

The programs for A199316, the canonical program `A199316.P9425227263143075640` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199316 has offset 0).

The definition of A199316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*5^n+1` (program `A199316.P9425227263143075640`, by `A199316.P9425227263143075640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199316.P9425227263143075640

`11*5^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199316

/-- `11*5^n+1` -/
def P9425227263143075640.Spec : Prop :=
  ∀ n, (P9425227263143075640.a n : ℤ) = A199316 n

theorem P9425227263143075640.correct : P9425227263143075640.Spec := by
  intro n
  simp only [A199316]

end A199316

/-! ## A199316.P10113693263528350866

`ogf((12-16x)/(1-6x+5x^2))`
-/

namespace A199316.P10113693263528350866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -16] [1, -6, 5] n

end

end A199316.P10113693263528350866

namespace A199316

/-- `ogf((12-16x)/(1-6x+5x^2))` -/
def P10113693263528350866.Spec : Prop :=
  ∀ n, P10113693263528350866.a n = A199316 n

end A199316

/-! ## A199316.P4647605478100182149

`5*(a(n-1)-4/5)` with `a(0)=12`
-/

namespace A199316.P4647605478100182149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199316.P4647605478100182149

namespace A199316

/-- `5*(a(n-1)-4/5)` -/
def P4647605478100182149.Spec : Prop :=
  ∀ n, P4647605478100182149.a n = (A199316 n : ℚ)

theorem P4647605478100182149.correct : P4647605478100182149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199316, Nat.add_sub_cancel, A199316.P4647605478100182149.a, A199316.P9425227263143075640.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199316, Nat.add_sub_cancel, A199316.P4647605478100182149.a, A199316.P9425227263143075640.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199316

/-! ## A199316.P5264145345428613733

`2*A199315(n)`
-/

namespace A199316.P5264145345428613733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199315 n

end

end A199316.P5264145345428613733

namespace A199316

/-- `2*A199315(n)` -/
def P5264145345428613733.Spec : Prop :=
  ∀ n, P5264145345428613733.a n = A199316 n

end A199316

/-! ## A199316.P12909138917287038356

`4*A199314(n)`
-/

namespace A199316.P12909138917287038356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199314 n

end

end A199316.P12909138917287038356

namespace A199316

/-- `4*A199314(n)` -/
def P12909138917287038356.Spec : Prop :=
  ∀ n, P12909138917287038356.a n = A199316 n

end A199316

/-! ## A199316.P3241838975416578620

`Δ[4*A164045(n)]`
-/

namespace A199316.P3241838975416578620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A164045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199316.P3241838975416578620

namespace A199316

/-- `Δ[4*A164045(n)]` -/
def P3241838975416578620.Spec : Prop :=
  ∀ n, P3241838975416578620.a n = A199316 n

end A199316

/-! ## A199316.P17471597053481438891

`Δ[A117088(n)+n]`
-/

namespace A199316.P17471597053481438891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117088 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199316.P17471597053481438891

namespace A199316

/-- `Δ[A117088(n)+n]` -/
def P17471597053481438891.Spec : Prop :=
  ∀ n, P17471597053481438891.a n = A199316 n

end A199316

/-! ## A199316.P12319311706786267138

`2*(A198771(n)+1)`
-/

namespace A199316.P12319311706786267138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198771 n + 1)

end

end A199316.P12319311706786267138

namespace A199316

/-- `2*(A198771(n)+1)` -/
def P12319311706786267138.Spec : Prop :=
  ∀ n, P12319311706786267138.a n = A199316 n

end A199316

/-! ## A199316.P2677186945783325297

`2*(A199213(n)+A199215(n)-1)`
-/

namespace A199316.P2677186945783325297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199213 n + (A199215 n - 1))

end

end A199316.P2677186945783325297

namespace A199316

/-- `2*(A199213(n)+A199215(n)-1)` -/
def P2677186945783325297.Spec : Prop :=
  ∀ n, P2677186945783325297.a n = A199316 n

end A199316

/-!
# A199317: a(n) = 2*6^n + 1.

The programs for A199317, the canonical program `A199317.P340006666861304313` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199317 has offset 0).

The definition of A199317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*6^n+1` (program `A199317.P340006666861304313`, by `A199317.P340006666861304313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199317.P340006666861304313

`2*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199317

/-- `2*6^n+1` -/
def P340006666861304313.Spec : Prop :=
  ∀ n, (P340006666861304313.a n : ℤ) = A199317 n

theorem P340006666861304313.correct : P340006666861304313.Spec := by
  intro n
  simp only [A199317]

end A199317

/-! ## A199317.P8390749258880223710

`or(1, 2*6^n)`
-/

namespace A199317.P8390749258880223710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 6 ^ n)

end

end A199317.P8390749258880223710

namespace A199317

/-- `or(1, 2*6^n)` -/
def P8390749258880223710.Spec : Prop :=
  ∀ n, (P8390749258880223710.a n : ℤ) = A199317 n

end A199317

/-! ## A199317.P18180677168566401399

`xor(1, 2*6^n)`
-/

namespace A199317.P18180677168566401399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 6 ^ n)

end

end A199317.P18180677168566401399

namespace A199317

/-- `xor(1, 2*6^n)` -/
def P18180677168566401399.Spec : Prop :=
  ∀ n, (P18180677168566401399.a n : ℤ) = A199317 n

end A199317

/-! ## A199317.P16900669016240071669

`ogf((3-8x)/(1-7x+6x^2))`
-/

namespace A199317.P16900669016240071669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -7, 6] n

end

end A199317.P16900669016240071669

namespace A199317

/-- `ogf((3-8x)/(1-7x+6x^2))` -/
def P16900669016240071669.Spec : Prop :=
  ∀ n, P16900669016240071669.a n = A199317 n

end A199317

/-! ## A199317.P503623108210719587

`∑[6*a(n-1)]` with `a(0)=3, a(1)=10`
-/

namespace A199317.P503623108210719587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199317.P503623108210719587

namespace A199317

/-- `∑[6*a(n-1)]` -/
def P503623108210719587.Spec : Prop :=
  ∀ n, (P503623108210719587.a n : ℤ) = A199317 n

end A199317

/-! ## A199317.P15298661929396206729

`abs(5-6*a(n-1))` with `a(0)=3`
-/

namespace A199317.P15298661929396206729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |5 - 6 * a (n - 1)|

end

end A199317.P15298661929396206729

namespace A199317

/-- `abs(5-6*a(n-1))` -/
def P15298661929396206729.Spec : Prop :=
  ∀ n, P15298661929396206729.a n = A199317 n

end A199317

/-! ## A199317.P4263015030619085889

`2*(3*a(n-1)-5/2)` with `a(0)=3`
-/

namespace A199317.P4263015030619085889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * (3 * a (n - 1) - (5 : ℚ) / 2)

end

end A199317.P4263015030619085889

namespace A199317

/-- `2*(3*a(n-1)-5/2)` -/
def P4263015030619085889.Spec : Prop :=
  ∀ n, P4263015030619085889.a n = (A199317 n : ℚ)

theorem P4263015030619085889.correct : P4263015030619085889.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199317, Nat.add_sub_cancel, A199317.P4263015030619085889.a, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199317, Nat.add_sub_cancel, A199317.P4263015030619085889.a, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199317

/-! ## A199317.P8026617520047594847

`floor(a(n-1)+5*(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199317.P8026617520047594847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 5 * (a (n - 1) - 1)

end

end A199317.P8026617520047594847

namespace A199317

/-- `floor(a(n-1)+5*(a(n-1)-1))` -/
def P8026617520047594847.Spec : Prop :=
  ∀ n, P8026617520047594847.a n = A199317 n

theorem P8026617520047594847.correct : P8026617520047594847.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199317, Nat.add_sub_cancel, A199317.P8026617520047594847.a, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199317, Nat.add_sub_cancel, A199317.P8026617520047594847.a, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199317

/-! ## A199317.P7508479435511232113

`floor(a(n-1)-5*(1-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199317.P7508479435511232113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 5 * (1 - a (n - 1))

end

end A199317.P7508479435511232113

namespace A199317

/-- `floor(a(n-1)-5*(1-a(n-1)))` -/
def P7508479435511232113.Spec : Prop :=
  ∀ n, P7508479435511232113.a n = A199317 n

theorem P7508479435511232113.correct : P7508479435511232113.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199317, Nat.add_sub_cancel, A199317.P7508479435511232113.a, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199317, Nat.add_sub_cancel, A199317.P7508479435511232113.a, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199317

/-! ## A199317.P17403399348443016092

`ceil(A199319(n)/2)`
-/

namespace A199317.P17403399348443016092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199319 n : ℚ) / 2⌉

end

end A199317.P17403399348443016092

namespace A199317

/-- `ceil(A199319(n)/2)` -/
def P17403399348443016092.Spec : Prop :=
  ∀ n, P17403399348443016092.a n = A199317 n

end A199317

/-! ## A199317.P2333406587575229744

`(A198797(n)+3)/2`
-/

namespace A199317.P2333406587575229744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198797 n + 3 : ℚ) / 2

end

end A199317.P2333406587575229744

namespace A199317

/-- `(A198797(n)+3)/2` -/
def P2333406587575229744.Spec : Prop :=
  ∀ n, P2333406587575229744.a n = (A199317 n : ℚ)

theorem P2333406587575229744.correct : P2333406587575229744.Spec := by
  intro n
  simp only [A199317, Nat.add_sub_cancel, A199317.P2333406587575229744.a, A199317.P340006666861304313.a, A198797, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199317

/-! ## A199317.P12691287631701433034

`(A199411(n)+3)/4`
-/

namespace A199317.P12691287631701433034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199411 n + 3 : ℚ) / 4

end

end A199317.P12691287631701433034

namespace A199317

/-- `(A199411(n)+3)/4` -/
def P12691287631701433034.Spec : Prop :=
  ∀ n, P12691287631701433034.a n = (A199317 n : ℚ)

theorem P12691287631701433034.correct : P12691287631701433034.Spec := by
  intro n
  simp only [A199317, Nat.add_sub_cancel, A199317.P12691287631701433034.a, A199317.P340006666861304313.a, A199411, A199411.P5252944955051985801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199317

/-! ## A199317.P5273832287253216409

`(A198845(n)+5)/4`
-/

namespace A199317.P5273832287253216409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198845 n + 5 : ℚ) / 4

end

end A199317.P5273832287253216409

namespace A199317

/-- `(A198845(n)+5)/4` -/
def P5273832287253216409.Spec : Prop :=
  ∀ n, P5273832287253216409.a n = (A199317 n : ℚ)

theorem P5273832287253216409.correct : P5273832287253216409.Spec := by
  intro n
  simp only [A199317, Nat.add_sub_cancel, A199317.P5273832287253216409.a, A199317.P340006666861304313.a, A198845, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199317

/-! ## A199317.P12014180938971208539

`(A199414(n)+4)/5`
-/

namespace A199317.P12014180938971208539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199414 n + 4 : ℚ) / 5

end

end A199317.P12014180938971208539

namespace A199317

/-- `(A199414(n)+4)/5` -/
def P12014180938971208539.Spec : Prop :=
  ∀ n, P12014180938971208539.a n = (A199317 n : ℚ)

theorem P12014180938971208539.correct : P12014180938971208539.Spec := by
  intro n
  simp only [A199317, Nat.add_sub_cancel, A199317.P12014180938971208539.a, A199317.P340006666861304313.a, A199414, A199414.P13741416716051852048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199317

/-! ## A199317.P12809424975051609022

`(A062394(n+1)+2)/3`
-/

namespace A199317.P12809424975051609022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062394 (n + 1) + 2 : ℚ) / 3

end

end A199317.P12809424975051609022

namespace A199317

/-- `(A062394(n+1)+2)/3` -/
def P12809424975051609022.Spec : Prop :=
  ∀ n, P12809424975051609022.a n = (A199317 n : ℚ)

theorem P12809424975051609022.correct : P12809424975051609022.Spec := by
  intro n
  simp only [A199317, Nat.add_sub_cancel, A199317.P12809424975051609022.a, A199317.P340006666861304313.a, A062394, A062394.P9863555022327054882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199317

/-! ## A199317.P11698200102996401808

`ceil((A000400(n+1)+1)/3)`
-/

namespace A199317.P11698200102996401808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000400 (n + 1) + 1 : ℚ) / 3⌉

end

end A199317.P11698200102996401808

namespace A199317

/-- `ceil((A000400(n+1)+1)/3)` -/
def P11698200102996401808.Spec : Prop :=
  ∀ n, P11698200102996401808.a n = A199317 n

end A199317

/-!
# A199318: a(n) = 3*6^n+1.

The programs for A199318, the canonical program `A199318.P17752477068625558702` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199318 has offset 0).

The definition of A199318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*6^n+1` (program `A199318.P17752477068625558702`, by `A199318.P17752477068625558702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199318.P17752477068625558702

`3*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199318

/-- `3*6^n+1` -/
def P17752477068625558702.Spec : Prop :=
  ∀ n, (P17752477068625558702.a n : ℤ) = A199318 n

theorem P17752477068625558702.correct : P17752477068625558702.Spec := by
  intro n
  simp only [A199318]

end A199318

/-! ## A199318.P18058375904993222179

`ogf((4-9x)/(1-7x+6x^2))`
-/

namespace A199318.P18058375904993222179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -9] [1, -7, 6] n

end

end A199318.P18058375904993222179

namespace A199318

/-- `ogf((4-9x)/(1-7x+6x^2))` -/
def P18058375904993222179.Spec : Prop :=
  ∀ n, P18058375904993222179.a n = A199318 n

end A199318

/-! ## A199318.P886134620375094677

`∑[6*a(n-1)]` with `a(0)=4, a(1)=15`
-/

namespace A199318.P886134620375094677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 15] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199318.P886134620375094677

namespace A199318

/-- `∑[6*a(n-1)]` -/
def P886134620375094677.Spec : Prop :=
  ∀ n, (P886134620375094677.a n : ℤ) = A199318 n

end A199318

/-! ## A199318.P16710156999420574895

`abs(5-6*a(n-1))` with `a(0)=4`
-/

namespace A199318.P16710156999420574895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |5 - 6 * a (n - 1)|

end

end A199318.P16710156999420574895

namespace A199318

/-- `abs(5-6*a(n-1))` -/
def P16710156999420574895.Spec : Prop :=
  ∀ n, P16710156999420574895.a n = A199318 n

end A199318

/-! ## A199318.P9483706583345984005

`6*(a(n-1)-5/6)` with `a(0)=4`
-/

namespace A199318.P9483706583345984005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  6 * (a (n - 1) - (5 : ℚ) / 6)

end

end A199318.P9483706583345984005

namespace A199318

/-- `6*(a(n-1)-5/6)` -/
def P9483706583345984005.Spec : Prop :=
  ∀ n, P9483706583345984005.a n = (A199318 n : ℚ)

theorem P9483706583345984005.correct : P9483706583345984005.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199318, Nat.add_sub_cancel, A199318.P9483706583345984005.a, A199318.P17752477068625558702.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199318, Nat.add_sub_cancel, A199318.P9483706583345984005.a, A199318.P17752477068625558702.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199318

/-! ## A199318.P3137728272741104178

`floor(a(n-1)+5*(a(n-1)-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199318.P3137728272741104178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 5 * (a (n - 1) - 1)

end

end A199318.P3137728272741104178

namespace A199318

/-- `floor(a(n-1)+5*(a(n-1)-1))` -/
def P3137728272741104178.Spec : Prop :=
  ∀ n, P3137728272741104178.a n = A199318 n

theorem P3137728272741104178.correct : P3137728272741104178.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199318, Nat.add_sub_cancel, A199318.P3137728272741104178.a, A199318.P17752477068625558702.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199318, Nat.add_sub_cancel, A199318.P3137728272741104178.a, A199318.P17752477068625558702.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199318

/-! ## A199318.P10258773119684125237

`floor(a(n-1)-5*(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199318.P10258773119684125237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - 5 * (1 - a (n - 1))

end

end A199318.P10258773119684125237

namespace A199318

/-- `floor(a(n-1)-5*(1-a(n-1)))` -/
def P10258773119684125237.Spec : Prop :=
  ∀ n, P10258773119684125237.a n = A199318 n

theorem P10258773119684125237.correct : P10258773119684125237.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199318, Nat.add_sub_cancel, A199318.P10258773119684125237.a, A199318.P17752477068625558702.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199318, Nat.add_sub_cancel, A199318.P10258773119684125237.a, A199318.P17752477068625558702.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199318

/-! ## A199318.P8314271869655227794

`ceil(A199413(n)/3)`
-/

namespace A199318.P8314271869655227794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199413 n : ℚ) / 3⌉

end

end A199318.P8314271869655227794

namespace A199318

/-- `ceil(A199413(n)/3)` -/
def P8314271869655227794.Spec : Prop :=
  ∀ n, P8314271869655227794.a n = A199318 n

end A199318

/-! ## A199318.P15386862965484719984

`(A198846(n)+4)/3`
-/

namespace A199318.P15386862965484719984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198846 n + 4 : ℚ) / 3

end

end A199318.P15386862965484719984

namespace A199318

/-- `(A198846(n)+4)/3` -/
def P15386862965484719984.Spec : Prop :=
  ∀ n, P15386862965484719984.a n = (A199318 n : ℚ)

theorem P15386862965484719984.correct : P15386862965484719984.Spec := by
  intro n
  simp only [A199318, Nat.add_sub_cancel, A199318.P15386862965484719984.a, A199318.P17752477068625558702.a, A198846, A198846.P11610134080789533205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199318

/-! ## A199318.P3946954051217890234

`ceil(A062394(n+1)/2)`
-/

namespace A199318.P3946954051217890234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062394 (n + 1) : ℚ) / 2⌉

end

end A199318.P3946954051217890234

namespace A199318

/-- `ceil(A062394(n+1)/2)` -/
def P3946954051217890234.Spec : Prop :=
  ∀ n, P3946954051217890234.a n = A199318 n

end A199318

/-! ## A199318.P10841697699112932424

`(A000400(n+1)+2)/2`
-/

namespace A199318.P10841697699112932424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 (n + 1) + 2 : ℚ) / 2

end

end A199318.P10841697699112932424

namespace A199318

/-- `(A000400(n+1)+2)/2` -/
def P10841697699112932424.Spec : Prop :=
  ∀ n, P10841697699112932424.a n = (A199318 n : ℚ)

theorem P10841697699112932424.correct : P10841697699112932424.Spec := by
  intro n
  simp only [A199318, Nat.add_sub_cancel, A199318.P10841697699112932424.a, A199318.P17752477068625558702.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199318

/-! ## A199318.P9849809995630119799

`(A024062(n+1)+3)/2`
-/

namespace A199318.P9849809995630119799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024062 (n + 1) + 3 : ℚ) / 2

end

end A199318.P9849809995630119799

namespace A199318

/-- `(A024062(n+1)+3)/2` -/
def P9849809995630119799.Spec : Prop :=
  ∀ n, P9849809995630119799.a n = (A199318 n : ℚ)

theorem P9849809995630119799.correct : P9849809995630119799.Spec := by
  intro n
  simp only [A199318, Nat.add_sub_cancel, A199318.P9849809995630119799.a, A199318.P17752477068625558702.a, A024062, A024062.P10607984613619163046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199318

/-! ## A199318.P1396568533376788809

`abs(2-3*(A026549(2*n)+1))`
-/

namespace A199318.P1396568533376788809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 3 * (A026549 (2 * n) + 1)|

end

end A199318.P1396568533376788809

namespace A199318

/-- `abs(2-3*(A026549(2*n)+1))` -/
def P1396568533376788809.Spec : Prop :=
  ∀ n, P1396568533376788809.a n = A199318 n

end A199318

/-! ## A199318.P17701774547400107088

`floor(A199317(n)+A199317(n)/2)`
-/

namespace A199318.P17701774547400107088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199317 n : ℚ) + (A199317 n : ℚ) / 2⌋

end

end A199318.P17701774547400107088

namespace A199318

/-- `floor(A199317(n)+A199317(n)/2)` -/
def P17701774547400107088.Spec : Prop :=
  ∀ n, P17701774547400107088.a n = A199318 n

end A199318

/-!
# A199319: a(n) = 4*6^n+1.

The programs for A199319, the canonical program `A199319.P11870111649505060977` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199319 has offset 0).

The definition of A199319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*6^n+1` (program `A199319.P11870111649505060977`, by `A199319.P11870111649505060977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199319.P11870111649505060977

`4*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199319

/-- `4*6^n+1` -/
def P11870111649505060977.Spec : Prop :=
  ∀ n, (P11870111649505060977.a n : ℤ) = A199319 n

theorem P11870111649505060977.correct : P11870111649505060977.Spec := by
  intro n
  simp only [A199319]

end A199319

/-! ## A199319.P7788548899491458285

`5*A083066(n)`
-/

namespace A199319.P7788548899491458285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A083066 n

end

end A199319.P7788548899491458285

namespace A199319

/-- `5*A083066(n)` -/
def P7788548899491458285.Spec : Prop :=
  ∀ n, P7788548899491458285.a n = A199319 n

end A199319

/-! ## A199319.P13447205926426047705

`or(1, 4*6^n)`
-/

namespace A199319.P13447205926426047705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 6 ^ n)

end

end A199319.P13447205926426047705

namespace A199319

/-- `or(1, 4*6^n)` -/
def P13447205926426047705.Spec : Prop :=
  ∀ n, (P13447205926426047705.a n : ℤ) = A199319 n

end A199319

/-! ## A199319.P7446650724741854047

`xor(1, 4*6^n)`
-/

namespace A199319.P7446650724741854047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 6 ^ n)

end

end A199319.P7446650724741854047

namespace A199319

/-- `xor(1, 4*6^n)` -/
def P7446650724741854047.Spec : Prop :=
  ∀ n, (P7446650724741854047.a n : ℤ) = A199319 n

end A199319

/-! ## A199319.P6582174214772739149

`ogf((5-10x)/(1-7x+6x^2))`
-/

namespace A199319.P6582174214772739149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10] [1, -7, 6] n

end

end A199319.P6582174214772739149

namespace A199319

/-- `ogf((5-10x)/(1-7x+6x^2))` -/
def P6582174214772739149.Spec : Prop :=
  ∀ n, P6582174214772739149.a n = A199319 n

end A199319

/-! ## A199319.P3127712416045316131

`∑[6*a(n-1)]` with `a(0)=5, a(1)=20`
-/

namespace A199319.P3127712416045316131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 20] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199319.P3127712416045316131

namespace A199319

/-- `∑[6*a(n-1)]` -/
def P3127712416045316131.Spec : Prop :=
  ∀ n, (P3127712416045316131.a n : ℤ) = A199319 n

end A199319

/-! ## A199319.P14648632591873547847

`abs(5-6*a(n-1))` with `a(0)=5`
-/

namespace A199319.P14648632591873547847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |5 - 6 * a (n - 1)|

end

end A199319.P14648632591873547847

namespace A199319

/-- `abs(5-6*a(n-1))` -/
def P14648632591873547847.Spec : Prop :=
  ∀ n, P14648632591873547847.a n = A199319 n

end A199319

/-! ## A199319.P14110357557706810801

`6*(a(n-1)-5/6)` with `a(0)=5`
-/

namespace A199319.P14110357557706810801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  6 * (a (n - 1) - (5 : ℚ) / 6)

end

end A199319.P14110357557706810801

namespace A199319

/-- `6*(a(n-1)-5/6)` -/
def P14110357557706810801.Spec : Prop :=
  ∀ n, P14110357557706810801.a n = (A199319 n : ℚ)

theorem P14110357557706810801.correct : P14110357557706810801.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199319, Nat.add_sub_cancel, A199319.P14110357557706810801.a, A199319.P11870111649505060977.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199319, Nat.add_sub_cancel, A199319.P14110357557706810801.a, A199319.P11870111649505060977.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199319

/-! ## A199319.P8838241033506943905

`floor(a(n-1)+5*(a(n-1)-1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199319.P8838241033506943905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 5 * (a (n - 1) - 1)

end

end A199319.P8838241033506943905

namespace A199319

/-- `floor(a(n-1)+5*(a(n-1)-1))` -/
def P8838241033506943905.Spec : Prop :=
  ∀ n, P8838241033506943905.a n = A199319 n

theorem P8838241033506943905.correct : P8838241033506943905.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199319, Nat.add_sub_cancel, A199319.P8838241033506943905.a, A199319.P11870111649505060977.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199319, Nat.add_sub_cancel, A199319.P8838241033506943905.a, A199319.P11870111649505060977.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199319

/-! ## A199319.P4790129115389555810

`floor(a(n-1)-5*(1-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199319.P4790129115389555810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - 5 * (1 - a (n - 1))

end

end A199319.P4790129115389555810

namespace A199319

/-- `floor(a(n-1)-5*(1-a(n-1)))` -/
def P4790129115389555810.Spec : Prop :=
  ∀ n, P4790129115389555810.a n = A199319 n

theorem P4790129115389555810.correct : P4790129115389555810.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199319, Nat.add_sub_cancel, A199319.P4790129115389555810.a, A199319.P11870111649505060977.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199319, Nat.add_sub_cancel, A199319.P4790129115389555810.a, A199319.P11870111649505060977.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199319

/-! ## A199319.P16927684145819348800

`round(A199411(n)/2)`
-/

namespace A199319.P16927684145819348800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199411 n : ℚ) / 2)

end

end A199319.P16927684145819348800

namespace A199319

/-- `round(A199411(n)/2)` -/
def P16927684145819348800.Spec : Prop :=
  ∀ n, P16927684145819348800.a n = A199319 n

end A199319

/-! ## A199319.P6098338473291665243

`∑[5*A067411(n)]`
-/

namespace A199319.P6098338473291665243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A067411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199319.P6098338473291665243

namespace A199319

/-- `∑[5*A067411(n)]` -/
def P6098338473291665243.Spec : Prop :=
  ∀ n, P6098338473291665243.a n = A199319 n

end A199319

/-! ## A199319.P16520143494387544506

`(A198845(n)+3)/2`
-/

namespace A199319.P16520143494387544506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198845 n + 3 : ℚ) / 2

end

end A199319.P16520143494387544506

namespace A199319

/-- `(A198845(n)+3)/2` -/
def P16520143494387544506.Spec : Prop :=
  ∀ n, P16520143494387544506.a n = (A199319 n : ℚ)

theorem P16520143494387544506.correct : P16520143494387544506.Spec := by
  intro n
  simp only [A199319, Nat.add_sub_cancel, A199319.P16520143494387544506.a, A199319.P11870111649505060977.a, A198845, A198845.P5204720810611960801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199319

/-! ## A199319.P722219846225360496

`(A199317(n+1)+2)/3`
-/

namespace A199319.P722219846225360496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199317 (n + 1) + 2 : ℚ) / 3

end

end A199319.P722219846225360496

namespace A199319

/-- `(A199317(n+1)+2)/3` -/
def P722219846225360496.Spec : Prop :=
  ∀ n, P722219846225360496.a n = (A199319 n : ℚ)

theorem P722219846225360496.correct : P722219846225360496.Spec := by
  intro n
  simp only [A199319, Nat.add_sub_cancel, A199319.P722219846225360496.a, A199319.P11870111649505060977.a, A199317, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199319

/-! ## A199319.P3511617254256557052

`ceil((12*A000400(n)+2)/3)`
-/

namespace A199319.P3511617254256557052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(12 * A000400 n + 2 : ℚ) / 3⌉

end

end A199319.P3511617254256557052

namespace A199319

/-- `ceil((12*A000400(n)+2)/3)` -/
def P3511617254256557052.Spec : Prop :=
  ∀ n, P3511617254256557052.a n = A199319 n

end A199319

/-!
# A199320: a(n) = 5*6^n+1.

The programs for A199320, the canonical program `A199320.P10342410003786426177` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199320 has offset 0).

The definition of A199320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*6^n+1` (program `A199320.P10342410003786426177`, by `A199320.P10342410003786426177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199320.P10342410003786426177

`5*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199320

/-- `5*6^n+1` -/
def P10342410003786426177.Spec : Prop :=
  ∀ n, (P10342410003786426177.a n : ℤ) = A199320 n

theorem P10342410003786426177.correct : P10342410003786426177.Spec := by
  intro n
  simp only [A199320]

end A199320

/-! ## A199320.P1435042010744434058

`Δ[or(n, 6^n)]`
-/

namespace A199320.P1435042010744434058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (6 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199320.P1435042010744434058

namespace A199320

/-- `Δ[or(n, 6^n)]` -/
def P1435042010744434058.Spec : Prop :=
  ∀ n, P1435042010744434058.a n = A199320 n

end A199320

/-! ## A199320.P6579263064213617300

`Δ[xor(n, 6^n)]`
-/

namespace A199320.P6579263064213617300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (6 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199320.P6579263064213617300

namespace A199320

/-- `Δ[xor(n, 6^n)]` -/
def P6579263064213617300.Spec : Prop :=
  ∀ n, P6579263064213617300.a n = A199320 n

end A199320

/-! ## A199320.P18182062952794653515

`ogf((6-11x)/(1-7x+6x^2))`
-/

namespace A199320.P18182062952794653515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -11] [1, -7, 6] n

end

end A199320.P18182062952794653515

namespace A199320

/-- `ogf((6-11x)/(1-7x+6x^2))` -/
def P18182062952794653515.Spec : Prop :=
  ∀ n, P18182062952794653515.a n = A199320 n

end A199320

/-! ## A199320.P10960836942607219993

`abs(5-6*a(n-1))` with `a(0)=6`
-/

namespace A199320.P10960836942607219993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |5 - 6 * a (n - 1)|

end

end A199320.P10960836942607219993

namespace A199320

/-- `abs(5-6*a(n-1))` -/
def P10960836942607219993.Spec : Prop :=
  ∀ n, P10960836942607219993.a n = A199320 n

end A199320

/-! ## A199320.P17964039624134050013

`6*(a(n-1)-5/6)` with `a(0)=6`
-/

namespace A199320.P17964039624134050013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  6 * (a (n - 1) - (5 : ℚ) / 6)

end

end A199320.P17964039624134050013

namespace A199320

/-- `6*(a(n-1)-5/6)` -/
def P17964039624134050013.Spec : Prop :=
  ∀ n, P17964039624134050013.a n = (A199320 n : ℚ)

theorem P17964039624134050013.correct : P17964039624134050013.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199320, Nat.add_sub_cancel, A199320.P17964039624134050013.a, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199320, Nat.add_sub_cancel, A199320.P17964039624134050013.a, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199320

/-! ## A199320.P170181666710866494

`floor(a(n-1)+5*(a(n-1)-1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199320.P170181666710866494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 5 * (a (n - 1) - 1)

end

end A199320.P170181666710866494

namespace A199320

/-- `floor(a(n-1)+5*(a(n-1)-1))` -/
def P170181666710866494.Spec : Prop :=
  ∀ n, P170181666710866494.a n = A199320 n

theorem P170181666710866494.correct : P170181666710866494.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199320, Nat.add_sub_cancel, A199320.P170181666710866494.a, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199320, Nat.add_sub_cancel, A199320.P170181666710866494.a, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199320

/-! ## A199320.P18028244859633099668

`floor(a(n-1)-5*(1-a(n-1)))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199320.P18028244859633099668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - 5 * (1 - a (n - 1))

end

end A199320.P18028244859633099668

namespace A199320

/-- `floor(a(n-1)-5*(1-a(n-1)))` -/
def P18028244859633099668.Spec : Prop :=
  ∀ n, P18028244859633099668.a n = A199320 n

theorem P18028244859633099668.correct : P18028244859633099668.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199320, Nat.add_sub_cancel, A199320.P18028244859633099668.a, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199320, Nat.add_sub_cancel, A199320.P18028244859633099668.a, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199320

/-! ## A199320.P7232460958180346857

`Δ[A226200(n)]`
-/

namespace A199320.P7232460958180346857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199320.P7232460958180346857

namespace A199320

/-- `Δ[A226200(n)]` -/
def P7232460958180346857.Spec : Prop :=
  ∀ n, P7232460958180346857.a n = A199320 n

theorem P7232460958180346857.correct : P7232460958180346857.Spec := by
  intro n
  simp only [A199320, Nat.add_sub_cancel, A199320.P7232460958180346857.f1, A199320.P7232460958180346857.a, A199320.P10342410003786426177.a, A226200, A226200.P13457757580693642881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199320

/-! ## A199320.P3172362443971766756

`Δ[A000400(n)+n]`
-/

namespace A199320.P3172362443971766756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199320.P3172362443971766756

namespace A199320

/-- `Δ[A000400(n)+n]` -/
def P3172362443971766756.Spec : Prop :=
  ∀ n, P3172362443971766756.a n = A199320 n

theorem P3172362443971766756.correct : P3172362443971766756.Spec := by
  intro n
  simp only [A199320, Nat.add_sub_cancel, A199320.P3172362443971766756.f1, A199320.P3172362443971766756.a, A199320.P10342410003786426177.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199320

/-! ## A199320.P3963595562841077676

`Δ[A024062(n)+n]`
-/

namespace A199320.P3963595562841077676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199320.P3963595562841077676

namespace A199320

/-- `Δ[A024062(n)+n]` -/
def P3963595562841077676.Spec : Prop :=
  ∀ n, P3963595562841077676.a n = A199320 n

theorem P3963595562841077676.correct : P3963595562841077676.Spec := by
  intro n
  simp only [A199320, Nat.add_sub_cancel, A199320.P3963595562841077676.f1, A199320.P3963595562841077676.a, A199320.P10342410003786426177.a, A024062, A024062.P10607984613619163046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199320

/-! ## A199320.P4204170590964824920

`(A199414(n)+1)/2`
-/

namespace A199320.P4204170590964824920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199414 n + 1 : ℚ) / 2

end

end A199320.P4204170590964824920

namespace A199320

/-- `(A199414(n)+1)/2` -/
def P4204170590964824920.Spec : Prop :=
  ∀ n, P4204170590964824920.a n = (A199320 n : ℚ)

theorem P4204170590964824920.correct : P4204170590964824920.Spec := by
  intro n
  simp only [A199320, Nat.add_sub_cancel, A199320.P4204170590964824920.a, A199320.P10342410003786426177.a, A199414, A199414.P13741416716051852048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199320

/-! ## A199320.P9074793803821623954

`(A198847(n)+3)/2`
-/

namespace A199320.P9074793803821623954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198847 n + 3 : ℚ) / 2

end

end A199320.P9074793803821623954

namespace A199320

/-- `(A198847(n)+3)/2` -/
def P9074793803821623954.Spec : Prop :=
  ∀ n, P9074793803821623954.a n = (A199320 n : ℚ)

theorem P9074793803821623954.correct : P9074793803821623954.Spec := by
  intro n
  simp only [A199320, Nat.add_sub_cancel, A199320.P9074793803821623954.a, A199320.P10342410003786426177.a, A198847, A198847.P17463573303499178923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199320

/-! ## A199320.P6422452679937531230

`Δ[A026549(2*n)+n]`
-/

namespace A199320.P6422452679937531230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199320.P6422452679937531230

namespace A199320

/-- `Δ[A026549(2*n)+n]` -/
def P6422452679937531230.Spec : Prop :=
  ∀ n, P6422452679937531230.a n = A199320 n

end A199320

/-! ## A199320.P9955381091374071882

`Δ[A155604(n)-(3^n-n)]`
-/

namespace A199320.P9955381091374071882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155604 n - ((3 ^ n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199320.P9955381091374071882

namespace A199320

/-- `Δ[A155604(n)-(3^n-n)]` -/
def P9955381091374071882.Spec : Prop :=
  ∀ n, P9955381091374071882.a n = A199320 n

theorem P9955381091374071882.correct : P9955381091374071882.Spec := by
  intro n
  simp only [A199320, Nat.add_sub_cancel, A199320.P9955381091374071882.f1, A199320.P9955381091374071882.a, A199320.P10342410003786426177.a, A155604, A155604.P16530662911435381620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199320

/-!
# A199321: a(n) = 7*6^n+1.

The programs for A199321, the canonical program `A199321.P10352907232478699696` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199321 has offset 0).

The definition of A199321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*6^n+1` (program `A199321.P10352907232478699696`, by `A199321.P10352907232478699696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199321.P10352907232478699696

`7*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199321

/-- `7*6^n+1` -/
def P10352907232478699696.Spec : Prop :=
  ∀ n, (P10352907232478699696.a n : ℤ) = A199321 n

theorem P10352907232478699696.correct : P10352907232478699696.Spec := by
  intro n
  simp only [A199321]

end A199321

/-! ## A199321.P6397056331619488743

`ogf((8-13x)/(1-7x+6x^2))`
-/

namespace A199321.P6397056331619488743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -13] [1, -7, 6] n

end

end A199321.P6397056331619488743

namespace A199321

/-- `ogf((8-13x)/(1-7x+6x^2))` -/
def P6397056331619488743.Spec : Prop :=
  ∀ n, P6397056331619488743.a n = A199321 n

end A199321

/-! ## A199321.P3647818123187352328

`abs(5-6*a(n-1))` with `a(0)=8`
-/

namespace A199321.P3647818123187352328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |5 - 6 * a (n - 1)|

end

end A199321.P3647818123187352328

namespace A199321

/-- `abs(5-6*a(n-1))` -/
def P3647818123187352328.Spec : Prop :=
  ∀ n, P3647818123187352328.a n = A199321 n

end A199321

/-! ## A199321.P17509183582408172343

`6*(a(n-1)-5/6)` with `a(0)=8`
-/

namespace A199321.P17509183582408172343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  6 * (a (n - 1) - (5 : ℚ) / 6)

end

end A199321.P17509183582408172343

namespace A199321

/-- `6*(a(n-1)-5/6)` -/
def P17509183582408172343.Spec : Prop :=
  ∀ n, P17509183582408172343.a n = (A199321 n : ℚ)

theorem P17509183582408172343.correct : P17509183582408172343.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199321, Nat.add_sub_cancel, A199321.P17509183582408172343.a, A199321.P10352907232478699696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199321, Nat.add_sub_cancel, A199321.P17509183582408172343.a, A199321.P10352907232478699696.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199321

/-! ## A199321.P15813932533807074717

`floor(a(n-1)+5*(a(n-1)-1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199321.P15813932533807074717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 5 * (a (n - 1) - 1)

end

end A199321.P15813932533807074717

namespace A199321

/-- `floor(a(n-1)+5*(a(n-1)-1))` -/
def P15813932533807074717.Spec : Prop :=
  ∀ n, P15813932533807074717.a n = A199321 n

theorem P15813932533807074717.correct : P15813932533807074717.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199321, Nat.add_sub_cancel, A199321.P15813932533807074717.a, A199321.P10352907232478699696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199321, Nat.add_sub_cancel, A199321.P15813932533807074717.a, A199321.P10352907232478699696.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199321

/-! ## A199321.P14366581031115735155

`floor(a(n-1)-5*(1-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199321.P14366581031115735155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - 5 * (1 - a (n - 1))

end

end A199321.P14366581031115735155

namespace A199321

/-- `floor(a(n-1)-5*(1-a(n-1)))` -/
def P14366581031115735155.Spec : Prop :=
  ∀ n, P14366581031115735155.a n = A199321 n

theorem P14366581031115735155.correct : P14366581031115735155.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199321, Nat.add_sub_cancel, A199321.P14366581031115735155.a, A199321.P10352907232478699696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199321, Nat.add_sub_cancel, A199321.P14366581031115735155.a, A199321.P10352907232478699696.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199321

/-! ## A199321.P12844275676797616949

`Δ[A061801(n)+n]`
-/

namespace A199321.P12844275676797616949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061801 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199321.P12844275676797616949

namespace A199321

/-- `Δ[A061801(n)+n]` -/
def P12844275676797616949.Spec : Prop :=
  ∀ n, P12844275676797616949.a n = A199321 n

end A199321

/-! ## A199321.P5594945828518875716

`Δ[n-A165758(n)]`
-/

namespace A199321.P5594945828518875716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A165758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199321.P5594945828518875716

namespace A199321

/-- `Δ[n-A165758(n)]` -/
def P5594945828518875716.Spec : Prop :=
  ∀ n, P5594945828518875716.a n = A199321 n

end A199321

/-! ## A199321.P8193331893355987443

`Δ[∑[A003949(n)]+n]`
-/

namespace A199321.P8193331893355987443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199321.P8193331893355987443

namespace A199321

/-- `Δ[∑[A003949(n)]+n]` -/
def P8193331893355987443.Spec : Prop :=
  ∀ n, P8193331893355987443.a n = A199321 n

end A199321

/-! ## A199321.P12338560118771838145

`(A199317(n+1)+A199317(n))/2`
-/

namespace A199321.P12338560118771838145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199317 (n + 1) + A199317 n : ℚ) / 2

end

end A199321.P12338560118771838145

namespace A199321

/-- `(A199317(n+1)+A199317(n))/2` -/
def P12338560118771838145.Spec : Prop :=
  ∀ n, P12338560118771838145.a n = (A199321 n : ℚ)

theorem P12338560118771838145.correct : P12338560118771838145.Spec := by
  intro n
  simp only [A199321, Nat.add_sub_cancel, A199321.P12338560118771838145.a, A199321.P10352907232478699696.a, A199317, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199321

/-! ## A199321.P11376087322405565947

`C(A003949(n+1)+1, A003949(n+1))`
-/

namespace A199321.P11376087322405565947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003949 (n + 1) + 1).toNat (A003949 (n + 1)).toNat

end

end A199321.P11376087322405565947

namespace A199321

/-- `C(A003949(n+1)+1, A003949(n+1))` -/
def P11376087322405565947.Spec : Prop :=
  ∀ n, (P11376087322405565947.a n : ℤ) = A199321 n

end A199321

/-!
# A199322: Number of twin prime numbers of the form n*(n+1) + 2*k-3 and n*(n+1) + 2*k-1 with k = 1 to n+1.

The programs for A199322, the canonical program `A199322.P1315380875111111042` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199322 has offset 1).

The definition of A199322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199322.P1315380875111111042

`Δ[A071538(abs(A014209(n)))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199322

/-- `Δ[A071538(abs(A014209(n)))]` -/
def P1315380875111111042.Spec : Prop :=
  ∀ n, P1315380875111111042.a n = A199322 (n + 1)

theorem P1315380875111111042.correct : P1315380875111111042.Spec := by
  intro n
  simp only [A199322, Nat.add_sub_cancel]

end A199322

/-! ## A199322.P15399529524486763912

`Δ[A071538(A217748(n+3))]`
-/

namespace A199322.P15399529524486763912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A217748 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P15399529524486763912

namespace A199322

/-- `Δ[A071538(A217748(n+3))]` -/
def P15399529524486763912.Spec : Prop :=
  ∀ n, P15399529524486763912.a n = A199322 (n + 1)

end A199322

/-! ## A199322.P12592367156759145520

`Δ[A071538(abs(2-A028387(n)))]`
-/

namespace A199322.P12592367156759145520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 |2 - A028387 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P12592367156759145520

namespace A199322

/-- `Δ[A071538(abs(2-A028387(n)))]` -/
def P12592367156759145520.Spec : Prop :=
  ∀ n, P12592367156759145520.a n = A199322 (n + 1)

end A199322

/-! ## A199322.P2199226678754788107

`Δ[A071538(A008486(n)+n²)]`
-/

namespace A199322.P2199226678754788107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A008486 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P2199226678754788107

namespace A199322

/-- `Δ[A071538(A008486(n)+n²)]` -/
def P2199226678754788107.Spec : Prop :=
  ∀ n, P2199226678754788107.a n = A199322 (n + 1)

end A199322

/-! ## A199322.P3596346539633100240

`Δ[A071538(A027379(n)+A000217(n))]`
-/

namespace A199322.P3596346539633100240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A027379 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P3596346539633100240

namespace A199322

/-- `Δ[A071538(A027379(n)+A000217(n))]` -/
def P3596346539633100240.Spec : Prop :=
  ∀ n, P3596346539633100240.a n = A199322 (n + 1)

end A199322

/-! ## A199322.P3599993548859182481

`Δ[A071538(A004280(n+1)+A002378(n))]`
-/

namespace A199322.P3599993548859182481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A004280 (n + 1) + A002378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P3599993548859182481

namespace A199322

/-- `Δ[A071538(A004280(n+1)+A002378(n))]` -/
def P3599993548859182481.Spec : Prop :=
  ∀ n, P3599993548859182481.a n = A199322 (n + 1)

end A199322

/-! ## A199322.P2039341501292097130

`Δ[A071538(A060000(A028387(n)))]`
-/

namespace A199322.P2039341501292097130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A060000 (A028387 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P2039341501292097130

namespace A199322

/-- `Δ[A071538(A060000(A028387(n)))]` -/
def P2039341501292097130.Spec : Prop :=
  ∀ n, P2039341501292097130.a n = A199322 (n + 1)

end A199322

/-!
# A199323: Number of primes of the form n*(n+1)+2*k-3 with k from 1 to n+1.

The programs for A199323, the canonical program `A199323.P1063649753707065066` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199323 has offset 1).

The definition of A199323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199323.P1063649753707065066

`Δ[A000720((n+1)²+abs(1-n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199323

/-- `Δ[A000720((n+1)²+abs(1-n))]` -/
def P1063649753707065066.Spec : Prop :=
  ∀ n, P1063649753707065066.a n = A199323 (n + 1)

theorem P1063649753707065066.correct : P1063649753707065066.Spec := by
  intro n
  simp only [A199323, Nat.add_sub_cancel]

end A199323

/-! ## A199323.P10795159110679159608

`Δ[A278617(∑[n+1])]`
-/

namespace A199323.P10795159110679159608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278617 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199323.P10795159110679159608

namespace A199323

/-- `Δ[A278617(∑[n+1])]` -/
def P10795159110679159608.Spec : Prop :=
  ∀ n, P10795159110679159608.a n = A199323 (n + 1)

end A199323

/-! ## A199323.P12489088436978260816

`Δ[A084360((n+1)²+n)]`
-/

namespace A199323.P12489088436978260816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 ((n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199323.P12489088436978260816

namespace A199323

/-- `Δ[A084360((n+1)²+n)]` -/
def P12489088436978260816.Spec : Prop :=
  ∀ n, P12489088436978260816.a n = A199323 (n + 1)

end A199323

/-! ## A199323.P11495777911622094957

`abs(Δ[A084360(A028387(n))])`
-/

namespace A199323.P11495777911622094957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A199323.P11495777911622094957

namespace A199323

/-- `abs(Δ[A084360(A028387(n))])` -/
def P11495777911622094957.Spec : Prop :=
  ∀ n, P11495777911622094957.a n = A199323 (n + 1)

end A199323

/-! ## A199323.P970792197374502124

`Δ[A099802(A179865(n+1)+n)]`
-/

namespace A199323.P970792197374502124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A179865 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199323.P970792197374502124

namespace A199323

/-- `Δ[A099802(A179865(n+1)+n)]` -/
def P970792197374502124.Spec : Prop :=
  ∀ n, P970792197374502124.a n = A199323 (n + 1)

end A199323

/-! ## A199323.P12817785739888625098

`Δ[A084360(A028387(n))]-A001489(n)-n`
-/

namespace A199323.P12817785739888625098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001489 n - (n : ℤ)

end

end A199323.P12817785739888625098

namespace A199323

/-- `Δ[A084360(A028387(n))]-A001489(n)-n` -/
def P12817785739888625098.Spec : Prop :=
  ∀ n, P12817785739888625098.a n = A199323 (n + 1)

end A199323

/-! ## A199323.P587757304300399345

`Δ[A084360(A028387(n))]%(A014132(n+1)%12+n)`
-/

namespace A199323.P587757304300399345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (Int.tmod (A014132 (n + 1)) 12 + (n : ℤ))

end

end A199323.P587757304300399345

namespace A199323

/-- `Δ[A084360(A028387(n))]%(A014132(n+1)%12+n)` -/
def P587757304300399345.Spec : Prop :=
  ∀ n, P587757304300399345.a n = A199323 (n + 1)

end A199323

/-! ## A199323.P7182234453470454682

`A084360(A028387(n+1))-A084360(A028387(n))`
-/

namespace A199323.P7182234453470454682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A028387 (n + 1)).toNat - A084360 (A028387 n).toNat

end

end A199323.P7182234453470454682

namespace A199323

/-- `A084360(A028387(n+1))-A084360(A028387(n))` -/
def P7182234453470454682.Spec : Prop :=
  ∀ n, P7182234453470454682.a n = A199323 (n + 1)

end A199323

/-!
# A199324: Triangle T(n,k), read by rows, given by (-1,1,-1,0,0,0,0,0,0,0,...) DELTA (1,0,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A199324, the canonical program `A199324.P14947853670620338866` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199324 has offset 0).

The definition of A199324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199324.P14947853670620338866

`T(n-1,k-1)+T(n-2,k-1)-T(n-1,k)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199324

/-- `T(n-1,k-1)+T(n-2,k-1)-T(n-1,k)-T(n-2,k)` -/
def P14947853670620338866.Spec : Prop :=
  ∀ n, P14947853670620338866.a n = A199324 n

theorem P14947853670620338866.correct : P14947853670620338866.Spec := by
  intro n
  simp only [A199324]

end A199324

/-! ## A199324.P17306116665715428535

`A097807(n)*A129267(n)`
-/

namespace A199324.P17306116665715428535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A129267 n

end

end A199324.P17306116665715428535

namespace A199324

/-- `A097807(n)*A129267(n)` -/
def P17306116665715428535.Spec : Prop :=
  ∀ n, P17306116665715428535.a n = A199324 n

end A199324

/-! ## A199324.P17101254468401309437

`A033999(A025581(n))*A129267(n)`
-/

namespace A199324.P17101254468401309437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A129267 n

end

end A199324.P17101254468401309437

namespace A199324

/-- `A033999(A025581(n))*A129267(n)` -/
def P17101254468401309437.Spec : Prop :=
  ∀ n, P17101254468401309437.a n = A199324 n

end A199324

/-! ## A199324.P14175556030978530789

`A009531(A099375(n))*A129267(n)`
-/

namespace A199324.P14175556030978530789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A129267 n

end

end A199324.P14175556030978530789

namespace A199324

/-- `A009531(A099375(n))*A129267(n)` -/
def P14175556030978530789.Spec : Prop :=
  ∀ n, P14175556030978530789.a n = A199324 n

end A199324

/-! ## A199324.P7846556360295859518

`A033999(A003056(n))*A202551(n)`
-/

namespace A199324.P7846556360295859518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A202551 n

end

end A199324.P7846556360295859518

namespace A199324

/-- `A033999(A003056(n))*A202551(n)` -/
def P7846556360295859518.Spec : Prop :=
  ∀ n, P7846556360295859518.a n = A199324 n

end A199324

/-! ## A199324.P7249526748661932759

`A033999(A049581(n))*A202551(n)`
-/

namespace A199324.P7249526748661932759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A049581 n).toNat * A202551 n

end

end A199324.P7249526748661932759

namespace A199324

/-- `A033999(A049581(n))*A202551(n)` -/
def P7249526748661932759.Spec : Prop :=
  ∀ n, P7249526748661932759.a n = A199324 n

end A199324

/-! ## A199324.P17070139519134572075

`A033999(A057892(n))*A202551(n)`
-/

namespace A199324.P17070139519134572075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A057892 n).toNat * A202551 n

end

end A199324.P17070139519134572075

namespace A199324

/-- `A033999(A057892(n))*A202551(n)` -/
def P17070139519134572075.Spec : Prop :=
  ∀ n, P17070139519134572075.a n = A199324 n

end A199324

/-! ## A199324.P17323970919139193072

`A130595(A057944(n))*A202551(n)`
-/

namespace A199324.P17323970919139193072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A057944 n).toNat * A202551 n

end

end A199324.P17323970919139193072

namespace A199324

/-- `A130595(A057944(n))*A202551(n)` -/
def P17323970919139193072.Spec : Prop :=
  ∀ n, P17323970919139193072.a n = A199324 n

end A199324

/-! ## A199324.P17607924067394621662

`A033999(A003057(n+2))*A202551(n)`
-/

namespace A199324.P17607924067394621662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003057 (n + 2)).toNat * A202551 n

end

end A199324.P17607924067394621662

namespace A199324

/-- `A033999(A003057(n+2))*A202551(n)` -/
def P17607924067394621662.Spec : Prop :=
  ∀ n, P17607924067394621662.a n = A199324 n

end A199324

/-! ## A199324.P2452110425179597015

`A129267(n)*A158388(A168561(n))`
-/

namespace A199324.P2452110425179597015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 n * A158388 (A168561 n).toNat

end

end A199324.P2452110425179597015

namespace A199324

/-- `A129267(n)*A158388(A168561(n))` -/
def P2452110425179597015.Spec : Prop :=
  ∀ n, P2452110425179597015.a n = A199324 n

end A199324

/-! ## A199324.P16143359334479205756

`A129267(n)*A165591(A130321(n))`
-/

namespace A199324.P16143359334479205756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 n * A165591 (A130321 n).toNat

end

end A199324.P16143359334479205756

namespace A199324

/-- `A129267(n)*A165591(A130321(n))` -/
def P16143359334479205756.Spec : Prop :=
  ∀ n, P16143359334479205756.a n = A199324 n

end A199324

/-! ## A199324.P16159536218413608336

`A202603(A061579(n))*A309873(A130321(n))`
-/

namespace A199324.P16159536218413608336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202603 (A061579 n).toNat * A309873 (A130321 n).toNat

end

end A199324.P16159536218413608336

namespace A199324

/-- `A202603(A061579(n))*A309873(A130321(n))` -/
def P16159536218413608336.Spec : Prop :=
  ∀ n, P16159536218413608336.a n = A199324 n

end A199324

/-!
# A199325: Primes having only {0, 1, 5} as digits.

The programs for A199325, the canonical program `A199325.P8282751374628504048` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199325 has offset 1).

The definition of A199325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199325.P13015591361173723410

`∩[A386031(n+1), A386033(n+1)]`
-/

namespace A199325.P13015591361173723410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P13015591361173723410

namespace A199325

/-- `∩[A386031(n+1), A386033(n+1)]` -/
def P13015591361173723410.Spec : Prop :=
  ∀ n, (P13015591361173723410.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P4918023089401707401

`∩[A386018(n+1), A386027(n+1)]`
-/

namespace A199325.P4918023089401707401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P4918023089401707401

namespace A199325

/-- `∩[A386018(n+1), A386027(n+1)]` -/
def P4918023089401707401.Spec : Prop :=
  ∀ n, (P4918023089401707401.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P13816702880672324867

`∩[A386018(n+1), A386031(n+1)]`
-/

namespace A199325.P13816702880672324867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P13816702880672324867

namespace A199325

/-- `∩[A386018(n+1), A386031(n+1)]` -/
def P13816702880672324867.Spec : Prop :=
  ∀ n, (P13816702880672324867.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P18271644071753423723

`∩[A386018(n+1), A386033(n+1)]`
-/

namespace A199325.P18271644071753423723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P18271644071753423723

namespace A199325

/-- `∩[A386018(n+1), A386033(n+1)]` -/
def P18271644071753423723.Spec : Prop :=
  ∀ n, (P18271644071753423723.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P9686982361351362003

`∩[A386027(n+1), A386031(n+1)]`
-/

namespace A199325.P9686982361351362003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P9686982361351362003

namespace A199325

/-- `∩[A386027(n+1), A386031(n+1)]` -/
def P9686982361351362003.Spec : Prop :=
  ∀ n, (P9686982361351362003.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P17935725534419753162

`∩[A386027(n+1), A386033(n+1)]`
-/

namespace A199325.P17935725534419753162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P17935725534419753162

namespace A199325

/-- `∩[A386027(n+1), A386033(n+1)]` -/
def P17935725534419753162.Spec : Prop :=
  ∀ n, (P17935725534419753162.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P8282751374628504048

`∩[A386018(n+1), A386034(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A199325

/-- `∩[A386018(n+1), A386034(n+1)]` -/
def P8282751374628504048.Spec : Prop :=
  ∀ n, (P8282751374628504048.a n : ℤ) = A199325 (n + 1)

theorem P8282751374628504048.correct : P8282751374628504048.Spec := by
  intro n
  simp only [A199325, Nat.add_sub_cancel]

end A199325

/-! ## A199325.P11840545966378310229

`∩[A386027(n+1), A386034(n+1)]`
-/

namespace A199325.P11840545966378310229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P11840545966378310229

namespace A199325

/-- `∩[A386027(n+1), A386034(n+1)]` -/
def P11840545966378310229.Spec : Prop :=
  ∀ n, (P11840545966378310229.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P2217818355290411638

`∩[A386031(n+1), A386034(n+1)]`
-/

namespace A199325.P2217818355290411638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P2217818355290411638

namespace A199325

/-- `∩[A386031(n+1), A386034(n+1)]` -/
def P2217818355290411638.Spec : Prop :=
  ∀ n, (P2217818355290411638.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P14505131581018383682

`∩[A386033(n+1), A386034(n+1)]`
-/

namespace A199325.P14505131581018383682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P14505131581018383682

namespace A199325

/-- `∩[A386033(n+1), A386034(n+1)]` -/
def P14505131581018383682.Spec : Prop :=
  ∀ n, (P14505131581018383682.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P11028975123488591185

`∩[A386018(n+1), A386032(n+1)]`
-/

namespace A199325.P11028975123488591185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P11028975123488591185

namespace A199325

/-- `∩[A386018(n+1), A386032(n+1)]` -/
def P11028975123488591185.Spec : Prop :=
  ∀ n, (P11028975123488591185.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P9534786738492075927

`∩[A386027(n+1), A386032(n+1)]`
-/

namespace A199325.P9534786738492075927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P9534786738492075927

namespace A199325

/-- `∩[A386027(n+1), A386032(n+1)]` -/
def P9534786738492075927.Spec : Prop :=
  ∀ n, (P9534786738492075927.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P4025411570160040747

`∩[A386031(n+1), A386032(n+1)]`
-/

namespace A199325.P4025411570160040747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P4025411570160040747

namespace A199325

/-- `∩[A386031(n+1), A386032(n+1)]` -/
def P4025411570160040747.Spec : Prop :=
  ∀ n, (P4025411570160040747.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P3926410743020010091

`∩[A386032(n+1), A386033(n+1)]`
-/

namespace A199325.P3926410743020010091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P3926410743020010091

namespace A199325

/-- `∩[A386032(n+1), A386033(n+1)]` -/
def P3926410743020010091.Spec : Prop :=
  ∀ n, (P3926410743020010091.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P12559764349460197021

`∩[A386032(n+1), A386034(n+1)]`
-/

namespace A199325.P12559764349460197021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P12559764349460197021

namespace A199325

/-- `∩[A386032(n+1), A386034(n+1)]` -/
def P12559764349460197021.Spec : Prop :=
  ∀ n, (P12559764349460197021.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P3160124834898334550

`∩[A386018(n+1), A386024(n+1)]`
-/

namespace A199325.P3160124834898334550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P3160124834898334550

namespace A199325

/-- `∩[A386018(n+1), A386024(n+1)]` -/
def P3160124834898334550.Spec : Prop :=
  ∀ n, (P3160124834898334550.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P503154192885325053

`∩[A386024(n+1), A386027(n+1)]`
-/

namespace A199325.P503154192885325053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P503154192885325053

namespace A199325

/-- `∩[A386024(n+1), A386027(n+1)]` -/
def P503154192885325053.Spec : Prop :=
  ∀ n, (P503154192885325053.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P4628677038441683967

`∩[A386024(n+1), A386031(n+1)]`
-/

namespace A199325.P4628677038441683967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P4628677038441683967

namespace A199325

/-- `∩[A386024(n+1), A386031(n+1)]` -/
def P4628677038441683967.Spec : Prop :=
  ∀ n, (P4628677038441683967.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P1195468079756391390

`∩[A386024(n+1), A386032(n+1)]`
-/

namespace A199325.P1195468079756391390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P1195468079756391390

namespace A199325

/-- `∩[A386024(n+1), A386032(n+1)]` -/
def P1195468079756391390.Spec : Prop :=
  ∀ n, (P1195468079756391390.a n : ℤ) = A199325 (n + 1)

end A199325

/-! ## A199325.P2209406112864035577

`∩[A386024(n+1), A386033(n+1)]`
-/

namespace A199325.P2209406112864035577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199325.P2209406112864035577

namespace A199325

/-- `∩[A386024(n+1), A386033(n+1)]` -/
def P2209406112864035577.Spec : Prop :=
  ∀ n, (P2209406112864035577.a n : ℤ) = A199325 (n + 1)

end A199325

/-!
# A199326: Primes having only {0, 1, 6} as digits.

The programs for A199326, there is no canonical definition to state claims against.
-/

/-! ## A199326.P15054916480264411532

`∩[A066597(n+1), A386036(n+1)]`
-/

namespace A199326.P15054916480264411532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P15054916480264411532

/-! ## A199326.P11024210477705364766

`∩[A066597(n+1), A386028(n+1)]`
-/

namespace A199326.P11024210477705364766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P11024210477705364766

/-! ## A199326.P8920873136221512076

`∩[A066597(n+1), A386031(n+1)]`
-/

namespace A199326.P8920873136221512076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P8920873136221512076

/-! ## A199326.P2150534171447428383

`∩[A386019(n+1), A386028(n+1)]`
-/

namespace A199326.P2150534171447428383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P2150534171447428383

/-! ## A199326.P4297186688998191116

`∩[A386019(n+1), A386031(n+1)]`
-/

namespace A199326.P4297186688998191116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P4297186688998191116

/-! ## A199326.P1710616018747568614

`∩[A386019(n+1), A386036(n+1)]`
-/

namespace A199326.P1710616018747568614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P1710616018747568614

/-! ## A199326.P2143593709501296056

`∩[A386028(n+1), A386031(n+1)]`
-/

namespace A199326.P2143593709501296056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P2143593709501296056

/-! ## A199326.P11808900884867200070

`∩[A386028(n+1), A386036(n+1)]`
-/

namespace A199326.P11808900884867200070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P11808900884867200070

/-! ## A199326.P11056326359368224916

`∩[A386031(n+1), A386036(n+1)]`
-/

namespace A199326.P11056326359368224916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P11056326359368224916

/-! ## A199326.P16294478515385230114

`∩[A066597(n+1), A386037(n+1)]`
-/

namespace A199326.P16294478515385230114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P16294478515385230114

/-! ## A199326.P17296580873583753144

`∩[A386019(n+1), A386037(n+1)]`
-/

namespace A199326.P17296580873583753144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P17296580873583753144

/-! ## A199326.P3029741074612147088

`∩[A386028(n+1), A386037(n+1)]`
-/

namespace A199326.P3029741074612147088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P3029741074612147088

/-! ## A199326.P8242138879073452853

`∩[A386031(n+1), A386037(n+1)]`
-/

namespace A199326.P8242138879073452853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P8242138879073452853

/-! ## A199326.P13945017008057213659

`∩[A386036(n+1), A386037(n+1)]`
-/

namespace A199326.P13945017008057213659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P13945017008057213659

/-! ## A199326.P3011152355160930512

`∩[A386019(n+1), A386035(n+1)]`
-/

namespace A199326.P3011152355160930512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P3011152355160930512

/-! ## A199326.P3240915950618702144

`∩[A386028(n+1), A386035(n+1)]`
-/

namespace A199326.P3240915950618702144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P3240915950618702144

/-! ## A199326.P17612917553067957829

`∩[A386031(n+1), A386035(n+1)]`
-/

namespace A199326.P17612917553067957829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P17612917553067957829

/-! ## A199326.P16135910630597110240

`∩[A386035(n+1), A386036(n+1)]`
-/

namespace A199326.P16135910630597110240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P16135910630597110240

/-! ## A199326.P274439067656923358

`∩[A386035(n+1), A386037(n+1)]`
-/

namespace A199326.P274439067656923358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P274439067656923358

/-! ## A199326.P16273988004597285246

`∩[A111488(n+1), A386019(n+1)]`
-/

namespace A199326.P16273988004597285246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199326.P16273988004597285246

/-!
# A199327: Primes having only {0, 1, 7} as digits.

The programs for A199327, the canonical program `A199327.P1501419313900266089` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199327 has offset 1).

The definition of A199327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1037 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199327.P4634876883688116903

`∩[A386020(n+1), A386029(n+1)]`
-/

namespace A199327.P4634876883688116903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P4634876883688116903

namespace A199327

/-- `∩[A386020(n+1), A386029(n+1)]` -/
def P4634876883688116903.Spec : Prop :=
  ∀ n, (P4634876883688116903.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P8191974716272614963

`∩[A386020(n+1), A386032(n+1)]`
-/

namespace A199327.P8191974716272614963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P8191974716272614963

namespace A199327

/-- `∩[A386020(n+1), A386032(n+1)]` -/
def P8191974716272614963.Spec : Prop :=
  ∀ n, (P8191974716272614963.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P10375477767186725301

`∩[A386020(n+1), A386035(n+1)]`
-/

namespace A199327.P10375477767186725301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P10375477767186725301

namespace A199327

/-- `∩[A386020(n+1), A386035(n+1)]` -/
def P10375477767186725301.Spec : Prop :=
  ∀ n, (P10375477767186725301.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P3204852671698069852

`∩[A386020(n+1), A386038(n+1)]`
-/

namespace A199327.P3204852671698069852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P3204852671698069852

namespace A199327

/-- `∩[A386020(n+1), A386038(n+1)]` -/
def P3204852671698069852.Spec : Prop :=
  ∀ n, (P3204852671698069852.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P18060310567585539868

`∩[A386029(n+1), A386032(n+1)]`
-/

namespace A199327.P18060310567585539868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P18060310567585539868

namespace A199327

/-- `∩[A386029(n+1), A386032(n+1)]` -/
def P18060310567585539868.Spec : Prop :=
  ∀ n, (P18060310567585539868.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P10855885342615027426

`∩[A386029(n+1), A386035(n+1)]`
-/

namespace A199327.P10855885342615027426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P10855885342615027426

namespace A199327

/-- `∩[A386029(n+1), A386035(n+1)]` -/
def P10855885342615027426.Spec : Prop :=
  ∀ n, (P10855885342615027426.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P14573867413268332074

`∩[A386029(n+1), A386038(n+1)]`
-/

namespace A199327.P14573867413268332074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P14573867413268332074

namespace A199327

/-- `∩[A386029(n+1), A386038(n+1)]` -/
def P14573867413268332074.Spec : Prop :=
  ∀ n, (P14573867413268332074.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P11172664842703219490

`∩[A386032(n+1), A386035(n+1)]`
-/

namespace A199327.P11172664842703219490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P11172664842703219490

namespace A199327

/-- `∩[A386032(n+1), A386035(n+1)]` -/
def P11172664842703219490.Spec : Prop :=
  ∀ n, (P11172664842703219490.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P14769576746122235819

`∩[A386032(n+1), A386038(n+1)]`
-/

namespace A199327.P14769576746122235819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P14769576746122235819

namespace A199327

/-- `∩[A386032(n+1), A386038(n+1)]` -/
def P14769576746122235819.Spec : Prop :=
  ∀ n, (P14769576746122235819.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P5714679309226261593

`∩[A386035(n+1), A386038(n+1)]`
-/

namespace A199327.P5714679309226261593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P5714679309226261593

namespace A199327

/-- `∩[A386035(n+1), A386038(n+1)]` -/
def P5714679309226261593.Spec : Prop :=
  ∀ n, (P5714679309226261593.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P1501419313900266089

`∩[A386020(n+1), A386039(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A199327

/-- `∩[A386020(n+1), A386039(n+1)]` -/
def P1501419313900266089.Spec : Prop :=
  ∀ n, (P1501419313900266089.a n : ℤ) = A199327 (n + 1)

theorem P1501419313900266089.correct : P1501419313900266089.Spec := by
  intro n
  simp only [A199327, Nat.add_sub_cancel]

end A199327

/-! ## A199327.P5596510420368240617

`∩[A386029(n+1), A386039(n+1)]`
-/

namespace A199327.P5596510420368240617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P5596510420368240617

namespace A199327

/-- `∩[A386029(n+1), A386039(n+1)]` -/
def P5596510420368240617.Spec : Prop :=
  ∀ n, (P5596510420368240617.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P6903855604670040107

`∩[A386032(n+1), A386039(n+1)]`
-/

namespace A199327.P6903855604670040107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P6903855604670040107

namespace A199327

/-- `∩[A386032(n+1), A386039(n+1)]` -/
def P6903855604670040107.Spec : Prop :=
  ∀ n, (P6903855604670040107.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P3805493808943396133

`∩[A386035(n+1), A386039(n+1)]`
-/

namespace A199327.P3805493808943396133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P3805493808943396133

namespace A199327

/-- `∩[A386035(n+1), A386039(n+1)]` -/
def P3805493808943396133.Spec : Prop :=
  ∀ n, (P3805493808943396133.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P13955176931241376346

`∩[A386020(n+1), A386025(n+1)]`
-/

namespace A199327.P13955176931241376346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P13955176931241376346

namespace A199327

/-- `∩[A386020(n+1), A386025(n+1)]` -/
def P13955176931241376346.Spec : Prop :=
  ∀ n, (P13955176931241376346.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P6377181357324051740

`∩[A386025(n+1), A386029(n+1)]`
-/

namespace A199327.P6377181357324051740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P6377181357324051740

namespace A199327

/-- `∩[A386025(n+1), A386029(n+1)]` -/
def P6377181357324051740.Spec : Prop :=
  ∀ n, (P6377181357324051740.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P7629212404558071882

`∩[A386025(n+1), A386032(n+1)]`
-/

namespace A199327.P7629212404558071882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P7629212404558071882

namespace A199327

/-- `∩[A386025(n+1), A386032(n+1)]` -/
def P7629212404558071882.Spec : Prop :=
  ∀ n, (P7629212404558071882.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P8323894957592668867

`∩[A386025(n+1), A386035(n+1)]`
-/

namespace A199327.P8323894957592668867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P8323894957592668867

namespace A199327

/-- `∩[A386025(n+1), A386035(n+1)]` -/
def P8323894957592668867.Spec : Prop :=
  ∀ n, (P8323894957592668867.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P3447749914787511786

`∩[A386025(n+1), A386038(n+1)]`
-/

namespace A199327.P3447749914787511786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P3447749914787511786

namespace A199327

/-- `∩[A386025(n+1), A386038(n+1)]` -/
def P3447749914787511786.Spec : Prop :=
  ∀ n, (P3447749914787511786.a n : ℤ) = A199327 (n + 1)

end A199327

/-! ## A199327.P1987412559771765667

`∩[A386025(n+1), A386039(n+1)]`
-/

namespace A199327.P1987412559771765667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199327.P1987412559771765667

namespace A199327

/-- `∩[A386025(n+1), A386039(n+1)]` -/
def P1987412559771765667.Spec : Prop :=
  ∀ n, (P1987412559771765667.a n : ℤ) = A199327 (n + 1)

end A199327

/-!
# A199328: Palindromic primes in the sense of A007500 with digits '0', '1' and '8' only.

The programs for A199328, there is no canonical definition to state claims against.
-/

/-! ## A199328.P2923929215291299480

`∩[A061247(n+1), A134996(n+1)]`
-/

namespace A199328.P2923929215291299480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P2923929215291299480

/-! ## A199328.P785545284565803666

`∩[A134996(n+1), A386030(n+1)]`
-/

namespace A199328.P785545284565803666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P785545284565803666

/-! ## A199328.P4153485673755216398

`∩[A134996(n+1), A386036(n+1)]`
-/

namespace A199328.P4153485673755216398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P4153485673755216398

/-! ## A199328.P15454790915087854060

`∩[A061247(n+1), A080788(n+1)]`
-/

namespace A199328.P15454790915087854060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P15454790915087854060

/-! ## A199328.P206979370240505964

`∩[A080788(n+1), A125308(n+1)]`
-/

namespace A199328.P206979370240505964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P206979370240505964

/-! ## A199328.P17571590627565147526

`∩[A080788(n+1), A134996(n+1)]`
-/

namespace A199328.P17571590627565147526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P17571590627565147526

/-! ## A199328.P1085245298032287089

`∩[A125308(n+1), A134996(n+1)]`
-/

namespace A199328.P1085245298032287089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P1085245298032287089

/-! ## A199328.P10634438690590217643

`∩[A080788(n+1), A386021(n+1)]`
-/

namespace A199328.P10634438690590217643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P10634438690590217643

/-! ## A199328.P14363157648857234510

`∩[A080788(n+1), A386030(n+1)]`
-/

namespace A199328.P14363157648857234510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P14363157648857234510

/-! ## A199328.P10559785152281620207

`∩[A080788(n+1), A386033(n+1)]`
-/

namespace A199328.P10559785152281620207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P10559785152281620207

/-! ## A199328.P9882110263056437453

`∩[A080788(n+1), A386038(n+1)]`
-/

namespace A199328.P9882110263056437453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P9882110263056437453

/-! ## A199328.P6403979509188091957

`∩[A134996(n+1), A386038(n+1)]`
-/

namespace A199328.P6403979509188091957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P6403979509188091957

/-! ## A199328.P15993825397032117480

`∩[A134996(n+1), A386040(n+1)]`
-/

namespace A199328.P15993825397032117480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199328.P15993825397032117480

/-!
# A199329: Primes having only {0, 1, 9} as digits.

The programs for A199329, the canonical program `A199329.P6175527496050523848` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199329 has offset 1).

The definition of A199329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199329.P15798870971925869514

`∩[A061246(n+1), A386022(n+1)]`
-/

namespace A199329.P15798870971925869514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P15798870971925869514

namespace A199329

/-- `∩[A061246(n+1), A386022(n+1)]` -/
def P15798870971925869514.Spec : Prop :=
  ∀ n, (P15798870971925869514.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P6030431146177569349

`∩[A061246(n+1), A386034(n+1)]`
-/

namespace A199329.P6030431146177569349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P6030431146177569349

namespace A199329

/-- `∩[A061246(n+1), A386034(n+1)]` -/
def P6030431146177569349.Spec : Prop :=
  ∀ n, (P6030431146177569349.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P9877231773491270410

`∩[A061246(n+1), A386037(n+1)]`
-/

namespace A199329.P9877231773491270410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P9877231773491270410

namespace A199329

/-- `∩[A061246(n+1), A386037(n+1)]` -/
def P9877231773491270410.Spec : Prop :=
  ∀ n, (P9877231773491270410.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P17267422250884459259

`∩[A061246(n+1), A386040(n+1)]`
-/

namespace A199329.P17267422250884459259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P17267422250884459259

namespace A199329

/-- `∩[A061246(n+1), A386040(n+1)]` -/
def P17267422250884459259.Spec : Prop :=
  ∀ n, (P17267422250884459259.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P3510876850825496476

`∩[A386022(n+1), A386034(n+1)]`
-/

namespace A199329.P3510876850825496476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P3510876850825496476

namespace A199329

/-- `∩[A386022(n+1), A386034(n+1)]` -/
def P3510876850825496476.Spec : Prop :=
  ∀ n, (P3510876850825496476.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P4184000593730099850

`∩[A386022(n+1), A386037(n+1)]`
-/

namespace A199329.P4184000593730099850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P4184000593730099850

namespace A199329

/-- `∩[A386022(n+1), A386037(n+1)]` -/
def P4184000593730099850.Spec : Prop :=
  ∀ n, (P4184000593730099850.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P4246598869966450272

`∩[A386022(n+1), A386040(n+1)]`
-/

namespace A199329.P4246598869966450272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P4246598869966450272

namespace A199329

/-- `∩[A386022(n+1), A386040(n+1)]` -/
def P4246598869966450272.Spec : Prop :=
  ∀ n, (P4246598869966450272.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P5046713378799822326

`∩[A386034(n+1), A386037(n+1)]`
-/

namespace A199329.P5046713378799822326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P5046713378799822326

namespace A199329

/-- `∩[A386034(n+1), A386037(n+1)]` -/
def P5046713378799822326.Spec : Prop :=
  ∀ n, (P5046713378799822326.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P8297816992663459750

`∩[A386034(n+1), A386040(n+1)]`
-/

namespace A199329.P8297816992663459750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P8297816992663459750

namespace A199329

/-- `∩[A386034(n+1), A386040(n+1)]` -/
def P8297816992663459750.Spec : Prop :=
  ∀ n, (P8297816992663459750.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P547463427763100185

`∩[A386037(n+1), A386040(n+1)]`
-/

namespace A199329.P547463427763100185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P547463427763100185

namespace A199329

/-- `∩[A386037(n+1), A386040(n+1)]` -/
def P547463427763100185.Spec : Prop :=
  ∀ n, (P547463427763100185.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P17295637621361475275

`∩[A061246(n+1), A386039(n+1)]`
-/

namespace A199329.P17295637621361475275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P17295637621361475275

namespace A199329

/-- `∩[A061246(n+1), A386039(n+1)]` -/
def P17295637621361475275.Spec : Prop :=
  ∀ n, (P17295637621361475275.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P15461297318790495201

`∩[A386022(n+1), A386039(n+1)]`
-/

namespace A199329.P15461297318790495201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P15461297318790495201

namespace A199329

/-- `∩[A386022(n+1), A386039(n+1)]` -/
def P15461297318790495201.Spec : Prop :=
  ∀ n, (P15461297318790495201.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P6175527496050523848

`∩[A386034(n+1), A386039(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A199329

/-- `∩[A386034(n+1), A386039(n+1)]` -/
def P6175527496050523848.Spec : Prop :=
  ∀ n, (P6175527496050523848.a n : ℤ) = A199329 (n + 1)

theorem P6175527496050523848.correct : P6175527496050523848.Spec := by
  intro n
  simp only [A199329, Nat.add_sub_cancel]

end A199329

/-! ## A199329.P16022815907591276505

`∩[A386037(n+1), A386039(n+1)]`
-/

namespace A199329.P16022815907591276505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P16022815907591276505

namespace A199329

/-- `∩[A386037(n+1), A386039(n+1)]` -/
def P16022815907591276505.Spec : Prop :=
  ∀ n, (P16022815907591276505.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P12613775489677221765

`∩[A061246(n+1), A386026(n+1)]`
-/

namespace A199329.P12613775489677221765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P12613775489677221765

namespace A199329

/-- `∩[A061246(n+1), A386026(n+1)]` -/
def P12613775489677221765.Spec : Prop :=
  ∀ n, (P12613775489677221765.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P13645346354098862319

`∩[A386022(n+1), A386026(n+1)]`
-/

namespace A199329.P13645346354098862319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P13645346354098862319

namespace A199329

/-- `∩[A386022(n+1), A386026(n+1)]` -/
def P13645346354098862319.Spec : Prop :=
  ∀ n, (P13645346354098862319.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P16164119682725029753

`∩[A386026(n+1), A386034(n+1)]`
-/

namespace A199329.P16164119682725029753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P16164119682725029753

namespace A199329

/-- `∩[A386026(n+1), A386034(n+1)]` -/
def P16164119682725029753.Spec : Prop :=
  ∀ n, (P16164119682725029753.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P4280487534105639618

`∩[A386026(n+1), A386037(n+1)]`
-/

namespace A199329.P4280487534105639618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P4280487534105639618

namespace A199329

/-- `∩[A386026(n+1), A386037(n+1)]` -/
def P4280487534105639618.Spec : Prop :=
  ∀ n, (P4280487534105639618.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P18243052365588886246

`∩[A386026(n+1), A386039(n+1)]`
-/

namespace A199329.P18243052365588886246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P18243052365588886246

namespace A199329

/-- `∩[A386026(n+1), A386039(n+1)]` -/
def P18243052365588886246.Spec : Prop :=
  ∀ n, (P18243052365588886246.a n : ℤ) = A199329 (n + 1)

end A199329

/-! ## A199329.P8822490689010863776

`∩[A386026(n+1), A386040(n+1)]`
-/

namespace A199329.P8822490689010863776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199329.P8822490689010863776

namespace A199329

/-- `∩[A386026(n+1), A386040(n+1)]` -/
def P8822490689010863776.Spec : Prop :=
  ∀ n, (P8822490689010863776.a n : ℤ) = A199329 (n + 1)

end A199329

/-!
# A199330: Squares in A048153.

The programs for A199330, there is no canonical definition to state claims against.
-/

/-! ## A199330.P14557492538320292288

`A048153(A199551(n+1))`
-/

namespace A199330.P14557492538320292288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048153 (A199551 (n + 1)).toNat

end

end A199330.P14557492538320292288

/-! ## A199330.P14774277047431154250

`record[A056926(A048153(n+1))²]`
-/

namespace A199330.P14774277047431154250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A048153 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199330.P14774277047431154250

/-! ## A199330.P13693328385139815768

`record[A056926(A049768(n+1)-A049760(n+1))²]`
-/

namespace A199330.P13693328385139815768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A049768 (n + 1) - A049760 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199330.P13693328385139815768

/-! ## A199330.P4073163794583533767

`record[A056926(A195938(n+1)+2*A231589(n+1))²]`
-/

namespace A199330.P4073163794583533767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A195938 (n + 1) + 2 * A231589 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199330.P4073163794583533767

/-!
# A199331: Number of ordered ways of writing n as the sum of two semiprimes.

The programs for A199331, there is no canonical definition to state claims against.
-/

/-! ## A199331.P1794667576640495578

`A302301(n+1)+A072931(n+1)`
-/

namespace A199331.P1794667576640495578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (n + 1) + A072931 (n + 1)

end

end A199331.P1794667576640495578

/-!
# A199332: Triangle read by rows, where even numbered rows contain the nonsquares (cf. A000037) and odd rows contain replicated squares.

The programs for A199332, the canonical program `A199332.P8726158095478974099` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199332 has offset 1).

The definition of A199332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199332.P8726158095478974099

`∑[(A130855(n)+1)%2]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199332

/-- `∑[(A130855(n)+1)%2]` -/
def P8726158095478974099.Spec : Prop :=
  ∀ n, P8726158095478974099.a n = A199332 (n + 1)

theorem P8726158095478974099.correct : P8726158095478974099.Spec := by
  intro n
  simp only [A199332, Nat.add_sub_cancel]

end A199332

/-! ## A199332.P9526503487823011927

`comp[∑[2*A056926(n)]]-n`
-/

namespace A199332.P9526503487823011927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056926 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A199332.P9526503487823011927

namespace A199332

/-- `comp[∑[2*A056926(n)]]-n` -/
def P9526503487823011927.Spec : Prop :=
  ∀ n, P9526503487823011927.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P3073939709145075589

`∑[A197870(n*∑[A197870(n)])]`
-/

namespace A199332.P3073939709145075589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P3073939709145075589

namespace A199332

/-- `∑[A197870(n*∑[A197870(n)])]` -/
def P3073939709145075589.Spec : Prop :=
  ∀ n, P3073939709145075589.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P12535793820624819377

`∑[A010054(n*∑[A010054(n)]%2)]`
-/

namespace A199332.P12535793820624819377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((n : ℤ) * Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P12535793820624819377

namespace A199332

/-- `∑[A010054(n*∑[A010054(n)]%2)]` -/
def P12535793820624819377.Spec : Prop :=
  ∀ n, P12535793820624819377.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P16824814089156345870

`n+1-A028391(n-A028391(a(n-1)))` with `a(0)=1`
-/

namespace A199332.P16824814089156345870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A028391 ((n : ℤ) - A028391 (a (n - 1)).toNat).toNat

end

end A199332.P16824814089156345870

namespace A199332

/-- `n+1-A028391(n-A028391(a(n-1)))` -/
def P16824814089156345870.Spec : Prop :=
  ∀ n, P16824814089156345870.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P10109263524346263437

`A010054(n-A053186(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A199332.P10109263524346263437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 ((n : ℤ) - A053186 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A199332.P10109263524346263437

namespace A199332

/-- `A010054(n-A053186(a(n-1)))+a(n-1)` -/
def P10109263524346263437.Spec : Prop :=
  ∀ n, P10109263524346263437.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P1501840955073362707

`∑[A144304(n)%2]`
-/

namespace A199332.P1501840955073362707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144304 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P1501840955073362707

namespace A199332

/-- `∑[A144304(n)%2]` -/
def P1501840955073362707.Spec : Prop :=
  ∀ n, P1501840955073362707.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P17627424857010843252

`∑[2-gcd(2, A079901(n))]`
-/

namespace A199332.P17627424857010843252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A079901 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P17627424857010843252

namespace A199332

/-- `∑[2-gcd(2, A079901(n))]` -/
def P17627424857010843252.Spec : Prop :=
  ∀ n, P17627424857010843252.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P13150639843341461166

`∑[A210725(n+1)%2]`
-/

namespace A199332.P13150639843341461166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210725 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P13150639843341461166

namespace A199332

/-- `∑[A210725(n+1)%2]` -/
def P13150639843341461166.Spec : Prop :=
  ∀ n, P13150639843341461166.a n = A199332 (n + 1)

end A199332

/-! ## A199332.P15728551861800321284

`∑[A117894(n)%2]`
-/

namespace A199332.P15728551861800321284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117894 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P15728551861800321284

namespace A199332

/-- `∑[A117894(n)%2]` -/
def P15728551861800321284.Spec : Prop :=
  ∀ n, P15728551861800321284.a n = A199332 (n + 1)

end A199332

/-!
# A199333: Triangle read by rows: T(n,0) = T(n,n) = 1, 0 < k < n: T(n,k) = smallest prime not less than T(n-1,k) + T(n-1,k-1).

The programs for A199333, there is no canonical definition to state claims against.
-/

/-! ## A199333.P9724780940398511706

`A300271(A171821(A077028(n)))`
-/

namespace A199333.P9724780940398511706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A171821 (A077028 n).toNat).toNat

end

end A199333.P9724780940398511706

/-! ## A199333.P12684252227737223132

`A180101(A196863(n+1)+A157528(n))`
-/

namespace A199333.P12684252227737223132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A196863 (n + 1) + A157528 n).toNat

end

end A199333.P12684252227737223132

/-! ## A199333.P17365125660730952925

`A180101(A014410(n+2)-A144329(n+1))`
-/

namespace A199333.P17365125660730952925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A014410 (n + 2) - A144329 (n + 1)).toNat

end

end A199333.P17365125660730952925

/-! ## A199333.P1370781672061488692

`A180101(A004247(n)+A196863(n+1)+A004247(n))`
-/

namespace A199333.P1370781672061488692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A004247 n + (A196863 (n + 1) + A004247 n)).toNat

end

end A199333.P1370781672061488692

/-! ## A199333.P17911445505610172818

`A005728(A004247(n)%A136121(n))`
-/

namespace A199333.P17911445505610172818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (Int.tmod (A004247 n) (A136121 n)).toNat

end

end A199333.P17911445505610172818

/-!
# A199334: Triangle T(n,k) = Fibonacci(n+k), related to A000045 (Fibonacci numbers).

The programs for A199334, the canonical program `A199334.P9267682920856663627` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199334 has offset 0).

The definition of A199334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(col(n)+row(n))` (program `A199334.P9267682920856663627`, by `A199334.P9267682920856663627.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199334.P9267682920856663627

`A000045(col(n)+row(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199334

/-- `A000045(col(n)+row(n))` -/
def P9267682920856663627.Spec : Prop :=
  ∀ n, P9267682920856663627.a n = A199334 n

theorem P9267682920856663627.correct : P9267682920856663627.Spec := by
  intro n
  simp only [A199334]

end A199334

/-! ## A199334.P8412354813025834183

`A000045(row(n)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199334.P8412354813025834183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n)

end

end A199334.P8412354813025834183

namespace A199334

/-- `A000045(row(n)+col(n))` -/
def P8412354813025834183.Spec : Prop :=
  ∀ n, P8412354813025834183.a n = A199334 n

theorem P8412354813025834183.correct : P8412354813025834183.Spec := by
  intro n
  simp only [A199334, Nat.add_sub_cancel, A199334.P8412354813025834183.a, A199334.P9267682920856663627.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199334

/-! ## A199334.P6142678147674005895

`A000045(n-C(∑[char[∑[n+1]]], 2))`
-/

namespace A199334.P6142678147674005895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A199334.P6142678147674005895

namespace A199334

/-- `A000045(n-C(∑[char[∑[n+1]]], 2))` -/
def P6142678147674005895.Spec : Prop :=
  ∀ n, P6142678147674005895.a n = A199334 n

end A199334

/-! ## A199334.P8948520533467792092

`A000045(2*n-eq[0, floor(2*sqrt(n))%2])`
-/

namespace A199334.P8948520533467792092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n - SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199334.P8948520533467792092

namespace A199334

/-- `A000045(2*n-eq[0, floor(2*sqrt(n))%2])` -/
def P8948520533467792092.Spec : Prop :=
  ∀ n, P8948520533467792092.a n = A199334 n

end A199334

/-! ## A199334.P13286397988795269560

`A000045(∑[2*char[∑[n]]]-1-(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A199334.P13286397988795269560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A199334.P13286397988795269560

namespace A199334

/-- `A000045(∑[2*char[∑[n]]]-1-(C(comp[∑[n]]-n, 2)-n))` -/
def P13286397988795269560.Spec : Prop :=
  ∀ n, P13286397988795269560.a n = A199334 n

end A199334

/-! ## A199334.P13274266476100415293

`A000045(A051162(n))`
-/

namespace A199334.P13274266476100415293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A051162 n).toNat

end

end A199334.P13274266476100415293

namespace A199334

/-- `A000045(A051162(n))` -/
def P13274266476100415293.Spec : Prop :=
  ∀ n, P13274266476100415293.a n = A199334 n

end A199334

/-! ## A199334.P10180782953760318181

`A247049(A131432(n))`
-/

namespace A199334.P10180782953760318181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A131432 n).toNat

end

end A199334.P10180782953760318181

namespace A199334

/-- `A247049(A131432(n))` -/
def P10180782953760318181.Spec : Prop :=
  ∀ n, P10180782953760318181.a n = A199334 n

end A199334

/-! ## A199334.P15829130284127821645

`A103609(A131421(n+1))`
-/

namespace A199334.P15829130284127821645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A131421 (n + 1)).toNat

end

end A199334.P15829130284127821645

namespace A199334

/-- `A103609(A131421(n+1))` -/
def P15829130284127821645.Spec : Prop :=
  ∀ n, P15829130284127821645.a n = A199334 n

end A199334

/-! ## A199334.P10933399779735932335

`A212804(A094727(n+1))`
-/

namespace A199334.P10933399779735932335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A094727 (n + 1)).toNat

end

end A199334.P10933399779735932335

namespace A199334

/-- `A212804(A094727(n+1))` -/
def P10933399779735932335.Spec : Prop :=
  ∀ n, P10933399779735932335.a n = A199334 n

end A199334

/-! ## A199334.P17746282637766458505

`A000045(A094727(n+1)-1)`
-/

namespace A199334.P17746282637766458505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A094727 (n + 1) - 1).toNat

end

end A199334.P17746282637766458505

namespace A199334

/-- `A000045(A094727(n+1)-1)` -/
def P17746282637766458505.Spec : Prop :=
  ∀ n, P17746282637766458505.a n = A199334 n

end A199334

/-! ## A199334.P6145716679068187812

`A108037(A245300(n))`
-/

namespace A199334.P6145716679068187812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (A245300 n).toNat

end

end A199334.P6145716679068187812

namespace A199334

/-- `A108037(A245300(n))` -/
def P6145716679068187812.Spec : Prop :=
  ∀ n, P6145716679068187812.a n = A199334 n

end A199334

/-!
# A199335: Triangle T(n,k), read by rows, given by (0,1,0,2,0,3,0,4,0,5,0,6,0,7,0,8,0,9,...) DELTA (2,0,3,0,4,0,5,0,6,0,7,0,8,0,9,...), where DELTA is the operator defined in A084938.

The programs for A199335, the canonical program `A199335.P4041449982684443471` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199335 has offset 0).

The definition of A199335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199335.P4041449982684443471

`(row(n)+2-col(n))*T(n-1,k-1)+col(n)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199335

/-- `(row(n)+2-col(n))*T(n-1,k-1)+col(n)*T(n-1,k)` -/
def P4041449982684443471.Spec : Prop :=
  ∀ n, P4041449982684443471.a n = A199335 n

theorem P4041449982684443471.correct : P4041449982684443471.Spec := by
  intro n
  simp only [A199335]

end A199335

/-! ## A199335.P4047419924275216257

`A326189(3^A265583(n+1))`
-/

namespace A199335.P4047419924275216257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326189 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A265583 (n + 1) : ℤ))).toNat

end

end A199335.P4047419924275216257

namespace A199335

/-- `A326189(3^A265583(n+1))` -/
def P4047419924275216257.Spec : Prop :=
  ∀ n, P4047419924275216257.a n = A199335 n

end A199335

/-! ## A199335.P17438681952684413394

`A220527(A269948(n)+A079520(n))`
-/

namespace A199335.P17438681952684413394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (A269948 n + A079520 n).toNat

end

end A199335.P17438681952684413394

namespace A199335

/-- `A220527(A269948(n)+A079520(n))` -/
def P17438681952684413394.Spec : Prop :=
  ∀ n, P17438681952684413394.a n = A199335 n

end A199335

/-! ## A199335.P4576439594387316679

`A238303(n)*A272604(A291452(n))`
-/

namespace A199335.P4576439594387316679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n * A272604 (A291452 n).toNat

end

end A199335.P4576439594387316679

namespace A199335

/-- `A238303(n)*A272604(A291452(n))` -/
def P4576439594387316679.Spec : Prop :=
  ∀ n, P4576439594387316679.a n = A199335 n

end A199335

/-!
# A199336: x-values in the solution to 15*x^2 - 14 = y^2.

The programs for A199336, the canonical program `A199336.P457817059588834037` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199336 has offset 1).

The definition of A199336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199336.P457817059588834037

`2*A105076(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199336

/-- `2*A105076(n+1)+1` -/
def P457817059588834037.Spec : Prop :=
  ∀ n, P457817059588834037.a n = A199336 (n + 1)

theorem P457817059588834037.correct : P457817059588834037.Spec := by
  intro n
  simp only [A199336, Nat.add_sub_cancel]

end A199336

/-! ## A199336.P2246084550374240539

`2*A105045(n+1)-1`
-/

namespace A199336.P2246084550374240539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105045 (n + 1) - 1

end

end A199336.P2246084550374240539

namespace A199336

/-- `2*A105045(n+1)-1` -/
def P2246084550374240539.Spec : Prop :=
  ∀ n, P2246084550374240539.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P5008154602259918473

`2*∑[abs(Δ[A105045(n)])]-1`
-/

namespace A199336.P5008154602259918473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A199336.P5008154602259918473

namespace A199336

/-- `2*∑[abs(Δ[A105045(n)])]-1` -/
def P5008154602259918473.Spec : Prop :=
  ∀ n, P5008154602259918473.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P13640699177000793516

`record[A260196(n)+2*A105045(n)]`
-/

namespace A199336.P13640699177000793516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + 2 * A105045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199336.P13640699177000793516

namespace A199336

/-- `record[A260196(n)+2*A105045(n)]` -/
def P13640699177000793516.Spec : Prop :=
  ∀ n, P13640699177000793516.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P5719790595291252804

`A105076(n+1)+A105045(n+1)`
-/

namespace A199336.P5719790595291252804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 1) + A105045 (n + 1)

end

end A199336.P5719790595291252804

namespace A199336

/-- `A105076(n+1)+A105045(n+1)` -/
def P5719790595291252804.Spec : Prop :=
  ∀ n, P5719790595291252804.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P7213146943691553704

`2*A057427(n)*A103200(A028310(n))+1`
-/

namespace A199336.P7213146943691553704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057427 n * A103200 (A028310 n).toNat) + 1

end

end A199336.P7213146943691553704

namespace A199336

/-- `2*A057427(n)*A103200(A028310(n))+1` -/
def P7213146943691553704.Spec : Prop :=
  ∀ n, P7213146943691553704.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P13655446587845009271

`A103200(n+1)+A105045(n+1)-A177187(n+1)`
-/

namespace A199336.P13655446587845009271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1) + (A105045 (n + 1) - A177187 (n + 1))

end

end A199336.P13655446587845009271

namespace A199336

/-- `A103200(n+1)+A105045(n+1)-A177187(n+1)` -/
def P13655446587845009271.Spec : Prop :=
  ∀ n, P13655446587845009271.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P5297342081527260187

`A237262(n+1)+A237262(n+1)-A070997(A004526(n))`
-/

namespace A199336.P5297342081527260187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1) + (A237262 (n + 1) - A070997 (A004526 n).toNat)

end

end A199336.P5297342081527260187

namespace A199336

/-- `A237262(n+1)+A237262(n+1)-A070997(A004526(n))` -/
def P5297342081527260187.Spec : Prop :=
  ∀ n, P5297342081527260187.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P2323757527569846055

`A237262(n+1)+A237262(n+1)-A041023(A052928(n))`
-/

namespace A199336.P2323757527569846055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1) + (A237262 (n + 1) - A041023 (A052928 n).toNat)

end

end A199336.P2323757527569846055

namespace A199336

/-- `A237262(n+1)+A237262(n+1)-A041023(A052928(n))` -/
def P2323757527569846055.Spec : Prop :=
  ∀ n, P2323757527569846055.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P13143820393936577021

`abs(Δ[8*a(n-2)-a(n-4)])` with `a(0)=2, a(1)=1, a(2)=4, a(3)=9, a(4)=32`
-/

namespace A199336.P13143820393936577021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4, 9, 32] fun n f1 =>
  8 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A199336.P13143820393936577021

namespace A199336

/-- `abs(Δ[8*a(n-2)-a(n-4)])` -/
def P13143820393936577021.Spec : Prop :=
  ∀ n, P13143820393936577021.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P16297179808811307971

`ceil(A199338(n+1)/sqrt(15))`
-/

namespace A199336.P16297179808811307971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199338 (n + 1) : ℝ) / Real.sqrt (15 : ℝ)⌉

end

end A199336.P16297179808811307971

namespace A199336

/-- `ceil(A199338(n+1)/sqrt(15))` -/
def P16297179808811307971.Spec : Prop :=
  ∀ n, P16297179808811307971.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P16599250081950792064

`Δ[Δ[A237262(A028310(n))]]`
-/

namespace A199336.P16599250081950792064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199336.P16599250081950792064

namespace A199336

/-- `Δ[Δ[A237262(A028310(n))]]` -/
def P16599250081950792064.Spec : Prop :=
  ∀ n, P16599250081950792064.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P4534589829743617610

`A077248(n+1)-A077247(n+1)`
-/

namespace A199336.P4534589829743617610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (n + 1) - A077247 (n + 1)

end

end A199336.P4534589829743617610

namespace A199336

/-- `A077248(n+1)-A077247(n+1)` -/
def P4534589829743617610.Spec : Prop :=
  ∀ n, P4534589829743617610.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P9734292729460362119

`2*A237262(n+1)-A070997(A004526(n))`
-/

namespace A199336.P9734292729460362119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237262 (n + 1) - A070997 (A004526 n).toNat

end

end A199336.P9734292729460362119

namespace A199336

/-- `2*A237262(n+1)-A070997(A004526(n))` -/
def P9734292729460362119.Spec : Prop :=
  ∀ n, P9734292729460362119.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P13063809667954240017

`2*A237262(n+1)-A041023(A052928(n))`
-/

namespace A199336.P13063809667954240017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237262 (n + 1) - A041023 (A052928 n).toNat

end

end A199336.P13063809667954240017

namespace A199336

/-- `2*A237262(n+1)-A041023(A052928(n))` -/
def P13063809667954240017.Spec : Prop :=
  ∀ n, P13063809667954240017.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P4787309957253219731

`Δ[A322780(A000007(n)+n)+A267810(2*n+1)]`
-/

namespace A199336.P4787309957253219731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (A000007 n + (n : ℤ)).toNat + A267810 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199336.P4787309957253219731

namespace A199336

/-- `Δ[A322780(A000007(n)+n)+A267810(2*n+1)]` -/
def P4787309957253219731.Spec : Prop :=
  ∀ n, P4787309957253219731.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P7491926917496959835

`(A322780(n+1)+A322780(n+4))%A322780(n+2)`
-/

namespace A199336.P7491926917496959835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322780 (n + 1) + A322780 (n + 4)) (A322780 (n + 2))

end

end A199336.P7491926917496959835

namespace A199336

/-- `(A322780(n+1)+A322780(n+4))%A322780(n+2)` -/
def P7491926917496959835.Spec : Prop :=
  ∀ n, P7491926917496959835.a n = A199336 (n + 1)

end A199336

/-! ## A199336.P804003319551412078

`Δ[A322780(n+4)]%A103201(n+2)`
-/

namespace A199336.P804003319551412078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A103201 (n + 2))

end

end A199336.P804003319551412078

namespace A199336

/-- `Δ[A322780(n+4)]%A103201(n+2)` -/
def P804003319551412078.Spec : Prop :=
  ∀ n, P804003319551412078.a n = A199336 (n + 1)

end A199336

/-!
# A199338: y-values in the solution to 15*x^2 - 14 = y^2.

The programs for A199338, the canonical program `A199338.P12770719292139059276` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199338 has offset 1).

The definition of A199338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199338.P12770719292139059276

`A103201(A028310(n))^abs(A062157(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199338

/-- `A103201(A028310(n))^abs(A062157(n))` -/
def P12770719292139059276.Spec : Prop :=
  ∀ n, P12770719292139059276.a n = (A199338 (n + 1) : ℚ)

end A199338

/-! ## A199338.P10779178286802794448

`A103201(A028310(n))^A001221(A037445(n+1))`
-/

namespace A199338.P10779178286802794448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103201 (A028310 n).toNat : ℚ) ^ (A001221 (A037445 (n + 1)).toNat : ℤ)

end

end A199338.P10779178286802794448

namespace A199338

/-- `A103201(A028310(n))^A001221(A037445(n+1))` -/
def P10779178286802794448.Spec : Prop :=
  ∀ n, P10779178286802794448.a n = (A199338 (n + 1) : ℚ)

end A199338

/-! ## A199338.P6124342412168260279

`A103201(A028310(n))^A305501(A006530(n+1))`
-/

namespace A199338.P6124342412168260279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103201 (A028310 n).toNat : ℚ) ^ (A305501 (A006530 (n + 1)).toNat : ℤ)

end

end A199338.P6124342412168260279

namespace A199338

/-- `A103201(A028310(n))^A305501(A006530(n+1))` -/
def P6124342412168260279.Spec : Prop :=
  ∀ n, P6124342412168260279.a n = (A199338 (n + 1) : ℚ)

end A199338

/-! ## A199338.P14920702202381604795

`A103201(A028310(n))%Δ[A281584(n+1)]`
-/

namespace A199338.P14920702202381604795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103201 (A028310 n).toNat) (f1 (n + 1) - f1 n)

end

end A199338.P14920702202381604795

namespace A199338

/-- `A103201(A028310(n))%Δ[A281584(n+1)]` -/
def P14920702202381604795.Spec : Prop :=
  ∀ n, P14920702202381604795.a n = A199338 (n + 1)

end A199338

/-! ## A199338.P15797153790211081789

`A077248(n+3)%A077248(n+1)`
-/

namespace A199338.P15797153790211081789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077248 (n + 3)) (A077248 (n + 1))

end

end A199338.P15797153790211081789

namespace A199338

/-- `A077248(n+3)%A077248(n+1)` -/
def P15797153790211081789.Spec : Prop :=
  ∀ n, P15797153790211081789.a n = A199338 (n + 1)

end A199338

/-! ## A199338.P11325607901249830354

`A103201(n+3)%Δ[A103201(n+1)]`
-/

namespace A199338.P11325607901249830354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103201 (n + 3)) (f1 (n + 1) - f1 n)

end

end A199338.P11325607901249830354

namespace A199338

/-- `A103201(n+3)%Δ[A103201(n+1)]` -/
def P11325607901249830354.Spec : Prop :=
  ∀ n, P11325607901249830354.a n = A199338 (n + 1)

end A199338

/-! ## A199338.P3893502679702767877

`A103201(A028310(n))^A178334(n)`
-/

namespace A199338.P3893502679702767877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103201 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A199338.P3893502679702767877

namespace A199338

/-- `A103201(A028310(n))^A178334(n)` -/
def P3893502679702767877.Spec : Prop :=
  ∀ n, P3893502679702767877.a n = (A199338 (n + 1) : ℚ)

end A199338

/-! ## A199338.P12354331327468370788

`A103201(A028310(n))%A077243(n)`
-/

namespace A199338.P12354331327468370788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103201 (A028310 n).toNat) (A077243 n)

end

end A199338.P12354331327468370788

namespace A199338

/-- `A103201(A028310(n))%A077243(n)` -/
def P12354331327468370788.Spec : Prop :=
  ∀ n, P12354331327468370788.a n = A199338 (n + 1)

end A199338

/-! ## A199338.P13534056483681910218

`A103201(A028310(n))^A213191(∑[n]+1)`
-/

namespace A199338.P13534056483681910218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103201 (A028310 n).toNat : ℚ) ^ (A213191 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A199338.P13534056483681910218

namespace A199338

/-- `A103201(A028310(n))^A213191(∑[n]+1)` -/
def P13534056483681910218.Spec : Prop :=
  ∀ n, P13534056483681910218.a n = (A199338 (n + 1) : ℚ)

end A199338

/-! ## A199338.P9348220444300358960

`A103201(A028310(n))^A305501(A305504(n+1))`
-/

namespace A199338.P9348220444300358960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103201 (A028310 n).toNat : ℚ) ^ (A305501 (A305504 (n + 1)).toNat : ℤ)

end

end A199338.P9348220444300358960

namespace A199338

/-- `A103201(A028310(n))^A305501(A305504(n+1))` -/
def P9348220444300358960.Spec : Prop :=
  ∀ n, P9348220444300358960.a n = (A199338 (n + 1) : ℚ)

end A199338

/-!
# A199339: a(n) = number of primes with an even digit sum among the first n primes minus the number with an odd digit sum.

The programs for A199339, the canonical program `A199339.P3756374579669110308` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199339 has offset 1).

The definition of A199339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199339.P2488789706413991594

`∑[(-1)^A007605(n+1)]`
-/

namespace A199339.P2488789706413991594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A007605 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P2488789706413991594

namespace A199339

/-- `∑[(-1)^A007605(n+1)]` -/
def P2488789706413991594.Spec : Prop :=
  ∀ n, P2488789706413991594.a n = (A199339 (n + 1) : ℚ)

end A199339

/-! ## A199339.P1373487331397692963

`∑[1-2*A200263(n+1)]`
-/

namespace A199339.P1373487331397692963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A200263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P1373487331397692963

namespace A199339

/-- `∑[1-2*A200263(n+1)]` -/
def P1373487331397692963.Spec : Prop :=
  ∀ n, P1373487331397692963.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P17277319981080614024

`∑[2*A200261(n+1)-1]`
-/

namespace A199339.P17277319981080614024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200261 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P17277319981080614024

namespace A199339

/-- `∑[2*A200261(n+1)-1]` -/
def P17277319981080614024.Spec : Prop :=
  ∀ n, P17277319981080614024.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P4425557260607817854

`2*A200262(n+1)-(n+1)`
-/

namespace A199339.P4425557260607817854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200262 (n + 1) - (n + 1 : ℤ)

end

end A199339.P4425557260607817854

namespace A199339

/-- `2*A200262(n+1)-(n+1)` -/
def P4425557260607817854.Spec : Prop :=
  ∀ n, P4425557260607817854.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P11119133153045461273

`n+1-2*A200264(n+1)`
-/

namespace A199339.P11119133153045461273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A200264 (n + 1)

end

end A199339.P11119133153045461273

namespace A199339

/-- `n+1-2*A200264(n+1)` -/
def P11119133153045461273.Spec : Prop :=
  ∀ n, P11119133153045461273.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P3756374579669110308

`∑[A033999(A007605(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A199339

/-- `∑[A033999(A007605(n+1))]` -/
def P3756374579669110308.Spec : Prop :=
  ∀ n, P3756374579669110308.a n = A199339 (n + 1)

theorem P3756374579669110308.correct : P3756374579669110308.Spec := by
  intro n
  simp only [A199339, Nat.add_sub_cancel]

end A199339

/-! ## A199339.P12079939199270787028

`∑[A087960(A007605(n+1)²)]`
-/

namespace A199339.P12079939199270787028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A007605 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P12079939199270787028

namespace A199339

/-- `∑[A087960(A007605(n+1)²)]` -/
def P12079939199270787028.Spec : Prop :=
  ∀ n, P12079939199270787028.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P883596961161117808

`∑[A057077(2*A007605(n+1))]`
-/

namespace A199339.P883596961161117808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P883596961161117808

namespace A199339

/-- `∑[A057077(2*A007605(n+1))]` -/
def P883596961161117808.Spec : Prop :=
  ∀ n, P883596961161117808.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P17805176720851570402

`∑[A087960(2*A007605(n+1))]`
-/

namespace A199339.P17805176720851570402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P17805176720851570402

namespace A199339

/-- `∑[A087960(2*A007605(n+1))]` -/
def P17805176720851570402.Spec : Prop :=
  ∀ n, P17805176720851570402.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P5246617986610123841

`A200262(n+1)-A200264(n+1)`
-/

namespace A199339.P5246617986610123841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200262 (n + 1) - A200264 (n + 1)

end

end A199339.P5246617986610123841

namespace A199339

/-- `A200262(n+1)-A200264(n+1)` -/
def P5246617986610123841.Spec : Prop :=
  ∀ n, P5246617986610123841.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P11927598529571574020

`∑[A057077(A007605(n+1)²+1)]`
-/

namespace A199339.P11927598529571574020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A007605 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P11927598529571574020

namespace A199339

/-- `∑[A057077(A007605(n+1)²+1)]` -/
def P11927598529571574020.Spec : Prop :=
  ∀ n, P11927598529571574020.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P11044562881743204475

`∑[A200261(n+1)-A200263(n+1)]`
-/

namespace A199339.P11044562881743204475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200261 (n + 1) - A200263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P11044562881743204475

namespace A199339

/-- `∑[A200261(n+1)-A200263(n+1)]` -/
def P11044562881743204475.Spec : Prop :=
  ∀ n, P11044562881743204475.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P18032279182339086451

`∑[A200261(n+1)]-A200264(n+1)`
-/

namespace A199339.P18032279182339086451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A200264 (n + 1)

end

end A199339.P18032279182339086451

namespace A199339

/-- `∑[A200261(n+1)]-A200264(n+1)` -/
def P18032279182339086451.Spec : Prop :=
  ∀ n, P18032279182339086451.a n = A199339 (n + 1)

end A199339

/-! ## A199339.P17692325083256510022

`A200262(n+1)-∑[A200263(n+1)]`
-/

namespace A199339.P17692325083256510022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200262 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P17692325083256510022

namespace A199339

/-- `A200262(n+1)-∑[A200263(n+1)]` -/
def P17692325083256510022.Spec : Prop :=
  ∀ n, P17692325083256510022.a n = A199339 (n + 1)

end A199339

/-!
# A199340: Primes having only {0, 3, 4} as digits.

The programs for A199340, there is no canonical definition to state claims against.
-/

/-! ## A199340.P4934341930870219879

`∩[A386056(n+1), A386057(n+1)]`
-/

namespace A199340.P4934341930870219879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P4934341930870219879

/-! ## A199340.P17411506549091409309

`∩[A386056(n+1), A386059(n+1)]`
-/

namespace A199340.P17411506549091409309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P17411506549091409309

/-! ## A199340.P6882734386147029081

`∩[A386057(n+1), A386059(n+1)]`
-/

namespace A199340.P6882734386147029081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P6882734386147029081

/-! ## A199340.P11952259143780228632

`∩[A386041(n+1), A386056(n+1)]`
-/

namespace A199340.P11952259143780228632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P11952259143780228632

/-! ## A199340.P8003637969138267999

`∩[A386041(n+1), A386057(n+1)]`
-/

namespace A199340.P8003637969138267999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P8003637969138267999

/-! ## A199340.P8928298805045967828

`∩[A386041(n+1), A386059(n+1)]`
-/

namespace A199340.P8928298805045967828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P8928298805045967828

/-! ## A199340.P5283092414114194717

`∩[A386041(n+1), A386058(n+1)]`
-/

namespace A199340.P5283092414114194717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P5283092414114194717

/-! ## A199340.P13436960859109907718

`∩[A386056(n+1), A386058(n+1)]`
-/

namespace A199340.P13436960859109907718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P13436960859109907718

/-! ## A199340.P10973989744883006311

`∩[A386057(n+1), A386058(n+1)]`
-/

namespace A199340.P10973989744883006311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P10973989744883006311

/-! ## A199340.P7884827908415935167

`∩[A386058(n+1), A386059(n+1)]`
-/

namespace A199340.P7884827908415935167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P7884827908415935167

/-! ## A199340.P11159391076092474087

`∩[A386041(n+1), A386060(n+1)]`
-/

namespace A199340.P11159391076092474087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P11159391076092474087

/-! ## A199340.P14348138693429943786

`∩[A386056(n+1), A386060(n+1)]`
-/

namespace A199340.P14348138693429943786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P14348138693429943786

/-! ## A199340.P4231302247597732296

`∩[A386057(n+1), A386060(n+1)]`
-/

namespace A199340.P4231302247597732296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P4231302247597732296

/-! ## A199340.P17780487889787488449

`∩[A386058(n+1), A386060(n+1)]`
-/

namespace A199340.P17780487889787488449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P17780487889787488449

/-! ## A199340.P14033885015355002664

`∩[A386059(n+1), A386060(n+1)]`
-/

namespace A199340.P14033885015355002664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P14033885015355002664

/-! ## A199340.P1720458686980241505

`∩[A386023(n+1), A386041(n+1)]`
-/

namespace A199340.P1720458686980241505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P1720458686980241505

/-! ## A199340.P14074187522925513367

`∩[A386023(n+1), A386056(n+1)]`
-/

namespace A199340.P14074187522925513367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P14074187522925513367

/-! ## A199340.P2945565514375174804

`∩[A386023(n+1), A386057(n+1)]`
-/

namespace A199340.P2945565514375174804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P2945565514375174804

/-! ## A199340.P7006189421476774709

`∩[A386023(n+1), A386058(n+1)]`
-/

namespace A199340.P7006189421476774709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P7006189421476774709

/-! ## A199340.P15823194741596122247

`∩[A386023(n+1), A386059(n+1)]`
-/

namespace A199340.P15823194741596122247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199340.P15823194741596122247

/-!
# A199341: Primes having only {1, 3, 4} as digits.

The programs for A199341, the canonical program `A199341.P16891359447478136063` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199341 has offset 1).

The definition of A199341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199341.P6382448721701392756

`∩[A386023(n+1), A386105(n+1)]`
-/

namespace A199341.P6382448721701392756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P6382448721701392756

namespace A199341

/-- `∩[A386023(n+1), A386105(n+1)]` -/
def P6382448721701392756.Spec : Prop :=
  ∀ n, (P6382448721701392756.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P17097097970273859476

`∩[A386023(n+1), A386106(n+1)]`
-/

namespace A199341.P17097097970273859476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P17097097970273859476

namespace A199341

/-- `∩[A386023(n+1), A386106(n+1)]` -/
def P17097097970273859476.Spec : Prop :=
  ∀ n, (P17097097970273859476.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P6627758204027462453

`∩[A386023(n+1), A386108(n+1)]`
-/

namespace A199341.P6627758204027462453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P6627758204027462453

namespace A199341

/-- `∩[A386023(n+1), A386108(n+1)]` -/
def P6627758204027462453.Spec : Prop :=
  ∀ n, (P6627758204027462453.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P16891359447478136063

`∩[A386105(n+1), A386106(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A199341

/-- `∩[A386105(n+1), A386106(n+1)]` -/
def P16891359447478136063.Spec : Prop :=
  ∀ n, (P16891359447478136063.a n : ℤ) = A199341 (n + 1)

theorem P16891359447478136063.correct : P16891359447478136063.Spec := by
  intro n
  simp only [A199341, Nat.add_sub_cancel]

end A199341

/-! ## A199341.P14183652508733893811

`∩[A386105(n+1), A386108(n+1)]`
-/

namespace A199341.P14183652508733893811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P14183652508733893811

namespace A199341

/-- `∩[A386105(n+1), A386108(n+1)]` -/
def P14183652508733893811.Spec : Prop :=
  ∀ n, (P14183652508733893811.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P13973356201548285716

`∩[A386106(n+1), A386108(n+1)]`
-/

namespace A199341.P13973356201548285716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P13973356201548285716

namespace A199341

/-- `∩[A386106(n+1), A386108(n+1)]` -/
def P13973356201548285716.Spec : Prop :=
  ∀ n, (P13973356201548285716.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P2568580251017164249

`∩[A386023(n+1), A386085(n+1)]`
-/

namespace A199341.P2568580251017164249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P2568580251017164249

namespace A199341

/-- `∩[A386023(n+1), A386085(n+1)]` -/
def P2568580251017164249.Spec : Prop :=
  ∀ n, (P2568580251017164249.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P1310494164528787828

`∩[A386085(n+1), A386105(n+1)]`
-/

namespace A199341.P1310494164528787828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P1310494164528787828

namespace A199341

/-- `∩[A386085(n+1), A386105(n+1)]` -/
def P1310494164528787828.Spec : Prop :=
  ∀ n, (P1310494164528787828.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P14641002187353612427

`∩[A386085(n+1), A386106(n+1)]`
-/

namespace A199341.P14641002187353612427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P14641002187353612427

namespace A199341

/-- `∩[A386085(n+1), A386106(n+1)]` -/
def P14641002187353612427.Spec : Prop :=
  ∀ n, (P14641002187353612427.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P15386758117040873408

`∩[A386085(n+1), A386108(n+1)]`
-/

namespace A199341.P15386758117040873408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P15386758117040873408

namespace A199341

/-- `∩[A386085(n+1), A386108(n+1)]` -/
def P15386758117040873408.Spec : Prop :=
  ∀ n, (P15386758117040873408.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P238009977858677951

`∩[A386023(n+1), A386109(n+1)]`
-/

namespace A199341.P238009977858677951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P238009977858677951

namespace A199341

/-- `∩[A386023(n+1), A386109(n+1)]` -/
def P238009977858677951.Spec : Prop :=
  ∀ n, (P238009977858677951.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P2547928065198740941

`∩[A386085(n+1), A386109(n+1)]`
-/

namespace A199341.P2547928065198740941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P2547928065198740941

namespace A199341

/-- `∩[A386085(n+1), A386109(n+1)]` -/
def P2547928065198740941.Spec : Prop :=
  ∀ n, (P2547928065198740941.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P8923168488723748844

`∩[A386105(n+1), A386109(n+1)]`
-/

namespace A199341.P8923168488723748844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P8923168488723748844

namespace A199341

/-- `∩[A386105(n+1), A386109(n+1)]` -/
def P8923168488723748844.Spec : Prop :=
  ∀ n, (P8923168488723748844.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P8396990014348267886

`∩[A386106(n+1), A386109(n+1)]`
-/

namespace A199341.P8396990014348267886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P8396990014348267886

namespace A199341

/-- `∩[A386106(n+1), A386109(n+1)]` -/
def P8396990014348267886.Spec : Prop :=
  ∀ n, (P8396990014348267886.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P14700490880049683275

`∩[A386023(n+1), A386107(n+1)]`
-/

namespace A199341.P14700490880049683275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P14700490880049683275

namespace A199341

/-- `∩[A386023(n+1), A386107(n+1)]` -/
def P14700490880049683275.Spec : Prop :=
  ∀ n, (P14700490880049683275.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P3313424002457941686

`∩[A386085(n+1), A386107(n+1)]`
-/

namespace A199341.P3313424002457941686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P3313424002457941686

namespace A199341

/-- `∩[A386085(n+1), A386107(n+1)]` -/
def P3313424002457941686.Spec : Prop :=
  ∀ n, (P3313424002457941686.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P843789662058138958

`∩[A386105(n+1), A386107(n+1)]`
-/

namespace A199341.P843789662058138958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P843789662058138958

namespace A199341

/-- `∩[A386105(n+1), A386107(n+1)]` -/
def P843789662058138958.Spec : Prop :=
  ∀ n, (P843789662058138958.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P16668918767276616793

`∩[A386106(n+1), A386107(n+1)]`
-/

namespace A199341.P16668918767276616793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P16668918767276616793

namespace A199341

/-- `∩[A386106(n+1), A386107(n+1)]` -/
def P16668918767276616793.Spec : Prop :=
  ∀ n, (P16668918767276616793.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P1664964147964241623

`∩[A386107(n+1), A386108(n+1)]`
-/

namespace A199341.P1664964147964241623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P1664964147964241623

namespace A199341

/-- `∩[A386107(n+1), A386108(n+1)]` -/
def P1664964147964241623.Spec : Prop :=
  ∀ n, (P1664964147964241623.a n : ℤ) = A199341 (n + 1)

end A199341

/-! ## A199341.P8387012921025887939

`∩[A386107(n+1), A386109(n+1)]`
-/

namespace A199341.P8387012921025887939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199341.P8387012921025887939

namespace A199341

/-- `∩[A386107(n+1), A386109(n+1)]` -/
def P8387012921025887939.Spec : Prop :=
  ∀ n, (P8387012921025887939.a n : ℤ) = A199341 (n + 1)

end A199341

/-!
# A199342: Primes having only {2, 3, 4} as digits.

The programs for A199342, there is no canonical definition to state claims against.
-/

/-! ## A199342.P1970936118529346255

`∩[A386041(n+1), A386139(n+1)]`
-/

namespace A199342.P1970936118529346255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P1970936118529346255

/-! ## A199342.P1097988826919065706

`∩[A386041(n+1), A386140(n+1)]`
-/

namespace A199342.P1097988826919065706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P1097988826919065706

/-! ## A199342.P4667430235380719894

`∩[A386041(n+1), A386142(n+1)]`
-/

namespace A199342.P4667430235380719894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P4667430235380719894

/-! ## A199342.P1379758358326953660

`∩[A386139(n+1), A386140(n+1)]`
-/

namespace A199342.P1379758358326953660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P1379758358326953660

/-! ## A199342.P14823250478976559605

`∩[A386139(n+1), A386142(n+1)]`
-/

namespace A199342.P14823250478976559605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P14823250478976559605

/-! ## A199342.P8710810009666432008

`∩[A386140(n+1), A386142(n+1)]`
-/

namespace A199342.P8710810009666432008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P8710810009666432008

/-! ## A199342.P8868633319135786852

`∩[A386041(n+1), A386141(n+1)]`
-/

namespace A199342.P8868633319135786852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P8868633319135786852

/-! ## A199342.P7077420768162416389

`∩[A386041(n+1), A386143(n+1)]`
-/

namespace A199342.P7077420768162416389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P7077420768162416389

/-! ## A199342.P3737843804956299760

`∩[A386139(n+1), A386141(n+1)]`
-/

namespace A199342.P3737843804956299760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P3737843804956299760

/-! ## A199342.P13862964619661889742

`∩[A386139(n+1), A386143(n+1)]`
-/

namespace A199342.P13862964619661889742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P13862964619661889742

/-! ## A199342.P10556151469796456597

`∩[A386140(n+1), A386141(n+1)]`
-/

namespace A199342.P10556151469796456597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P10556151469796456597

/-! ## A199342.P1281201054185541439

`∩[A386140(n+1), A386143(n+1)]`
-/

namespace A199342.P1281201054185541439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P1281201054185541439

/-! ## A199342.P9447583877042493816

`∩[A386141(n+1), A386142(n+1)]`
-/

namespace A199342.P9447583877042493816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P9447583877042493816

/-! ## A199342.P10972097327900209420

`∩[A386141(n+1), A386143(n+1)]`
-/

namespace A199342.P10972097327900209420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P10972097327900209420

/-! ## A199342.P12748154141352747930

`∩[A386142(n+1), A386143(n+1)]`
-/

namespace A199342.P12748154141352747930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P12748154141352747930

/-! ## A199342.P987214598937003883

`∩[A386041(n+1), A386085(n+1)]`
-/

namespace A199342.P987214598937003883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P987214598937003883

/-! ## A199342.P7933777497250623207

`∩[A386085(n+1), A386139(n+1)]`
-/

namespace A199342.P7933777497250623207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P7933777497250623207

/-! ## A199342.P12138318960392076462

`∩[A386085(n+1), A386140(n+1)]`
-/

namespace A199342.P12138318960392076462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P12138318960392076462

/-! ## A199342.P10592153570010784476

`∩[A386085(n+1), A386141(n+1)]`
-/

namespace A199342.P10592153570010784476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P10592153570010784476

/-! ## A199342.P15361899011115474524

`∩[A386085(n+1), A386142(n+1)]`
-/

namespace A199342.P15361899011115474524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199342.P15361899011115474524

/-!
# A199343: Least integer > n having a larger or the same digital sum as n.

The programs for A199343, the canonical program `A199343.P16196768706040487666` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199343 has offset 0).

The definition of A199343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199343.P16196768706040487666

`n+ceil(9*10^(val(n+1, 10)-1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199343

/-- `n+ceil(9*10^(val(n+1, 10)-1))` -/
def P16196768706040487666.Spec : Prop :=
  ∀ n, P16196768706040487666.a n = A199343 n

theorem P16196768706040487666.correct : P16196768706040487666.Spec := by
  intro n
  simp only [A199343]

end A199343

/-! ## A199343.P14001498708171805036

`9^A014029((n+1)²)+n`
-/

namespace A199343.P14001498708171805036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A014029 ((n + 1) ^ 2) : ℤ) + (n : ℚ)

end

end A199343.P14001498708171805036

namespace A199343

/-- `9^A014029((n+1)²)+n` -/
def P14001498708171805036.Spec : Prop :=
  ∀ n, P14001498708171805036.a n = (A199343 n : ℚ)

end A199343

/-! ## A199343.P10838342616004869959

`lcm(2, A118762(n+1))-1+n`
-/

namespace A199343.P10838342616004869959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A118762 (n + 1)) : ℤ) - 1 + (n : ℤ)

end

end A199343.P10838342616004869959

namespace A199343

/-- `lcm(2, A118762(n+1))-1+n` -/
def P10838342616004869959.Spec : Prop :=
  ∀ n, P10838342616004869959.a n = A199343 n

end A199343

/-! ## A199343.P3689472248739243130

`A231346(10^val(n+1, 10))+n+1`
-/

namespace A199343.P3689472248739243130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231346 (10 ^ SequenceMachineLib.valuation (n + 1) 10) + (n + 1 : ℤ)

end

end A199343.P3689472248739243130

namespace A199343

/-- `A231346(10^val(n+1, 10))+n+1` -/
def P3689472248739243130.Spec : Prop :=
  ∀ n, P3689472248739243130.a n = A199343 n

end A199343

/-! ## A199343.P2343582237235029024

`A075877(Δ[A051022(n)])+n`
-/

namespace A199343.P2343582237235029024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A199343.P2343582237235029024

namespace A199343

/-- `A075877(Δ[A051022(n)])+n` -/
def P2343582237235029024.Spec : Prop :=
  ∀ n, P2343582237235029024.a n = A199343 n

end A199343

/-!
# A199344: Least integer > n having a digital sum larger than that of n.

The programs for A199344, the canonical program `A199344.P13225288437868224902` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199344 has offset 0).

The definition of A199344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199344.P13225288437868224902

`n+10^val(n+1, 10)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199344

/-- `n+10^val(n+1, 10)` -/
def P13225288437868224902.Spec : Prop :=
  ∀ n, (P13225288437868224902.a n : ℤ) = A199344 n

theorem P13225288437868224902.correct : P13225288437868224902.Spec := by
  intro n
  simp only [A199344]

end A199344

/-! ## A199344.P13772694691593083239

`abs(Δ[A003100(n)])+n`
-/

namespace A199344.P13772694691593083239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + (n : ℤ)

end

end A199344.P13772694691593083239

namespace A199344

/-- `abs(Δ[A003100(n)])+n` -/
def P13772694691593083239.Spec : Prop :=
  ∀ n, P13772694691593083239.a n = A199344 n

end A199344

/-! ## A199344.P16883672621145682185

`(n+1)/A004151(n+1)+n`
-/

namespace A199344.P16883672621145682185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A004151 (n + 1) : ℚ) + (n : ℚ)

end

end A199344.P16883672621145682185

namespace A199344

/-- `(n+1)/A004151(n+1)+n` -/
def P16883672621145682185.Spec : Prop :=
  ∀ n, P16883672621145682185.a n = (A199344 n : ℚ)

end A199344

/-! ## A199344.P8718226977288263832

`A068159(A071273(n+1))+n`
-/

namespace A199344.P8718226977288263832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068159 (A071273 (n + 1)).toNat + (n : ℤ)

end

end A199344.P8718226977288263832

namespace A199344

/-- `A068159(A071273(n+1))+n` -/
def P8718226977288263832.Spec : Prop :=
  ∀ n, P8718226977288263832.a n = A199344 n

end A199344

/-! ## A199344.P3783834201949587890

`abs(A118762(n+1))+n`
-/

namespace A199344.P3783834201949587890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118762 (n + 1)| + (n : ℤ)

end

end A199344.P3783834201949587890

namespace A199344

/-- `abs(A118762(n+1))+n` -/
def P3783834201949587890.Spec : Prop :=
  ∀ n, P3783834201949587890.a n = A199344 n

end A199344

/-! ## A199344.P10131482673370805923

`A004719(A044713(n+1))`
-/

namespace A199344.P10131482673370805923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A044713 (n + 1)).toNat

end

end A199344.P10131482673370805923

namespace A199344

/-- `A004719(A044713(n+1))` -/
def P10131482673370805923.Spec : Prop :=
  ∀ n, P10131482673370805923.a n = A199344 n

end A199344

/-! ## A199344.P4685403729057636745

`A066568(n+1)+A000005(A329562(n))`
-/

namespace A199344.P4685403729057636745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (n + 1) + A000005 (A329562 n).toNat

end

end A199344.P4685403729057636745

namespace A199344

/-- `A066568(n+1)+A000005(A329562(n))` -/
def P4685403729057636745.Spec : Prop :=
  ∀ n, P4685403729057636745.a n = A199344 n

end A199344

/-! ## A199344.P2294214115724568483

`A087061(2*(n+1)²)`
-/

namespace A199344.P2294214115724568483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (2 * (n + 1) ^ 2)

end

end A199344.P2294214115724568483

namespace A199344

/-- `A087061(2*(n+1)²)` -/
def P2294214115724568483.Spec : Prop :=
  ∀ n, P2294214115724568483.a n = A199344 n

end A199344

/-!
# A199345: Primes having only {3, 4, 5} as digits.

The programs for A199345, there is no canonical definition to state claims against.
-/

/-! ## A199345.P3042910745448727212

`∩[A386056(n+1), A386169(n+1)]`
-/

namespace A199345.P3042910745448727212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P3042910745448727212

/-! ## A199345.P5902129785003354265

`∩[A386056(n+1), A386171(n+1)]`
-/

namespace A199345.P5902129785003354265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P5902129785003354265

/-! ## A199345.P7829365804550073578

`∩[A386169(n+1), A386171(n+1)]`
-/

namespace A199345.P7829365804550073578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P7829365804550073578

/-! ## A199345.P7444300774900994172

`∩[A386056(n+1), A386139(n+1)]`
-/

namespace A199345.P7444300774900994172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P7444300774900994172

/-! ## A199345.P9090870746618995531

`∩[A386139(n+1), A386169(n+1)]`
-/

namespace A199345.P9090870746618995531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P9090870746618995531

/-! ## A199345.P6547797999157914328

`∩[A386139(n+1), A386171(n+1)]`
-/

namespace A199345.P6547797999157914328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P6547797999157914328

/-! ## A199345.P10539392074628595405

`∩[A386056(n+1), A386170(n+1)]`
-/

namespace A199345.P10539392074628595405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P10539392074628595405

/-! ## A199345.P14522450614400584795

`∩[A386056(n+1), A386172(n+1)]`
-/

namespace A199345.P14522450614400584795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P14522450614400584795

/-! ## A199345.P4509139770804231530

`∩[A386139(n+1), A386170(n+1)]`
-/

namespace A199345.P4509139770804231530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P4509139770804231530

/-! ## A199345.P7714376391893266722

`∩[A386139(n+1), A386172(n+1)]`
-/

namespace A199345.P7714376391893266722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P7714376391893266722

/-! ## A199345.P3949014936473021867

`∩[A386169(n+1), A386170(n+1)]`
-/

namespace A199345.P3949014936473021867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P3949014936473021867

/-! ## A199345.P1819381373733483389

`∩[A386169(n+1), A386172(n+1)]`
-/

namespace A199345.P1819381373733483389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P1819381373733483389

/-! ## A199345.P3361818918522788466

`∩[A386170(n+1), A386171(n+1)]`
-/

namespace A199345.P3361818918522788466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P3361818918522788466

/-! ## A199345.P15052938881520435594

`∩[A386170(n+1), A386172(n+1)]`
-/

namespace A199345.P15052938881520435594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P15052938881520435594

/-! ## A199345.P17163076766982448987

`∩[A386171(n+1), A386172(n+1)]`
-/

namespace A199345.P17163076766982448987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P17163076766982448987

/-! ## A199345.P4759143425989651254

`∩[A386056(n+1), A386105(n+1)]`
-/

namespace A199345.P4759143425989651254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P4759143425989651254

/-! ## A199345.P15234234855070378625

`∩[A386105(n+1), A386139(n+1)]`
-/

namespace A199345.P15234234855070378625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P15234234855070378625

/-! ## A199345.P5470640550758936314

`∩[A386105(n+1), A386169(n+1)]`
-/

namespace A199345.P5470640550758936314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P5470640550758936314

/-! ## A199345.P13960019610235256889

`∩[A386105(n+1), A386170(n+1)]`
-/

namespace A199345.P13960019610235256889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P13960019610235256889

/-! ## A199345.P3410366123983156043

`∩[A386105(n+1), A386171(n+1)]`
-/

namespace A199345.P3410366123983156043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199345.P3410366123983156043

/-!
# A199346: Primes having only {3, 4, 6} as digits.

The programs for A199346, there is no canonical definition to state claims against.
-/

/-! ## A199346.P5606891494335971900

`∩[A386057(n+1), A386174(n+1)]`
-/

namespace A199346.P5606891494335971900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P5606891494335971900

/-! ## A199346.P12652778278956257181

`∩[A386057(n+1), A386169(n+1)]`
-/

namespace A199346.P12652778278956257181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P12652778278956257181

/-! ## A199346.P9490453043553933935

`∩[A386169(n+1), A386174(n+1)]`
-/

namespace A199346.P9490453043553933935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P9490453043553933935

/-! ## A199346.P5071188139059426809

`∩[A386057(n+1), A386140(n+1)]`
-/

namespace A199346.P5071188139059426809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P5071188139059426809

/-! ## A199346.P2070133491323623741

`∩[A386140(n+1), A386169(n+1)]`
-/

namespace A199346.P2070133491323623741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P2070133491323623741

/-! ## A199346.P970359276353134085

`∩[A386140(n+1), A386174(n+1)]`
-/

namespace A199346.P970359276353134085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P970359276353134085

/-! ## A199346.P14242924800377312925

`∩[A386057(n+1), A386173(n+1)]`
-/

namespace A199346.P14242924800377312925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P14242924800377312925

/-! ## A199346.P188094114198589294

`∩[A386057(n+1), A386175(n+1)]`
-/

namespace A199346.P188094114198589294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P188094114198589294

/-! ## A199346.P2644910586723385553

`∩[A386140(n+1), A386173(n+1)]`
-/

namespace A199346.P2644910586723385553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P2644910586723385553

/-! ## A199346.P14893246134451487844

`∩[A386140(n+1), A386175(n+1)]`
-/

namespace A199346.P14893246134451487844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P14893246134451487844

/-! ## A199346.P13021252666133235215

`∩[A386169(n+1), A386173(n+1)]`
-/

namespace A199346.P13021252666133235215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P13021252666133235215

/-! ## A199346.P17580944541281594279

`∩[A386169(n+1), A386175(n+1)]`
-/

namespace A199346.P17580944541281594279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P17580944541281594279

/-! ## A199346.P6952226276522918964

`∩[A386173(n+1), A386174(n+1)]`
-/

namespace A199346.P6952226276522918964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P6952226276522918964

/-! ## A199346.P16266140588516881195

`∩[A386173(n+1), A386175(n+1)]`
-/

namespace A199346.P16266140588516881195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P16266140588516881195

/-! ## A199346.P11942792076589017533

`∩[A386174(n+1), A386175(n+1)]`
-/

namespace A199346.P11942792076589017533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P11942792076589017533

/-! ## A199346.P1467989748029960043

`∩[A386057(n+1), A386106(n+1)]`
-/

namespace A199346.P1467989748029960043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P1467989748029960043

/-! ## A199346.P1942136216383328975

`∩[A386106(n+1), A386140(n+1)]`
-/

namespace A199346.P1942136216383328975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P1942136216383328975

/-! ## A199346.P6845315202940080454

`∩[A386106(n+1), A386169(n+1)]`
-/

namespace A199346.P6845315202940080454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P6845315202940080454

/-! ## A199346.P5496938748989970238

`∩[A386106(n+1), A386173(n+1)]`
-/

namespace A199346.P5496938748989970238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P5496938748989970238

/-! ## A199346.P7099842014038768901

`∩[A386106(n+1), A386174(n+1)]`
-/

namespace A199346.P7099842014038768901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199346.P7099842014038768901

/-!
# A199347: Primes having only {3, 4, 7} as digits.

The programs for A199347, there is no canonical definition to state claims against.
-/

/-! ## A199347.P220884995580588972

`∩[A386058(n+1), A386176(n+1)]`
-/

namespace A199347.P220884995580588972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P220884995580588972

/-! ## A199347.P11210297623769011193

`∩[A386058(n+1), A386173(n+1)]`
-/

namespace A199347.P11210297623769011193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P11210297623769011193

/-! ## A199347.P12584398205696963407

`∩[A386173(n+1), A386176(n+1)]`
-/

namespace A199347.P12584398205696963407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P12584398205696963407

/-! ## A199347.P6557539625910107979

`∩[A386058(n+1), A386170(n+1)]`
-/

namespace A199347.P6557539625910107979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P6557539625910107979

/-! ## A199347.P3399813120079661859

`∩[A386170(n+1), A386173(n+1)]`
-/

namespace A199347.P3399813120079661859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P3399813120079661859

/-! ## A199347.P13802813312734147063

`∩[A386170(n+1), A386176(n+1)]`
-/

namespace A199347.P13802813312734147063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P13802813312734147063

/-! ## A199347.P1671179467915393308

`∩[A281093(n+1), A386058(n+1)]`
-/

namespace A199347.P1671179467915393308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P1671179467915393308

/-! ## A199347.P14086879984192597930

`∩[A281093(n+1), A386170(n+1)]`
-/

namespace A199347.P14086879984192597930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P14086879984192597930

/-! ## A199347.P4936529914487758010

`∩[A281093(n+1), A386173(n+1)]`
-/

namespace A199347.P4936529914487758010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P4936529914487758010

/-! ## A199347.P14149496630971750325

`∩[A281093(n+1), A386176(n+1)]`
-/

namespace A199347.P14149496630971750325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P14149496630971750325

/-! ## A199347.P13633712292362458084

`∩[A281093(n+1), A386107(n+1)]`
-/

namespace A199347.P13633712292362458084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P13633712292362458084

/-! ## A199347.P10611627148454293813

`∩[A281093(n+1), A386141(n+1)]`
-/

namespace A199347.P10611627148454293813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P10611627148454293813

/-! ## A199347.P3530465244074047439

`∩[A386058(n+1), A386107(n+1)]`
-/

namespace A199347.P3530465244074047439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P3530465244074047439

/-! ## A199347.P15861187887073138241

`∩[A386058(n+1), A386141(n+1)]`
-/

namespace A199347.P15861187887073138241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P15861187887073138241

/-! ## A199347.P1983747436803289725

`∩[A386107(n+1), A386141(n+1)]`
-/

namespace A199347.P1983747436803289725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P1983747436803289725

/-! ## A199347.P4245499558867357305

`∩[A386107(n+1), A386170(n+1)]`
-/

namespace A199347.P4245499558867357305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P4245499558867357305

/-! ## A199347.P14379466002850730478

`∩[A386107(n+1), A386173(n+1)]`
-/

namespace A199347.P14379466002850730478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P14379466002850730478

/-! ## A199347.P14043482963819651964

`∩[A386107(n+1), A386176(n+1)]`
-/

namespace A199347.P14043482963819651964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P14043482963819651964

/-! ## A199347.P11597318264768309970

`∩[A386141(n+1), A386170(n+1)]`
-/

namespace A199347.P11597318264768309970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P11597318264768309970

/-! ## A199347.P8747640826053811915

`∩[A386141(n+1), A386173(n+1)]`
-/

namespace A199347.P8747640826053811915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199347.P8747640826053811915

/-!
# A199348: Primes having only {3, 4, 8} as digits.

The programs for A199348, there is no canonical definition to state claims against.
-/

/-! ## A199348.P15622743980861525057

`∩[A386059(n+1), A386171(n+1)]`
-/

namespace A199348.P15622743980861525057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P15622743980861525057

/-! ## A199348.P17187866380944618907

`∩[A386059(n+1), A386174(n+1)]`
-/

namespace A199348.P17187866380944618907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P17187866380944618907

/-! ## A199348.P10594027771085285293

`∩[A386171(n+1), A386174(n+1)]`
-/

namespace A199348.P10594027771085285293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P10594027771085285293

/-! ## A199348.P4461985431622763928

`∩[A386059(n+1), A386142(n+1)]`
-/

namespace A199348.P4461985431622763928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P4461985431622763928

/-! ## A199348.P17934909321259531354

`∩[A386142(n+1), A386171(n+1)]`
-/

namespace A199348.P17934909321259531354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P17934909321259531354

/-! ## A199348.P3468866227958508849

`∩[A386142(n+1), A386174(n+1)]`
-/

namespace A199348.P3468866227958508849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P3468866227958508849

/-! ## A199348.P2930838541550698442

`∩[A386059(n+1), A386177(n+1)]`
-/

namespace A199348.P2930838541550698442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P2930838541550698442

/-! ## A199348.P952458025369224659

`∩[A386142(n+1), A386177(n+1)]`
-/

namespace A199348.P952458025369224659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P952458025369224659

/-! ## A199348.P792386621542855036

`∩[A386171(n+1), A386177(n+1)]`
-/

namespace A199348.P792386621542855036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P792386621542855036

/-! ## A199348.P5072596034176164202

`∩[A386174(n+1), A386177(n+1)]`
-/

namespace A199348.P5072596034176164202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P5072596034176164202

/-! ## A199348.P16442382945547844101

`∩[A386059(n+1), A386176(n+1)]`
-/

namespace A199348.P16442382945547844101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P16442382945547844101

/-! ## A199348.P7975408643934418538

`∩[A386142(n+1), A386176(n+1)]`
-/

namespace A199348.P7975408643934418538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P7975408643934418538

/-! ## A199348.P2348218841678675671

`∩[A386171(n+1), A386176(n+1)]`
-/

namespace A199348.P2348218841678675671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P2348218841678675671

/-! ## A199348.P14170397281965881808

`∩[A386174(n+1), A386176(n+1)]`
-/

namespace A199348.P14170397281965881808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P14170397281965881808

/-! ## A199348.P17525740044009328835

`∩[A386176(n+1), A386177(n+1)]`
-/

namespace A199348.P17525740044009328835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P17525740044009328835

/-! ## A199348.P12101354455333443132

`∩[A386059(n+1), A386108(n+1)]`
-/

namespace A199348.P12101354455333443132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P12101354455333443132

/-! ## A199348.P8537206413629313803

`∩[A386108(n+1), A386142(n+1)]`
-/

namespace A199348.P8537206413629313803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P8537206413629313803

/-! ## A199348.P6273441415961878624

`∩[A386108(n+1), A386171(n+1)]`
-/

namespace A199348.P6273441415961878624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P6273441415961878624

/-! ## A199348.P9299468583446025263

`∩[A386108(n+1), A386174(n+1)]`
-/

namespace A199348.P9299468583446025263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P9299468583446025263

/-! ## A199348.P16683517454936965658

`∩[A386108(n+1), A386176(n+1)]`
-/

namespace A199348.P16683517454936965658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199348.P16683517454936965658

/-!
# A199349: Primes having only {3, 4, 9} as digits.

The programs for A199349, there is no canonical definition to state claims against.
-/

/-! ## A199349.P12681361556565514554

`∩[A386060(n+1), A386177(n+1)]`
-/

namespace A199349.P12681361556565514554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P12681361556565514554

/-! ## A199349.P16259127653799963031

`∩[A386060(n+1), A386172(n+1)]`
-/

namespace A199349.P16259127653799963031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P16259127653799963031

/-! ## A199349.P10433873635338408855

`∩[A386172(n+1), A386177(n+1)]`
-/

namespace A199349.P10433873635338408855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P10433873635338408855

/-! ## A199349.P2328388220754804919

`∩[A386060(n+1), A386175(n+1)]`
-/

namespace A199349.P2328388220754804919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P2328388220754804919

/-! ## A199349.P11786036402926743516

`∩[A386172(n+1), A386175(n+1)]`
-/

namespace A199349.P11786036402926743516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P11786036402926743516

/-! ## A199349.P1595260473345588303

`∩[A281093(n+1), A386060(n+1)]`
-/

namespace A199349.P1595260473345588303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P1595260473345588303

/-! ## A199349.P12013866256762554467

`∩[A281093(n+1), A386172(n+1)]`
-/

namespace A199349.P12013866256762554467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P12013866256762554467

/-! ## A199349.P14119068525172005459

`∩[A281093(n+1), A386175(n+1)]`
-/

namespace A199349.P14119068525172005459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P14119068525172005459

/-! ## A199349.P10156316642614062482

`∩[A281093(n+1), A386177(n+1)]`
-/

namespace A199349.P10156316642614062482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P10156316642614062482

/-! ## A199349.P4998512903617264164

`∩[A281093(n+1), A386109(n+1)]`
-/

namespace A199349.P4998512903617264164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P4998512903617264164

/-! ## A199349.P4779617638778802083

`∩[A281093(n+1), A386143(n+1)]`
-/

namespace A199349.P4779617638778802083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P4779617638778802083

/-! ## A199349.P12742633657684164721

`∩[A386060(n+1), A386109(n+1)]`
-/

namespace A199349.P12742633657684164721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P12742633657684164721

/-! ## A199349.P11116332728869832514

`∩[A386060(n+1), A386143(n+1)]`
-/

namespace A199349.P11116332728869832514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P11116332728869832514

/-! ## A199349.P1391271028016486095

`∩[A386109(n+1), A386143(n+1)]`
-/

namespace A199349.P1391271028016486095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P1391271028016486095

/-! ## A199349.P3199067492064469720

`∩[A386109(n+1), A386172(n+1)]`
-/

namespace A199349.P3199067492064469720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P3199067492064469720

/-! ## A199349.P1782358249934751522

`∩[A386109(n+1), A386175(n+1)]`
-/

namespace A199349.P1782358249934751522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P1782358249934751522

/-! ## A199349.P4881964296131551412

`∩[A386109(n+1), A386177(n+1)]`
-/

namespace A199349.P4881964296131551412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P4881964296131551412

/-! ## A199349.P1561852938423781295

`∩[A386143(n+1), A386172(n+1)]`
-/

namespace A199349.P1561852938423781295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P1561852938423781295

/-! ## A199349.P10402074535104295804

`∩[A386143(n+1), A386175(n+1)]`
-/

namespace A199349.P10402074535104295804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P10402074535104295804

/-! ## A199349.P13333929645736661002

`∩[A386143(n+1), A386177(n+1)]`
-/

namespace A199349.P13333929645736661002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199349.P13333929645736661002

/-!
# A199350: Number of nX1 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199350, there is no canonical definition to state claims against.
-/

/-! ## A199350.P16341389353620132294

`A199356(∑[n]+1)`
-/

namespace A199350.P16341389353620132294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199350.P16341389353620132294

/-! ## A199350.P6995590681451117843

`A199356(A000124(n))+char[12]`
-/

namespace A199350.P6995590681451117843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199350.P6995590681451117843

/-! ## A199350.P4406237214532411862

`A243834(n)+A199356(A000124(n))`
-/

namespace A199350.P4406237214532411862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A199356 (A000124 n).toNat

end

end A199350.P4406237214532411862

/-! ## A199350.P6048811555219937300

`A199356(A000124(n))%A199554(n)`
-/

namespace A199350.P6048811555219937300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199356 (A000124 n).toNat) (A199554 n)

end

end A199350.P6048811555219937300

/-! ## A199350.P15417677150932908122

`gcd(A055967(n), A199356(A000124(n)))`
-/

namespace A199350.P15417677150932908122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055967 n) (A199356 (A000124 n).toNat)

end

end A199350.P15417677150932908122

/-!
# A199351: Number of nX2 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199351, there is no canonical definition to state claims against.
-/

/-! ## A199351.P16508634263427675104

`A199356(∑[n+1]+2)`
-/

namespace A199351.P16508634263427675104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199351.P16508634263427675104

/-!
# A199352: Number of n X 3 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199352, there is no canonical definition to state claims against.
-/

/-! ## A199352.P15829506337426681920

`A199356(∑[n+2]+4)`
-/

namespace A199352.P15829506337426681920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199352.P15829506337426681920

/-! ## A199352.P14338189366218541881

`record[A010054(n)*A199356(n+3)]`
-/

namespace A199352.P14338189366218541881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A199356 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199352.P14338189366218541881

/-! ## A199352.P16300828570121434291

`record[A127253(n)*A199356(n+4)]`
-/

namespace A199352.P16300828570121434291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127253 n * A199356 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199352.P16300828570121434291

/-! ## A199352.P793869561457517694

`A199356(A167614(n+1))^ceil(acot(n))`
-/

namespace A199352.P793869561457517694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199356 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A199352.P793869561457517694

/-! ## A199352.P4698412126685704262

`A199356(A167614(n+1))+A025437(n)`
-/

namespace A199352.P4698412126685704262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (A167614 (n + 1)).toNat + A025437 n

end

end A199352.P4698412126685704262

/-!
# A199353: Number of nX4 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199353, there is no canonical definition to state claims against.
-/

/-! ## A199353.P7281119558032412865

`A199356(∑[n+3]+7)`
-/

namespace A199353.P7281119558032412865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A199353.P7281119558032412865

/-! ## A199353.P5120153199324875369

`record[gcd(A048723(n+4), A199356(n+1))]`
-/

namespace A199353.P5120153199324875369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048723 (n + 4)) (A199356 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199353.P5120153199324875369

/-!
# A199354: Number of nX5 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199354, there is no canonical definition to state claims against.
-/

/-! ## A199354.P14681735374103447658

`A199356(Δ[A264443(n)])`
-/

namespace A199354.P14681735374103447658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (f1 (n + 1) - f1 n).toNat

end

end A199354.P14681735374103447658

/-!
# A199355: Number of nX6 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199355, there is no canonical definition to state claims against.
-/

/-! ## A199355.P1615879676148636071

`A199356(A374007(n+1))`
-/

namespace A199355.P1615879676148636071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199356 (A374007 (n + 1)).toNat

end

end A199355.P1615879676148636071

/-!
# A199357: Smallest positive integer with n anagrams.

The programs for A199357, there is no canonical definition to state claims against.
-/

/-! ## A199357.P15637317608249057248

`∑{d}[A175552(n+1), A105026(#)]`
-/

namespace A199357.P15637317608249057248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A105026 d

end

end A199357.P15637317608249057248

/-!
# A199359: Number of nX2 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199359, there is no canonical definition to state claims against.
-/

/-! ## A199359.P8957098128663705732

`A199363(∑[n+1]+2)`
-/

namespace A199359.P8957098128663705732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199359.P8957098128663705732

/-! ## A199359.P1868356825368895016

`or(A199363(A133263(n+1)), A370530(n))`
-/

namespace A199359.P1868356825368895016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A199363 (A133263 (n + 1)).toNat) (A370530 n)

end

end A199359.P1868356825368895016

/-! ## A199359.P7361138699585964970

`A199363(A133263(n+1))+A199363(n+1)`
-/

namespace A199359.P7361138699585964970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A133263 (n + 1)).toNat + A199363 (n + 1)

end

end A199359.P7361138699585964970

/-!
# A199360: Number of n X 3 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199360, there is no canonical definition to state claims against.
-/

/-! ## A199360.P8172813626179208096

`A199363(∑[n+2]+4)`
-/

namespace A199360.P8172813626179208096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199360.P8172813626179208096

/-! ## A199360.P16654629584536487519

`A199363(A167614(n+1))+A011737(n)`
-/

namespace A199360.P16654629584536487519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A167614 (n + 1)).toNat + A011737 n

end

end A199360.P16654629584536487519

/-! ## A199360.P3653047059479623665

`A199363(A167614(n+1))+A011743(n)`
-/

namespace A199360.P3653047059479623665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A167614 (n + 1)).toNat + A011743 n

end

end A199360.P3653047059479623665

/-! ## A199360.P17179509296060750984

`A199363(A167614(n+1))+A025443(n)`
-/

namespace A199360.P17179509296060750984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A167614 (n + 1)).toNat + A025443 n

end

end A199360.P17179509296060750984

/-! ## A199360.P18009727252197172820

`A199363(A167614(n+1))+A025469(n)`
-/

namespace A199360.P18009727252197172820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A167614 (n + 1)).toNat + A025469 n

end

end A199360.P18009727252197172820

/-!
# A199361: Number of nX4 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199361, there is no canonical definition to state claims against.
-/

/-! ## A199361.P12350587661173293824

`A199363(A374004(n+1))`
-/

namespace A199361.P12350587661173293824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A374004 (n + 1)).toNat

end

end A199361.P12350587661173293824

/-! ## A199361.P8535056033129223209

`A199363(A141214(n)+7)`
-/

namespace A199361.P8535056033129223209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A141214 n + 7).toNat

end

end A199361.P8535056033129223209

/-! ## A199361.P11675349229430740527

`A199363(A052905(n)+9)`
-/

namespace A199361.P11675349229430740527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A052905 n + 9).toNat

end

end A199361.P11675349229430740527

/-! ## A199361.P16653785062966542078

`A199363(A055999(n)+10)`
-/

namespace A199361.P16653785062966542078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (A055999 n + 10).toNat

end

end A199361.P16653785062966542078

/-!
# A199362: Number of n X 5 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199362, there is no canonical definition to state claims against.
-/

/-! ## A199362.P1811624021668371492

`A199363(Δ[A264443(n)])`
-/

namespace A199362.P1811624021668371492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199363 (f1 (n + 1) - f1 n).toNat

end

end A199362.P1811624021668371492

/-!
# A199363: T(n,k)=Number of nXk 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to one or two horizontal or vertical neighbors.

The programs for A199363, there is no canonical definition to state claims against.
-/

/-! ## A199363.P1068795877799815280

`log2((2-char[∑[n]])^A199588(n+1))`
-/

namespace A199363.P1068795877799815280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A199588 (n + 1) : ℤ) : ℝ)

end

end A199363.P1068795877799815280

/-! ## A199363.P3024272826566998411

`A072088(A199588(n+1))`
-/

namespace A199363.P3024272826566998411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A199588 (n + 1)).toNat

end

end A199363.P3024272826566998411

/-! ## A199363.P11662260196898283466

`A199588(∑[∑[A151620(n)]])`
-/

namespace A199363.P11662260196898283466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199363.P11662260196898283466

/-! ## A199363.P6343304266140538973

`A000194(A199588(n+1)²)`
-/

namespace A199363.P6343304266140538973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A199588 (n + 1) ^ 2).toNat

end

end A199363.P6343304266140538973

/-! ## A199363.P7744417924431680523

`A000196(A199588(n+1)²)`
-/

namespace A199363.P7744417924431680523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A199588 (n + 1) ^ 2).toNat

end

end A199363.P7744417924431680523

/-!
# A199364: Numbers k such that 4k^3 + 3 is prime.

The programs for A199364, there is no canonical definition to state claims against.
-/

/-! ## A199364.P16134145144691724110

`eq[1, ∑{e}[n*(2*n)²+3, #]]`
-/

namespace A199364.P16134145144691724110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) ^ 2 + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199364.P16134145144691724110

/-! ## A199364.P16427115623924519662

`lt[∑{e}[2*A033562(n)+1, #], 2]`
-/

namespace A199364.P16427115623924519662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033562 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A199364.P16427115623924519662

/-! ## A199364.P10180294090566627227

`A260466(A056525(n+1)+A037471(n))`
-/

namespace A199364.P10180294090566627227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260466 (A056525 (n + 1) + A037471 n).toNat

end

end A199364.P10180294090566627227

/-! ## A199364.P12575005533652824038

`eq[A046146(A341495(n+2)), A088434(n+3)]`
-/

namespace A199364.P12575005533652824038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A341495 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199364.P12575005533652824038

/-!
# A199365: Primes of the form 4n^3 + 3.

The programs for A199365, there is no canonical definition to state claims against.
-/

/-! ## A199365.P6341934555495976373

`4*A199364(n+1)^3+3`
-/

namespace A199365.P6341934555495976373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199364 (n + 1) ^ 3 + 3

end

end A199365.P6341934555495976373

/-! ## A199365.P10573796874501095893

`A100214(A199364(n+1))-1`
-/

namespace A199365.P10573796874501095893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 (A199364 (n + 1)).toNat - 1

end

end A199365.P10573796874501095893

/-! ## A199365.P10318614147811859856

`A182034(gcd(n, n+1))+A100214(A199364(n+1))`
-/

namespace A199365.P10318614147811859856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182034 (Nat.gcd n (n + 1)) + A100214 (A199364 (n + 1)).toNat

end

end A199365.P10318614147811859856

/-! ## A199365.P2805491186790916314

`A309873(A016825(n))+A100214(A199364(n+1))`
-/

namespace A199365.P2805491186790916314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A100214 (A199364 (n + 1)).toNat

end

end A199365.P2805491186790916314

/-! ## A199365.P15900796186060671068

`A305974(A000040(n+1))+A100214(A199364(n+1))`
-/

namespace A199365.P15900796186060671068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A000040 (n + 1)).toNat + A100214 (A199364 (n + 1)).toNat

end

end A199365.P15900796186060671068

/-! ## A199365.P140687013891821101

`A143259(2*A205386(n+1)²)+A100214(A199364(n+1))`
-/

namespace A199365.P140687013891821101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (2 * A205386 (n + 1) ^ 2).toNat + A100214 (A199364 (n + 1)).toNat

end

end A199365.P140687013891821101

/-!
# A199366: Numbers k such that 4*k^3-1 is prime.

The programs for A199366, there is no canonical definition to state claims against.
-/

/-! ## A199366.P11213909315448447219

`eq[2, ∑{d}[n*(2*n)²-1, gcd(41, #)]]`
-/

namespace A199366.P11213909315448447219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) ^ 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, Nat.gcd 41 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199366.P11213909315448447219

/-! ## A199366.P5177432290297832344

`eq[1, ∑{e}[(3-A004767(n))*n²+1, #]]`
-/

namespace A199366.P5177432290297832344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A004767 n) * (n ^ 2 : ℤ) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199366.P5177432290297832344

/-! ## A199366.P2013411236335370261

`eq[2, ∑{e}[2-(2*n)^3, #]]`
-/

namespace A199366.P2013411236335370261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((2 * n) ^ 3 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199366.P2013411236335370261

/-! ## A199366.P13414954037661927320

`lt[A005314(A045917(2*(n+2))), A187760(n+5)]`
-/

namespace A199366.P13414954037661927320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (A045917 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187760 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A199366.P13414954037661927320

/-!
# A199367: Primes of the form 4*k^3 - 1.

The programs for A199367, there is no canonical definition to state claims against.
-/

/-! ## A199367.P2870790338540199137

`A033430(A199366(n+1))-1`
-/

namespace A199367.P2870790338540199137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 (A199366 (n + 1)).toNat - 1

end

end A199367.P2870790338540199137

/-! ## A199367.P16054174597122899654

`A057428(n+1)+A033430(A199366(n+1))`
-/

namespace A199367.P16054174597122899654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033430 (A199366 (n + 1)).toNat

end

end A199367.P16054174597122899654

/-! ## A199367.P11784261871819102065

`A033999(A092899(n))+A033430(A199366(n+1))`
-/

namespace A199367.P11784261871819102065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A092899 n).toNat + A033430 (A199366 (n + 1)).toNat

end

end A199367.P11784261871819102065

/-! ## A199367.P17815070200682858771

`A033999(A092911(n+1))+A033430(A199366(n+1))`
-/

namespace A199367.P17815070200682858771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A092911 (n + 1)).toNat + A033430 (A199366 (n + 1)).toNat

end

end A199367.P17815070200682858771

/-! ## A199367.P2471040797525784518

`A033999(A339901(n))+A033430(A199366(n+1))`
-/

namespace A199367.P2471040797525784518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A339901 n).toNat + A033430 (A199366 (n + 1)).toNat

end

end A199367.P2471040797525784518

/-! ## A199367.P15602916950739789575

`A033999(A003961(n+1))+A033430(A199366(n+1))`
-/

namespace A199367.P15602916950739789575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003961 (n + 1)).toNat + A033430 (A199366 (n + 1)).toNat

end

end A199367.P15602916950739789575

/-! ## A199367.P735510989367714854

`A033999(A208523(n+1))+A033430(A199366(n+1))`
-/

namespace A199367.P735510989367714854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A208523 (n + 1)).toNat + A033430 (A199366 (n + 1)).toNat

end

end A199367.P735510989367714854

/-!
# A199369: Primes of the form 4*n^3 - 3.

The programs for A199369, there is no canonical definition to state claims against.
-/

/-! ## A199369.P16425778291135248964

`A100214(A199368(n+1))-7`
-/

namespace A199369.P16425778291135248964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 (A199368 (n + 1)).toNat - 7

end

end A199369.P16425778291135248964

/-! ## A199369.P12837230607149376140

`p?[4*n^3-3]`
-/

namespace A199369.P12837230607149376140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199369.P12837230607149376140

/-! ## A199369.P659083872342478521

`or(p?[n*(2*n)²-3], char[1])`
-/

namespace A199369.P659083872342478521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) ^ 2 : ℤ) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199369.P659083872342478521

/-!
# A199394: The number of ways to color the vertices of all (11) simple unlabeled graphs on 4 nodes using at most n colors.

The programs for A199394, the canonical program `A199394.P14788772727300885256` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199394 has offset 1).

The definition of A199394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199394.P14788772727300885256

`8*(n+1)^4/3+4*(n+1)^3+10*(n+1)²/3+n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199394

/-- `8*(n+1)^4/3+4*(n+1)^3+10*(n+1)²/3+n+1` -/
def P14788772727300885256.Spec : Prop :=
  ∀ n, P14788772727300885256.a n = (A199394 (n + 1) : ℚ)

end A199394

/-! ## A199394.P18380526908909199478

`(n+1)*A057813(n+1)`
-/

namespace A199394.P18380526908909199478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A057813 (n + 1)

end

end A199394.P18380526908909199478

namespace A199394

/-- `(n+1)*A057813(n+1)` -/
def P18380526908909199478.Spec : Prop :=
  ∀ n, P18380526908909199478.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P2686555581758490927

`∑[Δ[2*n*A050533(n)]+1]`
-/

namespace A199394.P2686555581758490927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A050533 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199394.P2686555581758490927

namespace A199394

/-- `∑[Δ[2*n*A050533(n)]+1]` -/
def P2686555581758490927.Spec : Prop :=
  ∀ n, P2686555581758490927.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P8255489832518784873

`Δ[Δ[A000330(n)²]-A085461(n+1)]`
-/

namespace A199394.P8255489832518784873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A085461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199394.P8255489832518784873

namespace A199394

/-- `Δ[Δ[A000330(n)²]-A085461(n+1)]` -/
def P8255489832518784873.Spec : Prop :=
  ∀ n, P8255489832518784873.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P5769972346058553297

`(n+1)*Δ[A071270(n+1)]`
-/

namespace A199394.P5769972346058553297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A199394.P5769972346058553297

namespace A199394

/-- `(n+1)*Δ[A071270(n+1)]` -/
def P5769972346058553297.Spec : Prop :=
  ∀ n, P5769972346058553297.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P16673650465120598040

`∑[A100178(2*(n+1))+4*n+3]`
-/

namespace A199394.P16673650465120598040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (2 * (n + 1)) + (4 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199394.P16673650465120598040

namespace A199394

/-- `∑[A100178(2*(n+1))+4*n+3]` -/
def P16673650465120598040.Spec : Prop :=
  ∀ n, P16673650465120598040.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P10764985335305249902

`A071244(2*n+3)`
-/

namespace A199394.P10764985335305249902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071244 (2 * n + 3)

end

end A199394.P10764985335305249902

namespace A199394

/-- `A071244(2*n+3)` -/
def P10764985335305249902.Spec : Prop :=
  ∀ n, P10764985335305249902.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P12730124179226417280

`(n+1)*A167875(2*(n+1))`
-/

namespace A199394.P12730124179226417280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167875 (2 * (n + 1))

end

end A199394.P12730124179226417280

namespace A199394

/-- `(n+1)*A167875(2*(n+1))` -/
def P12730124179226417280.Spec : Prop :=
  ∀ n, P12730124179226417280.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P12358587655231748542

`(n+1)*A006527(2*n+3)`
-/

namespace A199394.P12358587655231748542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006527 (2 * n + 3)

end

end A199394.P12358587655231748542

namespace A199394

/-- `(n+1)*A006527(2*n+3)` -/
def P12358587655231748542.Spec : Prop :=
  ∀ n, P12358587655231748542.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P17460314700230368071

`(n+1)*A167238(2*n+3)`
-/

namespace A199394.P17460314700230368071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167238 (2 * n + 3)

end

end A199394.P17460314700230368071

namespace A199394

/-- `(n+1)*A167238(2*n+3)` -/
def P17460314700230368071.Spec : Prop :=
  ∀ n, P17460314700230368071.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P9276033793451318771

`(n+1)*A178946(2*n+3)`
-/

namespace A199394.P9276033793451318771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178946 (2 * n + 3)

end

end A199394.P9276033793451318771

namespace A199394

/-- `(n+1)*A178946(2*n+3)` -/
def P9276033793451318771.Spec : Prop :=
  ∀ n, P9276033793451318771.a n = A199394 (n + 1)

end A199394

/-! ## A199394.P13415773293349544344

`(n+1)*A355759(4*(n+1))`
-/

namespace A199394.P13415773293349544344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A355759 (4 * (n + 1))

end

end A199394.P13415773293349544344

namespace A199394

/-- `(n+1)*A355759(4*(n+1))` -/
def P13415773293349544344.Spec : Prop :=
  ∀ n, P13415773293349544344.a n = A199394 (n + 1)

end A199394

/-!
# A199396: Binary XOR of (3^k - 1)/2 as k varies from 1 to n.

The programs for A199396, the canonical program `A199396.P12302397801513960725` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199396 has offset 1).

The definition of A199396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199396.P12302397801513960725

`xor(a(n-1), (3^(n+1)-1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199396

/-- `xor(a(n-1), (3^(n+1)-1)/2)` -/
def P12302397801513960725.Spec : Prop :=
  ∀ n, P12302397801513960725.a n = A199396 (n + 1)

theorem P12302397801513960725.correct : P12302397801513960725.Spec := by
  intro n
  simp only [A199396, Nat.add_sub_cancel]

end A199396

/-! ## A199396.P5176341391363606316

`xor(2, xor(a(n-1), A067771(n)))` with `a(0)=1`
-/

namespace A199396.P5176341391363606316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 2 (Int.xor (a (n - 1)) (A067771 n))

end

end A199396.P5176341391363606316

namespace A199396

/-- `xor(2, xor(a(n-1), A067771(n)))` -/
def P5176341391363606316.Spec : Prop :=
  ∀ n, P5176341391363606316.a n = A199396 (n + 1)

end A199396

/-! ## A199396.P3348471744199429887

`xor(floor(a(n-1)), A003462(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A199396.P3348471744199429887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A003462 (n + 1))

end

end A199396.P3348471744199429887

namespace A199396

/-- `xor(floor(a(n-1)), A003462(n+1))` -/
def P3348471744199429887.Spec : Prop :=
  ∀ n, P3348471744199429887.a n = A199396 (n + 1)

end A199396

/-! ## A199396.P14831815391438933311

`xor(floor(a(n-1)), A052993(2*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A199396.P14831815391438933311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A052993 (2 * n))

end

end A199396.P14831815391438933311

namespace A199396

/-- `xor(floor(a(n-1)), A052993(2*n))` -/
def P14831815391438933311.Spec : Prop :=
  ∀ n, P14831815391438933311.a n = A199396 (n + 1)

end A199396

/-! ## A199396.P6132427410576490539

`xor(A007051(n+1)-1, a(n-1))` with `a(0)=1`
-/

namespace A199396.P6132427410576490539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (A007051 (n + 1) - 1) (a (n - 1))

end

end A199396.P6132427410576490539

namespace A199396

/-- `xor(A007051(n+1)-1, a(n-1))` -/
def P6132427410576490539.Spec : Prop :=
  ∀ n, P6132427410576490539.a n = A199396 (n + 1)

end A199396

/-! ## A199396.P1526700923806148237

`floor(A199397(n+1)/2)`
-/

namespace A199396.P1526700923806148237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199397 (n + 1) : ℚ) / 2⌋

end

end A199396.P1526700923806148237

namespace A199396

/-- `floor(A199397(n+1)/2)` -/
def P1526700923806148237.Spec : Prop :=
  ∀ n, P1526700923806148237.a n = A199396 (n + 1)

end A199396

/-! ## A199396.P5564244549283412097

`ceil(A199397(n+1)/2-A000035(n))`
-/

namespace A199396.P5564244549283412097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199397 (n + 1) : ℚ) / 2 - (A000035 n : ℚ)⌉

end

end A199396.P5564244549283412097

namespace A199396

/-- `ceil(A199397(n+1)/2-A000035(n))` -/
def P5564244549283412097.Spec : Prop :=
  ∀ n, P5564244549283412097.a n = A199396 (n + 1)

end A199396

/-!
# A199397: Binary XOR of 3^k as k varies from 0 to n.

The programs for A199397, the canonical program `A199397.P14129287333046990559` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199397 has offset 0).

The definition of A199397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199397.P14129287333046990559

`xor(a(n-1), 3^n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199397

/-- `xor(a(n-1), 3^n)` -/
def P14129287333046990559.Spec : Prop :=
  ∀ n, (P14129287333046990559.a n : ℤ) = A199397 n

theorem P14129287333046990559.correct : P14129287333046990559.Spec := by
  intro n
  simp only [A199397]

end A199397

/-! ## A199397.P11582151689709852440

`A178910(3^n)`
-/

namespace A199397.P11582151689709852440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178910 (3 ^ n)

end

end A199397.P11582151689709852440

namespace A199397

/-- `A178910(3^n)` -/
def P11582151689709852440.Spec : Prop :=
  ∀ n, P11582151689709852440.a n = A199397 n

end A199397

/-! ## A199397.P8092665831013444738

`A318504(3^(n+2))`
-/

namespace A199397.P8092665831013444738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318504 (3 ^ (n + 2))

end

end A199397.P8092665831013444738

namespace A199397

/-- `A318504(3^(n+2))` -/
def P8092665831013444738.Spec : Prop :=
  ∀ n, P8092665831013444738.a n = A199397 n

end A199397

/-! ## A199397.P3638391899764491970

`A227320(3^(n+1))`
-/

namespace A199397.P3638391899764491970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227320 (3 ^ (n + 1))

end

end A199397.P3638391899764491970

namespace A199397

/-- `A227320(3^(n+1))` -/
def P3638391899764491970.Spec : Prop :=
  ∀ n, P3638391899764491970.a n = A199397 n

end A199397

/-!
# A199398: XOR of the first n odd numbers.

The programs for A199398, the canonical program `A199398.P10483366993665387792` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199398 has offset 1).

The definition of A199398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199398.P10483366993665387792

`xor(a(n-1), 2*(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199398

/-- `xor(a(n-1), 2*(n+1)-1)` -/
def P10483366993665387792.Spec : Prop :=
  ∀ n, P10483366993665387792.a n = A199398 (n + 1)

theorem P10483366993665387792.correct : P10483366993665387792.Spec := by
  intro n
  simp only [A199398, Nat.add_sub_cancel]

end A199398

/-! ## A199398.P16402492492303277008

`xor(2*n+1, a(n-1))` with `a(0)=1`
-/

namespace A199398.P16402492492303277008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * n + 1) (a (n - 1))

end

end A199398.P16402492492303277008

namespace A199398

/-- `xor(2*n+1, a(n-1))` -/
def P16402492492303277008.Spec : Prop :=
  ∀ n, (P16402492492303277008.a n : ℤ) = A199398 (n + 1)

end A199398

/-! ## A199398.P11723568136563877103

`xor(1, xor(2*n, a(n-1)))` with `a(0)=1`
-/

namespace A199398.P11723568136563877103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (Nat.xor (2 * n) (a (n - 1)))

end

end A199398.P11723568136563877103

namespace A199398

/-- `xor(1, xor(2*n, a(n-1)))` -/
def P11723568136563877103.Spec : Prop :=
  ∀ n, (P11723568136563877103.a n : ℤ) = A199398 (n + 1)

end A199398

/-! ## A199398.P10247771041097171293

`n+2-Δ[gcd(n+3, 4*and(1, n))]`
-/

namespace A199398.P10247771041097171293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (4 * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199398.P10247771041097171293

namespace A199398

/-- `n+2-Δ[gcd(n+3, 4*and(1, n))]` -/
def P10247771041097171293.Spec : Prop :=
  ∀ n, P10247771041097171293.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P3966872248810636625

`n+1+(-1)^n*a(n-1)+n` with `a(0)=1`
-/

namespace A199398.P3966872248810636625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) + ((-1) ^ n * a (n - 1) + (n : ℤ))

end

end A199398.P3966872248810636625

namespace A199398

/-- `n+1+(-1)^n*a(n-1)+n` -/
def P3966872248810636625.Spec : Prop :=
  ∀ n, P3966872248810636625.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P6990408233856498515

`n+1+a(n-1)/(-1)^n+n` with `a(0)=1`
-/

namespace A199398.P6990408233856498515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) + (a (n - 1) / ((-1) ^ n : ℚ) + (n : ℚ))

end

end A199398.P6990408233856498515

namespace A199398

/-- `n+1+a(n-1)/(-1)^n+n` -/
def P6990408233856498515.Spec : Prop :=
  ∀ n, P6990408233856498515.a n = (A199398 (n + 1) : ℚ)

end A199398

/-! ## A199398.P15765532834750397464

`and(2, n+1)+(2*n+1)*and(1, n+1)`
-/

namespace A199398.P15765532834750397464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1) + (2 * n + 1) * Nat.land 1 (n + 1)

end

end A199398.P15765532834750397464

namespace A199398

/-- `and(2, n+1)+(2*n+1)*and(1, n+1)` -/
def P15765532834750397464.Spec : Prop :=
  ∀ n, (P15765532834750397464.a n : ℤ) = A199398 (n + 1)

end A199398

/-! ## A199398.P14752985412916439119

`n+2-Δ[and(n+1, n+3-a(n-1))]` with `a(0)=1`
-/

namespace A199398.P14752985412916439119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (n + 1 : ℤ) ((n + 3 : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A199398.P14752985412916439119

namespace A199398

/-- `n+2-Δ[and(n+1, n+3-a(n-1))]` -/
def P14752985412916439119.Spec : Prop :=
  ∀ n, P14752985412916439119.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P10686182404906045274

`n+3-2*A186422(n)`
-/

namespace A199398.P10686182404906045274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A186422 n

end

end A199398.P10686182404906045274

namespace A199398

/-- `n+3-2*A186422(n)` -/
def P10686182404906045274.Spec : Prop :=
  ∀ n, P10686182404906045274.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P17448646525618272838

`a(n-1)*A008683(gcd(n+1, n-1))+2*n+1` with `a(0)=1`
-/

namespace A199398.P17448646525618272838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008683 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) + (2 * n + 1 : ℤ)

end

end A199398.P17448646525618272838

namespace A199398

/-- `a(n-1)*A008683(gcd(n+1, n-1))+2*n+1` -/
def P17448646525618272838.Spec : Prop :=
  ∀ n, P17448646525618272838.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P2986418448131008981

`A059841(n)+2*A003815(n)`
-/

namespace A199398.P2986418448131008981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + 2 * A003815 n

end

end A199398.P2986418448131008981

namespace A199398

/-- `A059841(n)+2*A003815(n)` -/
def P2986418448131008981.Spec : Prop :=
  ∀ n, P2986418448131008981.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P321678177058216304

`A178414(n+1)-A047527(n+1)`
-/

namespace A199398.P321678177058216304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1) - A047527 (n + 1)

end

end A199398.P321678177058216304

namespace A199398

/-- `A178414(n+1)-A047527(n+1)` -/
def P321678177058216304.Spec : Prop :=
  ∀ n, P321678177058216304.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P17192969837017564086

`∑[A005408(n)*A087960(n)]*A087960(n)`
-/

namespace A199398.P17192969837017564086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A087960 n

end

end A199398.P17192969837017564086

namespace A199398

/-- `∑[A005408(n)*A087960(n)]*A087960(n)` -/
def P17192969837017564086.Spec : Prop :=
  ∀ n, P17192969837017564086.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P15446252875571808947

`A267354(n+2)-A057077(n+1)`
-/

namespace A199398.P15446252875571808947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (n + 2) - A057077 (n + 1)

end

end A199398.P15446252875571808947

namespace A199398

/-- `A267354(n+2)-A057077(n+1)` -/
def P15446252875571808947.Spec : Prop :=
  ∀ n, P15446252875571808947.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P17541502113368887036

`n+2-Δ[A230089(n+3)]`
-/

namespace A199398.P17541502113368887036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230089 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A199398.P17541502113368887036

namespace A199398

/-- `n+2-Δ[A230089(n+3)]` -/
def P17541502113368887036.Spec : Prop :=
  ∀ n, P17541502113368887036.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P14203959707927854270

`A255051(2*(n+1))-(A057077(n+1)+1)`
-/

namespace A199398.P14203959707927854270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (2 * (n + 1)) - (A057077 (n + 1) + 1)

end

end A199398.P14203959707927854270

namespace A199398

/-- `A255051(2*(n+1))-(A057077(n+1)+1)` -/
def P14203959707927854270.Spec : Prop :=
  ∀ n, P14203959707927854270.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P2833634145435280916

`A010873(n+1)+A003815(A014601(n))`
-/

namespace A199398.P2833634145435280916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (n + 1) + A003815 (A014601 n).toNat

end

end A199398.P2833634145435280916

namespace A199398

/-- `A010873(n+1)+A003815(A014601(n))` -/
def P2833634145435280916.Spec : Prop :=
  ∀ n, P2833634145435280916.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P1114936002723349893

`A330602(A042963(n+1))-A057077(n+1)`
-/

namespace A199398.P1114936002723349893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330602 (A042963 (n + 1)).toNat - A057077 (n + 1)

end

end A199398.P1114936002723349893

namespace A199398

/-- `A330602(A042963(n+1))-A057077(n+1)` -/
def P1114936002723349893.Spec : Prop :=
  ∀ n, P1114936002723349893.a n = A199398 (n + 1)

end A199398

/-! ## A199398.P16325575709567042464

`A010873(n+1)+A003815(A003815(2*n))`
-/

namespace A199398.P16325575709567042464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (n + 1) + A003815 (A003815 (2 * n)).toNat

end

end A199398.P16325575709567042464

namespace A199398

/-- `A010873(n+1)+A003815(A003815(2*n))` -/
def P16325575709567042464.Spec : Prop :=
  ∀ n, P16325575709567042464.a n = A199398 (n + 1)

end A199398

/-!
# A199399: Binary XOR of 5^k as k varies from 0 to n.

The programs for A199399, the canonical program `A199399.P7585127121041344860` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199399 has offset 0).

The definition of A199399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199399.P7585127121041344860

`xor(a(n-1), 5^n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199399

/-- `xor(a(n-1), 5^n)` -/
def P7585127121041344860.Spec : Prop :=
  ∀ n, (P7585127121041344860.a n : ℤ) = A199399 n

theorem P7585127121041344860.correct : P7585127121041344860.Spec := by
  intro n
  simp only [A199399]

end A199399

/-! ## A199399.P358118901118172423

`A178910(5^n)`
-/

namespace A199399.P358118901118172423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178910 (5 ^ n)

end

end A199399.P358118901118172423

namespace A199399

/-- `A178910(5^n)` -/
def P358118901118172423.Spec : Prop :=
  ∀ n, P358118901118172423.a n = A199399 n

end A199399

