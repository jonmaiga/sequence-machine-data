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
import Seq.B000.C035
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A175600: Primes of form 4k+1 where k is a Pythagorean prime.

The programs for A175600, there is no canonical definition to state claims against.
-/

/-! ## A175600.P2231747857701037554

`p?[4*p?[4*n+1]+1]`
-/

namespace A175600.P2231747857701037554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175600.P2231747857701037554

/-! ## A175600.P9665579038607193947

`p?[1-A220861(n+2)]`
-/

namespace A175600.P9665579038607193947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A220861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175600.P9665579038607193947

/-! ## A175600.P1270726180953850013

`4*A113601(n+1)+1`
-/

namespace A175600.P1270726180953850013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A113601 (n + 1) + 1

end

end A175600.P1270726180953850013

/-! ## A175600.P3433523867669529748

`p?[2*A294091(n+1)-1]`
-/

namespace A175600.P3433523867669529748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294091 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175600.P3433523867669529748

/-! ## A175600.P7851248741200358491

`p?[4*A002144(n+1)+1]`
-/

namespace A175600.P7851248741200358491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002144 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175600.P7851248741200358491

/-!
# A175601: a(n) = 7*(10^n - 9).

The programs for A175601, the canonical program `A175601.P12307129743606923055` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175601 has offset 1).

The definition of A175601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(10^(n+1)-9)` (program `A175601.P12307129743606923055`, by `A175601.P12307129743606923055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175601.P12307129743606923055

`7*(10^(n+1)-9)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175601

/-- `7*(10^(n+1)-9)` -/
def P12307129743606923055.Spec : Prop :=
  ∀ n, P12307129743606923055.a n = A175601 (n + 1)

theorem P12307129743606923055.correct : P12307129743606923055.Spec := by
  intro n
  simp only [A175601, Nat.add_sub_cancel]

end A175601

/-! ## A175601.P10002336145224860875

`11*a(n-1)-10*a(n-2)` with `a(0)=7, a(1)=637`
-/

namespace A175601.P10002336145224860875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 637] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A175601.P10002336145224860875

namespace A175601

/-- `11*a(n-1)-10*a(n-2)` -/
def P10002336145224860875.Spec : Prop :=
  ∀ n, P10002336145224860875.a n = A175601 (n + 1)

theorem P10002336145224860875.correct : P10002336145224860875.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175601, Nat.add_sub_cancel, A175601.P10002336145224860875.a, A175601.P12307129743606923055.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175601, Nat.add_sub_cancel, A175601.P10002336145224860875.a, A175601.P12307129743606923055.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175601

/-! ## A175601.P13463183965415599620

`∑[lcm(9, 10*a(n-1))]` with `a(0)=7`
-/

namespace A175601.P13463183965415599620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  Nat.lcm 9 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175601.P13463183965415599620

namespace A175601

/-- `∑[lcm(9, 10*a(n-1))]` -/
def P13463183965415599620.Spec : Prop :=
  ∀ n, (P13463183965415599620.a n : ℤ) = A175601 (n + 1)

end A175601

/-!
# A175602: a(n) = 8*(10^n - 3).

The programs for A175602, the canonical program `A175602.P13831249186335419417` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175602 has offset 1).

The definition of A175602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(10^(n+1)-3)` (program `A175602.P13831249186335419417`, by `A175602.P13831249186335419417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175602.P13831249186335419417

`8*(10^(n+1)-3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175602

/-- `8*(10^(n+1)-3)` -/
def P13831249186335419417.Spec : Prop :=
  ∀ n, P13831249186335419417.a n = A175602 (n + 1)

theorem P13831249186335419417.correct : P13831249186335419417.Spec := by
  intro n
  simp only [A175602, Nat.add_sub_cancel]

end A175602

/-! ## A175602.P2474455412868180145

`11*a(n-1)-10*a(n-2)` with `a(0)=56, a(1)=776`
-/

namespace A175602.P2474455412868180145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [56, 776] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A175602.P2474455412868180145

namespace A175602

/-- `11*a(n-1)-10*a(n-2)` -/
def P2474455412868180145.Spec : Prop :=
  ∀ n, P2474455412868180145.a n = A175602 (n + 1)

theorem P2474455412868180145.correct : P2474455412868180145.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175602, Nat.add_sub_cancel, A175602.P2474455412868180145.a, A175602.P13831249186335419417.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175602, Nat.add_sub_cancel, A175602.P2474455412868180145.a, A175602.P13831249186335419417.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175602

/-! ## A175602.P7014425601554007650

`lcm(8, 3-10^(n+1))`
-/

namespace A175602.P7014425601554007650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (3 - (10 ^ (n + 1) : ℤ))

end

end A175602.P7014425601554007650

namespace A175602

/-- `lcm(8, 3-10^(n+1))` -/
def P7014425601554007650.Spec : Prop :=
  ∀ n, (P7014425601554007650.a n : ℤ) = A175602 (n + 1)

end A175602

/-! ## A175602.P16448030611973761371

`6*(∑[10*a(n-1)]-1)-10` with `a(0)=12`
-/

namespace A175602.P16448030611973761371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) - 10

end

end A175602.P16448030611973761371

namespace A175602

/-- `6*(∑[10*a(n-1)]-1)-10` -/
def P16448030611973761371.Spec : Prop :=
  ∀ n, P16448030611973761371.a n = A175602 (n + 1)

end A175602

/-! ## A175602.P14319492252156850975

`A175603(n+1)+16`
-/

namespace A175602.P14319492252156850975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175603 (n + 1) + 16

end

end A175602.P14319492252156850975

namespace A175602

/-- `A175603(n+1)+16` -/
def P14319492252156850975.Spec : Prop :=
  ∀ n, P14319492252156850975.a n = A175602 (n + 1)

end A175602

/-! ## A175602.P17418976974158996068

`Δ[A002282(n+1)]-24`
-/

namespace A175602.P17418976974158996068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 24

end

end A175602.P17418976974158996068

namespace A175602

/-- `Δ[A002282(n+1)]-24` -/
def P17418976974158996068.Spec : Prop :=
  ∀ n, P17418976974158996068.a n = A175602 (n + 1)

end A175602

/-! ## A175602.P16140319218420372854

`Δ[A173810(n+1)]-24`
-/

namespace A175602.P16140319218420372854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 24

end

end A175602.P16140319218420372854

namespace A175602

/-- `Δ[A173810(n+1)]-24` -/
def P16140319218420372854.Spec : Prop :=
  ∀ n, P16140319218420372854.a n = A175602 (n + 1)

end A175602

/-!
# A175603: a(n) = 8*(10^n-5).

The programs for A175603, the canonical program `A175603.P15994713667527612193` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175603 has offset 1).

The definition of A175603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(10^(n+1)-5)` (program `A175603.P15994713667527612193`, by `A175603.P15994713667527612193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175603.P15994713667527612193

`8*(10^(n+1)-5)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175603

/-- `8*(10^(n+1)-5)` -/
def P15994713667527612193.Spec : Prop :=
  ∀ n, P15994713667527612193.a n = A175603 (n + 1)

theorem P15994713667527612193.correct : P15994713667527612193.Spec := by
  intro n
  simp only [A175603, Nat.add_sub_cancel]

end A175603

/-! ## A175603.P4681268571333688809

`lcm(8, 5-10^(n+1))`
-/

namespace A175603.P4681268571333688809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (5 - (10 ^ (n + 1) : ℤ))

end

end A175603.P4681268571333688809

namespace A175603

/-- `lcm(8, 5-10^(n+1))` -/
def P4681268571333688809.Spec : Prop :=
  ∀ n, (P4681268571333688809.a n : ℤ) = A175603 (n + 1)

end A175603

/-! ## A175603.P13649924790004494242

`∑[lcm(9, 10*a(n-1))]+32` with `a(0)=8`
-/

namespace A175603.P13649924790004494242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  Nat.lcm 9 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 32

end

end A175603.P13649924790004494242

namespace A175603

/-- `∑[lcm(9, 10*a(n-1))]+32` -/
def P13649924790004494242.Spec : Prop :=
  ∀ n, (P13649924790004494242.a n : ℤ) = A175603 (n + 1)

end A175603

/-! ## A175603.P13575596085262684052

`a(n-1)+9*(a(n-1)+40)` with `a(0)=40`
-/

namespace A175603.P13575596085262684052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [40] fun n a =>
  a (n - 1) + 9 * (a (n - 1) + 40)

end

end A175603.P13575596085262684052

namespace A175603

/-- `a(n-1)+9*(a(n-1)+40)` -/
def P13575596085262684052.Spec : Prop :=
  ∀ n, (P13575596085262684052.a n : ℤ) = A175603 (n + 1)

theorem P13575596085262684052.correct : P13575596085262684052.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175603, Nat.add_sub_cancel, A175603.P13575596085262684052.a, A175603.P15994713667527612193.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175603, Nat.add_sub_cancel, A175603.P13575596085262684052.a, A175603.P15994713667527612193.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175603

/-! ## A175603.P2540102457511719935

`A198973(n+1)-39`
-/

namespace A175603.P2540102457511719935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198973 (n + 1) - 39

end

end A175603.P2540102457511719935

namespace A175603

/-- `A198973(n+1)-39` -/
def P2540102457511719935.Spec : Prop :=
  ∀ n, P2540102457511719935.a n = A175603 (n + 1)

end A175603

/-! ## A175603.P16030866289775799412

`Δ[A173810(n+1)]-40`
-/

namespace A175603.P16030866289775799412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 40

end

end A175603.P16030866289775799412

namespace A175603

/-- `Δ[A173810(n+1)]-40` -/
def P16030866289775799412.Spec : Prop :=
  ∀ n, P16030866289775799412.a n = A175603 (n + 1)

end A175603

/-! ## A175603.P6327850970165417254

`or(8, A175604(n+1)+8)`
-/

namespace A175603.P6327850970165417254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A175604 (n + 1) + 8)

end

end A175603.P6327850970165417254

namespace A175603

/-- `or(8, A175604(n+1)+8)` -/
def P6327850970165417254.Spec : Prop :=
  ∀ n, P6327850970165417254.a n = A175603 (n + 1)

end A175603

/-! ## A175603.P9720953716687300260

`A177112(n+1)+A177108(n+1)`
-/

namespace A175603.P9720953716687300260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177112 (n + 1) + A177108 (n + 1)

end

end A175603.P9720953716687300260

namespace A175603

/-- `A177112(n+1)+A177108(n+1)` -/
def P9720953716687300260.Spec : Prop :=
  ∀ n, P9720953716687300260.a n = A175603 (n + 1)

end A175603

/-! ## A175603.P5404248613528787674

`A173813(n+1)+3*A173813(n+1)`
-/

namespace A175603.P5404248613528787674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173813 (n + 1) + 3 * A173813 (n + 1)

end

end A175603.P5404248613528787674

namespace A175603

/-- `A173813(n+1)+3*A173813(n+1)` -/
def P5404248613528787674.Spec : Prop :=
  ∀ n, P5404248613528787674.a n = A175603 (n + 1)

end A175603

/-! ## A175603.P4070364547283301284

`∑{d}[n+1, A000038(#-1)*A177109((n+1)/#)]`
-/

namespace A175603.P4070364547283301284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000038 (d - 1) * A177109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A175603.P4070364547283301284

namespace A175603

/-- `∑{d}[n+1, A000038(#-1)*A177109((n+1)/#)]` -/
def P4070364547283301284.Spec : Prop :=
  ∀ n, P4070364547283301284.a n = A175603 (n + 1)

end A175603

/-!
# A175604: a(n) = 8*(10^n - 7).

The programs for A175604, the canonical program `A175604.P229425849513988799` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175604 has offset 1).

The definition of A175604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(10^(n+1)-7)` (program `A175604.P229425849513988799`, by `A175604.P229425849513988799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175604.P229425849513988799

`8*(10^(n+1)-7)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175604

/-- `8*(10^(n+1)-7)` -/
def P229425849513988799.Spec : Prop :=
  ∀ n, P229425849513988799.a n = A175604 (n + 1)

theorem P229425849513988799.correct : P229425849513988799.Spec := by
  intro n
  simp only [A175604, Nat.add_sub_cancel]

end A175604

/-! ## A175604.P12819338250406154454

`10*a(n-1)+504` with `a(0)=24`
-/

namespace A175604.P12819338250406154454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  10 * a (n - 1) + 504

end

end A175604.P12819338250406154454

namespace A175604

/-- `10*a(n-1)+504` -/
def P12819338250406154454.Spec : Prop :=
  ∀ n, (P12819338250406154454.a n : ℤ) = A175604 (n + 1)

theorem P12819338250406154454.correct : P12819338250406154454.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175604, Nat.add_sub_cancel, A175604.P12819338250406154454.a, A175604.P229425849513988799.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175604, Nat.add_sub_cancel, A175604.P12819338250406154454.a, A175604.P229425849513988799.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175604

/-! ## A175604.P13567025484914108936

`lcm(8, 7-10^(n+1))`
-/

namespace A175604.P13567025484914108936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (7 - (10 ^ (n + 1) : ℤ))

end

end A175604.P13567025484914108936

namespace A175604

/-- `lcm(8, 7-10^(n+1))` -/
def P13567025484914108936.Spec : Prop :=
  ∀ n, (P13567025484914108936.a n : ℤ) = A175604 (n + 1)

end A175604

/-! ## A175604.P415987428548057371

`∑[10*lcm(9, a(n-1))]` with `a(0)=24`
-/

namespace A175604.P415987428548057371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24] fun n f1 =>
  10 * Nat.lcm 9 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175604.P415987428548057371

namespace A175604

/-- `∑[10*lcm(9, a(n-1))]` -/
def P415987428548057371.Spec : Prop :=
  ∀ n, (P415987428548057371.a n : ℤ) = A175604 (n + 1)

end A175604

/-!
# A175605: a(n) = concatenation of n^3 with itself.

The programs for A175605, there is no canonical definition to state claims against.
-/

/-! ## A175605.P10081554546059668767

`(A239463(n+1)-n)*Δ[∑[n]²]`
-/

namespace A175605.P10081554546059668767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239463 (n + 1) - (n : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A175605.P10081554546059668767

/-! ## A175605.P17853219502727154035

`A001704((n+1)^3)-1`
-/

namespace A175605.P17853219502727154035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 ((n + 1) ^ 3) - 1

end

end A175605.P17853219502727154035

/-! ## A175605.P14757925979441157933

`A127421(Δ[∑[n]²]+1)-1`
-/

namespace A175605.P14757925979441157933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1

end

end A175605.P14757925979441157933

/-! ## A175605.P5020313032465920617

`A020338(Δ[∑[n]²])`
-/

namespace A175605.P5020313032465920617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A175605.P5020313032465920617

/-! ## A175605.P15919083774728701463

`abs(A020338((n+1)^3)-2)+2`
-/

namespace A175605.P15919083774728701463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020338 ((n + 1) ^ 3) - 2| + 2

end

end A175605.P15919083774728701463

/-!
# A175606: Primes p of the form 4*k+3 such that p+2 is prime and p-1 is nonsquarefree.

The programs for A175606, the canonical program `A175606.P13223848916122149879` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175606 has offset 1).

The definition of A175606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175606.P16069750214578806058

`∩[A071698(n+1), A075432(n+1)]`
-/

namespace A175606.P16069750214578806058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175606.P16069750214578806058

namespace A175606

/-- `∩[A071698(n+1), A075432(n+1)]` -/
def P16069750214578806058.Spec : Prop :=
  ∀ n, (P16069750214578806058.a n : ℤ) = A175606 (n + 1)

end A175606

/-! ## A175606.P13223848916122149879

`∩[A144834(n+1), A258211(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175606

/-- `∩[A144834(n+1), A258211(n+1)]+1` -/
def P13223848916122149879.Spec : Prop :=
  ∀ n, (P13223848916122149879.a n : ℤ) = A175606 (n + 1)

theorem P13223848916122149879.correct : P13223848916122149879.Spec := by
  intro n
  simp only [A175606, Nat.add_sub_cancel]

end A175606

/-! ## A175606.P5233776167974151785

`∩[A049092(n+1), A040976(A080147(n+1))]`
-/

namespace A175606.P5233776167974151785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A080147 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175606.P5233776167974151785

namespace A175606

/-- `∩[A049092(n+1), A040976(A080147(n+1))]` -/
def P5233776167974151785.Spec : Prop :=
  ∀ n, (P5233776167974151785.a n : ℤ) = A175606 (n + 1)

end A175606

/-! ## A175606.P3533381555722674781

`p?[A009001(A155139(n+1))-2]`
-/

namespace A175606.P3533381555722674781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A155139 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175606.P3533381555722674781

namespace A175606

/-- `p?[A009001(A155139(n+1))-2]` -/
def P3533381555722674781.Spec : Prop :=
  ∀ n, P3533381555722674781.a n = A175606 (n + 1)

end A175606

/-!
# A175607: Largest number k such that the greatest prime factor of k^2 - 1 is prime(n).

The programs for A175607, there is no canonical definition to state claims against.
-/

/-! ## A175607.P1807694664636444072

`A223701(A379345(n+1))`
-/

namespace A175607.P1807694664636444072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (A379345 (n + 1)).toNat

end

end A175607.P1807694664636444072

/-! ## A175607.P14668979787135758356

`A223701(∑[A181471(n+1)])`
-/

namespace A175607.P14668979787135758356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175607.P14668979787135758356

/-! ## A175607.P14359049443362406885

`2*A145606(A061147(n+1))+1`
-/

namespace A175607.P14359049443362406885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145606 (A061147 (n + 1)).toNat + 1

end

end A175607.P14359049443362406885

/-! ## A175607.P4205386459206000529

`2*A193943(∑[A245501(n)²])+1`
-/

namespace A175607.P4205386459206000529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193943 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A175607.P4205386459206000529

/-!
# A175608: Characteristic function of squarefree triangular integers: 1 if n(n+1)/2 is squarefree else 0.

The programs for A175608, the canonical program `A175608.P7674276603162723201` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175608 has offset 1).

The definition of A175608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175608.P7674276603162723201

`A008966((n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A175608

/-- `A008966((n+1)*(n+2)/2)` -/
def P7674276603162723201.Spec : Prop :=
  ∀ n, P7674276603162723201.a n = A175608 (n + 1)

theorem P7674276603162723201.correct : P7674276603162723201.Spec := by
  intro n
  simp only [A175608, Nat.add_sub_cancel]

end A175608

/-! ## A175608.P15294399456039594453

`C(2, A226734(n+1))`
-/

namespace A175608.P15294399456039594453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A226734 (n + 1)).toNat

end

end A175608.P15294399456039594453

namespace A175608

/-- `C(2, A226734(n+1))` -/
def P15294399456039594453.Spec : Prop :=
  ∀ n, (P15294399456039594453.a n : ℤ) = A175608 (n + 1)

end A175608

/-! ## A175608.P16754673990794932989

`char[A215726(n+1)-1]`
-/

namespace A175608.P16754673990794932989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175608.P16754673990794932989

namespace A175608

/-- `char[A215726(n+1)-1]` -/
def P16754673990794932989.Spec : Prop :=
  ∀ n, (P16754673990794932989.a n : ℤ) = A175608 (n + 1)

end A175608

/-! ## A175608.P10031661348572154866

`round(A190846(n+1)/(n+1))`
-/

namespace A175608.P10031661348572154866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A190846 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A175608.P10031661348572154866

namespace A175608

/-- `round(A190846(n+1)/(n+1))` -/
def P10031661348572154866.Spec : Prop :=
  ∀ n, P10031661348572154866.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P12089143808005009612

`round(acot(∏{e}[∑[n+1], #]))`
-/

namespace A175608.P12089143808005009612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))

end

end A175608.P12089143808005009612

namespace A175608

/-- `round(acot(∏{e}[∑[n+1], #]))` -/
def P12089143808005009612.Spec : Prop :=
  ∀ n, P12089143808005009612.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P1386666733399613006

`floor(1/∏{e}[∑[n+1], #])`
-/

namespace A175608.P1386666733399613006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A175608.P1386666733399613006

namespace A175608

/-- `floor(1/∏{e}[∑[n+1], #])` -/
def P1386666733399613006.Spec : Prop :=
  ∀ n, P1386666733399613006.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P2319389804459187792

`∏{e}[∑[n+1], C(#, #²)]`
-/

namespace A175608.P2319389804459187792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p) (Nat.factorization (f1 n) p ^ 2)

end

end A175608.P2319389804459187792

namespace A175608

/-- `∏{e}[∑[n+1], C(#, #²)]` -/
def P2319389804459187792.Spec : Prop :=
  ∀ n, (P2319389804459187792.a n : ℤ) = A175608 (n + 1)

end A175608

/-! ## A175608.P2057797582434503982

`C(2, ∏{e}[∑[n+1], #]+1)`
-/

namespace A175608.P2057797582434503982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A175608.P2057797582434503982

namespace A175608

/-- `C(2, ∏{e}[∑[n+1], #]+1)` -/
def P2057797582434503982.Spec : Prop :=
  ∀ n, (P2057797582434503982.a n : ℤ) = A175608 (n + 1)

end A175608

/-! ## A175608.P7573666544699255741

`round(1/∏{e}[∑[n+1], #²])`
-/

namespace A175608.P7573666544699255741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2 : ℕ) : ℚ))

end

end A175608.P7573666544699255741

namespace A175608

/-- `round(1/∏{e}[∑[n+1], #²])` -/
def P7573666544699255741.Spec : Prop :=
  ∀ n, P7573666544699255741.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P15306099395677028764

`C(∏{p}[∑[n+1], #], ∑[n+1])`
-/

namespace A175608.P15306099395677028764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A175608.P15306099395677028764

namespace A175608

/-- `C(∏{p}[∑[n+1], #], ∑[n+1])` -/
def P15306099395677028764.Spec : Prop :=
  ∀ n, (P15306099395677028764.a n : ℤ) = A175608 (n + 1)

end A175608

/-! ## A175608.P10439132792670984750

`round(∏{p}[∑[n+1], #]/(n+1)²)`
-/

namespace A175608.P10439132792670984750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((n + 1) ^ 2 : ℚ))

end

end A175608.P10439132792670984750

namespace A175608

/-- `round(∏{p}[∑[n+1], #]/(n+1)²)` -/
def P10439132792670984750.Spec : Prop :=
  ∀ n, P10439132792670984750.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P11235193727314184681

`floor(∏{p}[∑[n+1], #]/∑[n+1])`
-/

namespace A175608.P11235193727314184681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)⌋

end

end A175608.P11235193727314184681

namespace A175608

/-- `floor(∏{p}[∑[n+1], #]/∑[n+1])` -/
def P11235193727314184681.Spec : Prop :=
  ∀ n, P11235193727314184681.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P16128884977005024343

`A008683(∏{e}[∑[n+1], #²])`
-/

namespace A175608.P16128884977005024343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2)

end

end A175608.P16128884977005024343

namespace A175608

/-- `A008683(∏{e}[∑[n+1], #²])` -/
def P16128884977005024343.Spec : Prop :=
  ∀ n, P16128884977005024343.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P4553344186560526694

`C(2, A268045(n))`
-/

namespace A175608.P4553344186560526694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A268045 n).toNat

end

end A175608.P4553344186560526694

namespace A175608

/-- `C(2, A268045(n))` -/
def P4553344186560526694.Spec : Prop :=
  ∀ n, (P4553344186560526694.a n : ℤ) = A175608 (n + 1)

end A175608

/-! ## A175608.P10842497405612471718

`A359377(A234041(n))`
-/

namespace A175608.P10842497405612471718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (A234041 n).toNat

end

end A175608.P10842497405612471718

namespace A175608

/-- `A359377(A234041(n))` -/
def P10842497405612471718.Spec : Prop :=
  ∀ n, P10842497405612471718.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P10347072387216884889

`abs(A008683(∑[n+1]))`
-/

namespace A175608.P10347072387216884889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A175608.P10347072387216884889

namespace A175608

/-- `abs(A008683(∑[n+1]))` -/
def P10347072387216884889.Spec : Prop :=
  ∀ n, P10347072387216884889.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P15785699630075094596

`abs(A359155(∑[n+1]))`
-/

namespace A175608.P15785699630075094596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359155 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A175608.P15785699630075094596

namespace A175608

/-- `abs(A359155(∑[n+1]))` -/
def P15785699630075094596.Spec : Prop :=
  ∀ n, P15785699630075094596.a n = A175608 (n + 1)

end A175608

/-! ## A175608.P3415739877877034474

`1-A355447(∑[n+1])`
-/

namespace A175608.P3415739877877034474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A355447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175608.P3415739877877034474

namespace A175608

/-- `1-A355447(∑[n+1])` -/
def P3415739877877034474.Spec : Prop :=
  ∀ n, P3415739877877034474.a n = A175608 (n + 1)

end A175608

/-!
# A175609: The difference between maximal run length and minimal run length in binary representation of n-th prime.

The programs for A175609, the canonical program `A175609.P9455649333651186063` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175609 has offset 1).

The definition of A175609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A175599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175609.P9455649333651186063

`A175599(A000040(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175609

/-- `A175599(A000040(n+1))` -/
def P9455649333651186063.Spec : Prop :=
  ∀ n, P9455649333651186063.a n = A175609 (n + 1)

theorem P9455649333651186063.correct : P9455649333651186063.Spec := by
  intro n
  simp only [A175609, Nat.add_sub_cancel]

end A175609

/-! ## A175609.P14691441341949700554

`A175599(A015919(A214701(n+2)))`
-/

namespace A175609.P14691441341949700554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A015919 (A214701 (n + 2)).toNat).toNat

end

end A175609.P14691441341949700554

namespace A175609

/-- `A175599(A015919(A214701(n+2)))` -/
def P14691441341949700554.Spec : Prop :=
  ∀ n, P14691441341949700554.a n = A175609 (n + 1)

end A175609

/-! ## A175609.P6313706850515713770

`A175599(p?[xor(1, n)])`
-/

namespace A175609.P6313706850515713770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A175609.P6313706850515713770

namespace A175609

/-- `A175599(p?[xor(1, n)])` -/
def P6313706850515713770.Spec : Prop :=
  ∀ n, P6313706850515713770.a n = A175609 (n + 1)

end A175609

/-! ## A175609.P11462043604826462607

`A175599(Δ[A007504(n)])`
-/

namespace A175609.P11462043604826462607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (f1 (n + 1) - f1 n).toNat

end

end A175609.P11462043604826462607

namespace A175609

/-- `A175599(Δ[A007504(n)])` -/
def P11462043604826462607.Spec : Prop :=
  ∀ n, P11462043604826462607.a n = A175609 (n + 1)

end A175609

/-!
# A175611: Primes p such that A175599(p)=0.

The programs for A175611, there is no canonical definition to state claims against.
-/

/-! ## A175611.P14029124814776559493

`record[A332211(A074147(n+1))]`
-/

namespace A175611.P14029124814776559493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332211 (A074147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175611.P14029124814776559493

/-! ## A175611.P14267298525832164478

`∩[A152449(n+1), A052955(n)]`
-/

namespace A175611.P14267298525832164478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175611.P14267298525832164478

/-! ## A175611.P4914741950565491709

`record[A332212(p?[A014321(n+1)])]`
-/

namespace A175611.P4914741950565491709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014321 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175611.P4914741950565491709

/-! ## A175611.P7757216447926799603

`∩[A005105(n+1), A140690(n+1)]`
-/

namespace A175611.P7757216447926799603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175611.P7757216447926799603

/-! ## A175611.P539346361763660721

`∩[A128898(n+1), A140690(n+1)]`
-/

namespace A175611.P539346361763660721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175611.P539346361763660721

/-!
# A175612: Pairs of cousin semiprimes (m, m+4).

The programs for A175612, there is no canonical definition to state claims against.
-/

/-! ## A175612.P17014596544027323471

`filter[A175767(n+1), A064911(#)]`
-/

namespace A175612.P17014596544027323471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A175612.P17014596544027323471

/-! ## A175612.P9880746065920688181

`filter[A175767(n+1), A359370(#)]`
-/

namespace A175612.P9880746065920688181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A175612.P9880746065920688181

/-! ## A175612.P2976745864213218359

`filter[A175767(n+1), A383575(#)]`
-/

namespace A175612.P2976745864213218359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A175612.P2976745864213218359

/-! ## A175612.P1383759857972442292

`A337101(lcm(2, A175765(n+1)²))`
-/

namespace A175612.P1383759857972442292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (Int.lcm 2 (A175765 (n + 1) ^ 2))

end

end A175612.P1383759857972442292

/-! ## A175612.P14838841681705289892

`A175765(n+1)/A000005(A072828(n+1))`
-/

namespace A175612.P14838841681705289892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175765 (n + 1) : ℚ) / (A000005 (A072828 (n + 1)).toNat : ℚ)

end

end A175612.P14838841681705289892

/-!
# A175613: Number of semiprimes <= 2^prime(n).

The programs for A175613, the canonical program `A175613.P1678289248507455054` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175613 has offset 1).

