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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A321001: Primes which contain the fax number of the beast (667).

The programs for A321001, there is no canonical definition to state claims against.
-/

/-! ## A321001.P4075254105131769259

`p?[A138563(n+1)]`
-/

namespace A321001.P4075254105131769259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321001.P4075254105131769259

/-! ## A321001.P12258548403511608147

`record[p?[A138563(A052938(n))]]`
-/

namespace A321001.P12258548403511608147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138563 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321001.P12258548403511608147

/-! ## A321001.P2544263219867053264

`p?[record[A138563(A134478(n))]]`
-/

namespace A321001.P2544263219867053264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138563 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321001.P2544263219867053264

/-! ## A321001.P11179562296511066466

`p?[record[A138563(A291769(n))]]`
-/

namespace A321001.P11179562296511066466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138563 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321001.P11179562296511066466

/-! ## A321001.P17930781041214553515

`record[A020639(A138563(n+2))]`
-/

namespace A321001.P17930781041214553515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138563 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321001.P17930781041214553515

/-!
# A321002: a(0)=3; thereafter a(n) = 20*6^(n-1)-2^(n-1).

The programs for A321002, the canonical program `A321002.P15779964950222706867` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321002 has offset 0).

The definition of A321002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321002.P15779964950222706867

`8*a(n-1)-12*a(n-2)` with `a(0)=3, a(1)=19, a(2)=118`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A321002

/-- `8*a(n-1)-12*a(n-2)` -/
def P15779964950222706867.Spec : Prop :=
  ∀ n, P15779964950222706867.a n = A321002 n

theorem P15779964950222706867.correct : P15779964950222706867.Spec := by
  intro n
  simp only [A321002]

end A321002

/-! ## A321002.P5459130624135812867

`ogf((3-5x+2x^2)/(1-8x+12x^2))`
-/

namespace A321002.P5459130624135812867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5, 2] [1, -8, 12] n

end

end A321002.P5459130624135812867

namespace A321002

/-- `ogf((3-5x+2x^2)/(1-8x+12x^2))` -/
def P5459130624135812867.Spec : Prop :=
  ∀ n, P5459130624135812867.a n = A321002 n

end A321002

/-! ## A321002.P7741135470247172415

`Δ[A067411(n)]-floor(2^(n-1))`
-/

namespace A321002.P7741135470247172415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A321002.P7741135470247172415

namespace A321002

/-- `Δ[A067411(n)]-floor(2^(n-1))` -/
def P7741135470247172415.Spec : Prop :=
  ∀ n, P7741135470247172415.a n = A321002 n

end A321002

/-! ## A321002.P16753233398341995399

`Δ[A067411(n)-A011782(n)]`
-/

namespace A321002.P16753233398341995399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067411 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321002.P16753233398341995399

namespace A321002

/-- `Δ[A067411(n)-A011782(n)]` -/
def P16753233398341995399.Spec : Prop :=
  ∀ n, P16753233398341995399.a n = A321002 n

end A321002

/-! ## A321002.P11872869875896658932

`4*A052934(n)-A011782(n)`
-/

namespace A321002.P11872869875896658932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052934 n - A011782 n

end

end A321002.P11872869875896658932

namespace A321002

/-- `4*A052934(n)-A011782(n)` -/
def P11872869875896658932.Spec : Prop :=
  ∀ n, P11872869875896658932.a n = A321002 n

end A321002

/-! ## A321002.P9934312138733607474

`Δ[(A052156(n+1)-1)*A011782(n)]`
-/

namespace A321002.P9934312138733607474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052156 (n + 1) - 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321002.P9934312138733607474

namespace A321002

/-- `Δ[(A052156(n+1)-1)*A011782(n)]` -/
def P9934312138733607474.Spec : Prop :=
  ∀ n, P9934312138733607474.a n = A321002 n

end A321002

/-! ## A321002.P12833043227784830476

`Δ[(A068911(2*n)-1)*A011782(n)]`
-/

namespace A321002.P12833043227784830476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068911 (2 * n) - 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321002.P12833043227784830476

namespace A321002

/-- `Δ[(A068911(2*n)-1)*A011782(n)]` -/
def P12833043227784830476.Spec : Prop :=
  ∀ n, P12833043227784830476.a n = A321002 n

end A321002

/-! ## A321002.P7146292430704329103

`Δ[(A074324(2*n)-1)*A011782(n)]`
-/

namespace A321002.P7146292430704329103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074324 (2 * n) - 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321002.P7146292430704329103

namespace A321002

/-- `Δ[(A074324(2*n)-1)*A011782(n)]` -/
def P7146292430704329103.Spec : Prop :=
  ∀ n, P7146292430704329103.a n = A321002 n

end A321002

/-!
# A321003: a(n) = 2^n*(4*3^n-1).

The programs for A321003, the canonical program `A321003.P3620131858223082450` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321003 has offset 0).

The definition of A321003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(4*3^n-1)` (program `A321003.P3620131858223082450`, by `A321003.P3620131858223082450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321003.P3620131858223082450

`2^n*(4*3^n-1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A321003

/-- `2^n*(4*3^n-1)` -/
def P3620131858223082450.Spec : Prop :=
  ∀ n, P3620131858223082450.a n = A321003 n

theorem P3620131858223082450.correct : P3620131858223082450.Spec := by
  intro n
  simp only [A321003]

end A321003

/-! ## A321003.P8623273914762057236

`8*a(n-1)-12*a(n-2)` with `a(0)=3, a(1)=22`
-/

namespace A321003.P8623273914762057236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 22] fun n a =>
  8 * a (n - 1) - 12 * a (n - 2)

end

end A321003.P8623273914762057236

namespace A321003

/-- `8*a(n-1)-12*a(n-2)` -/
def P8623273914762057236.Spec : Prop :=
  ∀ n, P8623273914762057236.a n = A321003 n

theorem P8623273914762057236.correct : P8623273914762057236.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A321003, Nat.add_sub_cancel, A321003.P8623273914762057236.a, A321003.P3620131858223082450.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A321003, Nat.add_sub_cancel, A321003.P8623273914762057236.a, A321003.P3620131858223082450.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A321003

/-! ## A321003.P908620208368736144

`ogf((3-2x)/(1-8x+12x^2))`
-/

namespace A321003.P908620208368736144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -8, 12] n

end

end A321003.P908620208368736144

namespace A321003

/-- `ogf((3-2x)/(1-8x+12x^2))` -/
def P908620208368736144.Spec : Prop :=
  ∀ n, P908620208368736144.a n = A321003 n

end A321003

/-! ## A321003.P7612711896193757518

`∑[A321002(n)]`
-/

namespace A321003.P7612711896193757518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321003.P7612711896193757518

namespace A321003

/-- `∑[A321002(n)]` -/
def P7612711896193757518.Spec : Prop :=
  ∀ n, P7612711896193757518.a n = A321003 n

end A321003

/-! ## A321003.P6354301233379922911

`Δ[A083066(n)-2^n]`
-/

namespace A321003.P6354301233379922911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083066 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321003.P6354301233379922911

namespace A321003

/-- `Δ[A083066(n)-2^n]` -/
def P6354301233379922911.Spec : Prop :=
  ∀ n, P6354301233379922911.a n = A321003 n

end A321003

/-! ## A321003.P2920359192169321863

`or(6*a(n-1), A007283(n))` with `a(0)=3`
-/

namespace A321003.P2920359192169321863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (6 * a (n - 1)) (A007283 n)

end

end A321003.P2920359192169321863

namespace A321003

/-- `or(6*a(n-1), A007283(n))` -/
def P2920359192169321863.Spec : Prop :=
  ∀ n, P2920359192169321863.a n = A321003 n

end A321003

/-! ## A321003.P12720468867515227196

`lcm(A000079(n), A171498(n))`
-/

namespace A321003.P12720468867515227196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A171498 n)

end

end A321003.P12720468867515227196

namespace A321003

/-- `lcm(A000079(n), A171498(n))` -/
def P12720468867515227196.Spec : Prop :=
  ∀ n, (P12720468867515227196.a n : ℤ) = A321003 n

end A321003

/-! ## A321003.P3095854980550929384

`and(-A000079(n), A198797(n))`
-/

namespace A321003.P3095854980550929384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000079 n) (A198797 n)

end

end A321003.P3095854980550929384

namespace A321003

/-- `and(-A000079(n), A198797(n))` -/
def P3095854980550929384.Spec : Prop :=
  ∀ n, P3095854980550929384.a n = A321003 n

end A321003

/-! ## A321003.P7852881442035866760

`A248216(n+1)-A081656(n)`
-/

namespace A321003.P7852881442035866760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 (n + 1) - A081656 n

end

end A321003.P7852881442035866760

namespace A321003

/-- `A248216(n+1)-A081656(n)` -/
def P7852881442035866760.Spec : Prop :=
  ∀ n, P7852881442035866760.a n = A321003 n

end A321003

/-! ## A321003.P11729098086653718425

`abs(∑[A080923(n+1)]*A123344(n+1))`
-/

namespace A321003.P11729098086653718425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A123344 (n + 1)|

end

end A321003.P11729098086653718425

namespace A321003

/-- `abs(∑[A080923(n+1)]*A123344(n+1))` -/
def P11729098086653718425.Spec : Prop :=
  ∀ n, P11729098086653718425.a n = A321003 n

end A321003

/-! ## A321003.P2029052106857325509

`A081656(n)+A081656(n)+A000079(n)`
-/

namespace A321003.P2029052106857325509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081656 n + (A081656 n + A000079 n)

end

end A321003.P2029052106857325509

namespace A321003

/-- `A081656(n)+A081656(n)+A000079(n)` -/
def P2029052106857325509.Spec : Prop :=
  ∀ n, P2029052106857325509.a n = A321003 n

end A321003

/-! ## A321003.P17945347241970004557

`A081626(n)+A171476(n)+A081626(n)`
-/

namespace A321003.P17945347241970004557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081626 n + (A171476 n + A081626 n)

end

end A321003.P17945347241970004557

namespace A321003

/-- `A081626(n)+A171476(n)+A081626(n)` -/
def P17945347241970004557.Spec : Prop :=
  ∀ n, P17945347241970004557.a n = A321003 n

end A321003

/-! ## A321003.P11482116142391214009

`A248216(n+1)-(A248216(n)+A000400(n))`
-/

namespace A321003.P11482116142391214009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 (n + 1) - (A248216 n + A000400 n)

end

end A321003.P11482116142391214009

namespace A321003

/-- `A248216(n+1)-(A248216(n)+A000400(n))` -/
def P11482116142391214009.Spec : Prop :=
  ∀ n, P11482116142391214009.a n = A321003 n

end A321003

/-! ## A321003.P13951489750445443713

`A000079(n)*A003946(n+1)-A000079(n)`
-/

namespace A321003.P13951489750445443713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A003946 (n + 1) - A000079 n

end

end A321003.P13951489750445443713

namespace A321003

/-- `A000079(n)*A003946(n+1)-A000079(n)` -/
def P13951489750445443713.Spec : Prop :=
  ∀ n, P13951489750445443713.a n = A321003 n

end A321003

/-! ## A321003.P16518436203896247880

`A000079(n+1)*A008776(n)-A000079(n)`
-/

namespace A321003.P16518436203896247880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A008776 n - A000079 n

end

end A321003.P16518436203896247880

namespace A321003

/-- `A000079(n+1)*A008776(n)-A000079(n)` -/
def P16518436203896247880.Spec : Prop :=
  ∀ n, P16518436203896247880.a n = A321003 n

theorem P16518436203896247880.correct : P16518436203896247880.Spec := by
  intro n
  simp only [A321003, Nat.add_sub_cancel, A321003.P16518436203896247880.a, A321003.P3620131858223082450.a, A000079, A000079.P10855139691139572931.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A321003

/-! ## A321003.P17827274290321450199

`A067411(n+1)-(A001045(n+1)+A001045(n))`
-/

namespace A321003.P17827274290321450199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067411 (n + 1) - (A001045 (n + 1) + A001045 n)

end

end A321003.P17827274290321450199

namespace A321003

/-- `A067411(n+1)-(A001045(n+1)+A001045(n))` -/
def P17827274290321450199.Spec : Prop :=
  ∀ n, P17827274290321450199.a n = A321003 n

end A321003

/-! ## A321003.P446097319239316021

`A167747(n+1)+A167747(n+1)-A000079(n)`
-/

namespace A321003.P446097319239316021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 (n + 1) + (A167747 (n + 1) - A000079 n)

end

end A321003.P446097319239316021

namespace A321003

/-- `A167747(n+1)+A167747(n+1)-A000079(n)` -/
def P446097319239316021.Spec : Prop :=
  ∀ n, P446097319239316021.a n = A321003 n

end A321003

/-! ## A321003.P17132041723699384937

`A000079(n+1)*A025192(n+1)-A000079(n)`
-/

namespace A321003.P17132041723699384937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A025192 (n + 1) - A000079 n

end

end A321003.P17132041723699384937

namespace A321003

/-- `A000079(n+1)*A025192(n+1)-A000079(n)` -/
def P17132041723699384937.Spec : Prop :=
  ∀ n, P17132041723699384937.a n = A321003 n

end A321003

/-!
# A321004: Number of pairs of primes (i,j) with i<j<n such that i*j == 1 mod n.

The programs for A321004, there is no canonical definition to state claims against.
-/

/-! ## A321004.P4407290169094560974

`A076142(A085897(n)+A015128(n))`
-/

namespace A321004.P4407290169094560974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A085897 n + A015128 n).toNat

end

end A321004.P4407290169094560974

/-! ## A321004.P12876294129484982725

`A037832(A046899(n)+A000032(n))`
-/

namespace A321004.P12876294129484982725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A046899 n + A000032 n).toNat

end

end A321004.P12876294129484982725

/-! ## A321004.P7369124643674483688

`A344739(A275331(n+1)+A007091(n+3))`
-/

namespace A321004.P7369124643674483688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A275331 (n + 1) + A007091 (n + 3)).toNat

end

end A321004.P7369124643674483688

/-! ## A321004.P14118544654861710446

`and(A249442(n), A256709(A265074(n)))`
-/

namespace A321004.P14118544654861710446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249442 n) (A256709 (A265074 n).toNat)

end

end A321004.P14118544654861710446

/-! ## A321004.P11821935238969136897

`A388713(A338829(n)-A338796(n+1))`
-/

namespace A321004.P11821935238969136897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388713 (A338829 n - A338796 (n + 1)).toNat

end

end A321004.P11821935238969136897

/-!
# A321005: Let p = prime(n); a(n) = number of pairs of primes (i,j) with i < j < p such that i*j == 1 (mod p).

The programs for A321005, there is no canonical definition to state claims against.
-/

/-! ## A321005.P10612282915763864910

`A321004(p?[xor(1, n)])`
-/

namespace A321005.P10612282915763864910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321004 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A321005.P10612282915763864910

/-! ## A321005.P419608141075959945

`A321004(Δ[A007504(n)])`
-/

namespace A321005.P419608141075959945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321004 (f1 (n + 1) - f1 n).toNat

end

end A321005.P419608141075959945

/-! ## A321005.P5685109854418327424

`A321004(A000040(n+1))`
-/

namespace A321005.P5685109854418327424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321004 (A000040 (n + 1)).toNat

end

end A321005.P5685109854418327424

/-! ## A321005.P10625193804060027848

`A321004(A006005(n+1))`
-/

namespace A321005.P10625193804060027848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321004 (A006005 (n + 1)).toNat

end

end A321005.P10625193804060027848

/-! ## A321005.P11812578130944578412

`A321004(A030291(n+1))`
-/

namespace A321005.P11812578130944578412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321004 (A030291 (n + 1)).toNat

end

end A321005.P11812578130944578412

/-!
# A321006: Primes at which A321005 sets a new record.

The programs for A321006, there is no canonical definition to state claims against.
-/

/-! ## A321006.P3072907813453400232

`A320276(record[A321005(n+1)])`
-/

namespace A321006.P3072907813453400232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320276 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321006.P3072907813453400232

/-! ## A321006.P11904860210551696680

`A320276(lt[A320276(n), A003351(n+1)])`
-/

namespace A321006.P11904860210551696680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320276 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321006.P11904860210551696680

/-! ## A321006.P12350722499715499266

`A320276(lt[A320276(n), A127589(n+1)])`
-/

namespace A321006.P12350722499715499266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320276 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321006.P12350722499715499266

/-! ## A321006.P8163200464313457058

`A320276(lt[A003050(n+1), 4])`
-/

namespace A321006.P8163200464313457058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003050 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320276 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A321006.P8163200464313457058

/-! ## A321006.P14109940418267386706

`A320276(eq[A008721(n), A008820(n)])`
-/

namespace A321006.P14109940418267386706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320276 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A321006.P14109940418267386706

/-!
# A321007: Cardinalities of certain sets arising in the study of the mean-median Map.

The programs for A321007, there is no canonical definition to state claims against.
-/

/-! ## A321007.P6497362992271905513

`A220487(2^n)-comp[n*n%2+3]`
-/

namespace A321007.P6497362992271905513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (2 ^ n) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A321007.P6497362992271905513

/-! ## A321007.P185156992846417525

`A320226(A018080(n))`
-/

namespace A321007.P185156992846417525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 (A018080 n).toNat

end

end A321007.P185156992846417525

/-! ## A321007.P14192997376496227595

`A261104(A275908(n))`
-/

namespace A321007.P14192997376496227595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A275908 n).toNat

end

end A321007.P14192997376496227595

/-!
# A321009: a(1)=2; thereafter a(n) is obtained by applying Eric Angelini's remove-repeated-digits map, x->A320486(x), to n*a(n-1), stopping when 0 is reached.

The programs for A321009, there is no canonical definition to state claims against.
-/

/-! ## A321009.P15971122355076778830

`A320485((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A321009.P15971122355076778830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A320485 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A321009.P15971122355076778830

/-! ## A321009.P14471956903588159302

`A320486((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A321009.P14471956903588159302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A320486 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A321009.P14471956903588159302

/-!
# A321013: a(n) = how many of {6,7,8} divide n.

The programs for A321013, the canonical program `A321013.P13730474975989391293` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321013 has offset 1).

The definition of A321013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321013.P13730474975989391293

`A338649(n+1)-A338652(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A321013

/-- `A338649(n+1)-A338652(n+1)` -/
def P13730474975989391293.Spec : Prop :=
  ∀ n, P13730474975989391293.a n = A321013 (n + 1)

theorem P13730474975989391293.correct : P13730474975989391293.Spec := by
  intro n
  simp only [A321013, Nat.add_sub_cancel]

end A321013

/-!
# A321014: Number of divisors of n which are greater than 3.

The programs for A321014, the canonical program `A321014.P94764346860813121` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321014 has offset 1).

The definition of A321014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321014.P94764346860813121

`∑{d}[n+1, C(3%#, 3)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A321014

/-- `∑{d}[n+1, C(3%#, 3)]` -/
def P94764346860813121.Spec : Prop :=
  ∀ n, (P94764346860813121.a n : ℤ) = A321014 (n + 1)

theorem P94764346860813121.correct : P94764346860813121.Spec := by
  intro n
  simp only [A321014, Nat.add_sub_cancel]

end A321014

/-! ## A321014.P2707359048913578671

`∑{d}[n+1, round(root(13, -#))]`
-/

namespace A321014.P2707359048913578671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((13 : ℝ) ^ (1 / (-(d : ℤ) : ℝ)))

end

end A321014.P2707359048913578671

namespace A321014

/-- `∑{d}[n+1, round(root(13, -#))]` -/
def P2707359048913578671.Spec : Prop :=
  ∀ n, P2707359048913578671.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P8200015206101253154

`floor(∑{d}[n+1, (2*(n+2)+1)%#]/3)`
-/

namespace A321014.P8200015206101253154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), (2 * (n + 2) + 1) % d : ℕ) : ℚ) / 3⌋

end

end A321014.P8200015206101253154

namespace A321014

/-- `floor(∑{d}[n+1, (2*(n+2)+1)%#]/3)` -/
def P8200015206101253154.Spec : Prop :=
  ∀ n, P8200015206101253154.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P10445992223473953393

`A000005(n+1)-ceil(sqrt(gcd(6, n+1)))`
-/

namespace A321014.P10445992223473953393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ⌈Real.sqrt (Nat.gcd 6 (n + 1) : ℝ)⌉

end

end A321014.P10445992223473953393

namespace A321014

/-- `A000005(n+1)-ceil(sqrt(gcd(6, n+1)))` -/
def P10445992223473953393.Spec : Prop :=
  ∀ n, P10445992223473953393.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P14134554030702274582

`∏{e}[n+1, #+1]-(A171182(n+1)+1)`
-/

namespace A321014.P14134554030702274582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (A171182 (n + 1) + 1)

end

end A321014.P14134554030702274582

namespace A321014

/-- `∏{e}[n+1, #+1]-(A171182(n+1)+1)` -/
def P14134554030702274582.Spec : Prop :=
  ∀ n, P14134554030702274582.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P13263484994901551105

`A076984(n+1)-A177702(n)`
-/

namespace A321014.P13263484994901551105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - A177702 n

end

end A321014.P13263484994901551105

namespace A321014

/-- `A076984(n+1)-A177702(n)` -/
def P13263484994901551105.Spec : Prop :=
  ∀ n, P13263484994901551105.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P15919714201451415483

`A171157(n+1)+A055212(n+1)`
-/

namespace A321014.P15919714201451415483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171157 (n + 1) + A055212 (n + 1)

end

end A321014.P15919714201451415483

namespace A321014

/-- `A171157(n+1)+A055212(n+1)` -/
def P15919714201451415483.Spec : Prop :=
  ∀ n, P15919714201451415483.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P6373421965341104896

`A338648(n+1)+A011765(n+1)`
-/

namespace A321014.P6373421965341104896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338648 (n + 1) + A011765 (n + 1)

end

end A321014.P6373421965341104896

namespace A321014

/-- `A338648(n+1)+A011765(n+1)` -/
def P6373421965341104896.Spec : Prop :=
  ∀ n, P6373421965341104896.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P18417551594033083502

`A000005(n+1)-A083039(n+1)`
-/

namespace A321014.P18417551594033083502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083039 (n + 1)

end

end A321014.P18417551594033083502

namespace A321014

/-- `A000005(n+1)-A083039(n+1)` -/
def P18417551594033083502.Spec : Prop :=
  ∀ n, P18417551594033083502.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P4821387618442459626

`A049994(n+1)-A049986(n+1)`
-/

namespace A321014.P4821387618442459626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) - A049986 (n + 1)

