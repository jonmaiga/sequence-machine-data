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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165500: Maximum length of arithmetic progression starting at n such that each term k has tau(k) = tau(n).

The programs for A165500, there is no canonical definition to state claims against.
-/

/-! ## A165500.P16487020461101109368

`A293162(n)+A006530(A304481(n+1))`
-/

namespace A165500.P16487020461101109368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n + A006530 (A304481 (n + 1)).toNat

end

end A165500.P16487020461101109368

/-! ## A165500.P16616225621655805160

`A293162(n)+A006530(A304491(n+1))`
-/

namespace A165500.P16616225621655805160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n + A006530 (A304491 (n + 1)).toNat

end

end A165500.P16616225621655805160

/-! ## A165500.P12079134058412029707

`A338668(n+1)+A336835(A313781(n))`
-/

namespace A165500.P12079134058412029707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338668 (n + 1) + A336835 (A313781 n).toNat

end

end A165500.P12079134058412029707

/-! ## A165500.P14454998271316954957

`A338668(n+1)+A065202(A014132(n+1))`
-/

namespace A165500.P14454998271316954957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338668 (n + 1) + A065202 (A014132 (n + 1)).toNat

end

end A165500.P14454998271316954957

/-! ## A165500.P12660814321300210050

`A010060(3*n)+A006530(A304481(n+1))`
-/

namespace A165500.P12660814321300210050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n) + A006530 (A304481 (n + 1)).toNat

end

end A165500.P12660814321300210050

/-!
# A165501: Minimal common difference of maximal arithmetic progression starting at n such that each term k has tau(k)=tau(n).

The programs for A165501, there is no canonical definition to state claims against.
-/

/-! ## A165501.P132862469443292598

`∏{p}[A025134(n), A178859(#)]`
-/

namespace A165501.P132862469443292598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A178859 p

end

end A165501.P132862469443292598

/-! ## A165501.P2366435616146515701

`∏{digits}[A327062(n), A007947(#)]`
-/

namespace A165501.P2366435616146515701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007947 x).prod

end

end A165501.P2366435616146515701

/-!
# A165502: Primes p where the digital sum of p^2 is equal to 31.

The programs for A165502, the canonical program `A165502.P13417243480787722624` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165502 has offset 1).

The definition of A165502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165502.P13417243480787722624

`p?[eq[31, A004159(n)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A165502

/-- `p?[eq[31, A004159(n)]]` -/
def P13417243480787722624.Spec : Prop :=
  ∀ n, (P13417243480787722624.a n : ℤ) = A165502 (n + 1)

theorem P13417243480787722624.correct : P13417243480787722624.Spec := by
  intro n
  simp only [A165502, Nat.add_sub_cancel]

end A165502

/-!
# A165503: Primes p with a digits sum of p^2 equal to 37.

The programs for A165503, the canonical program `A165503.P17759622746799329389` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165503 has offset 1).

The definition of A165503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165503.P17759622746799329389

`p?[eq[37, A004159(n)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A165503

/-- `p?[eq[37, A004159(n)]]` -/
def P17759622746799329389.Spec : Prop :=
  ∀ n, (P17759622746799329389.a n : ℤ) = A165503 (n + 1)

theorem P17759622746799329389.correct : P17759622746799329389.Spec := by
  intro n
  simp only [A165503, Nat.add_sub_cancel]

end A165503

/-! ## A165503.P17155947834261492172

`eq[A004159(n), A017173(A048785(n))]`
-/

namespace A165503.P17155947834261492172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A048785 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165503.P17155947834261492172

namespace A165503

/-- `eq[A004159(n), A017173(A048785(n))]` -/
def P17155947834261492172.Spec : Prop :=
  ∀ n, (P17155947834261492172.a n : ℤ) = A165503 (n + 1)

end A165503

/-!
# A165505: a(0)=1, a(1)=7, a(n) = 42*a(n-2) - a(n-1).

The programs for A165505, the canonical program `A165505.P10739257849754051093` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165505 has offset 0).

The definition of A165505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `42*a(n-2)-a(n-1)` (program `A165505.P10739257849754051093`, by `A165505.P10739257849754051093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165505.P10739257849754051093

`42*a(n-2)-a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165505

/-- `42*a(n-2)-a(n-1)` -/
def P10739257849754051093.Spec : Prop :=
  ∀ n, P10739257849754051093.a n = A165505 n

theorem P10739257849754051093.correct : P10739257849754051093.Spec := by
  intro n
  simp only [A165505]

end A165505

/-! ## A165505.P1782791624442261511

`(14*6^n-(-7)^n)/13`
-/

namespace A165505.P1782791624442261511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * 6 ^ n : ℤ) - (-7) ^ n : ℚ) / 13

end

end A165505.P1782791624442261511

namespace A165505

/-- `(14*6^n-(-7)^n)/13` -/
def P1782791624442261511.Spec : Prop :=
  ∀ n, P1782791624442261511.a n = (A165505 n : ℚ)

theorem P1782791624442261511.correct : P1782791624442261511.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165505, Nat.add_sub_cancel, A165505.P1782791624442261511.a, A165505.P10739257849754051093.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165505, Nat.add_sub_cancel, A165505.P1782791624442261511.a, A165505.P10739257849754051093.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165505

/-!
# A165506: a(0) = 1, a(1) = 8, a(n) = 56*a(n-2) - a(n-1).

The programs for A165506, the canonical program `A165506.P7257547444200761530` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165506 has offset 0).

The definition of A165506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `56*a(n-2)-a(n-1)` (program `A165506.P7257547444200761530`, by `A165506.P7257547444200761530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165506.P7257547444200761530

`56*a(n-2)-a(n-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165506

/-- `56*a(n-2)-a(n-1)` -/
def P7257547444200761530.Spec : Prop :=
  ∀ n, P7257547444200761530.a n = A165506 n

theorem P7257547444200761530.correct : P7257547444200761530.Spec := by
  intro n
  simp only [A165506]

end A165506

/-! ## A165506.P10816152338631400686

`(16*7^n-(-8)^n)/15`
-/

namespace A165506.P10816152338631400686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * 7 ^ n : ℤ) - (-8) ^ n : ℚ) / 15

end

end A165506.P10816152338631400686

namespace A165506

/-- `(16*7^n-(-8)^n)/15` -/
def P10816152338631400686.Spec : Prop :=
  ∀ n, P10816152338631400686.a n = (A165506 n : ℚ)

theorem P10816152338631400686.correct : P10816152338631400686.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165506, Nat.add_sub_cancel, A165506.P10816152338631400686.a, A165506.P7257547444200761530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165506, Nat.add_sub_cancel, A165506.P10816152338631400686.a, A165506.P7257547444200761530.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165506

/-!
# A165507: Triangle T(n,m) read by rows: numerator of 1/(1+n-m)^2 - 1/m^2.

The programs for A165507, there is no canonical definition to state claims against.
-/

/-! ## A165507.P14485517889023691359

`A173651(comp[∑[n]]+1)`
-/

namespace A165507.P14485517889023691359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173651 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A165507.P14485517889023691359

/-! ## A165507.P2845800377710633143

`A165795(eq[0, A103451(n)])`
-/

namespace A165507.P2845800377710633143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165507.P2845800377710633143

/-! ## A165507.P11092045420991078249

`A165795(eq[0, A158821(n)])`
-/

namespace A165507.P11092045420991078249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165507.P11092045420991078249

/-! ## A165507.P12744521382398064600

`A165795(A131507(n)+3+n)`
-/

namespace A165507.P12744521382398064600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (A131507 n + 3 + (n : ℤ)).toNat

end

end A165507.P12744521382398064600

/-! ## A165507.P2428269665550674140

`A165795(eq[n, A316669(n+1)])`
-/

namespace A165507.P2428269665550674140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165507.P2428269665550674140

/-! ## A165507.P13510426245976391260

`A165795(2*A014132(n+1)-n)`
-/

namespace A165507.P13510426245976391260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A165507.P13510426245976391260

/-! ## A165507.P13665240563281008099

`A165795(A014132(A014132(n+1)))`
-/

namespace A165507.P13665240563281008099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A165507.P13665240563281008099

/-!
# A165510: a(0)=1, a(1)=9, a(n) = 72*a(n-2) - a(n-1).

The programs for A165510, the canonical program `A165510.P1830854734824217459` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165510 has offset 0).

The definition of A165510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `72*a(n-2)-a(n-1)` (program `A165510.P1830854734824217459`, by `A165510.P1830854734824217459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165510.P1830854734824217459

`72*a(n-2)-a(n-1)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165510

/-- `72*a(n-2)-a(n-1)` -/
def P1830854734824217459.Spec : Prop :=
  ∀ n, P1830854734824217459.a n = A165510 n

theorem P1830854734824217459.correct : P1830854734824217459.Spec := by
  intro n
  simp only [A165510]

end A165510

/-! ## A165510.P15305097412645722087

`(18*8^n-(-9)^n)/17`
-/

namespace A165510.P15305097412645722087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * 8 ^ n : ℤ) - (-9) ^ n : ℚ) / 17

end

end A165510.P15305097412645722087

namespace A165510

/-- `(18*8^n-(-9)^n)/17` -/
def P15305097412645722087.Spec : Prop :=
  ∀ n, P15305097412645722087.a n = (A165510 n : ℚ)

theorem P15305097412645722087.correct : P15305097412645722087.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165510, Nat.add_sub_cancel, A165510.P15305097412645722087.a, A165510.P1830854734824217459.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165510, Nat.add_sub_cancel, A165510.P15305097412645722087.a, A165510.P1830854734824217459.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165510

/-!
# A165511: a(0)=1, a(1)=10, a(n) = 90*a(n-2) - a(n-1).

The programs for A165511, the canonical program `A165511.P3505041774599775286` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165511 has offset 0).

The definition of A165511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `90*a(n-2)-a(n-1)` (program `A165511.P3505041774599775286`, by `A165511.P3505041774599775286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165511.P3505041774599775286

`90*a(n-2)-a(n-1)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165511

/-- `90*a(n-2)-a(n-1)` -/
def P3505041774599775286.Spec : Prop :=
  ∀ n, P3505041774599775286.a n = A165511 n

theorem P3505041774599775286.correct : P3505041774599775286.Spec := by
  intro n
  simp only [A165511]

end A165511

/-! ## A165511.P2824754708197786255

`(20*9^n-(-10)^n)/19`
-/

namespace A165511.P2824754708197786255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 * 9 ^ n : ℤ) - (-10) ^ n : ℚ) / 19

end

end A165511.P2824754708197786255

namespace A165511

/-- `(20*9^n-(-10)^n)/19` -/
def P2824754708197786255.Spec : Prop :=
  ∀ n, P2824754708197786255.a n = (A165511 n : ℚ)

theorem P2824754708197786255.correct : P2824754708197786255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165511, Nat.add_sub_cancel, A165511.P2824754708197786255.a, A165511.P3505041774599775286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165511, Nat.add_sub_cancel, A165511.P2824754708197786255.a, A165511.P3505041774599775286.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165511

/-!
# A165513: Trapezoidal numbers.

The programs for A165513, the canonical program `A165513.P4193173009747102375` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165513 has offset 1).

The definition of A165513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165513.P11995961821349676014

`lt[2, A295881(n+1)]+1`
-/

namespace A165513.P11995961821349676014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165513.P11995961821349676014

namespace A165513