The definition of A175613 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A125527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175613.P1678289248507455054

`A125527(A000040(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A175613

/-- `A125527(A000040(n+1))` -/
def P1678289248507455054.Spec : Prop :=
  ∀ n, P1678289248507455054.a n = A175613 (n + 1)

theorem P1678289248507455054.correct : P1678289248507455054.Spec := by
  intro n
  simp only [A175613, Nat.add_sub_cancel]

end A175613

/-! ## A175613.P8320573529707924153

`A072000(A034785(n+1))`
-/

namespace A175613.P8320573529707924153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A034785 (n + 1)).toNat

end

end A175613.P8320573529707924153

namespace A175613

/-- `A072000(A034785(n+1))` -/
def P8320573529707924153.Spec : Prop :=
  ∀ n, P8320573529707924153.a n = A175613 (n + 1)

end A175613

/-! ## A175613.P13639743886513772957

`record[∏{p}[n, A125527(#)]]`
-/

namespace A175613.P13639743886513772957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A125527 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175613.P13639743886513772957

namespace A175613

/-- `record[∏{p}[n, A125527(#)]]` -/
def P13639743886513772957.Spec : Prop :=
  ∀ n, P13639743886513772957.a n = A175613 (n + 1)

end A175613

/-! ## A175613.P12877378349861601335

`A125527(p?[comp[n²]])`
-/

namespace A175613.P12877378349861601335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125527 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A175613.P12877378349861601335

namespace A175613

/-- `A125527(p?[comp[n²]])` -/
def P12877378349861601335.Spec : Prop :=
  ∀ n, P12877378349861601335.a n = A175613 (n + 1)

end A175613

/-! ## A175613.P6218260193565565883

`A125527(lcm((-1)^n, p?[xor(1, n)+1]))`
-/

namespace A175613.P6218260193565565883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125527 (Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ))

end

end A175613.P6218260193565565883

namespace A175613

/-- `A125527(lcm((-1)^n, p?[xor(1, n)+1]))` -/
def P6218260193565565883.Spec : Prop :=
  ∀ n, P6218260193565565883.a n = A175613 (n + 1)

end A175613

/-!
# A175614: a(1)=1, a(2)=5, then a(n)=a(n-2)+4, if n odd else a(n)=prime(primepi(a(n-2)+4)).

The programs for A175614, there is no canonical definition to state claims against.
-/

/-! ## A175614.P13680069326771580732

`A082500(gcd(2, n+1)+4*n)`
-/

namespace A175614.P13680069326771580732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (Nat.gcd 2 (n + 1) + 4 * n)

end

end A175614.P13680069326771580732

/-! ## A175614.P4461928018663217251

`A082500(or(1, 3*n+1)+n)`
-/

namespace A175614.P4461928018663217251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (Nat.lor 1 (3 * n + 1) + n)

end

end A175614.P4461928018663217251

/-! ## A175614.P6249112577107512299

`A082500(comp[or(2, n)-1]+Δ[n²])`
-/

namespace A175614.P6249112577107512299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A175614.P6249112577107512299

/-! ## A175614.P8567837827085495940

`A082500(A047452(n+1))`
-/

namespace A175614.P8567837827085495940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A047452 (n + 1)).toNat

end

end A175614.P8567837827085495940

/-! ## A175614.P6161815906865386456

`A082500(lt[3, A092910(n)])`
-/

namespace A175614.P6161815906865386456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175614.P6161815906865386456

/-! ## A175614.P7180044584421605101

`A082500(eq[4, A092910(n)])`
-/

namespace A175614.P7180044584421605101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175614.P7180044584421605101

/-! ## A175614.P10366300963525789089

`A082500(A047524(n+1)-1)`
-/

namespace A175614.P10366300963525789089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A047524 (n + 1) - 1).toNat

end

end A175614.P10366300963525789089

/-! ## A175614.P2487642844775532513

`A082500(A007310(n+1)+n)`
-/

namespace A175614.P2487642844775532513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A007310 (n + 1) + (n : ℤ)).toNat

end

end A175614.P2487642844775532513

/-! ## A175614.P11079760531063871647

`A082500(A000034(n)+4*n)`
-/

namespace A175614.P11079760531063871647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A000034 n + (4 * n : ℤ)).toNat

end

end A175614.P11079760531063871647

/-! ## A175614.P4822897301270912710

`A082500(or(4*n, A000034(n)))`
-/

namespace A175614.P4822897301270912710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (Int.lor (4 * n : ℤ) (A000034 n)).toNat

end

end A175614.P4822897301270912710

/-!
# A175620: Triangle read by rows: T(n,k) = 2^(prime(n) - k - 1) mod n, 1 <= k <= n.

The programs for A175620, there is no canonical definition to state claims against.
-/

/-! ## A175620.P16411667455807896121

`Δ[A000578(A166444(n))]%A002024(n+1)`
-/

namespace A175620.P16411667455807896121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A166444 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002024 (n + 1))

end

end A175620.P16411667455807896121

/-! ## A175620.P13989140129443575838

`record[A300838(A089633(n))]%A002024(n+1)`
-/

namespace A175620.P13989140129443575838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (A089633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002024 (n + 1))

end

end A175620.P13989140129443575838

/-! ## A175620.P13405392785180125534

`A325490(A193147(n+1)*A227183(n+2)+2*n)`
-/

namespace A175620.P13405392785180125534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325490 (A193147 (n + 1) * A227183 (n + 2) + (2 * n : ℤ)).toNat

end

end A175620.P13405392785180125534

/-!
# A175621: a(n) = 2^(composite(n)-4) mod composite(n).

The programs for A175621, the canonical program `A175621.P12008567735738258258` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175621 has offset 1).

The definition of A175621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175621.P12008567735738258258

`A294390(Δ[A053767(n)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175621

/-- `A294390(Δ[A053767(n)])` -/
def P12008567735738258258.Spec : Prop :=
  ∀ n, P12008567735738258258.a n = A175621 (n + 1)

theorem P12008567735738258258.correct : P12008567735738258258.Spec := by
  intro n
  simp only [A175621, Nat.add_sub_cancel]

end A175621

/-! ## A175621.P12439748045804876110

`A294390(comp[A351078(n)])`
-/

namespace A175621.P12439748045804876110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A175621.P12439748045804876110

namespace A175621

/-- `A294390(comp[A351078(n)])` -/
def P12439748045804876110.Spec : Prop :=
  ∀ n, P12439748045804876110.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P6551794231476413618

`A294390(A002808(n+1))`
-/

namespace A175621.P6551794231476413618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (A002808 (n + 1)).toNat

end

end A175621.P6551794231476413618

namespace A175621

/-- `A294390(A002808(n+1))` -/
def P6551794231476413618.Spec : Prop :=
  ∀ n, P6551794231476413618.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P11894311317717339187

`A294390(A018252(n+2))`
-/

namespace A175621.P11894311317717339187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (A018252 (n + 2)).toNat

end

end A175621.P11894311317717339187

namespace A175621

/-- `A294390(A018252(n+2))` -/
def P11894311317717339187.Spec : Prop :=
  ∀ n, P11894311317717339187.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P17713171184804753962

`A294390(A072668(n+1)+1)`
-/

namespace A175621.P17713171184804753962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (A072668 (n + 1) + 1).toNat

end

end A175621.P17713171184804753962

namespace A175621

/-- `A294390(A072668(n+1)+1)` -/
def P17713171184804753962.Spec : Prop :=
  ∀ n, P17713171184804753962.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P3762312109837375030

`A294390(eq[0, A339579(n+1)])`
-/

namespace A175621.P3762312109837375030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175621.P3762312109837375030

namespace A175621

/-- `A294390(eq[0, A339579(n+1)])` -/
def P3762312109837375030.Spec : Prop :=
  ∀ n, P3762312109837375030.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P9515848009911786807

`A294390(comp[C(A006530(n+1), n)])`
-/

namespace A175621.P9515848009911786807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A175621.P9515848009911786807

namespace A175621

/-- `A294390(comp[C(A006530(n+1), n)])` -/
def P9515848009911786807.Spec : Prop :=
  ∀ n, P9515848009911786807.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P17522876006148634063

`A294390(comp[C(A014963(n+1), n)])`
-/

namespace A175621.P17522876006148634063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A175621.P17522876006148634063

namespace A175621

/-- `A294390(comp[C(A014963(n+1), n)])` -/
def P17522876006148634063.Spec : Prop :=
  ∀ n, P17522876006148634063.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P3849847950508070172

`A294390(lt[2, A000005(n+1)]+1)`
-/

namespace A175621.P3849847950508070172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A175621.P3849847950508070172

namespace A175621

/-- `A294390(lt[2, A000005(n+1)]+1)` -/
def P3849847950508070172.Spec : Prop :=
  ∀ n, P3849847950508070172.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P15846572729831794284

`A294390(lt[A000010(n+1), n]+1)`
-/

namespace A175621.P15846572729831794284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A175621.P15846572729831794284

namespace A175621

/-- `A294390(lt[A000010(n+1), n]+1)` -/
def P15846572729831794284.Spec : Prop :=
  ∀ n, P15846572729831794284.a n = A175621 (n + 1)

end A175621

/-! ## A175621.P15660787039193518145

`A294390(A053767(n+1)-A053767(n))`
-/

namespace A175621.P15660787039193518145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (A053767 (n + 1) - A053767 n).toNat

end

end A175621.P15660787039193518145

namespace A175621

/-- `A294390(A053767(n+1)-A053767(n))` -/
def P15660787039193518145.Spec : Prop :=
  ∀ n, P15660787039193518145.a n = A175621 (n + 1)

theorem P15660787039193518145.correct : P15660787039193518145.Spec := by
  intro n
  simp only [A175621, Nat.add_sub_cancel, A175621.P15660787039193518145.a, A175621.P12008567735738258258.f1, A175621.P12008567735738258258.a, SequenceMachineLib.memo_apply]

end A175621

/-!
# A175622: a(n) = 2^(semiprime(n)-4) mod semiprime(n).

The programs for A175622, there is no canonical definition to state claims against.
-/

/-! ## A175622.P4866578678533273458

`A294390(A001358(n+1))`
-/

namespace A175622.P4866578678533273458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (A001358 (n + 1)).toNat

end

end A175622.P4866578678533273458

/-! ## A175622.P5249097444136284474

`A175621(A176193(n+1))`
-/

namespace A175622.P5249097444136284474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175621 (A176193 (n + 1)).toNat

end

end A175622.P5249097444136284474

/-! ## A175622.P8270846621376075151

`A294390(A176540(n+2))`
-/

namespace A175622.P8270846621376075151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (A176540 (n + 2)).toNat

end

end A175622.P8270846621376075151

/-! ## A175622.P14157311967879167063

`A294390(lt[1, A105700(n)])`
-/

namespace A175622.P14157311967879167063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175622.P14157311967879167063

/-! ## A175622.P12779314471539720157

`A294390(eq[2, A105700(n)])`
-/

namespace A175622.P12779314471539720157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175622.P12779314471539720157

/-! ## A175622.P5420968290486119678

`A294390(eq[2, A166974(n)])`
-/

namespace A175622.P5420968290486119678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175622.P5420968290486119678

/-! ## A175622.P5079926094367034603

`A294390(eq[2, A226378(n)])`
-/

namespace A175622.P5079926094367034603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175622.P5079926094367034603

/-! ## A175622.P904226095966356029

`A294390(A088707(n+1)-1)`
-/

namespace A175622.P904226095966356029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (A088707 (n + 1) - 1).toNat

end

end A175622.P904226095966356029

/-! ## A175622.P14548226711280667348

`A294390(eq[2, A001222(n+1)]+1)`
-/

namespace A175622.P14548226711280667348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A175622.P14548226711280667348

/-! ## A175622.P14575722985867805889

`A294390(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=2`
-/

namespace A175622.P14575722985867805889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175622.P14575722985867805889

/-!
# A175623: Triangle read by rows: T(n,k) = prime(k)^(n-1) mod n, 1<=k<=n.

The programs for A175623, the canonical program `A175623.P17158264777956238439` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175623 has offset 1).

The definition of A175623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175623.P17158264777956238439

`(A037126(n+1)^A003056(n))%∑[A010054(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A175623

/-- `(A037126(n+1)^A003056(n))%∑[A010054(n)]` -/
def P17158264777956238439.Spec : Prop :=
  ∀ n, P17158264777956238439.a n = A175623 (n + 1)

theorem P17158264777956238439.correct : P17158264777956238439.Spec := by
  intro n
  simp only [A175623, Nat.add_sub_cancel]

end A175623

/-! ## A175623.P10538856689394676244

`A319075(A245300(n))%round(sqrt(2*n+1))`
-/

namespace A175623.P10538856689394676244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319075 (A245300 n).toNat) (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)))

end

end A175623.P10538856689394676244

namespace A175623

/-- `A319075(A245300(n))%round(sqrt(2*n+1))` -/
def P10538856689394676244.Spec : Prop :=
  ∀ n, P10538856689394676244.a n = A175623 (n + 1)

end A175623

/-! ## A175623.P7603538676787387663

`A065645(A204221(2*(n+1)))%(n^(n%2)+1)`
-/

namespace A175623.P7603538676787387663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065645 (A204221 (2 * (n + 1))).toNat) (n ^ (n % 2) + 1 : ℤ)

end

end A175623.P7603538676787387663

namespace A175623

/-- `A065645(A204221(2*(n+1)))%(n^(n%2)+1)` -/
def P7603538676787387663.Spec : Prop :=
  ∀ n, P7603538676787387663.a n = A175623 (n + 1)

end A175623

/-! ## A175623.P3545549766177706325

`A170979(A286371(n+1))`
-/

namespace A175623.P3545549766177706325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170979 (A286371 (n + 1)).toNat

end

end A175623.P3545549766177706325

namespace A175623

/-- `A170979(A286371(n+1))` -/
def P3545549766177706325.Spec : Prop :=
  ∀ n, P3545549766177706325.a n = A175623 (n + 1)

end A175623

/-! ## A175623.P9839063180684305117

`A007814(A030012(n))`
-/

namespace A175623.P9839063180684305117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A030012 n).toNat

end

end A175623.P9839063180684305117

namespace A175623

/-- `A007814(A030012(n))` -/
def P9839063180684305117.Spec : Prop :=
  ∀ n, P9839063180684305117.a n = A175623 (n + 1)

end A175623

/-!
# A175624: a(n) = n! modulo n*(n+1)*(n+2)/3.

The programs for A175624, the canonical program `A175624.P1685514638523231119` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175624 has offset 1).

The definition of A175624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175624.P1685514638523231119

`(n+1)!%((n+1)*(n+2)*(n+3)/3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175624

/-- `(n+1)!%((n+1)*(n+2)*(n+3)/3)` -/
def P1685514638523231119.Spec : Prop :=
  ∀ n, P1685514638523231119.a n = A175624 (n + 1)

theorem P1685514638523231119.correct : P1685514638523231119.Spec := by
  intro n
  simp only [A175624, Nat.add_sub_cancel]

end A175624

/-! ## A175624.P228615429723793740

`∏[n+1]%∑[∑[2*(n+1)]]`
-/

namespace A175624.P228615429723793740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A175624.P228615429723793740

namespace A175624

/-- `∏[n+1]%∑[∑[2*(n+1)]]` -/
def P228615429723793740.Spec : Prop :=
  ∀ n, (P228615429723793740.a n : ℤ) = A175624 (n + 1)

end A175624

/-!
# A175625: Numbers k such that gcd(k, 6) = 1, 2^(k-1) == 1 (mod k), and 2^(k-3) == 1 (mod (k-1)/2).

The programs for A175625, the canonical program `A175625.P17769439164711257360` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175625 has offset 1).

The definition of A175625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175625.P17769439164711257360

`p?[A192109(n+3)+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175625

/-- `p?[A192109(n+3)+1]` -/
def P17769439164711257360.Spec : Prop :=
  ∀ n, P17769439164711257360.a n = A175625 (n + 1)

theorem P17769439164711257360.correct : P17769439164711257360.Spec := by
  intro n
  simp only [A175625, Nat.add_sub_cancel]

end A175625

/-! ## A175625.P5394126360229580324

`p?[2*A179458(n+2)+1]`
-/

namespace A175625.P5394126360229580324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179458 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175625.P5394126360229580324

namespace A175625

/-- `p?[2*A179458(n+2)+1]` -/
def P5394126360229580324.Spec : Prop :=
  ∀ n, P5394126360229580324.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P1079815295712609357

`p?[A175168(n+1)+1]`
-/

namespace A175625.P1079815295712609357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175168 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175625.P1079815295712609357

namespace A175625

/-- `p?[A175168(n+1)+1]` -/
def P1079815295712609357.Spec : Prop :=
  ∀ n, P1079815295712609357.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P15421324996006526281

`record[A006530(A192109(n+3)+1)]`
-/

namespace A175625.P15421324996006526281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A192109 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175625.P15421324996006526281

namespace A175625

/-- `record[A006530(A192109(n+3)+1)]` -/
def P15421324996006526281.Spec : Prop :=
  ∀ n, P15421324996006526281.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P776436511899237303

`record[A006530(2*A179458(n+2)+1)]`
-/

namespace A175625.P776436511899237303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A179458 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175625.P776436511899237303

namespace A175625

/-- `record[A006530(2*A179458(n+2)+1)]` -/
def P776436511899237303.Spec : Prop :=
  ∀ n, P776436511899237303.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P12794062449119549054

`record[A020639(2*A179458(n+2)+1)]`
-/

namespace A175625.P12794062449119549054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A179458 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175625.P12794062449119549054

namespace A175625

/-- `record[A020639(2*A179458(n+2)+1)]` -/
def P12794062449119549054.Spec : Prop :=
  ∀ n, P12794062449119549054.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P13649663331641335821

`p?[A267872(A179458(n+1))]`
-/

namespace A175625.P13649663331641335821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A179458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175625.P13649663331641335821

namespace A175625

/-- `p?[A267872(A179458(n+1))]` -/
def P13649663331641335821.Spec : Prop :=
  ∀ n, P13649663331641335821.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P12662402351769513927

`p?[A005408(A179458(n+2))]`
-/

namespace A175625.P12662402351769513927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A179458 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175625.P12662402351769513927

namespace A175625

/-- `p?[A005408(A179458(n+2))]` -/
def P12662402351769513927.Spec : Prop :=
  ∀ n, P12662402351769513927.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P7584836209339910746

`record[A166333(A175168(n+1))]`
-/

namespace A175625.P7584836209339910746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A175168 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175625.P7584836209339910746

namespace A175625

/-- `record[A166333(A175168(n+1))]` -/
def P7584836209339910746.Spec : Prop :=
  ∀ n, P7584836209339910746.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P5318549596552685164

`p?[A141310(A192109(n+3))]`
-/

namespace A175625.P5318549596552685164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A192109 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175625.P5318549596552685164

namespace A175625

/-- `p?[A141310(A192109(n+3))]` -/
def P5318549596552685164.Spec : Prop :=
  ∀ n, P5318549596552685164.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P13353796988176770310

`record[A014963(A175168(n+1)+1)]`
-/

namespace A175625.P13353796988176770310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175168 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175625.P13353796988176770310

namespace A175625

/-- `record[A014963(A175168(n+1)+1)]` -/
def P13353796988176770310.Spec : Prop :=
  ∀ n, P13353796988176770310.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P14757041124596132981

`record[A014963(A192109(n+3)+1)]`
-/

namespace A175625.P14757041124596132981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A192109 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175625.P14757041124596132981

namespace A175625

/-- `record[A014963(A192109(n+3)+1)]` -/
def P14757041124596132981.Spec : Prop :=
  ∀ n, P14757041124596132981.a n = A175625 (n + 1)

end A175625

/-! ## A175625.P8935390800408155438

`record[A014963(2*A179458(n+2)+1)]`
-/

namespace A175625.P8935390800408155438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A179458 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175625.P8935390800408155438

namespace A175625

/-- `record[A014963(2*A179458(n+2)+1)]` -/
def P8935390800408155438.Spec : Prop :=
  ∀ n, P8935390800408155438.a n = A175625 (n + 1)

end A175625

/-!
# A175626: Semiprimes s such that 2^(s-1) mod s is also a semiprime.

The programs for A175626, there is no canonical definition to state claims against.
-/

/-! ## A175626.P7262117260425609093

`A046315(eq[A003982(n), A105516(n)])`
-/

namespace A175626.P7262117260425609093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175626.P7262117260425609093

/-! ## A175626.P12512170548984450400

`A046315(lt[A205295(n), A030386(n)])`
-/

namespace A175626.P12512170548984450400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175626.P12512170548984450400

/-! ## A175626.P12893277994006663823

`A046315(A137407(n+1)^A174544(n))`
-/

namespace A175626.P12893277994006663823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (SequenceMachineLib.roundAway ((A137407 (n + 1) : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A175626.P12893277994006663823

/-! ## A175626.P2087272390262087502

`filter[A046315(n+1), A104120(#)]`
-/

namespace A175626.P2087272390262087502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104120 (f1 j).toNat = 1) n)

end

end A175626.P2087272390262087502

/-! ## A175626.P4690561372011834422

`filter[A359596(n+2), A104120(#)]`
-/

namespace A175626.P4690561372011834422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104120 (f1 j).toNat = 1) n)

end

end A175626.P4690561372011834422

/-!
# A175627: a(1) = 1; a(n) is the smallest square > 2*a(n-1).

The programs for A175627, the canonical program `A175627.P11999551513317453830` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175627 has offset 1).

The definition of A175627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175627.P11999551513317453830

`ceil(sqrt(2*a(n-1)))²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175627

/-- `ceil(sqrt(2*a(n-1)))²` -/
def P11999551513317453830.Spec : Prop :=
  ∀ n, P11999551513317453830.a n = A175627 (n + 1)

theorem P11999551513317453830.correct : P11999551513317453830.Spec := by
  intro n
  simp only [A175627, Nat.add_sub_cancel]

end A175627

/-! ## A175627.P8239416017470558373

`ceil(sqrt(2*a(n-1)))^2` with `a(0)=1`
-/

namespace A175627.P8239416017470558373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (2 * a (n - 1) : ℝ)⌉ ^ 2

end

end A175627.P8239416017470558373

namespace A175627

/-- `ceil(sqrt(2*a(n-1)))^2` -/
def P8239416017470558373.Spec : Prop :=
  ∀ n, P8239416017470558373.a n = A175627 (n + 1)

theorem P8239416017470558373.correct : P8239416017470558373.Spec := by
  intro n
  simp only [A175627, Nat.add_sub_cancel, A175627.P8239416017470558373.a, A175627.P11999551513317453830.a, SequenceMachineLib.memo_apply]

end A175627

/-! ## A175627.P2487115641079215977

`(floor(sqrt(2*a(n-1)))+1)²` with `a(0)=1`
-/

namespace A175627.P2487115641079215977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.sqrt (2 * a (n - 1)) + 1) ^ 2

end

end A175627.P2487115641079215977

namespace A175627

/-- `(floor(sqrt(2*a(n-1)))+1)²` -/
def P2487115641079215977.Spec : Prop :=
  ∀ n, (P2487115641079215977.a n : ℤ) = A175627 (n + 1)

end A175627

/-! ## A175627.P7802089054526548065

`ceil(sqrt(a(n-1)+a(n-1)))²` with `a(0)=1`
-/

namespace A175627.P7802089054526548065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (a (n - 1) + a (n - 1) : ℝ)⌉ ^ 2

end

end A175627.P7802089054526548065

namespace A175627

/-- `ceil(sqrt(a(n-1)+a(n-1)))²` -/
def P7802089054526548065.Spec : Prop :=
  ∀ n, P7802089054526548065.a n = A175627 (n + 1)

theorem P7802089054526548065.correct : P7802089054526548065.Spec := by
  intro n
  simp only [A175627, Nat.add_sub_cancel, A175627.P7802089054526548065.a, A175627.P11999551513317453830.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A175627

/-! ## A175627.P17956905131034047059

`ceil(root(a(n-1)+a(n-1), 2))²` with `a(0)=1`
-/

namespace A175627.P17956905131034047059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) + a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌉ ^ 2

end

end A175627.P17956905131034047059

namespace A175627

/-- `ceil(root(a(n-1)+a(n-1), 2))²` -/
def P17956905131034047059.Spec : Prop :=
  ∀ n, P17956905131034047059.a n = A175627 (n + 1)

end A175627

/-! ## A175627.P1122604702727996003

`ceil(sqrt(a(n-1)+a(n-1)))^2` with `a(0)=1`
-/

namespace A175627.P1122604702727996003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (a (n - 1) + a (n - 1) : ℝ)⌉ ^ 2

end

end A175627.P1122604702727996003

namespace A175627

/-- `ceil(sqrt(a(n-1)+a(n-1)))^2` -/
def P1122604702727996003.Spec : Prop :=
  ∀ n, P1122604702727996003.a n = A175627 (n + 1)

theorem P1122604702727996003.correct : P1122604702727996003.Spec := by
  intro n
  simp only [A175627, Nat.add_sub_cancel, A175627.P1122604702727996003.a, A175627.P11999551513317453830.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A175627

/-! ## A175627.P17156806530646122108

`A175539(n+1)²`
-/

namespace A175627.P17156806530646122108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175539 (n + 1) ^ 2

end

end A175627.P17156806530646122108

namespace A175627

/-- `A175539(n+1)²` -/
def P17156806530646122108.Spec : Prop :=
  ∀ n, P17156806530646122108.a n = A175627 (n + 1)

end A175627

/-! ## A175627.P16757893071152782656

`A175539(n+1)^dr(A175549(3*n+2))`
-/

namespace A175627.P16757893071152782656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175539 (n + 1) ^ SequenceMachineLib.digitalRoot (A175549 (3 * n + 2))

end

end A175627.P16757893071152782656

namespace A175627

/-- `A175539(n+1)^dr(A175549(3*n+2))` -/
def P16757893071152782656.Spec : Prop :=
  ∀ n, P16757893071152782656.a n = A175627 (n + 1)

end A175627

/-!
# A175628: a(2*n+1) = A005563(n). a(2*n) = A061037(n+1).

The programs for A175628, there is no canonical definition to state claims against.
-/

/-! ## A175628.P10728786759600640286

`∑[A175717(A057428(n)+n)]`
-/

namespace A175628.P10728786759600640286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175717 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175628.P10728786759600640286

/-! ## A175628.P18259414794814838830

`∑[A175717(A004273(n)-n)]`
-/

namespace A175628.P18259414794814838830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175717 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175628.P18259414794814838830

/-! ## A175628.P6288342146881907229

`∑[A175717(n)]-A175717(n)`
-/

namespace A175628.P6288342146881907229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A175717 n

end

end A175628.P6288342146881907229

/-! ## A175628.P769349974855424310

`∑[A175717(A004524(A004273(n)))]`
-/

namespace A175628.P769349974855424310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175717 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175628.P769349974855424310

/-! ## A175628.P1476350387619506402

`A061035(∑[gcd(n+1, ceil(n/2))])`
-/

namespace A175628.P1476350387619506402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175628.P1476350387619506402

/-! ## A175628.P7103753995712244653

`A061035(∑[A152271(n)])`
-/

namespace A175628.P7103753995712244653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175628.P7103753995712244653

/-! ## A175628.P12202664911640124844

`A061035(A117142(n+1))`
-/

namespace A175628.P12202664911640124844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A117142 (n + 1)).toNat

end

end A175628.P12202664911640124844

/-! ## A175628.P2377949268543135067

`A061035(∑[A057979(n+2)])`
-/

namespace A175628.P2377949268543135067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175628.P2377949268543135067

/-! ## A175628.P18268724198096895710

`A061035(eq[1, A130154(n+2)]+1)`
-/

namespace A175628.P18268724198096895710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A175628.P18268724198096895710

/-! ## A175628.P12267785716595193780

`A061035(∑[A008621(A019425(n))])`
-/

namespace A175628.P12267785716595193780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A019425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175628.P12267785716595193780

/-! ## A175628.P10770033326016080442

`A061035(∑[A008619(A093178(n))])`
-/

namespace A175628.P10770033326016080442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175628.P10770033326016080442

/-! ## A175628.P2257102084304233987

`A061035(A101881(n)-A142150(n))`
-/

namespace A175628.P2257102084304233987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A101881 n - A142150 n).toNat

end

end A175628.P2257102084304233987

/-! ## A175628.P1022167197323307441

`A175779(∑[∑[n]%(n+1)+1])`
-/

namespace A175628.P1022167197323307441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175628.P1022167197323307441

/-! ## A175628.P13885585389043937786

`A175779(A165157(n+1))`
-/

namespace A175628.P13885585389043937786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A165157 (n + 1)).toNat

end

end A175628.P13885585389043937786

/-! ## A175628.P13503894396824861761

`A175779(A000124(round(n/2))+n)`
-/

namespace A175628.P13503894396824861761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A000124 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat + (n : ℤ)).toNat

end

end A175628.P13503894396824861761

/-!
# A175629: Legendre symbol (n,7).

The programs for A175629, the canonical program `A175629.P9242778360532826969` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175629 has offset 0).

The definition of A175629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175629.P9242778360532826969

`floor(tan((n^3)%7))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175629