end

end A321014.P4821387618442459626

namespace A321014

/-- `A049994(n+1)-A049986(n+1)` -/
def P4821387618442459626.Spec : Prop :=
  ∀ n, P4821387618442459626.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P2181276698924286974

`A174257(n+1)-A003165(n+1)`
-/

namespace A321014.P2181276698924286974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (n + 1) - A003165 (n + 1)

end

end A321014.P2181276698924286974

namespace A321014

/-- `A174257(n+1)-A003165(n+1)` -/
def P2181276698924286974.Spec : Prop :=
  ∀ n, P2181276698924286974.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P14126685695669196686

`A066660(n+1)-A356122(n+1)`
-/

namespace A321014.P14126685695669196686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) - A356122 (n + 1)

end

end A321014.P14126685695669196686

namespace A321014

/-- `A066660(n+1)-A356122(n+1)` -/
def P14126685695669196686.Spec : Prop :=
  ∀ n, P14126685695669196686.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P3703162086941891305

`A083040(n+1)+A338648(n+1)-A083039(n+1)`
-/

namespace A321014.P3703162086941891305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083040 (n + 1) + (A338648 (n + 1) - A083039 (n + 1))

end

end A321014.P3703162086941891305

namespace A321014

/-- `A083040(n+1)+A338648(n+1)-A083039(n+1)` -/
def P3703162086941891305.Spec : Prop :=
  ∀ n, P3703162086941891305.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P6080122944216823086

`A321015(n+1)-(A321013(n+1)+A000005(n+1))`
-/

namespace A321014.P6080122944216823086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321015 (n + 1) - (A321013 (n + 1) + A000005 (n + 1))

end

end A321014.P6080122944216823086

namespace A321014

/-- `A321015(n+1)-(A321013(n+1)+A000005(n+1))` -/
def P6080122944216823086.Spec : Prop :=
  ∀ n, P6080122944216823086.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P3379972097239114160

`A072527(n+4)`
-/

namespace A321014.P3379972097239114160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (n + 4)

end

end A321014.P3379972097239114160

namespace A321014

/-- `A072527(n+4)` -/
def P3379972097239114160.Spec : Prop :=
  ∀ n, P3379972097239114160.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P1089502728432739409

`A000005(n+1)-A117199(2*n)`
-/

namespace A321014.P1089502728432739409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A117199 (2 * n)

end

end A321014.P1089502728432739409

namespace A321014

/-- `A000005(n+1)-A117199(2*n)` -/
def P1089502728432739409.Spec : Prop :=
  ∀ n, P1089502728432739409.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P13544151790608340637

`A076984(2*(n+1))-A356122(n+1)`
-/

namespace A321014.P13544151790608340637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (2 * (n + 1)) - A356122 (n + 1)

end

end A321014.P13544151790608340637

namespace A321014

/-- `A076984(2*(n+1))-A356122(n+1)` -/
def P13544151790608340637.Spec : Prop :=
  ∀ n, P13544151790608340637.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P14734571737289157776

`A361000(n+1)-A096737(n+1)`
-/

namespace A321014.P14734571737289157776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361000 (n + 1) - A096737 (n + 1)

end

end A321014.P14734571737289157776

namespace A321014

/-- `A361000(n+1)-A096737(n+1)` -/
def P14734571737289157776.Spec : Prop :=
  ∀ n, P14734571737289157776.a n = A321014 (n + 1)

theorem P14734571737289157776.correct : P14734571737289157776.Spec := by
  intro n
  simp only [A321014, Nat.add_sub_cancel, A321014.P14734571737289157776.a, A321014.P94764346860813121.f1, A321014.P94764346860813121.a, A096737, A096737.P12937358250781418513.f1, A096737.P12937358250781418513.a, A361000, A361000.P4616030779628208533.f1, A361000.P4616030779628208533.f2, A361000.P4616030779628208533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321014

/-! ## A321014.P2362457693802140456

`A338649(A003961(n+1))`
-/

namespace A321014.P2362457693802140456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (A003961 (n + 1)).toNat

end

end A321014.P2362457693802140456

namespace A321014

/-- `A338649(A003961(n+1))` -/
def P2362457693802140456.Spec : Prop :=
  ∀ n, P2362457693802140456.a n = A321014 (n + 1)

end A321014

/-! ## A321014.P2051992232932491974

`A338649(A045965(n+1))`
-/

namespace A321014.P2051992232932491974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (A045965 (n + 1)).toNat

end

end A321014.P2051992232932491974

namespace A321014

/-- `A338649(A045965(n+1))` -/
def P2051992232932491974.Spec : Prop :=
  ∀ n, P2051992232932491974.a n = A321014 (n + 1)

end A321014

/-!
# A321015: Number of isohedral Voronoi parallelotopes in R^n.

The programs for A321015, the canonical program `A321015.P1134771040265211832` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321015 has offset 1).

The definition of A321015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321015.P4739800666124144141

`A000005(n+1)+A321014(n+1)+A321013(n+1)`
-/

namespace A321015.P4739800666124144141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A321014 (n + 1) + A321013 (n + 1))

end

end A321015.P4739800666124144141

namespace A321015

/-- `A000005(n+1)+A321014(n+1)+A321013(n+1)` -/
def P4739800666124144141.Spec : Prop :=
  ∀ n, P4739800666124144141.a n = A321015 (n + 1)

end A321015

/-! ## A321015.P1134771040265211832

`∑{d}[n+1, A387540(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A321015

/-- `∑{d}[n+1, A387540(#)]` -/
def P1134771040265211832.Spec : Prop :=
  ∀ n, P1134771040265211832.a n = A321015 (n + 1)

theorem P1134771040265211832.correct : P1134771040265211832.Spec := by
  intro n
  simp only [A321015, Nat.add_sub_cancel]

end A321015

/-! ## A321015.P5575837090138924462

`A321014((n+1)*A000040(3*n+4))+A321013(n+1)`
-/

namespace A321015.P5575837090138924462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 ((n + 1 : ℤ) * A000040 (3 * n + 4)).toNat + A321013 (n + 1)

end

end A321015.P5575837090138924462

namespace A321015

/-- `A321014((n+1)*A000040(3*n+4))+A321013(n+1)` -/
def P5575837090138924462.Spec : Prop :=
  ∀ n, P5575837090138924462.a n = A321015 (n + 1)

end A321015

/-! ## A321015.P6314682387674168456

`A321014((n+1)*A139911(n+1))+A321013(n+1)`
-/

namespace A321015.P6314682387674168456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 ((n + 1 : ℤ) * A139911 (n + 1)).toNat + A321013 (n + 1)

end

end A321015.P6314682387674168456

namespace A321015

/-- `A321014((n+1)*A139911(n+1))+A321013(n+1)` -/
def P6314682387674168456.Spec : Prop :=
  ∀ n, P6314682387674168456.a n = A321015 (n + 1)

end A321015

/-!
# A321016: Triangle read by rows: number of partitions of n into distinct and consecutive parts with largest part k (n >= 1, 1 <= k <= n).

The programs for A321016, the canonical program `A321016.P11941317684383710991` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321016 has offset 1).

The definition of A321016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321016.P11941317684383710991

`char[A002024(n+1)-A080956(A049777(n+1))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A321016

/-- `char[A002024(n+1)-A080956(A049777(n+1))]` -/
def P11941317684383710991.Spec : Prop :=
  ∀ n, (P11941317684383710991.a n : ℤ) = A321016 (n + 1)

theorem P11941317684383710991.correct : P11941317684383710991.Spec := by
  intro n
  simp only [A321016, Nat.add_sub_cancel]

end A321016

/-! ## A321016.P12901465439235081434

`char[A002024(n+1)-A080956(A141419(n+1))]`
-/

namespace A321016.P12901465439235081434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A080956 (A141419 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A321016.P12901465439235081434

namespace A321016

/-- `char[A002024(n+1)-A080956(A141419(n+1))]` -/
def P12901465439235081434.Spec : Prop :=
  ∀ n, (P12901465439235081434.a n : ℤ) = A321016 (n + 1)

end A321016

/-! ## A321016.P1544867182979988050

`(A245151(n+1)*A332402(n+1))%2`
-/

namespace A321016.P1544867182979988050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245151 (n + 1) * A332402 (n + 1)) 2

end

end A321016.P1544867182979988050

namespace A321016

/-- `(A245151(n+1)*A332402(n+1))%2` -/
def P1544867182979988050.Spec : Prop :=
  ∀ n, P1544867182979988050.a n = A321016 (n + 1)

end A321016

/-! ## A321016.P9410077526540244303

`A000035(and(A245151(n+1), A332402(n+1)))`
-/

namespace A321016.P9410077526540244303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.land (A245151 (n + 1)) (A332402 (n + 1))).toNat

end

end A321016.P9410077526540244303

namespace A321016

/-- `A000035(and(A245151(n+1), A332402(n+1)))` -/
def P9410077526540244303.Spec : Prop :=
  ∀ n, P9410077526540244303.a n = A321016 (n + 1)

end A321016

/-! ## A321016.P18360216152574709925

`and(A010060(A244454(n+1)), A332402(n+1))`
-/

namespace A321016.P18360216152574709925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A244454 (n + 1)).toNat) (A332402 (n + 1))

end

end A321016.P18360216152574709925

namespace A321016

/-- `and(A010060(A244454(n+1)), A332402(n+1))` -/
def P18360216152574709925.Spec : Prop :=
  ∀ n, P18360216152574709925.a n = A321016 (n + 1)

end A321016

/-! ## A321016.P2088900685238656345

`A073424(and(A245151(n+1), A332402(n+1)))`
-/

namespace A321016.P2088900685238656345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (Int.land (A245151 (n + 1)) (A332402 (n + 1))).toNat

end

end A321016.P2088900685238656345

namespace A321016

/-- `A073424(and(A245151(n+1), A332402(n+1)))` -/
def P2088900685238656345.Spec : Prop :=
  ∀ n, P2088900685238656345.a n = A321016 (n + 1)

end A321016

/-! ## A321016.P16445130014985872764

`A153638(and(A245151(n+1), A332402(n+1)))`
-/

namespace A321016.P16445130014985872764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153638 (Int.land (A245151 (n + 1)) (A332402 (n + 1))).toNat

end

end A321016.P16445130014985872764

namespace A321016

/-- `A153638(and(A245151(n+1), A332402(n+1)))` -/
def P16445130014985872764.Spec : Prop :=
  ∀ n, P16445130014985872764.a n = A321016 (n + 1)

end A321016

/-!
# A321017: a(n) = floor(pi(n)/2).

The programs for A321017, the canonical program `A321017.P10204127196828355610` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321017 has offset 1).

The definition of A321017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000720(n+1)/2)` (program `A321017.P10204127196828355610`, by `A321017.P10204127196828355610.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321017.P10204127196828355610

`floor(A000720(n+1)/2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A321017

/-- `floor(A000720(n+1)/2)` -/
def P10204127196828355610.Spec : Prop :=
  ∀ n, P10204127196828355610.a n = A321017 (n + 1)

theorem P10204127196828355610.correct : P10204127196828355610.Spec := by
  intro n
  simp only [A321017, Nat.add_sub_cancel]

end A321017

/-! ## A321017.P13221453685128568811

`ceil(∑[char[p?[2*n+1]-1]]/2)`
-/

namespace A321017.P13221453685128568811
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A321017.P13221453685128568811

namespace A321017

/-- `ceil(∑[char[p?[2*n+1]-1]]/2)` -/
def P13221453685128568811.Spec : Prop :=
  ∀ n, P13221453685128568811.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P5263614014951526161

`round(∑[char[p?[2*n+1]-1]]/2)`
-/

namespace A321017.P5263614014951526161
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A321017.P5263614014951526161

namespace A321017

/-- `round(∑[char[p?[2*n+1]-1]]/2)` -/
def P5263614014951526161.Spec : Prop :=
  ∀ n, P5263614014951526161.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P12307080035062590856

`floor(∑[∑{p}[n+1, val(#, n+1)]/2])`
-/

namespace A321017.P12307080035062590856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A321017.P12307080035062590856

namespace A321017

/-- `floor(∑[∑{p}[n+1, val(#, n+1)]/2])` -/
def P12307080035062590856.Spec : Prop :=
  ∀ n, P12307080035062590856.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P6388884828930260598

`floor(∑[∑{p}[n+1, C(#, n+1)]]/2)`
-/

namespace A321017.P6388884828930260598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A321017.P6388884828930260598

namespace A321017

/-- `floor(∑[∑{p}[n+1, C(#, n+1)]]/2)` -/
def P6388884828930260598.Spec : Prop :=
  ∀ n, P6388884828930260598.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P9908424891903773444

`floor(∑[C(n, ∏{e}[n+1, n*#])]/2)`
-/

namespace A321017.P9908424891903773444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A321017.P9908424891903773444

namespace A321017

/-- `floor(∑[C(n, ∏{e}[n+1, n*#])]/2)` -/
def P9908424891903773444.Spec : Prop :=
  ∀ n, P9908424891903773444.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P13060486597859844129

`floor((∑[char[p?[2*n+1]-1]]+1)/2)`
-/

namespace A321017.P13060486597859844129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A321017.P13060486597859844129

namespace A321017

/-- `floor((∑[char[p?[2*n+1]-1]]+1)/2)` -/
def P13060486597859844129.Spec : Prop :=
  ∀ n, P13060486597859844129.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P1405709350740145549

`ceil(A033270(n+1)/2)`
-/

namespace A321017.P1405709350740145549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033270 (n + 1) : ℚ) / 2⌉

end

end A321017.P1405709350740145549

namespace A321017

/-- `ceil(A033270(n+1)/2)` -/
def P1405709350740145549.Spec : Prop :=
  ∀ n, P1405709350740145549.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P5014679924931397095

`floor(sqrt(A256956(n+1))/2)`
-/

namespace A321017.P5014679924931397095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A256956 (n + 1) : ℝ) / 2⌋

end

end A321017.P5014679924931397095

namespace A321017

/-- `floor(sqrt(A256956(n+1))/2)` -/
def P5014679924931397095.Spec : Prop :=
  ∀ n, P5014679924931397095.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P4989340642231149680

`floor(∑[A010051(n+1)/2])`
-/

namespace A321017.P4989340642231149680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A321017.P4989340642231149680

namespace A321017

/-- `floor(∑[A010051(n+1)/2])` -/
def P4989340642231149680.Spec : Prop :=
  ∀ n, P4989340642231149680.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P9400427517942838072

`∑[char[A006093(2*(n+1))]]`
-/

namespace A321017.P9400427517942838072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321017.P9400427517942838072

namespace A321017

/-- `∑[char[A006093(2*(n+1))]]` -/
def P9400427517942838072.Spec : Prop :=
  ∀ n, (P9400427517942838072.a n : ℤ) = A321017 (n + 1)

end A321017

/-! ## A321017.P11633666277808470322

`∑[char[A039915(2*(n+1))]]`
-/

namespace A321017.P11633666277808470322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321017.P11633666277808470322

namespace A321017

/-- `∑[char[A039915(2*(n+1))]]` -/
def P11633666277808470322.Spec : Prop :=
  ∀ n, (P11633666277808470322.a n : ℤ) = A321017 (n + 1)

end A321017

/-! ## A321017.P10650850024618839082

`floor((A036234(n+1)-1)/2)`
-/

namespace A321017.P10650850024618839082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036234 (n + 1) - 1 : ℚ) / 2⌋

end

end A321017.P10650850024618839082

namespace A321017