/-- `lt[2, A295881(n+1)]+1` -/
def P11995961821349676014.Spec : Prop :=
  ∀ n, (P11995961821349676014.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P11932013653721320467

`lt[2, abs(A000203(n+1)-(2*n+1))]+1`
-/

namespace A165513.P11932013653721320467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (n + 1) - (2 * n + 1 : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165513.P11932013653721320467

namespace A165513

/-- `lt[2, abs(A000203(n+1)-(2*n+1))]+1` -/
def P11932013653721320467.Spec : Prop :=
  ∀ n, (P11932013653721320467.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P4193173009747102375

`eq[1, A000045(a(A136107(n)))]` with `a(0)=4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A165513

/-- `eq[1, A000045(a(A136107(n)))]` -/
def P4193173009747102375.Spec : Prop :=
  ∀ n, (P4193173009747102375.a n : ℤ) = A165513 (n + 1)

theorem P4193173009747102375.correct : P4193173009747102375.Spec := by
  intro n
  simp only [A165513, Nat.add_sub_cancel]

end A165513

/-! ## A165513.P16919900014430055119

`eq[1, A007318(a(A136107(n)))]` with `a(0)=11`
-/

namespace A165513.P16919900014430055119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f2 =>
  A007318 (f2 (A136107 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165513.P16919900014430055119

namespace A165513

/-- `eq[1, A007318(a(A136107(n)))]` -/
def P16919900014430055119.Spec : Prop :=
  ∀ n, (P16919900014430055119.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P18012252595472963108

`eq[1, A063841(a(A136107(n)))]` with `a(0)=38`
-/

namespace A165513.P18012252595472963108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [38] fun n f2 =>
  A063841 (f2 (A136107 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165513.P18012252595472963108

namespace A165513

/-- `eq[1, A063841(a(A136107(n)))]` -/
def P18012252595472963108.Spec : Prop :=
  ∀ n, (P18012252595472963108.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P17051457887999450505

`eq[1, A050058(a(A136107(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A165513.P17051457887999450505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A050058 (f2 (A136107 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165513.P17051457887999450505

namespace A165513

/-- `eq[1, A050058(a(A136107(n)))]` -/
def P17051457887999450505.Spec : Prop :=
  ∀ n, (P17051457887999450505.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P16971053983052391882

`lt[1, abs(A237588(n+1))]+1`
-/

namespace A165513.P16971053983052391882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237588 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165513.P16971053983052391882

namespace A165513

/-- `lt[1, abs(A237588(n+1))]+1` -/
def P16971053983052391882.Spec : Prop :=
  ∀ n, (P16971053983052391882.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P10909962716873328735

`lt[1, A235796(n+1)²]+1`
-/

namespace A165513.P10909962716873328735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165513.P10909962716873328735

namespace A165513

/-- `lt[1, A235796(n+1)²]+1` -/
def P10909962716873328735.Spec : Prop :=
  ∀ n, (P10909962716873328735.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P13438541534259662139

`lt[1, abs(A001065(n+1)-n)]+1`
-/

namespace A165513.P13438541534259662139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001065 (n + 1) - (n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165513.P13438541534259662139

namespace A165513

/-- `lt[1, abs(A001065(n+1)-n)]+1` -/
def P13438541534259662139.Spec : Prop :=
  ∀ n, (P13438541534259662139.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P15486217942516564065

`lt[1, A235796(A028310(n))²]`
-/

namespace A165513.P15486217942516564065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165513.P15486217942516564065

namespace A165513

/-- `lt[1, A235796(A028310(n))²]` -/
def P15486217942516564065.Spec : Prop :=
  ∀ n, (P15486217942516564065.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P6283798203140636293

`A020725(lt[1, A237588(n+1)²])`
-/

namespace A165513.P6283798203140636293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A165513.P6283798203140636293

namespace A165513

/-- `A020725(lt[1, A237588(n+1)²])` -/
def P6283798203140636293.Spec : Prop :=
  ∀ n, P6283798203140636293.a n = A165513 (n + 1)

end A165513

/-! ## A165513.P10330550285516076027

`A153152(lt[1, A237588(n+1)²])`
-/

namespace A165513.P10330550285516076027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A165513.P10330550285516076027

namespace A165513

/-- `A153152(lt[1, A237588(n+1)²])` -/
def P10330550285516076027.Spec : Prop :=
  ∀ n, P10330550285516076027.a n = A165513 (n + 1)

end A165513

/-! ## A165513.P10470252306998764003

`eq[char[A165514(n+1)], A000007(n)]`
-/

namespace A165513.P10470252306998764003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165514 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A165513.P10470252306998764003

namespace A165513

/-- `eq[char[A165514(n+1)], A000007(n)]` -/
def P10470252306998764003.Spec : Prop :=
  ∀ n, (P10470252306998764003.a n : ℤ) = A165513 (n + 1)

end A165513

/-! ## A165513.P6657524442996223667

`lt[1, A098361(A286449(n+1))]+1`
-/

namespace A165513.P6657524442996223667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A286449 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A165513.P6657524442996223667

namespace A165513

/-- `lt[1, A098361(A286449(n+1))]+1` -/
def P6657524442996223667.Spec : Prop :=
  ∀ n, (P6657524442996223667.a n : ℤ) = A165513 (n + 1)

end A165513

/-!
# A165514: The complement of the trapezoidal numbers.

The programs for A165514, there is no canonical definition to state claims against.
-/

/-! ## A165514.P1427721038991114624

`filter[A279029(n+1), A294935(#)]`
-/

namespace A165514.P1427721038991114624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A165514.P1427721038991114624

/-! ## A165514.P8499166823081741945

`record[(n+1)/A000108(A136107(n+1))]`
-/

namespace A165514.P8499166823081741945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000108 (A136107 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165514.P8499166823081741945

/-! ## A165514.P280565354022093467

`lt[(∑{d}[n+1, #]-Δ[n²])², 2]+1`
-/

namespace A165514.P280565354022093467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A165514.P280565354022093467

/-! ## A165514.P12291118929402216872

`lt[abs(A237588(n+1)), 2]+1`
-/

namespace A165514.P12291118929402216872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237588 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A165514.P12291118929402216872

/-! ## A165514.P16376629919213097319

`lt[A235796(n+1)², 2]+1`
-/

namespace A165514.P16376629919213097319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A165514.P16376629919213097319

/-!
# A165516: Perfect squares (A000290) that can be expressed as the sum of three consecutive triangular numbers (A000217).

The programs for A165516, the canonical program `A165516.P8875667516480701150` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165516 has offset 1).

The definition of A165516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165516.P8875667516480701150

`record[10*a(n-2)-a(n-4)]²` with `a(0)=2, a(1)=1, a(2)=2, a(3)=8, a(4)=19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165516

/-- `record[10*a(n-2)-a(n-4)]²` -/
def P8875667516480701150.Spec : Prop :=
  ∀ n, P8875667516480701150.a n = A165516 (n + 1)

theorem P8875667516480701150.correct : P8875667516480701150.Spec := by
  intro n
  simp only [A165516, Nat.add_sub_cancel]

end A165516

/-! ## A165516.P480708057870537378

`Δ[(gcd(2, n)+2)*a(n-1)-a(n-2)]²` with `a(0)=1, a(1)=3`
-/

namespace A165516.P480708057870537378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (Nat.gcd 2 n + 2 : ℤ) * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A165516.P480708057870537378

namespace A165516

/-- `Δ[(gcd(2, n)+2)*a(n-1)-a(n-2)]²` -/
def P480708057870537378.Spec : Prop :=
  ∀ n, P480708057870537378.a n = A165516 (n + 1)

end A165516

/-! ## A165516.P5350165155521835332

`A249483(n+2)`
-/

namespace A165516.P5350165155521835332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249483 (n + 2)

end

end A165516.P5350165155521835332

namespace A165516

/-- `A249483(n+2)` -/
def P5350165155521835332.Spec : Prop :=
  ∀ n, P5350165155521835332.a n = A165516 (n + 1)

end A165516

/-! ## A165516.P15488940686177838065

`A129445(n+2)²`
-/

namespace A165516.P15488940686177838065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 2) ^ 2

end

end A165516.P15488940686177838065

namespace A165516

/-- `A129445(n+2)²` -/
def P15488940686177838065.Spec : Prop :=
  ∀ n, P15488940686177838065.a n = A165516 (n + 1)

end A165516

/-! ## A165516.P11161218021032018093

`Δ[A085376(n+1)]²`
-/

namespace A165516.P11161218021032018093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A165516.P11161218021032018093

namespace A165516

/-- `Δ[A085376(n+1)]²` -/
def P11161218021032018093.Spec : Prop :=
  ∀ n, P11161218021032018093.a n = A165516 (n + 1)

end A165516

/-! ## A165516.P8823830189816844413

`(A233450(n+2)+A181442(n))²`
-/

namespace A165516.P8823830189816844413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233450 (n + 2) + A181442 n) ^ 2

end

end A165516.P8823830189816844413

namespace A165516

/-- `(A233450(n+2)+A181442(n))²` -/
def P8823830189816844413.Spec : Prop :=
  ∀ n, P8823830189816844413.a n = A165516 (n + 1)

end A165516

/-! ## A165516.P4210313163002147378

`(A165517(n+1)+A077288(n)+2)²`
-/

namespace A165516.P4210313163002147378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165517 (n + 1) + (A077288 n + 2)) ^ 2

end

end A165516.P4210313163002147378

namespace A165516

/-- `(A165517(n+1)+A077288(n)+2)²` -/
def P4210313163002147378.Spec : Prop :=
  ∀ n, P4210313163002147378.a n = A165516 (n + 1)

end A165516

/-! ## A165516.P11399520954669623192

`A129445(A000027(n+2))*A129445(n+2)`
-/

namespace A165516.P11399520954669623192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A000027 (n + 2)).toNat * A129445 (n + 2)

end

end A165516.P11399520954669623192

namespace A165516

/-- `A129445(A000027(n+2))*A129445(n+2)` -/
def P11399520954669623192.Spec : Prop :=
  ∀ n, P11399520954669623192.a n = A165516 (n + 1)

end A165516

/-! ## A165516.P10160211535319189154

`A129445(n+2)^A001222(A001358(n+1))`
-/

namespace A165516.P10160211535319189154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129445 (n + 2) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A165516.P10160211535319189154

namespace A165516

/-- `A129445(n+2)^A001222(A001358(n+1))` -/
def P10160211535319189154.Spec : Prop :=
  ∀ n, P10160211535319189154.a n = (A165516 (n + 1) : ℚ)

end A165516

/-! ## A165516.P6964170634448959941

`A129445(n+2)^A007421(A028260(n+1))`
-/

namespace A165516.P6964170634448959941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129445 (n + 2) : ℚ) ^ (A007421 (A028260 (n + 1)).toNat : ℤ)

end

end A165516.P6964170634448959941

namespace A165516

/-- `A129445(n+2)^A007421(A028260(n+1))` -/
def P6964170634448959941.Spec : Prop :=
  ∀ n, P6964170634448959941.a n = (A165516 (n + 1) : ℚ)

end A165516

/-!
# A165517: Indices of the least triangular numbers (A000217) for which three consecutive triangular numbers sum to a perfect square (A000290).

The programs for A165517, the canonical program `A165517.P10357588564748643786` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165517 has offset 1).

The definition of A165517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165517.P10357588564748643786

`10*a(n-2)-a(n-4)+12` with `a(0)=0, a(1)=5, a(2)=14, a(3)=63`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165517

/-- `10*a(n-2)-a(n-4)+12` -/
def P10357588564748643786.Spec : Prop :=
  ∀ n, P10357588564748643786.a n = A165517 (n + 1)

theorem P10357588564748643786.correct : P10357588564748643786.Spec := by
  intro n
  simp only [A165517, Nat.add_sub_cancel]

end A165517

/-! ## A165517.P14773392126073834944

`A233450(n+2)-1`
-/

namespace A165517.P14773392126073834944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 2) - 1

end

end A165517.P14773392126073834944

namespace A165517

/-- `A233450(n+2)-1` -/
def P14773392126073834944.Spec : Prop :=
  ∀ n, P14773392126073834944.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P15768727682599351120

`A129444(n+3)-2`
-/

namespace A165517.P15768727682599351120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (n + 3) - 2

end

end A165517.P15768727682599351120

namespace A165517

/-- `A129444(n+3)-2` -/
def P15768727682599351120.Spec : Prop :=
  ∀ n, P15768727682599351120.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P3867157860165862550

`∑[A080872(n+1)]-1`
-/

namespace A165517.P3867157860165862550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A165517.P3867157860165862550

namespace A165517

/-- `∑[A080872(n+1)]-1` -/
def P3867157860165862550.Spec : Prop :=
  ∀ n, P3867157860165862550.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P18221107374116285812

`A077291(n)+2*A077288(n)`
-/

namespace A165517.P18221107374116285812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 n + 2 * A077288 n

end

end A165517.P18221107374116285812

namespace A165517

/-- `A077291(n)+2*A077288(n)` -/
def P18221107374116285812.Spec : Prop :=
  ∀ n, P18221107374116285812.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P6921062950808605369

`∑[A057427(n)*A080872(n+1)]`
-/

namespace A165517.P6921062950808605369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A080872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165517.P6921062950808605369

namespace A165517

/-- `∑[A057427(n)*A080872(n+1)]` -/
def P6921062950808605369.Spec : Prop :=
  ∀ n, P6921062950808605369.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P12586934784606927584

`∑[lcm(A062157(n), A080872(n+1))]`
-/

namespace A165517.P12586934784606927584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A080872 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165517.P12586934784606927584

namespace A165517

/-- `∑[lcm(A062157(n), A080872(n+1))]` -/
def P12586934784606927584.Spec : Prop :=
  ∀ n, (P12586934784606927584.a n : ℤ) = A165517 (n + 1)

end A165517

/-! ## A165517.P5055154050745600539

`∑[xor(A000007(n), A080872(n+1))]`
-/

namespace A165517.P5055154050745600539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A080872 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165517.P5055154050745600539

namespace A165517

/-- `∑[xor(A000007(n), A080872(n+1))]` -/
def P5055154050745600539.Spec : Prop :=
  ∀ n, P5055154050745600539.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P2090110799029612215

`A080806(n+1)+A077291(n)-1`
-/

namespace A165517.P2090110799029612215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1) + (A077291 n - 1)

end

end A165517.P2090110799029612215

namespace A165517

/-- `A080806(n+1)+A077291(n)-1` -/
def P2090110799029612215.Spec : Prop :=
  ∀ n, P2090110799029612215.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P12800837958255970570

`∑[A062157(2*n)²*A080872(n+1)]`
-/

namespace A165517.P12800837958255970570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) ^ 2 * A080872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165517.P12800837958255970570

namespace A165517

/-- `∑[A062157(2*n)²*A080872(n+1)]` -/
def P12800837958255970570.Spec : Prop :=
  ∀ n, P12800837958255970570.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P3207531733728201436

`A278400(gcd(n, n+1))+∑[A080872(n+1)]`
-/

namespace A165517.P3207531733728201436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (Nat.gcd n (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165517.P3207531733728201436

namespace A165517

/-- `A278400(gcd(n, n+1))+∑[A080872(n+1)]` -/
def P3207531733728201436.Spec : Prop :=
  ∀ n, P3207531733728201436.a n = A165517 (n + 1)

end A165517

/-! ## A165517.P5577843811433246518

`A136331(n+2)/3-2`
-/

namespace A165517.P5577843811433246518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136331 (n + 2) : ℚ) / 3 - 2

end

end A165517.P5577843811433246518

namespace A165517

/-- `A136331(n+2)/3-2` -/
def P5577843811433246518.Spec : Prop :=
  ∀ n, P5577843811433246518.a n = (A165517 (n + 1) : ℚ)

end A165517

/-! ## A165517.P9100485613686016009

`∑[A080872(n+2)]%A080872(n+2)`
-/

namespace A165517.P9100485613686016009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A080872 (n + 2))

end

end A165517.P9100485613686016009

namespace A165517

/-- `∑[A080872(n+2)]%A080872(n+2)` -/
def P9100485613686016009.Spec : Prop :=
  ∀ n, P9100485613686016009.a n = A165517 (n + 1)

end A165517

/-!
# A165518: Perfect squares (A000290) that can be expressed as the sum of four consecutive triangular numbers (A000217).

The programs for A165518, the canonical program `A165518.P229213089645885385` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165518 has offset 1).

The definition of A165518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165518.P13960854531657648714

`34*a(n-1)-a(n-2)-32` with `a(0)=4, a(1)=100`
-/

namespace A165518.P13960854531657648714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 100] fun n a =>
  34 * a (n - 1) - a (n - 2) - 32

end

end A165518.P13960854531657648714

namespace A165518

/-- `34*a(n-1)-a(n-2)-32` -/
def P13960854531657648714.Spec : Prop :=
  ∀ n, P13960854531657648714.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P229213089645885385

`4*A008844(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165518

/-- `4*A008844(n)` -/
def P229213089645885385.Spec : Prop :=
  ∀ n, P229213089645885385.a n = A165518 (n + 1)

theorem P229213089645885385.correct : P229213089645885385.Spec := by
  intro n
  simp only [A165518, Nat.add_sub_cancel]

end A165518

/-! ## A165518.P15518135930491139942

`A075870(n+1)²`
-/

namespace A165518.P15518135930491139942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075870 (n + 1) ^ 2

end

end A165518.P15518135930491139942

namespace A165518

/-- `A075870(n+1)²` -/
def P15518135930491139942.Spec : Prop :=
  ∀ n, P15518135930491139942.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P4530163391979321097

`record[-floor((sqrt(2)+1)*a(n-1))]²` with `a(0)=2`
-/

namespace A165518.P4530163391979321097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A165518.P4530163391979321097

namespace A165518

/-- `record[-floor((sqrt(2)+1)*a(n-1))]²` -/
def P4530163391979321097.Spec : Prop :=
  ∀ n, P4530163391979321097.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P14817449913666824439

`record[a(n-2)-a(n-1)-a(n-1)]²` with `a(0)=2, a(1)=0`
-/

namespace A165518.P14817449913666824439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A165518.P14817449913666824439

namespace A165518

/-- `record[a(n-2)-a(n-1)-a(n-1)]²` -/
def P14817449913666824439.Spec : Prop :=
  ∀ n, P14817449913666824439.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P17567700930212679786

`A379508(n)+3`
-/

namespace A165518.P17567700930212679786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379508 n + 3

end

end A165518.P17567700930212679786

namespace A165518

/-- `A379508(n)+3` -/
def P17567700930212679786.Spec : Prop :=
  ∀ n, P17567700930212679786.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P7318231088943531951

`Δ[A001542(n)]²`
-/

namespace A165518.P7318231088943531951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A165518.P7318231088943531951

namespace A165518

/-- `Δ[A001542(n)]²` -/
def P7318231088943531951.Spec : Prop :=
  ∀ n, P7318231088943531951.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P322517106376904140

`Δ[A182188(n)]²`
-/

namespace A165518.P322517106376904140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A165518.P322517106376904140

namespace A165518

/-- `Δ[A182188(n)]²` -/
def P322517106376904140.Spec : Prop :=
  ∀ n, P322517106376904140.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P12841066662499619201

`Δ[A182189(n)]²`
-/

namespace A165518.P12841066662499619201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A165518.P12841066662499619201

namespace A165518

/-- `Δ[A182189(n)]²` -/
def P12841066662499619201.Spec : Prop :=
  ∀ n, P12841066662499619201.a n = A165518 (n + 1)

end A165518

/-! ## A165518.P3323841182439853003

`1+3*A077420(n)`
-/

namespace A165518.P3323841182439853003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 3 * A077420 n

end

end A165518.P3323841182439853003

namespace A165518

/-- `1+3*A077420(n)` -/
def P3323841182439853003.Spec : Prop :=
  ∀ n, P3323841182439853003.a n = A165518 (n + 1)

end A165518

/-!
# A165520: Antidiagonal writing from three rows trio A165351,A165355,A165367 (first,second and third trisections of A026741).

The programs for A165520, there is no canonical definition to state claims against.
-/

/-! ## A165520.P15931482095298544301

`A330709((n%3+n)²)`
-/

namespace A165520.P15931482095298544301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 ((n % 3 + n) ^ 2)

end

end A165520.P15931482095298544301

/-! ## A165520.P4627257758856128593

`lcm(2, 1-A143097(n+1))/2`
-/

namespace A165520.P4627257758856128593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - A143097 (n + 1)) : ℚ) / 2

end

end A165520.P4627257758856128593

/-! ## A165520.P10415692380517347791

`A026741(ceil(abs(γ-n))%3+n-1)`
-/

namespace A165520.P10415692380517347791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ 3 + (n : ℤ) - 1).toNat

end

end A165520.P10415692380517347791

/-! ## A165520.P9026660197208456276

`A330709(A143097(n+1)²)`
-/

namespace A165520.P9026660197208456276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A143097 (n + 1) ^ 2).toNat

end

end A165520.P9026660197208456276

/-! ## A165520.P848948031208364738

`A026741(A143097(n+1)-1)`
-/

namespace A165520.P848948031208364738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A143097 (n + 1) - 1).toNat

end

end A165520.P848948031208364738

/-!
# A165521: The number of 4321-avoiding separable permutations of length n.

The programs for A165521, there is no canonical definition to state claims against.
-/

/-! ## A165521.P4301071494745642374

`A294696(A024646(n))`
-/

namespace A165521.P4301071494745642374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 (A024646 n).toNat

end

end A165521.P4301071494745642374

/-! ## A165521.P18044328792466175506

`A294696(A024647(n))`
-/

namespace A165521.P18044328792466175506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 (A024647 n).toNat

end

end A165521.P18044328792466175506

/-! ## A165521.P15583219868148365909

`A294696(A024648(n))`
-/

namespace A165521.P15583219868148365909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 (A024648 n).toNat

end

end A165521.P15583219868148365909

/-! ## A165521.P3027126854681285260

`A294696(A024649(n))`
-/

namespace A165521.P3027126854681285260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 (A024649 n).toNat

end

end A165521.P3027126854681285260

/-!
# A165522: The number of 54321-avoiding separable permutations of length n.

The programs for A165522, there is no canonical definition to state claims against.
-/

/-! ## A165522.P6502625784924397374

`A279565(n)+A070263(A258352(n))`
-/

namespace A165522.P6502625784924397374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279565 n + A070263 (A258352 n).toNat

end

end A165522.P6502625784924397374

/-! ## A165522.P7621016579850905302

`A008617(A150196(n+1))`
-/

namespace A165522.P7621016579850905302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A150196 (n + 1)).toNat

end

end A165522.P7621016579850905302

/-! ## A165522.P12338292756526233375

`A187187(A369443(n+1))`
-/

namespace A165522.P12338292756526233375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A369443 (n + 1)).toNat

end

end A165522.P12338292756526233375

/-!
# A165523: The number of 654321-avoiding separable permutations of length n.

The programs for A165523, there is no canonical definition to state claims against.
-/

/-! ## A165523.P11066393649849846288

`A247781(A150614(n))`
-/

namespace A165523.P11066393649849846288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A150614 n).toNat

end

end A165523.P11066393649849846288

/-! ## A165523.P14304049717763119439

`A110655(A161680(n)+A149784(n))`
-/

namespace A165523.P14304049717763119439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A161680 n + A149784 n).toNat

end

end A165523.P14304049717763119439

/-! ## A165523.P6332117531844569959

`A165640(A151069(n))`
-/

namespace A165523.P6332117531844569959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A151069 n).toNat

end

end A165523.P6332117531844569959

/-!
# A165524: Number of permutations of length n which avoid the patterns 4321 and 1324.

The programs for A165524, there is no canonical definition to state claims against.
-/

/-! ## A165524.P15964257085765578427

`A187188(A036996(n))`
-/

namespace A165524.P15964257085765578427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A036996 n).toNat

end

end A165524.P15964257085765578427

/-! ## A165524.P9675472195793738240

`A187188(A391689(n))`
-/

namespace A165524.P9675472195793738240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A391689 n).toNat

end

end A165524.P9675472195793738240

/-! ## A165524.P17869992045685373016

`A256595(4*C(n, 2)+2)+A000700(n+3)`
-/

namespace A165524.P17869992045685373016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256595 (4 * Nat.choose n 2 + 2) + A000700 (n + 3)

end

end A165524.P17869992045685373016

/-!
# A165525: Number of permutations of length n which avoid the patterns 4321 and 2143.

The programs for A165525, there is no canonical definition to state claims against.
-/

/-! ## A165525.P4977932557215886842

`A138311(A165524(n))`
-/

namespace A165525.P4977932557215886842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A165524 n).toNat

end

end A165525.P4977932557215886842

/-! ## A165525.P1928276403574947878

`A110266(A047013(n+1))`
-/

namespace A165525.P1928276403574947878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A047013 (n + 1)).toNat

end

end A165525.P1928276403574947878

/-! ## A165525.P11019082756637241057

`A001462(A357650(n)+1-char[xor(n, 2*n)])`
-/

namespace A165525.P11019082756637241057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A357650 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A165525.P11019082756637241057

/-!
# A165526: Number of permutations of length n which avoid the patterns 4312 and 1324.

The programs for A165526, there is no canonical definition to state claims against.
-/

/-! ## A165526.P7453439573172497742

`A138311(A165525(n))`
-/

namespace A165526.P7453439573172497742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A165525 n).toNat

end

end A165526.P7453439573172497742

/-! ## A165526.P1665035798312815246

`A165527(A004879(n+1))`
-/

namespace A165526.P1665035798312815246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165527 (A004879 (n + 1)).toNat

end

end A165526.P1665035798312815246

/-! ## A165526.P17214296984821517202

`A165527(A004890(n+1))`
-/

namespace A165526.P17214296984821517202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165527 (A004890 (n + 1)).toNat

end

end A165526.P17214296984821517202

/-!
# A165528: Number of permutations of length n which avoid the patterns 1324 and 4231.

The programs for A165528, there is no canonical definition to state claims against.
-/

/-! ## A165528.P1225239713943262274

`A138311(A165529(n))`
-/

namespace A165528.P1225239713943262274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A165529 n).toNat

