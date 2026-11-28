import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C015
import Seq.B000.C033
import Seq.B006.C000
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A019722: Expansion of 1/((1-4x)(1-9x)(1-12x)).

The programs for A019722, the canonical program `A019722.P15273333111438988521` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019722 has offset 0).

The definition of A019722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-25x+192x^2-432x^3))` (program `A019722.P15273333111438988521`, by `A019722.P15273333111438988521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019722.P15273333111438988521

`ogf(1/(1-25x+192x^2-432x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019722

/-- `ogf(1/(1-25x+192x^2-432x^3))` -/
def P15273333111438988521.Spec : Prop :=
  ∀ n, P15273333111438988521.a n = A019722 n

theorem P15273333111438988521.correct : P15273333111438988521.Spec := by
  intro n
  simp only [A019722]

end A019722

/-! ## A019722.P17684256054958011211

`21*a(n-1)-108*a(n-2)+4^n` with `a(0)=1, a(1)=25`
-/

namespace A019722.P17684256054958011211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + (4 ^ n : ℤ)

end

end A019722.P17684256054958011211

namespace A019722

/-- `21*a(n-1)-108*a(n-2)+4^n` -/
def P17684256054958011211.Spec : Prop :=
  ∀ n, P17684256054958011211.a n = A019722 n

end A019722

/-! ## A019722.P8122024978519327586

`2*4^n/5-3^(2*n+3)/5+12^n*6`
-/

namespace A019722.P8122024978519327586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℚ) / 5 - (3 ^ (2 * n + 3) : ℚ) / 5 + (12 ^ n * 6 : ℚ)

end

end A019722.P8122024978519327586

namespace A019722

/-- `2*4^n/5-3^(2*n+3)/5+12^n*6` -/
def P8122024978519327586.Spec : Prop :=
  ∀ n, P8122024978519327586.a n = (A019722 n : ℚ)

end A019722

/-! ## A019722.P15977342592254048723

`(A020978(n)+A019664(n))/2`
-/

namespace A019722.P15977342592254048723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020978 n + A019664 n : ℚ) / 2

end

end A019722.P15977342592254048723

namespace A019722

/-- `(A020978(n)+A019664(n))/2` -/
def P15977342592254048723.Spec : Prop :=
  ∀ n, P15977342592254048723.a n = (A019722 n : ℚ)

end A019722

/-! ## A019722.P7006134706656382430

`(A019664(n)+Δ[A016263(n)-A016260(n)])/2`
-/

namespace A019722.P7006134706656382430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016263 n - A016260 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019664 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A019722.P7006134706656382430

namespace A019722

/-- `(A019664(n)+Δ[A016263(n)-A016260(n)])/2` -/
def P7006134706656382430.Spec : Prop :=
  ∀ n, P7006134706656382430.a n = (A019722 n : ℚ)

end A019722

/-!
# A019742: Expansion of 1/((1-4x)(1-10x)(1-11x)).

The programs for A019742, the canonical program `A019742.P1241657517535043256` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019742 has offset 0).

The definition of A019742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-25x+194x^2-440x^3))` (program `A019742.P1241657517535043256`, by `A019742.P1241657517535043256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019742.P1241657517535043256

`ogf(1/(1-25x+194x^2-440x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019742

/-- `ogf(1/(1-25x+194x^2-440x^3))` -/
def P1241657517535043256.Spec : Prop :=
  ∀ n, P1241657517535043256.a n = A019742 n

theorem P1241657517535043256.correct : P1241657517535043256.Spec := by
  intro n
  simp only [A019742]

end A019742

/-! ## A019742.P18012483491542826860

`21*a(n-1)-110*a(n-2)+4^n` with `a(0)=1, a(1)=25`
-/

namespace A019742.P18012483491542826860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (4 ^ n : ℤ)

end

end A019742.P18012483491542826860

namespace A019742

/-- `21*a(n-1)-110*a(n-2)+4^n` -/
def P18012483491542826860.Spec : Prop :=
  ∀ n, P18012483491542826860.a n = A019742 n

end A019742

/-! ## A019742.P2170510825238954388

`2*4^(n+1)/21+11^(n+2)/7-5*10^(n+1)/3`
-/

namespace A019742.P2170510825238954388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ (n + 1) : ℚ) / 21 + (11 ^ (n + 2) : ℚ) / 7 - (5 * 10 ^ (n + 1) : ℚ) / 3

end

end A019742.P2170510825238954388

namespace A019742

/-- `2*4^(n+1)/21+11^(n+2)/7-5*10^(n+1)/3` -/
def P2170510825238954388.Spec : Prop :=
  ∀ n, P2170510825238954388.a n = (A019742 n : ℚ)

end A019742

/-! ## A019742.P13246883999679562823

`Δ[A016226(n)-A016225(n)]`
-/

namespace A019742.P13246883999679562823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n - A016225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019742.P13246883999679562823

namespace A019742

/-- `Δ[A016226(n)-A016225(n)]` -/
def P13246883999679562823.Spec : Prop :=
  ∀ n, P13246883999679562823.a n = A019742 n

end A019742

/-!
# A019747: Expansion of 1/((1-4x)(1-10x)(1-12x)).

The programs for A019747, the canonical program `A019747.P2158911123553019833` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019747 has offset 0).

The definition of A019747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-26x+208x^2-480x^3))` (program `A019747.P2158911123553019833`, by `A019747.P2158911123553019833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019747.P2158911123553019833