/-- `floor((A036234(n+1)-1)/2)` -/
def P10650850024618839082.Spec : Prop :=
  ∀ n, P10650850024618839082.a n = A321017 (n + 1)

theorem P10650850024618839082.correct : P10650850024618839082.Spec := by
  intro n
  simp only [A321017, Nat.add_sub_cancel, A321017.P10650850024618839082.a, A321017.P10204127196828355610.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321017

/-! ## A321017.P2215830859235731112

`∑[char[A000040(2*(n+1))-1]]`
-/

namespace A321017.P2215830859235731112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321017.P2215830859235731112

namespace A321017

/-- `∑[char[A000040(2*(n+1))-1]]` -/
def P2215830859235731112.Spec : Prop :=
  ∀ n, (P2215830859235731112.a n : ℤ) = A321017 (n + 1)

end A321017

/-! ## A321017.P3361900455581365415

`A004526(A000720(n+1))`
-/

namespace A321017.P3361900455581365415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000720 (n + 1)).toNat

end

end A321017.P3361900455581365415

namespace A321017

/-- `A004526(A000720(n+1))` -/
def P3361900455581365415.Spec : Prop :=
  ∀ n, P3361900455581365415.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P13081241084973080605

`A110654(A033270(n+1))`
-/

namespace A321017.P13081241084973080605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A033270 (n + 1)).toNat

end

end A321017.P13081241084973080605

namespace A321017

/-- `A110654(A033270(n+1))` -/
def P13081241084973080605.Spec : Prop :=
  ∀ n, P13081241084973080605.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P10543291826185447994

`A321018(A070320(n+1))`
-/

namespace A321017.P10543291826185447994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A070320 (n + 1)).toNat

end

end A321017.P10543291826185447994

namespace A321017

/-- `A321018(A070320(n+1))` -/
def P10543291826185447994.Spec : Prop :=
  ∀ n, P10543291826185447994.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P12143852723853485117

`A000720(n+1)-A321018(n+1)`
-/

namespace A321017.P12143852723853485117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A321018 (n + 1)

end

end A321017.P12143852723853485117

namespace A321017

/-- `A000720(n+1)-A321018(n+1)` -/
def P12143852723853485117.Spec : Prop :=
  ∀ n, P12143852723853485117.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P13231255472095971613

`A321018(n+1)-A071986(n+1)`
-/

namespace A321017.P13231255472095971613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (n + 1) - A071986 (n + 1)

end

end A321017.P13231255472095971613

namespace A321017

/-- `A321018(n+1)-A071986(n+1)` -/
def P13231255472095971613.Spec : Prop :=
  ∀ n, P13231255472095971613.a n = A321017 (n + 1)

end A321017

/-! ## A321017.P3322983207088125285

`floor(A230980(n+1)/2)`
-/

namespace A321017.P3322983207088125285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230980 (n + 1) : ℚ) / 2⌋

end

end A321017.P3322983207088125285

namespace A321017

/-- `floor(A230980(n+1)/2)` -/
def P3322983207088125285.Spec : Prop :=
  ∀ n, P3322983207088125285.a n = A321017 (n + 1)

end A321017

/-!
# A321018: a(n) = round(pi(n)/2).

The programs for A321018, the canonical program `A321018.P14388135865154753637` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321018 has offset 1).

The definition of A321018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(A000720(n+1)/2)` (program `A321018.P14388135865154753637`, by `A321018.P14388135865154753637.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321018.P14388135865154753637

`round(A000720(n+1)/2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A321018

/-- `round(A000720(n+1)/2)` -/
def P14388135865154753637.Spec : Prop :=
  ∀ n, P14388135865154753637.a n = A321018 (n + 1)

theorem P14388135865154753637.correct : P14388135865154753637.Spec := by
  intro n
  simp only [A321018, Nat.add_sub_cancel]

end A321018

/-! ## A321018.P418752895665310078

`floor(∑[C(2, ∑{e}[n+1, #+1])]/2)`
-/

namespace A321018.P418752895665310078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A321018.P418752895665310078

namespace A321018

/-- `floor(∑[C(2, ∑{e}[n+1, #+1])]/2)` -/
def P418752895665310078.Spec : Prop :=
  ∀ n, P418752895665310078.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P17580390442139173724

`ceil(∑[∑{p}[n+1, val(#, n+1)]]/2)`
-/

namespace A321018.P17580390442139173724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A321018.P17580390442139173724

namespace A321018

/-- `ceil(∑[∑{p}[n+1, val(#, n+1)]]/2)` -/
def P17580390442139173724.Spec : Prop :=
  ∀ n, P17580390442139173724.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P14435073808741690672

`floor(∑[∏{p}[n+1, val(#, n+1)]]/2)`
-/

namespace A321018.P14435073808741690672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A321018.P14435073808741690672

namespace A321018

/-- `floor(∑[∏{p}[n+1, val(#, n+1)]]/2)` -/
def P14435073808741690672.Spec : Prop :=
  ∀ n, P14435073808741690672.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P18383515963756461066

`floor(∑[C(n, ∑{d}[n+1, #-1])]/2)`
-/

namespace A321018.P18383515963756461066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A321018.P18383515963756461066

namespace A321018

/-- `floor(∑[C(n, ∑{d}[n+1, #-1])]/2)` -/
def P18383515963756461066.Spec : Prop :=
  ∀ n, P18383515963756461066.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P6304212368585937879

`round(∑[∑{p}[n+1, val(#, n+1)]/2])`
-/

namespace A321018.P6304212368585937879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321018.P6304212368585937879

namespace A321018

/-- `round(∑[∑{p}[n+1, val(#, n+1)]/2])` -/
def P6304212368585937879.Spec : Prop :=
  ∀ n, P6304212368585937879.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P15669890828016689673

`ceil(∑[∑{p}[n+1, C(#, n+1)]]/2)`
-/

namespace A321018.P15669890828016689673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A321018.P15669890828016689673

namespace A321018

/-- `ceil(∑[∑{p}[n+1, C(#, n+1)]]/2)` -/
def P15669890828016689673.Spec : Prop :=
  ∀ n, P15669890828016689673.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P6126265958226953230

`round(∑[∑{p}[n+1, C(#, n+1)]]/2)`
-/

namespace A321018.P6126265958226953230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A321018.P6126265958226953230

namespace A321018

/-- `round(∑[∑{p}[n+1, C(#, n+1)]]/2)` -/
def P6126265958226953230.Spec : Prop :=
  ∀ n, P6126265958226953230.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P5242969165046059545

`ceil(∑[C(n, ∏{e}[n+1, n*#])]/2)`
-/

namespace A321018.P5242969165046059545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A321018.P5242969165046059545

namespace A321018

/-- `ceil(∑[C(n, ∏{e}[n+1, n*#])]/2)` -/
def P5242969165046059545.Spec : Prop :=
  ∀ n, P5242969165046059545.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P11295881146586340668

`round(∑[C(n, ∏{e}[n+1, n*#])]/2)`
-/

namespace A321018.P11295881146586340668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A321018.P11295881146586340668

namespace A321018

/-- `round(∑[C(n, ∏{e}[n+1, n*#])]/2)` -/
def P11295881146586340668.Spec : Prop :=
  ∀ n, P11295881146586340668.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P17156825391613234842

`floor((∑[∑{p}[n+1, val(#, n+1)]]+1)/2)`
-/

namespace A321018.P17156825391613234842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A321018.P17156825391613234842

namespace A321018

/-- `floor((∑[∑{p}[n+1, val(#, n+1)]]+1)/2)` -/
def P17156825391613234842.Spec : Prop :=
  ∀ n, P17156825391613234842.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P4479678940388331733

`floor((∑[∑{p}[n+1, C(#, n+1)]]+1)/2)`
-/

namespace A321018.P4479678940388331733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A321018.P4479678940388331733

namespace A321018

/-- `floor((∑[∑{p}[n+1, C(#, n+1)]]+1)/2)` -/
def P4479678940388331733.Spec : Prop :=
  ∀ n, P4479678940388331733.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P17724615227374089245

`floor((∑[C(n, ∏{e}[n+1, n*#])]-1)/2)+1`
-/

namespace A321018.P17724615227374089245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2⌋ + 1

end

end A321018.P17724615227374089245

namespace A321018

/-- `floor((∑[C(n, ∏{e}[n+1, n*#])]-1)/2)+1` -/
def P17724615227374089245.Spec : Prop :=
  ∀ n, P17724615227374089245.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P6227007282523286595

`floor(A036234(n+1)/2)`
-/

namespace A321018.P6227007282523286595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036234 (n + 1) : ℚ) / 2⌋

end

end A321018.P6227007282523286595

namespace A321018

/-- `floor(A036234(n+1)/2)` -/
def P6227007282523286595.Spec : Prop :=
  ∀ n, P6227007282523286595.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P6411149326296173737

`ceil(A123246(n+1)/2)`
-/

namespace A321018.P6411149326296173737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123246 (n + 1) : ℚ) / 2⌉

end

end A321018.P6411149326296173737

namespace A321018

/-- `ceil(A123246(n+1)/2)` -/
def P6411149326296173737.Spec : Prop :=
  ∀ n, P6411149326296173737.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P10094638812934691598

`∑[A049084(n+1)%2]`
-/

namespace A321018.P10094638812934691598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321018.P10094638812934691598

namespace A321018

/-- `∑[A049084(n+1)%2]` -/
def P10094638812934691598.Spec : Prop :=
  ∀ n, P10094638812934691598.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P4880071781498525108

`floor(∑[A080339(n+1)/2])`
-/

namespace A321018.P4880071781498525108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080339 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A321018.P4880071781498525108

namespace A321018

/-- `floor(∑[A080339(n+1)/2])` -/
def P4880071781498525108.Spec : Prop :=
  ∀ n, P4880071781498525108.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P46548765545907947

`ceil(∑[A010051(n+1)/2])`
-/

namespace A321018.P46548765545907947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A321018.P46548765545907947

namespace A321018

/-- `ceil(∑[A010051(n+1)/2])` -/
def P46548765545907947.Spec : Prop :=
  ∀ n, P46548765545907947.a n = A321018 (n + 1)

end A321018

/-! ## A321018.P6772843595019261279

`∑[char[A006093(2*n+1)]]`
-/

namespace A321018.P6772843595019261279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321018.P6772843595019261279

namespace A321018

/-- `∑[char[A006093(2*n+1)]]` -/
def P6772843595019261279.Spec : Prop :=
  ∀ n, (P6772843595019261279.a n : ℤ) = A321018 (n + 1)

end A321018

/-! ## A321018.P17603288523518442310

`∑[char[A156037(2*n+1)]]`
-/

namespace A321018.P17603288523518442310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321018.P17603288523518442310

namespace A321018

/-- `∑[char[A156037(2*n+1)]]` -/
def P17603288523518442310.Spec : Prop :=
  ∀ n, (P17603288523518442310.a n : ℤ) = A321018 (n + 1)

end A321018

/-!
# A321019: Coordination sequence for 3-D tiling (Cairo tiling) X Z, with respect to a 5-valent point.

The programs for A321019, the canonical program `A321019.P1202274537414453979` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321019 has offset 0).

The definition of A321019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321019.P1202274537414453979

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=16, a(3)=36, a(4)=63, a(5)=98, a(6)=143, a(7)=196`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A321019

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P1202274537414453979.Spec : Prop :=
  ∀ n, P1202274537414453979.a n = A321019 n

theorem P1202274537414453979.correct : P1202274537414453979.Spec := by
  intro n
  simp only [A321019]

end A321019

/-! ## A321019.P5415203995451844899

`2*A296909(n)-A296368(n)`
-/

namespace A321019.P5415203995451844899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296909 n - A296368 n

end

end A321019.P5415203995451844899

namespace A321019

/-- `2*A296909(n)-A296368(n)` -/
def P5415203995451844899.Spec : Prop :=
  ∀ n, P5415203995451844899.a n = A321019 n

end A321019

/-! ## A321019.P6254121920017865378

`A005843(A296909(n))-A296368(n)`
-/

namespace A321019.P6254121920017865378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A296909 n).toNat - A296368 n

end

end A321019.P6254121920017865378

namespace A321019

/-- `A005843(A296909(n))-A296368(n)` -/
def P6254121920017865378.Spec : Prop :=
  ∀ n, P6254121920017865378.a n = A321019 n

end A321019

/-! ## A321019.P10889538660283754961

`A005843(∑[A296368(n)])-A296368(n)`
-/

namespace A321019.P10889538660283754961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A296368 n

end

end A321019.P10889538660283754961

namespace A321019

/-- `A005843(∑[A296368(n)])-A296368(n)` -/
def P10889538660283754961.Spec : Prop :=
  ∀ n, P10889538660283754961.a n = A321019 n

end A321019

/-! ## A321019.P7382075074686183489

`A053755(n)-A001222(A151479(n))`
-/

namespace A321019.P7382075074686183489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n - A001222 (A151479 n).toNat

end

end A321019.P7382075074686183489

namespace A321019

/-- `A053755(n)-A001222(A151479(n))` -/
def P7382075074686183489.Spec : Prop :=
  ∀ n, P7382075074686183489.a n = A321019 n

end A321019

/-!
# A321020: A hybrid of Kolakoski's sequence A000002 and Golomb's sequence A001462: if A001462(n) is odd replace it with 1, if even with 2.

The programs for A321020, the canonical program `A321020.P11417234065740984579` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321020 has offset 1).

The definition of A321020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321020.P11417234065740984579

`gcd(2, A001462(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A321020

/-- `gcd(2, A001462(n+1))` -/
def P11417234065740984579.Spec : Prop :=
  ∀ n, (P11417234065740984579.a n : ℤ) = A321020 (n + 1)

theorem P11417234065740984579.correct : P11417234065740984579.Spec := by
  intro n
  simp only [A321020, Nat.add_sub_cancel]

end A321020

/-! ## A321020.P3084406074086080022

`-or(∑[char[A109512(n)-n]], -2)`
-/

namespace A321020.P3084406074086080022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A321020.P3084406074086080022

namespace A321020

/-- `-or(∑[char[A109512(n)-n]], -2)` -/
def P3084406074086080022.Spec : Prop :=
  ∀ n, P3084406074086080022.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P2175621156611743476

`gcd(4, A088517(n)+a(n-1))` with `a(0)=1`
-/

namespace A321020.P2175621156611743476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 4 (A088517 n + (a (n - 1) : ℤ))

end

end A321020.P2175621156611743476

namespace A321020

/-- `gcd(4, A088517(n)+a(n-1))` -/
def P2175621156611743476.Spec : Prop :=
  ∀ n, (P2175621156611743476.a n : ℤ) = A321020 (n + 1)

end A321020

/-! ## A321020.P7892165079943403461

`-or(∑[char[A001463(n+1)]]+1, -2)`
-/

namespace A321020.P7892165079943403461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (-2)

end

end A321020.P7892165079943403461

namespace A321020

/-- `-or(∑[char[A001463(n+1)]]+1, -2)` -/
def P7892165079943403461.Spec : Prop :=
  ∀ n, P7892165079943403461.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P16296548091473883393

`A040001(A001462(n+1))`
-/

namespace A321020.P16296548091473883393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A001462 (n + 1)).toNat

end

end A321020.P16296548091473883393

namespace A321020

/-- `A040001(A001462(n+1))` -/
def P16296548091473883393.Spec : Prop :=
  ∀ n, P16296548091473883393.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P7043055535180812365

`A000034(A001462(n+1)+1)`
-/

namespace A321020.P7043055535180812365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001462 (n + 1) + 1).toNat

end

end A321020.P7043055535180812365

namespace A321020

/-- `A000034(A001462(n+1)+1)` -/
def P7043055535180812365.Spec : Prop :=
  ∀ n, P7043055535180812365.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P8444738686139081045

`A006519(or(2, A001462(n+1)))`
-/

namespace A321020.P8444738686139081045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.lor 2 (A001462 (n + 1))).toNat

end

end A321020.P8444738686139081045

namespace A321020

/-- `A006519(or(2, A001462(n+1)))` -/
def P8444738686139081045.Spec : Prop :=
  ∀ n, P8444738686139081045.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P12332111533648534166

`A000034(∑[char[A001463(n+1)]])`
-/

namespace A321020.P12332111533648534166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321020.P12332111533648534166

namespace A321020

/-- `A000034(∑[char[A001463(n+1)]])` -/
def P12332111533648534166.Spec : Prop :=
  ∀ n, P12332111533648534166.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P9818921897321434595

`A000035(A001462(n+1)+1)+1`
-/

namespace A321020.P9818921897321434595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001462 (n + 1) + 1).toNat + 1

end

end A321020.P9818921897321434595

namespace A321020

/-- `A000035(A001462(n+1)+1)+1` -/
def P9818921897321434595.Spec : Prop :=
  ∀ n, P9818921897321434595.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P12646126923654321428

`A133872(2*A001462(n+1))+1`
-/

namespace A321020.P12646126923654321428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * A001462 (n + 1)).toNat + 1

end

end A321020.P12646126923654321428

namespace A321020

/-- `A133872(2*A001462(n+1))+1` -/
def P12646126923654321428.Spec : Prop :=
  ∀ n, P12646126923654321428.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P11121254633247862049

`2-A021913(2*A001462(n+1))`
-/

namespace A321020.P11121254633247862049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A021913 (2 * A001462 (n + 1)).toNat

end

end A321020.P11121254633247862049

namespace A321020

/-- `2-A021913(2*A001462(n+1))` -/
def P11121254633247862049.Spec : Prop :=
  ∀ n, P11121254633247862049.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P1730591935791585859

`2-A166486(2*A001462(n+1))`
-/

namespace A321020.P1730591935791585859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A166486 (2 * A001462 (n + 1)).toNat

end

end A321020.P1730591935791585859

namespace A321020

/-- `2-A166486(2*A001462(n+1))` -/
def P1730591935791585859.Spec : Prop :=
  ∀ n, P1730591935791585859.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P2346863270721295116

`A055396(lcm(3, A001462(n+1)+1))`
-/

namespace A321020.P2346863270721295116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lcm 3 (A001462 (n + 1) + 1))

end

end A321020.P2346863270721295116

namespace A321020

/-- `A055396(lcm(3, A001462(n+1)+1))` -/
def P2346863270721295116.Spec : Prop :=
  ∀ n, P2346863270721295116.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P14505417124384494569

`∑{d}[A001462(n+1), C(A001462(#), #)]`
-/

namespace A321020.P14505417124384494569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (A001462 d).toNat d

end

end A321020.P14505417124384494569

namespace A321020

/-- `∑{d}[A001462(n+1), C(A001462(#), #)]` -/
def P14505417124384494569.Spec : Prop :=
  ∀ n, (P14505417124384494569.a n : ℤ) = A321020 (n + 1)

end A321020

/-! ## A321020.P13806266049511097165

`A001462(and(1, 1-A001462(n+1))+1)`
-/

namespace A321020.P13806266049511097165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.land 1 (1 - A001462 (n + 1)) + 1).toNat

end

end A321020.P13806266049511097165

namespace A321020

