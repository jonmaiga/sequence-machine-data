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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A330700: a(n) = (n - 1)*n*(2*n^2 + 4*n - 1)/6.

The programs for A330700, the canonical program `A330700.P12653418778755895606` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330700 has offset 0).

The definition of A330700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*n*(2*n²+4*n-1)/6` (program `A330700.P15002364330650379504`, by `A330700.P15002364330650379504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330700.P3975354249926501391

`ogf((5x^2+4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A330700.P3975354249926501391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 5, 4, -1] [1, -5, 10, -10, 5, -1] n

end

end A330700.P3975354249926501391

namespace A330700

/-- `ogf((5x^2+4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3975354249926501391.Spec : Prop :=
  ∀ n, P3975354249926501391.a n = A330700 n

end A330700

/-! ## A330700.P15002364330650379504

`(n-1)*n*(2*n²+4*n-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330700.P15002364330650379504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n : ℤ) * ((2 * n ^ 2 + 4 * n : ℤ) - 1) : ℚ) / 6

end

end A330700.P15002364330650379504

namespace A330700

/-- `(n-1)*n*(2*n²+4*n-1)/6` -/
def P15002364330650379504.Spec : Prop :=
  ∀ n, P15002364330650379504.a n = (A330700 n : ℚ)

theorem P15002364330650379504.correct : P15002364330650379504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A330700, Nat.add_sub_cancel, A330700.P15002364330650379504.a, A330700.P12653418778755895606.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A330700, Nat.add_sub_cancel, A330700.P15002364330650379504.a, A330700.P12653418778755895606.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A330700

/-! ## A330700.P12653418778755895606

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=29, a(4)=94`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330700

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12653418778755895606.Spec : Prop :=
  ∀ n, P12653418778755895606.a n = A330700 n

theorem P12653418778755895606.correct : P12653418778755895606.Spec := by
  intro n
  simp only [A330700]

end A330700

/-! ## A330700.P690881614682353578

`C(n, 3)+(n-1)*∑[n²]`
-/

namespace A330700.P690881614682353578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330700.P690881614682353578

namespace A330700

/-- `C(n, 3)+(n-1)*∑[n²]` -/
def P690881614682353578.Spec : Prop :=
  ∀ n, P690881614682353578.a n = A330700 n

end A330700

/-! ## A330700.P5578314918984270384

`A071238(n)-n²`
-/

namespace A330700.P5578314918984270384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - (n ^ 2 : ℤ)

end

end A330700.P5578314918984270384

namespace A330700

/-- `A071238(n)-n²` -/
def P5578314918984270384.Spec : Prop :=
  ∀ n, P5578314918984270384.a n = A330700 n

end A330700

/-! ## A330700.P1498085927506692964

`A288961(n+1)-C(n, 2)`
-/

namespace A330700.P1498085927506692964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) - (Nat.choose n 2 : ℤ)

end

end A330700.P1498085927506692964

namespace A330700

/-- `A288961(n+1)-C(n, 2)` -/
def P1498085927506692964.Spec : Prop :=
  ∀ n, P1498085927506692964.a n = A330700 n

end A330700

/-! ## A330700.P11961476910881722827

`A212415(n)+A086602(n)`
-/

namespace A330700.P11961476910881722827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212415 n + A086602 n

end

end A330700.P11961476910881722827

namespace A330700

/-- `A212415(n)+A086602(n)` -/
def P11961476910881722827.Spec : Prop :=
  ∀ n, P11961476910881722827.a n = A330700 n

end A330700

/-! ## A330700.P3044819694762913508

`A101374(n)-A006484(n)`
-/

namespace A330700.P3044819694762913508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n - A006484 n

end

end A330700.P3044819694762913508

namespace A330700

/-- `A101374(n)-A006484(n)` -/
def P3044819694762913508.Spec : Prop :=
  ∀ n, P3044819694762913508.a n = A330700 n

end A330700

/-! ## A330700.P12780698775789982276

`A072819(n)-A071245(n)`
-/

namespace A330700.P12780698775789982276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n - A071245 n

end

end A330700.P12780698775789982276

namespace A330700

/-- `A072819(n)-A071245(n)` -/
def P12780698775789982276.Spec : Prop :=
  ∀ n, P12780698775789982276.a n = A330700 n

end A330700

/-! ## A330700.P16707538416245684473

`A328152(n+1)+A006011(n)`
-/

namespace A330700.P16707538416245684473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328152 (n + 1) + A006011 n

end

end A330700.P16707538416245684473

namespace A330700

/-- `A328152(n+1)+A006011(n)` -/
def P16707538416245684473.Spec : Prop :=
  ∀ n, P16707538416245684473.a n = A330700 n

end A330700

/-! ## A330700.P2142598681536289047

`A081492(n+1)-A001844(n)`
-/

namespace A330700.P2142598681536289047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081492 (n + 1) - A001844 n

end

end A330700.P2142598681536289047

namespace A330700

/-- `A081492(n+1)-A001844(n)` -/
def P2142598681536289047.Spec : Prop :=
  ∀ n, P2142598681536289047.a n = A330700 n

end A330700

/-! ## A330700.P4022248183813424060

`A307621(n+1)-A056109(n)`
-/

namespace A330700.P4022248183813424060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307621 (n + 1) - A056109 n

end

end A330700.P4022248183813424060

namespace A330700

/-- `A307621(n+1)-A056109(n)` -/
def P4022248183813424060.Spec : Prop :=
  ∀ n, P4022248183813424060.a n = A330700 n

end A330700

/-! ## A330700.P14077784524766506243

`A378023(n+1)-A003215(n)`
-/

namespace A330700.P14077784524766506243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378023 (n + 1) - A003215 n

end

end A330700.P14077784524766506243

namespace A330700

/-- `A378023(n+1)-A003215(n)` -/
def P14077784524766506243.Spec : Prop :=
  ∀ n, P14077784524766506243.a n = A330700 n

end A330700

/-! ## A330700.P6339345039498971565

`A288961(n+1)-A161680(n)`
-/

namespace A330700.P6339345039498971565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) - A161680 n

end

end A330700.P6339345039498971565

namespace A330700

/-- `A288961(n+1)-A161680(n)` -/
def P6339345039498971565.Spec : Prop :=
  ∀ n, P6339345039498971565.a n = A330700 n

end A330700

/-! ## A330700.P9741688159207963144

`A242604(n+1)-A330805(n)`
-/

namespace A330700.P9741688159207963144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242604 (n + 1) - A330805 n

end

end A330700.P9741688159207963144

namespace A330700

/-- `A242604(n+1)-A330805(n)` -/
def P9741688159207963144.Spec : Prop :=
  ∀ n, P9741688159207963144.a n = A330700 n

end A330700

/-! ## A330700.P8734338754126129681

`A100189(n+1)-A307621(n+1)`
-/

namespace A330700.P8734338754126129681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100189 (n + 1) - A307621 (n + 1)

end

end A330700.P8734338754126129681

namespace A330700

/-- `A100189(n+1)-A307621(n+1)` -/
def P8734338754126129681.Spec : Prop :=
  ∀ n, P8734338754126129681.a n = A330700 n

end A330700

/-! ## A330700.P11915364884630578425

`A006011(n)+A002415(n+1)-n²`
-/

namespace A330700.P11915364884630578425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + A002415 (n + 1) - (n ^ 2 : ℤ)

end

end A330700.P11915364884630578425

namespace A330700

/-- `A006011(n)+A002415(n+1)-n²` -/
def P11915364884630578425.Spec : Prop :=
  ∀ n, P11915364884630578425.a n = A330700 n

end A330700

/-! ## A330700.P13448478759041680447

`A006325(n+1)+A006325(n+1)-A101986(n)`
-/

namespace A330700.P13448478759041680447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + (A006325 (n + 1) - A101986 n)

end

end A330700.P13448478759041680447

namespace A330700

/-- `A006325(n+1)+A006325(n+1)-A101986(n)` -/
def P13448478759041680447.Spec : Prop :=
  ∀ n, P13448478759041680447.a n = A330700 n

end A330700

/-! ## A330700.P12203033560313400338

`A085046(n+1)+A071238(n)-A255840(n+1)`
-/

namespace A330700.P12203033560313400338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1) + (A071238 n - A255840 (n + 1))

end

end A330700.P12203033560313400338

namespace A330700

/-- `A085046(n+1)+A071238(n)-A255840(n+1)` -/
def P12203033560313400338.Spec : Prop :=
  ∀ n, P12203033560313400338.a n = A330700 n

end A330700

/-! ## A330700.P91759154713081520

`∑[∑[A329451(2*A004273(n))]]`
-/

namespace A330700.P91759154713081520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329451 (2 * A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330700.P91759154713081520

namespace A330700

/-- `∑[∑[A329451(2*A004273(n))]]` -/
def P91759154713081520.Spec : Prop :=
  ∀ n, P91759154713081520.a n = A330700 n

end A330700

/-!
# A330702: Numbers k such that psi(k) = psi(k + 2) and phi(k) = phi(k + 2), where psi(k) is the Dedekind psi function (A001615) and phi(k) is the Euler totient function (A000010).

The programs for A330702, there is no canonical definition to state claims against.
-/

/-! ## A330702.P8694138302597537677

`∩[A001494(n+1), A330703(n+1)]`
-/

namespace A330702.P8694138302597537677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330702.P8694138302597537677

/-!
# A330703: Numbers k such that psi(k) = psi(k + 2) where psi(k) is the Dedekind psi function (A001615).

The programs for A330703, the canonical program `A330703.P1695831793306337798` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330703 has offset 1).

The definition of A330703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330703.P1695831793306337798

`eq[A001615(n+1), A001615(n+3)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A330703

/-- `eq[A001615(n+1), A001615(n+3)]+1` -/
def P1695831793306337798.Spec : Prop :=
  ∀ n, (P1695831793306337798.a n : ℤ) = A330703 (n + 1)

theorem P1695831793306337798.correct : P1695831793306337798.Spec := by
  intro n
  simp only [A330703, Nat.add_sub_cancel]

end A330703

/-! ## A330703.P15369474482206308985

`eq[A001615(n+2), A001615(A028310(n))]`
-/

namespace A330703.P15369474482206308985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330703.P15369474482206308985

namespace A330703

/-- `eq[A001615(n+2), A001615(A028310(n))]` -/
def P15369474482206308985.Spec : Prop :=
  ∀ n, (P15369474482206308985.a n : ℤ) = A330703 (n + 1)

end A330703

/-! ## A330703.P7452320314403620903

`eq[A159634(n+2), A159634(A028310(n))]`
-/

namespace A330703.P7452320314403620903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330703.P7452320314403620903

namespace A330703

/-- `eq[A159634(n+2), A159634(A028310(n))]` -/
def P7452320314403620903.Spec : Prop :=
  ∀ n, (P7452320314403620903.a n : ℤ) = A330703 (n + 1)

end A330703

/-! ## A330703.P2838602261383735351

`eq[A001615(2*(n+2)), A001615(A004277(n))]`
-/

namespace A330703.P2838602261383735351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330703.P2838602261383735351

namespace A330703

/-- `eq[A001615(2*(n+2)), A001615(A004277(n))]` -/
def P2838602261383735351.Spec : Prop :=
  ∀ n, (P2838602261383735351.a n : ℤ) = A330703 (n + 1)

end A330703

/-! ## A330703.P7649408788053076708

`eq[A001615(A065033(2*n)), A001615(n+2)]`
-/

namespace A330703.P7649408788053076708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330703.P7649408788053076708

namespace A330703

/-- `eq[A001615(A065033(2*n)), A001615(n+2)]` -/
def P7649408788053076708.Spec : Prop :=
  ∀ n, (P7649408788053076708.a n : ℤ) = A330703 (n + 1)

end A330703

/-!
# A330704: a(n) is the least number k for which A330437(k) = n.

The programs for A330704, there is no canonical definition to state claims against.
-/

/-! ## A330704.P11011996216123160488

`xor(A001844(n), A298309(A000129(n)))`
-/

namespace A330704.P11011996216123160488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001844 n) (A298309 (A000129 n).toNat)

end

end A330704.P11011996216123160488

/-!
# A330705: Numbers k such that A173419(k) < A173419(k-1).

The programs for A330705, there is no canonical definition to state claims against.
-/

/-! ## A330705.P1541089098402456655

`lt[A140361(n+1), A140361(n)]+1`
-/

namespace A330705.P1541089098402456655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A330705.P1541089098402456655

/-! ## A330705.P13900564840588686093

`eq[1, ratio[A000040(A140361(n)+1+n)]]+1`
-/

namespace A330705.P13900564840588686093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A140361 n + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A330705.P13900564840588686093

/-! ## A330705.P2884527337274510126

`eq[1, ratio[A014132(A140361(n)+1+n)]]+1`
-/

namespace A330705.P2884527337274510126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A140361 n + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A330705.P2884527337274510126

/-! ## A330705.P4153442418746795595

`eq[1, ratio[A167499(A140361(n)+1+n)+1]]+1`
-/

namespace A330705.P4153442418746795595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A140361 n + 1 + (n : ℤ)).toNat + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A330705.P4153442418746795595

/-!
# A330707: a(n) = ( 3*n^2 + n - 1 + (-1)^floor(n/2) )/4.

The programs for A330707, the canonical program `A330707.P14518426581680011043` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330707 has offset 0).

The definition of A330707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330707.P16252860010218036735

`ogf((x+2x^3)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A330707.P16252860010218036735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 2] [1, -3, 4, -4, 3, -1] n

end

end A330707.P16252860010218036735

namespace A330707

/-- `ogf((x+2x^3)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P16252860010218036735.Spec : Prop :=
  ∀ n, P16252860010218036735.a n = A330707 n

end A330707

/-! ## A330707.P1923963630064238627

`(3*n²+n-1+(-1)^floor(n/2))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330707.P1923963630064238627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * n ^ 2 + n : ℤ) - 1 : ℚ) + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) / 4

end

end A330707.P1923963630064238627

namespace A330707

/-- `(3*n²+n-1+(-1)^floor(n/2))/4` -/
def P1923963630064238627.Spec : Prop :=
  ∀ n, P1923963630064238627.a n = (A330707 n : ℚ)

end A330707

/-! ## A330707.P14518426581680011043

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=13`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330707

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P14518426581680011043.Spec : Prop :=
  ∀ n, P14518426581680011043.a n = A330707 n

theorem P14518426581680011043.correct : P14518426581680011043.Spec := by
  intro n
  simp only [A330707]

end A330707

/-! ## A330707.P6769500058979371764

`∑[∑[gcd(2, ∑[n])]-2]`
-/

namespace A330707.P6769500058979371764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P6769500058979371764

namespace A330707

/-- `∑[∑[gcd(2, ∑[n])]-2]` -/
def P6769500058979371764.Spec : Prop :=
  ∀ n, P6769500058979371764.a n = A330707 n

end A330707

/-! ## A330707.P11835618502528305263

`n²-ceil(C(n, 2)/2)`
-/

namespace A330707.P11835618502528305263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌈(Nat.choose n 2 : ℚ) / 2⌉

end

end A330707.P11835618502528305263

namespace A330707

/-- `n²-ceil(C(n, 2)/2)` -/
def P11835618502528305263.Spec : Prop :=
  ∀ n, P11835618502528305263.a n = A330707 n

end A330707

/-! ## A330707.P10318165499401536482

`∑[n]+floor(C(n, 2)/2)`
-/

namespace A330707.P10318165499401536482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(Nat.choose n 2 : ℚ) / 2⌋

end

end A330707.P10318165499401536482

namespace A330707

/-- `∑[n]+floor(C(n, 2)/2)` -/
def P10318165499401536482.Spec : Prop :=
  ∀ n, P10318165499401536482.a n = A330707 n

end A330707

/-! ## A330707.P2552081162087482934

`∑[∑[C(2, a(n-2))]]` with `a(0)=0, a(1)=1`
-/

namespace A330707.P2552081162087482934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Nat.choose 2 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P2552081162087482934

namespace A330707

/-- `∑[∑[C(2, a(n-2))]]` -/
def P2552081162087482934.Spec : Prop :=
  ∀ n, (P2552081162087482934.a n : ℤ) = A330707 n

end A330707

/-! ## A330707.P15785692860394071616

`∑[∪[2*n, 3*n+1]]`
-/

namespace A330707.P15785692860394071616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P15785692860394071616

namespace A330707

/-- `∑[∪[2*n, 3*n+1]]` -/
def P15785692860394071616.Spec : Prop :=
  ∀ n, (P15785692860394071616.a n : ℤ) = A330707 n

end A330707

/-! ## A330707.P15779759761809303674

`∑[∑[(∑[n]-1)%2+1]]`
-/

namespace A330707.P15779759761809303674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P15779759761809303674

namespace A330707

/-- `∑[∑[(∑[n]-1)%2+1]]` -/
def P15779759761809303674.Spec : Prop :=
  ∀ n, P15779759761809303674.a n = A330707 n

end A330707

/-! ## A330707.P5033187882959131235

`∑[∑[1-(1-∑[n])%2]]`
-/

namespace A330707.P5033187882959131235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P5033187882959131235

namespace A330707

/-- `∑[∑[1-(1-∑[n])%2]]` -/
def P5033187882959131235.Spec : Prop :=
  ∀ n, P5033187882959131235.a n = A330707 n

end A330707

/-! ## A330707.P14154291715186356857

`∑[2*n-∑[and(1, ∑[n])]]`
-/

namespace A330707.P14154291715186356857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P14154291715186356857

namespace A330707

/-- `∑[2*n-∑[and(1, ∑[n])]]` -/
def P14154291715186356857.Spec : Prop :=
  ∀ n, P14154291715186356857.a n = A330707 n

end A330707

/-! ## A330707.P9271465334753589233

`∑[a(n-4)+6]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A330707.P9271465334753589233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P9271465334753589233

namespace A330707

/-- `∑[a(n-4)+6]` -/
def P9271465334753589233.Spec : Prop :=
  ∀ n, (P9271465334753589233.a n : ℤ) = A330707 n