`ogf(1/(1-26x+208x^2-480x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019747

/-- `ogf(1/(1-26x+208x^2-480x^3))` -/
def P2158911123553019833.Spec : Prop :=
  ∀ n, P2158911123553019833.a n = A019747 n

theorem P2158911123553019833.correct : P2158911123553019833.Spec := by
  intro n
  simp only [A019747]

end A019747

/-! ## A019747.P16580310711333616400

`22*a(n-1)-120*a(n-2)+4^n` with `a(0)=1, a(1)=26`
-/

namespace A019747.P16580310711333616400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (4 ^ n : ℤ)

end

end A019747.P16580310711333616400

namespace A019747

/-- `22*a(n-1)-120*a(n-2)+4^n` -/
def P16580310711333616400.Spec : Prop :=
  ∀ n, P16580310711333616400.a n = A019747 n

end A019747

/-! ## A019747.P10078559558573596918

`2^n*A016295(n)`
-/

namespace A019747.P10078559558573596918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016295 n

end

end A019747.P10078559558573596918

namespace A019747

/-- `2^n*A016295(n)` -/
def P10078559558573596918.Spec : Prop :=
  ∀ n, P10078559558573596918.a n = A019747 n

end A019747

/-! ## A019747.P14187024736252723627

`A016196(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019747.P14187024736252723627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016196 n + 4 * a (n - 1)

end

end A019747.P14187024736252723627

namespace A019747

/-- `A016196(n)+4*a(n-1)` -/
def P14187024736252723627.Spec : Prop :=
  ∀ n, P14187024736252723627.a n = A019747 n

end A019747

/-! ## A019747.P6981924950717056108

`lcm(A000079(n), A016295(n))`
-/

namespace A019747.P6981924950717056108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A016295 n)

end

end A019747.P6981924950717056108

namespace A019747

/-- `lcm(A000079(n), A016295(n))` -/
def P6981924950717056108.Spec : Prop :=
  ∀ n, (P6981924950717056108.a n : ℤ) = A019747 n

end A019747

/-! ## A019747.P15047486835809025076

`2*A019677(n)-A019671(n)`
-/

namespace A019747.P15047486835809025076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019677 n - A019671 n

end

end A019747.P15047486835809025076

namespace A019747

/-- `2*A019677(n)-A019671(n)` -/
def P15047486835809025076.Spec : Prop :=
  ∀ n, P15047486835809025076.a n = A019747 n

end A019747

/-! ## A019747.P18237305245505402179

`(A019752(n)+A019742(n))/2`
-/

namespace A019747.P18237305245505402179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019752 n + A019742 n : ℚ) / 2

end

end A019747.P18237305245505402179

namespace A019747

/-- `(A019752(n)+A019742(n))/2` -/
def P18237305245505402179.Spec : Prop :=
  ∀ n, P18237305245505402179.a n = (A019747 n : ℚ)

end A019747

/-! ## A019747.P6149589347669390742

`A016295(n)*A117303(2*n+1)`
-/

namespace A019747.P6149589347669390742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016295 n * A117303 (2 * n + 1)

end

end A019747.P6149589347669390742

namespace A019747