end

end A165528.P1225239713943262274

/-! ## A165528.P5858115677720525138

`A165640(A342632(n))`
-/

namespace A165528.P5858115677720525138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A342632 n).toNat

end

end A165528.P5858115677720525138

/-! ## A165528.P1727889672755124967

`A087011(A002697(n)+4)`
-/

namespace A165528.P1727889672755124967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A002697 n + 4).toNat

end

end A165528.P1727889672755124967

/-!
# A165529: Number of permutations of length n which avoid the patterns 4312 and 2143.

The programs for A165529, there is no canonical definition to state claims against.
-/

/-! ## A165529.P11947765406840245475

`A165530(n)-A180649(A063886(n))`
-/

namespace A165529.P11947765406840245475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165530 n - A180649 (A063886 n).toNat

end

end A165529.P11947765406840245475

/-! ## A165529.P8296390773065899374

`A138311(A165528(n))`
-/

namespace A165529.P8296390773065899374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A165528 n).toNat

end

end A165529.P8296390773065899374

/-! ## A165529.P9008257764820557117

`A261585(A088132(n))`
-/

namespace A165529.P9008257764820557117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A088132 n).toNat

end

end A165529.P9008257764820557117

/-!
# A165530: Number of permutations of length n which avoid the patterns 4321 and 3142.

The programs for A165530, the canonical program `A165530.P3629894513335545754` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165530 has offset 0).

The definition of A165530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165530.P3629894513335545754

`8*a(n-1)-21*a(n-2)+20*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165530

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-4*a(n-4)` -/
def P3629894513335545754.Spec : Prop :=
  ∀ n, P3629894513335545754.a n = A165530 n

theorem P3629894513335545754.correct : P3629894513335545754.Spec := by
  intro n
  simp only [A165530]

end A165530

/-! ## A165530.P2566495305932251916

`A180649(A063886(n))+A165529(n)`
-/

namespace A165530.P2566495305932251916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A063886 n).toNat + A165529 n

end

end A165530.P2566495305932251916

namespace A165530

/-- `A180649(A063886(n))+A165529(n)` -/
def P2566495305932251916.Spec : Prop :=
  ∀ n, P2566495305932251916.a n = A165530 n

end A165530

/-! ## A165530.P17217936672301465674

`A109841(A279563(n))`
-/

namespace A165530.P17217936672301465674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109841 (A279563 n).toNat

end

end A165530.P17217936672301465674

namespace A165530

/-- `A109841(A279563(n))` -/
def P17217936672301465674.Spec : Prop :=
  ∀ n, P17217936672301465674.a n = A165530 n

end A165530

/-!
# A165531: Number of permutations of length n which avoid the patterns 4123 and 2341.

The programs for A165531, there is no canonical definition to state claims against.
-/

/-! ## A165531.P11899846140770319711

`A167865(a(n-1)*∑[2*n])` with `a(0)=1`
-/

namespace A165531.P11899846140770319711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167865 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A165531.P11899846140770319711

/-! ## A165531.P14804719313160130489

`A167865(((n+1)²-(n+1))*a(n-1))` with `a(0)=1`
-/

namespace A165531.P14804719313160130489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167865 ((((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)) * a (n - 1)).toNat

end

end A165531.P14804719313160130489

/-! ## A165531.P5423577907628338227

`A076885(A150230(n))`
-/

namespace A165531.P5423577907628338227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150230 n).toNat

end

end A165531.P5423577907628338227

/-!
# A165532: Number of permutations of length n which avoid the patterns 4231 and 3214.

The programs for A165532, there is no canonical definition to state claims against.
-/

/-! ## A165532.P16526858031727131485

`ceil(A299492(A323261(n))/9)`
-/

namespace A165532.P16526858031727131485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299492 (A323261 n).toNat : ℚ) / 9⌉

end

end A165532.P16526858031727131485

/-! ## A165532.P9320033868551661215

`A195174(∑[∑[A323262(n+1)]])`
-/

namespace A165532.P9320033868551661215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165532.P9320033868551661215

/-! ## A165532.P4450458873163667585

`A165533(n)-A285007(n²+7)`
-/

namespace A165532.P4450458873163667585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165533 n - A285007 (n ^ 2 + 7)

end

end A165532.P4450458873163667585

/-! ## A165532.P9479741055103547049

`round(A014592(n)+A299492(A323261(n))/9)`
-/

namespace A165532.P9479741055103547049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014592 n : ℚ) + (A299492 (A323261 n).toNat : ℚ) / 9)

end

end A165532.P9479741055103547049

/-!
# A165533: Number of permutations of length n which avoid the patterns 4213 and 1432.

The programs for A165533, there is no canonical definition to state claims against.
-/

/-! ## A165533.P13125204086612832575

`A034887(Δ[A012866(n)])`
-/

namespace A165533.P13125204086612832575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (f1 (n + 1) - f1 n).toNat

end

end A165533.P13125204086612832575

/-! ## A165533.P352072541348868277

`A138997(A079675(n+1))`
-/

namespace A165533.P352072541348868277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A079675 (n + 1)).toNat

end

end A165533.P352072541348868277

/-! ## A165533.P14863262655179574524

`A134119(A079675(n+1)+3)`
-/

namespace A165533.P14863262655179574524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A079675 (n + 1) + 3).toNat

end

end A165533.P14863262655179574524

/-! ## A165533.P15768167298965735574

`A002266(A079675(n+1)+4)`
-/

namespace A165533.P15768167298965735574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A079675 (n + 1) + 4).toNat

end

end A165533.P15768167298965735574

/-!
# A165534: Number of permutations of length n that avoid the patterns 1243 and 2431.

The programs for A165534, there is no canonical definition to state claims against.
-/

/-! ## A165534.P17337021099104630367

`A228770(n+1)+A226434(n+1)`
-/

namespace A165534.P17337021099104630367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228770 (n + 1) + A226434 (n + 1)

end

end A165534.P17337021099104630367

/-! ## A165534.P1157955220067864665

`A228771(n+1)+A228769(n+1)`
-/

namespace A165534.P1157955220067864665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228771 (n + 1) + A228769 (n + 1)

end

end A165534.P1157955220067864665

/-! ## A165534.P7397539049259651024

`A165535(n+1)-A011741(A308338(n))`
-/

namespace A165534.P7397539049259651024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165535 (n + 1) - A011741 (A308338 n).toNat

end

end A165534.P7397539049259651024

/-!
# A165535: Number of permutations of length n which avoid the patterns 4231 and 3124.

The programs for A165535, there is no canonical definition to state claims against.
-/

/-! ## A165535.P2165076854346434703

`A008615(A225878(n+1)+A116078(n))`
-/

namespace A165535.P2165076854346434703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A225878 (n + 1) + A116078 n).toNat

end

end A165535.P2165076854346434703

/-! ## A165535.P3614349646767391915

`A083434(A200220(n))`
-/

namespace A165535.P3614349646767391915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A200220 n).toNat

end

end A165535.P3614349646767391915

/-! ## A165535.P4023746386314131644

`A320536(∑[A150247(n)])`
-/

namespace A165535.P4023746386314131644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165535.P4023746386314131644

/-!
# A165536: Number of permutations of length n which avoid the patterns 1243 and 2341.

The programs for A165536, there is no canonical definition to state claims against.
-/

/-! ## A165536.P4918291882323936499

`floor((A095117(floor((∏[2/(n+1)+4]/2+10)/9))+10)/9)`
-/

namespace A165536.P4918291882323936499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095117 ⌊((∏ j ∈ Finset.range (n + 1), f1 j) / 2 + 10) / 9⌋.toNat + 10 : ℚ) / 9⌋

end

end A165536.P4918291882323936499

/-! ## A165536.P17125159658096496177

`A072039(A112737(n))`
-/

namespace A165536.P17125159658096496177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072039 (A112737 n).toNat

end

end A165536.P17125159658096496177

/-! ## A165536.P7466777931095075561

`A076885(A150201(n))`
-/

namespace A165536.P7466777931095075561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150201 n).toNat

end

end A165536.P7466777931095075561

/-!
# A165538: Number of permutations of length n which avoid the patterns 4312 and 3142.

The programs for A165538, there is no canonical definition to state claims against.
-/

/-! ## A165538.P3532234144145451534

`A026741(A165542(n)+A164651(n))`
-/

namespace A165538.P3532234144145451534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165542 n + A164651 n).toNat

end

end A165538.P3532234144145451534

/-! ## A165538.P16858101000436655644

`A165539(A073788(n))`
-/

namespace A165538.P16858101000436655644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165539 (A073788 n).toNat

end

end A165538.P16858101000436655644

/-! ## A165538.P1981890909584921788

`A369715(A302171(n))`
-/

namespace A165538.P1981890909584921788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A302171 n).toNat

end

end A165538.P1981890909584921788

/-!
# A165539: Number of permutations of length n which avoid the patterns 4213 and 3421.

The programs for A165539, there is no canonical definition to state claims against.
-/

/-! ## A165539.P5274250163279215702

`A008619(A059278(n))-A038385(n)`
-/

namespace A165539.P5274250163279215702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059278 n).toNat - A038385 n

end

end A165539.P5274250163279215702

/-! ## A165539.P5120215614132015679

`A093636(n)-A338652(A145847(n))`
-/

namespace A165539.P5120215614132015679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093636 n - A338652 (A145847 n).toNat

end

end A165539.P5120215614132015679

/-! ## A165539.P18438690804344809306

`A326549(A325019(n+1))+A165538(n)`
-/

namespace A165539.P18438690804344809306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326549 (A325019 (n + 1)).toNat + A165538 n

end

end A165539.P18438690804344809306

/-!
# A165540: Number of permutations of length n which avoid the patterns 1234 and 2341.

The programs for A165540, there is no canonical definition to state claims against.
-/

/-! ## A165540.P13023762104225300552

`A030307(A335472(2*(n+1))+1)`
-/

namespace A165540.P13023762104225300552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (A335472 (2 * (n + 1)) + 1).toNat

end

end A165540.P13023762104225300552

/-! ## A165540.P2531763822604074103

`A008618(A000045(3*n+2)+1)`
-/

namespace A165540.P2531763822604074103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A000045 (3 * n + 2) + 1).toNat

end

end A165540.P2531763822604074103

/-! ## A165540.P1104411855695796760

`A214358(n)+A214332(A214367(n+3))`
-/

namespace A165540.P1104411855695796760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214358 n + A214332 (A214367 (n + 3)).toNat

end

end A165540.P1104411855695796760

/-!
# A165541: Number of permutations of length n which avoid the patterns 4213 and 3142.

The programs for A165541, there is no canonical definition to state claims against.
-/

/-! ## A165541.P13070501521682718511

`A248180(A149070(n))`
-/

namespace A165541.P13070501521682718511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A149070 n).toNat

end

end A165541.P13070501521682718511

/-! ## A165541.P8024264908733315514

`A138311(A363809(n))`
-/

namespace A165541.P8024264908733315514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A363809 n).toNat

end

end A165541.P8024264908733315514

/-! ## A165541.P857469411043064950

`A373411(A283877(n))`
-/

namespace A165541.P857469411043064950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373411 (A283877 n).toNat

end

end A165541.P857469411043064950

/-!
# A165542: Number of permutations of length n which avoid the patterns 4231 and 4123.

The programs for A165542, there is no canonical definition to state claims against.
-/

/-! ## A165542.P5787989689081231105

`A028310(A128737(n)+A033321(n))`
-/

namespace A165542.P5787989689081231105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A128737 n + A033321 n).toNat

end

end A165542.P5787989689081231105

/-! ## A165542.P6199704183971437660

`A128726(n)+A028310(A181768(n))`
-/

namespace A165542.P6199704183971437660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n + A028310 (A181768 n).toNat

end

end A165542.P6199704183971437660

/-! ## A165542.P5473339526190834752

`A004277(A200753(n))-A165545(n)`
-/

namespace A165542.P5473339526190834752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A200753 n).toNat - A165545 n

end

end A165542.P5473339526190834752

/-! ## A165542.P9881136969141254143

`A004277(A165543(n))-A049123(n+1)`
-/

namespace A165542.P9881136969141254143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A165543 n).toNat - A049123 (n + 1)

end

end A165542.P9881136969141254143

/-!
# A165543: Number of permutations of length n which avoid both the patterns 3241 and 4321. Or, equivalently, avoids both 1234 and 1342.

The programs for A165543, there is no canonical definition to state claims against.
-/

/-! ## A165543.P13374690673977871134

`A261221(A149775(n))+char[7]`
-/

namespace A165543.P13374690673977871134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A149775 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A165543.P13374690673977871134

/-! ## A165543.P3095972157160579869

`A194200(2*A049123(n+1))`
-/

namespace A165543.P3095972157160579869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194200 (2 * A049123 (n + 1)).toNat

end

end A165543.P3095972157160579869

/-! ## A165543.P5750698969981159437

`A165542(n)+A055641(A001181(n))`
-/

namespace A165543.P5750698969981159437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165542 n + A055641 (A001181 n).toNat

end

end A165543.P5750698969981159437

/-! ## A165543.P5758761251927743582

`A165542(n)+A085979(A084058(n))`
-/

namespace A165543.P5758761251927743582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165542 n + A085979 (A084058 n).toNat

end

end A165543.P5758761251927743582

/-!
# A165544: Number of permutations of length n which avoid the patterns 4123 and 3412.

The programs for A165544, there is no canonical definition to state claims against.
-/

/-! ## A165544.P6270685874849668464

`A200753(n)+A083894(A197772(n))`
-/

namespace A165544.P6270685874849668464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200753 n + A083894 (A197772 n).toNat

end

end A165544.P6270685874849668464

/-! ## A165544.P959623808585275064

`A348616(A005142(n))+A200753(n)`
-/