end A330707

/-! ## A330707.P9123111598139157656

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A330707.P9123111598139157656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P9123111598139157656

namespace A330707

/-- `∑[∑[3-a(n-2)]]` -/
def P9123111598139157656.Spec : Prop :=
  ∀ n, P9123111598139157656.a n = A330707 n

end A330707

/-! ## A330707.P6272295751035301351

`∑[∑[gcd(∑[n]², 2%(n+1))]]`
-/

namespace A330707.P6272295751035301351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2) (2 % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P6272295751035301351

namespace A330707

/-- `∑[∑[gcd(∑[n]², 2%(n+1))]]` -/
def P6272295751035301351.Spec : Prop :=
  ∀ n, (P6272295751035301351.a n : ℤ) = A330707 n

end A330707

/-! ## A330707.P11780027753846918149

`∑[ogf((x+2x^3)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A330707.P11780027753846918149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 2] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P11780027753846918149

namespace A330707

/-- `∑[ogf((x+2x^3)/(1-2x+2x^2-2x^3+x^4))]` -/
def P11780027753846918149.Spec : Prop :=
  ∀ n, P11780027753846918149.a n = A330707 n

end A330707

/-! ## A330707.P13915591013944943494

`∑[∑[and(2, n-1)/2]+n-1]`
-/

namespace A330707.P13915591013944943494
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 ((n : ℤ) - 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330707.P13915591013944943494

namespace A330707

/-- `∑[∑[and(2, n-1)/2]+n-1]` -/
def P13915591013944943494.Spec : Prop :=
  ∀ n, P13915591013944943494.a n = (A330707 n : ℚ)

end A330707

/-! ## A330707.P1415799416310920440

`lcm(n, n+1)-floor(∑[(n+1)/2])`
-/

namespace A330707.P1415799416310920440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A330707.P1415799416310920440

namespace A330707

/-- `lcm(n, n+1)-floor(∑[(n+1)/2])` -/
def P1415799416310920440.Spec : Prop :=
  ∀ n, P1415799416310920440.a n = A330707 n

end A330707

/-! ## A330707.P18110608725298164181

`∪[2*n+1+n, 2*n]+a(n-1)` with `a(0)=0`
-/

namespace A330707.P18110608725298164181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + a (n - 1)

end

end A330707.P18110608725298164181

namespace A330707

/-- `∪[2*n+1+n, 2*n]+a(n-1)` -/
def P18110608725298164181.Spec : Prop :=
  ∀ n, (P18110608725298164181.a n : ℤ) = A330707 n

end A330707

/-! ## A330707.P3051530394086901444

`round(sqrt(A212507(n)))`
-/

namespace A330707.P3051530394086901444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A212507 n : ℝ))

end

end A330707.P3051530394086901444

namespace A330707

/-- `round(sqrt(A212507(n)))` -/
def P3051530394086901444.Spec : Prop :=
  ∀ n, P3051530394086901444.a n = A330707 n

end A330707

/-!
# A330708: Numbers that are not the sum of 2 nonzero squares and a positive cube.

The programs for A330708, there is no canonical definition to state claims against.
-/

/-! ## A330708.P12370338783323526480

`lt[A250213(3*n+2), A250200(A250251(n+5))]`
-/

namespace A330708.P12370338783323526480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250200 (A250251 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330708.P12370338783323526480

/-! ## A330708.P5765652354606487026

`∑[A171453(record[A126071(n+1)])]`
-/

namespace A330708.P5765652354606487026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171453 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330708.P5765652354606487026

/-! ## A330708.P13785940790912241459

`lt[A258646(A371085(n+1)), A232697(n)]`
-/

namespace A330708.P13785940790912241459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 (A371085 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330708.P13785940790912241459

/-! ## A330708.P15941343362822172601

`lt[A344651(3*(n+1)), A007283(A325268(n))]`
-/

namespace A330708.P15941343362822172601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A325268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330708.P15941343362822172601

/-! ## A330708.P11249752615963167996

`lt[A350849(3*n+4), A002376(A167706(n+1))]`
-/

namespace A330708.P11249752615963167996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350849 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A167706 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330708.P11249752615963167996

/-!
# A330709: Two-column table read by rows: pairs (i,j) in order sorted from the left.

The programs for A330709, there is no canonical definition to state claims against.
-/

/-! ## A330709.P14067421670297378667

`A226005(comp[n²])-1`
-/

namespace A330709.P14067421670297378667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A330709.P14067421670297378667

/-! ## A330709.P4049755922869076775

`A349520(xor(1, n)+1)-1`
-/

namespace A330709.P4049755922869076775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (Nat.xor 1 n + 1) - 1

end

end A330709.P4049755922869076775

/-! ## A330709.P13432406142672677706

`A349520(2-xor(1, 1-n))-1`
-/

namespace A330709.P13432406142672677706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 - Int.xor 1 (1 - (n : ℤ))).toNat - 1

end

end A330709.P13432406142672677706

/-! ## A330709.P15528762010038771902

`A097285(xor(1, n)+1)-gcd(2, n)`
-/

namespace A330709.P15528762010038771902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (Nat.xor 1 n + 1) - (Nat.gcd 2 n : ℤ)

end

end A330709.P15528762010038771902

/-! ## A330709.P1319993873078959345

`A349520(A014681(n+1))-1`
-/

namespace A330709.P1319993873078959345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A014681 (n + 1)).toNat - 1

end

end A330709.P1319993873078959345

/-! ## A330709.P9210726642002251442

`A349520(A103889(n+1))-1`
-/

namespace A330709.P9210726642002251442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A103889 (n + 1)).toNat - 1

end

end A330709.P9210726642002251442

/-! ## A330709.P14025680224223788667

`A349520(A114112(n+1))-1`
-/

namespace A330709.P14025680224223788667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A114112 (n + 1)).toNat - 1

end

end A330709.P14025680224223788667

/-! ## A330709.P13664095385938108346

`A138036(n)-log2(gcd(2, n))`
-/

namespace A330709.P13664095385938108346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138036 n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A330709.P13664095385938108346

/-! ## A330709.P139391633281005270

`A138036(n)-A059841(n)`
-/

namespace A330709.P139391633281005270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n - A059841 n

end

end A330709.P139391633281005270

/-! ## A330709.P3366686487550421727

`A000035(n)+A138036(n)-1`
-/

namespace A330709.P3366686487550421727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A138036 n - 1)

end

end A330709.P3366686487550421727

/-! ## A330709.P8741575410795876903

`A138036(n)-A054552(n)%2`
-/

namespace A330709.P8741575410795876903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n - Int.tmod (A054552 n) 2

end

end A330709.P8741575410795876903

/-! ## A330709.P13956307128854246105

`A138036(n)-A000194(Δ[or(1, n+1)])`
-/

namespace A330709.P13956307128854246105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n - A000194 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A330709.P13956307128854246105

/-! ## A330709.P1641267630168416484

`A138036(n)-A000196(Δ[or(1, n+1)])`
-/

namespace A330709.P1641267630168416484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n - A000196 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A330709.P1641267630168416484

/-! ## A330709.P4033717905790558111

`A138036(n)-A002262(Δ[or(1, n+1)])`
-/

namespace A330709.P4033717905790558111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 n - A002262 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A330709.P4033717905790558111

/-! ## A330709.P10386504662508117330

`A329949(comp[n²])-2`
-/

namespace A330709.P10386504662508117330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2

end

end A330709.P10386504662508117330

/-!
# A330710: Numbers that reach 1 in the 3x + 5 variation of Collatz map.

The programs for A330710, there is no canonical definition to state claims against.
-/

/-! ## A330710.P3965342185520457511

`eq[3, A090911(A030101(n))]`
-/

namespace A330710.P3965342185520457511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090911 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330710.P3965342185520457511

/-! ## A330710.P7759988647412551583

`filter[A010407(n+2), A085357(#)]`
-/

namespace A330710.P7759988647412551583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010407 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A330710.P7759988647412551583

/-! ## A330710.P4946923172260275989

`eq[2, A280512(A103391(3*n+1))]`
-/

namespace A330710.P4946923172260275989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280512 (A103391 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330710.P4946923172260275989

/-! ## A330710.P5876464275248958585

`eq[A132847(A048735(n)), A165481(n)]`
-/

namespace A330710.P5876464275248958585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132847 (A048735 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330710.P5876464275248958585

/-! ## A330710.P4047350459220182976

`A345199(A345162(n)+A206350(n+1))`
-/

namespace A330710.P4047350459220182976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345199 (A345162 n + A206350 (n + 1)).toNat

end

end A330710.P4047350459220182976

/-!
# A330711: Numbers that are both Zeckendorf-Niven numbers (A328208) and lazy-Fibonacci-Niven numbers (A328212).

The programs for A330711, there is no canonical definition to state claims against.
-/

/-! ## A330711.P5835138958215906009

`∩[A328208(n+1), A328212(n+1)]`
-/

namespace A330711.P5835138958215906009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330711.P5835138958215906009

/-! ## A330711.P13248288285746988612

`A284456(n+1)-A165656(A006820(n))`
-/

namespace A330711.P13248288285746988612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284456 (n + 1) - A165656 (A006820 n).toNat

end

end A330711.P13248288285746988612

/-!
# A330714: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let h(n) = Sum_{k=0..w} b_k * i^k (where i denotes the imaginary unit); a(n) is the square of the modulus of h(n).

The programs for A330714, the canonical program `A330714.P2325719650532797238` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330714 has offset 0).

The definition of A330714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131851, A131852, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330714.P2325719650532797238

`A131851(n)²+A131852(n)²`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A330714

/-- `A131851(n)²+A131852(n)²` -/
def P2325719650532797238.Spec : Prop :=
  ∀ n, P2325719650532797238.a n = A330714 n

theorem P2325719650532797238.correct : P2325719650532797238.Spec := by
  intro n
  simp only [A330714]

end A330714

/-! ## A330714.P14285621730590953198

`A131851(A004526(n))²+A131851(n)²`
-/

namespace A330714.P14285621730590953198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A004526 n).toNat ^ 2 + A131851 n ^ 2

end

end A330714.P14285621730590953198

namespace A330714

/-- `A131851(A004526(n))²+A131851(n)²` -/
def P14285621730590953198.Spec : Prop :=
  ∀ n, P14285621730590953198.a n = A330714 n

theorem P14285621730590953198.correct : P14285621730590953198.Spec := by
  intro n
  simp only [A330714, Nat.add_sub_cancel, A330714.P14285621730590953198.a, A330714.P2325719650532797238.a, A004526, A004526.P10084182425416171735.a, A131851, A131851.P1942102588328150094.a, A131852, A131852.P12166633739623928702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330714

/-! ## A330714.P13655202588310246081

`A131852(A004514(n))²+A131852(n)²`
-/

namespace A330714.P13655202588310246081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004514 n).toNat ^ 2 + A131852 n ^ 2

end

end A330714.P13655202588310246081

namespace A330714

/-- `A131852(A004514(n))²+A131852(n)²` -/
def P13655202588310246081.Spec : Prop :=
  ∀ n, P13655202588310246081.a n = A330714 n

end A330714

/-! ## A330714.P11268412837480682764

`A131851(A006015(n))²+A131851(n)²`
-/

namespace A330714.P11268412837480682764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A006015 n).toNat ^ 2 + A131851 n ^ 2

end

end A330714.P11268412837480682764

namespace A330714

/-- `A131851(A006015(n))²+A131851(n)²` -/
def P11268412837480682764.Spec : Prop :=
  ∀ n, P11268412837480682764.a n = A330714 n

end A330714

/-! ## A330714.P18259615277733941220

`A131852(A057300(n))²+A131852(n)²`
-/

namespace A330714.P18259615277733941220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A057300 n).toNat ^ 2 + A131852 n ^ 2

end

end A330714.P18259615277733941220

namespace A330714

/-- `A131852(A057300(n))²+A131852(n)²` -/
def P18259615277733941220.Spec : Prop :=
  ∀ n, P18259615277733941220.a n = A330714 n

end A330714

/-! ## A330714.P833655796381008316

`A131852(A088442(n))²+A131852(n)²`
-/

namespace A330714.P833655796381008316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A088442 n).toNat ^ 2 + A131852 n ^ 2

end

end A330714.P833655796381008316

namespace A330714

/-- `A131852(A088442(n))²+A131852(n)²` -/
def P833655796381008316.Spec : Prop :=
  ∀ n, P833655796381008316.a n = A330714 n

end A330714

/-! ## A330714.P15829336222924870458

`A131852(2*n)²+A131852(n)²`
-/

namespace A330714.P15829336222924870458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n) ^ 2 + A131852 n ^ 2

end

end A330714.P15829336222924870458

namespace A330714

/-- `A131852(2*n)²+A131852(n)²` -/
def P15829336222924870458.Spec : Prop :=
  ∀ n, P15829336222924870458.a n = A330714 n

end A330714

/-! ## A330714.P10916260156681935199

`A131851(A008590(n))²+A131851(n)²`
-/

namespace A330714.P10916260156681935199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A008590 n).toNat ^ 2 + A131851 n ^ 2

end

end A330714.P10916260156681935199

namespace A330714

/-- `A131851(A008590(n))²+A131851(n)²` -/
def P10916260156681935199.Spec : Prop :=
  ∀ n, P10916260156681935199.a n = A330714 n

end A330714

/-! ## A330714.P6387181706025320781

`A131851(A004771(n))²+A131851(n)²`
-/

namespace A330714.P6387181706025320781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A004771 n).toNat ^ 2 + A131851 n ^ 2

end

end A330714.P6387181706025320781

namespace A330714

/-- `A131851(A004771(n))²+A131851(n)²` -/
def P6387181706025320781.Spec : Prop :=
  ∀ n, P6387181706025320781.a n = A330714 n

end A330714

/-! ## A330714.P482753661682351382

`A131851(A017089(n))²+A131851(n)²`
-/

namespace A330714.P482753661682351382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A017089 n).toNat ^ 2 + A131851 n ^ 2

end

end A330714.P482753661682351382

namespace A330714

/-- `A131851(A017089(n))²+A131851(n)²` -/
def P482753661682351382.Spec : Prop :=
  ∀ n, P482753661682351382.a n = A330714 n

end A330714

/-!
# A330715: a(1), a(2), a(3) = 1; a(n) = (a(n-1) mod a(n-3)) + a(n-2) + 1.

The programs for A330715, the canonical program `A330715.P14834910869338154576` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330715 has offset 1).

The definition of A330715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)%a(n-3)+a(n-2)+1` (program `A330715.P14834910869338154576`, by `A330715.P14834910869338154576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330715.P14834910869338154576

`a(n-1)%a(n-3)+a(n-2)+1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330715

/-- `a(n-1)%a(n-3)+a(n-2)+1` -/
def P14834910869338154576.Spec : Prop :=
  ∀ n, (P14834910869338154576.a n : ℤ) = A330715 (n + 1)

theorem P14834910869338154576.correct : P14834910869338154576.Spec := by
  intro n
  simp only [A330715, Nat.add_sub_cancel]

end A330715

/-! ## A330715.P16629965972386251811

`∑[a(n-2)+1]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=0`
-/

namespace A330715.P16629965972386251811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330715.P16629965972386251811

namespace A330715

/-- `∑[a(n-2)+1]` -/
def P16629965972386251811.Spec : Prop :=
  ∀ n, (P16629965972386251811.a n : ℤ) = A330715 (n + 1)

end A330715

/-! ## A330715.P17130844285421618900

`ogf((1-x-x^2+2x^3-x^4+x^6-2x^7+2x^8)/(1-2x+2x^3-x^4))`
-/

namespace A330715.P17130844285421618900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 2, -1, 0, 1, -2, 2] [1, -2, 0, 2, -1] n

end

end A330715.P17130844285421618900

namespace A330715

/-- `ogf((1-x-x^2+2x^3-x^4+x^6-2x^7+2x^8)/(1-2x+2x^3-x^4))` -/
def P17130844285421618900.Spec : Prop :=
  ∀ n, P17130844285421618900.a n = A330715 (n + 1)

end A330715

/-! ## A330715.P2255960223543993362

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3, a(6)=4, a(7)=4, a(8)=6`
-/

namespace A330715.P2255960223543993362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 3, 4, 4, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A330715.P2255960223543993362

namespace A330715

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2255960223543993362.Spec : Prop :=
  ∀ n, P2255960223543993362.a n = A330715 (n + 1)

end A330715

/-! ## A330715.P13597084081032572964

`A253051(A007588(n+2))+A026810(n)`
-/

namespace A330715.P13597084081032572964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253051 (A007588 (n + 2)).toNat + A026810 n

end

end A330715.P13597084081032572964

namespace A330715

/-- `A253051(A007588(n+2))+A026810(n)` -/
def P13597084081032572964.Spec : Prop :=
  ∀ n, P13597084081032572964.a n = A330715 (n + 1)

end A330715

/-!
# A330717: a(n) is the greatest binary palindrome of the form floor(n/2^k) with k >= 0.

The programs for A330717, there is no canonical definition to state claims against.
-/

/-! ## A330717.P15595389131404081216

`A030101(n)%A000079(A215467(n))`
-/

namespace A330717.P15595389131404081216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 n) (A000079 (A215467 n).toNat)

end

end A330717.P15595389131404081216

/-! ## A330717.P5640096172852106203

`A264618(n)%A000079(A215467(n))`
-/

namespace A330717.P5640096172852106203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264618 n) (A000079 (A215467 n).toNat)

end

end A330717.P5640096172852106203

/-! ## A330717.P15348000342780206407

`gcd(A004525(A045991(n)), A348363(n))`
-/

namespace A330717.P15348000342780206407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004525 (A045991 n).toNat) (A348363 n)

end

end A330717.P15348000342780206407

/-! ## A330717.P11328137723532606215

`and(A004771(A222172(n)), A030101(n))`
-/

namespace A330717.P11328137723532606215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004771 (A222172 n).toNat) (A030101 n)

end

end A330717.P11328137723532606215

/-! ## A330717.P11418512743055136631