/-- `A016295(n)*A117303(2*n+1)` -/
def P6149589347669390742.Spec : Prop :=
  ∀ n, P6149589347669390742.a n = A019747 n

end A019747

/-!
# A019752: G.f.: 1/((1-4x)(1-11x)(1-12x)).

The programs for A019752, the canonical program `A019752.P3421644334659185664` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019752 has offset 0).

The definition of A019752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019752.P3421644334659185664

`23*a(n-1)-132*a(n-2)+4^n` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019752

/-- `23*a(n-1)-132*a(n-2)+4^n` -/
def P3421644334659185664.Spec : Prop :=
  ∀ n, P3421644334659185664.a n = A019752 n

theorem P3421644334659185664.correct : P3421644334659185664.Spec := by
  intro n
  simp only [A019752]

end A019752

/-! ## A019752.P6260865247587447693

`(7*12^(n+2)+4^(n+2)-8*11^(n+2))/56`
-/

namespace A019752.P6260865247587447693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 12 ^ (n + 2) + 4 ^ (n + 2) : ℤ) - (8 * 11 ^ (n + 2) : ℤ) : ℚ) / 56

end

end A019752.P6260865247587447693

namespace A019752

/-- `(7*12^(n+2)+4^(n+2)-8*11^(n+2))/56` -/
def P6260865247587447693.Spec : Prop :=
  ∀ n, P6260865247587447693.a n = (A019752 n : ℚ)

theorem P6260865247587447693.correct : P6260865247587447693.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019752, Nat.add_sub_cancel, A019752.P6260865247587447693.a, A019752.P3421644334659185664.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019752, Nat.add_sub_cancel, A019752.P6260865247587447693.a, A019752.P3421644334659185664.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A019752

/-! ## A019752.P12090149018993492783

`Δ[A016227(n)-A016226(n)]`
-/

namespace A019752.P12090149018993492783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016227 n - A016226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019752.P12090149018993492783

namespace A019752

/-- `Δ[A016227(n)-A016226(n)]` -/
def P12090149018993492783.Spec : Prop :=
  ∀ n, P12090149018993492783.a n = A019752 n

end A019752

/-! ## A019752.P13895620870790125170

`2*A019747(n)-A019742(n)`
-/

namespace A019752.P13895620870790125170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019747 n - A019742 n

end

end A019752.P13895620870790125170

namespace A019752

/-- `2*A019747(n)-A019742(n)` -/
def P13895620870790125170.Spec : Prop :=
  ∀ n, P13895620870790125170.a n = A019752 n

end A019752

/-! ## A019752.P10006864238765890285

`A016159(n+1)-A016158(n+1)`
-/

namespace A019752.P10006864238765890285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016159 (n + 1) - A016158 (n + 1)

end

end A019752.P10006864238765890285

namespace A019752

/-- `A016159(n+1)-A016158(n+1)` -/
def P10006864238765890285.Spec : Prop :=
  ∀ n, P10006864238765890285.a n = A019752 n

end A019752

/-! ## A019752.P5277469239590033975

`A020981(n)+A020981(n)-A028160(n)`
-/

namespace A019752.P5277469239590033975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020981 n + (A020981 n - A028160 n)

end

end A019752.P5277469239590033975

namespace A019752

/-- `A020981(n)+A020981(n)-A028160(n)` -/
def P5277469239590033975.Spec : Prop :=
  ∀ n, P5277469239590033975.a n = A019752 n

end A019752

/-! ## A019752.P12737529044542752774

`2*A020981(n)-A028160(n)`
-/

namespace A019752.P12737529044542752774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020981 n - A028160 n

end

end A019752.P12737529044542752774

namespace A019752

/-- `2*A020981(n)-A028160(n)` -/
def P12737529044542752774.Spec : Prop :=
  ∀ n, P12737529044542752774.a n = A019752 n

end A019752

/-!
# A019757: Expansion of 1/((1-5*x)(1-6*x)(1-7*x)).

The programs for A019757, the canonical program `A019757.P6362715439619446998` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019757 has offset 0).

The definition of A019757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-18x+107x^2-210x^3))` (program `A019757.P6362715439619446998`, by `A019757.P6362715439619446998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019757.P410345754025394370

`13*a(n-1)-42*a(n-2)+5^n` with `a(0)=1, a(1)=18`
-/