namespace A165544.P959623808585275064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348616 (A005142 n).toNat + A200753 n

end

end A165544.P959623808585275064

/-! ## A165544.P10004461001620871545

`A200753(n)+A184945(A250167(n+1))`
-/

namespace A165544.P10004461001620871545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200753 n + A184945 (A250167 (n + 1)).toNat

end

end A165544.P10004461001620871545

/-! ## A165544.P139666608734567820

`A216673(A143632(2*n+3))+A200753(n)`
-/

namespace A165544.P139666608734567820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (A143632 (2 * n + 3)).toNat + A200753 n

end

end A165544.P139666608734567820

/-!
# A165545: Number of permutations of length n which avoid the patterns 2341 and 3421.

The programs for A165545, there is no canonical definition to state claims against.
-/

/-! ## A165545.P11162454054471987124

`A004277(A200753(n))-A165542(n)`
-/

namespace A165545.P11162454054471987124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A200753 n).toNat - A165542 n

end

end A165545.P11162454054471987124

/-! ## A165545.P10872551819708174455

`A110654(A109033(n)+A053617(n))`
-/

namespace A165545.P10872551819708174455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A109033 n + A053617 n).toNat

end

end A165545.P10872551819708174455

/-! ## A165545.P9965059991719800916

`A110654(A053617(n)+∑[A109034(n)])`
-/

namespace A165545.P9965059991719800916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A053617 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165545.P9965059991719800916

/-! ## A165545.P18197757929496853674

`or(A000005(A222201(n)), A049123(n+1))`
-/

namespace A165545.P18197757929496853674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A222201 n).toNat) (A049123 (n + 1))

end

end A165545.P18197757929496853674

/-!
# A165546: Number of permutations of length n that avoid the patterns 3412 and 2413.

The programs for A165546, there is no canonical definition to state claims against.
-/

/-! ## A165546.P12118402484233333485

`A053617(n)-A321402(A099132(n))`
-/

namespace A165546.P12118402484233333485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 n - A321402 (A099132 n).toNat

end

end A165546.P12118402484233333485

/-! ## A165546.P458003585687640353

`A053617(n)-A185284(A315646(n))`
-/

namespace A165546.P458003585687640353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 n - A185284 (A315646 n).toNat

end

end A165546.P458003585687640353

/-! ## A165546.P8185012799143450001

`A279568(n)-A235358(A109085(n))`
-/

namespace A165546.P8185012799143450001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279568 n - A235358 (A109085 n).toNat

end

end A165546.P8185012799143450001

/-! ## A165546.P6728837977203611940

`or(A155069(n), A248333(A074082(n)))`
-/

namespace A165546.P6728837977203611940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155069 n) (A248333 (A074082 n).toNat)

end

end A165546.P6728837977203611940

/-!
# A165549: a(1) = 7; for n > 1, a(n) = smallest prime strictly greater than sum of previous terms.

The programs for A165549, there is no canonical definition to state claims against.
-/

/-! ## A165549.P14829769395643911764

`Δ[A151800(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=7`
-/

namespace A165549.P14829769395643911764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  A151800 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165549.P14829769395643911764

/-! ## A165549.P18090766481533955227

`Δ[A013634(a(n-1))]` with `a(0)=0, a(1)=7`
-/

namespace A165549.P18090766481533955227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  A013634 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165549.P18090766481533955227

/-! ## A165549.P11936026551714091946

`A005145(7*A149853(n))`
-/

namespace A165549.P11936026551714091946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (7 * A149853 n).toNat

end

end A165549.P11936026551714091946

/-!
# A165550: Sum of digits of square is sum of square of digits.

The programs for A165550, there is no canonical definition to state claims against.
-/

/-! ## A165550.P762912259780898091

`eq[A003132(n), A004159(n)]`
-/

namespace A165550.P762912259780898091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165550.P762912259780898091

/-! ## A165550.P17823000930921890497

`eq[A067552(n)+A003132(n), A118881(n)]`
-/

namespace A165550.P17823000930921890497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n + A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165550.P17823000930921890497

/-! ## A165550.P5997984824658404623

`eq[A067552(n), A069816(n)]`
-/

namespace A165550.P5997984824658404623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165550.P5997984824658404623

/-! ## A165550.P12866175829670937943

`eq[A069816(n)+A004159(n), A118881(n)]`
-/

namespace A165550.P12866175829670937943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n + A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165550.P12866175829670937943

/-! ## A165550.P5667460298144377568

`eq[A069816(n)+A004159(n), A007953(n)²]`
-/

namespace A165550.P5667460298144377568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n + A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165550.P5667460298144377568

/-!
# A165551: Sum of cube of digits is sum of digits of cube.

The programs for A165551, there is no canonical definition to state claims against.
-/

/-! ## A165551.P16443019368717679640

`eq[A004164(n), A055012(n)]`
-/

namespace A165551.P16443019368717679640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165551.P16443019368717679640

/-! ## A165551.P12542293659761831619

`eq[A069958(n), A069973(n)]`
-/

namespace A165551.P12542293659761831619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165551.P12542293659761831619

/-! ## A165551.P9929017277409932411

`eq[A007953(n)+A004164(n), A065137(n)]`
-/

namespace A165551.P9929017277409932411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165551.P9929017277409932411

/-! ## A165551.P10691340447584976943

`eq[A065137(n)-A169805(n)/2, A004164(n)]`
-/

namespace A165551.P10691340447584976943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065137 n : ℚ) - (A169805 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A165551.P10691340447584976943

/-! ## A165551.P5488335917694397789

`eq[A065137(n)-(A062028(n)-n), A004164(n)]`
-/

namespace A165551.P5488335917694397789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n - (A062028 n - (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165551.P5488335917694397789

/-!
# A165553: a(n) = (3/2)*(1+(-3)^(n-1)).

The programs for A165553, the canonical program `A165553.P17679134492315504444` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165553 has offset 0).

The definition of A165553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165553.P4289178979731937497

`3/2*(1+(-3)^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165553.P4289178979731937497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (1 + (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165553.P4289178979731937497

namespace A165553

/-- `3/2*(1+(-3)^(n-1))` -/
def P4289178979731937497.Spec : Prop :=
  ∀ n, P4289178979731937497.a n = (A165553 n : ℚ)

end A165553

/-! ## A165553.P17679134492315504444

`3*a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165553

/-- `3*a(n-2)-2*a(n-1)` -/
def P17679134492315504444.Spec : Prop :=
  ∀ n, P17679134492315504444.a n = A165553 n

theorem P17679134492315504444.correct : P17679134492315504444.Spec := by
  intro n
  simp only [A165553]

end A165553

/-! ## A165553.P5338239538624667995

`ogf((1+5x)/(1+2x-3x^2))`
-/

namespace A165553.P5338239538624667995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 2, -3] n

end

end A165553.P5338239538624667995

namespace A165553

/-- `ogf((1+5x)/(1+2x-3x^2))` -/
def P5338239538624667995.Spec : Prop :=
  ∀ n, P5338239538624667995.a n = A165553 n

end A165553

/-! ## A165553.P13945287622612304595

`6-3*a(n-1)` with `a(0)=1`
-/

namespace A165553.P13945287622612304595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - 3 * a (n - 1)

end

end A165553.P13945287622612304595

namespace A165553

/-- `6-3*a(n-1)` -/
def P13945287622612304595.Spec : Prop :=
  ∀ n, P13945287622612304595.a n = A165553 n

end A165553

/-! ## A165553.P1378590475813152098

`6-a(n-1)/cot(atan(3))` with `a(0)=1`
-/

namespace A165553.P1378590475813152098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  6 - a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A165553.P1378590475813152098

namespace A165553

/-- `6-a(n-1)/cot(atan(3))` -/
def P1378590475813152098.Spec : Prop :=
  ∀ n, P1378590475813152098.a n = (A165553 n : ℝ)

end A165553

/-! ## A165553.P5041146015780598955

`6-a(n-1)/sqrt(1/9)` with `a(0)=1`
-/

namespace A165553.P5041146015780598955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  6 - a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A165553.P5041146015780598955

namespace A165553

/-- `6-a(n-1)/sqrt(1/9)` -/
def P5041146015780598955.Spec : Prop :=
  ∀ n, P5041146015780598955.a n = (A165553 n : ℝ)

end A165553

/-! ## A165553.P15234266489674817555

`6-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A165553.P15234266489674817555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - a (n - 1) - a (n - 1) - a (n - 1)

end

end A165553.P15234266489674817555

namespace A165553

/-- `6-a(n-1)-a(n-1)-a(n-1)` -/
def P15234266489674817555.Spec : Prop :=
  ∀ n, P15234266489674817555.a n = A165553 n

end A165553

/-! ## A165553.P2992671841292313510

`2*A014983(n)+1`
-/

namespace A165553.P2992671841292313510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014983 n + 1

end

end A165553.P2992671841292313510

namespace A165553

/-- `2*A014983(n)+1` -/
def P2992671841292313510.Spec : Prop :=
  ∀ n, P2992671841292313510.a n = A165553 n

end A165553

/-! ## A165553.P13895434398563656914

`2*A084222(n)-1`
-/

namespace A165553.P13895434398563656914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084222 n - 1

end

end A165553.P13895434398563656914

namespace A165553

/-- `2*A084222(n)-1` -/
def P13895434398563656914.Spec : Prop :=
  ∀ n, P13895434398563656914.a n = A165553 n

end A165553

/-! ## A165553.P18035598661484502621

`3-2*A084567(n)`
-/

namespace A165553.P18035598661484502621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A084567 n

end

end A165553.P18035598661484502621

namespace A165553

/-- `3-2*A084567(n)` -/
def P18035598661484502621.Spec : Prop :=
  ∀ n, P18035598661484502621.a n = A165553 n

end A165553

/-! ## A165553.P17433019544482193687

`or(1, A341463(n)+1)`
-/

namespace A165553.P17433019544482193687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341463 n + 1)

end

end A165553.P17433019544482193687

namespace A165553

/-- `or(1, A341463(n)+1)` -/
def P17433019544482193687.Spec : Prop :=
  ∀ n, P17433019544482193687.a n = A165553 n

end A165553

/-! ## A165553.P9175290930958576785

`or(1, 1-A076040(n))`
-/

namespace A165553.P9175290930958576785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - A076040 n)

end

end A165553.P9175290930958576785

namespace A165553

/-- `or(1, 1-A076040(n))` -/
def P9175290930958576785.Spec : Prop :=
  ∀ n, P9175290930958576785.a n = A165553 n

end A165553

/-! ## A165553.P6067091655809900977

`A084222(n)+A014983(n)`
-/

namespace A165553.P6067091655809900977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n + A014983 n

end

end A165553.P6067091655809900977

namespace A165553

/-- `A084222(n)+A014983(n)` -/
def P6067091655809900977.Spec : Prop :=
  ∀ n, P6067091655809900977.a n = A165553 n

end A165553

/-! ## A165553.P11227029450321400274

`A000034(n)-A076040(n)`
-/

namespace A165553.P11227029450321400274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A076040 n

end

end A165553.P11227029450321400274

namespace A165553

/-- `A000034(n)-A076040(n)` -/
def P11227029450321400274.Spec : Prop :=
  ∀ n, P11227029450321400274.a n = A165553 n

end A165553

/-! ## A165553.P15843108586028394115

`xor(A327767(n+1)-A046717(n), A327767(n+1))`
-/

namespace A165553.P15843108586028394115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A327767 (n + 1) - A046717 n) (A327767 (n + 1))

end

end A165553.P15843108586028394115

namespace A165553

/-- `xor(A327767(n+1)-A046717(n), A327767(n+1))` -/
def P15843108586028394115.Spec : Prop :=
  ∀ n, P15843108586028394115.a n = A165553 n

end A165553

/-! ## A165553.P5638020711660120228

`or(1, ceil(-((-3)^n/2)))`
-/

namespace A165553.P5638020711660120228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈-(((-3) ^ n : ℚ) / 2)⌉

end

end A165553.P5638020711660120228

namespace A165553

/-- `or(1, ceil(-((-3)^n/2)))` -/
def P5638020711660120228.Spec : Prop :=
  ∀ n, P5638020711660120228.a n = A165553 n

end A165553

/-! ## A165553.P17021852622663656858

`xor(1, ceil(-((-3)^n/2)))`
-/

namespace A165553.P17021852622663656858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈-(((-3) ^ n : ℚ) / 2)⌉

end

end A165553.P17021852622663656858

namespace A165553

/-- `xor(1, ceil(-((-3)^n/2)))` -/
def P17021852622663656858.Spec : Prop :=
  ∀ n, P17021852622663656858.a n = A165553 n

end A165553

/-! ## A165553.P4004340283823668783

`(A081630(n)+1)/2`
-/

namespace A165553.P4004340283823668783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081630 n + 1 : ℚ) / 2

end

end A165553.P4004340283823668783

namespace A165553

/-- `(A081630(n)+1)/2` -/
def P4004340283823668783.Spec : Prop :=
  ∀ n, P4004340283823668783.a n = (A165553 n : ℚ)

end A165553

/-! ## A165553.P2002701818303869174

`(3-A352779(n))/2`
-/

namespace A165553.P2002701818303869174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A352779 n : ℚ) / 2

end

end A165553.P2002701818303869174

namespace A165553

/-- `(3-A352779(n))/2` -/
def P2002701818303869174.Spec : Prop :=
  ∀ n, P2002701818303869174.a n = (A165553 n : ℚ)

end A165553

/-! ## A165553.P7840103750162989365

`A084567(n+1)+A084567(n)`
-/

namespace A165553.P7840103750162989365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 (n + 1) + A084567 n

end

end A165553.P7840103750162989365

namespace A165553

/-- `A084567(n+1)+A084567(n)` -/
def P7840103750162989365.Spec : Prop :=
  ∀ n, P7840103750162989365.a n = A165553 n

end A165553

/-!
# A165555: Primes obtained from other primes by prefixing a 5.

The programs for A165555, there is no canonical definition to state claims against.
-/

/-! ## A165555.P6381824037474100182

`p?[or(1, A080670(A001750(n+1)))]`
-/

namespace A165555.P6381824037474100182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080670 (A001750 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165555.P6381824037474100182

/-!
# A165556: A symmetric version of the Josephus problem read modulo 2.

The programs for A165556, the canonical program `A165556.P13929366811806873560` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165556 has offset 1).

The definition of A165556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165556.P11629240232796953702

`∑[ceil(log2(n+2))]%2`
-/

namespace A165556.P11629240232796953702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A165556.P11629240232796953702

namespace A165556

/-- `∑[ceil(log2(n+2))]%2` -/
def P11629240232796953702.Spec : Prop :=
  ∀ n, P11629240232796953702.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P418379396892564840

`and(1, ∑[ceil(log2(n+2))])`
-/

namespace A165556.P418379396892564840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165556.P418379396892564840

namespace A165556

/-- `and(1, ∑[ceil(log2(n+2))])` -/
def P418379396892564840.Spec : Prop :=
  ∀ n, P418379396892564840.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P13233463912856781099

`2-gcd(2, ∑[ceil(log2(n+2))])`
-/

namespace A165556.P13233463912856781099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A165556.P13233463912856781099

namespace A165556

/-- `2-gcd(2, ∑[ceil(log2(n+2))])` -/
def P13233463912856781099.Spec : Prop :=
  ∀ n, P13233463912856781099.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P10599613414019074942

`(∑[floor(log2(acot(n+1)))]%2)²`
-/

namespace A165556.P10599613414019074942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ 2

end

end A165556.P10599613414019074942

namespace A165556

/-- `(∑[floor(log2(acot(n+1)))]%2)²` -/
def P10599613414019074942.Spec : Prop :=
  ∀ n, P10599613414019074942.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P14196030341655848002

`1-and(n, ceil(log2(n+2))%2)`
-/

namespace A165556.P14196030341655848002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2)

end

end A165556.P14196030341655848002

namespace A165556

/-- `1-and(n, ceil(log2(n+2))%2)` -/
def P14196030341655848002.Spec : Prop :=
  ∀ n, P14196030341655848002.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P16548221860819999254

`(floor(log2(n+1))%2)^(n%2)`
-/

namespace A165556.P16548221860819999254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) % 2) ^ (n % 2)

end

end A165556.P16548221860819999254

namespace A165556

/-- `(floor(log2(n+1))%2)^(n%2)` -/
def P16548221860819999254.Spec : Prop :=
  ∀ n, (P16548221860819999254.a n : ℤ) = A165556 (n + 1)

end A165556

/-! ## A165556.P1081862944108417112

`val(∑[ceil(log2(n+2))]²+1, 2)`
-/

namespace A165556.P1081862944108417112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1).toNat 2

end

end A165556.P1081862944108417112

namespace A165556

/-- `val(∑[ceil(log2(n+2))]²+1, 2)` -/
def P1081862944108417112.Spec : Prop :=
  ∀ n, (P1081862944108417112.a n : ℤ) = A165556 (n + 1)

end A165556

/-! ## A165556.P13929366811806873560

`(∑[1-floor(log2(n+1))]-1)%2+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165556

/-- `(∑[1-floor(log2(n+1))]-1)%2+1` -/
def P13929366811806873560.Spec : Prop :=
  ∀ n, P13929366811806873560.a n = A165556 (n + 1)

theorem P13929366811806873560.correct : P13929366811806873560.Spec := by
  intro n
  simp only [A165556, Nat.add_sub_cancel]

end A165556

/-! ## A165556.P489172546784143053

`(1-(-1)^(n+1+(n+2)*floor(log2(n+2))))/2`
-/

namespace A165556.P489172546784143053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ (n + 1 + (n + 2) * Nat.log 2 (n + 2)) : ℚ) / 2