`A244568(n)%A164927(A345452(n+1))`
-/

namespace A330717.P11418512743055136631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244568 n) (A164927 (A345452 (n + 1)).toNat)

end

end A330717.P11418512743055136631

/-!
# A330718: a(n) = numerator(Sum_{k=1..n} (2^k-2)/k).

The programs for A330718, there is no canonical definition to state claims against.
-/

/-! ## A330718.P8980352674073599136

`A279683(n+1)/A000142(n+1)*A330719(n+1)`
-/

namespace A330718.P8980352674073599136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279683 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A330719 (n + 1) : ℚ)

end

end A330718.P8980352674073599136

/-! ## A330718.P3156013255224036331

`A330719(n+1)/A003418(n+1)*A331343(n+1)`
-/

namespace A330718.P3156013255224036331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330719 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A331343 (n + 1) : ℚ)

end

end A330718.P3156013255224036331

/-! ## A330718.P3351966044362992877

`lcm(A002805(n+1), A331343(n+1))/A002805(n+1)`
-/

namespace A330718.P3351966044362992877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002805 (n + 1)) (A331343 (n + 1)) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A330718.P3351966044362992877

/-! ## A330718.P10523428004121420726

`gcd(A290347(n+1), A331343(n+1))`
-/

namespace A330718.P10523428004121420726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290347 (n + 1)) (A331343 (n + 1))

end

end A330718.P10523428004121420726

/-! ## A330718.P15661037577088730278

`A290347(n+1)/A053644(A001037(n+1))`
-/

namespace A330718.P15661037577088730278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290347 (n + 1) : ℚ) / (A053644 (A001037 (n + 1)).toNat : ℚ)

end

end A330718.P15661037577088730278

/-!
# A330719: a(n) = denominator(Sum_{k=1..n} (2^(k-1) - 1)/k).

The programs for A330719, there is no canonical definition to state claims against.
-/

/-! ## A330719.P2744610398185683946

`2^floor(log2(n+1))*A290348(n+1)`
-/

namespace A330719.P2744610398185683946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.log 2 (n + 1) : ℤ) * A290348 (n + 1)

end

end A330719.P2744610398185683946

/-! ## A330719.P1410160985894308491

`lcm(A053644(n+1), A290348(n+1))`
-/

namespace A330719.P1410160985894308491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053644 (n + 1)) (A290348 (n + 1))

end

end A330719.P1410160985894308491

/-! ## A330719.P14322862392993172981

`A006519(A056040(n+1))*A180000(n+1)`
-/

namespace A330719.P14322862392993172981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A056040 (n + 1)).toNat * A180000 (n + 1)

end

end A330719.P14322862392993172981

/-! ## A330719.P11052371752911110955

`gcd(floor(n²/2)^A208028(n+1), A058312(n+1))`
-/

namespace A330719.P11052371752911110955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((⌊(n ^ 2 : ℚ) / 2⌋ : ℚ) ^ (A208028 (n + 1) : ℤ))) (A058312 (n + 1))

end

end A330719.P11052371752911110955

/-! ## A330719.P17353892738640393462

`gcd(A025487(A246699(n+1)), A057143(n+1))`
-/

namespace A330719.P17353892738640393462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025487 (A246699 (n + 1)).toNat) (A057143 (n + 1))

end

end A330719.P17353892738640393462

/-!
# A330720: a(n) is the number of ways of writing the binary expansion of n as a product (or concatenation) of nonpalindromes.

The programs for A330720, there is no canonical definition to state claims against.
-/

/-! ## A330720.P7600087769920618028

`A023416(n)-A100910(A001202(n+1))`
-/

namespace A330720.P7600087769920618028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A100910 (A001202 (n + 1)).toNat

end

end A330720.P7600087769920618028

/-! ## A330720.P1165075238010838683

`A107846(A265747(n+3)-A095144(n+4))`
-/

namespace A330720.P1165075238010838683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A265747 (n + 3) - A095144 (n + 4)).toNat

end

end A330720.P1165075238010838683

/-! ## A330720.P9140834942072182769

`A037800(A001281(p?[A123715(n)]))`
-/

namespace A330720.P9140834942072182769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A001281 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A330720.P9140834942072182769

/-! ## A330720.P17560808177666184569

`A269245(A049736(n))`
-/

namespace A330720.P17560808177666184569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269245 (A049736 n).toNat

end

end A330720.P17560808177666184569

/-! ## A330720.P2702144718150703618

`A175267(A125974(n))`
-/

namespace A330720.P2702144718150703618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175267 (A125974 n).toNat

end

end A330720.P2702144718150703618

/-!
# A330721: Lexicographically earliest sequence of positive terms such that for any n > 0 and k > 0, a(n+k^2) <> floor(k/a(n)).

The programs for A330721, there is no canonical definition to state claims against.
-/

/-! ## A330721.P7848533335530338817

`A001221(or(22, A303367(n+1)))`
-/

namespace A330721.P7848533335530338817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 22 (A303367 (n + 1))).toNat

end

end A330721.P7848533335530338817

/-! ## A330721.P8596334988038216735

`A001222(∏{p}[or(22, A303367(n+1)), #])`
-/

namespace A330721.P8596334988038216735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 22 (A303367 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330721.P8596334988038216735

/-! ## A330721.P324039734667440987

`A096370(∑[A165656(n)+1])`
-/

namespace A330721.P324039734667440987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330721.P324039734667440987

/-! ## A330721.P2465452190530103763

`A303536((A185274(n)+1)*(n+1))`
-/

namespace A330721.P2465452190530103763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 ((A185274 n + 1) * (n + 1 : ℤ)).toNat

end

end A330721.P2465452190530103763

/-! ## A330721.P7335888299460814099

`A001221(A339921(n+1)+A065033(n))`
-/

namespace A330721.P7335888299460814099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A339921 (n + 1) + A065033 n).toNat

end

end A330721.P7335888299460814099

/-!
# A330722: Numbers whose base phi representation is symmetrical, ignoring the radix point and leading and trailing zeros.

The programs for A330722, there is no canonical definition to state claims against.
-/

/-! ## A330722.P9821772875423959384

`∪[A178482(n+1), A330672(n+1)]`
-/

namespace A330722.P9821772875423959384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A330722.P9821772875423959384

/-! ## A330722.P2299257945388541014

`lt[n, log(A075572(n)²)²]`
-/

namespace A330722.P2299257945388541014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A075572 n ^ 2 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A330722.P2299257945388541014

/-! ## A330722.P8966187310264813638

`lt[A090632(n), A075572(n)²]`
-/

namespace A330722.P8966187310264813638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075572 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330722.P8966187310264813638

/-! ## A330722.P422356375467467963

`lt[A286700(A063882(n+3)), 17]`
-/

namespace A330722.P422356375467467963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286700 (A063882 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330722.P422356375467467963

/-! ## A330722.P16346287483816736905

`lt[A079906(n+1), A061981(A075572(n))]`
-/

namespace A330722.P16346287483816736905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061981 (A075572 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330722.P16346287483816736905

/-!
# A330724: Sum of prime factors (with multiplicity) of the n-th composite number coprime to 6.

The programs for A330724, the canonical program `A330724.P16993520120125291857` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330724 has offset 1).

The definition of A330724 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038509, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330724.P16993520120125291857

`A001414(A038509(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330724

/-- `A001414(A038509(n+1))` -/
def P16993520120125291857.Spec : Prop :=
  ∀ n, P16993520120125291857.a n = A330724 (n + 1)

theorem P16993520120125291857.correct : P16993520120125291857.Spec := by
  intro n
  simp only [A330724, Nat.add_sub_cancel]

end A330724

/-! ## A330724.P17281804542106050912

`A107463(lt[3, A107286(n)])`
-/

namespace A330724.P17281804542106050912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A330724.P17281804542106050912

namespace A330724

/-- `A107463(lt[3, A107286(n)])` -/
def P17281804542106050912.Spec : Prop :=
  ∀ n, P17281804542106050912.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P2160448778362622046

`A107463(or(1, A038509(n+1)))`
-/

namespace A330724.P2160448778362622046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (Int.lor 1 (A038509 (n + 1))).toNat

end

end A330724.P2160448778362622046

namespace A330724

/-- `A107463(or(1, A038509(n+1)))` -/
def P2160448778362622046.Spec : Prop :=
  ∀ n, P2160448778362622046.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P10308753287828837653

`A100005(ceil(A038509(n+1)/2))`
-/

namespace A330724.P10308753287828837653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100005 ⌈(A038509 (n + 1) : ℚ) / 2⌉.toNat

end

end A330724.P10308753287828837653

namespace A330724

/-- `A100005(ceil(A038509(n+1)/2))` -/
def P10308753287828837653.Spec : Prop :=
  ∀ n, P10308753287828837653.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P16237168692217536565

`A100005((A038509(n+1)+1)/2)`
-/

namespace A330724.P16237168692217536565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100005 (SequenceMachineLib.roundAway ((A038509 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A330724.P16237168692217536565

namespace A330724

/-- `A100005((A038509(n+1)+1)/2)` -/
def P16237168692217536565.Spec : Prop :=
  ∀ n, P16237168692217536565.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P35622240104918196

`A107463(A038509(2*n+1-n))`
-/

namespace A330724.P35622240104918196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A038509 (2 * n + 1 - n)).toNat

end

end A330724.P35622240104918196

namespace A330724

/-- `A107463(A038509(2*n+1-n))` -/
def P35622240104918196.Spec : Prop :=
  ∀ n, P35622240104918196.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P2568266899947599191

`A107463(A038509(n+1)%∑[3*81*C(n+4, 4)])`
-/

namespace A330724.P2568266899947599191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (81 * Nat.choose (n + 4) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (Int.tmod (A038509 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330724.P2568266899947599191

namespace A330724

/-- `A107463(A038509(n+1)%∑[3*81*C(n+4, 4)])` -/
def P2568266899947599191.Spec : Prop :=
  ∀ n, P2568266899947599191.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P14512344960755663055

`A001414(eq[A010125(n), A107393(n)])`
-/

namespace A330724.P14512344960755663055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A330724.P14512344960755663055

namespace A330724

/-- `A001414(eq[A010125(n), A107393(n)])` -/
def P14512344960755663055.Spec : Prop :=
  ∀ n, P14512344960755663055.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P16849677367515590459

`A107463(eq[A010125(n), A107393(n)])`
-/

namespace A330724.P16849677367515590459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A330724.P16849677367515590459

namespace A330724

/-- `A107463(eq[A010125(n), A107393(n)])` -/
def P16849677367515590459.Spec : Prop :=
  ∀ n, P16849677367515590459.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P2713317561708792824

`∑{d}[A038509(n+1), A120007(#)]`
-/

namespace A330724.P2713317561708792824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A330724.P2713317561708792824

namespace A330724

/-- `∑{d}[A038509(n+1), A120007(#)]` -/
def P2713317561708792824.Spec : Prop :=
  ∀ n, P2713317561708792824.a n = A330724 (n + 1)

end A330724

/-! ## A330724.P10879549138516545839

`A001414(eq[A010176(n), A107393(n)])`
-/

namespace A330724.P10879549138516545839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A330724.P10879549138516545839

namespace A330724

/-- `A001414(eq[A010176(n), A107393(n)])` -/
def P10879549138516545839.Spec : Prop :=
  ∀ n, P10879549138516545839.a n = A330724 (n + 1)

end A330724

/-!
# A330726: Number of balanced reduced multisystems of maximum depth whose atoms are positive integers summing to n.

The programs for A330726, there is no canonical definition to state claims against.
-/

/-! ## A330726.P3783957892007287769

`A054846(A193771(∑[n]))`
-/

namespace A330726.P3783957892007287769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A193771 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330726.P3783957892007287769

/-! ## A330726.P18308512968485603071

`or(A001055(A325514(n)), A050932(n))`
-/

namespace A330726.P18308512968485603071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001055 (A325514 n).toNat) (A050932 n)

end

end A330726.P18308512968485603071

/-!
# A330727: Irregular triangle read by rows where T(n,k) is the number of balanced reduced multisystems of depth k whose degrees (atom multiplicities) are the prime indices of n.

The programs for A330727, there is no canonical definition to state claims against.
-/

/-! ## A330727.P2134018180751627535

`gcd(A062298(n+1), A286326(A140134(n)))`
-/

namespace A330727.P2134018180751627535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062298 (n + 1)) (A286326 (A140134 n).toNat)

end

end A330727.P2134018180751627535

/-! ## A330727.P15381926255897303644

`A000005(A008284(3*n+5)^A352833(n))`
-/

namespace A330727.P15381926255897303644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A008284 (3 * n + 5) : ℚ) ^ (A352833 n : ℤ))).toNat

end

end A330727.P15381926255897303644

/-!
# A330729: Numbers k that are divisible by all integers less than or equal to the cube root of k.

The programs for A330729, there is no canonical definition to state claims against.
-/

/-! ## A330729.P4697376533030355196

`A122936(∑[floor(n^(2/9))]+1)`
-/

namespace A330729.P4697376533030355196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((2 : ℚ) / 9 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122936 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A330729.P4697376533030355196

/-! ## A330729.P12390602170096863733

`eq[A048766(n+1), A347516(n+1)]+1`
-/

namespace A330729.P12390602170096863733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330729.P12390602170096863733

/-!
# A330731: Binary sequence created by greedily remaining as normal as possible: starting with the empty sequence, repeatedly find the longest tail (or suffix) which is followed by one digit more frequently than the other, and append the digit which follows said tail less often. 0 is appended if no such inequality is found.

The programs for A330731, there is no canonical definition to state claims against.
-/

/-! ## A330731.P17082487414655704299

`A000035(lt[A156290(n+1), A061045(n+3)])`
-/

namespace A330731.P17082487414655704299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330731.P17082487414655704299

/-! ## A330731.P13232283503444906617

`A284524(A074628(n+1)*A329312(3*(n+1)))`
-/

namespace A330731.P13232283503444906617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284524 (A074628 (n + 1) * A329312 (3 * (n + 1))).toNat

end

end A330731.P13232283503444906617

/-! ## A330731.P7729032877238030797

`A165191(A003056(∑[A061039(n+3)]))`
-/

namespace A330731.P7729032877238030797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A330731.P7729032877238030797

/-! ## A330731.P8316372840075314726

`A286484(lcm(A138675(n+2), A325325(n+1)))`
-/

namespace A330731.P8316372840075314726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286484 (Int.lcm (A138675 (n + 2)) (A325325 (n + 1)))

end

end A330731.P8316372840075314726

/-! ## A330731.P12122055163783707176

`A073424(C(A006530(n+5), A011776(n+1)))`
-/

namespace A330731.P12122055163783707176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (Nat.choose (A006530 (n + 5)).toNat (A011776 (n + 1)).toNat)

end

end A330731.P12122055163783707176

/-!
# A330732: a(n) is the smallest number whose odd hailstone sequence has length n (including 1 and itself) and is in descending order.

The programs for A330732, there is no canonical definition to state claims against.
-/

/-! ## A330732.P17295791688369954489

`record[A072963(A023425(n))]`
-/

namespace A330732.P17295791688369954489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A023425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330732.P17295791688369954489

/-!
# A330733: Triangle read by rows in which row n is the "complete rhythm" of n (see Comments for precise definition).

The programs for A330733, there is no canonical definition to state claims against.
-/

/-! ## A330733.P5713562788723530789

`A001222(A210709(n)+A046143(n+1))`
-/

namespace A330733.P5713562788723530789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A210709 n + A046143 (n + 1)).toNat

end

end A330733.P5713562788723530789

/-! ## A330733.P3593985642256919062

`A051194(n+1)-A000007(A210709(n))`
-/

namespace A330733.P3593985642256919062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1) - A000007 (A210709 n).toNat

end

end A330733.P3593985642256919062

/-! ## A330733.P4793989686219475999

`A000005(A050873(n+1))-A210709(A210709(n))`
-/

namespace A330733.P4793989686219475999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050873 (n + 1)).toNat - A210709 (A210709 n).toNat

end

end A330733.P4793989686219475999

/-! ## A330733.P13491632243932002824

`A051194(n+1)-A043545(A047881(n))`
-/

namespace A330733.P13491632243932002824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1) - A043545 (A047881 n).toNat

end

end A330733.P13491632243932002824

/-! ## A330733.P4942418182202461321

`A051194(n+1)-A210709(A210709(n)²)`
-/

namespace A330733.P4942418182202461321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1) - A210709 (A210709 n ^ 2).toNat

end

end A330733.P4942418182202461321

/-!
# A330734: a(n) = n - A309639(n), where A309639(n) is the index of the least harmonic number H_i whose denominator (A002805) is divisible by n.

The programs for A330734, there is no canonical definition to state claims against.
-/

/-! ## A330734.P11562877976601890020

`n+1-A309639(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330734.P11562877976601890020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A309639 (n + 1)

end

end A330734.P11562877976601890020

/-! ## A330734.P12410792101843551038

`A024000(A309639(n+1))+n`
-/

namespace A330734.P12410792101843551038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A309639 (n + 1)).toNat + (n : ℤ)

end

end A330734.P12410792101843551038

/-! ## A330734.P11432691754916247877

`(A016969(n)*A309639(n+1))%(n+1)`
-/

namespace A330734.P11432691754916247877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n * A309639 (n + 1)) (n + 1 : ℤ)

end

end A330734.P11432691754916247877

/-! ## A330734.P9634219600244677504

`1-A110545(A066043(n+1))+n`
-/

namespace A330734.P9634219600244677504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110545 (A066043 (n + 1)).toNat + (n : ℤ)

end

end A330734.P9634219600244677504

/-! ## A330734.P17072972191135805820

`1-A110545(A066678(n+1))+n`
-/

namespace A330734.P17072972191135805820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110545 (A066678 (n + 1)).toNat + (n : ℤ)

end

end A330734.P17072972191135805820

/-! ## A330734.P3287647227587782375

`A008683(A090564(n+1))*A309639(n+1)+n+1`
-/

namespace A330734.P3287647227587782375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A090564 (n + 1)).toNat * A309639 (n + 1) + (n + 1 : ℤ)

end

end A330734.P3287647227587782375

/-!
# A330735: a(n) = n mod A309639(n), where A309639(n) is the index of the least harmonic number H_i whose denominator (A002805) is divisible by n.

The programs for A330735, there is no canonical definition to state claims against.
-/

/-! ## A330735.P9247842261383885643

`(n+1)%A309639(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330735.P9247842261383885643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A309639 (n + 1))