/-- `floor(tan((n^3)%7))` -/
def P9242778360532826969.Spec : Prop :=
  ∀ n, P9242778360532826969.a n = A175629 n

theorem P9242778360532826969.correct : P9242778360532826969.Spec := by
  intro n
  simp only [A175629]

end A175629

/-!
# A175630: a(n) = n-th pentagonal number mod (n+2).

The programs for A175630, the canonical program `A175630.P9679251145452344107` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175630 has offset 0).

The definition of A175630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175630.P9679251145452344107

`(∑[n]+6)%(n+2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175630

/-- `(∑[n]+6)%(n+2)` -/
def P9679251145452344107.Spec : Prop :=
  ∀ n, (P9679251145452344107.a n : ℤ) = A175630 n

theorem P9679251145452344107.correct : P9679251145452344107.Spec := by
  intro n
  simp only [A175630]

end A175630

/-! ## A175630.P11046588405580238507

`abs(A167487(n)%-(n+2))`
-/

namespace A175630.P11046588405580238507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A167487 n) (-(n + 2 : ℤ))|

end

end A175630.P11046588405580238507

namespace A175630

/-- `abs(A167487(n)%-(n+2))` -/
def P11046588405580238507.Spec : Prop :=
  ∀ n, P11046588405580238507.a n = A175630 n

end A175630

/-! ## A175630.P14308687216806428474

`--A000326(n)%(n+2)`
-/

namespace A175630.P14308687216806428474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000326 n) (n + 2 : ℤ)

end

end A175630.P14308687216806428474

namespace A175630

/-- `--A000326(n)%(n+2)` -/
def P14308687216806428474.Spec : Prop :=
  ∀ n, P14308687216806428474.a n = A175630 n

end A175630

/-! ## A175630.P2064967266379216571

`abs((A143689(n)-1)%(n+2))`
-/

namespace A175630.P2064967266379216571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A143689 n - 1) (n + 2 : ℤ)|

end

end A175630.P2064967266379216571

namespace A175630

/-- `abs((A143689(n)-1)%(n+2))` -/
def P2064967266379216571.Spec : Prop :=
  ∀ n, P2064967266379216571.a n = A175630 n

end A175630

/-! ## A175630.P1495061888959334819

`-(n-A005449(n))%(n+2)`
-/

namespace A175630.P1495061888959334819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((n : ℤ) - A005449 n) (n + 2 : ℤ)

end

end A175630.P1495061888959334819

namespace A175630

/-- `-(n-A005449(n))%(n+2)` -/
def P1495061888959334819.Spec : Prop :=
  ∀ n, P1495061888959334819.a n = A175630 n

end A175630

/-! ## A175630.P3867616862985173713

`A049450(n)%(2*(n+2))/2`
-/

namespace A175630.P3867616862985173713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A049450 n) (2 * (n + 2) : ℤ) : ℚ) / 2

end

end A175630.P3867616862985173713

namespace A175630

/-- `A049450(n)%(2*(n+2))/2` -/
def P3867616862985173713.Spec : Prop :=
  ∀ n, P3867616862985173713.a n = (A175630 n : ℚ)

end A175630

/-! ## A175630.P12840960742924779681

`abs((A167499(n+3)-1)%(n+2))`
-/

namespace A175630.P12840960742924779681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A167499 (n + 3) - 1) (n + 2 : ℤ)|

end

end A175630.P12840960742924779681

namespace A175630

/-- `abs((A167499(n+3)-1)%(n+2))` -/
def P12840960742924779681.Spec : Prop :=
  ∀ n, P12840960742924779681.a n = A175630 n

end A175630

/-! ## A175630.P3103907816055247487

`A004525((7*(n²+n))%(2*(n+2)))`
-/

namespace A175630.P3103907816055247487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (7 * (n ^ 2 + n) % (2 * (n + 2)))

end

end A175630.P3103907816055247487

namespace A175630

/-- `A004525((7*(n²+n))%(2*(n+2)))` -/
def P3103907816055247487.Spec : Prop :=
  ∀ n, P3103907816055247487.a n = A175630 n

end A175630

/-!
# A175631: a(n) = (n-th pentagonal number) modulo (n-th triangular number).

The programs for A175631, the canonical program `A175631.P15477775147324310129` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175631 has offset 1).

The definition of A175631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175631.P15477775147324310129

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=2, a(4)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175631

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15477775147324310129.Spec : Prop :=
  ∀ n, P15477775147324310129.a n = A175631 (n + 1)

theorem P15477775147324310129.correct : P15477775147324310129.Spec := by
  intro n
  simp only [A175631, Nat.add_sub_cancel]

end A175631

/-! ## A175631.P15383565035033474114

`∑[n-1]+C(3, n²)`
-/

namespace A175631.P15383565035033474114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 3 (n ^ 2) : ℤ)

end

end A175631.P15383565035033474114

namespace A175631

/-- `∑[n-1]+C(3, n²)` -/
def P15383565035033474114.Spec : Prop :=
  ∀ n, P15383565035033474114.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P7927980527430057967

`C(3, n²)-∑[1-n]`
-/

namespace A175631.P7927980527430057967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (n ^ 2) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175631.P7927980527430057967

namespace A175631

/-- `C(3, n²)-∑[1-n]` -/
def P7927980527430057967.Spec : Prop :=
  ∀ n, P7927980527430057967.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P6799032081556011893

`∑[2*n]%∑[n+1]`
-/

namespace A175631.P6799032081556011893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A175631.P6799032081556011893

namespace A175631

/-- `∑[2*n]%∑[n+1]` -/
def P6799032081556011893.Spec : Prop :=
  ∀ n, (P6799032081556011893.a n : ℤ) = A175631 (n + 1)

end A175631

/-! ## A175631.P12993571979251373507

`lcm(ceil(acot(n-1)), ∑[n-1])`
-/

namespace A175631.P12993571979251373507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175631.P12993571979251373507

namespace A175631

/-- `lcm(ceil(acot(n-1)), ∑[n-1])` -/
def P12993571979251373507.Spec : Prop :=
  ∀ n, (P12993571979251373507.a n : ℤ) = A175631 (n + 1)

end A175631

/-! ## A175631.P14724331789625594644

`a(n-1)-1+n` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A175631.P14724331789625594644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  a (n - 1) - 1 + (n : ℤ)

end

end A175631.P14724331789625594644

namespace A175631

/-- `a(n-1)-1+n` -/
def P14724331789625594644.Spec : Prop :=
  ∀ n, P14724331789625594644.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P76238531759310826

`n-(1-a(n-1))` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A175631.P76238531759310826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  (n : ℤ) - (1 - a (n - 1))

end

end A175631.P76238531759310826

namespace A175631

/-- `n-(1-a(n-1))` -/
def P76238531759310826.Spec : Prop :=
  ∀ n, P76238531759310826.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P8926607147712210323

`(n+1)*(2*n)%(n+2)/2`
-/

namespace A175631.P8926607147712210323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((2 * n % (n + 2) : ℕ) : ℚ) / 2)

end

end A175631.P8926607147712210323

namespace A175631

/-- `(n+1)*(2*n)%(n+2)/2` -/
def P8926607147712210323.Spec : Prop :=
  ∀ n, P8926607147712210323.a n = (A175631 (n + 1) : ℚ)

end A175631

/-! ## A175631.P17605895011062689149

`gcd(C(n+2, 2*n), C(n, 2))-1`
-/

namespace A175631.P17605895011062689149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (Nat.choose (n + 2) (2 * n)) (Nat.choose n 2) : ℤ) - 1

end

end A175631.P17605895011062689149

namespace A175631

/-- `gcd(C(n+2, 2*n), C(n, 2))-1` -/
def P17605895011062689149.Spec : Prop :=
  ∀ n, P17605895011062689149.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P14654134538365385636

`abs((n+1-(n+1)²)%∑[n+1])`
-/

namespace A175631.P14654134538365385636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((n + 1 : ℤ) - ((n + 1) ^ 2 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A175631.P14654134538365385636

namespace A175631

/-- `abs((n+1-(n+1)²)%∑[n+1])` -/
def P14654134538365385636.Spec : Prop :=
  ∀ n, P14654134538365385636.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P17656471780254473521

`∑[n-1]-(2*n+1)*floor((n-2)/(n+2))`
-/

namespace A175631.P17656471780254473521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ) * ⌊((n : ℤ) - 2 : ℚ) / (n + 2 : ℚ)⌋

end

end A175631.P17656471780254473521

namespace A175631

/-- `∑[n-1]-(2*n+1)*floor((n-2)/(n+2))` -/
def P17656471780254473521.Spec : Prop :=
  ∀ n, P17656471780254473521.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P2093643793730521972

`abs(A169585(n)+∑[n]-1-n)`
-/

namespace A175631.P2093643793730521972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A169585 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) - (n : ℤ)|

end

end A175631.P2093643793730521972

namespace A175631

/-- `abs(A169585(n)+∑[n]-1-n)` -/
def P2093643793730521972.Spec : Prop :=
  ∀ n, P2093643793730521972.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P1632369368777568942

`(A169585(n)-1)*A080956(n)`
-/

namespace A175631.P1632369368777568942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169585 n - 1) * A080956 n

end

end A175631.P1632369368777568942

namespace A175631

/-- `(A169585(n)-1)*A080956(n)` -/
def P1632369368777568942.Spec : Prop :=
  ∀ n, P1632369368777568942.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P17401712937408164072

`A000096(n-2*A157928(n))`
-/

namespace A175631.P17401712937408164072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 ((n : ℤ) - 2 * A157928 n).toNat

end

end A175631.P17401712937408164072

namespace A175631

/-- `A000096(n-2*A157928(n))` -/
def P17401712937408164072.Spec : Prop :=
  ∀ n, P17401712937408164072.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P16651042378101748675

`lcm(A020500(n+1), A080956(n))`
-/

namespace A175631.P16651042378101748675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020500 (n + 1)) (A080956 n)

end

end A175631.P16651042378101748675

namespace A175631

/-- `lcm(A020500(n+1), A080956(n))` -/
def P16651042378101748675.Spec : Prop :=
  ∀ n, (P16651042378101748675.a n : ℤ) = A175631 (n + 1)

end A175631

/-! ## A175631.P10585085508101402380

`A000096(lcm(2-n, A294619(n)))`
-/

namespace A175631.P10585085508101402380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (Int.lcm (2 - (n : ℤ)) (A294619 n))

end

end A175631.P10585085508101402380

namespace A175631

/-- `A000096(lcm(2-n, A294619(n)))` -/
def P10585085508101402380.Spec : Prop :=
  ∀ n, P10585085508101402380.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P7543761269095378423

`A000096(n-and(2, A260196(n)))`
-/

namespace A175631.P7543761269095378423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 ((n : ℤ) - Int.land 2 (A260196 n)).toNat

end

end A175631.P7543761269095378423

namespace A175631

/-- `A000096(n-and(2, A260196(n)))` -/
def P7543761269095378423.Spec : Prop :=
  ∀ n, P7543761269095378423.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P13516376611188272466

`A000096(n-A157928(n)-A157928(n))`
-/

namespace A175631.P13516376611188272466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 ((n : ℤ) - A157928 n - A157928 n).toNat

end

end A175631.P13516376611188272466

namespace A175631

/-- `A000096(n-A157928(n)-A157928(n))` -/
def P13516376611188272466.Spec : Prop :=
  ∀ n, P13516376611188272466.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P15358697481382752159

`A000096(n-and(2, A000225(n)))`
-/

namespace A175631.P15358697481382752159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 ((n : ℤ) - Int.land 2 (A000225 n)).toNat

end

end A175631.P15358697481382752159

namespace A175631

/-- `A000096(n-and(2, A000225(n)))` -/
def P15358697481382752159.Spec : Prop :=
  ∀ n, P15358697481382752159.a n = A175631 (n + 1)

end A175631

/-! ## A175631.P13416939271775226714

`(1-C(n+2, A000045(2*n)))*∑[n-1]`
-/

namespace A175631.P13416939271775226714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (n + 2) (A000045 (2 * n)).toNat : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175631.P13416939271775226714

namespace A175631

/-- `(1-C(n+2, A000045(2*n)))*∑[n-1]` -/
def P13416939271775226714.Spec : Prop :=
  ∀ n, P13416939271775226714.a n = A175631 (n + 1)

end A175631

/-!
# A175632: Maximal run length of primes of the form A025584(n), A025584(n)+2, A025584(n)+4, ...

The programs for A175632, the canonical program `A175632.P6445020047984440906` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175632 has offset 1).

The definition of A175632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175632.P6445020047984440906

`Δ[record[A062302(n+1)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A175632

/-- `Δ[record[A062302(n+1)]]` -/
def P6445020047984440906.Spec : Prop :=
  ∀ n, P6445020047984440906.a n = A175632 (n + 1)

theorem P6445020047984440906.correct : P6445020047984440906.Spec := by
  intro n
  simp only [A175632, Nat.add_sub_cancel]

end A175632

/-! ## A175632.P16049622441228584077

`Δ[record[A224715(n+1)]]`
-/

namespace A175632.P16049622441228584077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175632.P16049622441228584077

namespace A175632

/-- `Δ[record[A224715(n+1)]]` -/
def P16049622441228584077.Spec : Prop :=
  ∀ n, P16049622441228584077.a n = A175632 (n + 1)

end A175632

/-! ## A175632.P1997375950123819664

`Δ[comp[A029707(n+1)]]`
-/

namespace A175632.P1997375950123819664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A175632.P1997375950123819664

namespace A175632

/-- `Δ[comp[A029707(n+1)]]` -/
def P1997375950123819664.Spec : Prop :=
  ∀ n, P1997375950123819664.a n = A175632 (n + 1)

end A175632

/-! ## A175632.P17365673196827651042

`Δ[lt[A062301(n+1), 1]]`
-/

namespace A175632.P17365673196827651042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A175632.P17365673196827651042

namespace A175632

/-- `Δ[lt[A062301(n+1), 1]]` -/
def P17365673196827651042.Spec : Prop :=
  ∀ n, P17365673196827651042.a n = A175632 (n + 1)

end A175632

/-! ## A175632.P620888394077472325

`Δ[comp[A155752(n+1)+1]]`
-/

namespace A175632.P620888394077472325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A175632.P620888394077472325

namespace A175632

/-- `Δ[comp[A155752(n+1)+1]]` -/
def P620888394077472325.Spec : Prop :=
  ∀ n, P620888394077472325.a n = A175632 (n + 1)

end A175632

/-!
# A175633: Numbers x such that x^2 - 28*y^2 = 1 for some integer y.

The programs for A175633, the canonical program `A175633.P7908441483648814202` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175633 has offset 1).

The definition of A175633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175633.P7908441483648814202

`254*a(n-1)-a(n-2)` with `a(0)=1, a(1)=127`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175633

/-- `254*a(n-1)-a(n-2)` -/
def P7908441483648814202.Spec : Prop :=
  ∀ n, P7908441483648814202.a n = A175633 (n + 1)

theorem P7908441483648814202.correct : P7908441483648814202.Spec := by
  intro n
  simp only [A175633, Nat.add_sub_cancel]

end A175633

/-! ## A175633.P50565521110414845

`A001081(2*n)`
-/

namespace A175633.P50565521110414845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 (2 * n)

end

end A175633.P50565521110414845

namespace A175633

/-- `A001081(2*n)` -/
def P50565521110414845.Spec : Prop :=
  ∀ n, P50565521110414845.a n = A175633 (n + 1)

end A175633

/-! ## A175633.P2727222900597782217

`2*A132594(n)+1`
-/

namespace A175633.P2727222900597782217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132594 n + 1

end

end A175633.P2727222900597782217

namespace A175633

/-- `2*A132594(n)+1` -/
def P2727222900597782217.Spec : Prop :=
  ∀ n, P2727222900597782217.a n = A175633 (n + 1)

end A175633

/-! ## A175633.P14915344726378826729

`A090727(2*n)/2`
-/

namespace A175633.P14915344726378826729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090727 (2 * n) : ℚ) / 2

end

end A175633.P14915344726378826729

namespace A175633

/-- `A090727(2*n)/2` -/
def P14915344726378826729.Spec : Prop :=
  ∀ n, P14915344726378826729.a n = (A175633 (n + 1) : ℚ)

end A175633

/-! ## A175633.P14280986840569982173

`A090727(n)²/2-1`
-/

namespace A175633.P14280986840569982173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090727 n ^ 2 : ℚ) / 2 - 1

end

end A175633.P14280986840569982173

namespace A175633

/-- `A090727(n)²/2-1` -/
def P14280986840569982173.Spec : Prop :=
  ∀ n, P14280986840569982173.a n = (A175633 (n + 1) : ℚ)

end A175633

/-!
# A175634: Chen semiprimes: semiprimes m such that m+4 is either a prime or a semiprime.

The programs for A175634, the canonical program `A175634.P10918917663715960839` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175634 has offset 1).

The definition of A175634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175634.P10594657840011597313

`lt[A054576(n+4), A105700(n)]`
-/

namespace A175634.P10594657840011597313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175634.P10594657840011597313

namespace A175634

/-- `lt[A054576(n+4), A105700(n)]` -/
def P10594657840011597313.Spec : Prop :=
  ∀ n, (P10594657840011597313.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P12867478312527621420

`lt[A077565(n+4), A105700(n)]`
-/

namespace A175634.P12867478312527621420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175634.P12867478312527621420

namespace A175634

/-- `lt[A077565(n+4), A105700(n)]` -/
def P12867478312527621420.Spec : Prop :=
  ∀ n, (P12867478312527621420.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P5918650444128545362

`lt[A002033(n+3), A105700(n)²]`
-/

namespace A175634.P5918650444128545362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175634.P5918650444128545362

namespace A175634

/-- `lt[A002033(n+3), A105700(n)²]` -/
def P5918650444128545362.Spec : Prop :=
  ∀ n, (P5918650444128545362.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P10918917663715960839

`lt[A105560(n+4), A105700(n)²]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175634

/-- `lt[A105560(n+4), A105700(n)²]` -/
def P10918917663715960839.Spec : Prop :=
  ∀ n, (P10918917663715960839.a n : ℤ) = A175634 (n + 1)

theorem P10918917663715960839.correct : P10918917663715960839.Spec := by
  intro n
  simp only [A175634, Nat.add_sub_cancel]

end A175634

/-! ## A175634.P2521121286457382062

`lt[A284289(n+4), A105700(n)²]`
-/

namespace A175634.P2521121286457382062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175634.P2521121286457382062

namespace A175634

/-- `lt[A284289(n+4), A105700(n)²]` -/
def P2521121286457382062.Spec : Prop :=
  ∀ n, (P2521121286457382062.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P9181855812993344233

`lt[exp(A101606(n+4)), A105700(n)]`
-/

namespace A175634.P9181855812993344233
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A101606 (n + 4) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A175634.P9181855812993344233

namespace A175634

/-- `lt[exp(A101606(n+4)), A105700(n)]` -/
def P9181855812993344233.Spec : Prop :=
  ∀ n, (P9181855812993344233.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P13883115586664836760

`eq[log2(A226378(n)), A054576(n+4)]`
-/

namespace A175634.P13883115586664836760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A226378 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A175634.P13883115586664836760

namespace A175634

/-- `eq[log2(A226378(n)), A054576(n+4)]` -/
def P13883115586664836760.Spec : Prop :=
  ∀ n, (P13883115586664836760.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P13239741663732150070

`eq[A000005(A117818(n+4)), A105700(n)]`
-/

namespace A175634.P13239741663732150070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A117818 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175634.P13239741663732150070

namespace A175634

/-- `eq[A000005(A117818(n+4)), A105700(n)]` -/
def P13239741663732150070.Spec : Prop :=
  ∀ n, (P13239741663732150070.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P10469581840613968773

`lt[A000010(A008481(n+4)), A105700(n)]`
-/

namespace A175634.P10469581840613968773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008481 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175634.P10469581840613968773

namespace A175634

/-- `lt[A000010(A008481(n+4)), A105700(n)]` -/
def P10469581840613968773.Spec : Prop :=
  ∀ n, (P10469581840613968773.a n : ℤ) = A175634 (n + 1)

end A175634

/-! ## A175634.P7938894880262156498

`A175680(n+1)-A175735(n+1)`
-/

namespace A175634.P7938894880262156498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (n + 1) - A175735 (n + 1)

end

end A175634.P7938894880262156498

namespace A175634

/-- `A175680(n+1)-A175735(n+1)` -/
def P7938894880262156498.Spec : Prop :=
  ∀ n, P7938894880262156498.a n = A175634 (n + 1)

end A175634

/-!
# A175636: Maximal (nonzeros) run length of semiprimes of the form k+4, k+8, k+12,.., where k is a non-semiprime.

The programs for A175636, there is no canonical definition to state claims against.
-/

/-! ## A175636.P17649783663791003998

`A262891(record[A038137(A059851(n))])`
-/

namespace A175636.P17649783663791003998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A059851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175636.P17649783663791003998

/-! ## A175636.P1207151294957238702

`A084642(A000045(n)*A077610(n+1))`
-/

namespace A175636.P1207151294957238702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (A000045 n * A077610 (n + 1)).toNat

end

end A175636.P1207151294957238702

/-! ## A175636.P5522071828035313979

`gcd(A010816(n), A107393(A124343(n+1)))`
-/

namespace A175636.P5522071828035313979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A107393 (A124343 (n + 1)).toNat)

end

end A175636.P5522071828035313979

/-! ## A175636.P5992583194481266678

`A084642(lcm(A000045(n), A077610(n+1)))`
-/

namespace A175636.P5992583194481266678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (Int.lcm (A000045 n) (A077610 (n + 1)))

end

end A175636.P5992583194481266678

/-! ## A175636.P8273720855918522819

`A269976(A001581(n+1))`
-/

namespace A175636.P8273720855918522819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269976 (A001581 (n + 1)).toNat

end

end A175636.P8273720855918522819

/-!
# A175637: Numbers n such that the decimal digits of n are not present in k*n, k=2..9.

The programs for A175637, there is no canonical definition to state claims against.
-/

/-! ## A175637.P858488889365879545

`record[A110787(∑[(n+1)/∏{p}[n+1, #]])]`
-/

namespace A175637.P858488889365879545
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110787 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175637.P858488889365879545

/-! ## A175637.P2545269925617511940

`A338712(∑[A309800(n)!])`
-/

namespace A175637.P2545269925617511940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338712 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175637.P2545269925617511940

/-! ## A175637.P667443912094833553

`filter[A129747(n+1), A202022(#)]`
-/

namespace A175637.P667443912094833553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A175637.P667443912094833553

/-!
# A175648: Semiprimes m such that m+4 is also semiprime.

The programs for A175648, the canonical program `A175648.P2620209135010887620` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175648 has offset 1).

The definition of A175648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175648.P18122890768691145023

`A105571(n+1)-2`
-/

namespace A175648.P18122890768691145023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1) - 2

end

end A175648.P18122890768691145023

namespace A175648

/-- `A105571(n+1)-2` -/
def P18122890768691145023.Spec : Prop :=
  ∀ n, P18122890768691145023.a n = A175648 (n + 1)

end A175648

/-! ## A175648.P7395048382111157184

`A354359(A055377(n+4))+A105571(n+1)`
-/

namespace A175648.P7395048382111157184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354359 (A055377 (n + 4)).toNat + A105571 (n + 1)

end

end A175648.P7395048382111157184

namespace A175648

/-- `A354359(A055377(n+4))+A105571(n+1)` -/
def P7395048382111157184.Spec : Prop :=
  ∀ n, P7395048382111157184.a n = A175648 (n + 1)

end A175648

/-! ## A175648.P2620209135010887620

`∩[A001358(n+1)-4, A001358(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175648

/-- `∩[A001358(n+1)-4, A001358(n+1)]` -/
def P2620209135010887620.Spec : Prop :=
  ∀ n, (P2620209135010887620.a n : ℤ) = A175648 (n + 1)

theorem P2620209135010887620.correct : P2620209135010887620.Spec := by
  intro n
  simp only [A175648, Nat.add_sub_cancel]

end A175648

/-! ## A175648.P3394989443347679277

`∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]` with `a(0)=0`
-/

namespace A175648.P3394989443347679277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175648.P3394989443347679277

namespace A175648

/-- `∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]` -/
def P3394989443347679277.Spec : Prop :=
  ∀ n, (P3394989443347679277.a n : ℤ) = A175648 (n + 1)

end A175648

/-! ## A175648.P2821734520992917152

`∩[A100493(n+1)-(n+1), A065516(n)+a(n-1)]` with `a(0)=0`
-/

namespace A175648.P2821734520992917152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175648.P2821734520992917152

namespace A175648

/-- `∩[A100493(n+1)-(n+1), A065516(n)+a(n-1)]` -/
def P2821734520992917152.Spec : Prop :=
  ∀ n, (P2821734520992917152.a n : ℤ) = A175648 (n + 1)

end A175648

/-! ## A175648.P5643822245297587293

`A354359(A000040(n+1))+A105571(n+1)`
-/

namespace A175648.P5643822245297587293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354359 (A000040 (n + 1)).toNat + A105571 (n + 1)

end

end A175648.P5643822245297587293

namespace A175648

/-- `A354359(A000040(n+1))+A105571(n+1)` -/
def P5643822245297587293.Spec : Prop :=
  ∀ n, P5643822245297587293.a n = A175648 (n + 1)

end A175648

/-! ## A175648.P6673373812399846429

`A175664(n+1)-4`
-/

namespace A175648.P6673373812399846429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1) - 4

end

end A175648.P6673373812399846429

namespace A175648

/-- `A175664(n+1)-4` -/
def P6673373812399846429.Spec : Prop :=
  ∀ n, P6673373812399846429.a n = A175648 (n + 1)

end A175648

/-! ## A175648.P14952041688537605532

`A023444(A105571(n+1))`
-/

namespace A175648.P14952041688537605532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A105571 (n + 1)).toNat

end

end A175648.P14952041688537605532

namespace A175648

/-- `A023444(A105571(n+1))` -/
def P14952041688537605532.Spec : Prop :=
  ∀ n, P14952041688537605532.a n = A175648 (n + 1)

end A175648

/-! ## A175648.P3739323363376059836

`A023446(A175664(n+1))`
-/

namespace A175648.P3739323363376059836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A175664 (n + 1)).toNat

end

end A175648.P3739323363376059836

namespace A175648

/-- `A023446(A175664(n+1))` -/
def P3739323363376059836.Spec : Prop :=
  ∀ n, P3739323363376059836.a n = A175648 (n + 1)

end A175648

/-! ## A175648.P17290623277668599787

`eq[A001222(n+1), A323193(A200927(n+5)+1)]+1`
-/

namespace A175648.P17290623277668599787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323193 (A200927 (n + 5) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175648.P17290623277668599787

namespace A175648

/-- `eq[A001222(n+1), A323193(A200927(n+5)+1)]+1` -/
def P17290623277668599787.Spec : Prop :=
  ∀ n, (P17290623277668599787.a n : ℤ) = A175648 (n + 1)

end A175648

/-!
# A175649: a(n) = sopf(n) + sopf(n+1).

The programs for A175649, the canonical program `A175649.P17311691641978437606` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175649 has offset 1).

The definition of A175649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175649.P17311691641978437606

`∑[∑{p}[n+2, #]-∑{p}[n, #]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175649

/-- `∑[∑{p}[n+2, #]-∑{p}[n, #]]` -/
def P17311691641978437606.Spec : Prop :=
  ∀ n, P17311691641978437606.a n = A175649 (n + 1)

theorem P17311691641978437606.correct : P17311691641978437606.Spec := by
  intro n
  simp only [A175649, Nat.add_sub_cancel]

end A175649

/-! ## A175649.P7409054491807050517

`∑{p}[n+1, #]+∑{p}[n+2, #]`
-/

namespace A175649.P7409054491807050517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + ∑ p ∈ Nat.primeFactors (f2 n), p

end

end A175649.P7409054491807050517

namespace A175649

/-- `∑{p}[n+1, #]+∑{p}[n+2, #]` -/
def P7409054491807050517.Spec : Prop :=
  ∀ n, (P7409054491807050517.a n : ℤ) = A175649 (n + 1)

end A175649

/-! ## A175649.P11283515364805416560

`A008472(n+1)+A008472(n+2)`
-/

namespace A175649.P11283515364805416560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A008472 (n + 2)

end

end A175649.P11283515364805416560

namespace A175649

/-- `A008472(n+1)+A008472(n+2)` -/
def P11283515364805416560.Spec : Prop :=
  ∀ n, P11283515364805416560.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P14319793477101801147

`A024924(n+2)-A024924(n)`
-/

namespace A175649.P14319793477101801147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 (n + 2) - A024924 n

end

end A175649.P14319793477101801147

namespace A175649

/-- `A024924(n+2)-A024924(n)` -/
def P14319793477101801147.Spec : Prop :=
  ∀ n, P14319793477101801147.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P6492320992833201211

`Δ[A024924(n+1)+A024924(n)]`
-/

namespace A175649.P6492320992833201211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 (n + 1) + A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175649.P6492320992833201211

namespace A175649

/-- `Δ[A024924(n+1)+A024924(n)]` -/
def P6492320992833201211.Spec : Prop :=
  ∀ n, P6492320992833201211.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P17879584723756636086

`A254340(n+1)-A076694(n+2)`
-/

namespace A175649.P17879584723756636086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - A076694 (n + 2)

end

end A175649.P17879584723756636086

namespace A175649

/-- `A254340(n+1)-A076694(n+2)` -/
def P17879584723756636086.Spec : Prop :=
  ∀ n, P17879584723756636086.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P78149806120040216

`A005069(n+1)+A005069(n+2)+2`
-/

namespace A175649.P78149806120040216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) + (A005069 (n + 2) + 2)

end

end A175649.P78149806120040216

namespace A175649

/-- `A005069(n+1)+A005069(n+2)+2` -/
def P78149806120040216.Spec : Prop :=
  ∀ n, P78149806120040216.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P2381414438373001912

`A100030(n+1)+A100030(n+2)-2`
-/

namespace A175649.P2381414438373001912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) + (A100030 (n + 2) - 2)

end

end A175649.P2381414438373001912

namespace A175649

/-- `A100030(n+1)+A100030(n+2)-2` -/
def P2381414438373001912.Spec : Prop :=
  ∀ n, P2381414438373001912.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P5828025391237431163

`A100030(n+2)+A091921(2*(n+1))`
-/

namespace A175649.P5828025391237431163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 2) + A091921 (2 * (n + 1))

end

end A175649.P5828025391237431163

namespace A175649

/-- `A100030(n+2)+A091921(2*(n+1))` -/
def P5828025391237431163.Spec : Prop :=
  ∀ n, P5828025391237431163.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P697802519212322784

`A075653(2*(n+1))-A076694(2*(n+2))`
-/

namespace A175649.P697802519212322784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (2 * (n + 1)) - A076694 (2 * (n + 2))

end

end A175649.P697802519212322784

namespace A175649

/-- `A075653(2*(n+1))-A076694(2*(n+2))` -/
def P697802519212322784.Spec : Prop :=
  ∀ n, P697802519212322784.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P4213469949421170988

`∑{p}[A078636(n+1), #]`
-/

namespace A175649.P4213469949421170988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A175649.P4213469949421170988

namespace A175649

/-- `∑{p}[A078636(n+1), #]` -/
def P4213469949421170988.Spec : Prop :=
  ∀ n, (P4213469949421170988.a n : ℤ) = A175649 (n + 1)

end A175649

/-! ## A175649.P76497671457936687

`∑{p}[A083482(n+1), #]`
-/

namespace A175649.P76497671457936687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A175649.P76497671457936687

namespace A175649

/-- `∑{p}[A083482(n+1), #]` -/
def P76497671457936687.Spec : Prop :=
  ∀ n, (P76497671457936687.a n : ℤ) = A175649 (n + 1)

end A175649

/-! ## A175649.P13297984742718566454

`∑{p}[∑[2*(n+1)], #]`
-/

namespace A175649.P13297984742718566454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A175649.P13297984742718566454

namespace A175649

/-- `∑{p}[∑[2*(n+1)], #]` -/
def P13297984742718566454.Spec : Prop :=
  ∀ n, (P13297984742718566454.a n : ℤ) = A175649 (n + 1)

end A175649

/-! ## A175649.P4606240988913098190

`A001414(A078636(n+1)/2)+2`
-/

namespace A175649.P4606240988913098190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A078636 (n + 1) : ℚ) / 2)).toNat + 2