namespace A019757.P410345754025394370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  13 * a (n - 1) - 42 * a (n - 2) + (5 ^ n : ℤ)

end

end A019757.P410345754025394370

namespace A019757

/-- `13*a(n-1)-42*a(n-2)+5^n` -/
def P410345754025394370.Spec : Prop :=
  ∀ n, P410345754025394370.a n = A019757 n

end A019757

/-! ## A019757.P6593812607445124970

`(7^(n+2)+5^(n+2)-2*6^(n+2))/2`
-/

namespace A019757.P6593812607445124970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) + 5 ^ (n + 2) : ℤ) - (2 * 6 ^ (n + 2) : ℤ) : ℚ) / 2

end

end A019757.P6593812607445124970

namespace A019757

/-- `(7^(n+2)+5^(n+2)-2*6^(n+2))/2` -/
def P6593812607445124970.Spec : Prop :=
  ∀ n, P6593812607445124970.a n = (A019757 n : ℚ)

end A019757

/-! ## A019757.P6362715439619446998

`ogf(1/(1-18x+107x^2-210x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019757

/-- `ogf(1/(1-18x+107x^2-210x^3))` -/
def P6362715439619446998.Spec : Prop :=
  ∀ n, P6362715439619446998.a n = A019757 n

theorem P6362715439619446998.correct : P6362715439619446998.Spec := by
  intro n
  simp only [A019757]

end A019757

/-! ## A019757.P8984405362289951768

`Δ[A016230(n)-A016228(n)]`
-/

namespace A019757.P8984405362289951768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016230 n - A016228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019757.P8984405362289951768

namespace A019757

/-- `Δ[A016230(n)-A016228(n)]` -/
def P8984405362289951768.Spec : Prop :=
  ∀ n, P8984405362289951768.a n = A019757 n

end A019757

/-! ## A019757.P8441801231502832633

`Δ[A016241(n)-A016230(n)]`
-/

namespace A019757.P8441801231502832633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016241 n - A016230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019757.P8441801231502832633

namespace A019757

/-- `Δ[A016241(n)-A016230(n)]` -/
def P8441801231502832633.Spec : Prop :=
  ∀ n, P8441801231502832633.a n = A019757 n

end A019757

/-! ## A019757.P3266525797442774197

`A081200(n+2)-A005062(n+2)`
-/

namespace A019757.P3266525797442774197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 (n + 2) - A005062 (n + 2)

end

end A019757.P3266525797442774197

namespace A019757

/-- `A081200(n+2)-A005062(n+2)` -/
def P3266525797442774197.Spec : Prop :=
  ∀ n, P3266525797442774197.a n = A019757 n

end A019757

/-! ## A019757.P6818515198035850473

`A193685(eq[2, col(n)])`
-/

namespace A019757.P6818515198035850473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193685 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A019757.P6818515198035850473

namespace A019757

/-- `A193685(eq[2, col(n)])` -/
def P6818515198035850473.Spec : Prop :=
  ∀ n, P6818515198035850473.a n = A019757 n

end A019757

/-!
# A019775: Decimal expansion of sqrt(e)/2.

The programs for A019775, there is no canonical definition to state claims against.
-/

/-! ## A019775.P4841894602535761599

`9-A385496(n)`
-/

namespace A019775.P4841894602535761599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A385496 n

end

end A019775.P4841894602535761599

/-!
# A019783: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)).

The programs for A019783, the canonical program `A019783.P10168253776653980187` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019783 has offset 0).

The definition of A019783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-19x+118x^2-240x^3))` (program `A019783.P10168253776653980187`, by `A019783.P10168253776653980187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019783.P1391654858361693251

`14*a(n-1)-48*a(n-2)+5^n` with `a(0)=1, a(1)=19`
-/

namespace A019783.P1391654858361693251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  14 * a (n - 1) - 48 * a (n - 2) + (5 ^ n : ℤ)

end

end A019783.P1391654858361693251

namespace A019783

/-- `14*a(n-1)-48*a(n-2)+5^n` -/
def P1391654858361693251.Spec : Prop :=
  ∀ n, P1391654858361693251.a n = A019783 n

end A019783

/-! ## A019783.P10168253776653980187

`ogf(1/(1-19x+118x^2-240x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019783

/-- `ogf(1/(1-19x+118x^2-240x^3))` -/
def P10168253776653980187.Spec : Prop :=
  ∀ n, P10168253776653980187.a n = A019783 n

theorem P10168253776653980187.correct : P10168253776653980187.Spec := by
  intro n
  simp only [A019783]

end A019783

/-! ## A019783.P6314530945179603393

`(8^(n+2)+2*5^(n+2)-3*6^(n+2))/6`
-/

namespace A019783.P6314530945179603393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 2) + 2 * 5 ^ (n + 2) : ℤ) - (3 * 6 ^ (n + 2) : ℤ) : ℚ) / 6