end

end A330735.P9247842261383885643

/-! ## A330735.P9869606893448400037

`A330734(n+1)%(n+1-A330734(n+1))`
-/

namespace A330735.P9869606893448400037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330734 (n + 1)) ((n + 1 : ℤ) - A330734 (n + 1))

end

end A330735.P9869606893448400037

/-! ## A330735.P3197037963315127329

`A000027(n+1)%A110545(A066043(n+1))`
-/

namespace A330735.P3197037963315127329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A110545 (A066043 (n + 1)).toNat)

end

end A330735.P3197037963315127329

/-! ## A330735.P12256067339452211193

`A074591(n+1)%A110545(A066043(n+1))`
-/

namespace A330735.P12256067339452211193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074591 (n + 1)) (A110545 (A066043 (n + 1)).toNat)

end

end A330735.P12256067339452211193

/-! ## A330735.P14108119102946177644

`A330734(n+1)%A110545(A066043(n+1))`
-/

namespace A330735.P14108119102946177644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330734 (n + 1)) (A110545 (A066043 (n + 1)).toNat)

end

end A330735.P14108119102946177644

/-! ## A330735.P18028541851363993335

`(A137929(n+1)*A330691(n+1))%A034699(n+1)`
-/

namespace A330735.P18028541851363993335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137929 (n + 1) * A330691 (n + 1)) (A034699 (n + 1))

end

end A330735.P18028541851363993335

/-!
# A330736: Numbers k such that k is not a multiple of A309639(k), where A309639(k) is the index of the least harmonic number H_i whose denominator (A002805) is divisible by k.

The programs for A330736, there is no canonical definition to state claims against.
-/

/-! ## A330736.P15375458962844433283

`lt[0, A330735(n+1)]+1`
-/

namespace A330736.P15375458962844433283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A330736.P15375458962844433283

/-! ## A330736.P15092499080413569475

`lt[A330691(n+1), A034699(n+1)]+1`
-/

namespace A330736.P15092499080413569475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A330736.P15092499080413569475

/-! ## A330736.P14612157261299244288

`A011760(lt[A330691(n+1), A034699(n+1)])`
-/

namespace A330736.P14612157261299244288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330736.P14612157261299244288

/-! ## A330736.P14962117700527921431

`A020725(lt[A330691(n+1), A034699(n+1)])`
-/

namespace A330736.P14962117700527921431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330736.P14962117700527921431

/-! ## A330736.P12554540886328494856

`A114637(lt[A330691(n+1), A034699(n+1)])`
-/

namespace A330736.P12554540886328494856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330736.P12554540886328494856

/-!
# A330738: Ordinal transform of A049820, where A049820(n) = n - d(n), with d(n) the number of divisors of n (A000005).

The programs for A330738, there is no canonical definition to state claims against.
-/

/-! ## A330738.P16424015078827234884

`A067029(A067029(3*(n+1))*A360320(n+5))`
-/

namespace A330738.P16424015078827234884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A067029 (3 * (n + 1)) * A360320 (n + 5)).toNat

end

end A330738.P16424015078827234884

/-! ## A330738.P6030833061389619595

`A108244(A373799(n+2))`
-/

namespace A330738.P6030833061389619595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A373799 (n + 2)).toNat

end

end A330738.P6030833061389619595

/-! ## A330738.P10317764204893857568

`gcd(A049532(n+1), A049533(round(ϕ^n)))`
-/

namespace A330738.P10317764204893857568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049532 (n + 1)) (A049533 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)).toNat)

end

end A330738.P10317764204893857568

/-! ## A330738.P13154011909968615459

`gcd(A002033(A387333(2*n+3)), A320011(n+1))`
-/

namespace A330738.P13154011909968615459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002033 (A387333 (2 * n + 3)).toNat) (A320011 (n + 1))

end

end A330738.P13154011909968615459

/-! ## A330738.P3505883742041048662

`A067029(∑[A124530(3*n+4)+1])`
-/

namespace A330738.P3505883742041048662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (3 * n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330738.P3505883742041048662

/-!
# A330739: Number of values of k, 1 <= k <= n, with A047994(k) = A047994(n), where A047994 is unitary totient function uphi(n).

The programs for A330739, there is no canonical definition to state claims against.
-/

/-! ## A330739.P17340781440066294054

`A344772(gcd(n+1, A151772(n)))`
-/

namespace A330739.P17340781440066294054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344772 (Int.gcd (n + 1 : ℤ) (A151772 n))

end

end A330739.P17340781440066294054

/-! ## A330739.P8431672111482293379

`gcd(A344754(A344763(3*(n+1))), A344772(n+1))`
-/

namespace A330739.P8431672111482293379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344754 (A344763 (3 * (n + 1))).toNat) (A344772 (n + 1))

end

end A330739.P8431672111482293379

/-! ## A330739.P3208262993921334979

`A344772(n+1)^A059059(A145225(n))`
-/

namespace A330739.P3208262993921334979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344772 (n + 1) : ℚ) ^ (A059059 (A145225 n).toNat : ℤ)

end

end A330739.P3208262993921334979

/-! ## A330739.P2412067655241218562

`A080885(A328867(3*n+2))+A001221(n+1)`
-/

namespace A330739.P2412067655241218562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080885 (A328867 (3 * n + 2)).toNat + A001221 (n + 1)

end

end A330739.P2412067655241218562

/-! ## A330739.P10394073314372121707

`gcd(A250120(A245301(n)), A344772(n+1))`
-/

namespace A330739.P10394073314372121707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250120 (A245301 n).toNat) (A344772 (n + 1))

end

end A330739.P10394073314372121707

/-!
# A330740: a(n) = min(n, A004488(n)), where A004488(n) is base-3 sum n+n without carries.

The programs for A330740, the canonical program `A330740.P3370590016903294651` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330740 has offset 0).

The definition of A330740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330740.P3370590016903294651

`A117967(abs(A117966(n)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A330740

/-- `A117967(abs(A117966(n)))` -/
def P3370590016903294651.Spec : Prop :=
  ∀ n, P3370590016903294651.a n = A330740 n

theorem P3370590016903294651.correct : P3370590016903294651.Spec := by
  intro n
  simp only [A330740]

end A330740

/-! ## A330740.P2321460611782084903

`char[A117968(n+1)]*A117966(n)+n`
-/

namespace A330740.P2321460611782084903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117968 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A117966 n + (n : ℤ)

end

end A330740.P2321460611782084903

namespace A330740

/-- `char[A117968(n+1)]*A117966(n)+n` -/
def P2321460611782084903.Spec : Prop :=
  ∀ n, P2321460611782084903.a n = A330740 n

end A330740

/-! ## A330740.P314096043646391310

`A117967(∑{d}[A117966(n), A000010(#)])`
-/

namespace A330740.P314096043646391310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A330740.P314096043646391310

namespace A330740

/-- `A117967(∑{d}[A117966(n), A000010(#)])` -/
def P314096043646391310.Spec : Prop :=
  ∀ n, P314096043646391310.a n = A330740 n

end A330740

/-! ## A330740.P7753616578324775720

`A117967(gcd(2*A117966(n), A117966(n)))`
-/

namespace A330740.P7753616578324775720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (Int.gcd (2 * A117966 n) (A117966 n))

end

end A330740.P7753616578324775720

namespace A330740

/-- `A117967(gcd(2*A117966(n), A117966(n)))` -/
def P7753616578324775720.Spec : Prop :=
  ∀ n, P7753616578324775720.a n = A330740 n

end A330740

/-! ## A330740.P3309916187577378146

`A117967(lcm(n-A004488(n), A117966(n)))`
-/

namespace A330740.P3309916187577378146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (Int.lcm ((n : ℤ) - A004488 n) (A117966 n))

end

end A330740.P3309916187577378146

namespace A330740

/-- `A117967(lcm(n-A004488(n), A117966(n)))` -/
def P3309916187577378146.Spec : Prop :=
  ∀ n, P3309916187577378146.a n = A330740 n

end A330740

/-! ## A330740.P2162498619733951580

`A117967(gcd(A117966(A004488(n)), A117966(n)))`
-/

namespace A330740.P2162498619733951580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (Int.gcd (A117966 (A004488 n).toNat) (A117966 n))

end

end A330740.P2162498619733951580

namespace A330740

/-- `A117967(gcd(A117966(A004488(n)), A117966(n)))` -/
def P2162498619733951580.Spec : Prop :=
  ∀ n, P2162498619733951580.a n = A330740 n

end A330740

/-! ## A330740.P14519378531948241450

`A117967(lcm(A117966(A004488(n)), A117966(n)))`
-/

namespace A330740.P14519378531948241450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (Int.lcm (A117966 (A004488 n).toNat) (A117966 n))

end

end A330740.P14519378531948241450

namespace A330740

/-- `A117967(lcm(A117966(A004488(n)), A117966(n)))` -/
def P14519378531948241450.Spec : Prop :=
  ∀ n, P14519378531948241450.a n = A330740 n

end A330740

/-! ## A330740.P14228581485198032506

`A371268(A374363(n))-A374363(A371268(n))`
-/

namespace A330740.P14228581485198032506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A374363 n).toNat - A374363 (A371268 n).toNat

end

end A330740.P14228581485198032506

namespace A330740

/-- `A371268(A374363(n))-A374363(A371268(n))` -/
def P14228581485198032506.Spec : Prop :=
  ∀ n, P14228581485198032506.a n = A330740 n

end A330740

/-! ## A330740.P9134947160935995949

`A117967(A004526(A140266(n+1)))`
-/

namespace A330740.P9134947160935995949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A004526 (A140266 (n + 1)).toNat).toNat

end

end A330740.P9134947160935995949

namespace A330740

/-- `A117967(A004526(A140266(n+1)))` -/
def P9134947160935995949.Spec : Prop :=
  ∀ n, P9134947160935995949.a n = A330740 n

end A330740

/-!
# A330741: a(n) = gcd(A309639(n), A319626(n)).

The programs for A330741, there is no canonical definition to state claims against.
-/

/-! ## A330741.P4686285748335449708

`(n+1)/A330742(n+1)`
-/

namespace A330741.P4686285748335449708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330742 (n + 1) : ℚ)

end

end A330741.P4686285748335449708

/-! ## A330741.P11402844442562717153

`gcd(A309639(n+1), A319626(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330741.P11402844442562717153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A309639 (n + 1)) (A319626 (n + 1))

end

end A330741.P11402844442562717153

/-! ## A330741.P14611223530703886099

`gcd((n+1)/A330749(n+1), A330734(n+1))`
-/

namespace A330741.P14611223530703886099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A330749 (n + 1) : ℚ))) (A330734 (n + 1))

end

end A330741.P14611223530703886099

/-! ## A330741.P10467682840619261482

`-(A001478(n+1)/lcm(A330692(n+1), A330749(n+1)))`
-/

namespace A330741.P10467682840619261482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A001478 (n + 1) : ℚ) / (Int.lcm (A330692 (n + 1)) (A330749 (n + 1)) : ℚ))

end

end A330741.P10467682840619261482

/-! ## A330741.P17323735013746215782

`gcd(A064989(A348994(n+1)), A330691(n+1))`
-/

namespace A330741.P17323735013746215782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064989 (A348994 (n + 1)).toNat) (A330691 (n + 1))

end

end A330741.P17323735013746215782

/-! ## A330741.P4073581367091587321

`A219158(A330742(n+1)+A000217(n))`
-/

namespace A330741.P4073581367091587321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A330742 (n + 1) + A000217 n).toNat

end

end A330741.P4073581367091587321

/-!
# A330742: a(n) = n / gcd(A309639(n), A319626(n)).

The programs for A330742, there is no canonical definition to state claims against.
-/

/-! ## A330742.P46224438901235888

`(n+1)/A330741(n+1)`
-/

namespace A330742.P46224438901235888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330741 (n + 1) : ℚ)

end

end A330742.P46224438901235888

/-! ## A330742.P15940799045687929963

`(n+1)/gcd(A309639(n+1), A319626(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330742.P15940799045687929963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A309639 (n + 1)) (A319626 (n + 1)) : ℚ)

end

end A330742.P15940799045687929963

/-! ## A330742.P9492829684387319303

`lcm(A330692(n+1), A330749(n+1))`
-/

namespace A330742.P9492829684387319303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A330692 (n + 1)) (A330749 (n + 1))

end

end A330742.P9492829684387319303

/-! ## A330742.P2823868949372234037

`lcm((n+1)/A319626(n+1), (n+1)/A330691(n+1))`
-/

namespace A330742.P2823868949372234037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A319626 (n + 1) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A330691 (n + 1) : ℚ)))

end

end A330742.P2823868949372234037

/-! ## A330742.P3697206435393710545

`A219158(A330741(n+1)+∑[n])`
-/

namespace A330742.P3697206435393710545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A330741 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330742.P3697206435393710545

/-! ## A330742.P16515759917345161187

`A234575(A330741(n+1)+∑[n])`
-/

namespace A330742.P16515759917345161187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A330741 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330742.P16515759917345161187

/-! ## A330742.P7651565767017514664

`A010766(A330741(n+1)+∑[n])`
-/

namespace A330742.P7651565767017514664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A330741 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330742.P7651565767017514664

/-! ## A330742.P15800809339060621755

`A051537(A330741(n+1)+∑[n])`
-/

namespace A330742.P15800809339060621755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A330741 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330742.P15800809339060621755

/-! ## A330742.P150574563305461464

`A054531(A330741(n+1)+∑[n])`
-/

namespace A330742.P150574563305461464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A330741 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330742.P150574563305461464

/-! ## A330742.P5324793078973393457

`A049834(A330741(n+1)+A000217(n))`
-/

namespace A330742.P5324793078973393457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A330741 (n + 1) + A000217 n).toNat

end

end A330742.P5324793078973393457

/-! ## A330742.P16473047478652946522

`A126988(A330741(n+1)+A000217(n))`
-/

namespace A330742.P16473047478652946522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A330741 (n + 1) + A000217 n).toNat

end

end A330742.P16473047478652946522

/-!
# A330743: a(n) is the first term k of A329902 for which A056239(k) = n.

The programs for A330743, there is no canonical definition to state claims against.
-/

/-! ## A330743.P6676305064609860991

`A329902(A330748(n))`
-/

namespace A330743.P6676305064609860991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (A330748 n).toNat

end

end A330743.P6676305064609860991

/-! ## A330743.P7227537945168974366

`A329900(A328521(n))`
-/

namespace A330743.P7227537945168974366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A328521 n).toNat

end

end A330743.P7227537945168974366

/-! ## A330743.P13878368301797812066

`A319626(A328521(n))`
-/

namespace A330743.P13878368301797812066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A328521 n).toNat

end

end A330743.P13878368301797812066

/-! ## A330743.P8001011671070426402

`record[A329902(A338466(n+1))]`
-/

namespace A330743.P8001011671070426402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (A338466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330743.P8001011671070426402

/-! ## A330743.P769854780809972103

`A330744(A329900(A108951(n+1)))`
-/

namespace A330743.P769854780809972103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330744 (A329900 (A108951 (n + 1)).toNat).toNat

end

end A330743.P769854780809972103

/-!
# A330744: Primorial deflation of A133411(n), where A133411(n) is the smallest highly composite number of the form k*a(n-1) where k is an integer greater than 1.

The programs for A330744, there is no canonical definition to state claims against.
-/

/-! ## A330744.P12062785579148259592

`record[A330745(A092982(n+1))]`
-/

namespace A330744.P12062785579148259592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330745 (A092982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330744.P12062785579148259592

/-! ## A330744.P9242531140343148373

`record[A330745(A097369(n+2))]`
-/

namespace A330744.P9242531140343148373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330745 (A097369 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330744.P9242531140343148373

/-! ## A330744.P15744595668182376151

`record[A330745(A123271(n+2)²+n)]`
-/

namespace A330744.P15744595668182376151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330745 (A123271 (n + 2) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330744.P15744595668182376151

/-! ## A330744.P14048818147467773701

`record[A330745(n+1)%A054036(n+1)]`
-/

namespace A330744.P14048818147467773701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330745 (n + 1)) (A054036 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330744.P14048818147467773701

/-!
# A330745: Primorial deflation of A019505(n), where A019505(n) is smallest number with same number of divisors as 2*A019505(n-1), starting from A019505(1) = 1.

The programs for A330745, there is no canonical definition to state claims against.
-/

/-! ## A330745.P15193754067067662250

`A329900(A019505(n+1))`
-/

namespace A330745.P15193754067067662250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A019505 (n + 1)).toNat

end

end A330745.P15193754067067662250

/-! ## A330745.P8510265992505336314

`A329900(A135614(n+1))`
-/

namespace A330745.P8510265992505336314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A135614 (n + 1)).toNat

end

end A330745.P8510265992505336314

/-! ## A330745.P13750944700045936250

`A329900(A350049(n+1))`
-/

namespace A330745.P13750944700045936250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A350049 (n + 1)).toNat

end

end A330745.P13750944700045936250

/-! ## A330745.P11360090734372857442

`A019505(n+1)/A330749(A135614(n+1))`
-/

namespace A330745.P11360090734372857442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019505 (n + 1) : ℚ) / (A330749 (A135614 (n + 1)).toNat : ℚ)

end

end A330745.P11360090734372857442

/-! ## A330745.P413130552537765235

`A061799(A020697(n+1))/A330749(A135614(n+1))`
-/

namespace A330745.P413130552537765235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (A020697 (n + 1)).toNat : ℚ) / (A330749 (A135614 (n + 1)).toNat : ℚ)

end

end A330745.P413130552537765235