end

end A175649.P4606240988913098190

namespace A175649

/-- `A001414(A078636(n+1)/2)+2` -/
def P4606240988913098190.Spec : Prop :=
  ∀ n, P4606240988913098190.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P5690502732766118049

`∑{p}[A000265(∑[n+1]), #]+2`
-/

namespace A175649.P5690502732766118049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p + 2

end

end A175649.P5690502732766118049

namespace A175649

/-- `∑{p}[A000265(∑[n+1]), #]+2` -/
def P5690502732766118049.Spec : Prop :=
  ∀ n, (P5690502732766118049.a n : ℤ) = A175649 (n + 1)

end A175649

/-! ## A175649.P4595838992301407451

`A008475(∏{p}[(n+1)²+n+1, #])`
-/

namespace A175649.P4595838992301407451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A175649.P4595838992301407451

namespace A175649

/-- `A008475(∏{p}[(n+1)²+n+1, #])` -/
def P4595838992301407451.Spec : Prop :=
  ∀ n, P4595838992301407451.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P15281769718400217701

`A001414(A078636(n+1))`
-/

namespace A175649.P15281769718400217701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078636 (n + 1)).toNat

end

end A175649.P15281769718400217701

namespace A175649

/-- `A001414(A078636(n+1))` -/
def P15281769718400217701.Spec : Prop :=
  ∀ n, P15281769718400217701.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P10011874610222701317

`A008472(A083482(n+1))`
-/

namespace A175649.P10011874610222701317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A083482 (n + 1)).toNat

end

end A175649.P10011874610222701317

namespace A175649

/-- `A008472(A083482(n+1))` -/
def P10011874610222701317.Spec : Prop :=
  ∀ n, P10011874610222701317.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P12425449226926879787

`A008472(∑[2*(n+1)])`
-/

namespace A175649.P12425449226926879787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175649.P12425449226926879787

namespace A175649

/-- `A008472(∑[2*(n+1)])` -/
def P12425449226926879787.Spec : Prop :=
  ∀ n, P12425449226926879787.a n = A175649 (n + 1)

end A175649

/-! ## A175649.P11430297540832842322

`A001414(A007947((n+1)*(n+2)))`
-/

namespace A175649.P11430297540832842322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 ((n + 1) * (n + 2))).toNat

end

end A175649.P11430297540832842322

namespace A175649

/-- `A001414(A007947((n+1)*(n+2)))` -/
def P11430297540832842322.Spec : Prop :=
  ∀ n, P11430297540832842322.a n = A175649 (n + 1)

end A175649

/-!
# A175650: a(n)=A066031(n)/sopf(A066031(n)).

The programs for A175650, the canonical program `A175650.P13498547051456420032` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175650 has offset 1).

The definition of A175650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175650.P13498547051456420032

`A066031(n+1)/∑{p}[A066031(n+1), #]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A175650

/-- `A066031(n+1)/∑{p}[A066031(n+1), #]` -/
def P13498547051456420032.Spec : Prop :=
  ∀ n, P13498547051456420032.a n = (A175650 (n + 1) : ℚ)

end A175650

/-! ## A175650.P8405905715889508886

`A066031(n+1)/A008472(A066031(n+1))`
-/

namespace A175650.P8405905715889508886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066031 (n + 1) : ℚ) / (A008472 (A066031 (n + 1)).toNat : ℚ)

end

end A175650.P8405905715889508886

namespace A175650

/-- `A066031(n+1)/A008472(A066031(n+1))` -/
def P8405905715889508886.Spec : Prop :=
  ∀ n, P8405905715889508886.a n = (A175650 (n + 1) : ℚ)

end A175650

/-! ## A175650.P11552145247027742352

`A164879(A066031(n+1))`
-/

namespace A175650.P11552145247027742352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164879 (A066031 (n + 1)).toNat

end

end A175650.P11552145247027742352

namespace A175650

/-- `A164879(A066031(n+1))` -/
def P11552145247027742352.Spec : Prop :=
  ∀ n, P11552145247027742352.a n = A175650 (n + 1)

end A175650

/-!
# A175651: Numbers n with property that sopf(n)+sopf(n+1) is a square.

The programs for A175651, there is no canonical definition to state claims against.
-/

/-! ## A175651.P15406548948588417721

`eq[1, A010052(A008472((n+2)*(n+1)))]+1`
-/

namespace A175651.P15406548948588417721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008472 ((n + 2) * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175651.P15406548948588417721

/-! ## A175651.P4928697784731622616

`A344154(A014574(n+1))+A068212(n+3)`
-/

namespace A175651.P4928697784731622616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344154 (A014574 (n + 1)).toNat + A068212 (n + 3)

end

end A175651.P4928697784731622616

/-! ## A175651.P7158165380423097217

`A112055(A014574(n+1))-A359377(n+4)`
-/

namespace A175651.P7158165380423097217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (A014574 (n + 1)).toNat - A359377 (n + 4)

end

end A175651.P7158165380423097217

/-!
# A175652: Squares in A175649.

The programs for A175652, there is no canonical definition to state claims against.
-/

/-! ## A175652.P7925747120016173100

`A175649(A175651(n+1))`
-/

namespace A175652.P7925747120016173100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175649 (A175651 (n + 1)).toNat

end

end A175652.P7925747120016173100

/-! ## A175652.P14458719975972270609

`A175653(n+1)²`
-/

namespace A175652.P14458719975972270609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175653 (n + 1) ^ 2

end

end A175652.P14458719975972270609

/-! ## A175652.P2705158465111004242

`A175653(2*(n+1)-(n+1))^2`
-/

namespace A175652.P2705158465111004242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175653 (2 * (n + 1) - (n + 1)) ^ 2

end

end A175652.P2705158465111004242

/-! ## A175652.P18429225693887959475

`A175653(A000027(n+1))*A175653(n+1)`
-/

namespace A175652.P18429225693887959475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175653 (A000027 (n + 1)).toNat * A175653 (n + 1)

end

end A175652.P18429225693887959475

/-! ## A175652.P15506623814336578339

`A175653(n+1)*A175653((n+1)%A001043(n+1))`
-/

namespace A175652.P15506623814336578339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175653 (n + 1) * A175653 (Int.tmod (n + 1 : ℤ) (A001043 (n + 1))).toNat

end

end A175652.P15506623814336578339

/-! ## A175652.P14817105887369094470

`A175653(n+1)%A175651(n+1)*A175653(n+1)`
-/

namespace A175652.P14817105887369094470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175653 (n + 1)) (A175651 (n + 1)) * A175653 (n + 1)

end

end A175652.P14817105887369094470

/-!
# A175653: a(n) = sqrt(A175652(n)).

The programs for A175653, there is no canonical definition to state claims against.
-/

/-! ## A175653.P12082362379531229918

`sqrt(A175652(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175653.P12082362379531229918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175652 (n + 1) : ℝ)

end

end A175653.P12082362379531229918

/-! ## A175653.P11552485417907222603

`A056926(A175652(n+1))%A091574(n)`
-/

namespace A175653.P11552485417907222603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A175652 (n + 1)).toNat) (A091574 n)

end

end A175653.P11552485417907222603

/-! ## A175653.P18004476097290079952

`A056926(A175652(n+1))+A000007(n+2)`
-/

namespace A175653.P18004476097290079952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A175652 (n + 1)).toNat + A000007 (n + 2)

end

end A175653.P18004476097290079952

/-! ## A175653.P10618081422888378586

`A056926(2*A175652(n+1)-A175652(n+1))`
-/

namespace A175653.P10618081422888378586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A175652 (n + 1) - A175652 (n + 1)).toNat

end

end A175653.P10618081422888378586

/-! ## A175653.P14572922083565742503

`root(A175652(n+1), ratio[A000079(n)])`
-/

namespace A175653.P14572922083565742503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175652 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A175653.P14572922083565742503

/-! ## A175653.P15960487459766548369

`A329888(A329888(A175652(n+1))²)`
-/

namespace A175653.P15960487459766548369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A329888 (A175652 (n + 1)).toNat ^ 2).toNat

end

end A175653.P15960487459766548369

/-! ## A175653.P11641825342187034461

`A329888(A175652(n+1)%A147573(n+1))`
-/

namespace A175653.P11641825342187034461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (Int.tmod (A175652 (n + 1)) (A147573 (n + 1))).toNat

end

end A175653.P11641825342187034461

/-! ## A175653.P9801072537370795224

`A000196(A175652(n+1)+1)`
-/

namespace A175653.P9801072537370795224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A175652 (n + 1) + 1).toNat

end

end A175653.P9801072537370795224

/-! ## A175653.P5641352038916446837

`A004739(A175652(n+1)+1)`
-/

namespace A175653.P5641352038916446837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A175652 (n + 1) + 1).toNat

end

end A175653.P5641352038916446837

/-! ## A175653.P13844023978639919126

`A137735(A175652(n+1)+1)`
-/

namespace A175653.P13844023978639919126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A175652 (n + 1) + 1).toNat

end

end A175653.P13844023978639919126

/-! ## A175653.P7674856075260646781

`A209302(A175652(n+1)+1)-1`
-/

namespace A175653.P7674856075260646781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (A175652 (n + 1) + 1).toNat - 1

end

end A175653.P7674856075260646781

/-! ## A175653.P9704820431727370359

`A000188(A175652(n+1))%A047842(n)`
-/

namespace A175653.P9704820431727370359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A175652 (n + 1)).toNat) (A047842 n)

end

end A175653.P9704820431727370359

/-! ## A175653.P6757405608503550338

`A209302(A175652(n+1))%A242475(n)`
-/

namespace A175653.P6757405608503550338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209302 (A175652 (n + 1)).toNat) (A242475 n)

end

end A175653.P6757405608503550338

/-! ## A175653.P13909875547635747858

`A019554(A175652(n+1))%A093022(n+1)`
-/

namespace A175653.P13909875547635747858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019554 (A175652 (n + 1)).toNat) (A093022 (n + 1))

end

end A175653.P13909875547635747858

/-! ## A175653.P9695675483496195418

`A331958(A175652(n+1))%A080194(n+1)`
-/

namespace A175653.P9695675483496195418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331958 (A175652 (n + 1)).toNat) (A080194 (n + 1))

end

end A175653.P9695675483496195418

/-! ## A175653.P395774114281337732

`A019554(2*A175652(n+1)-A175652(n+1))`
-/

namespace A175653.P395774114281337732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (2 * A175652 (n + 1) - A175652 (n + 1)).toNat

end

end A175653.P395774114281337732

/-! ## A175653.P17806430014836144612

`A331958(2*A175652(n+1)-A175652(n+1))`
-/

namespace A175653.P17806430014836144612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (2 * A175652 (n + 1) - A175652 (n + 1)).toNat

end

end A175653.P17806430014836144612

/-! ## A175653.P9024680812157246151

`A329888(2*A175652(n+1))`
-/

namespace A175653.P9024680812157246151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (2 * A175652 (n + 1)).toNat

end

end A175653.P9024680812157246151

/-! ## A175653.P12185656427617619781

`A331958(2*A175652(n+1))`
-/

namespace A175653.P12185656427617619781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (2 * A175652 (n + 1)).toNat

end

end A175653.P12185656427617619781

/-! ## A175653.P14996168821939504933

`A019554(2*A175652(n+1))/2`
-/

namespace A175653.P14996168821939504933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * A175652 (n + 1)).toNat : ℚ) / 2

end

end A175653.P14996168821939504933

/-!
# A175654: Eight bishops and one elephant on a 3 X 3 chessboard. G.f.: (1 - x - x^2)/(1 - 3*x - x^2 + 6*x^3).

The programs for A175654, the canonical program `A175654.P10714757702589374977` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175654 has offset 0).

The definition of A175654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175654.P10714757702589374977

`2*A006138(n)-2^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175654

/-- `2*A006138(n)-2^n` -/
def P10714757702589374977.Spec : Prop :=
  ∀ n, P10714757702589374977.a n = A175654 n

theorem P10714757702589374977.correct : P10714757702589374977.Spec := by
  intro n
  simp only [A175654]

end A175654

/-! ## A175654.P13465785199355763341

`3*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A175654.P13465785199355763341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  3 * a (n - 1) + a (n - 2) - 6 * a (n - 3)

end

end A175654.P13465785199355763341

namespace A175654

/-- `3*a(n-1)+a(n-2)-6*a(n-3)` -/
def P13465785199355763341.Spec : Prop :=
  ∀ n, P13465785199355763341.a n = A175654 n

end A175654

/-! ## A175654.P149448346810737075

`A175655(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A175654.P149448346810737075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175655 (n - 1) + a (n - 1)

end

end A175654.P149448346810737075

namespace A175654

/-- `A175655(n-1)+a(n-1)` -/
def P149448346810737075.Spec : Prop :=
  ∀ n, P149448346810737075.a n = A175654 n

end A175654

/-! ## A175654.P7745206163058218716

`∑[A175655(A004273(n)-n)]`
-/

namespace A175654.P7745206163058218716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175655 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175654.P7745206163058218716

namespace A175654

/-- `∑[A175655(A004273(n)-n)]` -/
def P7745206163058218716.Spec : Prop :=
  ∀ n, P7745206163058218716.a n = A175654 n

end A175654

/-! ## A175654.P10589451017471939129

`∑[2*A105476(n)]-A000079(n)`
-/

namespace A175654.P10589451017471939129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000079 n

end

end A175654.P10589451017471939129

namespace A175654

/-- `∑[2*A105476(n)]-A000079(n)` -/
def P10589451017471939129.Spec : Prop :=
  ∀ n, P10589451017471939129.a n = A175654 n

end A175654

/-! ## A175654.P133292725481243793

`∑[A175655(A004526(A004273(n)))]`
-/

namespace A175654.P133292725481243793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175655 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175654.P133292725481243793

namespace A175654

/-- `∑[A175655(A004526(A004273(n)))]` -/
def P133292725481243793.Spec : Prop :=
  ∀ n, P133292725481243793.a n = A175654 n

end A175654

/-! ## A175654.P16192816538852338508

`A006138(n)+A006138(n)-A000079(n)`
-/

namespace A175654.P16192816538852338508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + (A006138 n - A000079 n)

end

end A175654.P16192816538852338508

namespace A175654

/-- `A006138(n)+A006138(n)-A000079(n)` -/
def P16192816538852338508.Spec : Prop :=
  ∀ n, P16192816538852338508.a n = A175654 n

end A175654

/-! ## A175654.P5321637949202877493

`A006130(n+1)+A052533(n)-A000079(n)`
-/

namespace A175654.P5321637949202877493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A052533 n - A000079 n)

end

end A175654.P5321637949202877493

namespace A175654

/-- `A006130(n+1)+A052533(n)-A000079(n)` -/
def P5321637949202877493.Spec : Prop :=
  ∀ n, P5321637949202877493.a n = A175654 n

end A175654

/-! ## A175654.P3614556404816030869

`(A175655(n+1)-2^n)/3`
-/

namespace A175654.P3614556404816030869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175655 (n + 1) - (2 ^ n : ℤ) : ℚ) / 3

end

end A175654.P3614556404816030869

namespace A175654

/-- `(A175655(n+1)-2^n)/3` -/
def P3614556404816030869.Spec : Prop :=
  ∀ n, P3614556404816030869.a n = (A175654 n : ℚ)

end A175654

/-! ## A175654.P11517366131299409823

`∑[A175655(n)]+1-A175655(n)`
-/

namespace A175654.P11517366131299409823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A175655 n)

end

end A175654.P11517366131299409823

namespace A175654

/-- `∑[A175655(n)]+1-A175655(n)` -/
def P11517366131299409823.Spec : Prop :=
  ∀ n, P11517366131299409823.a n = A175654 n

end A175654

/-! ## A175654.P14528341013282500990

`A175655(n+1)-(A228661(n+1)+A175655(n))`
-/

namespace A175654.P14528341013282500990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175655 (n + 1) - (A228661 (n + 1) + A175655 n)

end

end A175654.P14528341013282500990

namespace A175654

/-- `A175655(n+1)-(A228661(n+1)+A175655(n))` -/
def P14528341013282500990.Spec : Prop :=
  ∀ n, P14528341013282500990.a n = A175654 n

end A175654

/-!
# A175655: Eight bishops and one elephant on a 3 X 3 chessboard. G.f.: (1+x-5*x^2)/(1-3*x-x^2+6*x^3).

The programs for A175655, the canonical program `A175655.P16718092136169777808` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175655 has offset 0).

The definition of A175655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175655.P16718092136169777808

`3*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175655

/-- `3*a(n-1)+a(n-2)-6*a(n-3)` -/
def P16718092136169777808.Spec : Prop :=
  ∀ n, P16718092136169777808.a n = A175655 n

theorem P16718092136169777808.correct : P16718092136169777808.Spec := by
  intro n
  simp only [A175655]

end A175655

/-! ## A175655.P14198919330341230914

`A384614(n+1)-2^n`
-/

namespace A175655.P14198919330341230914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384614 (n + 1) - (2 ^ n : ℤ)

end

end A175655.P14198919330341230914

namespace A175655

/-- `A384614(n+1)-2^n` -/
def P14198919330341230914.Spec : Prop :=
  ∀ n, P14198919330341230914.a n = A175655 n

end A175655

/-! ## A175655.P981616004967540093

`A052533(n)+A274977(n)-A000079(n)`
-/

namespace A175655.P981616004967540093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n + (A274977 n - A000079 n)

end

end A175655.P981616004967540093

namespace A175655

/-- `A052533(n)+A274977(n)-A000079(n)` -/
def P981616004967540093.Spec : Prop :=
  ∀ n, P981616004967540093.a n = A175655 n

end A175655

/-! ## A175655.P7612933007040836251

`A006130(n+1)+A175654(n)-A006138(n)`
-/

namespace A175655.P7612933007040836251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A175654 n - A006138 n)

end

end A175655.P7612933007040836251

namespace A175655

/-- `A006130(n+1)+A175654(n)-A006138(n)` -/
def P7612933007040836251.Spec : Prop :=
  ∀ n, P7612933007040836251.a n = A175655 n

end A175655

/-! ## A175655.P9618833695837006280

`A175654(n)+A274977(n)-A006130(n+1)`
-/

namespace A175655.P9618833695837006280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 n + (A274977 n - A006130 (n + 1))

end

end A175655.P9618833695837006280

namespace A175655

/-- `A175654(n)+A274977(n)-A006130(n+1)` -/
def P9618833695837006280.Spec : Prop :=
  ∀ n, P9618833695837006280.a n = A175655 n

end A175655

/-! ## A175655.P12516572291409710629

`A105476(n+1)+A105476(n+1)-A000079(n)`
-/

namespace A175655.P12516572291409710629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 1) + (A105476 (n + 1) - A000079 n)

end

end A175655.P12516572291409710629

namespace A175655

/-- `A105476(n+1)+A105476(n+1)-A000079(n)` -/
def P12516572291409710629.Spec : Prop :=
  ∀ n, P12516572291409710629.a n = A175655 n

end A175655

/-! ## A175655.P4481384641476681888

`Δ[A175654(n)]`
-/

namespace A175655.P4481384641476681888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175655.P4481384641476681888

namespace A175655

/-- `Δ[A175654(n)]` -/
def P4481384641476681888.Spec : Prop :=
  ∀ n, P4481384641476681888.a n = A175655 n

end A175655

/-! ## A175655.P13956520278009735151

`A175654(n+1)-A175654(n)`
-/

namespace A175655.P13956520278009735151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 (n + 1) - A175654 n

end

end A175655.P13956520278009735151

namespace A175655

/-- `A175654(n+1)-A175654(n)` -/
def P13956520278009735151.Spec : Prop :=
  ∀ n, P13956520278009735151.a n = A175655 n

end A175655

/-! ## A175655.P16154359629015771434

`Δ[2*A006138(n)-A000079(n)]`
-/

namespace A175655.P16154359629015771434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006138 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175655.P16154359629015771434

namespace A175655

/-- `Δ[2*A006138(n)-A000079(n)]` -/
def P16154359629015771434.Spec : Prop :=
  ∀ n, P16154359629015771434.a n = A175655 n

end A175655

/-! ## A175655.P14528070574223381883

`Δ[∑[2*A105476(n)]-A000079(n)]`
-/

namespace A175655.P14528070574223381883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175655.P14528070574223381883

namespace A175655

/-- `Δ[∑[2*A105476(n)]-A000079(n)]` -/
def P14528070574223381883.Spec : Prop :=
  ∀ n, P14528070574223381883.a n = A175655 n

end A175655

/-!
# A175656: Eight bishops and one elephant on a 3 X 3 chessboard. G.f.: (1-3*x^2)/(1-3*x+4*x^3).

The programs for A175656, the canonical program `A175656.P11648246623619363338` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175656 has offset 0).

The definition of A175656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175656.P11648246623619363338

`3*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175656

/-- `3*a(n-1)-4*a(n-3)` -/
def P11648246623619363338.Spec : Prop :=
  ∀ n, P11648246623619363338.a n = A175656 n

theorem P11648246623619363338.correct : P11648246623619363338.Spec := by
  intro n
  simp only [A175656]

end A175656

/-! ## A175656.P9763015346571801702

`((3*n+22)*2^n-4*(-1)^n)/18`
-/

namespace A175656.P9763015346571801702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * n + 22) * 2 ^ n : ℤ) - 4 * (-1) ^ n : ℚ) / 18

end

end A175656.P9763015346571801702

namespace A175656

/-- `((3*n+22)*2^n-4*(-1)^n)/18` -/
def P9763015346571801702.Spec : Prop :=
  ∀ n, P9763015346571801702.a n = (A175656 n : ℚ)