end

end A165556.P489172546784143053

namespace A165556

/-- `(1-(-1)^(n+1+(n+2)*floor(log2(n+2))))/2` -/
def P489172546784143053.Spec : Prop :=
  ∀ n, P489172546784143053.a n = (A165556 (n + 1) : ℚ)

end A165556

/-! ## A165556.P9458468158046921286

`char[A182182(2*n)-2]`
-/

namespace A165556.P9458468158046921286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (2 * n) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A165556.P9458468158046921286

namespace A165556

/-- `char[A182182(2*n)-2]` -/
def P9458468158046921286.Spec : Prop :=
  ∀ n, (P9458468158046921286.a n : ℤ) = A165556 (n + 1)

end A165556

/-! ## A165556.P4534315898230211914

`1-and(n, A030300(n+1))`
-/

namespace A165556.P4534315898230211914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (A030300 (n + 1))

end

end A165556.P4534315898230211914

namespace A165556

/-- `1-and(n, A030300(n+1))` -/
def P4534315898230211914.Spec : Prop :=
  ∀ n, P4534315898230211914.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P9776100864108033502

`((∑[A106348(n)]+2)%2)²`
-/

namespace A165556.P9776100864108033502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 ^ 2

end

end A165556.P9776100864108033502

namespace A165556

/-- `((∑[A106348(n)]+2)%2)²` -/
def P9776100864108033502.Spec : Prop :=
  ∀ n, P9776100864108033502.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P15309995336424450232

`char[comp[A005351(2*n)-1]]`
-/

namespace A165556.P15309995336424450232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (2 * n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A165556.P15309995336424450232

namespace A165556

/-- `char[comp[A005351(2*n)-1]]` -/
def P15309995336424450232.Spec : Prop :=
  ∀ n, (P15309995336424450232.a n : ℤ) = A165556 (n + 1)

end A165556

/-! ## A165556.P10689914011400999268

`3*(n+2)-A022433(n+2)`
-/

namespace A165556.P10689914011400999268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) - A022433 (n + 2)

end

end A165556.P10689914011400999268

namespace A165556

/-- `3*(n+2)-A022433(n+2)` -/
def P10689914011400999268.Spec : Prop :=
  ∀ n, P10689914011400999268.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P5497156965625805309

`1-and(n, 1-A030301(n+1))`
-/

namespace A165556.P5497156965625805309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (1 - A030301 (n + 1))

end

end A165556.P5497156965625805309

namespace A165556

/-- `1-and(n, 1-A030301(n+1))` -/
def P5497156965625805309.Spec : Prop :=
  ∀ n, P5497156965625805309.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P9792568060325434354

`(C(2, A006530(n+1))-a(n-2))²` with `a(0)=1, a(1)=1`
-/

namespace A165556.P9792568060325434354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((Nat.choose 2 (A006530 (n + 1)).toNat : ℤ) - a (n - 2)) ^ 2

end

end A165556.P9792568060325434354

namespace A165556

/-- `(C(2, A006530(n+1))-a(n-2))²` -/
def P9792568060325434354.Spec : Prop :=
  ∀ n, P9792568060325434354.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P5964848009992586531

`A030301(A133265(n))`
-/

namespace A165556.P5964848009992586531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A133265 n).toNat

end

end A165556.P5964848009992586531

namespace A165556

/-- `A030301(A133265(n))` -/
def P5964848009992586531.Spec : Prop :=
  ∀ n, P5964848009992586531.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P15829767735826405775

`A030300(A152271(n))`
-/

namespace A165556.P15829767735826405775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A152271 n).toNat

end

end A165556.P15829767735826405775

namespace A165556

/-- `A030300(A152271(n))` -/
def P15829767735826405775.Spec : Prop :=
  ∀ n, P15829767735826405775.a n = A165556 (n + 1)

end A165556

/-! ## A165556.P3103141275893528590

`A093719(A137951(n))`
-/

namespace A165556.P3103141275893528590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (A137951 n).toNat

end

end A165556.P3103141275893528590

namespace A165556

/-- `A093719(A137951(n))` -/
def P3103141275893528590.Spec : Prop :=
  ∀ n, P3103141275893528590.a n = A165556 (n + 1)

end A165556

/-!
# A165557: Primes of the form (p^2-1)/4-p where p are also primes.

The programs for A165557, there is no canonical definition to state claims against.
-/

/-! ## A165557.P1419564709080424804

`floor((A165349(n+1)/2)²-A165349(n+1))`
-/

namespace A165557.P1419564709080424804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A165349 (n + 1) : ℚ) / 2) ^ 2 - (A165349 (n + 1) : ℚ)⌋

end

end A165557.P1419564709080424804

/-! ## A165557.P14882693022042666828

`record[A209188(A067076(n+3))]`
-/

namespace A165557.P14882693022042666828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A067076 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165557.P14882693022042666828

/-! ## A165557.P14175320171744848356

`A165900(floor(A165349(n+1)/2))`
-/

namespace A165557.P14175320171744848356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 ⌊(A165349 (n + 1) : ℚ) / 2⌋.toNat

end

end A165557.P14175320171744848356

/-! ## A165557.P12339928563397293451

`A165900((A165349(n+1)-1)/2)`
-/

namespace A165557.P12339928563397293451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (SequenceMachineLib.roundAway ((A165349 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A165557.P12339928563397293451

/-! ## A165557.P4683881615753941694

`abs(A188652(A165349(n+1)-1))`
-/

namespace A165557.P4683881615753941694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188652 (A165349 (n + 1) - 1).toNat|

end

end A165557.P4683881615753941694

/-! ## A165557.P8765546627646721866

`A188652(A165349(n+1)-2)-1`
-/

namespace A165557.P8765546627646721866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188652 (A165349 (n + 1) - 2).toNat - 1

end

end A165557.P8765546627646721866

/-! ## A165557.P231880012987214642

`abs(A188652(A060000(A165349(n+1))))`
-/

namespace A165557.P231880012987214642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188652 (A060000 (A165349 (n + 1)).toNat).toNat|

end

end A165557.P231880012987214642

/-! ## A165557.P3716018429285592136

`A159046(3*A165349(n+1))`
-/

namespace A165557.P3716018429285592136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159046 (3 * A165349 (n + 1)).toNat

end

end A165557.P3716018429285592136

/-! ## A165557.P7103204000159345384

`A159046(lcm(3, A165349(n+1)))`
-/

namespace A165557.P7103204000159345384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159046 (Int.lcm 3 (A165349 (n + 1)))

end

end A165557.P7103204000159345384

/-! ## A165557.P13402747015063716635

`p?[n*A006530(2*n+1)-(n+1)²]`
-/

namespace A165557.P13402747015063716635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006530 (2 * n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165557.P13402747015063716635

/-!
# A165558: Integers that are half of their arithmetic derivatives.

The programs for A165558, there is no canonical definition to state claims against.
-/

/-! ## A165558.P17364857103622245595

`A196064(∑[A314516(n)])`
-/

namespace A165558.P17364857103622245595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196064 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165558.P17364857103622245595

/-!
# A165559: Product of the arithmetic derivatives from 2 to n.

The programs for A165559, there is no canonical definition to state claims against.
-/

/-! ## A165559.P14077107174908936594

`∏[A003415(n+2)]`
-/

namespace A165559.P14077107174908936594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165559.P14077107174908936594

/-! ## A165559.P2460773778177192939

`∏[∑[A258057(n+1)]]`
-/

namespace A165559.P2460773778177192939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165559.P2460773778177192939

/-! ## A165559.P1281378530025549399

`∏[Δ[A190121(n+1)]]`
-/

namespace A165559.P1281378530025549399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165559.P1281378530025549399

/-! ## A165559.P2593249852728398073

`∏[A319703(2*(n+2))]`
-/

namespace A165559.P2593249852728398073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165559.P2593249852728398073

/-! ## A165559.P4776821481123733645

`∏[A168036(n+2)+n+2]`
-/

namespace A165559.P4776821481123733645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165559.P4776821481123733645

/-! ## A165559.P11247353028574482448

`a(n-1)*∑{d}[n+2, A300251(#)]` with `a(0)=1`
-/

namespace A165559.P11247353028574482448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), A300251 d)

end

end A165559.P11247353028574482448

/-!
# A165560: The arithmetic derivative of n, modulo 2.

The programs for A165560, the canonical program `A165560.P13564864469092298929` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165560 has offset 0).

The definition of A165560 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165560.P13564864469092298929

`1-A358680(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A165560

/-- `1-A358680(n)` -/
def P13564864469092298929.Spec : Prop :=
  ∀ n, P13564864469092298929.a n = A165560 n

theorem P13564864469092298929.correct : P13564864469092298929.Spec := by
  intro n
  simp only [A165560]

end A165560

/-! ## A165560.P16789194454860222182

`A358771(n)+A358773(n)`
-/

namespace A165560.P16789194454860222182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n + A358773 n

end

end A165560.P16789194454860222182

namespace A165560

/-- `A358771(n)+A358773(n)` -/
def P16789194454860222182.Spec : Prop :=
  ∀ n, P16789194454860222182.a n = A165560 n

end A165560

/-! ## A165560.P6896247777651358947

`A359820(3*n)`
-/

namespace A165560.P6896247777651358947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (3 * n)

end

end A165560.P6896247777651358947

namespace A165560

/-- `A359820(3*n)` -/
def P6896247777651358947.Spec : Prop :=
  ∀ n, P6896247777651358947.a n = A165560 n

end A165560

/-! ## A165560.P6605533620043705901

`A003415(n)%2`
-/

namespace A165560.P6605533620043705901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 2

end

end A165560.P6605533620043705901

namespace A165560

/-- `A003415(n)%2` -/
def P6605533620043705901.Spec : Prop :=
  ∀ n, P6605533620043705901.a n = A165560 n

end A165560

/-! ## A165560.P10836231075210918190

`A328772(n)%2`
-/

namespace A165560.P10836231075210918190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328772 n) 2

end

end A165560.P10836231075210918190

namespace A165560

/-- `A328772(n)%2` -/
def P10836231075210918190.Spec : Prop :=
  ∀ n, P10836231075210918190.a n = A165560 n

end A165560

/-! ## A165560.P4139369368326820819

`A353493(n)%2`
-/

namespace A165560.P4139369368326820819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353493 n) 2

end

end A165560.P4139369368326820819

namespace A165560

/-- `A353493(n)%2` -/
def P4139369368326820819.Spec : Prop :=
  ∀ n, P4139369368326820819.a n = A165560 n

end A165560

/-! ## A165560.P3255226316457374227

`val(A327859(n), 2)`
-/

namespace A165560.P3255226316457374227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 n).toNat 2

end

end A165560.P3255226316457374227

namespace A165560

/-- `val(A327859(n), 2)` -/
def P3255226316457374227.Spec : Prop :=
  ∀ n, (P3255226316457374227.a n : ℤ) = A165560 n

end A165560

/-! ## A165560.P5666453237179337127

`and(1, A368922(n))`
-/

namespace A165560.P5666453237179337127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A368922 n)

end

end A165560.P5666453237179337127

namespace A165560

/-- `and(1, A368922(n))` -/
def P5666453237179337127.Spec : Prop :=
  ∀ n, P5666453237179337127.a n = A165560 n

end A165560

/-! ## A165560.P14000090080333677837

`char[A235991(n+1)]`
-/

namespace A165560.P14000090080333677837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A165560.P14000090080333677837

namespace A165560

/-- `char[A235991(n+1)]` -/
def P14000090080333677837.Spec : Prop :=
  ∀ n, (P14000090080333677837.a n : ℤ) = A165560 n

end A165560

/-! ## A165560.P9586531198299671463

`(A129283(n)-n)%2`
-/

namespace A165560.P9586531198299671463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 n - (n : ℤ)) 2

end

end A165560.P9586531198299671463

namespace A165560

/-- `(A129283(n)-n)%2` -/
def P9586531198299671463.Spec : Prop :=
  ∀ n, P9586531198299671463.a n = A165560 n

end A165560

/-! ## A165560.P2097052349143265131

`and(1, A168036(n)+n)`
-/

namespace A165560.P2097052349143265131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A168036 n + (n : ℤ))

end

end A165560.P2097052349143265131

namespace A165560

/-- `and(1, A168036(n)+n)` -/
def P2097052349143265131.Spec : Prop :=
  ∀ n, P2097052349143265131.a n = A165560 n

end A165560

/-! ## A165560.P13145808741098128991

`and(1, A359820(n)+n)`
-/

namespace A165560.P13145808741098128991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359820 n + (n : ℤ))

end

end A165560.P13145808741098128991

namespace A165560

/-- `and(1, A359820(n)+n)` -/
def P13145808741098128991.Spec : Prop :=
  ∀ n, P13145808741098128991.a n = A165560 n

end A165560

/-! ## A165560.P17535010369484026651

`char[comp[A235992(n+1)]]`
-/

namespace A165560.P17535010369484026651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A165560.P17535010369484026651

namespace A165560

/-- `char[comp[A235992(n+1)]]` -/
def P17535010369484026651.Spec : Prop :=
  ∀ n, (P17535010369484026651.a n : ℤ) = A165560 n

end A165560

/-! ## A165560.P9776924547722399246

`A001222(gcd(n, ∑[xor(1, n)]))%2`
-/

namespace A165560.P9776924547722399246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A165560.P9776924547722399246

namespace A165560

/-- `A001222(gcd(n, ∑[xor(1, n)]))%2` -/
def P9776924547722399246.Spec : Prop :=
  ∀ n, P9776924547722399246.a n = A165560 n

end A165560

/-! ## A165560.P10191559169403200074

`A000035(A328772(n))`
-/

namespace A165560.P10191559169403200074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328772 n).toNat

end

end A165560.P10191559169403200074

namespace A165560

/-- `A000035(A328772(n))` -/
def P10191559169403200074.Spec : Prop :=
  ∀ n, P10191559169403200074.a n = A165560 n

end A165560

/-! ## A165560.P17991633716985710731

`A166486(A358765(n))`
-/

namespace A165560.P17991633716985710731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A358765 n).toNat

end

end A165560.P17991633716985710731

namespace A165560

/-- `A166486(A358765(n))` -/
def P17991633716985710731.Spec : Prop :=
  ∀ n, P17991633716985710731.a n = A165560 n

end A165560

/-! ## A165560.P7079790795486129513

`A059841(A328772(n)+1)`
-/

namespace A165560.P7079790795486129513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A328772 n + 1).toNat

end

end A165560.P7079790795486129513

namespace A165560

/-- `A059841(A328772(n)+1)` -/
def P7079790795486129513.Spec : Prop :=
  ∀ n, P7079790795486129513.a n = A165560 n

end A165560

/-! ## A165560.P2552553848277859058

`A358680(A047243(n+1))`
-/

namespace A165560.P2552553848277859058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A047243 (n + 1)).toNat

end

end A165560.P2552553848277859058

namespace A165560

/-- `A358680(A047243(n+1))` -/
def P2552553848277859058.Spec : Prop :=
  ∀ n, P2552553848277859058.a n = A165560 n

end A165560

/-! ## A165560.P15796801707070010243

`1-A121262(A374123(n))`
-/

namespace A165560.P15796801707070010243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A121262 (A374123 n).toNat

end

end A165560.P15796801707070010243

namespace A165560

/-- `1-A121262(A374123(n))` -/
def P15796801707070010243.Spec : Prop :=
  ∀ n, P15796801707070010243.a n = A165560 n

end A165560

/-! ## A165560.P613808099585398869

`A152822(A358765(n)+2)`
-/

namespace A165560.P613808099585398869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A358765 n + 2).toNat

end

end A165560.P613808099585398869

namespace A165560

/-- `A152822(A358765(n)+2)` -/
def P613808099585398869.Spec : Prop :=
  ∀ n, P613808099585398869.a n = A165560 n

end A165560

/-!
# A165561: Primes that are the sum of an integer n and its arithmetic derivative.

The programs for A165561, there is no canonical definition to state claims against.
-/

/-! ## A165561.P8354025027959447324

`record[A006530(A189763(n+1))]`
-/

namespace A165561.P8354025027959447324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A189763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165561.P8354025027959447324

/-! ## A165561.P1745018163129713271

`A098058(lt[A279861(n+1), A128084(n)])`
-/

namespace A165561.P1745018163129713271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165561.P1745018163129713271

/-! ## A165561.P14286451653005703988

`record[A130090(n+1)%A006370(A002445(n))]`
-/

namespace A165561.P14286451653005703988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130090 (n + 1)) (A006370 (A002445 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165561.P14286451653005703988

/-! ## A165561.P10832408346969943547

`∩[A028776(n+1), A069348(n+1)]`
-/

namespace A165561.P10832408346969943547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165561.P10832408346969943547

/-! ## A165561.P6400829964701091974

`∩[A049553(n+1), A092460(n+1)]`
-/

namespace A165561.P6400829964701091974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165561.P6400829964701091974

/-!
# A165562: Numbers k for which k+k' is prime, k' being the arithmetic derivative of k.

The programs for A165562, the canonical program `A165562.P417528794060687203` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165562 has offset 1).

The definition of A165562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165562.P11313954227464667755

`eq[1, A302055(A129283(n))]`
-/

namespace A165562.P11313954227464667755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (A129283 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165562.P11313954227464667755

namespace A165562

/-- `eq[1, A302055(A129283(n))]` -/
def P11313954227464667755.Spec : Prop :=
  ∀ n, (P11313954227464667755.a n : ℤ) = A165562 (n + 1)

end A165562

/-! ## A165562.P2522212994860708421

`eq[2, A077462(A003415(n)+n)]`
-/

namespace A165562.P2522212994860708421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A003415 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165562.P2522212994860708421

namespace A165562

/-- `eq[2, A077462(A003415(n)+n)]` -/
def P2522212994860708421.Spec : Prop :=
  ∀ n, (P2522212994860708421.a n : ℤ) = A165562 (n + 1)

end A165562

/-! ## A165562.P17986597465818378230

`eq[2, A256750(A003415(n)+n)]`
-/

namespace A165562.P17986597465818378230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A003415 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165562.P17986597465818378230

namespace A165562

/-- `eq[2, A256750(A003415(n)+n)]` -/
def P17986597465818378230.Spec : Prop :=
  ∀ n, (P17986597465818378230.a n : ℤ) = A165562 (n + 1)

end A165562

/-! ## A165562.P417528794060687203

`record[(n+1)*(3-A000005(A129283(n+1)))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A165562

/-- `record[(n+1)*(3-A000005(A129283(n+1)))]` -/
def P417528794060687203.Spec : Prop :=
  ∀ n, P417528794060687203.a n = A165562 (n + 1)

theorem P417528794060687203.correct : P417528794060687203.Spec := by
  intro n
  simp only [A165562, Nat.add_sub_cancel]

end A165562

/-! ## A165562.P14874991260421546251

`eq[2, A077982(A003415(n)+n)]`
-/

namespace A165562.P14874991260421546251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A003415 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165562.P14874991260421546251

namespace A165562

/-- `eq[2, A077982(A003415(n)+n)]` -/
def P14874991260421546251.Spec : Prop :=
  ∀ n, (P14874991260421546251.a n : ℤ) = A165562 (n + 1)

end A165562

/-! ## A165562.P7273904231876924887

`eq[1, A175126(A003415(n)+n)]`
-/

namespace A165562.P7273904231876924887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A003415 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165562.P7273904231876924887

namespace A165562

/-- `eq[1, A175126(A003415(n)+n)]` -/
def P7273904231876924887.Spec : Prop :=
  ∀ n, (P7273904231876924887.a n : ℤ) = A165562 (n + 1)

end A165562

/-! ## A165562.P1695685202689830496

`eq[1, A003415(A003415(n)+n)]`
-/

namespace A165562.P1695685202689830496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165562.P1695685202689830496

namespace A165562

/-- `eq[1, A003415(A003415(n)+n)]` -/
def P1695685202689830496.Spec : Prop :=
  ∀ n, (P1695685202689830496.a n : ℤ) = A165562 (n + 1)

end A165562

/-! ## A165562.P462384587909928065

`record[2-A003415(A129283(n+1))+n]`
-/

namespace A165562.P462384587909928065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003415 (A129283 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165562.P462384587909928065

namespace A165562

/-- `record[2-A003415(A129283(n+1))+n]` -/
def P462384587909928065.Spec : Prop :=
  ∀ n, P462384587909928065.a n = A165562 (n + 1)

end A165562

/-!
# A165563: a(n) = 1 + 2*n + n^2 + 2*n^3 + n^4.

The programs for A165563, the canonical program `A165563.P4429587067576573213` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165563 has offset 0).

The definition of A165563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n+n²+2*n^3+n^4` (program `A165563.P4429587067576573213`, by `A165563.P4429587067576573213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165563.P4429587067576573213

`1+2*n+n²+2*n^3+n^4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165563

/-- `1+2*n+n²+2*n^3+n^4` -/
def P4429587067576573213.Spec : Prop :=
  ∀ n, (P4429587067576573213.a n : ℤ) = A165563 n

theorem P4429587067576573213.correct : P4429587067576573213.Spec := by
  intro n
  simp only [A165563]

end A165563

/-! ## A165563.P16763702444727331985

`ceil((n+2)/acot(n)^3)`
-/

namespace A165563.P16763702444727331985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A165563.P16763702444727331985

namespace A165563

/-- `ceil((n+2)/acot(n)^3)` -/
def P16763702444727331985.Spec : Prop :=
  ∀ n, P16763702444727331985.a n = A165563 n

end A165563

/-! ## A165563.P4338408170424066528

`or(1, ∑[2*n]²+2*n)`
-/

namespace A165563.P4338408170424066528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A165563.P4338408170424066528

namespace A165563

/-- `or(1, ∑[2*n]²+2*n)` -/
def P4338408170424066528.Spec : Prop :=
  ∀ n, (P4338408170424066528.a n : ℤ) = A165563 n

end A165563

/-! ## A165563.P4770540093342037437

`xor(1, ∑[2*n]²+2*n)`
-/

namespace A165563.P4770540093342037437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A165563.P4770540093342037437

namespace A165563

/-- `xor(1, ∑[2*n]²+2*n)` -/
def P4770540093342037437.Spec : Prop :=
  ∀ n, (P4770540093342037437.a n : ℤ) = A165563 n

end A165563

/-! ## A165563.P4257115818011151997

`floor(2*n+lcm(n, n+1)²+ϕ)`
-/

namespace A165563.P4257115818011151997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) + ((Nat.lcm n (n + 1) ^ 2 : ℝ) + Real.goldenRatio)⌋

end

end A165563.P4257115818011151997

namespace A165563

/-- `floor(2*n+lcm(n, n+1)²+ϕ)` -/
def P4257115818011151997.Spec : Prop :=
  ∀ n, P4257115818011151997.a n = A165563 n

end A165563

/-! ## A165563.P17982510501030385394

`lcm(2, ∑[2*n]²+2*n+1)/2`
-/

namespace A165563.P17982510501030385394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (2 * n + 1)) : ℚ) / 2

end

end A165563.P17982510501030385394

namespace A165563

/-- `lcm(2, ∑[2*n]²+2*n+1)/2` -/
def P17982510501030385394.Spec : Prop :=
  ∀ n, P17982510501030385394.a n = (A165563 n : ℚ)

end A165563

/-! ## A165563.P18199050619223840937

`floor(∑[a(n-1)+2]²+2*n+1)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A165563.P18199050619223840937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (2 * n + 1)

end

end A165563.P18199050619223840937

namespace A165563

/-- `floor(∑[a(n-1)+2]²+2*n+1)` -/
def P18199050619223840937.Spec : Prop :=
  ∀ n, (P18199050619223840937.a n : ℤ) = A165563 n

end A165563

/-! ## A165563.P6476127419833848255

`gcd(∑[2*n]²+2*n+1, C(2, n+2))`
-/

namespace A165563.P6476127419833848255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (2 * n + 1)) (Nat.choose 2 (n + 2))

end

end A165563.P6476127419833848255

namespace A165563

/-- `gcd(∑[2*n]²+2*n+1, C(2, n+2))` -/
def P6476127419833848255.Spec : Prop :=
  ∀ n, (P6476127419833848255.a n : ℤ) = A165563 n

end A165563

/-! ## A165563.P554014992860511268

`(∑[2*n]²+2*n+1)*gcd(n, n+1)`
-/

namespace A165563.P554014992860511268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (2 * n + 1)) * Nat.gcd n (n + 1)