/-!
# A330746: Number of values of k, 1 <= k <= n, with A017666(k) = A017666(n), where A017666(n) = n/gcd(n, sigma(n)).

The programs for A330746, there is no canonical definition to state claims against.
-/

/-! ## A330746.P9320630107015876371

`A262432(A017666(n+1)+∑[n])`
-/

namespace A330746.P9320630107015876371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (A017666 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330746.P9320630107015876371

/-! ## A330746.P3702321971778613040

`A262432(A000217(n)+(n+1)/A009194(n+1))`
-/

namespace A330746.P3702321971778613040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (n + 1 : ℚ) / (A009194 (n + 1) : ℚ))).toNat

end

end A330746.P3702321971778613040

/-! ## A330746.P2108151429431833220

`A262432(A000217(n)+(n+1)/gcd(n+1, A000203(n+1)))`
-/

namespace A330746.P2108151429431833220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ))).toNat

end

end A330746.P2108151429431833220

/-! ## A330746.P5448002378226492726

`A262432(A017665(n+1)+A000217(n)-A243473(n+1))`
-/

namespace A330746.P5448002378226492726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (A017665 (n + 1) + (A000217 n - A243473 (n + 1))).toNat

end

end A330746.P5448002378226492726

/-! ## A330746.P400291835373425669

`A262432(A000217(n)+A009242(n+1)/A000203(n+1))`
-/

namespace A330746.P400291835373425669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A009242 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A330746.P400291835373425669

/-! ## A330746.P10056103466757501851

`A262432(A000217(n)+A249670(n+1)/A017665(n+1))`
-/

namespace A330746.P10056103466757501851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A249670 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A330746.P10056103466757501851

/-! ## A330746.P15297110820475816939

`A262432(A000217(n)+A009242(n+1)/(A001065(n+1)+1+n))`
-/

namespace A330746.P15297110820475816939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A009242 (n + 1) : ℚ) / (A001065 (n + 1) + 1 + (n : ℤ) : ℚ))).toNat

end

end A330746.P15297110820475816939

/-!
# A330747: Number of values of k, 1 <= k <= n, with A049559(k) = A049559(n), where A049559(n) = gcd(n - 1, phi(n)).

The programs for A330747, there is no canonical definition to state claims against.
-/

/-! ## A330747.P17367632117612068336

`A078898(n+1)+A000007(A126120(n))`
-/

namespace A330747.P17367632117612068336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n + 1) + A000007 (A126120 n).toNat

end

end A330747.P17367632117612068336

/-! ## A330747.P10626318837812987261

`A078898(n+1)+A059841(A175426(n+1))`
-/

namespace A330747.P10626318837812987261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n + 1) + A059841 (A175426 (n + 1)).toNat

end

end A330747.P10626318837812987261

/-! ## A330747.P10889070494265417581

`A246277(n+1)+A000035(A005918(3*n))`
-/

namespace A330747.P10889070494265417581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A000035 (A005918 (3 * n)).toNat

end

end A330747.P10889070494265417581

/-! ## A330747.P2709732818165896193

`A305897(n+1)-A007814(A010000(5*n))`
-/

namespace A330747.P2709732818165896193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (n + 1) - A007814 (A010000 (5 * n)).toNat

end

end A330747.P2709732818165896193

/-! ## A330747.P11299999259169741994

`A065704(A020639(n+1)^A302042(n+1))`
-/

namespace A330747.P11299999259169741994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) ^ (A302042 (n + 1) : ℤ))).toNat

end

end A330747.P11299999259169741994

/-!
# A330749: a(n) = gcd(n, A064989(n)), where A064989 is fully multiplicative with a(2) = 1 and a(prime(k)) = prime(k-1) for odd primes.

The programs for A330749, the canonical program `A330749.P2089364656519205452` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330749 has offset 1).

The definition of A330749 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330749.P4536087564458042120

`(n+1)/A319626(n+1)`
-/

namespace A330749.P4536087564458042120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A319626 (n + 1) : ℚ)

end

end A330749.P4536087564458042120

namespace A330749

/-- `(n+1)/A319626(n+1)` -/
def P4536087564458042120.Spec : Prop :=
  ∀ n, P4536087564458042120.a n = (A330749 (n + 1) : ℚ)

end A330749

/-! ## A330749.P2089364656519205452

`gcd(n+1, A064989(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A330749

/-- `gcd(n+1, A064989(n+1))` -/
def P2089364656519205452.Spec : Prop :=
  ∀ n, (P2089364656519205452.a n : ℤ) = A330749 (n + 1)

theorem P2089364656519205452.correct : P2089364656519205452.Spec := by
  intro n
  simp only [A330749, Nat.add_sub_cancel]

end A330749

/-! ## A330749.P10694349728932049713

`A064989(A322361(n+1))`
-/

namespace A330749.P10694349728932049713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A322361 (n + 1)).toNat

end

end A330749.P10694349728932049713

namespace A330749

/-- `A064989(A322361(n+1))` -/
def P10694349728932049713.Spec : Prop :=
  ∀ n, P10694349728932049713.a n = A330749 (n + 1)

end A330749

/-! ## A330749.P11783394638903962965

`gcd(1-char[1]+n, A290099(n+1))`
-/

namespace A330749.P11783394638903962965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)) (A290099 (n + 1))

end

end A330749.P11783394638903962965

namespace A330749

/-- `gcd(1-char[1]+n, A290099(n+1))` -/
def P11783394638903962965.Spec : Prop :=
  ∀ n, (P11783394638903962965.a n : ℤ) = A330749 (n + 1)

end A330749

/-! ## A330749.P7798423289968245972

`A064989(n+1)/A319627(n+1)`
-/

namespace A330749.P7798423289968245972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A319627 (n + 1) : ℚ)

end

end A330749.P7798423289968245972

namespace A330749

/-- `A064989(n+1)/A319627(n+1)` -/
def P7798423289968245972.Spec : Prop :=
  ∀ n, P7798423289968245972.a n = (A330749 (n + 1) : ℚ)

end A330749

/-! ## A330749.P9809005253529189803

`A064989((n+1)/A348990(n+1))`
-/

namespace A330749.P9809005253529189803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A348990 (n + 1) : ℚ))).toNat

end

end A330749.P9809005253529189803

namespace A330749

/-- `A064989((n+1)/A348990(n+1))` -/
def P9809005253529189803.Spec : Prop :=
  ∀ n, P9809005253529189803.a n = A330749 (n + 1)

end A330749

/-! ## A330749.P3718211698138702421

`A252463(gcd(A000265(n+1), A003961(n+1)))`
-/

namespace A330749.P3718211698138702421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.gcd (A000265 (n + 1)) (A003961 (n + 1)))

end

end A330749.P3718211698138702421

namespace A330749

/-- `A252463(gcd(A000265(n+1), A003961(n+1)))` -/
def P3718211698138702421.Spec : Prop :=
  ∀ n, P3718211698138702421.a n = A330749 (n + 1)

end A330749

/-! ## A330749.P11776550002414272432

`gcd(A252463(A000265(2*(n+1))), A252463(2*(n+1)))`
-/

namespace A330749.P11776550002414272432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252463 (A000265 (2 * (n + 1))).toNat) (A252463 (2 * (n + 1)))

end

end A330749.P11776550002414272432

namespace A330749

/-- `gcd(A252463(A000265(2*(n+1))), A252463(2*(n+1)))` -/
def P11776550002414272432.Spec : Prop :=
  ∀ n, (P11776550002414272432.a n : ℤ) = A330749 (n + 1)

end A330749

/-! ## A330749.P17792623406579136418

`gcd(A000027(n+1), A246277(A166466(n+1)))`
-/

namespace A330749.P17792623406579136418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A246277 (A166466 (n + 1)).toNat)

end

end A330749.P17792623406579136418

namespace A330749

/-- `gcd(A000027(n+1), A246277(A166466(n+1)))` -/
def P17792623406579136418.Spec : Prop :=
  ∀ n, (P17792623406579136418.a n : ℤ) = A330749 (n + 1)

end A330749

/-! ## A330749.P8363262937872061697

`gcd(A246277(A166466(2*(n+1))), A246277(2*(n+1)))`
-/

namespace A330749.P8363262937872061697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246277 (A166466 (2 * (n + 1))).toNat) (A246277 (2 * (n + 1)))

end

end A330749.P8363262937872061697

namespace A330749

/-- `gcd(A246277(A166466(2*(n+1))), A246277(2*(n+1)))` -/
def P8363262937872061697.Spec : Prop :=
  ∀ n, (P8363262937872061697.a n : ℤ) = A330749 (n + 1)

end A330749

/-! ## A330749.P5690872169059919906

`(n+1)/A064989(A348994(n+1))`
-/

namespace A330749.P5690872169059919906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (A348994 (n + 1)).toNat : ℚ)

end

end A330749.P5690872169059919906

namespace A330749

/-- `(n+1)/A064989(A348994(n+1))` -/
def P5690872169059919906.Spec : Prop :=
  ∀ n, P5690872169059919906.a n = (A330749 (n + 1) : ℚ)

end A330749

/-!
# A330751: Number of values of k, 1 <= k <= n, with A319626(k) = A319626(n), where A319626(n) gives the numerator of rational valued primorial deflation of n.

The programs for A330751, there is no canonical definition to state claims against.
-/

/-! ## A330751.P1947060986637888728

`round(sqrt(A322361(n+1)/A296773(2*n+1)))`
-/

namespace A330751.P1947060986637888728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A322361 (n + 1) : ℚ) / (A296773 (2 * n + 1) : ℚ) : ℝ))

end

end A330751.P1947060986637888728

/-! ## A330751.P10240967703663610790

`gcd(A073093(A322361(n+1)), A321272(n+1))`
-/

namespace A330751.P10240967703663610790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073093 (A322361 (n + 1)).toNat) (A321272 (n + 1))

end

end A330751.P10240967703663610790

/-! ## A330751.P3441501751940481334

`gcd(A093407(A068555(n)), A353372(n+1))`
-/

namespace A330751.P3441501751940481334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093407 (A068555 n).toNat) (A353372 (n + 1))

end

end A330751.P3441501751940481334

/-! ## A330751.P13744772840060543280

`A046951(A138819(n+5)+A063995(n+1))`
-/

namespace A330751.P13744772840060543280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A138819 (n + 5) + A063995 (n + 1)).toNat

end

end A330751.P13744772840060543280

/-! ## A330751.P10607084403937248490

`gcd(A112505(n+1), A259351(n+1))`
-/

namespace A330751.P10607084403937248490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112505 (n + 1)) (A259351 (n + 1))

end

end A330751.P10607084403937248490

/-!
# A330752: Number of values of k, 1 <= k <= n, with A328478(k) = A328478(n), where A328478(n) gives the remainder when all maximal primorial divisors of n (from the largest to smallest) have been divided out.

The programs for A330752, there is no canonical definition to state claims against.
-/

/-! ## A330752.P16346219228230318649

`A000005(A000034(n)^A050382(n+1))`
-/

namespace A330752.P16346219228230318649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000034 n : ℚ) ^ (A050382 (n + 1) : ℤ))).toNat

end

end A330752.P16346219228230318649

/-! ## A330752.P14187491032298365392

`A001511(A000034(n)^A050382(n+1))`
-/

namespace A330752.P14187491032298365392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A000034 n : ℚ) ^ (A050382 (n + 1) : ℤ))).toNat

end

end A330752.P14187491032298365392

/-! ## A330752.P7288255982518271771

`A000005(A010684(n)^A050382(n+1))`
-/

namespace A330752.P7288255982518271771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A010684 n : ℚ) ^ (A050382 (n + 1) : ℤ))).toNat

end

end A330752.P7288255982518271771

/-! ## A330752.P6095702232644080081

`A073093(A000034(n)^A050382(n+1))`
-/

namespace A330752.P6095702232644080081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((A000034 n : ℚ) ^ (A050382 (n + 1) : ℤ))).toNat

end

end A330752.P6095702232644080081

/-! ## A330752.P15790924104425001048

`A000005(A084642(n)^A050382(n+1))`
-/

namespace A330752.P15790924104425001048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A084642 n : ℚ) ^ (A050382 (n + 1) : ℤ))).toNat

end

end A330752.P15790924104425001048

/-!
# A330753: Number of values of k, 1 <= k <= n, with A309639(k) = A309639(n), where A309639 gives the index of the least harmonic number whose denominator is divisible by n.

The programs for A330753, there is no canonical definition to state claims against.
-/

/-! ## A330753.P15005014572719978029

`A330754(n+1)%A127821(n+1)`
-/

namespace A330753.P15005014572719978029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330754 (n + 1)) (A127821 (n + 1))

end

end A330753.P15005014572719978029

/-! ## A330753.P14128868792752334412

`A330754(and(1, A117060(n+1))+n)`
-/

namespace A330753.P14128868792752334412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330754 (Int.land 1 (A117060 (n + 1)) + (n : ℤ)).toNat

end

end A330753.P14128868792752334412

/-! ## A330753.P16171394591368223058

`and(A145038(n+1), A330754(n+1))`
-/

namespace A330753.P16171394591368223058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145038 (n + 1)) (A330754 (n + 1))

end

end A330753.P16171394591368223058

/-! ## A330753.P1606779137797206641

`A330754(n+1)^(A204060(n+1)+1)`
-/

namespace A330753.P1606779137797206641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330754 (n + 1) : ℚ) ^ (A204060 (n + 1) + 1 : ℤ)

end

end A330753.P1606779137797206641

/-! ## A330753.P9722278740065511302

`A330754(n+1)+A000007(A011757(n+1))`
-/

namespace A330753.P9722278740065511302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330754 (n + 1) + A000007 (A011757 (n + 1)).toNat

end

end A330753.P9722278740065511302

/-!
# A330755: Number of values of k, 1 <= k <= n, with A034684(k) = A034684(n), where A034684 gives the smallest unitary divisor of n that is larger than 1.

The programs for A330755, there is no canonical definition to state claims against.
-/

/-! ## A330755.P17619823334453164578

`A306286(A289271(n+1))`
-/

namespace A330755.P17619823334453164578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A289271 (n + 1)).toNat

end

end A330755.P17619823334453164578

/-! ## A330755.P6073762740369780019

`A070939(A322995(n+1)%A075308(n+1))`
-/

namespace A330755.P6073762740369780019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A322995 (n + 1)) (A075308 (n + 1))).toNat

end

end A330755.P6073762740369780019

/-! ## A330755.P9992152253920533549

`A215467(A289271(n+1))`
-/

namespace A330755.P9992152253920533549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A289271 (n + 1)).toNat

end

end A330755.P9992152253920533549

/-! ## A330755.P14259383291303945422

`A008687(abs(1-A289271(n+1))+1)`
-/

namespace A330755.P14259383291303945422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (|1 - A289271 (n + 1)| + 1).toNat

end

end A330755.P14259383291303945422

/-! ## A330755.P2818832928478403312

`A002487(A289271(n+1)+A000007(n))`
-/

namespace A330755.P2818832928478403312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A289271 (n + 1) + A000007 n).toNat

end

end A330755.P2818832928478403312

/-!
# A330756: Number of values of k, 1 <= k <= n, with A063994(k) = A063994(n), where A063994(n) = Product_{primes p dividing n} gcd(p-1, n-1).

The programs for A330756, there is no canonical definition to state claims against.
-/

/-! ## A330756.P6067436657934991796

`A046660(4*A298882(n+1))`
-/

namespace A330756.P6067436657934991796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (4 * A298882 (n + 1)).toNat

end

end A330756.P6067436657934991796

/-! ## A330756.P12368172401410037248

`A000005(A083039(n+1)^A278529(n+1))`
-/

namespace A330756.P12368172401410037248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A083039 (n + 1) : ℚ) ^ (A278529 (n + 1) : ℤ))).toNat

end

end A330756.P12368172401410037248

/-! ## A330756.P10489110745663069582

`A001511(lcm(A001055(n+1), A298882(n+1)))`
-/

namespace A330756.P10489110745663069582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A001055 (n + 1)) (A298882 (n + 1)))

end

end A330756.P10489110745663069582

/-! ## A330756.P16411713221812795684

`∏{e}[(n+1)%2+3*a(n-2), #]` with `a(0)=11, a(1)=90`
-/

namespace A330756.P16411713221812795684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 90] fun n f1 =>
  (n + 1) % 2 + 3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A330756.P16411713221812795684

/-! ## A330756.P8115068976027243644

`A008619(∑{e}[A223925(n+1), #])`
-/

namespace A330756.P8115068976027243644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A330756.P8115068976027243644

/-!
# A330758: Number of quasi-magic (only short lines are magic) knight's tours on a 6 X 2n board.

The programs for A330758, there is no canonical definition to state claims against.
-/

/-! ## A330758.P13050939698627668134

`floor(2*n/5)*A326916(floor(2^(n-1)))`
-/

namespace A330758.P13050939698627668134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 5)⌋ * A326916 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A330758.P13050939698627668134

/-!
# A330759: Number T(n,k) of set partitions into k blocks of strict integer partitions of n; triangle T(n,k), n>=0, 0<=k<=A003056(n), read by rows.

The programs for A330759, there is no canonical definition to state claims against.
-/

/-! ## A330759.P14708462458498725580

`A330460(lt[A117434(n), A278148(2*n+5)])`
-/

namespace A330759.P14708462458498725580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278148 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330460 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330759.P14708462458498725580

/-! ## A330759.P3213202858870176544

`A003056(A321878(n)+A018895(n))`
-/

namespace A330759.P3213202858870176544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A321878 n + A018895 n).toNat

end

end A330759.P3213202858870176544

/-! ## A330759.P18113559077091369772

`A003056(A321878(n)%A202292(n))`
-/

namespace A330759.P18113559077091369772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A321878 n) (A202292 n)).toNat

end

end A330759.P18113559077091369772

/-! ## A330759.P5097050883197367876

`A003056(or(A018895(n), A321878(n)))`
-/

namespace A330759.P5097050883197367876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A018895 n) (A321878 n)).toNat

end

end A330759.P5097050883197367876