theorem P9763015346571801702.correct : P9763015346571801702.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A175656, Nat.add_sub_cancel, A175656.P9763015346571801702.a, A175656.P11648246623619363338.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h3 := ih m (by omega)
      simp only [A175656, Nat.add_sub_cancel, A175656.P9763015346571801702.a, A175656.P11648246623619363338.a, SequenceMachineLib.memo_apply] at h1 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h3 ⊢
      rw [← h1, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175656

/-! ## A175656.P1373707489517509403

`∑[A219751(n+3)]+1`
-/

namespace A175656.P1373707489517509403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219751 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175656.P1373707489517509403

namespace A175656

/-- `∑[A219751(n+3)]+1` -/
def P1373707489517509403.Spec : Prop :=
  ∀ n, P1373707489517509403.a n = A175656 n

end A175656

/-! ## A175656.P12079243169573553597

`A172481(n)+A001045(n)`
-/

namespace A175656.P12079243169573553597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n + A001045 n

end

end A175656.P12079243169573553597

namespace A175656

/-- `A172481(n)+A001045(n)` -/
def P12079243169573553597.Spec : Prop :=
  ∀ n, P12079243169573553597.a n = A175656 n

end A175656

/-! ## A175656.P16622089402860148447

`A291023(n)+A078008(n)`
-/

namespace A175656.P16622089402860148447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291023 n + A078008 n

end

end A175656.P16622089402860148447

namespace A175656

/-- `A291023(n)+A078008(n)` -/
def P16622089402860148447.Spec : Prop :=
  ∀ n, P16622089402860148447.a n = A175656 n

end A175656

/-! ## A175656.P14889928308972163255

`A062092(n)-A139790(n)`
-/

namespace A175656.P14889928308972163255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - A139790 n

end

end A175656.P14889928308972163255

namespace A175656

/-- `A062092(n)-A139790(n)` -/
def P14889928308972163255.Spec : Prop :=
  ∀ n, P14889928308972163255.a n = A175656 n

end A175656

/-! ## A175656.P16822775470689039517

`A136298(n+1)-A001045(n+1)`
-/

namespace A175656.P16822775470689039517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 (n + 1) - A001045 (n + 1)

end

end A175656.P16822775470689039517

namespace A175656

/-- `A136298(n+1)-A001045(n+1)` -/
def P16822775470689039517.Spec : Prop :=
  ∀ n, P16822775470689039517.a n = A175656 n

end A175656

/-! ## A175656.P14476772171272248061

`A131666(n+1)+A172481(n)+A113405(n)`
-/

namespace A175656.P14476772171272248061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) + (A172481 n + A113405 n)

end

end A175656.P14476772171272248061

namespace A175656

/-- `A131666(n+1)+A172481(n)+A113405(n)` -/
def P14476772171272248061.Spec : Prop :=
  ∀ n, P14476772171272248061.a n = A175656 n

end A175656

/-! ## A175656.P1402761548413367846

`A005578(n+1)+A172481(n)-A005578(n)`
-/

namespace A175656.P1402761548413367846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) + (A172481 n - A005578 n)

end

end A175656.P1402761548413367846

namespace A175656

/-- `A005578(n+1)+A172481(n)-A005578(n)` -/
def P1402761548413367846.Spec : Prop :=
  ∀ n, P1402761548413367846.a n = A175656 n

end A175656

/-! ## A175656.P6122793225770092696

`A136298(n+1)-(A113954(n+1)+A113954(n))`
-/

namespace A175656.P6122793225770092696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 (n + 1) - (A113954 (n + 1) + A113954 n)

end

end A175656.P6122793225770092696

namespace A175656

/-- `A136298(n+1)-(A113954(n+1)+A113954(n))` -/
def P6122793225770092696.Spec : Prop :=
  ∀ n, P6122793225770092696.a n = A175656 n

end A175656

/-! ## A175656.P18019949097110055294

`Δ[A172481(n)]`
-/

namespace A175656.P18019949097110055294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175656.P18019949097110055294

namespace A175656

/-- `Δ[A172481(n)]` -/
def P18019949097110055294.Spec : Prop :=
  ∀ n, P18019949097110055294.a n = A175656 n

end A175656

/-! ## A175656.P7920690592697209111

`A109975(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A175656.P7920690592697209111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109975 (n + 1) - a (n - 1)

end

end A175656.P7920690592697209111

namespace A175656

/-- `A109975(n+1)-a(n-1)` -/
def P7920690592697209111.Spec : Prop :=
  ∀ n, P7920690592697209111.a n = A175656 n

end A175656

/-! ## A175656.P14270677367187502300

`A034007(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A175656.P14270677367187502300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034007 (n + 2) - a (n - 1)

end

end A175656.P14270677367187502300

namespace A175656

/-- `A034007(n+2)-a(n-1)` -/
def P14270677367187502300.Spec : Prop :=
  ∀ n, P14270677367187502300.a n = A175656 n

end A175656

/-! ## A175656.P6257321428188666085

`A045623(n)+2^n-a(n-1)` with `a(0)=1`
-/

namespace A175656.P6257321428188666085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045623 n + (2 ^ n : ℤ) - a (n - 1)

end

end A175656.P6257321428188666085

namespace A175656

/-- `A045623(n)+2^n-a(n-1)` -/
def P6257321428188666085.Spec : Prop :=
  ∀ n, P6257321428188666085.a n = A175656 n

end A175656

/-! ## A175656.P8518790176270974691

`A139790(n)+A045883(n)`
-/

namespace A175656.P8518790176270974691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139790 n + A045883 n

end

end A175656.P8518790176270974691

namespace A175656

/-- `A139790(n)+A045883(n)` -/
def P8518790176270974691.Spec : Prop :=
  ∀ n, P8518790176270974691.a n = A175656 n

end A175656

/-! ## A175656.P431673163087892354

`A172481(n+1)-A172481(n)`
-/

namespace A175656.P431673163087892354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (n + 1) - A172481 n

end

end A175656.P431673163087892354

namespace A175656

/-- `A172481(n+1)-A172481(n)` -/
def P431673163087892354.Spec : Prop :=
  ∀ n, P431673163087892354.a n = A175656 n

end A175656

/-! ## A175656.P3310668871627396515

`A283642(n)+A140960(n)/2`
-/

namespace A175656.P3310668871627396515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283642 n : ℚ) + (A140960 n : ℚ) / 2

end

end A175656.P3310668871627396515

namespace A175656

/-- `A283642(n)+A140960(n)/2` -/
def P3310668871627396515.Spec : Prop :=
  ∀ n, P3310668871627396515.a n = (A175656 n : ℚ)

end A175656

/-! ## A175656.P9874803491286659043

`Δ[A136298(n+1)-A000225(n)]`
-/

namespace A175656.P9874803491286659043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 (n + 1) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175656.P9874803491286659043

namespace A175656

/-- `Δ[A136298(n+1)-A000225(n)]` -/
def P9874803491286659043.Spec : Prop :=
  ∀ n, P9874803491286659043.a n = A175656 n

end A175656

/-! ## A175656.P13619016604239511212

`A045883(n)-(A140960(n)-A172481(n))`
-/

namespace A175656.P13619016604239511212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n - (A140960 n - A172481 n)

end

end A175656.P13619016604239511212

namespace A175656

/-- `A045883(n)-(A140960(n)-A172481(n))` -/
def P13619016604239511212.Spec : Prop :=
  ∀ n, P13619016604239511212.a n = A175656 n

end A175656

/-!
# A175657: Eight bishops and one elephant on a 3 X 3 chessboard: a(n) = 3*2^n - 2*F(n+1), with F(n) = A000045(n).

The programs for A175657, the canonical program `A175657.P205576946187073461` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175657 has offset 0).

The definition of A175657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175657.P205576946187073461

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175657

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P205576946187073461.Spec : Prop :=
  ∀ n, P205576946187073461.a n = A175657 n

theorem P205576946187073461.correct : P205576946187073461.Spec := by
  intro n
  simp only [A175657]

end A175657

/-! ## A175657.P3585163308065695257

`3*2^n-2*A000045(n+1)`
-/

namespace A175657.P3585163308065695257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2 * A000045 (n + 1)

end

end A175657.P3585163308065695257

namespace A175657

/-- `3*2^n-2*A000045(n+1)` -/
def P3585163308065695257.Spec : Prop :=
  ∀ n, P3585163308065695257.a n = A175657 n

end A175657

/-! ## A175657.P7560316003573942835

`2*(A000045(n-2)+a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A175657.P7560316003573942835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (A000045 (n - 2) + a (n - 1))

end

end A175657.P7560316003573942835

namespace A175657

/-- `2*(A000045(n-2)+a(n-1))` -/
def P7560316003573942835.Spec : Prop :=
  ∀ n, P7560316003573942835.a n = A175657 n

end A175657

/-! ## A175657.P6854695136487288848

`A104004(n)+A000045(n)`
-/

namespace A175657.P6854695136487288848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n + A000045 n

end

end A175657.P6854695136487288848

namespace A175657

/-- `A104004(n)+A000045(n)` -/
def P6854695136487288848.Spec : Prop :=
  ∀ n, P6854695136487288848.a n = A175657 n

end A175657

/-! ## A175657.P17501136104453192485

`A221719(n)+A001611(n)`
-/

namespace A175657.P17501136104453192485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221719 n + A001611 n

end

end A175657.P17501136104453192485

namespace A175657

/-- `A221719(n)+A001611(n)` -/
def P17501136104453192485.Spec : Prop :=
  ∀ n, P17501136104453192485.a n = A175657 n

end A175657

/-! ## A175657.P9035371127709473475

`A126646(n)+A119587(n)`
-/

namespace A175657.P9035371127709473475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A119587 n

end

end A175657.P9035371127709473475

namespace A175657

/-- `A126646(n)+A119587(n)` -/
def P9035371127709473475.Spec : Prop :=
  ∀ n, P9035371127709473475.a n = A175657 n

end A175657

/-! ## A175657.P10085517597504438302

`A027973(n)-A008466(n)`
-/

namespace A175657.P10085517597504438302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n - A008466 n

end

end A175657.P10085517597504438302

namespace A175657

/-- `A027973(n)-A008466(n)` -/
def P10085517597504438302.Spec : Prop :=
  ∀ n, P10085517597504438302.a n = A175657 n

end A175657

/-! ## A175657.P3333360168153634563

`A153893(n)-A001595(n)`
-/

namespace A175657.P3333360168153634563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A001595 n

end

end A175657.P3333360168153634563

namespace A175657

/-- `A153893(n)-A001595(n)` -/
def P3333360168153634563.Spec : Prop :=
  ∀ n, P3333360168153634563.a n = A175657 n

end A175657

/-! ## A175657.P11038423024963186547

`A175661(n)-A027934(n)`
-/

namespace A175657.P11038423024963186547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175661 n - A027934 n

end

end A175657.P11038423024963186547

namespace A175657

/-- `A175661(n)-A027934(n)` -/
def P11038423024963186547.Spec : Prop :=
  ∀ n, P11038423024963186547.a n = A175657 n

end A175657

/-! ## A175657.P772643683981412590

`A007283(n)-∑[A118658(n)]`
-/

namespace A175657.P772643683981412590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175657.P772643683981412590

namespace A175657

/-- `A007283(n)-∑[A118658(n)]` -/
def P772643683981412590.Spec : Prop :=
  ∀ n, P772643683981412590.a n = A175657 n

end A175657

/-! ## A175657.P10230006998900838708

`A119587(n)+A000225(n+1)`
-/

namespace A175657.P10230006998900838708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 n + A000225 (n + 1)

end

end A175657.P10230006998900838708

namespace A175657

/-- `A119587(n)+A000225(n+1)` -/
def P10230006998900838708.Spec : Prop :=
  ∀ n, P10230006998900838708.a n = A175657 n

end A175657

/-! ## A175657.P17370945413141049674

`A099036(n+1)+A027934(n)`
-/

namespace A175657.P17370945413141049674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (n + 1) + A027934 n

end

end A175657.P17370945413141049674

namespace A175657

/-- `A099036(n+1)+A027934(n)` -/
def P17370945413141049674.Spec : Prop :=
  ∀ n, P17370945413141049674.a n = A175657 n

end A175657

/-! ## A175657.P16425989023218229897

`A033484(n)+1-A001595(n)`
-/

namespace A175657.P16425989023218229897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + (1 - A001595 n)

end

end A175657.P16425989023218229897

namespace A175657

/-- `A033484(n)+1-A001595(n)` -/
def P16425989023218229897.Spec : Prop :=
  ∀ n, P16425989023218229897.a n = A175657 n

end A175657

/-! ## A175657.P13729976137614224934

`A033484(n)-A019274(n+1)`
-/

namespace A175657.P13729976137614224934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A019274 (n + 1)

end

end A175657.P13729976137614224934

namespace A175657

/-- `A033484(n)-A019274(n+1)` -/
def P13729976137614224934.Spec : Prop :=
  ∀ n, P13729976137614224934.a n = A175657 n

end A175657

/-! ## A175657.P9545408705019650329

`A007283(n)-A006355(n+2)`
-/

namespace A175657.P9545408705019650329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A006355 (n + 2)

end

end A175657.P9545408705019650329

namespace A175657

/-- `A007283(n)-A006355(n+2)` -/
def P9545408705019650329.Spec : Prop :=
  ∀ n, P9545408705019650329.a n = A175657 n

end A175657

/-! ## A175657.P15920302274046304862

`A007283(n)-A118658(n+2)`
-/

namespace A175657.P15920302274046304862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A118658 (n + 2)

end

end A175657.P15920302274046304862

namespace A175657

/-- `A007283(n)-A118658(n+2)` -/
def P15920302274046304862.Spec : Prop :=
  ∀ n, P15920302274046304862.a n = A175657 n

end A175657

/-! ## A175657.P18061803664914581604

`A000079(n)+2*A027934(n)`
-/

namespace A175657.P18061803664914581604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A027934 n

end

end A175657.P18061803664914581604

namespace A175657

/-- `A000079(n)+2*A027934(n)` -/
def P18061803664914581604.Spec : Prop :=
  ∀ n, P18061803664914581604.a n = A175657 n

end A175657

/-! ## A175657.P5994821210494842814

`A007283(n)-A163733(n+3)`
-/

namespace A175657.P5994821210494842814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A163733 (n + 3)

end

end A175657.P5994821210494842814

namespace A175657

/-- `A007283(n)-A163733(n+3)` -/
def P5994821210494842814.Spec : Prop :=
  ∀ n, P5994821210494842814.a n = A175657 n

end A175657

/-! ## A175657.P3063010030785144455

`A140407(2*n)+A119587(n)`
-/

namespace A175657.P3063010030785144455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (2 * n) + A119587 n

end

end A175657.P3063010030785144455

namespace A175657

/-- `A140407(2*n)+A119587(n)` -/
def P3063010030785144455.Spec : Prop :=
  ∀ n, P3063010030785144455.a n = A175657 n

end A175657

/-!
# A175658: Eight bishops and one elephant on a 3 X 3 chessboard: a(n) = 2*Pell(n+1)+2*Pell(n)-2^n, with Pell = A000129.

The programs for A175658, the canonical program `A175658.P12772594694377596966` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175658 has offset 0).

The definition of A175658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175658.P12772594694377596966

`4*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175658

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P12772594694377596966.Spec : Prop :=
  ∀ n, P12772594694377596966.a n = A175658 n

theorem P12772594694377596966.correct : P12772594694377596966.Spec := by
  intro n
  simp only [A175658]

end A175658

/-! ## A175658.P4735270848188985430

`(1-sqrt(2))^(1+n)+(1+sqrt(2))^(1+n)-2^n`
-/

namespace A175658.P4735270848188985430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.sqrt (2 : ℝ)) ^ (1 + n) + (1 + Real.sqrt (2 : ℝ)) ^ (1 + n) - (2 ^ n : ℝ)

end

end A175658.P4735270848188985430

namespace A175658

/-- `(1-sqrt(2))^(1+n)+(1+sqrt(2))^(1+n)-2^n` -/
def P4735270848188985430.Spec : Prop :=
  ∀ n, P4735270848188985430.a n = (A175658 n : ℝ)

end A175658

/-! ## A175658.P7051546597014036468

`abs(A002203(n+1)-A000079(n))`
-/

namespace A175658.P7051546597014036468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002203 (n + 1) - A000079 n|

end

end A175658.P7051546597014036468

namespace A175658

/-- `abs(A002203(n+1)-A000079(n))` -/
def P7051546597014036468.Spec : Prop :=
  ∀ n, P7051546597014036468.a n = A175658 n

end A175658

/-! ## A175658.P15541285717565430887

`Δ[A156664(n)]`
-/

namespace A175658.P15541285717565430887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P15541285717565430887

namespace A175658

/-- `Δ[A156664(n)]` -/
def P15541285717565430887.Spec : Prop :=
  ∀ n, P15541285717565430887.a n = A175658 n

end A175658

/-! ## A175658.P14725950036149476658

`Δ[A052542(n+1)-2^n]`
-/

namespace A175658.P14725950036149476658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P14725950036149476658

namespace A175658

/-- `Δ[A052542(n+1)-2^n]` -/
def P14725950036149476658.Spec : Prop :=
  ∀ n, P14725950036149476658.a n = A175658 n

end A175658

/-! ## A175658.P15865988864791719454

`Δ[A133654(n+1)-2^n]`
-/

namespace A175658.P15865988864791719454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P15865988864791719454

namespace A175658

/-- `Δ[A133654(n+1)-2^n]` -/
def P15865988864791719454.Spec : Prop :=
  ∀ n, P15865988864791719454.a n = A175658 n

end A175658

/-! ## A175658.P17094481388040144854

`Δ[∑[2*A001333(n)]-2^n]`
-/

namespace A175658.P17094481388040144854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P17094481388040144854

namespace A175658

/-- `Δ[∑[2*A001333(n)]-2^n]` -/
def P17094481388040144854.Spec : Prop :=
  ∀ n, P17094481388040144854.a n = A175658 n

end A175658

/-! ## A175658.P17528635774948988234

`Δ[2*A000129(n+1)-2^n]`
-/

namespace A175658.P17528635774948988234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P17528635774948988234

namespace A175658

/-- `Δ[2*A000129(n+1)-2^n]` -/
def P17528635774948988234.Spec : Prop :=
  ∀ n, P17528635774948988234.a n = A175658 n

end A175658

/-! ## A175658.P1716388563142189056

`Δ[A163271(n+2)-A000079(n)]`
-/

namespace A175658.P1716388563142189056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 2) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P1716388563142189056

namespace A175658

/-- `Δ[A163271(n+2)-A000079(n)]` -/
def P1716388563142189056.Spec : Prop :=
  ∀ n, P1716388563142189056.a n = A175658 n

end A175658

/-! ## A175658.P14960274306733448980

`Δ[Δ[2*A024537(n)-A000079(n)]]`
-/

namespace A175658.P14960274306733448980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024537 n - A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P14960274306733448980

namespace A175658

/-- `Δ[Δ[2*A024537(n)-A000079(n)]]` -/
def P14960274306733448980.Spec : Prop :=
  ∀ n, P14960274306733448980.a n = A175658 n

end A175658

/-! ## A175658.P17464007690137077661

`Δ[Δ[A001333(n+1)-A011782(n+1)]]`
-/

namespace A175658.P17464007690137077661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A011782 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P17464007690137077661

namespace A175658

/-- `Δ[Δ[A001333(n+1)-A011782(n+1)]]` -/
def P17464007690137077661.Spec : Prop :=
  ∀ n, P17464007690137077661.a n = A175658 n

end A175658

/-! ## A175658.P1865632340047281775

`Δ[Δ[A001333(n+1)-A016116(2*n)]]`
-/

namespace A175658.P1865632340047281775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A016116 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175658.P1865632340047281775

namespace A175658

/-- `Δ[Δ[A001333(n+1)-A016116(2*n)]]` -/
def P1865632340047281775.Spec : Prop :=
  ∀ n, P1865632340047281775.a n = A175658 n

end A175658

/-!
# A175659: Eight bishops and one elephant on a 3 X 3 chessboard: a(n)= (3^(n+1)-Jacobsthal(n+1))-(3^n-Jacobsthal(n)), with Jacobsthal=A001045.

The programs for A175659, the canonical program `A175659.P8721435184498672637` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175659 has offset 0).

The definition of A175659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175659.P8721435184498672637

`4*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=6, a(2)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175659

/-- `4*a(n-1)-a(n-2)-6*a(n-3)` -/
def P8721435184498672637.Spec : Prop :=
  ∀ n, P8721435184498672637.a n = A175659 n

theorem P8721435184498672637.correct : P8721435184498672637.Spec := by
  intro n
  simp only [A175659]

end A175659

/-! ## A175659.P14968453427727700741

`Δ[3^n-round(2^n/3)]`
-/

namespace A175659.P14968453427727700741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175659.P14968453427727700741

namespace A175659

/-- `Δ[3^n-round(2^n/3)]` -/
def P14968453427727700741.Spec : Prop :=
  ∀ n, P14968453427727700741.a n = A175659 n

end A175659

/-! ## A175659.P17285966904357663859

`abs(Δ[A093833(n)])`
-/

namespace A175659.P17285966904357663859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175659.P17285966904357663859

namespace A175659

/-- `abs(Δ[A093833(n)])` -/
def P17285966904357663859.Spec : Prop :=
  ∀ n, P17285966904357663859.a n = A175659 n

end A175659

/-! ## A175659.P18273330544584498428

`Δ[3^n]-A078008(n)`
-/

namespace A175659.P18273330544584498428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A078008 n

end

end A175659.P18273330544584498428

namespace A175659

/-- `Δ[3^n]-A078008(n)` -/
def P18273330544584498428.Spec : Prop :=
  ∀ n, P18273330544584498428.a n = A175659 n

end A175659

/-! ## A175659.P1979204556482707944

`A291012(n)-a(n-1)` with `a(0)=1`
-/

namespace A175659.P1979204556482707944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291012 n - a (n - 1)

end

end A175659.P1979204556482707944

namespace A175659

/-- `A291012(n)-a(n-1)` -/
def P1979204556482707944.Spec : Prop :=
  ∀ n, P1979204556482707944.a n = A175659 n

end A175659

/-! ## A175659.P3703625742032005585

`Δ[3^n]-Δ[A001045(n)]`
-/

namespace A175659.P3703625742032005585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (f2 (n + 1) - f2 n)

end

end A175659.P3703625742032005585

namespace A175659

/-- `Δ[3^n]-Δ[A001045(n)]` -/
def P3703625742032005585.Spec : Prop :=
  ∀ n, P3703625742032005585.a n = A175659 n

end A175659

/-! ## A175659.P985234389043234051

`Δ[3^n]-Δ[A128209(n)]`
-/

namespace A175659.P985234389043234051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (f2 (n + 1) - f2 n)

end

end A175659.P985234389043234051

namespace A175659

/-- `Δ[3^n]-Δ[A128209(n)]` -/
def P985234389043234051.Spec : Prop :=
  ∀ n, P985234389043234051.a n = A175659 n

end A175659

/-! ## A175659.P12731156525772919653

`Δ[3^n]-Δ[A153643(n)]`
-/

namespace A175659.P12731156525772919653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (f2 (n + 1) - f2 n)

end

end A175659.P12731156525772919653

namespace A175659

/-- `Δ[3^n]-Δ[A153643(n)]` -/
def P12731156525772919653.Spec : Prop :=
  ∀ n, P12731156525772919653.a n = A175659 n

end A175659

/-! ## A175659.P15289000111662617248

`Δ[3^n]-abs(2-A084247(n))`
-/

namespace A175659.P15289000111662617248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - |2 - A084247 n|

end

end A175659.P15289000111662617248

namespace A175659

/-- `Δ[3^n]-abs(2-A084247(n))` -/
def P15289000111662617248.Spec : Prop :=
  ∀ n, P15289000111662617248.a n = A175659 n

end A175659

/-! ## A175659.P15417000191044691214

`A027649(n)+A014113(n)`
-/

namespace A175659.P15417000191044691214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n + A014113 n

end

end A175659.P15417000191044691214

namespace A175659

/-- `A027649(n)+A014113(n)` -/
def P15417000191044691214.Spec : Prop :=
  ∀ n, P15417000191044691214.a n = A175659 n

end A175659

/-! ## A175659.P3514000405510126890

`A083943(n)+A048473(n)`
-/

namespace A175659.P3514000405510126890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083943 n + A048473 n

end

end A175659.P3514000405510126890

namespace A175659

/-- `A083943(n)+A048473(n)` -/
def P3514000405510126890.Spec : Prop :=
  ∀ n, P3514000405510126890.a n = A175659 n

end A175659

/-! ## A175659.P15256315941369040860

`A105723(n)+A093833(n)`
-/

namespace A175659.P15256315941369040860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 n + A093833 n

end

end A175659.P15256315941369040860

namespace A175659

/-- `A105723(n)+A093833(n)` -/
def P15256315941369040860.Spec : Prop :=
  ∀ n, P15256315941369040860.a n = A175659 n

end A175659

/-! ## A175659.P7030124292479690769

`A081632(n)-A001045(n)`
-/

namespace A175659.P7030124292479690769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081632 n - A001045 n

end

end A175659.P7030124292479690769

namespace A175659

/-- `A081632(n)-A001045(n)` -/
def P7030124292479690769.Spec : Prop :=
  ∀ n, P7030124292479690769.a n = A175659 n

end A175659

/-! ## A175659.P2167595380568044750

`A100774(n)-A153772(n)`
-/

namespace A175659.P2167595380568044750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100774 n - A153772 n

end

end A175659.P2167595380568044750

namespace A175659

/-- `A100774(n)-A153772(n)` -/
def P2167595380568044750.Spec : Prop :=
  ∀ n, P2167595380568044750.a n = A175659 n

end A175659

/-! ## A175659.P8934595607000065497

`A014113(n)+∑[A053581(n)]`
-/

namespace A175659.P8934595607000065497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175659.P8934595607000065497

namespace A175659

/-- `A014113(n)+∑[A053581(n)]` -/
def P8934595607000065497.Spec : Prop :=
  ∀ n, P8934595607000065497.a n = A175659 n

end A175659

/-! ## A175659.P17098641871609937566

`Δ[A052929(n)]-A001045(n)`
-/

namespace A175659.P17098641871609937566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001045 n

end

end A175659.P17098641871609937566

namespace A175659

/-- `Δ[A052929(n)]-A001045(n)` -/
def P17098641871609937566.Spec : Prop :=
  ∀ n, P17098641871609937566.a n = A175659 n

end A175659

/-! ## A175659.P18226989697452298917

`A081632(n)-Δ[A005578(n)]`
-/

namespace A175659.P18226989697452298917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081632 n - (f1 (n + 1) - f1 n)

end

end A175659.P18226989697452298917

namespace A175659

/-- `A081632(n)-Δ[A005578(n)]` -/
def P18226989697452298917.Spec : Prop :=
  ∀ n, P18226989697452298917.a n = A175659 n

end A175659

/-! ## A175659.P1044237031907580443

`A093833(n+1)-A093833(n)`
-/

namespace A175659.P1044237031907580443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093833 (n + 1) - A093833 n

end

end A175659.P1044237031907580443

namespace A175659

/-- `A093833(n+1)-A093833(n)` -/
def P1044237031907580443.Spec : Prop :=
  ∀ n, P1044237031907580443.a n = A175659 n

end A175659

/-! ## A175659.P9639497345392169772

`A027649(n)+2*A001045(n)`
-/

namespace A175659.P9639497345392169772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n + 2 * A001045 n

end

end A175659.P9639497345392169772

namespace A175659

/-- `A027649(n)+2*A001045(n)` -/
def P9639497345392169772.Spec : Prop :=
  ∀ n, P9639497345392169772.a n = A175659 n

end A175659

/-!
# A175660: Eight bishops and one elephant on a 3 X 3 chessboard. a(n) = 2^(n+2) - 3*F(n+2).

The programs for A175660, the canonical program `A175660.P13807091793288846827` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175660 has offset 0).

The definition of A175660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175660.P13807091793288846827

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175660

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P13807091793288846827.Spec : Prop :=
  ∀ n, P13807091793288846827.a n = A175660 n

theorem P13807091793288846827.correct : P13807091793288846827.Spec := by
  intro n
  simp only [A175660]

end A175660

/-! ## A175660.P3857546755727636804

`2^n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A175660.P3857546755727636804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 ^ n + (a (n - 1) + a (n - 2))

end

end A175660.P3857546755727636804

namespace A175660

/-- `2^n+a(n-1)+a(n-2)` -/
def P3857546755727636804.Spec : Prop :=
  ∀ n, (P3857546755727636804.a n : ℤ) = A175660 n

end A175660

/-! ## A175660.P7191297835076736393

`2^(n+2)-A022086(n+2)`
-/

namespace A175660.P7191297835076736393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A022086 (n + 2)

end

end A175660.P7191297835076736393

namespace A175660

/-- `2^(n+2)-A022086(n+2)` -/
def P7191297835076736393.Spec : Prop :=
  ∀ n, P7191297835076736393.a n = A175660 n

end A175660

/-! ## A175660.P3090577601950943582

`2^(n+2)-A097135(n+2)`
-/