end

end A165563.P554014992860511268

namespace A165563

/-- `(∑[2*n]²+2*n+1)*gcd(n, n+1)` -/
def P554014992860511268.Spec : Prop :=
  ∀ n, (P554014992860511268.a n : ℤ) = A165563 n

end A165563

/-! ## A165563.P107158798976902270

`(∑[2*n]²+2*n+1)*and(1, 2*n+1)`
-/

namespace A165563.P107158798976902270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (2 * n + 1)) * Nat.land 1 (2 * n + 1)

end

end A165563.P107158798976902270

namespace A165563

/-- `(∑[2*n]²+2*n+1)*and(1, 2*n+1)` -/
def P107158798976902270.Spec : Prop :=
  ∀ n, (P107158798976902270.a n : ℤ) = A165563 n

end A165563

/-! ## A165563.P2289154410973349141

`abs(2*(3-A217200(n))-1)`
-/

namespace A165563.P2289154410973349141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (3 - A217200 n) - 1|

end

end A165563.P2289154410973349141

namespace A165563

/-- `abs(2*(3-A217200(n))-1)` -/
def P2289154410973349141.Spec : Prop :=
  ∀ n, P2289154410973349141.a n = A165563 n

end A165563

/-! ## A165563.P8593665213994315429

`abs(A004277(n+1)+∑[2*n]²-1)`
-/

namespace A165563.P8593665213994315429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1|

end

end A165563.P8593665213994315429

namespace A165563

/-- `abs(A004277(n+1)+∑[2*n]²-1)` -/
def P8593665213994315429.Spec : Prop :=
  ∀ n, P8593665213994315429.a n = A165563 n

end A165563

/-! ## A165563.P17555445435101692972

`A171733(Δ[n²])`
-/

namespace A165563.P17555445435101692972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165563.P17555445435101692972

namespace A165563

/-- `A171733(Δ[n²])` -/
def P17555445435101692972.Spec : Prop :=
  ∀ n, P17555445435101692972.a n = A165563 n

end A165563

/-! ## A165563.P4135770706626584080

`abs(A171733(2*n+1))`
-/

namespace A165563.P4135770706626584080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171733 (2 * n + 1)|

end

end A165563.P4135770706626584080

namespace A165563

/-- `abs(A171733(2*n+1))` -/
def P4135770706626584080.Spec : Prop :=
  ∀ n, P4135770706626584080.a n = A165563 n

end A165563

/-! ## A165563.P2106839761346383098

`record[A061036(n+1)+A061035(n+1)]`
-/

namespace A165563.P2106839761346383098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (n + 1) + A061035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165563.P2106839761346383098

namespace A165563

/-- `record[A061036(n+1)+A061035(n+1)]` -/
def P2106839761346383098.Spec : Prop :=
  ∀ n, P2106839761346383098.a n = A165563 n

end A165563

/-!
# A165564: Numbers which are not congruent numbers, i.e., positive integers which are not the area of any right triangle with rational sides.

The programs for A165564, there is no canonical definition to state claims against.
-/

/-! ## A165564.P10271363021262780690

`eq[0, A319510(n+1)]+1`
-/

namespace A165564.P10271363021262780690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165564.P10271363021262780690

/-! ## A165564.P1905428751131583140

`eq[1, A273476(a(A319510(n)))]` with `a(0)=2`
-/

namespace A165564.P1905428751131583140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A273476 (f2 (A319510 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165564.P1905428751131583140

/-! ## A165564.P16160221092940020892

`record[n+1-A000040(n+1)*A319510(n+1)]`
-/

namespace A165564.P16160221092940020892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A319510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165564.P16160221092940020892

/-! ## A165564.P14988176943089851223

`record[n+1-A007694(n+1)*A319510(n+1)]`
-/

namespace A165564.P14988176943089851223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007694 (n + 1) * A319510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165564.P14988176943089851223

/-! ## A165564.P11862640578339011455

`record[n+1-A028909(n)*A319510(n+1)]`
-/

namespace A165564.P11862640578339011455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A028909 n * A319510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165564.P11862640578339011455

/-!
# A165565: a(n) = n - a(a(a(n-3))) with a(0)=a(1)=a(2)=0.

The programs for A165565, the canonical program `A165565.P12786117329071334192` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165565 has offset 0).

The definition of A165565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(a(n-3)))` (program `A165565.P12786117329071334192`, by `A165565.P12786117329071334192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165565.P12786117329071334192

`n-a(a(a(n-3)))` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165565

/-- `n-a(a(a(n-3)))` -/
def P12786117329071334192.Spec : Prop :=
  ∀ n, P12786117329071334192.a n = A165565 n

theorem P12786117329071334192.correct : P12786117329071334192.Spec := by
  intro n
  simp only [A165565]

end A165565

/-!
# A165566: Primes p such that (p^2-1)/8-p is also prime.

The programs for A165566, there is no canonical definition to state claims against.
-/

/-! ## A165566.P10452458539955370780

`p?[A010051(A055998(n)+1)+2*(n+4)]`
-/

namespace A165566.P10452458539955370780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A055998 n + 1).toNat + (2 * (n + 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165566.P10452458539955370780

/-! ## A165566.P14764260630184959202

`p?[A020744(n)+A010051(A034856(n+1))]`
-/

namespace A165566.P14764260630184959202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n + A010051 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165566.P14764260630184959202

/-! ## A165566.P15385658649773604711

`p?[A005408(n+4)+A005171(A027379(n)+1)]`
-/

namespace A165566.P15385658649773604711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 4) + A005171 (A027379 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165566.P15385658649773604711

/-! ## A165566.P4709351250175981137

`A006530(8*A165567(n+1)+1)`
-/

namespace A165566.P4709351250175981137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * A165567 (n + 1) + 1).toNat

end

end A165566.P4709351250175981137

/-! ## A165566.P626475427875736874

`A158405(A165567(n+1))+10`
-/

namespace A165566.P626475427875736874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A165567 (n + 1)).toNat + 10

end

end A165566.P626475427875736874

/-!
# A165567: Primes of the form (p^2 - 1)/8 - p, where p is also a prime.

The programs for A165567, there is no canonical definition to state claims against.
-/

/-! ## A165567.P9268906868037652234

`A078529(A165566(n+1))-2`
-/

namespace A165567.P9268906868037652234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078529 (A165566 (n + 1)).toNat - 2

end

end A165567.P9268906868037652234

/-! ## A165567.P14475694187368381467

`A113679(n+2)+A078529(A165566(n+1))`
-/

namespace A165567.P14475694187368381467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 2) + A078529 (A165566 (n + 1)).toNat

end

end A165567.P14475694187368381467

/-! ## A165567.P1382267002129079236

`p?[A030007(n+2)-2]`
-/

namespace A165567.P1382267002129079236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030007 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P1382267002129079236

/-! ## A165567.P272578899175356884

`p?[C(A067076(n+1), 2)-2]`
-/

namespace A165567.P272578899175356884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A067076 (n + 1)).toNat 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P272578899175356884

/-! ## A165567.P4922869443379616835

`p?[C(A005097(n+1)-1, 2)-2]`
-/

namespace A165567.P4922869443379616835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A005097 (n + 1) - 1).toNat 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P4922869443379616835

/-! ## A165567.P16661064541069220186

`p?[C(A111333(n+2)-2, 2)-2]`
-/

namespace A165567.P16661064541069220186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A111333 (n + 2) - 2).toNat 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P16661064541069220186

/-! ## A165567.P17095407119359522673

`p?[C((A000040(n+2)-3)/2, 2)-2]`
-/

namespace A165567.P17095407119359522673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway ((A000040 (n + 2) - 3 : ℚ) / 2)).toNat 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P17095407119359522673

/-! ## A165567.P4375542588588611220

`p?[A034856(A105760(n+2))]`
-/

namespace A165567.P4375542588588611220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A105760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P4375542588588611220

/-! ## A165567.P3901896134698677472

`p?[A078529(A000040(n+1))-2]`
-/

namespace A165567.P3901896134698677472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078529 (A000040 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P3901896134698677472

/-! ## A165567.P3450792329533104387

`p?[A061066(n+2)-A000040(n+2)]`
-/

namespace A165567.P3450792329533104387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061066 (n + 2) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165567.P3450792329533104387

/-!
# A165568: a(n) = -1 - 2*n + n^2 + 2*n^3 + n^4.

The programs for A165568, the canonical program `A165568.P2765034838305562200` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165568 has offset 0).

The definition of A165568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-1-2*n+n²+2*n^3+n^4` (program `A165568.P2765034838305562200`, by `A165568.P2765034838305562200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165568.P2765034838305562200