/-- `A001462(and(1, 1-A001462(n+1))+1)` -/
def P13806266049511097165.Spec : Prop :=
  ∀ n, P13806266049511097165.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P6831333478967126101

`A020639(A020639(A001462(n+1)+1)-1)`
-/

namespace A321020.P6831333478967126101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (A001462 (n + 1) + 1).toNat - 1).toNat

end

end A321020.P6831333478967126101

namespace A321020

/-- `A020639(A020639(A001462(n+1)+1)-1)` -/
def P6831333478967126101.Spec : Prop :=
  ∀ n, P6831333478967126101.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P6706938031152051700

`A006930(or(1, A001462(n+1))-A001462(n+1))`
-/

namespace A321020.P6706938031152051700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006930 (Int.lor 1 (A001462 (n + 1)) - A001462 (n + 1)).toNat

end

end A321020.P6706938031152051700

namespace A321020

/-- `A006930(or(1, A001462(n+1))-A001462(n+1))` -/
def P6706938031152051700.Spec : Prop :=
  ∀ n, P6706938031152051700.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P4333741121492636297

`A027994(or(1, A001462(n+1))-A001462(n+1))`
-/

namespace A321020.P4333741121492636297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027994 (Int.lor 1 (A001462 (n + 1)) - A001462 (n + 1)).toNat

end

end A321020.P4333741121492636297

namespace A321020

/-- `A027994(or(1, A001462(n+1))-A001462(n+1))` -/
def P4333741121492636297.Spec : Prop :=
  ∀ n, P4333741121492636297.a n = A321020 (n + 1)

end A321020

/-! ## A321020.P7809139496029480815

`A001462(or(1, A001462(n+1))-A001462(n+1)+1)`
-/

namespace A321020.P7809139496029480815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor 1 (A001462 (n + 1)) - A001462 (n + 1) + 1).toNat

end

end A321020.P7809139496029480815

namespace A321020

/-- `A001462(or(1, A001462(n+1))-A001462(n+1)+1)` -/
def P7809139496029480815.Spec : Prop :=
  ∀ n, P7809139496029480815.a n = A321020 (n + 1)

end A321020

/-!
# A321021: a(0)=0, a(1)=1; thereafter a(n) = a(n-2)+a(n-1), keeping just the digits that appear exactly once.

The programs for A321021, the canonical program `A321021.P782050274808834846` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321021 has offset 0).

The definition of A321021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321021.P782050274808834846

`A320486(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A321021

/-- `A320486(a(n-1)+a(n-2))` -/
def P782050274808834846.Spec : Prop :=
  ∀ n, P782050274808834846.a n = A321021 n

theorem P782050274808834846.correct : P782050274808834846.Spec := by
  intro n
  simp only [A321021]

end A321021

/-!
# A321022: The 100 terms of the cycle that A321021 goes into.

The programs for A321022, there is no canonical definition to state claims against.
-/

/-! ## A321022.P3762991852356384044

`A320486(a(n-1)+a(n-2))` with `a(0)=7, a(1)=0`
-/

namespace A321022.P3762991852356384044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n a =>
  A320486 (a (n - 1) + a (n - 2)).toNat

end

end A321022.P3762991852356384044

/-! ## A321022.P16545336276642639799

`A320486(a(n-1)-floor(-a(n-2)))` with `a(0)=7, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A321022.P16545336276642639799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n a =>
  A320486 (a (n - 1) - (-a (n - 2))).toNat

end

end A321022.P16545336276642639799

/-! ## A321022.P7810860384577762388

`A320486(a(n-1)-ceil(-a(n-2)))` with `a(0)=7, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A321022.P7810860384577762388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n a =>
  A320486 (a (n - 1) - (-a (n - 2))).toNat

end

end A321022.P7810860384577762388

/-! ## A321022.P6571690029633878230

`A320486(a(n-1)-round(-a(n-2)))` with `a(0)=7, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A321022.P6571690029633878230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n a =>
  A320486 (a (n - 1) - (-a (n - 2))).toNat

end

end A321022.P6571690029633878230

/-! ## A321022.P5112505817168185157

`A320486(a(n-1)-(char[1]-a(n-2)))` with `a(0)=7, a(1)=0`
-/

namespace A321022.P5112505817168185157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n a =>
  A320486 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A321022.P5112505817168185157

/-!
# A321024: Let j be one of the prime factors of k. Sequence lists numbers k such that the prime before j is a prime factor of k+1.

The programs for A321024, the canonical program `A321024.P9737378660482103548` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321024 has offset 1).

The definition of A321024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321024.P9997104123191869447

`lt[1, gcd(n, A003961(n+1))]`
-/

namespace A321024.P9997104123191869447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321024.P9997104123191869447

namespace A321024

/-- `lt[1, gcd(n, A003961(n+1))]` -/
def P9997104123191869447.Spec : Prop :=
  ∀ n, (P9997104123191869447.a n : ℤ) = A321024 (n + 1)

end A321024

/-! ## A321024.P9737378660482103548

`lt[1, gcd(A253885(n)+1, A004277(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A321024

/-- `lt[1, gcd(A253885(n)+1, A004277(n))]` -/
def P9737378660482103548.Spec : Prop :=
  ∀ n, (P9737378660482103548.a n : ℤ) = A321024 (n + 1)

theorem P9737378660482103548.correct : P9737378660482103548.Spec := by
  intro n
  simp only [A321024, Nat.add_sub_cancel]

end A321024

/-! ## A321024.P15492713051793255812

`lt[5, gcd(A008486(n), A249734(n+1))]`
-/

namespace A321024.P15492713051793255812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 n) (A249734 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321024.P15492713051793255812

namespace A321024

/-- `lt[5, gcd(A008486(n), A249734(n+1))]` -/
def P15492713051793255812.Spec : Prop :=
  ∀ n, (P15492713051793255812.a n : ℤ) = A321024 (n + 1)

end A321024

/-! ## A321024.P14747567075819609840

`lt[1, gcd(A336853(n+1)+1+n, A008574(n))]`
-/

namespace A321024.P14747567075819609840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336853 (n + 1) + 1 + (n : ℤ)) (A008574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321024.P14747567075819609840

namespace A321024

/-- `lt[1, gcd(A336853(n+1)+1+n, A008574(n))]` -/
def P14747567075819609840.Spec : Prop :=
  ∀ n, (P14747567075819609840.a n : ℤ) = A321024 (n + 1)

end A321024

/-! ## A321024.P563223548503459593

`lt[A092261(A300314(n+1)), ∑{e}[n+1, #]]`
-/

namespace A321024.P563223548503459593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (A300314 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321024.P563223548503459593

namespace A321024

/-- `lt[A092261(A300314(n+1)), ∑{e}[n+1, #]]` -/
def P563223548503459593.Spec : Prop :=
  ∀ n, (P563223548503459593.a n : ℤ) = A321024 (n + 1)

end A321024

/-!
# A321025: a(n) = sum of a(n-4) and a(n-5), with the lowest possible initial values that will generate a sequence where a(n) is always > a(n-1): 4, 5, 6, 7 and 8.

The programs for A321025, the canonical program `A321025.P7391836451531874051` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321025 has offset 1).

The definition of A321025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321025.P7391836451531874051

`a(n-4)+a(n-5)` with `a(0)=4, a(1)=5, a(2)=6, a(3)=7, a(4)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A321025

/-- `a(n-4)+a(n-5)` -/
def P7391836451531874051.Spec : Prop :=
  ∀ n, (P7391836451531874051.a n : ℤ) = A321025 (n + 1)

theorem P7391836451531874051.correct : P7391836451531874051.Spec := by
  intro n
  simp only [A321025, Nat.add_sub_cancel]

end A321025

/-! ## A321025.P1969276401129767726

`∑[A124789(n+3)]+4`
-/

namespace A321025.P1969276401129767726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A321025.P1969276401129767726

namespace A321025

/-- `∑[A124789(n+3)]+4` -/
def P1969276401129767726.Spec : Prop :=
  ∀ n, P1969276401129767726.a n = A321025 (n + 1)

end A321025

/-! ## A321025.P1703440409077382805

`A103372(n)+a(n-1)` with `a(0)=4`
-/

namespace A321025.P1703440409077382805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A103372 n + a (n - 1)

end

end A321025.P1703440409077382805

namespace A321025

/-- `A103372(n)+a(n-1)` -/
def P1703440409077382805.Spec : Prop :=
  ∀ n, P1703440409077382805.a n = A321025 (n + 1)

end A321025

/-! ## A321025.P5610441961347589656

`∑[A103372(A028310(n))]+3`
-/

namespace A321025.P5610441961347589656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A321025.P5610441961347589656

namespace A321025

/-- `∑[A103372(A028310(n))]+3` -/
def P5610441961347589656.Spec : Prop :=
  ∀ n, P5610441961347589656.a n = A321025 (n + 1)

end A321025

/-! ## A321025.P13994310572209610710

`A174522(n+1)+A174522(n+3)+2`
-/

namespace A321025.P13994310572209610710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174522 (n + 1) + (A174522 (n + 3) + 2)

end

end A321025.P13994310572209610710

namespace A321025

/-- `A174522(n+1)+A174522(n+3)+2` -/
def P13994310572209610710.Spec : Prop :=
  ∀ n, P13994310572209610710.a n = A321025 (n + 1)

end A321025

/-! ## A321025.P4777063781746371142

`A124789(n+7)+A124789(n+8)+A124789(n+10)`
-/

namespace A321025.P4777063781746371142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 7) + (A124789 (n + 8) + A124789 (n + 10))

end

end A321025.P4777063781746371142

namespace A321025

/-- `A124789(n+7)+A124789(n+8)+A124789(n+10)` -/
def P4777063781746371142.Spec : Prop :=
  ∀ n, P4777063781746371142.a n = A321025 (n + 1)

end A321025

/-! ## A321025.P11779677016701759544

`A017827(n+3)+A017827(n+13)+A017827(n+15)`
-/

namespace A321025.P11779677016701759544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (n + 3) + (A017827 (n + 13) + A017827 (n + 15))

end

end A321025.P11779677016701759544

namespace A321025

/-- `A017827(n+3)+A017827(n+13)+A017827(n+15)` -/
def P11779677016701759544.Spec : Prop :=
  ∀ n, P11779677016701759544.a n = A321025 (n + 1)

end A321025

/-! ## A321025.P18435798916717438942

`∑[A103372(A233583(n+1))]+3`
-/

namespace A321025.P18435798916717438942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A321025.P18435798916717438942

namespace A321025

/-- `∑[A103372(A233583(n+1))]+3` -/
def P18435798916717438942.Spec : Prop :=
  ∀ n, P18435798916717438942.a n = A321025 (n + 1)

end A321025

/-!
# A321027: Expansion of Product_{k>0} theta_3(q^(2*k))/theta_3(q^(2*k-1)), where theta_3() is the Jacobi theta function.

The programs for A321027, there is no canonical definition to state claims against.
-/

/-! ## A321027.P5637904948997579279

`A011973(A065738(n+1)+1)*A033999(n)`
-/

namespace A321027.P5637904948997579279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A065738 (n + 1) + 1).toNat * A033999 n

end

end A321027.P5637904948997579279

/-!
# A321028: a(n) = 6 + round(n^3) - (minimal number of squares in a dissection of an (n) X (n+1) oblong into squares).

The programs for A321028, there is no canonical definition to state claims against.
-/

/-! ## A321028.P10326572911350533233

`6+A105209(n+1)-A279317(n+1)`
-/

namespace A321028.P10326572911350533233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + A105209 (n + 1) - A279317 (n + 1)

end

end A321028.P10326572911350533233

/-!
# A321029: Number of integers x such that 1 <= x <= n and gcd(x,n) = gcd(x+4,n) = gcd(x+6,n) = gcd(x+10,n) = gcd(x+12,n) = 1.

The programs for A321029, there is no canonical definition to state claims against.
-/

/-! ## A321029.P17741318344861529266

`A048766(A319516(n+1)²*A321030(n+1))`
-/

namespace A321029.P17741318344861529266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A319516 (n + 1) ^ 2 * A321030 (n + 1)).toNat

end

end A321029.P17741318344861529266

/-! ## A321029.P17281138461066279878

`A048766(A319516(n+1)*A321030(n+1)*A319516(n+1))`
-/

namespace A321029.P17281138461066279878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A319516 (n + 1) * A321030 (n + 1) * A319516 (n + 1)).toNat

end

end A321029.P17281138461066279878

/-! ## A321029.P17107450521791512791

`A321030(n+1)+A321013(A324770(n+1))`
-/

namespace A321029.P17107450521791512791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (n + 1) + A321013 (A324770 (n + 1)).toNat

end

end A321029.P17107450521791512791

/-! ## A321029.P11503618362329058127

`A002034(gcd(A319516(n+1)!, A280668(n+1)))`
-/

namespace A321029.P11503618362329058127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.gcd (Nat.factorial (A319516 (n + 1)).toNat : ℤ) (A280668 (n + 1)))

end

end A321029.P11503618362329058127

/-! ## A321029.P5496359684518976342

`A094366(A113058(n+2))`
-/

namespace A321029.P5496359684518976342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094366 (A113058 (n + 2)).toNat

end

end A321029.P5496359684518976342

/-!
# A321030: Number of integers x such that 1 <= x <= n and gcd(x,n) = gcd(x+4,n) = gcd(x+6,n) = gcd(x+10,n) = gcd(x+12,n) = gcd(x+16,n) = 1.

The programs for A321030, there is no canonical definition to state claims against.
-/

/-! ## A321030.P17226404790778661876

`abs(A279228(2*(n+1))-(n+1)/∏{p}[n+1, #])`
-/

namespace A321030.P17226404790778661876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A279228 (2 * (n + 1)) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)|

end

end A321030.P17226404790778661876

/-!
# A321031: Number of words of length 3n such that the index set of occurring letters is {1, 2, ..., k}, all letters are introduced in ascending order, and the words can be built by repeatedly inserting triples into the initially empty word.

The programs for A321031, there is no canonical definition to state claims against.
-/

/-! ## A321031.P942027158655630460

`xor(A007814(A010965(n)), A136728(n))`
-/

namespace A321031.P942027158655630460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A010965 (n + 12)).toNat) (A136728 n)

end

end A321031.P942027158655630460

/-! ## A321031.P11290417405448152150

`xor(A037851(A136732(n)), A136728(n))`
-/

namespace A321031.P11290417405448152150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037851 (A136732 n).toNat) (A136728 n)

end

end A321031.P11290417405448152150

/-!
# A321032: Number of words of length 3n such that all letters of the binary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples into the initially empty word.

The programs for A321032, the canonical program `A321032.P17473703788572947665` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321032 has offset 2).

The definition of A321032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321032.P17473703788572947665