namespace A175660.P3090577601950943582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A097135 (n + 2)

end

end A175660.P3090577601950943582

namespace A175660

/-- `2^(n+2)-A097135(n+2)` -/
def P3090577601950943582.Spec : Prop :=
  ∀ n, P3090577601950943582.a n = A175660 n

end A175660

/-! ## A175660.P10383339791597614873

`A175661(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A175660.P10383339791597614873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175661 (n - 1) + a (n - 1)

end

end A175660.P10383339791597614873

namespace A175660

/-- `A175661(n-1)+a(n-1)` -/
def P10383339791597614873.Spec : Prop :=
  ∀ n, P10383339791597614873.a n = A175660 n

end A175660

/-! ## A175660.P12416501163198751155

`2^(n+2)-3*A000045(n+2)`
-/

namespace A175660.P12416501163198751155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - 3 * A000045 (n + 2)

end

end A175660.P12416501163198751155

namespace A175660

/-- `2^(n+2)-3*A000045(n+2)` -/
def P12416501163198751155.Spec : Prop :=
  ∀ n, P12416501163198751155.a n = A175660 n

end A175660

/-! ## A175660.P206217118618344067

`A048492(n)-A192968(n)`
-/

namespace A175660.P206217118618344067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048492 n - A192968 n

end

end A175660.P206217118618344067

namespace A175660

/-- `A048492(n)-A192968(n)` -/
def P206217118618344067.Spec : Prop :=
  ∀ n, P206217118618344067.a n = A175660 n

end A175660

/-! ## A175660.P15734630288489202492

`A104004(n)-A227200(n)`
-/

namespace A175660.P15734630288489202492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n - A227200 n

end

end A175660.P15734630288489202492

namespace A175660

/-- `A104004(n)-A227200(n)` -/
def P15734630288489202492.Spec : Prop :=
  ∀ n, P15734630288489202492.a n = A175660 n

end A175660

/-! ## A175660.P11037707627045229214

`record[A000079(n)-A022086(n)]`
-/

namespace A175660.P11037707627045229214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A022086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175660.P11037707627045229214

namespace A175660

/-- `record[A000079(n)-A022086(n)]` -/
def P11037707627045229214.Spec : Prop :=
  ∀ n, P11037707627045229214.a n = A175660 n

end A175660

/-! ## A175660.P14519698791260101196

`record[A000051(n)-A187893(n)]`
-/

namespace A175660.P14519698791260101196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A187893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175660.P14519698791260101196

namespace A175660

/-- `record[A000051(n)-A187893(n)]` -/
def P14519698791260101196.Spec : Prop :=
  ∀ n, P14519698791260101196.a n = A175660 n

end A175660

/-! ## A175660.P12065220043059508615

`A074878(n+1)+A008466(n)`
-/

namespace A175660.P12065220043059508615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 1) + A008466 n

end

end A175660.P12065220043059508615

namespace A175660

/-- `A074878(n+1)+A008466(n)` -/
def P12065220043059508615.Spec : Prop :=
  ∀ n, P12065220043059508615.a n = A175660 n

end A175660

/-! ## A175660.P12436680309393938623

`A232580(n+2)+A001595(n)`
-/

namespace A175660.P12436680309393938623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 (n + 2) + A001595 n

end

end A175660.P12436680309393938623

namespace A175660

/-- `A232580(n+2)+A001595(n)` -/
def P12436680309393938623.Spec : Prop :=
  ∀ n, P12436680309393938623.a n = A175660 n

end A175660

/-! ## A175660.P14834554089999503451

`A008466(n+2)-A000045(n)`
-/

namespace A175660.P14834554089999503451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 2) - A000045 n

end

end A175660.P14834554089999503451

namespace A175660

/-- `A008466(n+2)-A000045(n)` -/
def P14834554089999503451.Spec : Prop :=
  ∀ n, P14834554089999503451.a n = A175660 n

end A175660

/-! ## A175660.P6566840656921839357

`A389886(n+3)+A099036(n)`
-/

namespace A175660.P6566840656921839357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389886 (n + 3) + A099036 n

end

end A175660.P6566840656921839357

namespace A175660

/-- `A389886(n+3)+A099036(n)` -/
def P6566840656921839357.Spec : Prop :=
  ∀ n, P6566840656921839357.a n = A175660 n

end A175660

/-! ## A175660.P12554197261904044992

`A167821(n+1)+A027934(n+1)`
-/

namespace A175660.P12554197261904044992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + A027934 (n + 1)

end

end A175660.P12554197261904044992

namespace A175660

/-- `A167821(n+1)+A027934(n+1)` -/
def P12554197261904044992.Spec : Prop :=
  ∀ n, P12554197261904044992.a n = A175660 n

end A175660

/-! ## A175660.P17439666697542999797

`A027934(n+2)-A000032(n+1)`
-/

namespace A175660.P17439666697542999797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 2) - A000032 (n + 1)

end

end A175660.P17439666697542999797

namespace A175660

/-- `A027934(n+2)-A000032(n+1)` -/
def P17439666697542999797.Spec : Prop :=
  ∀ n, P17439666697542999797.a n = A175660 n

end A175660

/-! ## A175660.P8013733091687463582

`A000045(n+1)-A227200(n+2)`
-/

namespace A175660.P8013733091687463582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A227200 (n + 2)

end

end A175660.P8013733091687463582

namespace A175660

/-- `A000045(n+1)-A227200(n+2)` -/
def P8013733091687463582.Spec : Prop :=
  ∀ n, P8013733091687463582.a n = A175660 n

end A175660

/-! ## A175660.P7764755830521786315

`A027934(n+1)+2*A008466(n)`
-/

namespace A175660.P7764755830521786315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) + 2 * A008466 n

end

end A175660.P7764755830521786315

namespace A175660

/-- `A027934(n+1)+2*A008466(n)` -/
def P7764755830521786315.Spec : Prop :=
  ∀ n, P7764755830521786315.a n = A175660 n

end A175660

/-! ## A175660.P16691875018193408707

`A000051(n+2)-A187893(n+2)`
-/

namespace A175660.P16691875018193408707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 2) - A187893 (n + 2)

end

end A175660.P16691875018193408707

namespace A175660

/-- `A000051(n+2)-A187893(n+2)` -/
def P16691875018193408707.Spec : Prop :=
  ∀ n, P16691875018193408707.a n = A175660 n

end A175660

/-!
# A175661: Eight bishops and one elephant on a 3 X 3 chessboard: a(n) = 2^(n+2)-3*F(n+1), with F(n) = A000045(n).

The programs for A175661, the canonical program `A175661.P4759741790068237637` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175661 has offset 0).

The definition of A175661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175661.P4759741790068237637

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175661

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P4759741790068237637.Spec : Prop :=
  ∀ n, P4759741790068237637.a n = A175661 n

theorem P4759741790068237637.correct : P4759741790068237637.Spec := by
  intro n
  simp only [A175661]

end A175661

/-! ## A175661.P3973986901271200969

`2^n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A175661.P3973986901271200969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 ^ n + (a (n - 1) + a (n - 2))

end

end A175661.P3973986901271200969

namespace A175661

/-- `2^n+a(n-1)+a(n-2)` -/
def P3973986901271200969.Spec : Prop :=
  ∀ n, (P3973986901271200969.a n : ℤ) = A175661 n

end A175661

/-! ## A175661.P631570143311239465

`2^(n+2)-A022086(n+1)`
-/

namespace A175661.P631570143311239465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A022086 (n + 1)

end

end A175661.P631570143311239465

namespace A175661

/-- `2^(n+2)-A022086(n+1)` -/
def P631570143311239465.Spec : Prop :=
  ∀ n, P631570143311239465.a n = A175661 n

end A175661

/-! ## A175661.P15327811021749717705

`2^(n+2)-A097135(n+1)`
-/

namespace A175661.P15327811021749717705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A097135 (n + 1)

end

end A175661.P15327811021749717705

namespace A175661

/-- `2^(n+2)-A097135(n+1)` -/
def P15327811021749717705.Spec : Prop :=
  ∀ n, P15327811021749717705.a n = A175661 n

end A175661

/-! ## A175661.P8072801347838773586

`2^(n+2)-3*A000045(n+1)`
-/

namespace A175661.P8072801347838773586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - 3 * A000045 (n + 1)

end

end A175661.P8072801347838773586

namespace A175661

/-- `2^(n+2)-3*A000045(n+1)` -/
def P8072801347838773586.Spec : Prop :=
  ∀ n, P8072801347838773586.a n = A175661 n

end A175661

/-! ## A175661.P14486517792960313587

`A027973(n)+A000045(n)`
-/

namespace A175661.P14486517792960313587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n + A000045 n

end

end A175661.P14486517792960313587

namespace A175661

/-- `A027973(n)+A000045(n)` -/
def P14486517792960313587.Spec : Prop :=
  ∀ n, P14486517792960313587.a n = A175661 n

end A175661

/-! ## A175661.P10327477200259982043

`A175657(n)+A027934(n)`
-/

namespace A175661.P10327477200259982043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175657 n + A027934 n

end

end A175661.P10327477200259982043

namespace A175661

/-- `A175657(n)+A027934(n)` -/
def P10327477200259982043.Spec : Prop :=
  ∀ n, P10327477200259982043.a n = A175661 n

end A175661

/-! ## A175661.P10930161369032290151

`A107659(n)-A295735(n)`
-/

namespace A175661.P10930161369032290151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107659 n - A295735 n

end

end A175661.P10930161369032290151

namespace A175661

/-- `A107659(n)-A295735(n)` -/
def P10930161369032290151.Spec : Prop :=
  ∀ n, P10930161369032290151.a n = A175661 n

end A175661

/-! ## A175661.P17690400036520058863

`A250554(n+1)-A131326(n)`
-/

namespace A175661.P17690400036520058863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250554 (n + 1) - A131326 n

end

end A175661.P17690400036520058863

namespace A175661

/-- `A250554(n+1)-A131326(n)` -/
def P17690400036520058863.Spec : Prop :=
  ∀ n, P17690400036520058863.a n = A175661 n

end A175661

/-! ## A175661.P5560901356928446249

`A099036(n+2)-A000032(n)`
-/

namespace A175661.P5560901356928446249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (n + 2) - A000032 n

end

end A175661.P5560901356928446249

namespace A175661

/-- `A099036(n+2)-A000032(n)` -/
def P5560901356928446249.Spec : Prop :=
  ∀ n, P5560901356928446249.a n = A175661 n

end A175661

/-! ## A175661.P1161817667231345201

`A000285(n)-A227200(n+2)`
-/

namespace A175661.P1161817667231345201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A227200 (n + 2)

end

end A175661.P1161817667231345201

namespace A175661

/-- `A000285(n)-A227200(n+2)` -/
def P1161817667231345201.Spec : Prop :=
  ∀ n, P1161817667231345201.a n = A175661 n

end A175661

/-! ## A175661.P3484004570960986441

`A027934(n+2)-A212804(n)`
-/

namespace A175661.P3484004570960986441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 2) - A212804 n

end

end A175661.P3484004570960986441

namespace A175661

/-- `A027934(n+2)-A212804(n)` -/
def P3484004570960986441.Spec : Prop :=
  ∀ n, P3484004570960986441.a n = A175661 n

end A175661

/-! ## A175661.P388207689607609726

`A008466(n+2)+A006355(n+1)`
-/

namespace A175661.P388207689607609726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 2) + A006355 (n + 1)

end

end A175661.P388207689607609726

namespace A175661

/-- `A008466(n+2)+A006355(n+1)` -/
def P388207689607609726.Spec : Prop :=
  ∀ n, P388207689607609726.a n = A175661 n

end A175661

/-! ## A175661.P16122860398380389397

`A167821(n+2)+A000032(n+1)`
-/

namespace A175661.P16122860398380389397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 2) + A000032 (n + 1)

end

end A175661.P16122860398380389397

namespace A175661

/-- `A167821(n+2)+A000032(n+1)` -/
def P16122860398380389397.Spec : Prop :=
  ∀ n, P16122860398380389397.a n = A175661 n

end A175661

/-! ## A175661.P12967749880729465403

`A000051(n+2)-A187893(n+1)`
-/

namespace A175661.P12967749880729465403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 2) - A187893 (n + 1)

end

end A175661.P12967749880729465403

namespace A175661

/-- `A000051(n+2)-A187893(n+1)` -/
def P12967749880729465403.Spec : Prop :=
  ∀ n, P12967749880729465403.a n = A175661 n

end A175661

/-! ## A175661.P14678527126730865825

`A099036(n+1)+2*A027934(n)`
-/

namespace A175661.P14678527126730865825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (n + 1) + 2 * A027934 n

end

end A175661.P14678527126730865825

namespace A175661

/-- `A099036(n+1)+2*A027934(n)` -/
def P14678527126730865825.Spec : Prop :=
  ∀ n, P14678527126730865825.a n = A175661 n

end A175661

/-! ## A175661.P3111410063550166906

`A027383(2*n+1)-A111314(n)`
-/

namespace A175661.P3111410063550166906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n + 1) - A111314 n

end

end A175661.P3111410063550166906

namespace A175661

/-- `A027383(2*n+1)-A111314(n)` -/
def P3111410063550166906.Spec : Prop :=
  ∀ n, P3111410063550166906.a n = A175661 n

end A175661

/-! ## A175661.P5259800186960723222

`A000032(n+1)+2*A008466(n+1)`
-/

namespace A175661.P5259800186960723222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 2 * A008466 (n + 1)

end

end A175661.P5259800186960723222

namespace A175661

/-- `A000032(n+1)+2*A008466(n+1)` -/
def P5259800186960723222.Spec : Prop :=
  ∀ n, P5259800186960723222.a n = A175661 n

end A175661

/-! ## A175661.P2960583336147096988

`2*A099036(n+1)-A000045(n+1)`
-/

namespace A175661.P2960583336147096988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099036 (n + 1) - A000045 (n + 1)

end

end A175661.P2960583336147096988

namespace A175661

/-- `2*A099036(n+1)-A000045(n+1)` -/
def P2960583336147096988.Spec : Prop :=
  ∀ n, P2960583336147096988.a n = A175661 n

end A175661

/-!
# A175662: Sum of primes between successive cubes of primes.

The programs for A175662, there is no canonical definition to state claims against.
-/

/-! ## A175662.P5154837224217093771

`Δ[A007504(A086688(n+1))]`
-/

namespace A175662.P5154837224217093771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A086688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175662.P5154837224217093771

/-! ## A175662.P15637581871010705310

`Δ[A034387(A030078(n+1))]`
-/

namespace A175662.P15637581871010705310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A030078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175662.P15637581871010705310

/-! ## A175662.P15354253914429827670

`Δ[A034387(sqrt(A030516(n+1)))]`
-/

namespace A175662.P15354253914429827670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (SequenceMachineLib.roundAway (Real.sqrt (A030516 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175662.P15354253914429827670

/-!
# A175663: Maximal run length of primes of the form n, n+2, n+2*3, n+2*3*5,..

The programs for A175663, there is no canonical definition to state claims against.
-/

/-! ## A175663.P17774260008086067694

`A074039(A007955(n+1))+A010051(n+1)`
-/

namespace A175663.P17774260008086067694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074039 (A007955 (n + 1)).toNat + A010051 (n + 1)

end

end A175663.P17774260008086067694

/-! ## A175663.P3061819328592050638

`A074039(n+1)+A010051(A283995(n+1))`
-/

namespace A175663.P3061819328592050638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074039 (n + 1) + A010051 (A283995 (n + 1)).toNat

end

end A175663.P3061819328592050638

/-! ## A175663.P9947466974218332914

`A074039(n+1)+A010051(A293216(n+1))`
-/

namespace A175663.P9947466974218332914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074039 (n + 1) + A010051 (A293216 (n + 1)).toNat

end

end A175663.P9947466974218332914

/-! ## A175663.P16948739247858778459

`A010051(n+1)*A356227(A078778(n+1))`
-/

namespace A175663.P16948739247858778459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A356227 (A078778 (n + 1)).toNat

end

end A175663.P16948739247858778459

/-!
# A175664: Greater of twin semiprimes.

The programs for A175664, the canonical program `A175664.P16197100699760102453` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175664 has offset 1).

The definition of A175664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175648, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175664.P16197100699760102453

`4+A175648(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A175664

/-- `4+A175648(n+1)` -/
def P16197100699760102453.Spec : Prop :=
  ∀ n, P16197100699760102453.a n = A175664 (n + 1)

theorem P16197100699760102453.correct : P16197100699760102453.Spec := by
  intro n
  simp only [A175664, Nat.add_sub_cancel]

end A175664

/-! ## A175664.P3680513907774462179

`A105571(n+1)+2`
-/

namespace A175664.P3680513907774462179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1) + 2

end

end A175664.P3680513907774462179

namespace A175664

/-- `A105571(n+1)+2` -/
def P3680513907774462179.Spec : Prop :=
  ∀ n, P3680513907774462179.a n = A175664 (n + 1)

end A175664

/-! ## A175664.P14559582631486329878

`filter[A175766(n+1), A064911(#)]`
-/

namespace A175664.P14559582631486329878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A175664.P14559582631486329878

namespace A175664

/-- `filter[A175766(n+1), A064911(#)]` -/
def P14559582631486329878.Spec : Prop :=
  ∀ n, P14559582631486329878.a n = A175664 (n + 1)

end A175664

/-! ## A175664.P5681891768722759462

`∩[A001358(n+1), A175766(n+1)]`
-/

namespace A175664.P5681891768722759462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175664.P5681891768722759462

namespace A175664

/-- `∩[A001358(n+1), A175766(n+1)]` -/
def P5681891768722759462.Spec : Prop :=
  ∀ n, (P5681891768722759462.a n : ℤ) = A175664 (n + 1)

end A175664

/-! ## A175664.P8146759989712884742

`∩[A175766(n+1), A176540(n+1)]`
-/

namespace A175664.P8146759989712884742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175664.P8146759989712884742

namespace A175664

/-- `∩[A175766(n+1), A176540(n+1)]` -/
def P8146759989712884742.Spec : Prop :=
  ∀ n, (P8146759989712884742.a n : ℤ) = A175664 (n + 1)

end A175664

/-! ## A175664.P15764716115536476866

`2-(A000035(2*n)-A105571(ϕ²-(ϕ-n)))`
-/

namespace A175664.P15764716115536476866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000035 (2 * n) - A105571 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A175664.P15764716115536476866

namespace A175664

/-- `2-(A000035(2*n)-A105571(ϕ²-(ϕ-n)))` -/
def P15764716115536476866.Spec : Prop :=
  ∀ n, P15764716115536476866.a n = A175664 (n + 1)

end A175664

/-! ## A175664.P15911626754341187604

`A009056(A105571(n+1))`
-/

namespace A175664.P15911626754341187604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A105571 (n + 1)).toNat

end

end A175664.P15911626754341187604

namespace A175664

/-- `A009056(A105571(n+1))` -/
def P15911626754341187604.Spec : Prop :=
  ∀ n, P15911626754341187604.a n = A175664 (n + 1)

end A175664

/-! ## A175664.P18092844802175605984

`A020705(A175648(n+1))`
-/

namespace A175664.P18092844802175605984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A175648 (n + 1)).toNat

end

end A175664.P18092844802175605984

namespace A175664

/-- `A020705(A175648(n+1))` -/
def P18092844802175605984.Spec : Prop :=
  ∀ n, P18092844802175605984.a n = A175664 (n + 1)

end A175664

/-!
# A175665: The product of maximal run and minimal run lengths in the binary representation of n.

The programs for A175665, the canonical program `A175665.P4607596782560675310` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175665 has offset 1).

The definition of A175665 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175665.P4607596782560675310

`A043276(n+1)*A175597(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175665

/-- `A043276(n+1)*A175597(n+1)` -/
def P4607596782560675310.Spec : Prop :=
  ∀ n, P4607596782560675310.a n = A175665 (n + 1)

theorem P4607596782560675310.correct : P4607596782560675310.Spec := by
  intro n
  simp only [A175665, Nat.add_sub_cancel]

end A175665

/-! ## A175665.P17286254314541059280

`A333352(A382255(n+1))`
-/

namespace A175665.P17286254314541059280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (A382255 (n + 1)).toNat

end

end A175665.P17286254314541059280

namespace A175665

/-- `A333352(A382255(n+1))` -/
def P17286254314541059280.Spec : Prop :=
  ∀ n, P17286254314541059280.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P3845577795852792659

`A043278(A000695(n+1))*A175597(n+1)`
-/

namespace A175665.P3845577795852792659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A000695 (n + 1)).toNat * A175597 (n + 1)

end

end A175665.P3845577795852792659

namespace A175665

/-- `A043278(A000695(n+1))*A175597(n+1)` -/
def P3845577795852792659.Spec : Prop :=
  ∀ n, P3845577795852792659.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P7779025749565093604

`A043276(n+1)*A144790(A035928(n+1))`
-/

namespace A175665.P7779025749565093604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) * A144790 (A035928 (n + 1)).toNat

end

end A175665.P7779025749565093604

namespace A175665

/-- `A043276(n+1)*A144790(A035928(n+1))` -/
def P7779025749565093604.Spec : Prop :=
  ∀ n, P7779025749565093604.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P4596748923969809236

`A043277(A055661(n+1))*A175597(n+1)`
-/

namespace A175665.P4596748923969809236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A055661 (n + 1)).toNat * A175597 (n + 1)

end

end A175665.P4596748923969809236

namespace A175665

/-- `A043277(A055661(n+1))*A175597(n+1)` -/
def P4596748923969809236.Spec : Prop :=
  ∀ n, P4596748923969809236.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P14502087779009318275

`A043276(n+1)*A144790(A253608(n+1))`
-/

namespace A175665.P14502087779009318275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) * A144790 (A253608 (n + 1)).toNat

end

end A175665.P14502087779009318275

namespace A175665

/-- `A043276(n+1)*A144790(A253608(n+1))` -/
def P14502087779009318275.Spec : Prop :=
  ∀ n, P14502087779009318275.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P15940851302254355919

`A043276(n+1)*A090996(A335834(n+1))`
-/

namespace A175665.P15940851302254355919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) * A090996 (A335834 (n + 1)).toNat

end

end A175665.P15940851302254355919

namespace A175665

/-- `A043276(n+1)*A090996(A335834(n+1))` -/
def P15940851302254355919.Spec : Prop :=
  ∀ n, P15940851302254355919.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P15511508941318513659

`A043276(n+1)*A136480(A335835(n+1))`
-/

namespace A175665.P15511508941318513659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) * A136480 (A335835 (n + 1)).toNat

end

end A175665.P15511508941318513659

namespace A175665

/-- `A043276(n+1)*A136480(A335835(n+1))` -/
def P15511508941318513659.Spec : Prop :=
  ∀ n, P15511508941318513659.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P12650044645184579619

`A067132(A286468(n+1))*A175597(n+1)`
-/

namespace A175665.P12650044645184579619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A286468 (n + 1)).toNat * A175597 (n + 1)

end

end A175665.P12650044645184579619

namespace A175665

/-- `A067132(A286468(n+1))*A175597(n+1)` -/
def P12650044645184579619.Spec : Prop :=
  ∀ n, P12650044645184579619.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P9460589350440968985

`A038374(A335835(n+1))*A175597(n+1)`
-/

namespace A175665.P9460589350440968985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A335835 (n + 1)).toNat * A175597 (n + 1)

end

end A175665.P9460589350440968985

namespace A175665

/-- `A038374(A335835(n+1))*A175597(n+1)` -/
def P9460589350440968985.Spec : Prop :=
  ∀ n, P9460589350440968985.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P12215827180032042728

`A043277(A005836(n+2))*A175597(n+1)`
-/

namespace A175665.P12215827180032042728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A005836 (n + 2)).toNat * A175597 (n + 1)

end

end A175665.P12215827180032042728

namespace A175665

/-- `A043277(A005836(n+2))*A175597(n+1)` -/
def P12215827180032042728.Spec : Prop :=
  ∀ n, P12215827180032042728.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P2415273760659891188

`A038374(A290254(n+2))*A175597(n+1)`
-/

namespace A175665.P2415273760659891188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A290254 (n + 2)).toNat * A175597 (n + 1)

end

end A175665.P2415273760659891188

namespace A175665

/-- `A038374(A290254(n+2))*A175597(n+1)` -/
def P2415273760659891188.Spec : Prop :=
  ∀ n, P2415273760659891188.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P1539212897892429503

`(A175599(n+1)+A175597(n+1))*A175597(n+1)`
-/

namespace A175665.P1539212897892429503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175599 (n + 1) + A175597 (n + 1)) * A175597 (n + 1)

end

end A175665.P1539212897892429503

namespace A175665

/-- `(A175599(n+1)+A175597(n+1))*A175597(n+1)` -/
def P1539212897892429503.Spec : Prop :=
  ∀ n, P1539212897892429503.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P17841700382684111626

`(A043276(n+1)-A175599(n+1))*A043276(n+1)`
-/

namespace A175665.P17841700382684111626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A043276 (n + 1) - A175599 (n + 1)) * A043276 (n + 1)

end

end A175665.P17841700382684111626

namespace A175665

/-- `(A043276(n+1)-A175599(n+1))*A043276(n+1)` -/
def P17841700382684111626.Spec : Prop :=
  ∀ n, P17841700382684111626.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P4992977520145529965

`(A175681(n+1)-A043276(n+1))*A043276(n+1)`
-/

namespace A175665.P4992977520145529965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175681 (n + 1) - A043276 (n + 1)) * A043276 (n + 1)

end

end A175665.P4992977520145529965

namespace A175665

/-- `(A175681(n+1)-A043276(n+1))*A043276(n+1)` -/
def P4992977520145529965.Spec : Prop :=
  ∀ n, P4992977520145529965.a n = A175665 (n + 1)

end A175665

/-! ## A175665.P1381881391076894911

`(A175681(n+1)-A175597(n+1))*A175597(n+1)`
-/

namespace A175665.P1381881391076894911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175681 (n + 1) - A175597 (n + 1)) * A175597 (n + 1)

end

end A175665.P1381881391076894911

namespace A175665

/-- `(A175681(n+1)-A175597(n+1))*A175597(n+1)` -/
def P1381881391076894911.Spec : Prop :=
  ∀ n, P1381881391076894911.a n = A175665 (n + 1)

end A175665

/-!
# A175666: Sum of Sophie Germain prime p and corresponding safe prime q=2p+1.

The programs for A175666, the canonical program `A175666.P11802829545752177848` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175666 has offset 1).

The definition of A175666 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175666.P11802829545752177848

`3*A005384(n+1)+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175666

/-- `3*A005384(n+1)+1` -/
def P11802829545752177848.Spec : Prop :=
  ∀ n, P11802829545752177848.a n = A175666 (n + 1)

theorem P11802829545752177848.correct : P11802829545752177848.Spec := by
  intro n
  simp only [A175666, Nat.add_sub_cancel]

end A175666

/-! ## A175666.P4048509339128168689

`(3*A005385(n+1)-1)/2`
-/

namespace A175666.P4048509339128168689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A005385 (n + 1) - 1 : ℚ) / 2

end

end A175666.P4048509339128168689

namespace A175666

/-- `(3*A005385(n+1)-1)/2` -/
def P4048509339128168689.Spec : Prop :=
  ∀ n, P4048509339128168689.a n = (A175666 (n + 1) : ℚ)

end A175666

/-! ## A175666.P11929778478489547674

`A005384(n+1)+A005385(n+1)`
-/

namespace A175666.P11929778478489547674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) + A005385 (n + 1)

end

end A175666.P11929778478489547674

namespace A175666

/-- `A005384(n+1)+A005385(n+1)` -/
def P11929778478489547674.Spec : Prop :=
  ∀ n, P11929778478489547674.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P5839371804157168322

`3*A176045(n+1)-2`
-/

namespace A175666.P5839371804157168322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A176045 (n + 1) - 2

end

end A175666.P5839371804157168322

namespace A175666

/-- `3*A176045(n+1)-2` -/
def P5839371804157168322.Spec : Prop :=
  ∀ n, P5839371804157168322.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P4595825422601154245

`3*A077065(n+1)/2+1`
-/

namespace A175666.P4595825422601154245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A077065 (n + 1) : ℚ) / 2) + 1

end

end A175666.P4595825422601154245

namespace A175666