/-! ## A330759.P5509605982676593875

`A115721(A242027(n))`
-/

namespace A330759.P5509605982676593875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115721 (A242027 n).toNat

end

end A330759.P5509605982676593875

/-!
# A330761: Array read by antidiagonals: T(n,k) is the number of faces on a ring formed by connecting the ends of a prismatic rod whose cross-section is an n-sided regular polygon after applying a twist of k/n turns.

The programs for A330761, there is no canonical definition to state claims against.
-/

/-! ## A330761.P10401472756215833455

`gcd(row(n)+2, col(n))`
-/

namespace A330761.P10401472756215833455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n)

end

end A330761.P10401472756215833455

/-! ## A330761.P1179010894592483932

`gcd(n-C(∑[char[∑[n]]], 2), comp[∑[n]]-n)`
-/

namespace A330761.P1179010894592483932
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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))

end

end A330761.P1179010894592483932

/-! ## A330761.P10686276416378206157

`gcd(n-comp[∑[n]], A002262(n))`
-/

namespace A330761.P10686276416378206157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) (A002262 n)

end

end A330761.P10686276416378206157

/-! ## A330761.P1528184611943261664

`gcd(comp[∑[n]]-n, A004813(n+1))`
-/

namespace A330761.P1528184611943261664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A004813 (n + 1))

end

end A330761.P1528184611943261664

/-! ## A330761.P6047785296690937689

`gcd(comp[C(n, 2)]-n, n-A057944(n))`
-/

namespace A330761.P6047785296690937689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) ((n : ℤ) - A057944 n)

end

end A330761.P6047785296690937689

/-! ## A330761.P5229926238043279883

`gcd(n-C(∑[char[∑[n+1]]], 2)+2, A000005(∏[char[∑[n]]+1]))`
-/

namespace A330761.P5229926238043279883
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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
  (if ∃ j, f5 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2) (A000005 (∏ j ∈ Finset.range (n + 1), f4 j))

end

end A330761.P5229926238043279883

/-! ## A330761.P15405343453260736893

`A109004(eq[0, A167374(n)])`
-/

namespace A330761.P15405343453260736893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330761.P15405343453260736893

/-! ## A330761.P13681972558147888872

`A067815(A189151(n+1)-1)`
-/

namespace A330761.P13681972558147888872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (A189151 (n + 1) - 1).toNat

end

end A330761.P13681972558147888872

/-! ## A330761.P311322535363939582

`A109004(lt[1, A007318(n+1)])`
-/

namespace A330761.P311322535363939582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A330761.P311322535363939582

/-! ## A330761.P7941495584817739279

`A109004(lt[1, A007318(n)]-1)`
-/

namespace A330761.P7941495584817739279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A330761.P7941495584817739279

/-!
# A330764: Number of series-reduced rooted trees whose leaves are sets with a total of n elements covering an initial interval of positive integers.

The programs for A330764, there is no canonical definition to state claims against.
-/

/-! ## A330764.P14124858753546609366

`A004277(A001813(n))-A111531(n)`
-/

namespace A330764.P14124858753546609366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001813 n).toNat - A111531 n

end

end A330764.P14124858753546609366

/-!
# A330765: Total number of blocks in all set partitions of strict integer partitions of n.

The programs for A330765, there is no canonical definition to state claims against.
-/

/-! ## A330765.P5060943481772952680

`A091245(A351017(n)+2)`
-/

namespace A330765.P5060943481772952680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A351017 n + 2).toNat

end

end A330765.P5060943481772952680

/-! ## A330765.P10909236145386452004

`A351017(A029966(n+1))-A032153(n)`
-/

namespace A330765.P10909236145386452004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351017 (A029966 (n + 1)).toNat - A032153 n

end

end A330765.P10909236145386452004

/-! ## A330765.P3834398164577420668

`A351017(A039723(n))-A000009(n)-A308870(n)`
-/

namespace A330765.P3834398164577420668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351017 (A039723 n).toNat - A000009 n - A308870 n

end

end A330765.P3834398164577420668

/-!
# A330767: a(n) = 25*a(n-1) + a(n-2), starting with a(0) = 2 and a(1) = 25.

The programs for A330767, the canonical program `A330767.P398428908081696896` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330767 has offset 0).

The definition of A330767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*a(n-1)+a(n-2)` (program `A330767.P398428908081696896`, by `A330767.P398428908081696896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330767.P11428559880071407252

`ogf((2-25x)/(1-25x-x^2))`
-/

namespace A330767.P11428559880071407252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -25] [1, -25, -1] n

end

end A330767.P11428559880071407252

namespace A330767

/-- `ogf((2-25x)/(1-25x-x^2))` -/
def P11428559880071407252.Spec : Prop :=
  ∀ n, P11428559880071407252.a n = A330767 n

end A330767

/-! ## A330767.P398428908081696896

`25*a(n-1)+a(n-2)` with `a(0)=2, a(1)=25`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330767

/-- `25*a(n-1)+a(n-2)` -/
def P398428908081696896.Spec : Prop :=
  ∀ n, (P398428908081696896.a n : ℤ) = A330767 n

theorem P398428908081696896.correct : P398428908081696896.Spec := by
  intro n
  simp only [A330767]

end A330767

/-! ## A330767.P9989962564738758719

`((25+sqrt(629))^n+(25-sqrt(629))^n)/2^n`
-/

namespace A330767.P9989962564738758719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((25 + Real.sqrt (629 : ℝ)) ^ n + (25 - Real.sqrt (629 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A330767.P9989962564738758719

namespace A330767

/-- `((25+sqrt(629))^n+(25-sqrt(629))^n)/2^n` -/
def P9989962564738758719.Spec : Prop :=
  ∀ n, P9989962564738758719.a n = (A330767 n : ℝ)

theorem P9989962564738758719.correct : P9989962564738758719.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A330767, Nat.add_sub_cancel, A330767.P9989962564738758719.a, A330767.P398428908081696896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A330767, Nat.add_sub_cancel, A330767.P9989962564738758719.a, A330767.P398428908081696896.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330767

/-! ## A330767.P9370749865927862415

`25*a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=25`

`floor` is left out, it is the identity on integers.
-/

namespace A330767.P9370749865927862415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 25] fun n a =>
  25 * a (n - 1) - (-a (n - 2))

end

end A330767.P9370749865927862415

namespace A330767

/-- `25*a(n-1)-floor(-a(n-2))` -/
def P9370749865927862415.Spec : Prop :=
  ∀ n, P9370749865927862415.a n = A330767 n

end A330767

/-! ## A330767.P5489858426575542012

`26*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=2, a(1)=25`
-/

namespace A330767.P5489858426575542012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 25] fun n a =>
  26 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A330767.P5489858426575542012

namespace A330767

/-- `26*a(n-1)-(a(n-1)-a(n-2))` -/
def P5489858426575542012.Spec : Prop :=
  ∀ n, P5489858426575542012.a n = A330767 n

end A330767

/-!
# A330768: a(n) is the number of divisors d of A014574(n) such that A014574(n)+d-1 and A014574(n)+d+1 are primes.

The programs for A330768, there is no canonical definition to state claims against.
-/

/-! ## A330768.P14955892538041215113

`and(A109221(n), A304452(A094683(n)))`
-/

namespace A330768.P14955892538041215113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109221 n) (A304452 (A094683 n).toNat)

end

end A330768.P14955892538041215113

/-! ## A330768.P12082071638557579817

`A054845(A259515(n+1)-A007732(n+1))`
-/

namespace A330768.P12082071638557579817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (A259515 (n + 1) - A007732 (n + 1)).toNat

end

end A330768.P12082071638557579817

/-! ## A330768.P18136027146202147643

`and(A066060(A270995(n)), A103450(n))`
-/

namespace A330768.P18136027146202147643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066060 (A270995 n).toNat) (A103450 n)

end

end A330768.P18136027146202147643

/-! ## A330768.P12001752727012721229

`and(A007318(A153154(n)), A114501(n+2))`
-/

namespace A330768.P12001752727012721229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (A153154 n).toNat) (A114501 (n + 2))

end

end A330768.P12001752727012721229

/-! ## A330768.P7132155479287836174

`A269248(A358133(n+5)+A265458(n+1))`
-/

namespace A330768.P7132155479287836174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269248 (A358133 (n + 5) + A265458 (n + 1)).toNat

end

end A330768.P7132155479287836174

/-!
# A330769: a(n) = Product_{k=max(1,n)..2*n} prime(k).

The programs for A330769, there is no canonical definition to state claims against.
-/

/-! ## A330769.P651700677497569443

`A008578(n+1)*A107712(n)`
-/

namespace A330769.P651700677497569443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A107712 n

end

end A330769.P651700677497569443

/-! ## A330769.P6069241807796597526

`A015919(n+1)*A107712(n)`
-/

namespace A330769.P6069241807796597526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1) * A107712 n

end

end A330769.P6069241807796597526

/-! ## A330769.P3287993738888707163

`record[A014963(n+1)]*A107712(n)`
-/

namespace A330769.P3287993738888707163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A107712 n

end

end A330769.P3287993738888707163

/-! ## A330769.P4455906871207873069

`A096334(A132209(n))`
-/

namespace A330769.P4455906871207873069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A132209 n).toNat

end

end A330769.P4455906871207873069

/-! ## A330769.P17405780633196893564

`A096334(A004273(n²+n))`
-/

namespace A330769.P17405780633196893564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A004273 (n ^ 2 + n)).toNat

end

end A330769.P17405780633196893564

/-!
# A330770: a(n) = 19 * 8^n + 17 for n >= 0.

The programs for A330770, the canonical program `A330770.P8878950747509732706` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330770 has offset 0).

The definition of A330770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*8^n+17` (program `A330770.P8878950747509732706`, by `A330770.P8878950747509732706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330770.P8878950747509732706

`19*8^n+17`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330770

/-- `19*8^n+17` -/
def P8878950747509732706.Spec : Prop :=
  ∀ n, (P8878950747509732706.a n : ℤ) = A330770 n

theorem P8878950747509732706.correct : P8878950747509732706.Spec := by
  intro n
  simp only [A330770]

end A330770

/-! ## A330770.P10531466578720029186

`xor(19*A000051(3*n), 2)`
-/

namespace A330770.P10531466578720029186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (19 * A000051 (3 * n)) 2

end

end A330770.P10531466578720029186

namespace A330770

/-- `xor(19*A000051(3*n), 2)` -/
def P10531466578720029186.Spec : Prop :=
  ∀ n, P10531466578720029186.a n = A330770 n

end A330770

/-! ## A330770.P9580281486467568307

`abs(A000034(2*n+1)-19*A000051(3*n))`
-/

namespace A330770.P9580281486467568307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000034 (2 * n + 1) - 19 * A000051 (3 * n)|

end

end A330770.P9580281486467568307

namespace A330770

/-- `abs(A000034(2*n+1)-19*A000051(3*n))` -/
def P9580281486467568307.Spec : Prop :=
  ∀ n, P9580281486467568307.a n = A330770 n

end A330770

/-! ## A330770.P8301170877042559997

`(19*A000051(3*n)-2)*A165586(A000051(n))²`
-/

namespace A330770.P8301170877042559997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * A000051 (3 * n) - 2) * A165586 (A000051 n).toNat ^ 2

end

end A330770.P8301170877042559997

namespace A330770

/-- `(19*A000051(3*n)-2)*A165586(A000051(n))²` -/
def P8301170877042559997.Spec : Prop :=
  ∀ n, P8301170877042559997.a n = A330770 n

end A330770

/-!
# A330772: a(n) = 1 for n<1; for n >= 0, a(n+1) = 2*a(n-a(n)).

The programs for A330772, there is no canonical definition to state claims against.
-/

/-! ## A330772.P408041931925986426

`A281130(2*(n+3))%A046525(n+2)`
-/

namespace A330772.P408041931925986426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281130 (2 * (n + 3))) (A046525 (n + 2))

end

end A330772.P408041931925986426

/-! ## A330772.P17320010979603539272

`A048896(record[A102376(n)+A008611(n)])`
-/

namespace A330772.P17320010979603539272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330772.P17320010979603539272

/-! ## A330772.P11909607758344032149

`A281130(2*(n+3))+A038189(A022145(n))`
-/

namespace A330772.P11909607758344032149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281130 (2 * (n + 3)) + A038189 (A022145 n).toNat

end

end A330772.P11909607758344032149

/-! ## A330772.P3358160961829055299

`gcd(A000038(A006128(n)), A281130(2*(n+3)))`
-/

namespace A330772.P3358160961829055299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A006128 n).toNat) (A281130 (2 * (n + 3)))

end

end A330772.P3358160961829055299

/-! ## A330772.P10622165206049344467

`A127973(A315857(n))`
-/

namespace A330772.P10622165206049344467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127973 (A315857 n).toNat

end

end A330772.P10622165206049344467

/-!
# A330773: Number of perfect compositions of n.

The programs for A330773, there is no canonical definition to state claims against.
-/

/-! ## A330773.P7272382566349464408

`A000196(A342086(n+1)^∑{e}[n+1, #])`
-/

namespace A330773.P7272382566349464408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A342086 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A330773.P7272382566349464408

/-! ## A330773.P8940292100151009523

`A000196(A342086(n+1)^log2(∏{e}[n+1, 2^#]))`
-/

namespace A330773.P8940292100151009523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A342086 (n + 1) : ℝ) ^ (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)))).toNat

end

end A330773.P8940292100151009523

/-! ## A330773.P8394094452306551864

`A000196(A342086(n+1)^val(∏{e}[n+1, 2^#], 2))`
-/

namespace A330773.P8394094452306551864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A342086 (n + 1) ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2).toNat

end

end A330773.P8394094452306551864

/-! ## A330773.P3984640438368019328

`A000196(A342086(n+1)^∑{p}[n+1, val(n+1, #)])`
-/

namespace A330773.P3984640438368019328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A342086 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)).toNat

end

end A330773.P3984640438368019328

/-! ## A330773.P6730736115403278385

`A000194(A342086(n+1)^A001222(n+1))`
-/

namespace A330773.P6730736115403278385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A342086 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A330773.P6730736115403278385

/-!
# A330776: Triangle read by rows: T(n,k) is the number of balanced reduced multisystems of weight n with atoms colored using exactly k colors.

The programs for A330776, there is no canonical definition to state claims against.
-/

/-! ## A330776.P15204281466982643104

`A003984(∏{p}[A364534(n)+A053505(n), #])`
-/

namespace A330776.P15204281466982643104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364534 n + A053505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330776.P15204281466982643104

/-!
# A330777: Numbers k such that k and Lucas(k) have the same number of divisors.

The programs for A330777, there is no canonical definition to state claims against.
-/

/-! ## A330777.P14084587637359740893

`eq[A032741(n)+1, A272377(n)]`
-/

namespace A330777.P14084587637359740893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330777.P14084587637359740893

/-! ## A330777.P16449327594841027870

`eq[A000005(n+1), A272377(n+1)]+1`
-/

namespace A330777.P16449327594841027870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330777.P16449327594841027870

/-! ## A330777.P3345439519030296369

`eq[A000005(A028310(n)), A272377(n)]`
-/

namespace A330777.P3345439519030296369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330777.P3345439519030296369

/-! ## A330777.P10943929846909007050

`eq[A000005(A065033(2*n)), A272377(n)]`
-/

namespace A330777.P10943929846909007050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330777.P10943929846909007050

/-! ## A330777.P15529366754623623937

`eq[A000005(A000007(n)+n), A272377(n)]`
-/

namespace A330777.P15529366754623623937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330777.P15529366754623623937

/-!
# A330778: Triangle read by rows: T(n,k) is the number of balanced reduced multisystems of weight n with maximum depth and atoms colored using exactly k colors.

The programs for A330778, there is no canonical definition to state claims against.
-/

/-! ## A330778.P3740557126082678280

`A002260(A147003(n+1)+3)`
-/

namespace A330778.P3740557126082678280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A147003 (n + 1) + 3).toNat

end

end A330778.P3740557126082678280

/-! ## A330778.P14490542864650541260

`A002262(A147003(n+1)+2)+1`
-/

namespace A330778.P14490542864650541260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A147003 (n + 1) + 2).toNat + 1

end

end A330778.P14490542864650541260

/-! ## A330778.P12029236151168440229

`A039776(C(A014689(n+1), eq[and(n, 2*n), and(n, n-1)]))`
-/

namespace A330778.P12029236151168440229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039776 (Nat.choose (A014689 (n + 1)).toNat (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A330778.P12029236151168440229

/-! ## A330778.P9584935034802472164

`and(A003242(n), A168421(A295015(n+1)))`
-/

namespace A330778.P9584935034802472164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003242 n) (A168421 (A295015 (n + 1)).toNat)

end

end A330778.P9584935034802472164

/-! ## A330778.P3912270663341950538

`and(A003242(n), A030102(A002426(n+2)))`
-/

namespace A330778.P3912270663341950538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003242 n) (A030102 (A002426 (n + 2)).toNat)

end

end A330778.P3912270663341950538

/-!
# A330779: Lexicographically earliest sequence of positive integers such that for any v > 0, the value v appears up to v times, and the associate function f defined by f(n) = Sum_{k = 1..n} a(k) * i^k for n >= 0 is injective (where i denotes the imaginary unit).

The programs for A330779, there is no canonical definition to state claims against.
-/

/-! ## A330779.P14864834209120766877

`abs(Δ[A331003(n)+A331002(n)])`
-/

namespace A330779.P14864834209120766877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331003 n + A331002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330779.P14864834209120766877

/-! ## A330779.P1088048534759630363

`Δ[A331003(n)+A331002(n)]*A087960(n)`
-/

namespace A330779.P1088048534759630363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331003 n + A331002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087960 n

end

end A330779.P1088048534759630363

/-! ## A330779.P12558521943284104230

`A000196(Δ[A331003(n)+A331002(n)]²)`
-/

namespace A330779.P12558521943284104230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331003 n + A331002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P12558521943284104230

/-! ## A330779.P4070799556927729849