`A047099(n+2)-1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A321032

/-- `A047099(n+2)-1` -/
def P17473703788572947665.Spec : Prop :=
  ∀ n, P17473703788572947665.a n = A321032 (n + 2)

theorem P17473703788572947665.correct : P17473703788572947665.Spec := by
  intro n
  simp only [A321032, Nat.add_sub_cancel]

end A321032

/-! ## A321032.P1770794505978068162

`∑[abs(Δ[A047099(n+1)])]`
-/

namespace A321032.P1770794505978068162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321032.P1770794505978068162

namespace A321032

/-- `∑[abs(Δ[A047099(n+1)])]` -/
def P1770794505978068162.Spec : Prop :=
  ∀ n, P1770794505978068162.a n = A321032 (n + 2)

end A321032

/-! ## A321032.P6683838930660731420

`A047098(n+2)/2-1`
-/

namespace A321032.P6683838930660731420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047098 (n + 2) : ℚ) / 2 - 1

end

end A321032.P6683838930660731420

namespace A321032

/-- `A047098(n+2)/2-1` -/
def P6683838930660731420.Spec : Prop :=
  ∀ n, P6683838930660731420.a n = (A321032 (n + 2) : ℚ)

end A321032

/-! ## A321032.P4490089534043897303

`∑[Δ[A047098(n+1)]/2]`
-/

namespace A321032.P4490089534043897303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047098 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321032.P4490089534043897303

namespace A321032

/-- `∑[Δ[A047098(n+1)]/2]` -/
def P4490089534043897303.Spec : Prop :=
  ∀ n, P4490089534043897303.a n = (A321032 (n + 2) : ℚ)

end A321032

/-! ## A321032.P8013383474517746552

`record[Δ[A047099(A004736(n+1))]]`
-/

namespace A321032.P8013383474517746552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047099 (A004736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321032.P8013383474517746552

namespace A321032

/-- `record[Δ[A047099(A004736(n+1))]]` -/
def P8013383474517746552.Spec : Prop :=
  ∀ n, P8013383474517746552.a n = A321032 (n + 2)

end A321032

/-! ## A321032.P1838752616228118087

`A256311(∑[n+2]+3)`
-/

namespace A321032.P1838752616228118087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A321032.P1838752616228118087

namespace A321032

/-- `A256311(∑[n+2]+3)` -/
def P1838752616228118087.Spec : Prop :=
  ∀ n, P1838752616228118087.a n = A321032 (n + 2)

end A321032

/-!
# A321033: Number of words of length 3n such that all letters of the ternary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples into the initially empty word.

The programs for A321033, there is no canonical definition to state claims against.
-/

/-! ## A321033.P5620999022270018901

`A256311(A167614(n+2))`
-/

namespace A321033.P5620999022270018901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A167614 (n + 2)).toNat

end

end A321033.P5620999022270018901

/-! ## A321033.P14823444903808258030

`A256311(A052905(n)+8)`
-/

namespace A321033.P14823444903808258030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A052905 n + 8).toNat

end

end A321033.P14823444903808258030

/-! ## A321033.P17528490144806446749

`A256311(eq[2, A141169(n)])`
-/

namespace A321033.P17528490144806446749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321033.P17528490144806446749

/-! ## A321033.P16831477432214519579

`A256311(eq[3, A002262(n)])`
-/

namespace A321033.P16831477432214519579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321033.P16831477432214519579

/-! ## A321033.P9779806441705676371

`A256311(Δ[A005586(n)]+4)`
-/

namespace A321033.P9779806441705676371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (f1 (n + 1) - f1 n + 4).toNat

end

end A321033.P9779806441705676371

/-! ## A321033.P9618429766234437876

`A256311(A166136(n+2)-3)`
-/

namespace A321033.P9618429766234437876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A166136 (n + 2) - 3).toNat

end

end A321033.P9618429766234437876

/-! ## A321033.P9717343085738160318

`A256311(eq[4, A002260(n+1)])`
-/

namespace A321033.P9717343085738160318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321033.P9717343085738160318

/-! ## A321033.P1867500141974324141

`A256311(eq[1, A144328(n+1)-2])`
-/

namespace A321033.P1867500141974324141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321033.P1867500141974324141

/-! ## A321033.P11229719975731812179

`A256311(eq[2, A135223(n+1)-2])`
-/

namespace A321033.P11229719975731812179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321033.P11229719975731812179

/-! ## A321033.P17328207948670329845

`A256311(eq[2, A135223(n+1)/2])`
-/

namespace A321033.P17328207948670329845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135223 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A321033.P17328207948670329845

/-!
# A321034: Number of words of length 3n such that all letters of the quaternary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321034, there is no canonical definition to state claims against.
-/

/-! ## A321034.P3855486743461306816

`A256311(A155212(n)+12)`
-/

namespace A321034.P3855486743461306816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A155212 n + 12).toNat

end

end A321034.P3855486743461306816

/-! ## A321034.P10192166643375331879

`A256311(eq[3, A141169(n)])`
-/

namespace A321034.P10192166643375331879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321034.P10192166643375331879

/-! ## A321034.P12047950358624204128

`A256311(eq[4, A002262(n)])`
-/

namespace A321034.P12047950358624204128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321034.P12047950358624204128

/-! ## A321034.P6104998408358239017

`A256311(A167499(n+3)-1)`
-/

namespace A321034.P6104998408358239017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A167499 (n + 3) - 1).toNat

end

end A321034.P6104998408358239017

/-! ## A321034.P1934794836806843298

`A256311(eq[4, A144328(n+1)])`
-/

namespace A321034.P1934794836806843298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321034.P1934794836806843298

/-! ## A321034.P10771878939052842331

`A256311(eq[5, A002260(n+1)])`
-/

namespace A321034.P10771878939052842331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321034.P10771878939052842331

/-!
# A321035: Number of words of length 3n such that all letters of the quinary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321035, there is no canonical definition to state claims against.
-/

/-! ## A321035.P663848391184418971

`A256311(A167499(n+4))`
-/

namespace A321035.P663848391184418971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A167499 (n + 4)).toNat

end

end A321035.P663848391184418971

/-! ## A321035.P4406441181476010076

`A256311(eq[5, A002262(n)])`
-/

namespace A321035.P4406441181476010076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321035.P4406441181476010076

/-! ## A321035.P8703178434801417720

`A256311(eq[5, A144328(n+1)])`
-/

namespace A321035.P8703178434801417720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321035.P8703178434801417720

/-! ## A321035.P9703863554819091791

`A256311(eq[6, A002260(n+1)])`
-/

namespace A321035.P9703863554819091791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321035.P9703863554819091791

/-! ## A321035.P8210290750799985848

`A256311(eq[11, A158405(n+1)])`
-/

namespace A321035.P8210290750799985848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321035.P8210290750799985848

/-!
# A321036: Number of words of length 3n such that all letters of the senary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321036, there is no canonical definition to state claims against.
-/

/-! ## A321036.P2063420294911253082

`A256311(eq[6, A002262(n)])`
-/

namespace A321036.P2063420294911253082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321036.P2063420294911253082

/-! ## A321036.P2317813179086857511

`A256311(eq[8, A141169(n)])`
-/

namespace A321036.P2317813179086857511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321036.P2317813179086857511

/-! ## A321036.P9087012806341179445

`A256311(eq[64, A059268(n)])`
-/

namespace A321036.P9087012806341179445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321036.P9087012806341179445

/-! ## A321036.P7064638496711039604

`A256311(eq[6, A144328(n+1)])`
-/

namespace A321036.P7064638496711039604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321036.P7064638496711039604

/-! ## A321036.P10845878165561929280

`A256311(eq[7, A002260(n+1)])`
-/

namespace A321036.P10845878165561929280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321036.P10845878165561929280

/-! ## A321036.P15609200254733973158

`A256311(eq[7, A135223(n+1)])`
-/

namespace A321036.P15609200254733973158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321036.P15609200254733973158

/-! ## A321036.P11192912032264101402

`A256311(eq[8, A245093(n+1)])`
-/

namespace A321036.P11192912032264101402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321036.P11192912032264101402

/-!
# A321037: Number of words of length 3n such that all letters of the septenary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321037, there is no canonical definition to state claims against.
-/

/-! ## A321037.P3377578717708289768

`A256311(A167487(n+6))`
-/

namespace A321037.P3377578717708289768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A167487 (n + 6)).toNat

end

end A321037.P3377578717708289768

/-! ## A321037.P5185841593532589409

`A256311(eq[7, A002262(n)])`
-/

namespace A321037.P5185841593532589409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321037.P5185841593532589409

/-! ## A321037.P4025658235827166180

`A256311(eq[13, A141169(n)])`
-/

namespace A321037.P4025658235827166180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321037.P4025658235827166180

/-! ## A321037.P11917178211920698331

`A256311(A000124(n+7)+6)`
-/

namespace A321037.P11917178211920698331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A000124 (n + 7) + 6).toNat

end

end A321037.P11917178211920698331

/-! ## A321037.P8157882687333349395

`A256311(A000217(n+7)+7)`
-/

namespace A321037.P8157882687333349395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A000217 (n + 7) + 7).toNat

end

end A321037.P8157882687333349395

/-! ## A321037.P8183719718046976342

`A256311(eq[7, A144328(n+1)])`
-/

namespace A321037.P8183719718046976342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321037.P8183719718046976342

/-! ## A321037.P14312015833778130853

`A256311(eq[8, A002260(n+1)])`
-/

namespace A321037.P14312015833778130853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321037.P14312015833778130853

/-! ## A321037.P5540987235735809190

`A256311(eq[8, A135223(n+1)])`
-/

namespace A321037.P5540987235735809190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321037.P5540987235735809190

/-!
# A321038: Number of words of length 3n such that all letters of the octonary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321038, there is no canonical definition to state claims against.
-/

/-! ## A321038.P4555409742257492383

`A256311(eq[9, A002260(n+1)])`
-/

namespace A321038.P4555409742257492383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321038.P4555409742257492383

/-!
# A321039: Number of words of length 3n such that all letters of the nonary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321039, there is no canonical definition to state claims against.
-/

/-! ## A321039.P8456600933998979298

`A256311(eq[9, A002262(n)])`
-/

namespace A321039.P8456600933998979298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321039.P8456600933998979298

/-! ## A321039.P6410606579079624629

`A256311(eq[10, A002260(n+1)])`
-/

namespace A321039.P6410606579079624629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321039.P6410606579079624629

/-!
# A321040: Number of words of length 3n such that all letters of the denary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321040, there is no canonical definition to state claims against.
-/

/-! ## A321040.P6989898384024566773

`A256311(eq[11, A002260(n+1)])`
-/

namespace A321040.P6989898384024566773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321040.P6989898384024566773

/-!
# A321041: Number of words of length 6n such that all letters of the n-ary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A321041, there is no canonical definition to state claims against.
-/

/-! ## A321041.P17815172217016337966

`A256311(∑[4*n])`
-/

namespace A321041.P17815172217016337966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321041.P17815172217016337966

/-! ## A321041.P9244449442288042932

`gcd(A000038(n), A256311(A046092(n)))`
-/

namespace A321041.P9244449442288042932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A256311 (A046092 n).toNat)

end

end A321041.P9244449442288042932

/-! ## A321041.P15743552728014445733

`A256311(A046092(n))^A007318(∑[n])`
-/

namespace A321041.P15743552728014445733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256311 (A046092 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A321041.P15743552728014445733

/-! ## A321041.P193578893015579339

`A007318(C(n, 2))*A256311(A046092(n))`
-/

namespace A321041.P193578893015579339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A256311 (A046092 n).toNat

end

end A321041.P193578893015579339

/-! ## A321041.P16167158875271161238

`A256311(A046092(n))+A001222(((-1)^n)²)`
-/

namespace A321041.P16167158875271161238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 (A046092 n).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A321041.P16167158875271161238

/-!
# A321042: a(n) = [x^n] Product_{k>=1} (1 + x^k)^sigma_n(k).

The programs for A321042, there is no canonical definition to state claims against.
-/

/-! ## A321042.P5912781892258115762

`A321877(∑[4*n])`
-/

namespace A321042.P5912781892258115762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321042.P5912781892258115762

/-! ## A321042.P12021443152982391772

`A152847(n)*A321877(A046092(n))`
-/

namespace A321042.P12021443152982391772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A321877 (A046092 n).toNat

end

end A321042.P12021443152982391772

/-! ## A321042.P18052652423679942375

`A321877(A046092(n))^A178334(n)`
-/

namespace A321042.P18052652423679942375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321877 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A321042.P18052652423679942375

/-! ## A321042.P4713799786310317977

`gcd(A000038(n), A321877(A046092(n)))`
-/

namespace A321042.P4713799786310317977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321877 (A046092 n).toNat)

end

end A321042.P4713799786310317977

/-! ## A321042.P5741087645436058457

`A321877(A046092(n))^and(1, A000040(n+1))`
-/

namespace A321042.P5741087645436058457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321877 (A046092 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A321042.P5741087645436058457

/-!
# A321044: Irregular table related to f[(a*x+b)/(c*x+d)]=(c*x+d)^(2*n)*f[x], and f[x]=1/(x+1), f[x]=(a*x+b)/(c*x+d).

The programs for A321044, there is no canonical definition to state claims against.
-/

/-! ## A321044.P4583283380311210368

`A208510(round(sqrt(n+1))²+n)`
-/

namespace A321044.P4583283380311210368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)).toNat

end

end A321044.P4583283380311210368

/-!
# A321045: a(n) is the value of the first entry in the matrix A^n where A = [{1,2,3}, {4,5,6}, {7,8,9}].

The programs for A321045, there is no canonical definition to state claims against.
-/

/-! ## A321045.P11855349390151998430

`ceil(3^n/6*A189746(n+1))`
-/

namespace A321045.P11855349390151998430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 6 * (A189746 (n + 1) : ℚ)⌉

end

end A321045.P11855349390151998430

/-!
# A321046: Semiprimes for which the concatenation of the digits in the even positions and the concatenation of the digits in the odd positions are semiprimes.

The programs for A321046, there is no canonical definition to state claims against.
-/

/-! ## A321046.P16979428505926448852

`∩[A076802(n+1), A218697(n+1)]`
-/

namespace A321046.P16979428505926448852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321046.P16979428505926448852

/-!
# A321048: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals two.

The programs for A321048, the canonical program `A321048.P16547182447062518029` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321048 has offset 2).

The definition of A321048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321048.P16547182447062518029

`2*a(n-1)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=12, a(5)=24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A321048

/-- `2*a(n-1)-2*a(n-5)+a(n-6)` -/
def P16547182447062518029.Spec : Prop :=
  ∀ n, P16547182447062518029.a n = A321048 (n + 2)

theorem P16547182447062518029.correct : P16547182447062518029.Spec := by
  intro n
  simp only [A321048, Nat.add_sub_cancel]

end A321048

/-! ## A321048.P11179703431153620918

`A033305(n+2)-A059841(n+2)`
-/

namespace A321048.P11179703431153620918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 2) - A059841 (n + 2)

end

end A321048.P11179703431153620918

namespace A321048

/-- `A033305(n+2)-A059841(n+2)` -/
def P11179703431153620918.Spec : Prop :=
  ∀ n, P11179703431153620918.a n = A321048 (n + 2)

end A321048

/-! ## A321048.P15701613160023687233

`record[A033305(n)]-(n+1)%2`
-/

namespace A321048.P15701613160023687233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A321048.P15701613160023687233

namespace A321048

/-- `record[A033305(n)]-(n+1)%2` -/
def P15701613160023687233.Spec : Prop :=
  ∀ n, P15701613160023687233.a n = A321048 (n + 2)

end A321048

/-! ## A321048.P1861221802022101680

`∑[∑[A033305(n)]]-A033305(n)`
-/

namespace A321048.P1861221802022101680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033305 n

end

end A321048.P1861221802022101680

namespace A321048

/-- `∑[∑[A033305(n)]]-A033305(n)` -/
def P1861221802022101680.Spec : Prop :=
  ∀ n, P1861221802022101680.a n = A321048 (n + 2)

end A321048

/-! ## A321048.P1535843171378575719

`A000035(n)+record[A033305(n)-1]`
-/

namespace A321048.P1535843171378575719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321048.P1535843171378575719

namespace A321048

/-- `A000035(n)+record[A033305(n)-1]` -/
def P1535843171378575719.Spec : Prop :=
  ∀ n, P1535843171378575719.a n = A321048 (n + 2)

end A321048

/-! ## A321048.P13853231236918684316

`A033305(n+2)-A000035(n+1)`
-/

namespace A321048.P13853231236918684316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 2) - A000035 (n + 1)

end

end A321048.P13853231236918684316

namespace A321048

/-- `A033305(n+2)-A000035(n+1)` -/
def P13853231236918684316.Spec : Prop :=
  ∀ n, P13853231236918684316.a n = A321048 (n + 2)

end A321048

/-!
# A321049: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals three.

The programs for A321049, there is no canonical definition to state claims against.
-/

/-! ## A321049.P8026990299201756670

`A079997(n+3)-A033305(n+3)`
-/

namespace A321049.P8026990299201756670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079997 (n + 3) - A033305 (n + 3)

end

end A321049.P8026990299201756670

/-! ## A321049.P2521279328293132302

`A259784(A167614(n+2))`
-/

namespace A321049.P2521279328293132302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A167614 (n + 2)).toNat

end

end A321049.P2521279328293132302

/-! ## A321049.P10676247048775966941

`A259784(A141214(n)+6)`
-/

namespace A321049.P10676247048775966941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A141214 n + 6).toNat

end

end A321049.P10676247048775966941

/-! ## A321049.P17718519712843001786

`A259784(A055999(n)+9)`
-/

namespace A321049.P17718519712843001786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A055999 n + 9).toNat

end

end A321049.P17718519712843001786

/-! ## A321049.P13732299546657298182

`A259784(eq[3, A002262(n)])`
-/

namespace A321049.P13732299546657298182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321049.P13732299546657298182

/-!
# A321050: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals four.

The programs for A321050, there is no canonical definition to state claims against.
-/

/-! ## A321050.P9433414554878664365

`A259777(n+4)-A079997(n+4)`
-/

namespace A321050.P9433414554878664365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259777 (n + 4) - A079997 (n + 4)

end

end A321050.P9433414554878664365

/-! ## A321050.P13689669143095867792

`A259784(A155212(n)+12)`
-/

namespace A321050.P13689669143095867792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A155212 n + 12).toNat

end

end A321050.P13689669143095867792

/-! ## A321050.P5687957220139698575

`A259784(eq[4, A002262(n)])`
-/

namespace A321050.P5687957220139698575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321050.P5687957220139698575

/-! ## A321050.P10202891248470823637

`A259784(A000124(n+4)+3)`
-/

namespace A321050.P10202891248470823637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A000124 (n + 4) + 3).toNat

end

end A321050.P10202891248470823637

/-! ## A321050.P17759843552699783493

`A259784(A077169(n+5)-1)`
-/

namespace A321050.P17759843552699783493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A077169 (n + 5) - 1).toNat

end

end A321050.P17759843552699783493

/-!
# A321051: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals five.

The programs for A321051, there is no canonical definition to state claims against.
-/

/-! ## A321051.P942200472827407810

`A259778(n+5)-A259777(n+5)`
-/

namespace A321051.P942200472827407810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259778 (n + 5) - A259777 (n + 5)

end

end A321051.P942200472827407810

/-! ## A321051.P4288220007778456855

`A259784(A167499(n+4))`
-/

namespace A321051.P4288220007778456855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A167499 (n + 4)).toNat

end

end A321051.P4288220007778456855

/-! ## A321051.P14541402277542089168

`A259784(eq[5, A002262(n)])`
-/

namespace A321051.P14541402277542089168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321051.P14541402277542089168

/-! ## A321051.P8762525374535666289

`A259784(A000096(n+4)+6)`
-/

namespace A321051.P8762525374535666289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (A000096 (n + 4) + 6).toNat

end

end A321051.P8762525374535666289

/-! ## A321051.P830017038895814721

`A259784(eq[5, A025675(n+1)])`
-/

namespace A321051.P830017038895814721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321051.P830017038895814721

/-!
# A321052: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals six.

The programs for A321052, there is no canonical definition to state claims against.
-/

/-! ## A321052.P11905354408168707159

`A259779(n+6)-A259778(n+6)`
-/

namespace A321052.P11905354408168707159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259779 (n + 6) - A259778 (n + 6)

end

end A321052.P11905354408168707159

/-! ## A321052.P14684008189900761636

`A259784(eq[6, A002262(n)])`
-/

namespace A321052.P14684008189900761636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321052.P14684008189900761636

/-! ## A321052.P4427404146851681118

`A259784(eq[64, A059268(n)])`
-/

namespace A321052.P4427404146851681118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321052.P4427404146851681118

/-! ## A321052.P2831789926253230619

`A259784(eq[6, A025675(n+1)])`
-/

namespace A321052.P2831789926253230619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321052.P2831789926253230619

/-! ## A321052.P16892822587499325948

`A259784(eq[7, A002260(n+1)])`
-/

namespace A321052.P16892822587499325948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321052.P16892822587499325948

/-!
# A321053: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals seven.

The programs for A321053, there is no canonical definition to state claims against.
-/

/-! ## A321053.P7130174177245773

`A259780(n+7)-A259779(n+7)`
-/

namespace A321053.P7130174177245773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259780 (n + 7) - A259779 (n + 7)

end

end A321053.P7130174177245773

/-! ## A321053.P3196161351738087108

`A259784(eq[7, A002262(n)])`
-/

namespace A321053.P3196161351738087108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321053.P3196161351738087108

/-! ## A321053.P1830145924665156023

`A259784(eq[7, A025675(n+1)])`
-/

namespace A321053.P1830145924665156023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321053.P1830145924665156023

/-! ## A321053.P16791878180760358671

`A259784(eq[8, A002260(n+1)])`
-/

namespace A321053.P16791878180760358671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321053.P16791878180760358671

/-! ## A321053.P13587596472161068915

`A259784(eq[8, A134868(n+1)])`
-/

namespace A321053.P13587596472161068915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321053.P13587596472161068915

/-!
# A321054: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals eight.

The programs for A321054, there is no canonical definition to state claims against.
-/

/-! ## A321054.P1322088449785419190

`A259781(n+8)-A259780(n+8)`
-/

namespace A321054.P1322088449785419190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259781 (n + 8) - A259780 (n + 8)

end

end A321054.P1322088449785419190

/-! ## A321054.P16831238223746154754

`A259784(eq[8, A002262(n)])`
-/

namespace A321054.P16831238223746154754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321054.P16831238223746154754

/-! ## A321054.P4865343819553713842

`A259784(eq[8, A025668(n+1)])`
-/

namespace A321054.P4865343819553713842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321054.P4865343819553713842

/-! ## A321054.P17889096516496746555

`A259784(eq[8, A025675(n+1)])`
-/

namespace A321054.P17889096516496746555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321054.P17889096516496746555

/-! ## A321054.P11927124467922907903

`A259784(eq[9, A002260(n+1)])`
-/

namespace A321054.P11927124467922907903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321054.P11927124467922907903

/-!
# A321055: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals nine.

The programs for A321055, there is no canonical definition to state claims against.
-/

/-! ## A321055.P1952231399354215033

`A259782(n+9)-A259781(n+9)`
-/

namespace A321055.P1952231399354215033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259782 (n + 9) - A259781 (n + 9)

end

end A321055.P1952231399354215033