/-- `3*A077065(n+1)/2+1` -/
def P4595825422601154245.Spec : Prop :=
  ∀ n, P4595825422601154245.a n = (A175666 (n + 1) : ℚ)

end A175666

/-! ## A175666.P9225524731140844268

`A176045(n+1)+A077065(n+1)`
-/

namespace A175666.P9225524731140844268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) + A077065 (n + 1)

end

end A175666.P9225524731140844268

namespace A175666

/-- `A176045(n+1)+A077065(n+1)` -/
def P9225524731140844268.Spec : Prop :=
  ∀ n, P9225524731140844268.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P1849981428674753277

`A005384(n+1)+A077065(n+1)+1`
-/

namespace A175666.P1849981428674753277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) + (A077065 (n + 1) + 1)

end

end A175666.P1849981428674753277

namespace A175666

/-- `A005384(n+1)+A077065(n+1)+1` -/
def P1849981428674753277.Spec : Prop :=
  ∀ n, P1849981428674753277.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P4291244231941440919

`A005385(n+1)+A176045(n+1)-1`
-/

namespace A175666.P4291244231941440919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) + (A176045 (n + 1) - 1)

end

end A175666.P4291244231941440919

namespace A175666

/-- `A005385(n+1)+A176045(n+1)-1` -/
def P4291244231941440919.Spec : Prop :=
  ∀ n, P4291244231941440919.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P17886952427521467827

`A005385(n+1)+A077065(n+1)/2`
-/

namespace A175666.P17886952427521467827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005385 (n + 1) : ℚ) + (A077065 (n + 1) : ℚ) / 2

end

end A175666.P17886952427521467827

namespace A175666

/-- `A005385(n+1)+A077065(n+1)/2` -/
def P17886952427521467827.Spec : Prop :=
  ∀ n, P17886952427521467827.a n = (A175666 (n + 1) : ℚ)

end A175666

/-! ## A175666.P13655141187619328286

`A005384(n+1)+A176045(n+1)+A005384(n+1)`
-/

namespace A175666.P13655141187619328286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) + (A176045 (n + 1) + A005384 (n + 1))

end

end A175666.P13655141187619328286

namespace A175666

/-- `A005384(n+1)+A176045(n+1)+A005384(n+1)` -/
def P13655141187619328286.Spec : Prop :=
  ∀ n, P13655141187619328286.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P2955928314794198114

`A005384(n+1)+A156592(n+1)/A005384(n+1)`
-/

namespace A175666.P2955928314794198114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005384 (n + 1) : ℚ) + (A156592 (n + 1) : ℚ) / (A005384 (n + 1) : ℚ)

end

end A175666.P2955928314794198114

namespace A175666

/-- `A005384(n+1)+A156592(n+1)/A005384(n+1)` -/
def P2955928314794198114.Spec : Prop :=
  ∀ n, P2955928314794198114.a n = (A175666 (n + 1) : ℚ)

end A175666

/-! ## A175666.P5004439733718872694

`A005385(n+1)+A156592(n+1)/A005385(n+1)`
-/

namespace A175666.P5004439733718872694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005385 (n + 1) : ℚ) + (A156592 (n + 1) : ℚ) / (A005385 (n + 1) : ℚ)

end

end A175666.P5004439733718872694

namespace A175666

/-- `A005385(n+1)+A156592(n+1)/A005385(n+1)` -/
def P5004439733718872694.Spec : Prop :=
  ∀ n, P5004439733718872694.a n = (A175666 (n + 1) : ℚ)

end A175666

/-! ## A175666.P17129700649506721543

`A194593(n+2)-A176045(n+1)`
-/

namespace A175666.P17129700649506721543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194593 (n + 2) - A176045 (n + 1)

end

end A175666.P17129700649506721543

namespace A175666

/-- `A194593(n+2)-A176045(n+1)` -/
def P17129700649506721543.Spec : Prop :=
  ∀ n, P17129700649506721543.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P11065692163665220473

`A079148(n+3)+A005384(n+1)`
-/

namespace A175666.P11065692163665220473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3) + A005384 (n + 1)

end

end A175666.P11065692163665220473

namespace A175666

/-- `A079148(n+3)+A005384(n+1)` -/
def P11065692163665220473.Spec : Prop :=
  ∀ n, P11065692163665220473.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P2948242716334610417

`A005385(n+1)+p?[A348511(n+1)]`
-/

namespace A175666.P2948242716334610417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175666.P2948242716334610417

namespace A175666

/-- `A005385(n+1)+p?[A348511(n+1)]` -/
def P2948242716334610417.Spec : Prop :=
  ∀ n, P2948242716334610417.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P3820301853012292822

`p?[2*A000040(n+1)+1]+p?[A348511(n+1)]`
-/

namespace A175666.P3820301853012292822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A175666.P3820301853012292822

namespace A175666

/-- `p?[2*A000040(n+1)+1]+p?[A348511(n+1)]` -/
def P3820301853012292822.Spec : Prop :=
  ∀ n, P3820301853012292822.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P7137138890052051679

`A005385(n+1)+A000040(A072192(n+1))`
-/

namespace A175666.P7137138890052051679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) + A000040 (A072192 (n + 1)).toNat

end

end A175666.P7137138890052051679

namespace A175666

/-- `A005385(n+1)+A000040(A072192(n+1))` -/
def P7137138890052051679.Spec : Prop :=
  ∀ n, P7137138890052051679.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P10939057493737626310

`A023590(A072192(n+1))+A005384(n+1)`
-/

namespace A175666.P10939057493737626310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023590 (A072192 (n + 1)).toNat + A005384 (n + 1)

end

end A175666.P10939057493737626310

namespace A175666

/-- `A023590(A072192(n+1))+A005384(n+1)` -/
def P10939057493737626310.Spec : Prop :=
  ∀ n, P10939057493737626310.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P11249783956678016392

`A077065(n+1)+A000203(A005384(n+1))`
-/

namespace A175666.P11249783956678016392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + A000203 (A005384 (n + 1)).toNat

end

end A175666.P11249783956678016392

namespace A175666

/-- `A077065(n+1)+A000203(A005384(n+1))` -/
def P11249783956678016392.Spec : Prop :=
  ∀ n, P11249783956678016392.a n = A175666 (n + 1)

end A175666

/-! ## A175666.P18066613169359792459

`A077065(n+1)+A000203(A077065(n+1)/2)`
-/

namespace A175666.P18066613169359792459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + A000203 (SequenceMachineLib.roundAway ((A077065 (n + 1) : ℚ) / 2)).toNat

end

end A175666.P18066613169359792459

namespace A175666

/-- `A077065(n+1)+A000203(A077065(n+1)/2)` -/
def P18066613169359792459.Spec : Prop :=
  ∀ n, P18066613169359792459.a n = A175666 (n + 1)

end A175666

/-!
# A175668: First differences of A175648.

The programs for A175668, the canonical program `A175668.P1868408342156283504` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175668 has offset 1).

The definition of A175668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175648, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175668.P1868408342156283504

`A175648(n+2)-A175648(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A175668

/-- `A175648(n+2)-A175648(n+1)` -/
def P1868408342156283504.Spec : Prop :=
  ∀ n, P1868408342156283504.a n = A175668 (n + 1)

theorem P1868408342156283504.correct : P1868408342156283504.Spec := by
  intro n
  simp only [A175668, Nat.add_sub_cancel]

end A175668

/-! ## A175668.P2137424639892872219

`Δ[A105571(n+1)]`
-/

namespace A175668.P2137424639892872219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175668.P2137424639892872219

namespace A175668

/-- `Δ[A105571(n+1)]` -/
def P2137424639892872219.Spec : Prop :=
  ∀ n, P2137424639892872219.a n = A175668 (n + 1)

end A175668

/-! ## A175668.P568818816260828855

`Δ[A175648(n+1)]`
-/

namespace A175668.P568818816260828855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175668.P568818816260828855

namespace A175668

/-- `Δ[A175648(n+1)]` -/
def P568818816260828855.Spec : Prop :=
  ∀ n, P568818816260828855.a n = A175668 (n + 1)

theorem P568818816260828855.correct : P568818816260828855.Spec := by
  intro n
  simp only [A175668, Nat.add_sub_cancel, A175668.P568818816260828855.f1, A175668.P568818816260828855.a, A175668.P1868408342156283504.a, SequenceMachineLib.memo_apply]

end A175668

/-! ## A175668.P9723435408920542188

`abs(Δ[A105571(-xor(n, -1))])`
-/

namespace A175668.P9723435408920542188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175668.P9723435408920542188

namespace A175668

/-- `abs(Δ[A105571(-xor(n, -1))])` -/
def P9723435408920542188.Spec : Prop :=
  ∀ n, P9723435408920542188.a n = A175668 (n + 1)

end A175668

/-! ## A175668.P5941226074378469950

`abs(Δ[A105571(n-log2(1/2))])`
-/

namespace A175668.P5941226074378469950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175668.P5941226074378469950

namespace A175668

/-- `abs(Δ[A105571(n-log2(1/2))])` -/
def P5941226074378469950.Spec : Prop :=
  ∀ n, P5941226074378469950.a n = A175668 (n + 1)

end A175668

/-! ## A175668.P16570374590238486482

`abs(Δ[A175648(1-(n-2*n))])`
-/

namespace A175668.P16570374590238486482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175668.P16570374590238486482

namespace A175668

/-- `abs(Δ[A175648(1-(n-2*n))])` -/
def P16570374590238486482.Spec : Prop :=
  ∀ n, P16570374590238486482.a n = A175668 (n + 1)

end A175668

/-! ## A175668.P17152979091371041219

`A000027(Δ[A105571(-xor(n, -1))])`
-/

namespace A175668.P17152979091371041219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A175668.P17152979091371041219

namespace A175668

/-- `A000027(Δ[A105571(-xor(n, -1))])` -/
def P17152979091371041219.Spec : Prop :=
  ∀ n, P17152979091371041219.a n = A175668 (n + 1)

end A175668

/-! ## A175668.P2809111990267641964

`A105571(n+2)-A105571(n+1)`
-/

namespace A175668.P2809111990267641964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 2) - A105571 (n + 1)

end

end A175668.P2809111990267641964

namespace A175668

/-- `A105571(n+2)-A105571(n+1)` -/
def P2809111990267641964.Spec : Prop :=
  ∀ n, P2809111990267641964.a n = A175668 (n + 1)

end A175668

/-! ## A175668.P8325674962040457888

`Δ[A175664(n+1)]`
-/

namespace A175668.P8325674962040457888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175668.P8325674962040457888

namespace A175668

/-- `Δ[A175664(n+1)]` -/
def P8325674962040457888.Spec : Prop :=
  ∀ n, P8325674962040457888.a n = A175668 (n + 1)

end A175668

/-! ## A175668.P1001578197356088025

`A175664(n+2)-A175664(n+1)`
-/

namespace A175668.P1001578197356088025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 2) - A175664 (n + 1)

end

end A175668.P1001578197356088025

namespace A175668

/-- `A175664(n+2)-A175664(n+1)` -/
def P1001578197356088025.Spec : Prop :=
  ∀ n, P1001578197356088025.a n = A175668 (n + 1)

end A175668

/-!
# A175670: Composite numbers n such that p^2 * (p - 1) divides 2(n - p) for every prime p dividing n.

The programs for A175670, there is no canonical definition to state claims against.
-/

/-! ## A175670.P11869977747502816853

`A081611(∑[5*2^n])`
-/

namespace A175670.P11869977747502816853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175670.P11869977747502816853

/-! ## A175670.P15214933574365929211

`∑[A132383(A147617(n))]`
-/

namespace A175670.P15214933574365929211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132383 (A147617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175670.P15214933574365929211

/-! ## A175670.P3688814881704772339

`A105321(A273180(n+2))`
-/

namespace A175670.P3688814881704772339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (A273180 (n + 2)).toNat

end

end A175670.P3688814881704772339

/-! ## A175670.P5099204765672001091

`4*A033676(A001787(n+1))`
-/

namespace A175670.P5099204765672001091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033676 (A001787 (n + 1)).toNat

end

end A175670.P5099204765672001091

/-! ## A175670.P8178678638490275309

`filter[A018231(n+3), A326956(#)]`
-/

namespace A175670.P8178678638490275309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326956 (f1 j).toNat = 1) n)

end

end A175670.P8178678638490275309

/-!
# A175671: Denominator of [x^(2n)] of the Taylor expansion log(cosec(x)*arctan(x)).

The programs for A175671, there is no canonical definition to state claims against.
-/

/-! ## A175671.P212849762997303497

`A114136(n+1)*A232562(A168450(n))`
-/

namespace A175671.P212849762997303497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114136 (n + 1) * A232562 (A168450 n).toNat

end

end A175671.P212849762997303497

/-!
# A175672: y-values in the solution to x^2 - 28*y^2=1.

The programs for A175672, the canonical program `A175672.P3101595619347321225` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175672 has offset 1).

The definition of A175672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175672.P3101595619347321225

`254*a(n-1)-a(n-2)` with `a(0)=0, a(1)=24`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175672

/-- `254*a(n-1)-a(n-2)` -/
def P3101595619347321225.Spec : Prop :=
  ∀ n, P3101595619347321225.a n = A175672 (n + 1)

theorem P3101595619347321225.correct : P3101595619347321225.Spec := by
  intro n
  simp only [A175672, Nat.add_sub_cancel]

end A175672

/-! ## A175672.P17691944972182767952

`A001080(n)*A001081(n)`
-/

namespace A175672.P17691944972182767952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 n * A001081 n

end

end A175672.P17691944972182767952

namespace A175672

/-- `A001080(n)*A001081(n)` -/
def P17691944972182767952.Spec : Prop :=
  ∀ n, P17691944972182767952.a n = A175672 (n + 1)

end A175672

/-! ## A175672.P3195428905884388101

`A001081(n)*A204517(3*n+2)`
-/

namespace A175672.P3195428905884388101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n * A204517 (3 * n + 2)

end

end A175672.P3195428905884388101

namespace A175672

/-- `A001081(n)*A204517(3*n+2)` -/
def P3195428905884388101.Spec : Prop :=
  ∀ n, P3195428905884388101.a n = A175672 (n + 1)

end A175672

/-! ## A175672.P10895274213157736413

`(A307173(n+1)-A159678(n+1))*A001081(n)`
-/

namespace A175672.P10895274213157736413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A307173 (n + 1) - A159678 (n + 1)) * A001081 n

end

end A175672.P10895274213157736413

namespace A175672

/-- `(A307173(n+1)-A159678(n+1))*A001081(n)` -/
def P10895274213157736413.Spec : Prop :=
  ∀ n, P10895274213157736413.a n = A175672 (n + 1)

end A175672

/-! ## A175672.P7926424649842711307

`(∑[A266698(n+1)]-A266698(n+1))*A001081(n)`
-/

namespace A175672.P7926424649842711307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A266698 (n + 1)) * A001081 n

end

end A175672.P7926424649842711307

namespace A175672

/-- `(∑[A266698(n+1)]-A266698(n+1))*A001081(n)` -/
def P7926424649842711307.Spec : Prop :=
  ∀ n, P7926424649842711307.a n = A175672 (n + 1)

end A175672

/-!
# A175676: a(n) = binomial(n,3) mod n.

The programs for A175676, the canonical program `A175676.P1891341993679921175` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175676 has offset 1).

The definition of A175676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175676.P1891341993679921175

`A008620(n)*A079978(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175676

/-- `A008620(n)*A079978(n+1)` -/
def P1891341993679921175.Spec : Prop :=
  ∀ n, P1891341993679921175.a n = A175676 (n + 1)

theorem P1891341993679921175.correct : P1891341993679921175.Spec := by
  intro n
  simp only [A175676, Nat.add_sub_cancel]

end A175676

/-! ## A175676.P8576437913466009841

`C(n², 3)%(n+1)`
-/

namespace A175676.P8576437913466009841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3 % (n + 1)

end

end A175676.P8576437913466009841

namespace A175676

/-- `C(n², 3)%(n+1)` -/
def P8576437913466009841.Spec : Prop :=
  ∀ n, (P8576437913466009841.a n : ℤ) = A175676 (n + 1)

end A175676

/-! ## A175676.P193686216685664532

`∑[C(n, 2)]%(n+1)`
-/

namespace A175676.P193686216685664532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A175676.P193686216685664532

namespace A175676

/-- `∑[C(n, 2)]%(n+1)` -/
def P193686216685664532.Spec : Prop :=
  ∀ n, (P193686216685664532.a n : ℤ) = A175676 (n + 1)

end A175676

/-! ## A175676.P6175832105676151479

`Δ[C(ceil((n+1)/3), 2)]`
-/

namespace A175676.P6175832105676151479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n + 1 : ℚ) / 3⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A175676.P6175832105676151479

namespace A175676

/-- `Δ[C(ceil((n+1)/3), 2)]` -/
def P6175832105676151479.Spec : Prop :=
  ∀ n, P6175832105676151479.a n = A175676 (n + 1)

end A175676

/-! ## A175676.P4325736883229093518

`∑[2*n²]%(n+1)`
-/

namespace A175676.P4325736883229093518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A175676.P4325736883229093518

namespace A175676

/-- `∑[2*n²]%(n+1)` -/
def P4325736883229093518.Spec : Prop :=
  ∀ n, (P4325736883229093518.a n : ℤ) = A175676 (n + 1)

end A175676

/-! ## A175676.P10813890826721109518

`abs(∑[n-∑[n]]%(n+1))`
-/

namespace A175676.P10813890826721109518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A175676.P10813890826721109518

namespace A175676

/-- `abs(∑[n-∑[n]]%(n+1))` -/
def P10813890826721109518.Spec : Prop :=
  ∀ n, P10813890826721109518.a n = A175676 (n + 1)

end A175676

/-! ## A175676.P18205214265987441624

`--C(n+3, 3)%(n+1)`
-/

namespace A175676.P18205214265987441624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(Nat.choose (n + 3) 3 : ℤ)) (n + 1 : ℤ)

end

end A175676.P18205214265987441624

namespace A175676

/-- `--C(n+3, 3)%(n+1)` -/
def P18205214265987441624.Spec : Prop :=
  ∀ n, P18205214265987441624.a n = A175676 (n + 1)

end A175676

/-! ## A175676.P5269432848359588278

`∑[∑[2*n]]%(n+1)/2`
-/

namespace A175676.P5269432848359588278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℚ) / 2

end

end A175676.P5269432848359588278

namespace A175676

/-- `∑[∑[2*n]]%(n+1)/2` -/
def P5269432848359588278.Spec : Prop :=
  ∀ n, P5269432848359588278.a n = (A175676 (n + 1) : ℚ)

end A175676

/-! ## A175676.P9846713608609574353

`-∑[∑[-(n+1)]]%(n+1)`
-/

namespace A175676.P9846713608609574353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A175676.P9846713608609574353

namespace A175676

/-- `-∑[∑[-(n+1)]]%(n+1)` -/
def P9846713608609574353.Spec : Prop :=
  ∀ n, P9846713608609574353.a n = A175676 (n + 1)

end A175676

/-! ## A175676.P4424638643463786683

`a(n-3)+a(n%3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A175676.P4424638643463786683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + a (n % 3)

end

end A175676.P4424638643463786683

namespace A175676

/-- `a(n-3)+a(n%3)` -/
def P4424638643463786683.Spec : Prop :=
  ∀ n, (P4424638643463786683.a n : ℤ) = A175676 (n + 1)

end A175676

/-! ## A175676.P16661343308867329559

`round(n/(lcm(3, n+1)-(n-2)))`
-/

namespace A175676.P16661343308867329559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((Nat.lcm 3 (n + 1) : ℤ) - ((n : ℤ) - 2) : ℚ))

end

end A175676.P16661343308867329559

namespace A175676

/-- `round(n/(lcm(3, n+1)-(n-2)))` -/
def P16661343308867329559.Spec : Prop :=
  ∀ n, P16661343308867329559.a n = A175676 (n + 1)

end A175676

/-! ## A175676.P11451786465796492182

`sqrt(∑[∑[n+1]]²%(n+1)²)`
-/

namespace A175676.P11451786465796492182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (n + 1) ^ 2 : ℕ) : ℝ)

end

end A175676.P11451786465796492182

namespace A175676

/-- `sqrt(∑[∑[n+1]]²%(n+1)²)` -/
def P11451786465796492182.Spec : Prop :=
  ∀ n, P11451786465796492182.a n = (A175676 (n + 1) : ℝ)

end A175676

/-! ## A175676.P15207597163429565006

`(gcd(3, n+1)-1)*(n+1)/6`
-/

namespace A175676.P15207597163429565006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 3 (n + 1) : ℤ) - 1 : ℚ) * ((n + 1 : ℚ) / 6)

end

end A175676.P15207597163429565006

namespace A175676

/-- `(gcd(3, n+1)-1)*(n+1)/6` -/
def P15207597163429565006.Spec : Prop :=
  ∀ n, P15207597163429565006.a n = (A175676 (n + 1) : ℚ)

end A175676

/-! ## A175676.P16810227664187231136

`n-C(2*n+1, 3)%(n+1)`
-/

namespace A175676.P16810227664187231136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.choose (2 * n + 1) 3 % (n + 1) : ℕ) : ℤ)

end

end A175676.P16810227664187231136

namespace A175676

/-- `n-C(2*n+1, 3)%(n+1)` -/
def P16810227664187231136.Spec : Prop :=
  ∀ n, P16810227664187231136.a n = A175676 (n + 1)

end A175676

/-! ## A175676.P15000331480081234065

`(1-(n+1)²%3)*(n+1)/3`
-/

namespace A175676.P15000331480081234065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (((n + 1) ^ 2 % 3 : ℕ) : ℤ) : ℚ) * ((n + 1 : ℚ) / 3)

end

end A175676.P15000331480081234065

namespace A175676

/-- `(1-(n+1)²%3)*(n+1)/3` -/
def P15000331480081234065.Spec : Prop :=
  ∀ n, P15000331480081234065.a n = (A175676 (n + 1) : ℚ)

end A175676

/-! ## A175676.P4395608726020924483

`ceil((n+1)/3)*Δ[ceil((n+1)/3)]`
-/

namespace A175676.P4395608726020924483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3⌉ * (f1 (n + 1) - f1 n)

end

end A175676.P4395608726020924483

namespace A175676

/-- `ceil((n+1)/3)*Δ[ceil((n+1)/3)]` -/
def P4395608726020924483.Spec : Prop :=
  ∀ n, P4395608726020924483.a n = A175676 (n + 1)

end A175676

/-! ## A175676.P12669012330927661100

`a(n-3)/(1-3/(n+1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A175676.P12669012330927661100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) / (1 - 3 / (n + 1 : ℚ))

end

end A175676.P12669012330927661100

namespace A175676

/-- `a(n-3)/(1-3/(n+1))` -/
def P12669012330927661100.Spec : Prop :=
  ∀ n, P12669012330927661100.a n = (A175676 (n + 1) : ℚ)

end A175676

/-! ## A175676.P14130088374264003255

`a(n-3)+1-a(n-1)^a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A175676.P14130088374264003255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + (1 - a (n - 1) ^ (a (n - 3)))

end

end A175676.P14130088374264003255

namespace A175676

/-- `a(n-3)+1-a(n-1)^a(n-3)` -/
def P14130088374264003255.Spec : Prop :=
  ∀ n, P14130088374264003255.a n = (A175676 (n + 1) : ℝ)

end A175676

/-! ## A175676.P9993531479429700886

`1-(a(n-1)^a(n-3)-a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A175676.P9993531479429700886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 - (a (n - 1) ^ (a (n - 3)) - a (n - 3))

end

end A175676.P9993531479429700886

namespace A175676

/-- `1-(a(n-1)^a(n-3)-a(n-3))` -/
def P9993531479429700886.Spec : Prop :=
  ∀ n, P9993531479429700886.a n = (A175676 (n + 1) : ℝ)

end A175676

/-! ## A175676.P6607797344286032860

`∑[a(n-3)²]-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A175676.P6607797344286032860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A175676.P6607797344286032860

namespace A175676

/-- `∑[a(n-3)²]-(a(n-1)+a(n-2))` -/
def P6607797344286032860.Spec : Prop :=
  ∀ n, P6607797344286032860.a n = A175676 (n + 1)

end A175676

/-!
# A175677: Binomial(n,4) mod n.

The programs for A175677, the canonical program `A175677.P12894439892017779078` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175677 has offset 1).

The definition of A175677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175677.P12894439892017779078

`∑[C(n, 3)]%(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175677

/-- `∑[C(n, 3)]%(n+1)` -/
def P12894439892017779078.Spec : Prop :=
  ∀ n, (P12894439892017779078.a n : ℤ) = A175677 (n + 1)

theorem P12894439892017779078.correct : P12894439892017779078.Spec := by
  intro n
  simp only [A175677, Nat.add_sub_cancel]

end A175677

/-! ## A175677.P18369609069159197558

`C(n+1, 4)%(n+1)`
-/

namespace A175677.P18369609069159197558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 % (n + 1)

end

end A175677.P18369609069159197558

namespace A175677

/-- `C(n+1, 4)%(n+1)` -/
def P18369609069159197558.Spec : Prop :=
  ∀ n, (P18369609069159197558.a n : ℤ) = A175677 (n + 1)

end A175677

/-! ## A175677.P7193766786912728762

`∑[∑[∑[n]+n]]%(n+1)`
-/

namespace A175677.P7193766786912728762
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A175677.P7193766786912728762

namespace A175677

/-- `∑[∑[∑[n]+n]]%(n+1)` -/
def P7193766786912728762.Spec : Prop :=
  ∀ n, (P7193766786912728762.a n : ℤ) = A175677 (n + 1)

end A175677

/-! ## A175677.P17374812243537060553

`1-A111607(n+1)+n`
-/

namespace A175677.P17374812243537060553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A111607 (n + 1) + (n : ℤ)

end

end A175677.P17374812243537060553

namespace A175677

/-- `1-A111607(n+1)+n` -/
def P17374812243537060553.Spec : Prop :=
  ∀ n, P17374812243537060553.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P2275394071559972566

`abs(A005582(n)%-(n+1))`
-/

namespace A175677.P2275394071559972566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A005582 n) (-(n + 1 : ℤ))|

end

end A175677.P2275394071559972566

namespace A175677

/-- `abs(A005582(n)%-(n+1))` -/
def P2275394071559972566.Spec : Prop :=
  ∀ n, P2275394071559972566.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P4971420156230382961

`n-A176145(n+3)%(n+1)`
-/

namespace A175677.P4971420156230382961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A176145 (n + 3)) (n + 1 : ℤ)

end

end A175677.P4971420156230382961

namespace A175677

/-- `n-A176145(n+3)%(n+1)` -/
def P4971420156230382961.Spec : Prop :=
  ∀ n, P4971420156230382961.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P10639812412885236697

`abs(A006504(n+1)%-(n+1))`
-/

namespace A175677.P10639812412885236697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A006504 (n + 1)) (-(n + 1 : ℤ))|

end

end A175677.P10639812412885236697

namespace A175677

/-- `abs(A006504(n+1)%-(n+1))` -/
def P10639812412885236697.Spec : Prop :=
  ∀ n, P10639812412885236697.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P2571375299076058051

`A026393(n+2)%(n+1)*and(1, ∏{p}[n, #])`
-/

namespace A175677.P2571375299076058051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026393 (n + 2)) (n + 1 : ℤ) * (Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A175677.P2571375299076058051

namespace A175677

/-- `A026393(n+2)%(n+1)*and(1, ∏{p}[n, #])` -/
def P2571375299076058051.Spec : Prop :=
  ∀ n, P2571375299076058051.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P18259933740392969589

`abs(Δ[A000389(n+1)]%(n+1))`
-/

namespace A175677.P18259933740392969589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A175677.P18259933740392969589

namespace A175677

/-- `abs(Δ[A000389(n+1)]%(n+1))` -/
def P18259933740392969589.Spec : Prop :=
  ∀ n, P18259933740392969589.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P8282165247481770057

`A231642(∑[n]+4)`
-/

namespace A175677.P8282165247481770057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A175677.P8282165247481770057

namespace A175677

/-- `A231642(∑[n]+4)` -/
def P8282165247481770057.Spec : Prop :=
  ∀ n, P8282165247481770057.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P2042044461506294758

`A056926(n)*A231642(A060577(n))`
-/

namespace A175677.P2042044461506294758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n * A231642 (A060577 n).toNat

end

end A175677.P2042044461506294758

namespace A175677

/-- `A056926(n)*A231642(A060577(n))` -/
def P2042044461506294758.Spec : Prop :=
  ∀ n, P2042044461506294758.a n = A175677 (n + 1)

end A175677

/-! ## A175677.P15277272815872634737

`A118759(A005582(n)%(n+1))`
-/

namespace A175677.P15277272815872634737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A005582 n) (n + 1 : ℤ)).toNat