`A004739(Δ[A331003(n)+A331002(n)]²)`
-/

namespace A330779.P4070799556927729849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331003 n + A331002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P4070799556927729849

/-! ## A330779.P8332841278065646308

`A000196(Δ[A331002(n)-A331003(n)]²)`
-/

namespace A330779.P8332841278065646308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331002 n - A331003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P8332841278065646308

/-! ## A330779.P14031727942442662083

`A004739(Δ[A331002(n)-A331003(n)]²)`
-/

namespace A330779.P14031727942442662083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331002 n - A331003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P14031727942442662083

/-! ## A330779.P17758517411989420161

`A000194(Δ[A331003(n)+A331002(n)]²)`
-/

namespace A330779.P17758517411989420161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331003 n + A331002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P17758517411989420161

/-! ## A330779.P4794808547521123349

`A053615(Δ[A331003(n)+A331002(n)]²)`
-/

namespace A330779.P4794808547521123349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331003 n + A331002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P4794808547521123349

/-! ## A330779.P1343862235305235299

`A000194(Δ[A331002(n)-A331003(n)]²)`
-/

namespace A330779.P1343862235305235299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331002 n - A331003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P1343862235305235299

/-! ## A330779.P1241323060007865369

`A053615(Δ[A331002(n)-A331003(n)]²)`
-/

namespace A330779.P1241323060007865369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331002 n - A331003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A330779.P1241323060007865369

/-!
# A330781: Numbers m that have recursively self-conjugate prime signatures.

The programs for A330781, there is no canonical definition to state claims against.
-/

/-! ## A330781.P17893483457974130026

`A108951(A283478(n+1)^((n+1)/gcd(n+1, 1-∑[2^n])))`
-/

namespace A330781.P17893483457974130026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (SequenceMachineLib.roundAway ((A283478 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) : ℝ))).toNat

end

end A330781.P17893483457974130026

/-! ## A330781.P4620871252505151592

`lcm(A126131(n+1), A355386(A082482(n+1)))`
-/

namespace A330781.P4620871252505151592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A126131 (n + 1)) (A355386 (A082482 (n + 1)).toNat)

end

end A330781.P4620871252505151592

/-!
# A330783: Number of set multipartitions (multisets of sets) of strongly normal multisets of size n, where a finite multiset is strongly normal if it covers an initial interval of positive integers with weakly decreasing multiplicities.

The programs for A330783, there is no canonical definition to state claims against.
-/

/-! ## A330783.P17213105654479992981

`A165477(A006129(n))+A002605(n)`
-/

namespace A330783.P17213105654479992981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A006129 n).toNat + A002605 n

end

end A330783.P17213105654479992981

/-!
# A330785: Triangle read by rows where T(n,k) is the number of chains of length k from minimum to maximum in the poset of integer partitions of n ordered by refinement.

The programs for A330785, there is no canonical definition to state claims against.
-/

/-! ## A330785.P12060919292241714320

`A255270(A090657(n)*A131689(n))`
-/

namespace A330785.P12060919292241714320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A090657 n * A131689 n).toNat

end

end A330785.P12060919292241714320

/-! ## A330785.P16607290389546068620

`A255270(A304336(n)*A342981(n))`
-/

namespace A330785.P16607290389546068620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A304336 n * A342981 n).toNat

end

end A330785.P16607290389546068620

/-! ## A330785.P14871386085558934002

`A117707(A342981(n)+2*A299905(n))`
-/

namespace A330785.P14871386085558934002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A342981 n + 2 * A299905 n).toNat

end

end A330785.P14871386085558934002

/-! ## A330785.P95445009338809531

`A373451(n)+A369965(A240376(2*(n+2)))`
-/

namespace A330785.P95445009338809531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 n + A369965 (A240376 (2 * (n + 2))).toNat

end

end A330785.P95445009338809531

/-! ## A330785.P2532734038178298413

`A299905(A299905(n))+A117707(A342981(n))`
-/

namespace A330785.P2532734038178298413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A299905 n).toNat + A117707 (A342981 n).toNat

end

end A330785.P2532734038178298413

/-!
# A330786: Number of steps to reach 1 by iterating the absolute alternating sum-of-divisors function (A206369).

The programs for A330786, the canonical program `A330786.P9951859796119619334` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330786 has offset 1).

The definition of A330786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330786.P9951859796119619334

`1+a(A206369(n+1)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330786

/-- `1+a(A206369(n+1)-1)` -/
def P9951859796119619334.Spec : Prop :=
  ∀ n, (P9951859796119619334.a n : ℤ) = A330786 (n + 1)

theorem P9951859796119619334.correct : P9951859796119619334.Spec := by
  intro n
  simp only [A330786, Nat.add_sub_cancel]

end A330786

/-! ## A330786.P7434541096621888911

`a(A206369(n+1)-1)+1` with `a(0)=0`
-/

namespace A330786.P7434541096621888911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A206369 (n + 1) - 1).toNat + 1

end

end A330786.P7434541096621888911

namespace A330786

/-- `a(A206369(n+1)-1)+1` -/
def P7434541096621888911.Spec : Prop :=
  ∀ n, (P7434541096621888911.a n : ℤ) = A330786 (n + 1)

end A330786

/-! ## A330786.P8567159056412001864

`a(n-A344439(n+1))+1` with `a(0)=0`
-/

namespace A330786.P8567159056412001864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A344439 (n + 1)).toNat + 1

end

end A330786.P8567159056412001864

namespace A330786

/-- `a(n-A344439(n+1))+1` -/
def P8567159056412001864.Spec : Prop :=
  ∀ n, (P8567159056412001864.a n : ℤ) = A330786 (n + 1)

end A330786

/-! ## A330786.P13932957955826366384

`a(abs(A061020(n+1))-1)+1` with `a(0)=0`
-/

namespace A330786.P13932957955826366384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (|A061020 (n + 1)| - 1).toNat + 1

end

end A330786.P13932957955826366384

namespace A330786

/-- `a(abs(A061020(n+1))-1)+1` -/
def P13932957955826366384.Spec : Prop :=
  ∀ n, (P13932957955826366384.a n : ℤ) = A330786 (n + 1)

end A330786

/-! ## A330786.P629300312101029812

`a(A023443(A206369(n+1)))+1` with `a(0)=0`
-/

namespace A330786.P629300312101029812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A023443 (A206369 (n + 1)).toNat).toNat + 1

end

end A330786.P629300312101029812

namespace A330786

/-- `a(A023443(A206369(n+1)))+1` -/
def P629300312101029812.Spec : Prop :=
  ∀ n, (P629300312101029812.a n : ℤ) = A330786 (n + 1)

end A330786

/-! ## A330786.P12962605579093640998

`a(A345061(n+1)*A345063(n+1)-1)+1` with `a(0)=0`
-/

namespace A330786.P12962605579093640998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A345061 (n + 1) * A345063 (n + 1) - 1).toNat + 1

end

end A330786.P12962605579093640998

namespace A330786

/-- `a(A345061(n+1)*A345063(n+1)-1)+1` -/
def P12962605579093640998.Spec : Prop :=
  ∀ n, (P12962605579093640998.a n : ℤ) = A330786 (n + 1)

end A330786

/-!
# A330788: Values of k at which the ratio k/A005132(k) sets a new record.

The programs for A330788, there is no canonical definition to state claims against.
-/

/-! ## A330788.P14095144656076636318

`A057167(A330789(n+1))`
-/

namespace A330788.P14095144656076636318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A330789 (n + 1)).toNat

end

end A330788.P14095144656076636318

/-!
# A330789: Terms of A005132 corresponding to the values in A330788.

The programs for A330789, there is no canonical definition to state claims against.
-/

/-! ## A330789.P12654253701749564477

`A005132(A330788(n+1))`
-/

namespace A330789.P12654253701749564477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A330788 (n + 1)).toNat

end

end A330789.P12654253701749564477

/-!
# A330790: Numbers k where 2^k in decimal has a record number of zeros.

The programs for A330790, there is no canonical definition to state claims against.
-/

/-! ## A330790.P17636991148221507613

`A031146(record[A027870(n)])`
-/

namespace A330790.P17636991148221507613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031146 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330790.P17636991148221507613

/-! ## A330790.P13229563595703935052

`A031146(lt[n, A305945(n+3)])`
-/

namespace A330790.P13229563595703935052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305945 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A330790.P13229563595703935052

/-! ## A330790.P7508892136390148702

`A031146(lt[A015740(n+1), A058977(n+1)])`
-/

namespace A330790.P7508892136390148702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330790.P7508892136390148702

/-! ## A330790.P6232199698258000758

`A031146(lt[A390040(n+3), A342719(n+5)])`
-/

namespace A330790.P6232199698258000758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390040 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342719 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330790.P6232199698258000758

/-! ## A330790.P2848321084965089123

`A031146(lt[A353679(n+1), A063555(2*(n+2))])`
-/

namespace A330790.P2848321084965089123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063555 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330790.P2848321084965089123

/-!
# A330791: Values of k such that A005132(k) (the k-th number in the Recamán sequence) divides k.

The programs for A330791, there is no canonical definition to state claims against.
-/

/-! ## A330791.P8383778468333312946

`A028310(eq[n, A209386(n)])`
-/

namespace A330791.P8383778468333312946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330791.P8383778468333312946

/-!
# A330792: T(n, k) = P(n-k, k) where P(n, x) = Sum_{k=0..n} A064189(n, k)*x^k. Triangle read by rows, for 0 <= k <= n.

The programs for A330792, there is no canonical definition to state claims against.
-/

/-! ## A330792.P7154988792575222993

`A344567(A380649(n+1))`
-/

namespace A330792.P7154988792575222993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (A380649 (n + 1)).toNat

end

end A330792.P7154988792575222993

/-! ## A330792.P17389583166637636195

`A344567(A099375(n)+n)`
-/

namespace A330792.P17389583166637636195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (A099375 n + (n : ℤ)).toNat

end

end A330792.P17389583166637636195

/-! ## A330792.P18203522593601652357

`A344567(2*A025581(n)+n+1)`
-/

namespace A330792.P18203522593601652357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (2 * A025581 n + (n + 1 : ℤ)).toNat

end

end A330792.P18203522593601652357

/-! ## A330792.P1085670375549986362

`A344567(A061579(∑[A010054(n)+1]))`
-/

namespace A330792.P1085670375549986362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A330792.P1085670375549986362

/-! ## A330792.P14243921587004815874

`A344567(A038722(n+1)+A003056(n))`
-/

namespace A330792.P14243921587004815874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (A038722 (n + 1) + A003056 n).toNat

end

end A330792.P14243921587004815874

/-! ## A330792.P10395101697746028161

`A344567(A061579(n)+A002024(n+1))`
-/

namespace A330792.P10395101697746028161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (A061579 n + A002024 (n + 1)).toNat

end

end A330792.P10395101697746028161

/-! ## A330792.P771232402684340277

`A344567(A114327(n)+A007401(n+1))`
-/

namespace A330792.P771232402684340277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (A114327 n + A007401 (n + 1)).toNat

end

end A330792.P771232402684340277

/-! ## A330792.P4678467949471203965

`A344567(A127739(n+1)+A025581(n))`
-/

namespace A330792.P4678467949471203965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (A127739 (n + 1) + A025581 n).toNat

end

end A330792.P4678467949471203965

/-!
# A330793: a(n) = A193737(2*n, n).

The programs for A330793, there is no canonical definition to state claims against.
-/

/-! ## A330793.P11185303572452741678

`A020639(A103517(n))*A055834(n)`
-/

namespace A330793.P11185303572452741678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A055834 n

end

end A330793.P11185303572452741678

/-! ## A330793.P5468716390898369544

`A055834(n)*A216022(A016813(n))`
-/

namespace A330793.P5468716390898369544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055834 n * A216022 (A016813 n).toNat

end

end A330793.P5468716390898369544

/-! ## A330793.P13408795232392197882

`A006530(A267584(n))*A055834(n)`
-/

namespace A330793.P13408795232392197882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A267584 n).toNat * A055834 n

end

end A330793.P13408795232392197882

/-! ## A330793.P9262772512971145663

`A055834(n)*A130335(A130335(n+1))`
-/

namespace A330793.P9262772512971145663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055834 n * A130335 (A130335 (n + 1)).toNat

end

end A330793.P9262772512971145663

/-! ## A330793.P1988560077239425399

`A002260(A340266(n+1))*A055834(n)`
-/

namespace A330793.P1988560077239425399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A340266 (n + 1)).toNat * A055834 n

end

end A330793.P1988560077239425399

/-! ## A330793.P1159280840255517372

`A020639(A000010(n+2))*A055834(n)`
-/

namespace A330793.P1159280840255517372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A055834 n

end

end A330793.P1159280840255517372

/-! ## A330793.P6359161867664003582

`A055834(n)*A267584(A267584(n)-1)`
-/

namespace A330793.P6359161867664003582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055834 n * A267584 (A267584 n - 1).toNat

end

end A330793.P6359161867664003582

/-! ## A330793.P16502155550182766060

`A055834(n)*A130335(n²+1)`
-/

namespace A330793.P16502155550182766060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055834 n * A130335 (n ^ 2 + 1)

end

end A330793.P16502155550182766060

/-! ## A330793.P392467538185931981

`A193736(∑[4*n])`
-/

namespace A330793.P392467538185931981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330793.P392467538185931981

/-!
# A330794: Inverse of the Jacobsthal triangle (A322942). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A330794, there is no canonical definition to state claims against.
-/

/-! ## A330794.P13699291859916459684

`A327156(A025536(n))-A145352(n+2)`
-/

namespace A330794.P13699291859916459684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327156 (A025536 n).toNat - A145352 (n + 2)

end

end A330794.P13699291859916459684

/-! ## A330794.P7073079608261660271

`A140756(n+1)^A090683(A090683(n))`
-/

namespace A330794.P7073079608261660271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140756 (n + 1) : ℚ) ^ (A090683 (A090683 n).toNat : ℤ)

end

end A330794.P7073079608261660271

/-!
# A330795: Evaluation of the polynomials given by the Riordan square of the Fibonacci sequence with a(0) = 1 (A193737) at 1/2 and normalized with 2^n.

The programs for A330795, the canonical program `A330795.P5431814251422568356` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330795 has offset 0).

The definition of A330795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330795.P5431814251422568356

`4*a(n-2)+3*a(n-1)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330795

/-- `4*a(n-2)+3*a(n-1)` -/
def P5431814251422568356.Spec : Prop :=
  ∀ n, (P5431814251422568356.a n : ℤ) = A330795 n

theorem P5431814251422568356.correct : P5431814251422568356.Spec := by
  intro n
  simp only [A330795]

end A330795

/-! ## A330795.P12965449131187115225

`ogf((-1+4x^2)/(-1+3x+4x^2))`
-/

namespace A330795.P12965449131187115225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4] [1, -3, -4] n

end

end A330795.P12965449131187115225

namespace A330795

/-- `ogf((-1+4x^2)/(-1+3x+4x^2))` -/
def P12965449131187115225.Spec : Prop :=
  ∀ n, P12965449131187115225.a n = A330795 n

end A330795

/-! ## A330795.P5684264798933493944

`or(1, floor(3*4^n/5))`
-/

namespace A330795.P5684264798933493944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊3 * ((4 ^ n : ℚ) / 5)⌋

end

end A330795.P5684264798933493944

namespace A330795

/-- `or(1, floor(3*4^n/5))` -/
def P5684264798933493944.Spec : Prop :=
  ∀ n, P5684264798933493944.a n = A330795 n

end A330795

/-! ## A330795.P16309110297334704851

`record[abs(a(n-1))-(-2)^n]` with `a(0)=1`
-/