/-! ## A321055.P12609452132009343404

`A259784(eq[9, A002262(n)])`
-/

namespace A321055.P12609452132009343404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321055.P12609452132009343404

/-! ## A321055.P7380616407286310220

`A259784(eq[9, A025668(n+1)])`
-/

namespace A321055.P7380616407286310220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321055.P7380616407286310220

/-! ## A321055.P496719967883363153

`A259784(eq[9, A025675(n+1)])`
-/

namespace A321055.P496719967883363153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321055.P496719967883363153

/-! ## A321055.P16685862095227190517

`A259784(eq[10, A002260(n+1)])`
-/

namespace A321055.P16685862095227190517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321055.P16685862095227190517

/-!
# A321056: Number of permutations of [n] with no fixed points where the maximal displacement of an element equals ten.

The programs for A321056, there is no canonical definition to state claims against.
-/

/-! ## A321056.P6292306388172993185

`A259783(n+10)-A259782(n+10)`
-/

namespace A321056.P6292306388172993185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259783 (n + 10) - A259782 (n + 10)

end

end A321056.P6292306388172993185

/-! ## A321056.P207470241110146184

`A259784(eq[10, A002262(n)])`
-/

namespace A321056.P207470241110146184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321056.P207470241110146184

/-! ## A321056.P7495991988483680582

`A259784(eq[10, A025668(n+1)])`
-/

namespace A321056.P7495991988483680582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321056.P7495991988483680582

/-! ## A321056.P2059081702774259886

`A259784(eq[10, A025675(n+1)])`
-/

namespace A321056.P2059081702774259886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321056.P2059081702774259886

/-! ## A321056.P16662466150099499928

`A259784(eq[11, A002260(n+1)])`
-/

namespace A321056.P16662466150099499928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321056.P16662466150099499928

/-!
# A321057: a(n) = [x^n] Product_{k>=1} ((1 + x^k)/(1 - x^k))^sigma_n(k).

The programs for A321057, there is no canonical definition to state claims against.
-/

/-! ## A321057.P9771169202607893395

`A092569(A188224(∑[n]))`
-/

namespace A321057.P9771169202607893395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A188224 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A321057.P9771169202607893395

/-!
# A321058: Indices of records in A067849.

The programs for A321058, there is no canonical definition to state claims against.
-/

/-! ## A321058.P6381808382155166376

`record[A124516(floor(n/(xor(n, n+1)+1))+1)-1]`
-/

namespace A321058.P6381808382155166376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124516 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321058.P6381808382155166376

/-! ## A321058.P9196620494942551459

`record[A124516(A065648(n))-1]`
-/

namespace A321058.P9196620494942551459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124516 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321058.P9196620494942551459

/-! ## A321058.P6057411970577504700

`record[A124516(A349315(n))-1]`
-/

namespace A321058.P6057411970577504700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124516 (A349315 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321058.P6057411970577504700

/-! ## A321058.P3218735415878580275

`A124516(A020491(n+1))-1`
-/

namespace A321058.P3218735415878580275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124516 (A020491 (n + 1)).toNat - 1

end

end A321058.P3218735415878580275

/-! ## A321058.P3551562337233187307

`A124516(comp[∑[A039899(n)]])-1`
-/

namespace A321058.P3551562337233187307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124516 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A321058.P3551562337233187307

/-!
# A321059: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=3.

The programs for A321059, there is no canonical definition to state claims against.
-/

/-! ## A321059.P2527489179628245193

`A262372(A027379(n+2))`
-/

namespace A321059.P2527489179628245193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A027379 (n + 2)).toNat

end

end A321059.P2527489179628245193

/-! ## A321059.P2919167874888996692

`A262372(A167614(n+2))`
-/

namespace A321059.P2919167874888996692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A167614 (n + 2)).toNat

end

end A321059.P2919167874888996692

/-! ## A321059.P1485133522839739490

`A262372(A155212(n)+5)`
-/

namespace A321059.P1485133522839739490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A155212 n + 5).toNat

end

end A321059.P1485133522839739490

/-! ## A321059.P15140388551399107640

`A262372(A056000(n)+7)`
-/

namespace A321059.P15140388551399107640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A056000 n + 7).toNat

end

end A321059.P15140388551399107640

/-! ## A321059.P267001432637986705

`A262372(A055999(n)+9)`
-/

namespace A321059.P267001432637986705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A055999 n + 9).toNat

end

end A321059.P267001432637986705

/-!
# A321060: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=4.

The programs for A321060, there is no canonical definition to state claims against.
-/

/-! ## A321060.P3486087761929670820

`A262372(Δ[A264443(n)])`
-/

namespace A321060.P3486087761929670820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (f1 (n + 1) - f1 n).toNat

end

end A321060.P3486087761929670820

/-! ## A321060.P14261351256862852332

`A262372(A056000(n)+14)`
-/

namespace A321060.P14261351256862852332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A056000 n + 14).toNat

end

end A321060.P14261351256862852332

/-! ## A321060.P14081212342313509560

`A262372(eq[4, A002262(n)])`
-/

namespace A321060.P14081212342313509560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321060.P14081212342313509560

/-! ## A321060.P11301206317546262082

`A262372(eq[4, A193592(n)])`
-/

namespace A321060.P11301206317546262082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321060.P11301206317546262082

/-! ## A321060.P12831246293539766764

`A262372(eq[8, A140996(n)])`
-/

namespace A321060.P12831246293539766764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321060.P12831246293539766764

/-!
# A321061: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=5.

The programs for A321061, there is no canonical definition to state claims against.
-/

/-! ## A321061.P634827137829229078

`A262372(eq[3, A219347(n)])`
-/

namespace A321061.P634827137829229078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321061.P634827137829229078

/-! ## A321061.P17972046059164662976

`A262372(eq[5, A002262(n)])`
-/

namespace A321061.P17972046059164662976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321061.P17972046059164662976

/-! ## A321061.P10273861688899704147

`A262372(eq[5, A193592(n)])`
-/

namespace A321061.P10273861688899704147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321061.P10273861688899704147

/-! ## A321061.P11158058941739423579

`A262372(eq[6, A002260(n+1)])`
-/

namespace A321061.P11158058941739423579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321061.P11158058941739423579

/-! ## A321061.P15328750612032369048

`A262372(Δ[Δ[A006504(n+1)]])`
-/

namespace A321061.P15328750612032369048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (f1 (n + 1) - f1 n).toNat

end

end A321061.P15328750612032369048

/-!
# A321062: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=6.

The programs for A321062, there is no canonical definition to state claims against.
-/

/-! ## A321062.P7621850315093121568

`A262372(eq[4, A219347(n)])`
-/

namespace A321062.P7621850315093121568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321062.P7621850315093121568

/-! ## A321062.P4961044154070073816

`A262372(eq[6, A002262(n)])`
-/

namespace A321062.P4961044154070073816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321062.P4961044154070073816

/-! ## A321062.P3693711044937401946

`A262372(eq[6, A193592(n)])`
-/

namespace A321062.P3693711044937401946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321062.P3693711044937401946

/-! ## A321062.P15108241936477098818

`A262372(eq[7, A002260(n+1)])`
-/

namespace A321062.P15108241936477098818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321062.P15108241936477098818

/-! ## A321062.P8742242460291470878

`A262372(A000217(n+6)+n+1)`
-/

namespace A321062.P8742242460291470878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A321062.P8742242460291470878

/-!
# A321063: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=7.

The programs for A321063, there is no canonical definition to state claims against.
-/

/-! ## A321063.P8791545086614360978

`A262372(eq[5, A219347(n)])`
-/

namespace A321063.P8791545086614360978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321063.P8791545086614360978

/-! ## A321063.P1630326044541435517

`A262372(eq[7, A002262(n)])`
-/

namespace A321063.P1630326044541435517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321063.P1630326044541435517

/-! ## A321063.P15930436854981160647

`A262372(eq[7, A193592(n)])`
-/

namespace A321063.P15930436854981160647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321063.P15930436854981160647

/-! ## A321063.P17186857596840444642

`A262372(eq[7, A130270(n+1)])`
-/

namespace A321063.P17186857596840444642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321063.P17186857596840444642

/-! ## A321063.P5099020610611734225

`A262372(eq[8, A002260(n+1)])`
-/

namespace A321063.P5099020610611734225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321063.P5099020610611734225

/-!
# A321064: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=8.

The programs for A321064, there is no canonical definition to state claims against.
-/

/-! ## A321064.P3529903819466824381

`A262372(eq[6, A219347(n)])`
-/

namespace A321064.P3529903819466824381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321064.P3529903819466824381

/-! ## A321064.P7465944914797801645

`A262372(eq[8, A002262(n)])`
-/

namespace A321064.P7465944914797801645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321064.P7465944914797801645

/-! ## A321064.P11995322480958884702

`A262372(eq[9, A002260(n+1)])`
-/

namespace A321064.P11995322480958884702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321064.P11995322480958884702

/-!
# A321065: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=9.

The programs for A321065, there is no canonical definition to state claims against.
-/

/-! ## A321065.P6349465194905074489

`A262372(A000096(n+9)-8)`
-/

namespace A321065.P6349465194905074489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (A000096 (n + 9) - 8).toNat

end

end A321065.P6349465194905074489

/-! ## A321065.P3974782695959054807

`A262372(eq[10, A002260(n+1)])`
-/

namespace A321065.P3974782695959054807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321065.P3974782695959054807

/-!
# A321066: 

The programs for A321066, there is no canonical definition to state claims against.
-/

/-! ## A321066.P17693995896007559760

`A262372(eq[10, A002262(n)])`
-/

namespace A321066.P17693995896007559760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321066.P17693995896007559760

/-! ## A321066.P5024580585264193338

`A262372(eq[10, A193592(n)])`
-/

namespace A321066.P5024580585264193338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321066.P5024580585264193338

/-! ## A321066.P11361690797480313032

`A262372(eq[10, A219347(n)])`
-/

namespace A321066.P11361690797480313032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321066.P11361690797480313032

/-!
# A321068: a(n) = [x^n] Product_{k>=1} ((1 - x^k)/(1 + x^k))^sigma_n(k).

The programs for A321068, there is no canonical definition to state claims against.
-/

/-! ## A321068.P10386866932719758323

`A057187(A273873(n+1))-A050950(n+1)`
-/

namespace A321068.P10386866932719758323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057187 (A273873 (n + 1)).toNat - A050950 (n + 1)

end

end A321068.P10386866932719758323

/-!
# A321069: Greatest prime factor of n^3+2.

The programs for A321069, there is no canonical definition to state claims against.
-/

/-! ## A321069.P17349165128013806027

`A006530(Δ[∑[n]²]+2)`
-/

namespace A321069.P17349165128013806027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A321069.P17349165128013806027

/-! ## A321069.P18132090966256477066

`or(1, A006530((n+1)^3+2))`
-/

namespace A321069.P18132090966256477066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 ((n + 1) ^ 3 + 2))

end

end A321069.P18132090966256477066

/-! ## A321069.P8492478040742405289

`abs(2-A006530(Δ[C(n+1, 2)²]+2))+2`
-/

namespace A321069.P8492478040742405289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A006530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat| + 2

end

end A321069.P8492478040742405289

/-!
# A321070: Squares divisible by more than one cube > 1.

The programs for A321070, the canonical program `A321070.P3795502805426479328` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321070 has offset 1).

The definition of A321070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321070.P3795502805426479328

`A048108(n+1)²`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A321070

/-- `A048108(n+1)²` -/
def P3795502805426479328.Spec : Prop :=
  ∀ n, P3795502805426479328.a n = A321070 (n + 1)

theorem P3795502805426479328.correct : P3795502805426479328.Spec := by
  intro n
  simp only [A321070, Nat.add_sub_cancel]

end A321070

/-! ## A321070.P5973893294678083679

`∪[A036785(n+1), A046099(n+1)]²`
-/

namespace A321070.P5973893294678083679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P5973893294678083679

namespace A321070