`-1-2*n+n²+2*n^3+n^4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165568

/-- `-1-2*n+n²+2*n^3+n^4` -/
def P2765034838305562200.Spec : Prop :=
  ∀ n, P2765034838305562200.a n = A165568 n

theorem P2765034838305562200.correct : P2765034838305562200.Spec := by
  intro n
  simp only [A165568]

end A165568

/-! ## A165568.P7139106830882677168

`-or(1, 2*n-∑[2*n]²)`
-/

namespace A165568.P7139106830882677168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 ((2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ))

end

end A165568.P7139106830882677168

namespace A165568

/-- `-or(1, 2*n-∑[2*n]²)` -/
def P7139106830882677168.Spec : Prop :=
  ∀ n, P7139106830882677168.a n = A165568 n

end A165568

/-! ## A165568.P4485353663808219922

`-xor(1, 2*n-∑[2*n]²)`
-/

namespace A165568.P4485353663808219922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 ((2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ))

end

end A165568.P4485353663808219922

namespace A165568

/-- `-xor(1, 2*n-∑[2*n]²)` -/
def P4485353663808219922.Spec : Prop :=
  ∀ n, P4485353663808219922.a n = A165568 n

end A165568

/-! ## A165568.P4507923186667901848

`or(1, ∑[2*n]²-(2*n+1))`
-/

namespace A165568.P4507923186667901848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (2 * n + 1 : ℤ))

end

end A165568.P4507923186667901848

namespace A165568

/-- `or(1, ∑[2*n]²-(2*n+1))` -/
def P4507923186667901848.Spec : Prop :=
  ∀ n, P4507923186667901848.a n = A165568 n

end A165568

/-! ## A165568.P16141215027314864401

`floor(∑[a(n-1)+2]²-(2*n+1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A165568.P16141215027314864401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A165568.P16141215027314864401

namespace A165568

/-- `floor(∑[a(n-1)+2]²-(2*n+1))` -/
def P16141215027314864401.Spec : Prop :=
  ∀ n, P16141215027314864401.a n = A165568 n

end A165568

/-! ## A165568.P3240756758783078914

`(∑[2*n]²-(2*n+1))*gcd(n, n+1)`
-/

namespace A165568.P3240756758783078914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (2 * n + 1 : ℤ)) * (Nat.gcd n (n + 1) : ℤ)

end

end A165568.P3240756758783078914

namespace A165568

/-- `(∑[2*n]²-(2*n+1))*gcd(n, n+1)` -/
def P3240756758783078914.Spec : Prop :=
  ∀ n, P3240756758783078914.a n = A165568 n

end A165568

/-! ## A165568.P14233006127348071742

`(∑[2*n]²-(2*n+1))*and(1, 2*n+1)`
-/

namespace A165568.P14233006127348071742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (2 * n + 1 : ℤ)) * (Nat.land 1 (2 * n + 1) : ℤ)

end

end A165568.P14233006127348071742

namespace A165568

/-- `(∑[2*n]²-(2*n+1))*and(1, 2*n+1)` -/
def P14233006127348071742.Spec : Prop :=
  ∀ n, P14233006127348071742.a n = A165568 n

end A165568

/-! ## A165568.P1738071663175113509

`(A152017(n+1)+1)/(n+2)`
-/

namespace A165568.P1738071663175113509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152017 (n + 1) + 1 : ℚ) / (n + 2 : ℚ)

end

end A165568.P1738071663175113509

namespace A165568

/-- `(A152017(n+1)+1)/(n+2)` -/
def P1738071663175113509.Spec : Prop :=
  ∀ n, P1738071663175113509.a n = (A165568 n : ℚ)

end A165568

/-! ## A165568.P1216320318605237308

`Δ[∑[lcm(n, n-1)²]-n²]`
-/

namespace A165568.P1216320318605237308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165568.P1216320318605237308

namespace A165568

/-- `Δ[∑[lcm(n, n-1)²]-n²]` -/
def P1216320318605237308.Spec : Prop :=
  ∀ n, P1216320318605237308.a n = A165568 n

end A165568

/-! ## A165568.P10367948133918647419

`(A125083(n+1)+2)/(n+2)`
-/

namespace A165568.P10367948133918647419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125083 (n + 1) + 2 : ℚ) / (n + 2 : ℚ)

end

end A165568.P10367948133918647419

namespace A165568

/-- `(A125083(n+1)+2)/(n+2)` -/
def P10367948133918647419.Spec : Prop :=
  ∀ n, P10367948133918647419.a n = (A165568 n : ℚ)

end A165568

/-! ## A165568.P17866118253173971053

`A171733(2*n)`
-/

namespace A165568.P17866118253173971053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171733 (2 * n)

end

end A165568.P17866118253173971053

namespace A165568

/-- `A171733(2*n)` -/
def P17866118253173971053.Spec : Prop :=
  ∀ n, P17866118253173971053.a n = A165568 n

end A165568

/-! ## A165568.P2727818501752828467

`∑[A129204(2*n)-2]`
-/

namespace A165568.P2727818501752828467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129204 (2 * n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165568.P2727818501752828467

namespace A165568

/-- `∑[A129204(2*n)-2]` -/
def P2727818501752828467.Spec : Prop :=
  ∀ n, P2727818501752828467.a n = A165568 n

end A165568

/-! ## A165568.P4621944602758588158

`record[A110660(n)²-(n+1)]`
-/

namespace A165568.P4621944602758588158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165568.P4621944602758588158

namespace A165568

/-- `record[A110660(n)²-(n+1)]` -/
def P4621944602758588158.Spec : Prop :=
  ∀ n, P4621944602758588158.a n = A165568 n

end A165568

/-! ## A165568.P5521852771144271369

`record[∑[n*A000982(n)*char[2*n]]-(n+1)]`
-/

namespace A165568.P5521852771144271369
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000982 n * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165568.P5521852771144271369

namespace A165568

/-- `record[∑[n*A000982(n)*char[2*n]]-(n+1)]` -/
def P5521852771144271369.Spec : Prop :=
  ∀ n, P5521852771144271369.a n = A165568 n

end A165568

/-! ## A165568.P8284248843351892694

`(∑[2*n]²-(2*n+1))*A007318(∑[n])`
-/

namespace A165568.P8284248843351892694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (2 * n + 1 : ℤ)) * A007318 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A165568.P8284248843351892694

namespace A165568

/-- `(∑[2*n]²-(2*n+1))*A007318(∑[n])` -/
def P8284248843351892694.Spec : Prop :=
  ∀ n, P8284248843351892694.a n = A165568 n

end A165568

/-!
# A165569: The indexing sequence for successively better golden semiprimes.

The programs for A165569, there is no canonical definition to state claims against.
-/

/-! ## A165569.P3030228343722437938

`A000720(A165571(n+1))`
-/

namespace A165569.P3030228343722437938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A165571 (n + 1)).toNat

end

end A165569.P3030228343722437938

/-! ## A165569.P13687655118565916883

`A000720(A265801(n+2))`
-/

namespace A165569.P13687655118565916883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A265801 (n + 2)).toNat

end

end A165569.P13687655118565916883

/-! ## A165569.P15374014789369095924

`A061395(p?[A165571(n+1)])`
-/

namespace A165569.P15374014789369095924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165569.P15374014789369095924

/-! ## A165569.P2733761469368263760

`A061395(2*A165571(n+1))`
-/

namespace A165569.P2733761469368263760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A165571 (n + 1)).toNat

end

end A165569.P2733761469368263760

/-! ## A165569.P6253797336628630370

`A061395(2*A265801(n+2))`
-/

namespace A165569.P6253797336628630370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A265801 (n + 2)).toNat

end

end A165569.P6253797336628630370

/-!
# A165570: Successively better golden semiprimes.

The programs for A165570, there is no canonical definition to state claims against.
-/

/-! ## A165570.P8096320358779688089

`A165571(n+1)*A165572(n+1)`
-/

namespace A165570.P8096320358779688089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (n + 1) * A165572 (n + 1)

end

end A165570.P8096320358779688089

/-! ## A165570.P15339905560387338755

`A000040(A165569(n+1))*A108539(A165569(n+1))`
-/

namespace A165570.P15339905560387338755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A165569 (n + 1)).toNat * A108539 (A165569 (n + 1)).toNat

end

end A165570.P15339905560387338755

/-! ## A165570.P6171439921567076015

`lcm(A165571(A000027(n+1)), A165572(n+1))`
-/

namespace A165570.P6171439921567076015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165571 (A000027 (n + 1)).toNat) (A165572 (n + 1))

end

end A165570.P6171439921567076015

/-! ## A165570.P21882092174687366

`lcm(A165571(n+1), A165572(A005408(n)-n))`
-/

namespace A165570.P21882092174687366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165571 (n + 1)) (A165572 (A005408 n - (n : ℤ)).toNat)

end

end A165570.P21882092174687366

/-! ## A165570.P1647300875193542711

`round(ϕ*A165571(n+1))*A165571(A000027(n+1))`
-/

namespace A165570.P1647300875193542711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A165571 (n + 1) : ℝ)) * A165571 (A000027 (n + 1)).toNat

end

end A165570.P1647300875193542711

/-!
# A165571: Lesser prime factor of successively better golden semiprimes.

The programs for A165571, there is no canonical definition to state claims against.
-/

/-! ## A165571.P2450841161070447829

`A165570(n+1)/A165572(n+1)`
-/

namespace A165571.P2450841161070447829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165570 (n + 1) : ℚ) / (A165572 (n + 1) : ℚ)

end

end A165571.P2450841161070447829

/-! ## A165571.P11033042034049637957

`A000040(A165569(n+1))`
-/

namespace A165571.P11033042034049637957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A165569 (n + 1)).toNat

end

end A165571.P11033042034049637957

/-! ## A165571.P9152707847595936114

`round(A165572(n+1)/ϕ)`
-/

namespace A165571.P9152707847595936114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A165572 (n + 1) : ℝ) / Real.goldenRatio)

end

end A165571.P9152707847595936114

/-! ## A165571.P1536026777503210767

`round(sqrt(A165570(n+1)/ϕ))`
-/

namespace A165571.P1536026777503210767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A165570 (n + 1) : ℝ) / Real.goldenRatio))

end

end A165571.P1536026777503210767

/-! ## A165571.P15195872826274823896

`gcd(A001749(A165569(n+1)), A165570(n+1))`
-/

namespace A165571.P15195872826274823896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001749 (A165569 (n + 1)).toNat) (A165570 (n + 1))

end

end A165571.P15195872826274823896

/-!
# A165572: Greater prime factor of successively better golden semiprimes.

The programs for A165572, there is no canonical definition to state claims against.
-/

/-! ## A165572.P11780794926466300760

`A165570(n+1)/A165571(n+1)`
-/

namespace A165572.P11780794926466300760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165570 (n + 1) : ℚ) / (A165571 (n + 1) : ℚ)

end

end A165572.P11780794926466300760

/-! ## A165572.P625543982430820413

`A108539(A165569(n+1))`
-/

namespace A165572.P625543982430820413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108539 (A165569 (n + 1)).toNat

end

end A165572.P625543982430820413

/-! ## A165572.P16507258684429251399

`round(ϕ*A165571(n+1))`
-/

namespace A165572.P16507258684429251399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A165571 (n + 1) : ℝ))

end

end A165572.P16507258684429251399

/-! ## A165572.P4743701375967504494

`round(sqrt(ϕ*A165570(n+1)))`
-/

namespace A165572.P4743701375967504494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.goldenRatio * (A165570 (n + 1) : ℝ)))

end

end A165572.P4743701375967504494

/-! ## A165572.P6685535412892084278

`or(floor(ϕ*A165571(n+1)), A178334(n))`
-/

namespace A165572.P6685535412892084278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊Real.goldenRatio * (A165571 (n + 1) : ℝ)⌋ (A178334 n)

end

end A165572.P6685535412892084278

/-!
# A165573: Legendre symbol (n,257).

The programs for A165573, there is no canonical definition to state claims against.
-/

/-! ## A165573.P15676796198343451438

`A165575(n)-A165575(log2(A011782(n)))`
-/

namespace A165573.P15676796198343451438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165575 n - A165575 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A165573.P15676796198343451438

/-!
# A165574: Legendre symbol (n,263).

The programs for A165574, there is no canonical definition to state claims against.
-/

/-! ## A165574.P11749235077830783364

`A011586(n)^A122204(A098568(n))`
-/

namespace A165574.P11749235077830783364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011586 n : ℚ) ^ (A122204 (A098568 n).toNat : ℤ)

end

end A165574.P11749235077830783364

/-!
# A165575: Partial sums of A165573.

The programs for A165575, there is no canonical definition to state claims against.
-/

/-! ## A165575.P3643178614308986372

`∑[A165573(n)]`
-/

namespace A165575.P3643178614308986372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165575.P3643178614308986372

/-!
# A165576: Partial sums of A165574.

The programs for A165576, there is no canonical definition to state claims against.
-/

/-! ## A165576.P10432311099386971339

`∑[A165574(n)]`
-/

namespace A165576.P10432311099386971339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165576.P10432311099386971339

/-!
# A165577: Partial sums of A011626.

The programs for A165577, there is no canonical definition to state claims against.
-/

/-! ## A165577.P6184653401597080060

`∑[A011626(n)]`
-/

namespace A165577.P6184653401597080060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165577.P6184653401597080060

/-!
# A165578: Partial sums of A011627.

The programs for A165578, there is no canonical definition to state claims against.
-/

/-! ## A165578.P12977997752262802744

`∑[A011627(n)]`
-/

namespace A165578.P12977997752262802744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165578.P12977997752262802744

/-!
# A165579: Partial sums of A011628.

The programs for A165579, there is no canonical definition to state claims against.
-/

/-! ## A165579.P12207025080296937850

`∑[A011628(n)]`
-/

namespace A165579.P12207025080296937850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165579.P12207025080296937850

/-!
# A165580: Primes of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) is never zero for any u in range [1,(2n+1)], where J(i,m) is the Jacobi symbol.

The programs for A165580, there is no canonical definition to state claims against.
-/

/-! ## A165580.P10699118618269000912

`p?[A166092(∑[n])]`
-/

namespace A165580.P10699118618269000912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165580.P10699118618269000912

/-! ## A165580.P8275212964504510098

`p?[A165469(n+1)]`
-/

namespace A165580.P8275212964504510098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165580.P8275212964504510098

/-! ## A165580.P15974194134528316470

`record[A014963(A166092(C(n, 2)))]`
-/

namespace A165580.P15974194134528316470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A166092 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165580.P15974194134528316470

/-! ## A165580.P6593865414325215340

`p?[or(1, A166092(A000217(n)))]`
-/