namespace A330795.P16309110297334704851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |f1 (n - 1)| - (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330795.P16309110297334704851

namespace A330795

/-- `record[abs(a(n-1))-(-2)^n]` -/
def P16309110297334704851.Spec : Prop :=
  ∀ n, P16309110297334704851.a n = A330795 n

end A330795

/-! ## A330795.P5433312823565761074

`Δ[4^(n-1)]-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A330795.P5433312823565761074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A330795.P5433312823565761074

namespace A330795

/-- `Δ[4^(n-1)]-a(n-1)` -/
def P5433312823565761074.Spec : Prop :=
  ∀ n, P5433312823565761074.a n = (A330795 n : ℚ)

end A330795

/-! ## A330795.P11429312390230100792

`record[abs(∑[A099087(2*n)])]`
-/

namespace A330795.P11429312390230100792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330795.P11429312390230100792

namespace A330795

/-- `record[abs(∑[A099087(2*n)])]` -/
def P11429312390230100792.Spec : Prop :=
  ∀ n, P11429312390230100792.a n = A330795 n

end A330795

/-! ## A330795.P326636411202654663

`record[abs(A137470(2*n+1))]`
-/

namespace A330795.P326636411202654663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137470 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330795.P326636411202654663

namespace A330795

/-- `record[abs(A137470(2*n+1))]` -/
def P326636411202654663.Spec : Prop :=
  ∀ n, P326636411202654663.a n = A330795 n

end A330795

/-! ## A330795.P14741983508290383968

`Δ[A015521(n)-and(1, n)^n]`
-/

namespace A330795.P14741983508290383968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n - (Nat.land 1 n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330795.P14741983508290383968

namespace A330795

/-- `Δ[A015521(n)-and(1, n)^n]` -/
def P14741983508290383968.Spec : Prop :=
  ∀ n, P14741983508290383968.a n = A330795 n

end A330795

/-! ## A330795.P4741535627637898135

`A122117(n)+A062157(n)`
-/

namespace A330795.P4741535627637898135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n + A062157 n

end

end A330795.P4741535627637898135

namespace A330795

/-- `A122117(n)+A062157(n)` -/
def P4741535627637898135.Spec : Prop :=
  ∀ n, P4741535627637898135.a n = A330795 n

end A330795

/-! ## A330795.P13468197507367962795

`A155543(n)-A102900(n)`
-/

namespace A330795.P13468197507367962795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A102900 n

end

end A330795.P13468197507367962795

namespace A330795

/-- `A155543(n)-A102900(n)` -/
def P13468197507367962795.Spec : Prop :=
  ∀ n, P13468197507367962795.a n = A330795 n

end A330795

/-! ## A330795.P15087727322291787546

`record[A007880(2*n)*A007909(n)]`
-/

namespace A330795.P15087727322291787546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007880 (2 * n) * A007909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330795.P15087727322291787546

namespace A330795

/-- `record[A007880(2*n)*A007909(n)]` -/
def P15087727322291787546.Spec : Prop :=
  ∀ n, P15087727322291787546.a n = A330795 n

end A330795

/-! ## A330795.P9466091352047205085

`A081294(n)+A081294(n)-A102900(n)`
-/

namespace A330795.P9466091352047205085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + (A081294 n - A102900 n)

end

end A330795.P9466091352047205085

namespace A330795

/-- `A081294(n)+A081294(n)-A102900(n)` -/
def P9466091352047205085.Spec : Prop :=
  ∀ n, P9466091352047205085.a n = A330795 n

end A330795

/-! ## A330795.P3028294512916167304

`A007679(2*n+1)+A084099(2*n)-A007909(2*n)`
-/

namespace A330795.P3028294512916167304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (2 * n + 1) + (A084099 (2 * n) - A007909 (2 * n))

end

end A330795.P3028294512916167304

namespace A330795

/-- `A007679(2*n+1)+A084099(2*n)-A007909(2*n)` -/
def P3028294512916167304.Spec : Prop :=
  ∀ n, P3028294512916167304.a n = A330795 n

end A330795

/-! ## A330795.P14752435778912070183

`record[abs(A077870(2*n))]`
-/

namespace A330795.P14752435778912070183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077870 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330795.P14752435778912070183

namespace A330795

/-- `record[abs(A077870(2*n))]` -/
def P14752435778912070183.Spec : Prop :=
  ∀ n, P14752435778912070183.a n = A330795 n

end A330795

/-! ## A330795.P11810004640562899243

`2*floor(Δ[A000079(n)²]/10)+1`
-/

namespace A330795.P11810004640562899243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(f1 (n + 1) - f1 n : ℚ) / 10⌋ + 1

end

end A330795.P11810004640562899243

namespace A330795

/-- `2*floor(Δ[A000079(n)²]/10)+1` -/
def P11810004640562899243.Spec : Prop :=
  ∀ n, P11810004640562899243.a n = A330795 n

end A330795

/-! ## A330795.P15769321167492388741

`A227451(n+1)-(A037481(n)+A015521(n))`
-/

namespace A330795.P15769321167492388741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227451 (n + 1) - (A037481 n + A015521 n)

end

end A330795.P15769321167492388741

namespace A330795

/-- `A227451(n+1)-(A037481(n)+A015521(n))` -/
def P15769321167492388741.Spec : Prop :=
  ∀ n, P15769321167492388741.a n = A330795 n

end A330795

/-!
# A330796: a(n) = Sum_{k=0..n} binomial(n, k)*(2^k - binomial(k, floor(k/2))).

The programs for A330796, the canonical program `A330796.P1059667724336017826` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330796 has offset 0).

The definition of A330796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*(2^#-C(#, floor(#/2)))]` (program `A330796.P1059667724336017826`, by `A330796.P1059667724336017826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330796.P1059667724336017826

`∑{#}[n, C(n, #)*(2^#-C(#, floor(#/2)))]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330796

/-- `∑{#}[n, C(n, #)*(2^#-C(#, floor(#/2)))]` -/
def P1059667724336017826.Spec : Prop :=
  ∀ n, P1059667724336017826.a n = A330796 n

theorem P1059667724336017826.correct : P1059667724336017826.Spec := by
  intro n
  simp only [A330796]

end A330796

/-! ## A330796.P18057890760178704825

`3^n-A005773(n+1)`
-/

namespace A330796.P18057890760178704825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A005773 (n + 1)

end

end A330796.P18057890760178704825

namespace A330796

/-- `3^n-A005773(n+1)` -/
def P18057890760178704825.Spec : Prop :=
  ∀ n, P18057890760178704825.a n = A330796 n

end A330796

/-! ## A330796.P14545919189887183812

`3^n-A307789(n+2)`
-/

namespace A330796.P14545919189887183812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A307789 (n + 2)

end

end A330796.P14545919189887183812

namespace A330796

/-- `3^n-A307789(n+2)` -/
def P14545919189887183812.Spec : Prop :=
  ∀ n, P14545919189887183812.a n = A330796 n

end A330796

/-! ## A330796.P5643343673279493498

`A055217(n)-A027914(n)`
-/

namespace A330796.P5643343673279493498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 n - A027914 n

end

end A330796.P5643343673279493498

namespace A330796

/-- `A055217(n)-A027914(n)` -/
def P5643343673279493498.Spec : Prop :=
  ∀ n, P5643343673279493498.a n = A330796 n

end A330796

/-! ## A330796.P6485694195482839873

`A103457(n)-A129703(n)`
-/

namespace A330796.P6485694195482839873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 n - A129703 n

end

end A330796.P6485694195482839873

namespace A330796

/-- `A103457(n)-A129703(n)` -/
def P6485694195482839873.Spec : Prop :=
  ∀ n, P6485694195482839873.a n = A330796 n

end A330796

/-! ## A330796.P6685706895573550627

`Δ[A027914(n)-A097893(n)]`
-/

namespace A330796.P6685706895573550627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A097893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330796.P6685706895573550627

namespace A330796

/-- `Δ[A027914(n)-A097893(n)]` -/
def P6685706895573550627.Spec : Prop :=
  ∀ n, P6685706895573550627.a n = A330796 n

end A330796

/-! ## A330796.P15700894355561809862

`Δ[A027914(n)-∑[A002426(n)]]`
-/

namespace A330796.P15700894355561809862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330796.P15700894355561809862

namespace A330796

/-- `Δ[A027914(n)-∑[A002426(n)]]` -/
def P15700894355561809862.Spec : Prop :=
  ∀ n, P15700894355561809862.a n = A330796 n

end A330796

/-! ## A330796.P7320550100172109657

`A000244(n)-∑[A025566(n+1)]`
-/

namespace A330796.P7320550100172109657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330796.P7320550100172109657

namespace A330796

/-- `A000244(n)-∑[A025566(n+1)]` -/
def P7320550100172109657.Spec : Prop :=
  ∀ n, P7320550100172109657.a n = A330796 n

end A330796

/-! ## A330796.P15281915673499016038

`Δ[A027914(n)]-A002426(n+1)`
-/

namespace A330796.P15281915673499016038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002426 (n + 1)

end

end A330796.P15281915673499016038

namespace A330796

/-- `Δ[A027914(n)]-A002426(n+1)` -/
def P15281915673499016038.Spec : Prop :=
  ∀ n, P15281915673499016038.a n = A330796 n

end A330796

/-! ## A330796.P6027850248529448894

`A094388(n+1)-(A005773(n+1)+1)`
-/

namespace A330796.P6027850248529448894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (n + 1) - (A005773 (n + 1) + 1)

end

end A330796.P6027850248529448894

namespace A330796

/-- `A094388(n+1)-(A005773(n+1)+1)` -/
def P6027850248529448894.Spec : Prop :=
  ∀ n, P6027850248529448894.a n = A330796 n

end A330796

/-! ## A330796.P17234407561956784100

`A036908(n+2)-2*A005773(n+1)`
-/

namespace A330796.P17234407561956784100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036908 (n + 2) - 2 * A005773 (n + 1)

end

end A330796.P17234407561956784100

namespace A330796

/-- `A036908(n+2)-2*A005773(n+1)` -/
def P17234407561956784100.Spec : Prop :=
  ∀ n, P17234407561956784100.a n = A330796 n

end A330796

/-! ## A330796.P17447694220543737573

`A003462(n+1)-(A005773(n+1)+A003462(n))`
-/

namespace A330796.P17447694220543737573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) - (A005773 (n + 1) + A003462 n)

end

end A330796.P17447694220543737573

namespace A330796

/-- `A003462(n+1)-(A005773(n+1)+A003462(n))` -/
def P17447694220543737573.Spec : Prop :=
  ∀ n, P17447694220543737573.a n = A330796 n

end A330796

/-! ## A330796.P2425345759937190945

`A027914(n+1)-(A027914(n)+A002426(n+1))`
-/

namespace A330796.P2425345759937190945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (n + 1) - (A027914 n + A002426 (n + 1))

end

end A330796.P2425345759937190945

namespace A330796

/-- `A027914(n+1)-(A027914(n)+A002426(n+1))` -/
def P2425345759937190945.Spec : Prop :=
  ∀ n, P2425345759937190945.a n = A330796 n

end A330796

/-! ## A330796.P295465595125729183

`A140429(n+1)+A140429(n+1)-A036908(n+2)`
-/

namespace A330796.P295465595125729183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (n + 1) + (A140429 (n + 1) - A036908 (n + 2))

end

end A330796.P295465595125729183

namespace A330796

/-- `A140429(n+1)+A140429(n+1)-A036908(n+2)` -/
def P295465595125729183.Spec : Prop :=
  ∀ n, P295465595125729183.a n = A330796 n

end A330796

/-! ## A330796.P424885736066511732

`3^(n+1)-A025578(n+2)`
-/

namespace A330796.P424885736066511732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A025578 (n + 2)

end

end A330796.P424885736066511732

namespace A330796

/-- `3^(n+1)-A025578(n+2)` -/
def P424885736066511732.Spec : Prop :=
  ∀ n, P424885736066511732.a n = A330796 n

end A330796

/-! ## A330796.P374975031293760522

`2*A140429(n+1)-A036908(n+2)`
-/

namespace A330796.P374975031293760522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140429 (n + 1) - A036908 (n + 2)

end

end A330796.P374975031293760522

namespace A330796

/-- `2*A140429(n+1)-A036908(n+2)` -/
def P374975031293760522.Spec : Prop :=
  ∀ n, P374975031293760522.a n = A330796 n

end A330796

/-! ## A330796.P8444707618443996101

`Δ[Δ[A124302(n+1)]]-A036908(n+2)`
-/

namespace A330796.P8444707618443996101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A036908 (n + 2)

end

end A330796.P8444707618443996101

namespace A330796

/-- `Δ[Δ[A124302(n+1)]]-A036908(n+2)` -/
def P8444707618443996101.Spec : Prop :=
  ∀ n, P8444707618443996101.a n = A330796 n

end A330796

/-! ## A330796.P7546457275711149510

`A000244(n+1)-(A027914(n+1)+A027914(n))`
-/

namespace A330796.P7546457275711149510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - (A027914 (n + 1) + A027914 n)

end

end A330796.P7546457275711149510

namespace A330796

/-- `A000244(n+1)-(A027914(n+1)+A027914(n))` -/
def P7546457275711149510.Spec : Prop :=
  ∀ n, P7546457275711149510.a n = A330796 n

end A330796

/-! ## A330796.P17426969626820223413

`A038754(2*n+1)-(A038754(2*n)+A005773(n+1))`
-/

namespace A330796.P17426969626820223413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n + 1) - (A038754 (2 * n) + A005773 (n + 1))

end

end A330796.P17426969626820223413

namespace A330796

/-- `A038754(2*n+1)-(A038754(2*n)+A005773(n+1))` -/
def P17426969626820223413.Spec : Prop :=
  ∀ n, P17426969626820223413.a n = A330796 n

end A330796

/-! ## A330796.P12886867422524015

`(9*(2-n)*a(n-3)-3*(n+1)*a(n-2)+(5*n+2)*a(n-1))/(n+1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A330796.P12886867422524015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ((9 * (2 - (n : ℤ)) : ℚ) * a (n - 3) - (3 * (n + 1) : ℚ) * a (n - 2) + (5 * n + 2 : ℚ) * a (n - 1)) / (n + 1 : ℚ)

end

end A330796.P12886867422524015

namespace A330796

/-- `(9*(2-n)*a(n-3)-3*(n+1)*a(n-2)+(5*n+2)*a(n-1))/(n+1)` -/
def P12886867422524015.Spec : Prop :=
  ∀ n, P12886867422524015.a n = (A330796 n : ℚ)

end A330796

/-!
# A330797: Evaluation of the Stirling cycle polynomials at -1/2 and normalized with (-2)^n.

The programs for A330797, the canonical program `A330797.P3116944380254055670` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330797 has offset 0).

The definition of A330797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330797.P3116944380254055670

`(3-2*n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330797

/-- `(3-2*n)*a(n-1)` -/
def P3116944380254055670.Spec : Prop :=
  ∀ n, P3116944380254055670.a n = A330797 n

theorem P3116944380254055670.correct : P3116944380254055670.Spec := by
  intro n
  simp only [A330797]

end A330797

/-! ## A330797.P15303787475364133047

`∏[3-2*n]/3`
-/

namespace A330797.P15303787475364133047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A330797.P15303787475364133047

namespace A330797

/-- `∏[3-2*n]/3` -/
def P15303787475364133047.Spec : Prop :=
  ∀ n, P15303787475364133047.a n = (A330797 n : ℚ)

end A330797

/-! ## A330797.P18242597771830075926

`∏[a(n-1)-2]` with `a(0)=1, a(1)=1`
-/

namespace A330797.P18242597771830075926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330797.P18242597771830075926

namespace A330797

/-- `∏[a(n-1)-2]` -/
def P18242597771830075926.Spec : Prop :=
  ∀ n, P18242597771830075926.a n = A330797 n

end A330797

/-! ## A330797.P858864693655861415

`∏[Δ[n²]-record[lcm(2, n)]]`
-/

namespace A330797.P858864693655861415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330797.P858864693655861415

namespace A330797

/-- `∏[Δ[n²]-record[lcm(2, n)]]` -/
def P858864693655861415.Spec : Prop :=
  ∀ n, P858864693655861415.a n = A330797 n

end A330797

/-! ## A330797.P15901484321064328000

`∏[(3-2*n)^ceil(tanh(n))]`
-/

namespace A330797.P15901484321064328000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (2 * n : ℤ) : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330797.P15901484321064328000

namespace A330797

/-- `∏[(3-2*n)^ceil(tanh(n))]` -/
def P15901484321064328000.Spec : Prop :=
  ∀ n, P15901484321064328000.a n = (A330797 n : ℚ)

end A330797

/-! ## A330797.P15453751346033040264

`∏[3-gcd(2*n, (n+2)!)]`
-/

namespace A330797.P15453751346033040264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd (2 * n) (Nat.factorial (n + 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330797.P15453751346033040264

namespace A330797

/-- `∏[3-gcd(2*n, (n+2)!)]` -/
def P15453751346033040264.Spec : Prop :=
  ∀ n, P15453751346033040264.a n = A330797 n

end A330797

/-! ## A330797.P2400011200770437646

`A039757(C(n, 2))`
-/

namespace A330797.P2400011200770437646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (Nat.choose n 2)

end

end A330797.P2400011200770437646

namespace A330797

/-- `A039757(C(n, 2))` -/
def P2400011200770437646.Spec : Prop :=
  ∀ n, P2400011200770437646.a n = A330797 n

end A330797

/-! ## A330797.P8605134141187014789

`∏[A248157(2*n)]`
-/

namespace A330797.P8605134141187014789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248157 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330797.P8605134141187014789

namespace A330797

/-- `∏[A248157(2*n)]` -/
def P8605134141187014789.Spec : Prop :=
  ∀ n, P8605134141187014789.a n = A330797 n

end A330797

/-! ## A330797.P6015061858082775898

`A039757(∑[n]-n)`
-/

namespace A330797.P6015061858082775898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A330797.P6015061858082775898

namespace A330797

/-- `A039757(∑[n]-n)` -/
def P6015061858082775898.Spec : Prop :=
  ∀ n, P6015061858082775898.a n = A330797 n

end A330797

/-! ## A330797.P3124478814023967622

`∏[A118402(2*n+1)]`
-/

namespace A330797.P3124478814023967622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118402 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330797.P3124478814023967622

namespace A330797

/-- `∏[A118402(2*n+1)]` -/
def P3124478814023967622.Spec : Prop :=
  ∀ n, P3124478814023967622.a n = A330797 n

end A330797

/-!
# A330798: Triangle read by rows, interpolating between the central binomial coefficients and the central coefficients of the Catalan triangle. T(n, k) for 0 <= k <= n.

The programs for A330798, there is no canonical definition to state claims against.
-/

/-! ## A330798.P16825492815747580243

`∑[char[∑[n]]]*A104978(n)`
-/

namespace A330798.P16825492815747580243
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A104978 n

end

end A330798.P16825492815747580243

/-! ## A330798.P6260102023597904791

`A104978(n)*A002024(n+1)`
-/

namespace A330798.P6260102023597904791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 n * A002024 (n + 1)

end

end A330798.P6260102023597904791

/-! ## A330798.P12326865748832206895

`A002024(n+1)*A108426(A061579(n))`
-/

namespace A330798.P12326865748832206895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A108426 (A061579 n).toNat

end

end A330798.P12326865748832206895

/-!
# A330799: Evaluation of the Motzkin polynomials at 1/2 and normalized with 2^n.

The programs for A330799, the canonical program `A330799.P5359052289965847582` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330799 has offset 0).

The definition of A330799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330799.P5359052289965847582

`7*a(n-1)-A103970(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A330799

/-- `7*a(n-1)-A103970(n)` -/
def P5359052289965847582.Spec : Prop :=
  ∀ n, P5359052289965847582.a n = A330799 n

theorem P5359052289965847582.correct : P5359052289965847582.Spec := by
  intro n
  simp only [A330799]

end A330799

/-! ## A330799.P16209495177450691712

`A080677(A057505(n)+A049315(n))`
-/

namespace A330799.P16209495177450691712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (A057505 n + A049315 n).toNat

end

end A330799.P16209495177450691712

namespace A330799

/-- `A080677(A057505(n)+A049315(n))` -/
def P16209495177450691712.Spec : Prop :=
  ∀ n, P16209495177450691712.a n = A330799 n

end A330799