/-- `∪[A036785(n+1), A046099(n+1)]²` -/
def P5973893294678083679.Spec : Prop :=
  ∀ n, (P5973893294678083679.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P4266164339386450849

`∪[A046099(n+1), A048111(n+1)]²`
-/

namespace A321070.P4266164339386450849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P4266164339386450849

namespace A321070

/-- `∪[A046099(n+1), A048111(n+1)]²` -/
def P4266164339386450849.Spec : Prop :=
  ∀ n, (P4266164339386450849.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P11341049095405251549

`∪[A048109(n+1), A048111(n+1)]²`
-/

namespace A321070.P11341049095405251549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P11341049095405251549

namespace A321070

/-- `∪[A048109(n+1), A048111(n+1)]²` -/
def P11341049095405251549.Spec : Prop :=
  ∀ n, (P11341049095405251549.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P5736979028060003470

`∪[A046099(n+1), A072413(n+1)]²`
-/

namespace A321070.P5736979028060003470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P5736979028060003470

namespace A321070

/-- `∪[A046099(n+1), A072413(n+1)]²` -/
def P5736979028060003470.Spec : Prop :=
  ∀ n, (P5736979028060003470.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P16603022994787921535

`∪[A046099(n+1), A082295(n+1)]²`
-/

namespace A321070.P16603022994787921535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P16603022994787921535

namespace A321070

/-- `∪[A046099(n+1), A082295(n+1)]²` -/
def P16603022994787921535.Spec : Prop :=
  ∀ n, (P16603022994787921535.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P9128494946575711686

`∪[A048111(n+1), A175496(n+1)]²`
-/

namespace A321070.P9128494946575711686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P9128494946575711686

namespace A321070

/-- `∪[A048111(n+1), A175496(n+1)]²` -/
def P9128494946575711686.Spec : Prop :=
  ∀ n, (P9128494946575711686.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P4934341725019758794

`∪[A048111(n+1), A176297(n+1)]²`
-/

namespace A321070.P4934341725019758794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P4934341725019758794

namespace A321070

/-- `∪[A048111(n+1), A176297(n+1)]²` -/
def P4934341725019758794.Spec : Prop :=
  ∀ n, (P4934341725019758794.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P17983153663614425651

`∪[A048111(n+1), A177899(n+1)]²`
-/

namespace A321070.P17983153663614425651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P17983153663614425651

namespace A321070

/-- `∪[A048111(n+1), A177899(n+1)]²` -/
def P17983153663614425651.Spec : Prop :=
  ∀ n, (P17983153663614425651.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P5810055505632116348

`∪[A048111(n+1), A195086(n+1)]²`
-/

namespace A321070.P5810055505632116348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P5810055505632116348

namespace A321070

/-- `∪[A048111(n+1), A195086(n+1)]²` -/
def P5810055505632116348.Spec : Prop :=
  ∀ n, (P5810055505632116348.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P322344115733177503

`∪[A048111(n+1), A240111(n+1)]²`
-/

namespace A321070.P322344115733177503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P322344115733177503

namespace A321070

/-- `∪[A048111(n+1), A240111(n+1)]²` -/
def P322344115733177503.Spec : Prop :=
  ∀ n, (P322344115733177503.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P11555201044135705379

`∪[A048111(n+1), A295661(n+1)]²`
-/

namespace A321070.P11555201044135705379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P11555201044135705379

namespace A321070

/-- `∪[A048111(n+1), A295661(n+1)]²` -/
def P11555201044135705379.Spec : Prop :=
  ∀ n, (P11555201044135705379.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P2893765092689737192

`∪[A048111(n+1), A301517(n+1)]²`
-/

namespace A321070.P2893765092689737192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P2893765092689737192

namespace A321070

/-- `∪[A048111(n+1), A301517(n+1)]²` -/
def P2893765092689737192.Spec : Prop :=
  ∀ n, (P2893765092689737192.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P11461786614759311189

`∪[A048111(n+1), A336593(n+1)]²`
-/

namespace A321070.P11461786614759311189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P11461786614759311189

namespace A321070

/-- `∪[A048111(n+1), A336593(n+1)]²` -/
def P11461786614759311189.Spec : Prop :=
  ∀ n, (P11461786614759311189.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P10457560434097155615

`∪[A036785(n+1), A375145(n+1)]²`
-/

namespace A321070.P10457560434097155615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P10457560434097155615

namespace A321070

/-- `∪[A036785(n+1), A375145(n+1)]²` -/
def P10457560434097155615.Spec : Prop :=
  ∀ n, (P10457560434097155615.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P15480209615674847429

`∪[A048111(n+1), A366761(n+1)]²`
-/

namespace A321070.P15480209615674847429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P15480209615674847429

namespace A321070

/-- `∪[A048111(n+1), A366761(n+1)]²` -/
def P15480209615674847429.Spec : Prop :=
  ∀ n, (P15480209615674847429.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P438152925623462200

`∪[A048111(n+1), A374590(n+1)]²`
-/

namespace A321070.P438152925623462200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A321070.P438152925623462200

namespace A321070

/-- `∪[A048111(n+1), A374590(n+1)]²` -/
def P438152925623462200.Spec : Prop :=
  ∀ n, (P438152925623462200.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P1572242278323772557

`A048108(n+1)*A048108((n+1)%A013929(n+1))`
-/

namespace A321070.P1572242278323772557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1) * A048108 (Int.tmod (n + 1 : ℤ) (A013929 (n + 1))).toNat

end

end A321070.P1572242278323772557

namespace A321070

/-- `A048108(n+1)*A048108((n+1)%A013929(n+1))` -/
def P1572242278323772557.Spec : Prop :=
  ∀ n, P1572242278323772557.a n = A321070 (n + 1)

end A321070

/-! ## A321070.P5265436270812440862

`(lt[2, A005361(n+1)]+1)²`
-/

namespace A321070.P5265436270812440862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A321070.P5265436270812440862

namespace A321070

/-- `(lt[2, A005361(n+1)]+1)²` -/
def P5265436270812440862.Spec : Prop :=
  ∀ n, (P5265436270812440862.a n : ℤ) = A321070 (n + 1)

end A321070

/-! ## A321070.P16622910408702099805

`(lt[2, A294875(n+1)]+1)²`
-/

namespace A321070.P16622910408702099805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A321070.P16622910408702099805

namespace A321070

/-- `(lt[2, A294875(n+1)]+1)²` -/
def P16622910408702099805.Spec : Prop :=
  ∀ n, (P16622910408702099805.a n : ℤ) = A321070 (n + 1)

end A321070

/-!
# A321072: 

The programs for A321072, there is no canonical definition to state claims against.
-/

/-! ## A321072.P15329244704848678821

`A321076(n)+A321077(n)-A321073(n)`
-/

namespace A321072.P15329244704848678821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321076 n + (A321077 n - A321073 n)

end

end A321072.P15329244704848678821

/-!
# A321074: Digits of one of the two 11-adic integers sqrt(3).

The programs for A321074, there is no canonical definition to state claims against.
-/

/-! ## A321074.P14822654418994746977

`A054977(n)+9-A321075(n)`
-/

namespace A321074.P14822654418994746977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (9 - A321075 n)

end

end A321074.P14822654418994746977

/-! ## A321074.P14642766990558097535

`A000007(n)+10-A321075(n)`
-/

namespace A321074.P14642766990558097535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (10 - A321075 n)

end

end A321074.P14642766990558097535

/-! ## A321074.P16458710222475882509

`11-(A321075(n)+A057427(n))`
-/

namespace A321074.P16458710222475882509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - (A321075 n + A057427 n)

end

end A321074.P16458710222475882509

/-! ## A321074.P8051844598717459905

`A057428(n)+11-A321075(n)`
-/

namespace A321074.P8051844598717459905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (11 - A321075 n)

end

end A321074.P8051844598717459905

/-! ## A321074.P16509586546570433993

`gcd(2, A109611(n+1))+9-A321075(n)`
-/

namespace A321074.P16509586546570433993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A109611 (n + 1)) : ℤ) + (9 - A321075 n)

end

end A321074.P16509586546570433993

/-! ## A321074.P16574614062649011720

`11-A321075(n)-(A001316(n)+1)%2`
-/

namespace A321074.P16574614062649011720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A321075 n - Int.tmod (A001316 n + 1) 2

end

end A321074.P16574614062649011720

/-! ## A321074.P4431767612072837421

`A321078(n)+A321079(n)-A321075(n)`
-/

namespace A321074.P4431767612072837421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321078 n + (A321079 n - A321075 n)

end

end A321074.P4431767612072837421

/-! ## A321074.P8960371500924296991

`11-A321075(n)-A052938(A016813(n))%(n+1)`
-/

namespace A321074.P8960371500924296991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A321075 n - Int.tmod (A052938 (A016813 n).toNat) (n + 1 : ℤ)

end

end A321074.P8960371500924296991

/-!
# A321075: Digits of one of the two 11-adic integers sqrt(3).

The programs for A321075, there is no canonical definition to state claims against.
-/

/-! ## A321075.P13717532843482267501

`(A321073(n+1)-A321073(n))/11^n`
-/

namespace A321075.P13717532843482267501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321073 (n + 1) - A321073 n : ℚ) / (11 ^ n : ℚ)

end

end A321075.P13717532843482267501

/-! ## A321075.P4928263493777302646

`A000007(n)+10-A321074(n)`
-/

namespace A321075.P4928263493777302646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (10 - A321074 n)

end

end A321075.P4928263493777302646

/-! ## A321075.P15897561435432875037

`11-(A321074(n)+A057427(n))`
-/

namespace A321075.P15897561435432875037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - (A321074 n + A057427 n)

end

end A321075.P15897561435432875037

/-! ## A321075.P4844195465718265150

`val(A000040(n+1), 2)+10-A321074(n)`
-/

namespace A321075.P4844195465718265150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (10 - A321074 n)

end

end A321075.P4844195465718265150

/-! ## A321075.P18304997317357218685

`val(A127334(n+1), 2)+10-A321074(n)`
-/

namespace A321075.P18304997317357218685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A127334 (n + 1)).toNat 2 : ℤ) + (10 - A321074 n)

end

end A321075.P18304997317357218685

/-! ## A321075.P1039726831458749371

`A008683(A022144(n))+10-A321074(n)`
-/

namespace A321075.P1039726831458749371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022144 n).toNat + (10 - A321074 n)

end

end A321075.P1039726831458749371

/-! ## A321075.P7451569889707305776

`A321078(n)+A321079(n)-A321074(n)`
-/

namespace A321075.P7451569889707305776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321078 n + (A321079 n - A321074 n)

end

end A321075.P7451569889707305776

/-! ## A321075.P1640175036749618923

`10-A321074(n)-A008683(A118962(n+1))`
-/

namespace A321075.P1640175036749618923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A321074 n - A008683 (A118962 (n + 1)).toNat

end

end A321075.P1640175036749618923

/-! ## A321075.P832431642217306515

`A089801(A089801(n)+n)+10-A321074(n)`
-/

namespace A321075.P832431642217306515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (A089801 n + (n : ℤ)).toNat + (10 - A321074 n)

end

end A321075.P832431642217306515

/-! ## A321075.P6938461212035455865

`11-A321074(n)-A112773(n+2)%2`
-/

namespace A321075.P6938461212035455865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A321074 n - Int.tmod (A112773 (n + 2)) 2

end

end A321075.P6938461212035455865

/-! ## A321075.P5092128140212694177

`val(4*(n+1), A045991(A111501(n+1)))+10-A321074(n)`
-/

namespace A321075.P5092128140212694177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (4 * (n + 1)) (A045991 (A111501 (n + 1)).toNat).toNat : ℤ) + (10 - A321074 n)

end

end A321075.P5092128140212694177

/-! ## A321075.P8245076406566933164

`A008683(A001597(n+1))+10-A321074(n)`
-/

namespace A321075.P8245076406566933164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001597 (n + 1)).toNat + (10 - A321074 n)

end

end A321075.P8245076406566933164

/-! ## A321075.P14520243853992533551

`A008683((n+1)²)+10-A321074(n)`
-/

namespace A321075.P14520243853992533551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (10 - A321074 n)

end

end A321075.P14520243853992533551

/-! ## A321075.P12171929174777886848

`A073424(A000124(n))+10-A321074(n)`
-/

namespace A321075.P12171929174777886848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A000124 n).toNat + (10 - A321074 n)

end

end A321075.P12171929174777886848

/-!
# A321078: Digits of one of the two 11-adic integers sqrt(5).

The programs for A321078, there is no canonical definition to state claims against.
-/

/-! ## A321078.P5679338332627929177

`(A321076(n+1)-A321076(n))/11^n`
-/

namespace A321078.P5679338332627929177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321076 (n + 1) - A321076 n : ℚ) / (11 ^ n : ℚ)

end

end A321078.P5679338332627929177

/-! ## A321078.P5309152314039964307

`10-A321079(A028310(n))`
-/

namespace A321078.P5309152314039964307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A321079 (A028310 n).toNat

end

end A321078.P5309152314039964307

/-! ## A321078.P2567507355823717928

`A054977(n)+9-A321079(n)`
-/

namespace A321078.P2567507355823717928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (9 - A321079 n)

end

end A321078.P2567507355823717928

/-! ## A321078.P14207094284330946931

`A000007(n)+10-A321079(n)`
-/

namespace A321078.P14207094284330946931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (10 - A321079 n)

end

end A321078.P14207094284330946931

/-! ## A321078.P5882999375858455903

`11-(A321079(n)+A057427(n))`
-/

namespace A321078.P5882999375858455903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - (A321079 n + A057427 n)

end

end A321078.P5882999375858455903

/-! ## A321078.P17886177460785899490

`A057428(n)+11-A321079(n)`
-/

namespace A321078.P17886177460785899490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (11 - A321079 n)

end

end A321078.P17886177460785899490

/-! ## A321078.P14156434091331133993

`11-A321079(n)-gcd(n, A165586(n))`
-/

namespace A321078.P14156434091331133993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A321079 n - (Int.gcd (n : ℤ) (A165586 n) : ℤ)

end

end A321078.P14156434091331133993

/-! ## A321078.P12236404046621834446

`A321074(n)+A321075(n)-A321079(n)`
-/

namespace A321078.P12236404046621834446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321074 n + (A321075 n - A321079 n)

end

end A321078.P12236404046621834446

/-! ## A321078.P3517696393832429566

`11-A321079(n)-char[A038722(n+1)]`
-/

namespace A321078.P3517696393832429566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A321079 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321078.P3517696393832429566

/-! ## A321078.P18129596767262426874

`11-A321079(n)-A165586(n²)`
-/

namespace A321078.P18129596767262426874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A321079 n - A165586 (n ^ 2)

end

end A321078.P18129596767262426874

/-!
# A321079: Digits of one of the two 11-adic integers sqrt(5).

The programs for A321079, there is no canonical definition to state claims against.
-/

/-! ## A321079.P15100772877796972738

`(A321077(n+1)-A321077(n))/11^n`
-/

namespace A321079.P15100772877796972738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321077 (n + 1) - A321077 n : ℚ) / (11 ^ n : ℚ)

end

end A321079.P15100772877796972738

/-! ## A321079.P13953351854691436603

`A000007(n)+10-A321078(n)`
-/

namespace A321079.P13953351854691436603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (10 - A321078 n)

end

end A321079.P13953351854691436603

/-! ## A321079.P14140785401059591289

`11-(A321078(n)+A057427(n))`
-/

namespace A321079.P14140785401059591289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - (A321078 n + A057427 n)

end

end A321079.P14140785401059591289

/-! ## A321079.P10765756271150614237

`A209229(2*n+1)+10-A321078(n)`
-/

namespace A321079.P10765756271150614237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1) + (10 - A321078 n)

end

end A321079.P10765756271150614237

/-! ## A321079.P12461611703401014388

`A008683(A022144(n))+10-A321078(n)`
-/

namespace A321079.P12461611703401014388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022144 n).toNat + (10 - A321078 n)

end

end A321079.P12461611703401014388

/-! ## A321079.P2903023224585329113

`A321074(n)+A321075(n)-A321078(n)`
-/

namespace A321079.P2903023224585329113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321074 n + (A321075 n - A321078 n)

end

end A321079.P2903023224585329113

/-! ## A321079.P3811066021527174219

`A010051(A053319(n+1))+10-A321078(n)`
-/

namespace A321079.P3811066021527174219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A053319 (n + 1)).toNat + (10 - A321078 n)

end

end A321079.P3811066021527174219

/-! ## A321079.P4195625038562042562

`A000034(A125509(n))+9-A321078(n)`
-/

namespace A321079.P4195625038562042562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A125509 n).toNat + (9 - A321078 n)

end

end A321079.P4195625038562042562

/-! ## A321079.P16602080443008116478

`A014963(A016825(n))+9-A321078(n)`
-/

namespace A321079.P16602080443008116478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat + (9 - A321078 n)

end

end A321079.P16602080443008116478

/-! ## A321079.P1494950554947887029

`A014963(A017113(n))+9-A321078(n)`
-/

namespace A321079.P1494950554947887029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017113 n).toNat + (9 - A321078 n)

end

end A321079.P1494950554947887029

/-! ## A321079.P7570440384494311762

`A008683((n+1)²)+10-A321078(n)`
-/

namespace A321079.P7570440384494311762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (10 - A321078 n)

end

end A321079.P7570440384494311762

/-!
# A321080: Approximations up to 2^n for 2-adic integer log_5(-3).

The programs for A321080, there is no canonical definition to state claims against.
-/

/-! ## A321080.P11349993025166475661

`∑[and(A131577(n), A215243(n))]`
-/

namespace A321080.P11349993025166475661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131577 n) (A215243 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321080.P11349993025166475661

/-! ## A321080.P15329204691001299311

`∑[and(A102636(n+5), A131577(n))]`
-/

namespace A321080.P15329204691001299311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102636 (n + 5)) (A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321080.P15329204691001299311

/-! ## A321080.P5974843486279408119

`A319665(2^(n+1))`
-/

namespace A321080.P5974843486279408119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319665 (2 ^ (n + 1))

end

end A321080.P5974843486279408119

/-! ## A321080.P1747997576918928909

`and(A106839(A309753(n)), A325894(n))`
-/

namespace A321080.P1747997576918928909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106839 (A309753 n).toNat) (A325894 n)

end

end A321080.P1747997576918928909

/-! ## A321080.P16535181690627530422

`5^a(n-1)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=3, a(5)=3, a(6)=35, a(7)=35, a(8)=163`
-/

namespace A321080.P16535181690627530422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 3, 3, 35, 35, 163] fun n a =>
  5 ^ a (n - 1)

end

end A321080.P16535181690627530422

/-!
# A321081: Digits of the 2-adic integer log_5(-3).

The programs for A321081, there is no canonical definition to state claims against.
-/

/-! ## A321081.P2534999011651087078

`ceil(Δ[atan(A321080(n+2))])`
-/

namespace A321081.P2534999011651087078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A321080 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A321081.P2534999011651087078

/-! ## A321081.P15627347327258461955

`Δ[A321080(n+2)]/A000079(n)`
-/

namespace A321081.P15627347327258461955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321080 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A321081.P15627347327258461955

/-! ## A321081.P7119767521149953276

`Δ[A321080(n+2)]/Δ[A000051(n)]`
-/

namespace A321081.P7119767521149953276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321080 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A321081.P7119767521149953276

/-! ## A321081.P3995081595631729684

`Δ[A321080(n+2)]/(Δ[A000295(n)]+1)`
-/

namespace A321081.P3995081595631729684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321080 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n + 1 : ℚ)

end

end A321081.P3995081595631729684

/-! ## A321081.P3756371681865586932

`ceil(Δ[A321080(n+2)]/A001998(n))`
-/

namespace A321081.P3756371681865586932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321080 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A001998 n : ℚ)⌉

end

end A321081.P3756371681865586932

/-!
# A321082: Approximations up to 2^n for 2-adic integer log_(-3)(5).

The programs for A321082, there is no canonical definition to state claims against.
-/

/-! ## A321082.P16258905737577195638

`A319666(2^n+2)`
-/

namespace A321082.P16258905737577195638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319666 (2 ^ n + 2)

end

end A321082.P16258905737577195638

/-! ## A321082.P4397019487285931421

`A177058(A318961(n+2))%(2^n)`
-/

namespace A321082.P4397019487285931421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177058 (A318961 (n + 2)).toNat) (2 ^ n : ℤ)

end

end A321082.P4397019487285931421

/-! ## A321082.P8668080110018583734

`and(A000225(n), A177058(A318961(n+2)))`
-/

namespace A321082.P8668080110018583734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A177058 (A318961 (n + 2)).toNat)

end

end A321082.P8668080110018583734

/-! ## A321082.P7122697327867195120

`∑[and(ceil(2^(n-1)), A354909(2*n))]`
-/

namespace A321082.P7122697327867195120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A354909 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321082.P7122697327867195120

/-! ## A321082.P6213774271424376010

`(-3)^a(n-1)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=11, a(5)=11, a(6)=11, a(7)=11, a(8)=11, a(9)=267`
-/

namespace A321082.P6213774271424376010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 3, 3, 11, 11, 11, 11, 11, 267] fun n a =>
  (-3 : ℝ) ^ (a (n - 1))

end

end A321082.P6213774271424376010

/-!
# A321083: Digits of the 2-adic integer log_(-3)(5).

The programs for A321083, there is no canonical definition to state claims against.
-/

/-! ## A321083.P3345909565385738194

`ceil(Δ[atan(A321082(n+2))])`
-/

namespace A321083.P3345909565385738194
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A321082 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A321083.P3345909565385738194

/-! ## A321083.P8967134006837938289

`Δ[A321082(n+2)]/A000079(n)`
-/

namespace A321083.P8967134006837938289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321082 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A321083.P8967134006837938289

/-! ## A321083.P8722149876196540368

`ceil(Δ[A321082(n+2)/A011782(n)])`
-/

namespace A321083.P8722149876196540368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321082 (n + 2) : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A321083.P8722149876196540368

/-! ## A321083.P1466621256968033452

`Δ[A321082(n+2)]/record[A122111(n+1)]`
-/

namespace A321083.P1466621256968033452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321082 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A321083.P1466621256968033452

/-! ## A321083.P5048556026064789475

`ceil(Δ[A321082(n+2)]/A173033(n))`
-/

namespace A321083.P5048556026064789475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A173033 n : ℚ)⌉

end

end A321083.P5048556026064789475

/-!
# A321084: Primes prime(n) such that 1 + Sum_{k=1..n} 2^(prime(k)-1) is prime.

The programs for A321084, there is no canonical definition to state claims against.
-/

/-! ## A321084.P4394685113709344031

`2*A056805(a(n-1))+1` with `a(0)=2`
-/

namespace A321084.P4394685113709344031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A056805 (a (n - 1)).toNat + 1

end

end A321084.P4394685113709344031

/-!
# A321085: O.g.f. A(x) satisfies: [x^n] exp(-n*A(x)) / (1 - n*x - n*x^2) = 0, for n > 0.

The programs for A321085, there is no canonical definition to state claims against.
-/

/-! ## A321085.P1040158879227006005

`(n+1)*A098294(A323772(n))`
-/

namespace A321085.P1040158879227006005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098294 (A323772 n).toNat

end

end A321085.P1040158879227006005

/-! ## A321085.P9224817250719077496

`A065033(A292976(n)+A141351(n))`
-/

namespace A321085.P9224817250719077496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A292976 n + A141351 n).toNat

end

end A321085.P9224817250719077496

/-!
# A321086: O.g.f. A(x) satisfies: [x^n] exp(n*A(x)) * (1 - n*x - n*x^2) = 0, for n > 0.

The programs for A321086, there is no canonical definition to state claims against.
-/

/-! ## A321086.P6444678908592613125

`A255808(A324352(n)+1)`
-/

namespace A321086.P6444678908592613125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255808 (A324352 n + 1).toNat

end

end A321086.P6444678908592613125

/-! ## A321086.P2958955945989850516

`A220662(A278222(n)+A058309(n))`
-/

namespace A321086.P2958955945989850516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220662 (A278222 n + A058309 n).toNat

end

end A321086.P2958955945989850516

/-!
# A321087: O.g.f. A(x) satisfies: [x^n] exp(n*A(x)) * (1 - n*x/(1-x)) = 0, for n > 0.

The programs for A321087, there is no canonical definition to state claims against.
-/

/-! ## A321087.P13685105551581682709

`and(A058933(A286918(n)), A286914(n+1))`
-/

namespace A321087.P13685105551581682709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058933 (A286918 n).toNat) (A286914 (n + 1))

end

end A321087.P13685105551581682709

/-! ## A321087.P6985167429113975774

`A004396(A324353(n)+A000930(n))+n`
-/

namespace A321087.P6985167429113975774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A324353 n + A000930 n).toNat + (n : ℤ)

end

end A321087.P6985167429113975774

/-!
# A321089: G.f.: Sum_{n>=0} ((1+x)^(n+1) - 1)^n.

The programs for A321089, there is no canonical definition to state claims against.
-/

/-! ## A321089.P6993232302295650545

`A002264(3^n*n!)+∏[floor(abs(3*n-ϕ))]`
-/

namespace A321089.P6993232302295650545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 ^ n * Nat.factorial n) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321089.P6993232302295650545

/-!
# A321090: Sequence {a(n), n>=0} satisfying the continued fraction relation: if z = [a(0) + 1; a(1) + 1, a(2) + 1, a(3) + 1, ..., a(n) + 1, ...], then 3*z = [a(0) + 9; a(1) + 11, a(2) + 11, a(3) + 11, ..., a(n) + 11, ...].

The programs for A321090, there is no canonical definition to state claims against.
-/

/-! ## A321090.P3455507956884564562

`floor(log(A321097(n)))`
-/

namespace A321090.P3455507956884564562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A321097 n : ℝ)⌋

end

end A321090.P3455507956884564562

/-! ## A321090.P6807299334441130445

`ceil(log(A321091(n)))`
-/

namespace A321090.P6807299334441130445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A321091 n : ℝ)⌉

end

end A321090.P6807299334441130445

/-! ## A321090.P5383362066227490660