namespace A165580.P6593865414325215340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166092 (A000217 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165580.P6593865414325215340

/-! ## A165580.P9157897362750198391

`filter[A165469(n+1), A010051(#)]`
-/

namespace A165580.P9157897362750198391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A165580.P9157897362750198391

/-!
# A165581: Legendre symbol (n,524287).

The programs for A165581, there is no canonical definition to state claims against.
-/

/-! ## A165581.P7144639983869221815

`Δ[A165582(A004273(n)-n)]`
-/

namespace A165581.P7144639983869221815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165581.P7144639983869221815

/-! ## A165581.P2751228088928717046

`Δ[A165582(n-A165476(n)²)]`
-/

namespace A165581.P2751228088928717046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 ((n : ℤ) - A165476 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165581.P2751228088928717046

/-! ## A165581.P1829258994338509492

`A165582(2*n)-A165582(A004273(n))`
-/

namespace A165581.P1829258994338509492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (2 * n) - A165582 (A004273 n).toNat

end

end A165581.P1829258994338509492

/-! ## A165581.P10085516427356183166

`A165582(n)-A165582(A004273(n)-n)`
-/

namespace A165581.P10085516427356183166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 n - A165582 (A004273 n - (n : ℤ)).toNat

end

end A165581.P10085516427356183166

/-! ## A165581.P11124880947139238668

`Δ[A165582(n-A226523(n+1)²)]`
-/

namespace A165581.P11124880947139238668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 ((n : ℤ) - A226523 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165581.P11124880947139238668

/-! ## A165581.P16994189082834704774

`Δ[A165582(A004526(A004273(n)))]`
-/

namespace A165581.P16994189082834704774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165581.P16994189082834704774

/-! ## A165581.P11586405729811934994

`Δ[A165582(A004526(A004275(n)))]`
-/

namespace A165581.P11586405729811934994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165581.P11586405729811934994

/-! ## A165581.P17599990559516919973

`A165582(n)-A165582(log2(A011782(n)))`
-/

namespace A165581.P17599990559516919973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 n - A165582 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A165581.P17599990559516919973

/-! ## A165581.P13806792810957020256

`Δ[A165582(log2(A011782(n)))]`
-/

namespace A165581.P13806792810957020256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165581.P13806792810957020256

/-! ## A165581.P15575465150497172837

`Δ[A165582(A002262(A055998(n)))]`
-/

namespace A165581.P15575465150497172837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165581.P15575465150497172837

/-!
# A165582: Partial sums of A165581.

The programs for A165582, there is no canonical definition to state claims against.
-/

/-! ## A165582.P12152270177272956302

`∑[A165581(n)]`
-/

namespace A165582.P12152270177272956302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165582.P12152270177272956302

/-! ## A165582.P18330547118361066900

`log(∏[exp(A165581(2*n))])`
-/

namespace A165582.P18330547118361066900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A165581 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A165582.P18330547118361066900

/-! ## A165582.P12899656224952788242

`a(n-1)-A165581(3*n)` with `a(0)=0`
-/

namespace A165582.P12899656224952788242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A165581 (3 * n)

end

end A165582.P12899656224952788242

/-! ## A165582.P6608509733297381748

`A165581(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A165582.P6608509733297381748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165581 n + a (A023443 n).toNat

end

end A165582.P6608509733297381748

/-! ## A165582.P14140265112361300566

`A165581(n)+a(n-1)%A001961(n+1)` with `a(0)=0`
-/

namespace A165582.P14140265112361300566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165581 n + Int.tmod (a (n - 1)) (A001961 (n + 1))

end

end A165582.P14140265112361300566

/-!
# A165583: Positions of zeros in A165582.

The programs for A165583, there is no canonical definition to state claims against.
-/

/-! ## A165583.P567203250017816408

`record[gcd(n, A165582(n))-A165582(n)]`
-/

namespace A165583.P567203250017816408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A165582 n) : ℤ) - A165582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165583.P567203250017816408

/-! ## A165583.P1280056299138636249

`eq[0, A165582(n)]`
-/

namespace A165583.P1280056299138636249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165583.P1280056299138636249

/-! ## A165583.P2733387557184059922

`eq[1, a(n-1)-A165581(n)]` with `a(0)=1`
-/

namespace A165583.P2733387557184059922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A165581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165583.P2733387557184059922

/-! ## A165583.P4904767324411731193

`eq[0, ∑[A165581(n)]]`
-/

namespace A165583.P4904767324411731193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165583.P4904767324411731193

/-! ## A165583.P16282212710171062573

`eq[1, ∏[exp(A165581(2*n))]]`
-/

namespace A165583.P16282212710171062573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A165581 (2 * n) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A165583.P16282212710171062573

/-!
# A165585: A maximum absolute value of A165582 in range [A165583(n),A165583(n+1)].

The programs for A165585, there is no canonical definition to state claims against.
-/

/-! ## A165585.P14060437338631037117

`A165582(A165584(n))`
-/

namespace A165585.P14060437338631037117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (A165584 n).toNat

end

end A165585.P14060437338631037117

/-!
# A165586: Legendre symbol (n,514229).

The programs for A165586, there is no canonical definition to state claims against.
-/

/-! ## A165586.P15994713782236819770

`Δ[A165587(A028310(n)-1)]`
-/

namespace A165586.P15994713782236819770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P15994713782236819770

/-! ## A165586.P6110865285452995011

`Δ[A165587(A004273(n)-n)]`
-/

namespace A165586.P6110865285452995011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P6110865285452995011

/-! ## A165586.P3268110558703272618

`A165587(n)-A165587(A028310(n)-1)`
-/

namespace A165586.P3268110558703272618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 n - A165587 (A028310 n - 1).toNat

end

end A165586.P3268110558703272618

/-! ## A165586.P4144404374967537646

`A165587(A004273(n))-A165587(2*n)`
-/

namespace A165586.P4144404374967537646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A004273 n).toNat - A165587 (2 * n)

end

end A165586.P4144404374967537646

/-! ## A165586.P10107562016475097420

`A165587(n)-A165587(A004273(n)-n)`
-/

namespace A165586.P10107562016475097420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 n - A165587 (A004273 n - (n : ℤ)).toNat

end

end A165586.P10107562016475097420

/-! ## A165586.P6187856798652466587

`A165587(n)-A165587(n-A057427(n))`
-/

namespace A165586.P6187856798652466587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 n - A165587 ((n : ℤ) - A057427 n).toNat

end

end A165586.P6187856798652466587

/-! ## A165586.P15540363698308806805

`Δ[A165587(n-A057427(n))]`
-/

namespace A165586.P15540363698308806805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P15540363698308806805

/-! ## A165586.P4931539193916009293

`A165587(n)-A165587(A004526(A004273(n)))`
-/

namespace A165586.P4931539193916009293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 n - A165587 (A004526 (A004273 n).toNat).toNat

end

end A165586.P4931539193916009293

/-! ## A165586.P15753007183176178764

`A165587(n)-A165587(log2(A011782(n)))`
-/

namespace A165586.P15753007183176178764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 n - A165587 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A165586.P15753007183176178764

/-! ## A165586.P17398104731065745427

`Δ[A165587(log2(A011782(n)))]`
-/

namespace A165586.P17398104731065745427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P17398104731065745427

/-! ## A165586.P2624358642800549098

`A165587(n)-A165587(n-A052409(n²+1))`
-/

namespace A165586.P2624358642800549098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 n - A165587 ((n : ℤ) - A052409 (n ^ 2 + 1)).toNat

end

end A165586.P2624358642800549098

/-! ## A165586.P5463421394013227718

`Δ[A165587(n-A052409(n²+1))]`
-/

namespace A165586.P5463421394013227718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 ((n : ℤ) - A052409 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P5463421394013227718

/-! ## A165586.P3969601738687035127

`Δ[A165587(A025581(A161680(n)))]`
-/

namespace A165586.P3969601738687035127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A025581 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P3969601738687035127

/-! ## A165586.P1496069018151207365

`Δ[A165587(A097805(A133263(n)))]`
-/

namespace A165586.P1496069018151207365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A097805 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P1496069018151207365

/-! ## A165586.P7806758864964287169

`Δ[A165587(A002262(A055998(n)))]`
-/

namespace A165586.P7806758864964287169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165586.P7806758864964287169

/-!
# A165587: Partial sums of A165586.

The programs for A165587, there is no canonical definition to state claims against.
-/

/-! ## A165587.P3520485239556816763

`∑[A165586(n)]`
-/

namespace A165587.P3520485239556816763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165587.P3520485239556816763

/-! ## A165587.P3018431979165121687

`a(n-1)-A165586(2*n)` with `a(0)=0`
-/

namespace A165587.P3018431979165121687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A165586 (2 * n)

end

end A165587.P3018431979165121687

/-! ## A165587.P2584387874070928443

`A165586(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A165587.P2584387874070928443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165586 n + a (A023443 n).toNat

end

end A165587.P2584387874070928443

/-! ## A165587.P15238255054393248697

`A165586(n)+a(abs(A024000(n)))` with `a(0)=0`
-/

namespace A165587.P15238255054393248697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165586 n + a |A024000 n|.toNat

end

end A165587.P15238255054393248697

/-! ## A165587.P14527889262234317107

`(A165586(n)+a(n-1))%A005893(n)` with `a(0)=0`
-/

namespace A165587.P14527889262234317107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A165586 n + a (n - 1)) (A005893 n)

end

end A165587.P14527889262234317107

/-!
# A165588: Positions of zeros in A165587.

The programs for A165588, there is no canonical definition to state claims against.
-/

/-! ## A165588.P12334834017612759051

`eq[0, A165587(n)]`
-/

namespace A165588.P12334834017612759051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165588.P12334834017612759051

/-! ## A165588.P195981252755524822

`eq[0, a(n-1)-A165586(n)]` with `a(0)=0`
-/

namespace A165588.P195981252755524822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - A165586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165588.P195981252755524822

/-! ## A165588.P3990559921871147859

`lt[A019427(A165587(n)²), 1]`
-/

namespace A165588.P3990559921871147859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A165587 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165588.P3990559921871147859

/-! ## A165588.P18234346174164867171

`lt[abs(A165587(n)), A040001(n)]`
-/

namespace A165588.P18234346174164867171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165587 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165588.P18234346174164867171

/-! ## A165588.P9948367458679312697

`lt[abs(A165587(n)), A280560(n)]`
-/

namespace A165588.P9948367458679312697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165587 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165588.P9948367458679312697

/-! ## A165588.P8294490211265403051

`lt[A019427(n), acot(A165587(n))]`
-/

namespace A165588.P8294490211265403051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A165587 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A165588.P8294490211265403051

/-!
# A165589: a(n) = Least i in range [A165588(n),A165588(n+1)] for which abs(A165587(i)) gets the maximum value in that range.

The programs for A165589, there is no canonical definition to state claims against.
-/

/-! ## A165589.P11384391386805354192

`A088473(∑[2^n])-floor(n/3)`
-/

namespace A165589.P11384391386805354192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088473 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌊(n : ℚ) / 3⌋

end

end A165589.P11384391386805354192

/-!
# A165590: A maximum absolute value of A165587 in range [A165588(n),A165588(n+1)].

The programs for A165590, there is no canonical definition to state claims against.
-/

/-! ## A165590.P16599243243216711270

`A165587(A165589(n))`
-/

namespace A165590.P16599243243216711270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A165589 n).toNat

end

end A165590.P16599243243216711270

/-!
# A165591: Jacobi symbol (n,59701).

The programs for A165591, there is no canonical definition to state claims against.
-/

/-! ## A165591.P17896695869917979864

`A011626(n)*A165574(n)`
-/

namespace A165591.P17896695869917979864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011626 n * A165574 n

end

end A165591.P17896695869917979864

/-! ## A165591.P1977681128533582900

`Δ[A165592(n-A165471(n)²)]`
-/

namespace A165591.P1977681128533582900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 ((n : ℤ) - A165471 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165591.P1977681128533582900

/-! ## A165591.P9476223313007076882

`Δ[A165592(lcm(1-n, A165471(n)))]`
-/

namespace A165591.P9476223313007076882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 (Int.lcm (1 - (n : ℤ)) (A165471 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165591.P9476223313007076882

/-! ## A165591.P17869428086432967247

`Δ[A165592(n-gcd(n, A165471(n)))]`
-/

namespace A165591.P17869428086432967247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 (n - Int.gcd (n : ℤ) (A165471 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165591.P17869428086432967247

/-! ## A165591.P958249193927331164

`Δ[A165592(n-A165574(n)²)]`
-/

namespace A165591.P958249193927331164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 ((n : ℤ) - A165574 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165591.P958249193927331164

/-! ## A165591.P5131600489153316788

`Δ[A165592(n-and(1, A000040(n+1)))]`
-/

namespace A165591.P5131600489153316788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 ((n : ℤ) - Int.land 1 (A000040 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165591.P5131600489153316788

/-!
# A165592: Partial sums of A165591.

The programs for A165592, there is no canonical definition to state claims against.
-/

/-! ## A165592.P12727309138450630566

`∑[A165591(n)]`
-/

namespace A165592.P12727309138450630566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165592.P12727309138450630566

/-! ## A165592.P1349614040326019784

`a(n-1)-A165591(2*n)` with `a(0)=0`
-/

namespace A165592.P1349614040326019784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A165591 (2 * n)

end

end A165592.P1349614040326019784

/-! ## A165592.P18366337079340039001

`∑[A011626(n)*A165574(n)]`
-/

namespace A165592.P18366337079340039001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011626 n * A165574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165592.P18366337079340039001

/-! ## A165592.P7431521239627372891

`A165591(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A165592.P7431521239627372891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165591 n + a (A023443 n).toNat

end

end A165592.P7431521239627372891

/-! ## A165592.P18384898074089966973

`a(A023443(n))+A011626(n)*A165574(n)` with `a(0)=0`
-/

namespace A165592.P18384898074089966973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A023443 n).toNat + A011626 n * A165574 n

end

end A165592.P18384898074089966973

/-!
# A165593: Positions of zeros in A165592.

The programs for A165593, there is no canonical definition to state claims against.
-/

/-! ## A165593.P16335284910609576176

`record[(n+1)*(1-A165592(n+1)²)]`
-/

namespace A165593.P16335284910609576176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A165592 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165593.P16335284910609576176

/-! ## A165593.P2360631762365887988

`eq[0, A165592(n)]`
-/

namespace A165593.P2360631762365887988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165593.P2360631762365887988

/-! ## A165593.P13337039873179303194

`eq[1, a(n-1)-A165591(n)]` with `a(0)=1`
-/

namespace A165593.P13337039873179303194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A165591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165593.P13337039873179303194

/-! ## A165593.P11012446072249472270

`eq[0, ∑[A165591(n)]]`
-/

namespace A165593.P11012446072249472270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165593.P11012446072249472270

/-! ## A165593.P15576274963375115597

`eq[1, a(n-1)+A011626(n)*A165574(n)]` with `a(0)=1`
-/

namespace A165593.P15576274963375115597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + A011626 n * A165574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165593.P15576274963375115597

/-!
# A165595: A maximum absolute value of A165592 in range [A165593(n),A165593(n+1)].

The programs for A165595, there is no canonical definition to state claims against.
-/

/-! ## A165595.P6682865163698234952

`A165592(A165594(n))`
-/

namespace A165595.P6682865163698234952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 (A165594 n).toNat

end

end A165595.P6682865163698234952

/-!
# A165596: Jacobi symbol (n,59881).

The programs for A165596, there is no canonical definition to state claims against.
-/

/-! ## A165596.P16385880033542579987

`A011628(n)*A165573(n)`
-/

namespace A165596.P16385880033542579987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011628 n * A165573 n

end

end A165596.P16385880033542579987

/-! ## A165596.P5050131322658410898

`Δ[A165597(A004273(n)-n)]`
-/

namespace A165596.P5050131322658410898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P5050131322658410898

/-! ## A165596.P3714482207887408003

`Δ[A165597(n-A165471(n)²)]`
-/

namespace A165596.P3714482207887408003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 ((n : ℤ) - A165471 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P3714482207887408003

/-! ## A165596.P10117014279888767044

`A165597(2*n)-A165597(A004273(n))`
-/

namespace A165596.P10117014279888767044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (2 * n) - A165597 (A004273 n).toNat

end

end A165596.P10117014279888767044

/-! ## A165596.P14549357346236959893

`A165597(n)-A165597(A057428(n)+n)`
-/

namespace A165596.P14549357346236959893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 n - A165597 (A057428 n + (n : ℤ)).toNat

end

end A165596.P14549357346236959893

/-! ## A165596.P2342956291226669930

`A165597(n)-A165597(A004273(n)-n)`
-/

namespace A165596.P2342956291226669930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 n - A165597 (A004273 n - (n : ℤ)).toNat

end

end A165596.P2342956291226669930

/-! ## A165596.P16412740676852708209

`A165597(n)-A165597(n-A057427(n))`
-/

namespace A165596.P16412740676852708209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 n - A165597 ((n : ℤ) - A057427 n).toNat

end

end A165596.P16412740676852708209

/-! ## A165596.P13999897203270856874

`Δ[A165597(A057428(n)+n)]`
-/

namespace A165596.P13999897203270856874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P13999897203270856874

/-! ## A165596.P4344273064078617339

`Δ[A165597(n-A057427(n))]`
-/

namespace A165596.P4344273064078617339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P4344273064078617339

/-! ## A165596.P1012687802319965164

`Δ[A165597(n-A057428(n)²)]`
-/

namespace A165596.P1012687802319965164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P1012687802319965164

/-! ## A165596.P6235599705147157285

`Δ[A165597(A175126(A004275(n)))]`
-/

namespace A165596.P6235599705147157285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A175126 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P6235599705147157285

/-! ## A165596.P16697222834817707909

`Δ[A165597(A004526(A004273(n)))]`
-/

namespace A165596.P16697222834817707909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P16697222834817707909

/-! ## A165596.P17481592130071902186

`Δ[A165597(A318995(A008578(n+1)))]`
-/

namespace A165596.P17481592130071902186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A318995 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P17481592130071902186

/-! ## A165596.P5103950028167914444

`Δ[A165597(n-A165471(n*n))]`
-/

namespace A165596.P5103950028167914444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 ((n : ℤ) - A165471 (n * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P5103950028167914444

/-! ## A165596.P13448513407621986837

`Δ[A165597(A049615(A000217(n)))]`
-/

namespace A165596.P13448513407621986837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165597 (A049615 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165596.P13448513407621986837

/-!
# A165597: Partial sums of A165596.

The programs for A165597, there is no canonical definition to state claims against.
-/

/-! ## A165597.P7748896172217544968

`∑[A165596(n)]`
-/

namespace A165597.P7748896172217544968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165597.P7748896172217544968

/-! ## A165597.P6208060202326661282

`∑[A011628(n)*A165573(n)]`
-/

namespace A165597.P6208060202326661282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011628 n * A165573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165597.P6208060202326661282

/-! ## A165597.P15725374375023921807

`A165596(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A165597.P15725374375023921807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165596 n + a (A023443 n).toNat

end

end A165597.P15725374375023921807

/-! ## A165597.P3160614652543124466

`A004525(log2(∏[4^A165596(n)]))`
-/

namespace A165597.P3160614652543124466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A165596 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))).toNat

end

end A165597.P3160614652543124466

/-! ## A165597.P4472207321012870699

`log2(∏[2^A165596(n)])%A027379(n)`
-/

namespace A165597.P4472207321012870699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A165596 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))) (A027379 n)

end

end A165597.P4472207321012870699

/-! ## A165597.P11236402079282088471

`A028310(log2(∏[2^A165596(n)]))%(n+1)`
-/

namespace A165597.P11236402079282088471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A165596 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (SequenceMachineLib.roundAway (Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))).toNat) (n + 1 : ℤ)

end

end A165597.P11236402079282088471

/-! ## A165597.P12234596405271908341

`A000196(log2(∏[2^A165596(n)])²)`
-/

namespace A165597.P12234596405271908341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A165596 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) ^ 2)).toNat

end

end A165597.P12234596405271908341