end

end A019783.P6314530945179603393

namespace A019783

/-- `(8^(n+2)+2*5^(n+2)-3*6^(n+2))/6` -/
def P6314530945179603393.Spec : Prop :=
  ∀ n, P6314530945179603393.a n = (A019783 n : ℚ)

end A019783

/-! ## A019783.P3992261441130320658

`Δ[A016243(n)-A016233(n)]`
-/

namespace A019783.P3992261441130320658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016243 n - A016233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019783.P3992261441130320658

namespace A019783

/-- `Δ[A016243(n)-A016233(n)]` -/
def P3992261441130320658.Spec : Prop :=
  ∀ n, P3992261441130320658.a n = A019783 n

end A019783

/-! ## A019783.P7594167549836090424

`A016304(n)+A016311(n)-A016295(n)`
-/

namespace A019783.P7594167549836090424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016304 n + (A016311 n - A016295 n)

end

end A019783.P7594167549836090424

namespace A019783

/-- `A016304(n)+A016311(n)-A016295(n)` -/
def P7594167549836090424.Spec : Prop :=
  ∀ n, P7594167549836090424.a n = A019783 n

end A019783

/-! ## A019783.P14184788837295400942

`2*A019839(n)-A020346(n)`
-/

namespace A019783.P14184788837295400942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019839 n - A020346 n

end

end A019783.P14184788837295400942

namespace A019783

/-- `2*A019839(n)-A020346(n)` -/
def P14184788837295400942.Spec : Prop :=
  ∀ n, P14184788837295400942.a n = A019783 n

end A019783

/-!
# A019793: Expansion of 1/((1-5x)(1-6x)(1-9x)).

The programs for A019793, the canonical program `A019793.P7884215763445598210` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019793 has offset 0).

The definition of A019793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-20x+129x^2-270x^3))` (program `A019793.P7884215763445598210`, by `A019793.P7884215763445598210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019793.P7884215763445598210

`ogf(1/(1-20x+129x^2-270x^3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019793

/-- `ogf(1/(1-20x+129x^2-270x^3))` -/
def P7884215763445598210.Spec : Prop :=
  ∀ n, P7884215763445598210.a n = A019793 n

theorem P7884215763445598210.correct : P7884215763445598210.Spec := by
  intro n
  simp only [A019793]

end A019793

/-! ## A019793.P10745697896409494973

`15*a(n-1)-54*a(n-2)+5^n` with `a(0)=1, a(1)=20`
-/

namespace A019793.P10745697896409494973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  15 * a (n - 1) - 54 * a (n - 2) + (5 ^ n : ℤ)

end

end A019793.P10745697896409494973

namespace A019793

/-- `15*a(n-1)-54*a(n-2)+5^n` -/
def P10745697896409494973.Spec : Prop :=
  ∀ n, P10745697896409494973.a n = A019793 n

end A019793

/-! ## A019793.P7067950411258900511

`25*5^n/4-12*6^n+27*9^n/4`
-/

namespace A019793.P7067950411258900511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 4 - (12 * 6 ^ n : ℚ) + (27 * 9 ^ n : ℚ) / 4

end

end A019793.P7067950411258900511

namespace A019793

/-- `25*5^n/4-12*6^n+27*9^n/4` -/
def P7067950411258900511.Spec : Prop :=
  ∀ n, P7067950411258900511.a n = (A019793 n : ℚ)

end A019793

/-! ## A019793.P1469281642316827

`Δ[A016244(n)-A016234(n)]`
-/

namespace A019793.P1469281642316827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 n - A016234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019793.P1469281642316827

namespace A019793

/-- `Δ[A016244(n)-A016234(n)]` -/
def P1469281642316827.Spec : Prop :=
  ∀ n, P1469281642316827.a n = A019793 n

end A019793