`floor(log2(A321093(n)))`
-/

namespace A321090.P5383362066227490660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A321093 n).toNat

end

end A321090.P5383362066227490660

/-! ## A321090.P3518731011906545540

`round(log(A321095(n)))`
-/

namespace A321090.P3518731011906545540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A321095 n : ℝ))

end

end A321090.P3518731011906545540

/-! ## A321090.P1166555955842582217

`A321091(n)-A054977(n)`
-/

namespace A321090.P1166555955842582217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n - A054977 n

end

end A321090.P1166555955842582217

/-! ## A321090.P3671774127156886596

`A321093(n)-A321091(n)`
-/

namespace A321090.P3671774127156886596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n - A321091 n

end

end A321090.P3671774127156886596

/-! ## A321090.P11646511239213586295

`A321095(n)-A321093(n)`
-/

namespace A321090.P11646511239213586295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321095 n - A321093 n

end

end A321090.P11646511239213586295

/-! ## A321090.P2272462399042474970

`A321097(n)-A321095(n)`
-/

namespace A321090.P2272462399042474970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 n - A321095 n

end

end A321090.P2272462399042474970

/-! ## A321090.P10787362574579959631

`A010177(n)%A321091(n)`
-/

namespace A321090.P10787362574579959631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010177 n) (A321091 n)

end

end A321090.P10787362574579959631

/-! ## A321090.P7209767587716741540

`A040484(n)%A321091(n)`
-/

namespace A321090.P7209767587716741540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040484 n) (A321091 n)

end

end A321090.P7209767587716741540

/-! ## A321090.P3029186590733084095

`A040487(n)%A321091(n)`
-/

namespace A321090.P3029186590733084095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040487 n) (A321091 n)

end

end A321090.P3029186590733084095

/-! ## A321090.P12274374904440811484

`A040650(n)%A321093(n)`
-/

namespace A321090.P12274374904440811484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040650 n) (A321093 n)

end

end A321090.P12274374904440811484

/-! ## A321090.P11794659688686062790

`A061351(n)%A321091(n)`
-/

namespace A321090.P11794659688686062790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061351 n) (A321091 n)

end

end A321090.P11794659688686062790

/-! ## A321090.P4598426197249580348

`A073609(n)%A321091(n)`
-/

namespace A321090.P4598426197249580348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073609 n) (A321091 n)

end

end A321090.P4598426197249580348

/-! ## A321090.P9104141337624730666

`A003627(n+1)%A321091(n)`
-/

namespace A321090.P9104141337624730666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003627 (n + 1)) (A321091 n)

end

end A321090.P9104141337624730666

/-! ## A321090.P7155074027479789965

`A005384(n+1)%A321091(n)`
-/

namespace A321090.P7155074027479789965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (n + 1)) (A321091 n)

end

end A321090.P7155074027479789965

/-! ## A321090.P1693868933415352850

`A007700(n+1)%A321091(n)`
-/

namespace A321090.P1693868933415352850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007700 (n + 1)) (A321091 n)

end

end A321090.P1693868933415352850

/-! ## A321090.P17885746569469752265

`A023214(n+1)%A321091(n)`
-/

namespace A321090.P17885746569469752265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023214 (n + 1)) (A321091 n)

end

end A321090.P17885746569469752265

/-! ## A321090.P13740210076242987383

`A023228(n+1)%A321091(n)`
-/

namespace A321090.P13740210076242987383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023228 (n + 1)) (A321091 n)

end

end A321090.P13740210076242987383

/-! ## A321090.P11508134222378295102

`A023231(n+1)%A321091(n)`
-/

namespace A321090.P11508134222378295102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023231 (n + 1)) (A321091 n)

end

end A321090.P11508134222378295102

/-!
# A321091: Continued fraction expansion of the constant z that satisfies: CF(3*z, n) = CF(z, n) + 10, for n >= 0, where CF(z, n) denotes the n-th partial denominator in the continued fraction expansion of z.

The programs for A321091, there is no canonical definition to state claims against.
-/

/-! ## A321091.P4026868744957773494

`A321093(n)-A321090(n)`
-/

namespace A321091.P4026868744957773494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n - A321090 n

end

end A321091.P4026868744957773494

/-! ## A321091.P17779532437503828091

`A321095(n)-2*A321090(n)`
-/

namespace A321091.P17779532437503828091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321095 n - 2 * A321090 n

end

end A321091.P17779532437503828091

/-! ## A321091.P5306489566159131823

`A321097(n)-3*A321090(n)`
-/

namespace A321091.P5306489566159131823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 n - 3 * A321090 n

end

end A321091.P5306489566159131823

/-! ## A321091.P16300332486240769995

`ceil(A321097(n)/3)`
-/

namespace A321091.P16300332486240769995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321097 n : ℚ) / 3⌉

end

end A321091.P16300332486240769995

/-! ## A321091.P3777580036115354832

`A321090(n)+A054977(n)`
-/

namespace A321091.P3777580036115354832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + A054977 n

end

end A321091.P3777580036115354832

/-! ## A321091.P14205505793480276111

`A000007(n)+A321090(n)+1`
-/

namespace A321091.P14205505793480276111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A321090 n + 1)

end

end A321091.P14205505793480276111

/-! ## A321091.P13233785427602932223

`2*A321093(n)-A321095(n)`
-/

namespace A321091.P13233785427602932223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321093 n - A321095 n

end

end A321091.P13233785427602932223

/-! ## A321091.P16633539824624533023

`round(A000007(n)+A321093(n)/2)`
-/

namespace A321091.P16633539824624533023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℚ) + (A321093 n : ℚ) / 2)

end

end A321091.P16633539824624533023

/-! ## A321091.P15890345292644714426

`A335545(a(n-1))+A321090(n)` with `a(0)=4`
-/

namespace A321091.P15890345292644714426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A335545 (a (n - 1)).toNat + A321090 n

end

end A321091.P15890345292644714426

/-! ## A321091.P10543014355046554608

`A321093(n)-(A321097(n)-A321095(n))`
-/

namespace A321091.P10543014355046554608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n - (A321097 n - A321095 n)

end

end A321091.P10543014355046554608

/-! ## A321091.P9787833391975713708

`A321090(n)+A017990(C(A321090(n), n))`
-/

namespace A321091.P9787833391975713708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + A017990 (Nat.choose (A321090 n).toNat n)

end

end A321091.P9787833391975713708

/-! ## A321091.P14813150151196840440

`A321090(n)+A113098(C(A321090(n), n))`
-/

namespace A321091.P14813150151196840440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + A113098 (Nat.choose (A321090 n).toNat n)

end

end A321091.P14813150151196840440

/-! ## A321091.P15558640555404510251

`A321090(n)+A131300(C(A321090(n), n))`
-/

namespace A321091.P15558640555404510251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + A131300 (Nat.choose (A321090 n).toNat n)

end

end A321091.P15558640555404510251

/-! ## A321091.P17068949258643920572

`A321090(n)+A002260(A114919(a(n-1))+1)` with `a(0)=4`
-/

namespace A321091.P17068949258643920572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A321090 n + A002260 (A114919 (a (n - 1)).toNat + 1).toNat

end

end A321091.P17068949258643920572

/-! ## A321091.P18431049923907665756

`A321090(n)+A321090(A025716(a(n-1)+1))` with `a(0)=4`
-/

namespace A321091.P18431049923907665756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A321090 n + A321090 (A025716 (a (n - 1) + 1).toNat).toNat

end

end A321091.P18431049923907665756

/-! ## A321091.P11160330703115174757

`A321090(n)+A014963(4*n+2)`
-/

namespace A321091.P11160330703115174757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + A014963 (4 * n + 2)

end

end A321091.P11160330703115174757

/-! ## A321091.P3835703351135078616

`A321090(n)+3-A020639(A246037(n))`
-/

namespace A321091.P3835703351135078616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + 3 - A020639 (A246037 n).toNat

end

end A321091.P3835703351135078616

/-!
# A321093: Continued fraction expansion of the constant z that satisfies: CF(4*z, n) = CF(z, n) + 21, for n >= 0, where CF(z, n) denotes the n-th partial denominator in the continued fraction expansion of z.

The programs for A321093, there is no canonical definition to state claims against.
-/

/-! ## A321093.P16546563612241467863

`A321091(n)+A321090(n)`
-/

namespace A321093.P16546563612241467863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n + A321090 n

end

end A321093.P16546563612241467863

/-! ## A321093.P12896886218791708339

`A321095(n)-A321090(n)`
-/

namespace A321093.P12896886218791708339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321095 n - A321090 n

end

end A321093.P12896886218791708339

/-! ## A321093.P5379486305894309458

`A321097(n)-2*A321090(n)`
-/

namespace A321093.P5379486305894309458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 n - 2 * A321090 n

end

end A321093.P5379486305894309458

/-! ## A321093.P11731829291987181377

`round(γ*A321097(n))`
-/

namespace A321093.P11731829291987181377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant * (A321097 n : ℝ))

end

end A321093.P11731829291987181377

/-! ## A321093.P3064012027827647459

`A004589(a(A321090(n)))` with `a(0)=6`
-/

namespace A321093.P3064012027827647459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A004589 (a (A321090 n).toNat).toNat

end

end A321093.P3064012027827647459

/-! ## A321093.P17106291210964481604

`A040829(a(A321090(n)))` with `a(0)=6`
-/

namespace A321093.P17106291210964481604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A040829 (a (A321090 n).toNat).toNat

end

end A321093.P17106291210964481604

/-! ## A321093.P16096082242250148649

`A047706(a(A321090(n)))` with `a(0)=6`
-/

namespace A321093.P16096082242250148649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A047706 (a (A321090 n).toNat).toNat

end

end A321093.P16096082242250148649

/-! ## A321093.P7656547012235061043

`A056753(a(A321090(n)))` with `a(0)=6`
-/

namespace A321093.P7656547012235061043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A056753 (a (A321090 n).toNat).toNat

end

end A321093.P7656547012235061043

/-! ## A321093.P7120994799003277732

`A114567(a(A321090(n)))` with `a(0)=6`
-/

namespace A321093.P7120994799003277732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A114567 (a (A321090 n).toNat).toNat

end

end A321093.P7120994799003277732

/-! ## A321093.P4656902252963389508

`A000265(a(A321090(n))+2)` with `a(0)=6`
-/

namespace A321093.P4656902252963389508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A000265 (a (A321090 n).toNat + 2).toNat

end

end A321093.P4656902252963389508

/-! ## A321093.P11051761704184388629

`A054977(n)+2*A321090(n)`
-/

namespace A321093.P11051761704184388629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + 2 * A321090 n

end

end A321093.P11051761704184388629

/-! ## A321093.P9931665521960503780

`2*A321091(n)-A054977(n)`
-/

namespace A321093.P9931665521960503780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321091 n - A054977 n

end

end A321093.P9931665521960503780

/-! ## A321093.P829093519127923279

`2*A321095(n)-A321097(n)`
-/

namespace A321093.P829093519127923279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321095 n - A321097 n

end

end A321093.P829093519127923279

/-! ## A321093.P10506326665892866568

`(A321095(n)+A321091(n))/2`
-/

namespace A321093.P10506326665892866568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321095 n + A321091 n : ℚ) / 2

end

end A321093.P10506326665892866568

/-! ## A321093.P14992213619162905633

`ceil((A321097(n)+char[A000045(n)])/2)`
-/

namespace A321093.P14992213619162905633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321097 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2⌉

end

end A321093.P14992213619162905633

/-! ## A321093.P11540161046767661127

`A321091(n)+A321097(n)-A321095(n)`
-/

namespace A321093.P11540161046767661127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n + (A321097 n - A321095 n)

end

end A321093.P11540161046767661127

/-! ## A321093.P16443041175274463205

`A321095(n)+A321100(n)-2`
-/

namespace A321093.P16443041175274463205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321095 n + (A321100 n - 2)

end

end A321093.P16443041175274463205

/-!
# A321095: Continued fraction expansion of the constant z that satisfies: CF(5*z, n) = CF(z, n) + 36, for n >= 0, where CF(z, n) denotes the n-th partial denominator in the continued fraction expansion of z.

The programs for A321095, there is no canonical definition to state claims against.
-/

/-! ## A321095.P2440435653517229800

`A321093(n)+A321090(n)`
-/

namespace A321095.P2440435653517229800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n + A321090 n

end

end A321095.P2440435653517229800

/-! ## A321095.P5104152189444916016

`A321097(n)-A321090(n)`
-/

namespace A321095.P5104152189444916016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 n - A321090 n

end

end A321095.P5104152189444916016

/-! ## A321095.P11722054664756847232

`A321091(n)+2*A321090(n)`
-/

namespace A321095.P11722054664756847232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n + 2 * A321090 n

end

end A321095.P11722054664756847232

/-! ## A321095.P8545502822792197240

`A065446(a(A321090(n)))` with `a(0)=8`
-/

namespace A321095.P8545502822792197240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A065446 ((a (A321090 n).toNat).toNat + 1)

end

end A321095.P8545502822792197240

/-! ## A321095.P12872462138315339479

`2*A321093(n)-A321091(n)`
-/

namespace A321095.P12872462138315339479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321093 n - A321091 n

end

end A321095.P12872462138315339479

/-! ## A321095.P12116625704077307151

`(A321097(n)+A321093(n))/2`
-/

namespace A321095.P12116625704077307151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321097 n + A321093 n : ℚ) / 2

end

end A321095.P12116625704077307151

/-! ## A321095.P12992941993553416242

`round(A321093(n)/log(2)-A000007(n))`
-/

namespace A321095.P12992941993553416242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A321093 n : ℝ) / Real.log (2 : ℝ) - (A000007 n : ℝ))

end

end A321095.P12992941993553416242

/-! ## A321095.P7898055209493100824

`A321091(n)+A321097(n)-A321093(n)`
-/

namespace A321095.P7898055209493100824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n + (A321097 n - A321093 n)

end

end A321095.P7898055209493100824

/-! ## A321095.P5595770453619036476

`A076369(A020639(2*(n+1))*A321091(n))`
-/

namespace A321095.P5595770453619036476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (A020639 (2 * (n + 1)) * A321091 n).toNat

end

end A321095.P5595770453619036476

/-! ## A321095.P300626487775631321

`A014963(4*n+2)+3*A321090(n)`
-/

namespace A321095.P300626487775631321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) + 3 * A321090 n

end

end A321095.P300626487775631321

/-! ## A321095.P18039330360222986994

`A321102(A064429(n))+A321093(n)`
-/

namespace A321095.P18039330360222986994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 (A064429 n).toNat + A321093 n

end

end A321095.P18039330360222986994

/-! ## A321095.P4830892344928212458

`A321097(n)-A321102(A064429(n))`
-/

namespace A321095.P4830892344928212458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 n - A321102 (A064429 n).toNat

end

end A321095.P4830892344928212458

/-!
# A321097: Continued fraction expansion of the constant z that satisfies: CF(6*z, n) = CF(z, n) + 55, for n >= 0, where CF(z, n) denotes the n-th partial denominator in the continued fraction expansion of z.

The programs for A321097, there is no canonical definition to state claims against.
-/

/-! ## A321097.P17508981332166212396

`A321095(n)+A321090(n)`
-/

namespace A321097.P17508981332166212396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321095 n + A321090 n

end

end A321097.P17508981332166212396

/-! ## A321097.P10487075820352111030

`A321093(n)+2*A321090(n)`
-/

namespace A321097.P10487075820352111030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n + 2 * A321090 n

end

end A321097.P10487075820352111030

/-! ## A321097.P12810152801348745630

`A321091(n)+3*A321090(n)`
-/

namespace A321097.P12810152801348745630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n + 3 * A321090 n

end

end A321097.P12810152801348745630

/-! ## A321097.P8936031753170594070

`floor(A321093(n)/acot(ϕ))`
-/

namespace A321097.P8936031753170594070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321093 n : ℝ) / SequenceMachineLib.acot Real.goldenRatio⌋

end

end A321097.P8936031753170594070

/-! ## A321097.P1866996663416780160

`A154265(a(A321090(n)))` with `a(0)=10`
-/

namespace A321097.P1866996663416780160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A154265 ((a (A321090 n).toNat).toNat + 1)

end

end A321097.P1866996663416780160

/-! ## A321097.P2406530921375144113

`2*A321095(n)-A321093(n)`
-/

namespace A321097.P2406530921375144113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321095 n - A321093 n

end

end A321097.P2406530921375144113

/-! ## A321097.P16557698232704638693

`2*A321093(n)-A000032(round(n/(n+1)))`
-/

namespace A321097.P16557698232704638693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321093 n - A000032 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A321097.P16557698232704638693

/-! ## A321097.P14153961304364103812

`and(1, A000040(n+1))+2*A321093(n)-2`
-/

namespace A321097.P14153961304364103812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) + 2 * A321093 n - 2

end

end A321097.P14153961304364103812

/-! ## A321097.P2051342374196555456

`A321093(n)+A321095(n)-A321091(n)`
-/

namespace A321097.P2051342374196555456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n + (A321095 n - A321091 n)

end

end A321097.P2051342374196555456

/-! ## A321097.P17178224191000591339

`2*A321093(n)-A014963(4*n+2)`
-/

namespace A321097.P17178224191000591339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321093 n - A014963 (4 * n + 2)

end

end A321097.P17178224191000591339

/-! ## A321097.P13061964140295958645

`A321095(n)+2-A321100(n)`
-/

namespace A321097.P13061964140295958645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321095 n + (2 - A321100 n)

end

end A321097.P13061964140295958645

/-! ## A321097.P295155039436981958

`A321102(A064429(n))+A321095(n)`
-/

namespace A321097.P295155039436981958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 (A064429 n).toNat + A321095 n

end

end A321097.P295155039436981958

/-! ## A321097.P708280685408020275

`A321093(n)+2*A321102(A064429(n))`
-/

namespace A321097.P708280685408020275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n + 2 * A321102 (A064429 n).toNat

end

end A321097.P708280685408020275

/-!
# A321099: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * (1+x)^(n^2) / A(x)^(n*(n+1)/2).

The programs for A321099, there is no canonical definition to state claims against.
-/

/-! ## A321099.P3672427177498927955

`A177849(A007563(n))`
-/

namespace A321099.P3672427177498927955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A007563 n).toNat

end

end A321099.P3672427177498927955

/-! ## A321099.P13052244405716331116

`A132075(A099132(n))`
-/

namespace A321099.P13052244405716331116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A099132 n).toNat

end

end A321099.P13052244405716331116

/-! ## A321099.P7406468610895022367

`A132075(A365736(n))`
-/

namespace A321099.P7406468610895022367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A365736 n).toNat

end

end A321099.P7406468610895022367

/-! ## A321099.P168541426301797095

`A132075(A365798(n))`
-/

namespace A321099.P168541426301797095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A365798 n).toNat

end

end A321099.P168541426301797095

/-! ## A321099.P10450723645566126200

`A330728(A325330(n))`
-/

namespace A321099.P10450723645566126200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330728 (A325330 n).toNat

end

end A321099.P10450723645566126200