end

end A175677.P15277272815872634737

namespace A175677

/-- `A118759(A005582(n)%(n+1))` -/
def P15277272815872634737.Spec : Prop :=
  ∀ n, P15277272815872634737.a n = A175677 (n + 1)

end A175677

/-!
# A175678: Numbers m such that the arithmetic mean Ad(m) of the divisors of m and the arithmetic mean Ah(m) of the numbers h < m such that gcd(h,m) = 1 are both integer.

The programs for A175678, there is no canonical definition to state claims against.
-/

/-! ## A175678.P4365763938185522403

`∩[floor(2/acot(n)), A003601(n+1)]`
-/

namespace A175678.P4365763938185522403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175678.P4365763938185522403

/-! ## A175678.P15936439804992704875

`∩[floor(2/acot(n)), A023883(n+1)]`
-/

namespace A175678.P15936439804992704875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175678.P15936439804992704875

/-! ## A175678.P18192892425997420113

`eq[(n%2)^n, A057021(n+1)]+1`
-/

namespace A175678.P18192892425997420113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175678.P18192892425997420113

/-! ## A175678.P14441535798209867207

`eq[C(or(1, n), n), A176801(n+1)]+1`
-/

namespace A175678.P14441535798209867207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175678.P14441535798209867207

/-! ## A175678.P14306126402028072668

`record[gcd(n*and(1, n)+1, A054025(n+1))]`
-/

namespace A175678.P14306126402028072668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * Nat.land 1 n + 1 : ℤ) (A054025 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175678.P14306126402028072668

/-! ## A175678.P15426580880961802326

`filter[A004277(n), A245656(#)]`
-/

namespace A175678.P15426580880961802326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A175678.P15426580880961802326

/-! ## A175678.P15493211699253848669

`filter[A103517(n), A245656(#)]`
-/

namespace A175678.P15493211699253848669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A175678.P15493211699253848669

/-! ## A175678.P12901891159509894076

`filter[A003601(n+1), A135528(#)]`
-/

namespace A175678.P12901891159509894076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A175678.P12901891159509894076

/-! ## A175678.P2954798063415553

`filter[A023883(n+1), A135528(#)]`
-/

namespace A175678.P2954798063415553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A175678.P2954798063415553

/-! ## A175678.P9512025928412513691

`filter[A004275(n+1), A245656(#)]`
-/

namespace A175678.P9512025928412513691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A175678.P9512025928412513691

/-!
# A175679: Numbers m such that arithmetic mean Ad(m) of divisors of m and arithmetic mean Ak(m) of numbers 1 <= k <= m are both integer.

The programs for A175679, there is no canonical definition to state claims against.
-/

/-! ## A175679.P10871133750392447267

`filter[2*n+1, A245656(#)]`
-/

namespace A175679.P10871133750392447267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j) = 1) n)

end

end A175679.P10871133750392447267

/-! ## A175679.P7378492169102756423

`eq[n%2, A057021(or(1, n))]`
-/

namespace A175679.P7378492169102756423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175679.P7378492169102756423

/-! ## A175679.P9226919103567437873

`eq[gcd(2, n), A245656(or(1, n))]`
-/

namespace A175679.P9226919103567437873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175679.P9226919103567437873

/-! ## A175679.P16142413360317049462

`∩[comp[2*n], A003601(n+1)]`
-/

namespace A175679.P16142413360317049462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A175679.P16142413360317049462

/-! ## A175679.P2097887896386701367

`comp[∪[2*n, A049642(n+1)]]`
-/

namespace A175679.P2097887896386701367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175679.P2097887896386701367

/-! ## A175679.P16025912110432457792

`∩[2*n+1, A046839(n+1)]`
-/

namespace A175679.P16025912110432457792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175679.P16025912110432457792

/-! ## A175679.P9103640782708128229

`eq[(-1)^n, A057021(n+1)]+1`
-/

namespace A175679.P9103640782708128229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175679.P9103640782708128229

/-! ## A175679.P18283289910228825020

`eq[(-1)^n, A176801(n+1)]+1`
-/

namespace A175679.P18283289910228825020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175679.P18283289910228825020

/-! ## A175679.P15942487347852731973

`eq[(-1)^n, A245656(n+1)]+1`
-/

namespace A175679.P15942487347852731973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175679.P15942487347852731973

/-! ## A175679.P12921669431694525156

`record[2*(n+1)-A057021(2*n+1)]`
-/

namespace A175679.P12921669431694525156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A057021 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175679.P12921669431694525156

/-!
# A175680: Semiprimes that are not Chen semiprimes A175634.

The programs for A175680, there is no canonical definition to state claims against.
-/

/-! ## A175680.P2233053073111719041

`lt[exp(A105700(n+4)), A105700(n)]`
-/

namespace A175680.P2233053073111719041
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A105700 (n + 4) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A175680.P2233053073111719041

/-! ## A175680.P2291999350351683740

`A175735(n+1)+A175634(n+1)`
-/

namespace A175680.P2291999350351683740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175735 (n + 1) + A175634 (n + 1)

end

end A175680.P2291999350351683740

/-! ## A175680.P16243928789787649156

`∩[lt[3, A222084(n+4)], A001358(n+1)]`
-/

namespace A175680.P16243928789787649156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222084 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A175680.P16243928789787649156

/-! ## A175680.P13775683496102529711

`∩[lt[2, A050379(n+4)], A186621(n+1)+1]`
-/

namespace A175680.P13775683496102529711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A175680.P13775683496102529711

/-! ## A175680.P10423833817768448057

`lt[A105700(n+4)+A000035(n), A105700(n)]`
-/

namespace A175680.P10423833817768448057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (n + 4) + A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175680.P10423833817768448057

/-! ## A175680.P11211687974673286760

`lt[A016815(n)^A105700(n+4), A105700(n)]`
-/

namespace A175680.P11211687974673286760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016815 n : ℚ) ^ (A105700 (n + 4) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A175680.P11211687974673286760

/-! ## A175680.P9004437399556669643

`lt[A006881(n+1)^A105700(n+4), A105700(n)]`
-/

namespace A175680.P9004437399556669643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006881 (n + 1) : ℚ) ^ (A105700 (n + 4) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A175680.P9004437399556669643

/-! ## A175680.P11653641924423830003

`lt[A070006(n+1)^A105700(n+4), A105700(n)]`
-/

namespace A175680.P11653641924423830003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070006 (n + 1) : ℚ) ^ (A105700 (n + 4) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A175680.P11653641924423830003

/-!
# A175681: The sum of maximal run and minimal run lengths in binary representation of n.

The programs for A175681, the canonical program `A175681.P8833139429948162726` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175681 has offset 1).

The definition of A175681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043276, A175597, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175681.P8833139429948162726

`A043276(n+1)+A175597(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175681

/-- `A043276(n+1)+A175597(n+1)` -/
def P8833139429948162726.Spec : Prop :=
  ∀ n, P8833139429948162726.a n = A175681 (n + 1)

theorem P8833139429948162726.correct : P8833139429948162726.Spec := by
  intro n
  simp only [A175681, Nat.add_sub_cancel]

end A175681

/-! ## A175681.P18144862250476632280

`A175597(n+1)+A175599(n+1)+A175597(n+1)`
-/

namespace A175681.P18144862250476632280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (n + 1) + (A175599 (n + 1) + A175597 (n + 1))

end

end A175681.P18144862250476632280

namespace A175681

/-- `A175597(n+1)+A175599(n+1)+A175597(n+1)` -/
def P18144862250476632280.Spec : Prop :=
  ∀ n, P18144862250476632280.a n = A175681 (n + 1)

end A175681

/-! ## A175681.P463937104903780789

`A043276(n+1)+A043276(n+1)-A175599(n+1)`
-/

namespace A175681.P463937104903780789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1) + (A043276 (n + 1) - A175599 (n + 1))

end

end A175681.P463937104903780789

namespace A175681

/-- `A043276(n+1)+A043276(n+1)-A175599(n+1)` -/
def P463937104903780789.Spec : Prop :=
  ∀ n, P463937104903780789.a n = A175681 (n + 1)

end A175681

/-! ## A175681.P17951209608538367491

`A043276(n+1)+A175665(n+1)/A043276(n+1)`
-/

namespace A175681.P17951209608538367491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043276 (n + 1) : ℚ) + (A175665 (n + 1) : ℚ) / (A043276 (n + 1) : ℚ)

end

end A175681.P17951209608538367491

namespace A175681

/-- `A043276(n+1)+A175665(n+1)/A043276(n+1)` -/
def P17951209608538367491.Spec : Prop :=
  ∀ n, P17951209608538367491.a n = (A175681 (n + 1) : ℚ)

end A175681

/-! ## A175681.P13218884210390562051

`A175597(n+1)+A175665(n+1)/A175597(n+1)`
-/

namespace A175681.P13218884210390562051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175597 (n + 1) : ℚ) + (A175665 (n + 1) : ℚ) / (A175597 (n + 1) : ℚ)

end

end A175681.P13218884210390562051

namespace A175681

/-- `A175597(n+1)+A175665(n+1)/A175597(n+1)` -/
def P13218884210390562051.Spec : Prop :=
  ∀ n, P13218884210390562051.a n = (A175681 (n + 1) : ℚ)

end A175681

/-! ## A175681.P5682567766280695699

`A175597(n+1)+A087117(A320261(n+1)-A320263(n+1))`
-/

namespace A175681.P5682567766280695699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (n + 1) + A087117 (A320261 (n + 1) - A320263 (n + 1)).toNat

end

end A175681.P5682567766280695699

namespace A175681

/-- `A175597(n+1)+A087117(A320261(n+1)-A320263(n+1))` -/
def P5682567766280695699.Spec : Prop :=
  ∀ n, P5682567766280695699.a n = A175681 (n + 1)

end A175681

/-! ## A175681.P16991513891561576601

`A175597(n+1)+A038374(A035928(n+1))`
-/

namespace A175681.P16991513891561576601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (n + 1) + A038374 (A035928 (n + 1)).toNat

end

end A175681.P16991513891561576601

namespace A175681

/-- `A175597(n+1)+A038374(A035928(n+1))` -/
def P16991513891561576601.Spec : Prop :=
  ∀ n, P16991513891561576601.a n = A175681 (n + 1)

end A175681

/-! ## A175681.P8976016899295737697

`A175597(n+1)+A038374(A253608(n+1))`
-/

namespace A175681.P8976016899295737697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (n + 1) + A038374 (A253608 (n + 1)).toNat

end

end A175681.P8976016899295737697

namespace A175681

/-- `A175597(n+1)+A038374(A253608(n+1))` -/
def P8976016899295737697.Spec : Prop :=
  ∀ n, P8976016899295737697.a n = A175681 (n + 1)

end A175681

/-! ## A175681.P11513833045371451260

`A330036(A035928(n+1))-A175599(n+1)`
-/

namespace A175681.P11513833045371451260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 (A035928 (n + 1)).toNat - A175599 (n + 1)

end

end A175681.P11513833045371451260

namespace A175681

/-- `A330036(A035928(n+1))-A175599(n+1)` -/
def P11513833045371451260.Spec : Prop :=
  ∀ n, P11513833045371451260.a n = A175681 (n + 1)

end A175681

/-! ## A175681.P17613985862124343704

`A144790(A035928(n+1))+A038374(A253608(n+1))`
-/

namespace A175681.P17613985862124343704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A035928 (n + 1)).toNat + A038374 (A253608 (n + 1)).toNat

end

end A175681.P17613985862124343704

namespace A175681

/-- `A144790(A035928(n+1))+A038374(A253608(n+1))` -/
def P17613985862124343704.Spec : Prop :=
  ∀ n, P17613985862124343704.a n = A175681 (n + 1)

end A175681

/-!
# A175682: Maximal run length of positive primes of the form ..., n-2*3*5, n-2*3, n-2, n, n+2, n+2*3, n+2*3*5, ...

The programs for A175682, there is no canonical definition to state claims against.
-/

/-! ## A175682.P7294393923683563657

`Δ[A230980(n)]*A332888(A277709(n+1))`
-/

namespace A175682.P7294393923683563657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A332888 (A277709 (n + 1)).toNat

end

end A175682.P7294393923683563657

/-! ## A175682.P1047950797615049986

`A010051(n+1)*A332888(A277709(n+1))`
-/

namespace A175682.P1047950797615049986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A332888 (A277709 (n + 1)).toNat

end

end A175682.P1047950797615049986

/-! ## A175682.P13152770857727751061

`A210435(A112040(n+1))%A089026(n+1)`
-/

namespace A175682.P13152770857727751061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210435 (A112040 (n + 1)).toNat) (A089026 (n + 1))

end

end A175682.P13152770857727751061

/-! ## A175682.P15070881511933630929

`A332888(A277709(n+1))%A089026(n+1)`
-/

namespace A175682.P15070881511933630929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332888 (A277709 (n + 1)).toNat) (A089026 (n + 1))

end

end A175682.P15070881511933630929

/-! ## A175682.P11433044049015452444

`char[A008578(n+2)-1]*A332888(A277709(n+1))`
-/

namespace A175682.P11433044049015452444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A332888 (A277709 (n + 1)).toNat

end

end A175682.P11433044049015452444

/-!
# A175683: Numbers n such that 30n-13, 30n-11, 30n-1, 30n+1, 30n+11, 30n+13 are all prime.

The programs for A175683, the canonical program `A175683.P4699863913669522811` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175683 has offset 1).

The definition of A175683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175683.P4699863913669522811

`ceil(A253624(n+2)/30)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175683

/-- `ceil(A253624(n+2)/30)` -/
def P4699863913669522811.Spec : Prop :=
  ∀ n, P4699863913669522811.a n = A175683 (n + 1)

theorem P4699863913669522811.correct : P4699863913669522811.Spec := by
  intro n
  simp only [A175683, Nat.add_sub_cancel]

end A175683

/-! ## A175683.P7538979095973544239

`round(A253624(C(n+2, n+1))/30)`
-/

namespace A175683.P7538979095973544239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A253624 (Nat.choose (n + 2) (n + 1)) : ℚ) / 30)

end

end A175683.P7538979095973544239

namespace A175683

/-- `round(A253624(C(n+2, n+1))/30)` -/
def P7538979095973544239.Spec : Prop :=
  ∀ n, P7538979095973544239.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P4114077879758833357

`or(round(A253624(n+2)/30), A000007(n))`
-/

namespace A175683.P4114077879758833357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A253624 (n + 2) : ℚ) / 30)) (A000007 n)

end

end A175683.P4114077879758833357

namespace A175683

/-- `or(round(A253624(n+2)/30), A000007(n))` -/
def P4114077879758833357.Spec : Prop :=
  ∀ n, P4114077879758833357.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P5872700299774297869

`floor(A253624(n+2)/30)+A020985(n)²`
-/

namespace A175683.P5872700299774297869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253624 (n + 2) : ℚ) / 30⌋ + A020985 n ^ 2

end

end A175683.P5872700299774297869

namespace A175683

/-- `floor(A253624(n+2)/30)+A020985(n)²` -/
def P5872700299774297869.Spec : Prop :=
  ∀ n, P5872700299774297869.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P16148736811644322988

`char[A004454(n)]+floor(A253624(n+2)/30)`
-/

namespace A175683.P16148736811644322988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004454 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(A253624 (n + 2) : ℚ) / 30⌋

end

end A175683.P16148736811644322988

namespace A175683

/-- `char[A004454(n)]+floor(A253624(n+2)/30)` -/
def P16148736811644322988.Spec : Prop :=
  ∀ n, P16148736811644322988.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P4074338778093326860

`round(A253624(n+2)/30)%A020449(n+1)`
-/

namespace A175683.P4074338778093326860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A253624 (n + 2) : ℚ) / 30)) (A020449 (n + 1))

end

end A175683.P4074338778093326860

namespace A175683

/-- `round(A253624(n+2)/30)%A020449(n+1)` -/
def P4074338778093326860.Spec : Prop :=
  ∀ n, P4074338778093326860.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P9183321535079107165

`round(A253624(n+2)/30*gcd(2, A089443(n+1)))`
-/

namespace A175683.P9183321535079107165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A253624 (n + 2) : ℚ) / 30 * (Int.gcd 2 (A089443 (n + 1)) : ℚ))

end

end A175683.P9183321535079107165

namespace A175683

/-- `round(A253624(n+2)/30*gcd(2, A089443(n+1)))` -/
def P9183321535079107165.Spec : Prop :=
  ∀ n, P9183321535079107165.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P11544366923461156983

`A000035(A225985(n+1))+floor(A253624(n+2)/30)`
-/

namespace A175683.P11544366923461156983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A225985 (n + 1)).toNat + ⌊(A253624 (n + 2) : ℚ) / 30⌋

end

end A175683.P11544366923461156983

namespace A175683

/-- `A000035(A225985(n+1))+floor(A253624(n+2)/30)` -/
def P11544366923461156983.Spec : Prop :=
  ∀ n, P11544366923461156983.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P9433386373282498116

`A018896(A020639(2*(n+1)))+floor(A253624(n+2)/30)`
-/

namespace A175683.P9433386373282498116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018896 (A020639 (2 * (n + 1))).toNat + ⌊(A253624 (n + 2) : ℚ) / 30⌋

end

end A175683.P9433386373282498116

namespace A175683

/-- `A018896(A020639(2*(n+1)))+floor(A253624(n+2)/30)` -/
def P9433386373282498116.Spec : Prop :=
  ∀ n, P9433386373282498116.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P18117948446694875671

`A001222(A065091(n+1))+floor(A253624(n+2)/30)`
-/

namespace A175683.P18117948446694875671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat + ⌊(A253624 (n + 2) : ℚ) / 30⌋

end

end A175683.P18117948446694875671

namespace A175683

/-- `A001222(A065091(n+1))+floor(A253624(n+2)/30)` -/
def P18117948446694875671.Spec : Prop :=
  ∀ n, P18117948446694875671.a n = A175683 (n + 1)

end A175683

/-! ## A175683.P8418484850017804697

`A000035(2*n+1)+floor(A253624(n+2)/30)`
-/

namespace A175683.P8418484850017804697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + ⌊(A253624 (n + 2) : ℚ) / 30⌋

end

end A175683.P8418484850017804697

namespace A175683

/-- `A000035(2*n+1)+floor(A253624(n+2)/30)` -/
def P8418484850017804697.Spec : Prop :=
  ∀ n, P8418484850017804697.a n = A175683 (n + 1)

end A175683

/-!
# A175684: a(0)=11, then a(n) is the smallest prime p not already used such that (first two digits of p) = (last two digits of a(n-1)).

The programs for A175684, there is no canonical definition to state claims against.
-/

/-! ## A175684.P5518737988148222916

`A381130(A292125(n+1))`
-/

namespace A175684.P5518737988148222916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381130 (A292125 (n + 1)).toNat

end

end A175684.P5518737988148222916

/-! ## A175684.P1594815099134622106

`A381130(n+1)%A134845(3*n+1)`
-/

namespace A175684.P1594815099134622106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381130 (n + 1)) (A134845 (3 * n + 1))

end

end A175684.P1594815099134622106

/-!
# A175685: Array a(n,m) = Sum_{j=floor((n-1)/2)-m..floor(n-1)/2} binomial(n-j-1,j) read by antidiagonals.

The programs for A175685, there is no canonical definition to state claims against.
-/

/-! ## A175685.P11488712690337915561

`A164002(A133713(n+3))`
-/

namespace A175685.P11488712690337915561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164002 (A133713 (n + 3)).toNat

end

end A175685.P11488712690337915561

/-! ## A175685.P783130865626688116

`A055642(A105278(n+2)%A105278(n+1))`
-/

namespace A175685.P783130865626688116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A105278 (n + 2)) (A105278 (n + 1))).toNat

end

end A175685.P783130865626688116

/-! ## A175685.P767467717902749259

`gcd(A055642(A222005(n+1)), A066121(n+1))`
-/

namespace A175685.P767467717902749259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A222005 (n + 1)).toNat) (A066121 (n + 1))

end

end A175685.P767467717902749259

/-! ## A175685.P16474152897319206497

`A008284(lt[A051308(n+2), A186110(n+1)])`
-/

namespace A175685.P16474152897319206497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051308 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175685.P16474152897319206497

/-! ## A175685.P11333802696680780247

`A044947(A105623(n))`
-/

namespace A175685.P11333802696680780247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A105623 n).toNat

end

end A175685.P11333802696680780247

/-!
# A175686: a(n) = binomial(n-j-1,j) + binomial(n-j,j-1) with j= floor((n-1)/2).

The programs for A175686, the canonical program `A175686.P16920548616251606721` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175686 has offset 0).

The definition of A175686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175686.P16920548616251606721

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4, a(6)=7, a(7)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175686

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P16920548616251606721.Spec : Prop :=
  ∀ n, P16920548616251606721.a n = A175686 n

theorem P16920548616251606721.correct : P16920548616251606721.Spec := by
  intro n
  simp only [A175686]

end A175686

/-! ## A175686.P6522674714667018502

`Δ[A055804(n+5)]`
-/

namespace A175686.P6522674714667018502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055804 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175686.P6522674714667018502

namespace A175686

/-- `Δ[A055804(n+5)]` -/
def P6522674714667018502.Spec : Prop :=
  ∀ n, P6522674714667018502.a n = A175686 n

end A175686

/-! ## A175686.P14515030327292329991

`A055804(n+6)-A055804(n+5)`
-/

namespace A175686.P14515030327292329991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055804 (n + 6) - A055804 (n + 5)

end

end A175686.P14515030327292329991

namespace A175686

/-- `A055804(n+6)-A055804(n+5)` -/
def P14515030327292329991.Spec : Prop :=
  ∀ n, P14515030327292329991.a n = A175686 n

end A175686

/-! ## A175686.P18332874867809298315

`A114092(A004275(n))-A000007(n)`
-/

namespace A175686.P18332874867809298315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114092 (A004275 n).toNat - A000007 n

end

end A175686.P18332874867809298315

namespace A175686

/-- `A114092(A004275(n))-A000007(n)` -/
def P18332874867809298315.Spec : Prop :=
  ∀ n, P18332874867809298315.a n = A175686 n

end A175686

/-! ## A175686.P4861033838292118190

`A114092(A004275(n))%A001753(n)`
-/

namespace A175686.P4861033838292118190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114092 (A004275 n).toNat) (A001753 n)

end

end A175686.P4861033838292118190

namespace A175686

/-- `A114092(A004275(n))%A001753(n)` -/
def P4861033838292118190.Spec : Prop :=
  ∀ n, P4861033838292118190.a n = A175686 n

end A175686

/-! ## A175686.P678297284576399953

`A000035(A004273(n))*A114092(A004275(n))`
-/

namespace A175686.P678297284576399953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004273 n).toNat * A114092 (A004275 n).toNat

end

end A175686.P678297284576399953

namespace A175686

/-- `A000035(A004273(n))*A114092(A004275(n))` -/
def P678297284576399953.Spec : Prop :=
  ∀ n, P678297284576399953.a n = A175686 n

end A175686

/-! ## A175686.P14191269671221756061

`A228074(A165157(n))`
-/

namespace A175686.P14191269671221756061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (A165157 n).toNat

end

end A175686.P14191269671221756061

namespace A175686

/-- `A228074(A165157(n))` -/
def P14191269671221756061.Spec : Prop :=
  ∀ n, P14191269671221756061.a n = A175686 n

end A175686

/-! ## A175686.P18213830271664083945

`A228074(eq[A007318(n+1), A037027(n+1)])`
-/

namespace A175686.P18213830271664083945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175686.P18213830271664083945

namespace A175686

/-- `A228074(eq[A007318(n+1), A037027(n+1)])` -/
def P18213830271664083945.Spec : Prop :=
  ∀ n, P18213830271664083945.a n = A175686 n

end A175686

/-! ## A175686.P6099520797752712857

`A228074(eq[A007318(n+1), A105809(n+1)])`
-/

namespace A175686.P6099520797752712857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175686.P6099520797752712857

namespace A175686

/-- `A228074(eq[A007318(n+1), A105809(n+1)])` -/
def P6099520797752712857.Spec : Prop :=
  ∀ n, P6099520797752712857.a n = A175686 n

end A175686

/-! ## A175686.P7487965200592192577

`Δ[A055801(∑[n+6]+10)]`
-/

namespace A175686.P7487965200592192577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (∑ j ∈ Finset.range (n + 1), f2 j + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175686.P7487965200592192577

namespace A175686

/-- `Δ[A055801(∑[n+6]+10)]` -/
def P7487965200592192577.Spec : Prop :=
  ∀ n, P7487965200592192577.a n = A175686 n

end A175686

/-!
# A175688: Numbers k with property that arithmetic mean of its digits is both an integer and one of the digits of k.

The programs for A175688, there is no canonical definition to state claims against.
-/

/-! ## A175688.P8162795776476744151

`∩[A178403(n+1), A061383(n)]`
-/

namespace A175688.P8162795776476744151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175688.P8162795776476744151

/-! ## A175688.P17787939141089840419

`A144200(3*(n+1))+A002113(n+1)`
-/

namespace A175688.P17787939141089840419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (3 * (n + 1)) + A002113 (n + 1)

end

end A175688.P17787939141089840419

/-! ## A175688.P15951994424203022749

`A025441(A161198(n))+A002113(n+1)`
-/

namespace A175688.P15951994424203022749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A161198 n).toNat + A002113 (n + 1)

end

end A175688.P15951994424203022749

/-! ## A175688.P4177357416819354389

`A316866(A107862(n))+A002113(n+1)`
-/

namespace A175688.P4177357416819354389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A107862 n).toNat + A002113 (n + 1)

end

end A175688.P4177357416819354389

/-! ## A175688.P7325169670986405124

`A269166(A241810(n))+A002113(n+1)`
-/

namespace A175688.P7325169670986405124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A241810 n).toNat + A002113 (n + 1)

end

end A175688.P7325169670986405124

/-!
# A175689: a(n) is the smallest square that has n as a string immediately before the final digit, or 0 if no such number exists.

The programs for A175689, there is no canonical definition to state claims against.
-/

/-! ## A175689.P8033166327402749228

`A110304((n+4)²)`
-/

namespace A175689.P8033166327402749228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110304 ((n + 4) ^ 2)

end

end A175689.P8033166327402749228

/-!
# A175699: a(n) = n ^ phi(n-1), phi(n) = A000010(n) = Euler totient function.

The programs for A175699, there is no canonical definition to state claims against.
-/

/-! ## A175699.P4871222520593151736

`(n+1)^A390279(∑[n])`
-/

namespace A175699.P4871222520593151736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A390279 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A175699.P4871222520593151736

/-! ## A175699.P1795256586234318507

`(n+1)^A000010(round(acot(n)+n))`
-/

namespace A175699.P1795256586234318507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℤ)

end

end A175699.P1795256586234318507

/-! ## A175699.P1938426636122949390

`(n+1)^A000010(n^floor(atan(n)))`
-/

namespace A175699.P1938426636122949390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat : ℤ)

end

end A175699.P1938426636122949390

/-! ## A175699.P12570973251391438630

`(n+1)^A000010(abs(1-n)+1)`
-/

namespace A175699.P12570973251391438630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (|1 - (n : ℤ)| + 1).toNat : ℤ)

end

end A175699.P12570973251391438630

/-! ## A175699.P7911966634299646484

`(n+1)^A059380(A179865(n+1))`
-/

namespace A175699.P7911966634299646484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A059380 (A179865 (n + 1)).toNat : ℤ)

end

end A175699.P7911966634299646484

/-! ## A175699.P3104311793830099915

`(n+1)^A324104(A005940(n+1))`
-/

namespace A175699.P3104311793830099915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A324104 (A005940 (n + 1)).toNat : ℤ)

end

end A175699.P3104311793830099915

