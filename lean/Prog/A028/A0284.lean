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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A028400: a(n) = (2^n + 1)^2.

The programs for A028400, the canonical program `A028400.P8275181187823269939` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028400 has offset 0).

The definition of A028400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)²` (program `A028400.P8275181187823269939`, by `A028400.P8275181187823269939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028400.P8275181187823269939

`(2^n+1)²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028400

/-- `(2^n+1)²` -/
def P8275181187823269939.Spec : Prop :=
  ∀ n, (P8275181187823269939.a n : ℤ) = A028400 n

theorem P8275181187823269939.correct : P8275181187823269939.Spec := by
  intro n
  simp only [A028400]

end A028400

/-! ## A028400.P8191569570621807206

`xor(-1, 2^n)^2`
-/

namespace A028400.P8191569570621807206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (2 ^ n : ℤ) ^ 2

end

end A028400.P8191569570621807206

namespace A028400

/-- `xor(-1, 2^n)^2` -/
def P8191569570621807206.Spec : Prop :=
  ∀ n, P8191569570621807206.a n = A028400 n

end A028400

/-! ## A028400.P14811023492003406584

`Δ[or(n, 2^n)]^2`
-/

namespace A028400.P14811023492003406584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A028400.P14811023492003406584

namespace A028400

/-- `Δ[or(n, 2^n)]^2` -/
def P14811023492003406584.Spec : Prop :=
  ∀ n, P14811023492003406584.a n = A028400 n

end A028400

/-! ## A028400.P10605886258470265428

`Δ[xor(n, 2^n)]^2`
-/

namespace A028400.P10605886258470265428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A028400.P10605886258470265428

namespace A028400

/-- `Δ[xor(n, 2^n)]^2` -/
def P10605886258470265428.Spec : Prop :=
  ∀ n, P10605886258470265428.a n = A028400 n

end A028400

/-! ## A028400.P120893215216499469

`∑[2*a(n-1)]^2` with `a(0)=2, a(1)=1`
-/

namespace A028400.P120893215216499469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028400.P120893215216499469

namespace A028400

/-- `∑[2*a(n-1)]^2` -/
def P120893215216499469.Spec : Prop :=
  ∀ n, (P120893215216499469.a n : ℤ) = A028400 n

end A028400

/-! ## A028400.P17855623590961891645

`floor(∑[2*a(n-1)]²)` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A028400.P17855623590961891645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028400.P17855623590961891645

namespace A028400

/-- `floor(∑[2*a(n-1)]²)` -/
def P17855623590961891645.Spec : Prop :=
  ∀ n, (P17855623590961891645.a n : ℤ) = A028400 n

end A028400

/-! ## A028400.P16375220045050402327

`ceil(∑[2*a(n-1)]²)` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A028400.P16375220045050402327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028400.P16375220045050402327

namespace A028400

/-- `ceil(∑[2*a(n-1)]²)` -/
def P16375220045050402327.Spec : Prop :=
  ∀ n, (P16375220045050402327.a n : ℤ) = A028400 n

end A028400

/-! ## A028400.P3322185492276950563

`round(∑[2*a(n-1)]²)` with `a(0)=2, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A028400.P3322185492276950563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028400.P3322185492276950563

namespace A028400

/-- `round(∑[2*a(n-1)]²)` -/
def P3322185492276950563.Spec : Prop :=
  ∀ n, (P3322185492276950563.a n : ℤ) = A028400 n

end A028400

/-! ## A028400.P11998263501190965597

`floor((Δ[2*a(n-1)]+1)²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A028400.P11998263501190965597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2

end

end A028400.P11998263501190965597

namespace A028400

/-- `floor((Δ[2*a(n-1)]+1)²)` -/
def P11998263501190965597.Spec : Prop :=
  ∀ n, P11998263501190965597.a n = A028400 n

end A028400

/-! ## A028400.P14329755059321355956

`floor((4^(n-1)-a(n-1))²)` with `a(0)=4`
-/

namespace A028400.P14329755059321355956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ)) ^ 2⌋

end

end A028400.P14329755059321355956

namespace A028400

/-- `floor((4^(n-1)-a(n-1))²)` -/
def P14329755059321355956.Spec : Prop :=
  ∀ n, P14329755059321355956.a n = A028400 n

end A028400

/-! ## A028400.P6834554089203150201

`ceil((4^(n-1)-a(n-1))²)` with `a(0)=4`
-/

namespace A028400.P6834554089203150201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ)) ^ 2⌉

end

end A028400.P6834554089203150201

namespace A028400

/-- `ceil((4^(n-1)-a(n-1))²)` -/
def P6834554089203150201.Spec : Prop :=
  ∀ n, P6834554089203150201.a n = A028400 n

end A028400

/-! ## A028400.P11578437594817720792

`round((4^(n-1)-a(n-1))²)` with `a(0)=4`
-/

namespace A028400.P11578437594817720792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ)) ^ 2)

end

end A028400.P11578437594817720792

namespace A028400

/-- `round((4^(n-1)-a(n-1))²)` -/
def P11578437594817720792.Spec : Prop :=
  ∀ n, P11578437594817720792.a n = A028400 n

end A028400

/-! ## A028400.P9921389647095052919

`floor(Δ[2*a(n-1)-(n-1)]²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028400.P9921389647095052919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A028400.P9921389647095052919

namespace A028400

/-- `floor(Δ[2*a(n-1)-(n-1)]²)` -/
def P9921389647095052919.Spec : Prop :=
  ∀ n, P9921389647095052919.a n = A028400 n

end A028400

/-! ## A028400.P17985400178314378941

`4*a(n-1)-(2^(n+1)+3)` with `a(0)=4`
-/

namespace A028400.P17985400178314378941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * a (n - 1) - (2 ^ (n + 1) + 3 : ℤ)

end

end A028400.P17985400178314378941

namespace A028400

/-- `4*a(n-1)-(2^(n+1)+3)` -/
def P17985400178314378941.Spec : Prop :=
  ∀ n, P17985400178314378941.a n = A028400 n

theorem P17985400178314378941.correct : P17985400178314378941.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A028400, Nat.add_sub_cancel, A028400.P17985400178314378941.a, A028400.P8275181187823269939.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A028400, Nat.add_sub_cancel, A028400.P17985400178314378941.a, A028400.P8275181187823269939.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028400

/-! ## A028400.P3979906492030868304

`floor(∑[a(n-1)+floor(a(n-1))]²)` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A028400.P3979906492030868304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028400.P3979906492030868304

namespace A028400

/-- `floor(∑[a(n-1)+floor(a(n-1))]²)` -/
def P3979906492030868304.Spec : Prop :=
  ∀ n, (P3979906492030868304.a n : ℤ) = A028400 n

end A028400

/-! ## A028400.P14941076206825990950

`floor(∑[a(n-1)²/a(n-2)]²)` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A028400.P14941076206825990950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A028400.P14941076206825990950

namespace A028400

/-- `floor(∑[a(n-1)²/a(n-2)]²)` -/
def P14941076206825990950.Spec : Prop :=
  ∀ n, P14941076206825990950.a n = A028400 n

end A028400

/-! ## A028400.P5998442689372919506

`A242985(n)+1`
-/

namespace A028400.P5998442689372919506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 n + 1

end

end A028400.P5998442689372919506

namespace A028400

/-- `A242985(n)+1` -/
def P5998442689372919506.Spec : Prop :=
  ∀ n, P5998442689372919506.a n = A028400 n

end A028400

/-! ## A028400.P13619884248837663052

`A183978(Δ[n²])`
-/

namespace A028400.P13619884248837663052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A028400.P13619884248837663052

namespace A028400

/-- `A183978(Δ[n²])` -/
def P13619884248837663052.Spec : Prop :=
  ∀ n, P13619884248837663052.a n = A028400 n

end A028400

/-! ## A028400.P17122669263561198032

`record[A052552(n)²]`
-/

namespace A028400.P17122669263561198032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028400.P17122669263561198032

namespace A028400

/-- `record[A052552(n)²]` -/
def P17122669263561198032.Spec : Prop :=
  ∀ n, P17122669263561198032.a n = A028400 n

end A028400

/-! ## A028400.P9158649765598227326

`A130567(n+1)+2`
-/

namespace A028400.P9158649765598227326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130567 (n + 1) + 2

end

end A028400.P9158649765598227326

namespace A028400

/-- `A130567(n+1)+2` -/
def P9158649765598227326.Spec : Prop :=
  ∀ n, P9158649765598227326.a n = A028400 n

end A028400

/-!
# A028401: The (2^n+1)-th triangular number (cf. A000217).

The programs for A028401, the canonical program `A028401.P16782666663805839320` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028401 has offset 2).

The definition of A028401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028401.P12835634036612917691

`3*A007581(n)`
-/

namespace A028401.P12835634036612917691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007581 n

end

end A028401.P12835634036612917691

namespace A028401

/-- `3*A007581(n)` -/
def P12835634036612917691.Spec : Prop :=
  ∀ n, P12835634036612917691.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P9924209033875975110

`3/4*A060919(n+1)`
-/

namespace A028401.P9924209033875975110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A060919 (n + 1) : ℚ)

end

end A028401.P9924209033875975110

namespace A028401

/-- `3/4*A060919(n+1)` -/
def P9924209033875975110.Spec : Prop :=
  ∀ n, P9924209033875975110.a n = (A028401 (n + 2) : ℚ)

end A028401

/-! ## A028401.P1538013096731520843

`(2^(n+2)+4)*(2^(n+2)+8)/32`
-/

namespace A028401.P1538013096731520843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) + 4) * (2 ^ (n + 2) + 8) : ℚ) / 32

end

end A028401.P1538013096731520843

namespace A028401

/-- `(2^(n+2)+4)*(2^(n+2)+8)/32` -/
def P1538013096731520843.Spec : Prop :=
  ∀ n, P1538013096731520843.a n = (A028401 (n + 2) : ℚ)

end A028401

/-! ## A028401.P16782666663805839320

`a(n-1)+3*A000217(2^(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028401

/-- `a(n-1)+3*A000217(2^(n-1))` -/
def P16782666663805839320.Spec : Prop :=
  ∀ n, P16782666663805839320.a n = A028401 (n + 2)

theorem P16782666663805839320.correct : P16782666663805839320.Spec := by
  intro n
  simp only [A028401, Nat.add_sub_cancel]

end A028401

/-! ## A028401.P11093442499901236898

`4^(n-1)+2*a(n-1)-1` with `a(0)=3`
-/

namespace A028401.P11093442499901236898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2 * a (n - 1) - 1

end

end A028401.P11093442499901236898

namespace A028401

/-- `4^(n-1)+2*a(n-1)-1` -/
def P11093442499901236898.Spec : Prop :=
  ∀ n, P11093442499901236898.a n = (A028401 (n + 2) : ℚ)

end A028401

/-! ## A028401.P13238610672021945658

`or((2^n+4^n)/2+1, 2^n)`
-/

namespace A028401.P13238610672021945658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2 + 1)) (2 ^ n : ℤ)

end

end A028401.P13238610672021945658

namespace A028401

/-- `or((2^n+4^n)/2+1, 2^n)` -/
def P13238610672021945658.Spec : Prop :=
  ∀ n, P13238610672021945658.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P11209863973528496424

`xor((2^n+4^n)/2+1, 2^n)`
-/

namespace A028401.P11209863973528496424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2 + 1)) (2 ^ n : ℤ)

end

end A028401.P11209863973528496424

namespace A028401

/-- `xor((2^n+4^n)/2+1, 2^n)` -/
def P11209863973528496424.Spec : Prop :=
  ∀ n, P11209863973528496424.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P5878165148046199756

`floor(acot(n))!+(2^n+3)*2^(n-1)`
-/

namespace A028401.P5878165148046199756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℚ) + (2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A028401.P5878165148046199756

namespace A028401

/-- `floor(acot(n))!+(2^n+3)*2^(n-1)` -/
def P5878165148046199756.Spec : Prop :=
  ∀ n, P5878165148046199756.a n = (A028401 (n + 2) : ℚ)

end A028401

/-! ## A028401.P3846877064270086990

`a(n-1)+a(n-1)+4^(n-1)-1` with `a(0)=3`
-/

namespace A028401.P3846877064270086990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1

end

end A028401.P3846877064270086990

namespace A028401

/-- `a(n-1)+a(n-1)+4^(n-1)-1` -/
def P3846877064270086990.Spec : Prop :=
  ∀ n, P3846877064270086990.a n = (A028401 (n + 2) : ℚ)

end A028401

/-! ## A028401.P8367016295749898366

`A257273(n)+1`
-/

namespace A028401.P8367016295749898366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n + 1

end

end A028401.P8367016295749898366

namespace A028401

/-- `A257273(n)+1` -/
def P8367016295749898366.Spec : Prop :=
  ∀ n, P8367016295749898366.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P12968554847454989036

`A281481(n)+2^n`
-/

namespace A028401.P12968554847454989036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + (2 ^ n : ℤ)

end

end A028401.P12968554847454989036

namespace A028401

/-- `A281481(n)+2^n` -/
def P12968554847454989036.Spec : Prop :=
  ∀ n, P12968554847454989036.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P14149708422490512081

`A290075(2*n+3)+1`
-/

namespace A028401.P14149708422490512081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (2 * n + 3) + 1

end

end A028401.P14149708422490512081

namespace A028401

/-- `A290075(2*n+3)+1` -/
def P14149708422490512081.Spec : Prop :=
  ∀ n, P14149708422490512081.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P12489483781102113485

`A134169(n)+2^(n+1)`
-/

namespace A028401.P12489483781102113485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n + (2 ^ (n + 1) : ℤ)

end

end A028401.P12489483781102113485

namespace A028401

/-- `A134169(n)+2^(n+1)` -/
def P12489483781102113485.Spec : Prop :=
  ∀ n, P12489483781102113485.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P14835356021258887934

`A032125(n)+a(n-1)` with `a(0)=3`
-/

namespace A028401.P14835356021258887934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A032125 n + a (n - 1)

end

end A028401.P14835356021258887934

namespace A028401

/-- `A032125(n)+a(n-1)` -/
def P14835356021258887934.Spec : Prop :=
  ∀ n, P14835356021258887934.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P14932079394737787883

`A007582(n)+A000051(n)`
-/

namespace A028401.P14932079394737787883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A000051 n

end

end A028401.P14932079394737787883

namespace A028401

/-- `A007582(n)+A000051(n)` -/
def P14932079394737787883.Spec : Prop :=
  ∀ n, P14932079394737787883.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P17033781819784324641

`A048578(n)+A006516(n)`
-/

namespace A028401.P17033781819784324641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n + A006516 n

end

end A028401.P17033781819784324641

namespace A028401

/-- `A048578(n)+A006516(n)` -/
def P17033781819784324641.Spec : Prop :=
  ∀ n, P17033781819784324641.a n = A028401 (n + 2)

end A028401

/-! ## A028401.P16185694280993690946

`C(2^n+2, 2)`
-/

namespace A028401.P16185694280993690946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 2) 2

end

end A028401.P16185694280993690946

namespace A028401

/-- `C(2^n+2, 2)` -/
def P16185694280993690946.Spec : Prop :=
  ∀ n, (P16185694280993690946.a n : ℤ) = A028401 (n + 2)

end A028401

/-!
# A028402: Number of types of Boolean functions of n variables under a certain group.

The programs for A028402, the canonical program `A028402.P13914117859844792663` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028402 has offset 2).

The definition of A028402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028402.P16475013402991905115

`2^(n+1)*(2^(n+1)+1)`
-/

namespace A028402.P16475013402991905115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * (2 ^ (n + 1) + 1)

end

end A028402.P16475013402991905115

namespace A028402

/-- `2^(n+1)*(2^(n+1)+1)` -/
def P16475013402991905115.Spec : Prop :=
  ∀ n, (P16475013402991905115.a n : ℤ) = A028402 (n + 2)

theorem P16475013402991905115.correct : P16475013402991905115.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028402, Nat.add_sub_cancel, A028402.P16475013402991905115.a, A028402.P13914117859844792663.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028402, Nat.add_sub_cancel, A028402.P16475013402991905115.a, A028402.P13914117859844792663.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028402

/-! ## A028402.P13914117859844792663

`6*a(n-1)-8*a(n-2)` with `a(0)=6, a(1)=20`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028402

/-- `6*a(n-1)-8*a(n-2)` -/
def P13914117859844792663.Spec : Prop :=
  ∀ n, P13914117859844792663.a n = A028402 (n + 2)

theorem P13914117859844792663.correct : P13914117859844792663.Spec := by
  intro n
  simp only [A028402, Nat.add_sub_cancel]

end A028402

/-! ## A028402.P1112169270121874360

`ogf((6-16x)/(1-6x+8x^2))`
-/

namespace A028402.P1112169270121874360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -16] [1, -6, 8] n

end

end A028402.P1112169270121874360

namespace A028402

/-- `ogf((6-16x)/(1-6x+8x^2))` -/
def P1112169270121874360.Spec : Prop :=
  ∀ n, P1112169270121874360.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P9784071669686999886

`or(2^(n+1), 4^(n+1))`
-/

namespace A028402.P9784071669686999886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ (n + 1)) (4 ^ (n + 1))

end

end A028402.P9784071669686999886

namespace A028402

/-- `or(2^(n+1), 4^(n+1))` -/
def P9784071669686999886.Spec : Prop :=
  ∀ n, (P9784071669686999886.a n : ℤ) = A028402 (n + 2)

end A028402

/-! ## A028402.P5053840922288541440

`xor(2^(n+1), 4^(n+1))`
-/

namespace A028402.P5053840922288541440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ (n + 1)) (4 ^ (n + 1))

end

end A028402.P5053840922288541440

namespace A028402

/-- `xor(2^(n+1), 4^(n+1))` -/
def P5053840922288541440.Spec : Prop :=
  ∀ n, (P5053840922288541440.a n : ℤ) = A028402 (n + 2)

end A028402

/-! ## A028402.P504764806238952126

`lcm(2^(n+1)+1, 2^(n+1))`
-/

namespace A028402.P504764806238952126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ (n + 1) + 1) (2 ^ (n + 1))

end

end A028402.P504764806238952126

namespace A028402

/-- `lcm(2^(n+1)+1, 2^(n+1))` -/
def P504764806238952126.Spec : Prop :=
  ∀ n, (P504764806238952126.a n : ℤ) = A028402 (n + 2)

end A028402

/-! ## A028402.P18067536646150395

`A161168(n+1)`
-/

namespace A028402.P18067536646150395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 (n + 1)

end

end A028402.P18067536646150395

namespace A028402

/-- `A161168(n+1)` -/
def P18067536646150395.Spec : Prop :=
  ∀ n, P18067536646150395.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P4931715735425061300

`A005367(n)+2`
-/

namespace A028402.P4931715735425061300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005367 n + 2

end

end A028402.P4931715735425061300

namespace A028402

/-- `A005367(n)+2` -/
def P4931715735425061300.Spec : Prop :=
  ∀ n, P4931715735425061300.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P9459948518924215794

`A099393(n+1)+1`
-/

namespace A028402.P9459948518924215794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099393 (n + 1) + 1

end

end A028402.P9459948518924215794

namespace A028402

/-- `A099393(n+1)+1` -/
def P9459948518924215794.Spec : Prop :=
  ∀ n, P9459948518924215794.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P15011233711946772439

`A001576(n+1)-1`
-/

namespace A028402.P15011233711946772439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 (n + 1) - 1

end

end A028402.P15011233711946772439

namespace A028402

/-- `A001576(n+1)-1` -/
def P15011233711946772439.Spec : Prop :=
  ∀ n, P15011233711946772439.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P2713190800595689692

`A135576(n+2)-1`
-/

namespace A028402.P2713190800595689692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135576 (n + 2) - 1

end

end A028402.P2713190800595689692

namespace A028402

/-- `A135576(n+2)-1` -/
def P2713190800595689692.Spec : Prop :=
  ∀ n, P2713190800595689692.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P17582587522906311301

`A170938(n+1)-2`
-/

namespace A028402.P17582587522906311301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170938 (n + 1) - 2

end

end A028402.P17582587522906311301

namespace A028402

/-- `A170938(n+1)-2` -/
def P17582587522906311301.Spec : Prop :=
  ∀ n, P17582587522906311301.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P5392405680218179418

`A052957(2*(n+1))`
-/

namespace A028402.P5392405680218179418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 (2 * (n + 1))

end

end A028402.P5392405680218179418

namespace A028402

/-- `A052957(2*(n+1))` -/
def P5392405680218179418.Spec : Prop :=
  ∀ n, P5392405680218179418.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P1627748738961034306

`A390325(2*(n+1))`
-/

namespace A028402.P1627748738961034306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390325 (2 * (n + 1))

end

end A028402.P1627748738961034306

namespace A028402

/-- `A390325(2*(n+1))` -/
def P1627748738961034306.Spec : Prop :=
  ∀ n, P1627748738961034306.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P7284733024097192206

`A005418(2*(n+2))`
-/

namespace A028402.P7284733024097192206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (2 * (n + 2))

end

end A028402.P7284733024097192206

namespace A028402

/-- `A005418(2*(n+2))` -/
def P7284733024097192206.Spec : Prop :=
  ∀ n, P7284733024097192206.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P17225487096160142620

`A113979(2*(n+2))`
-/

namespace A028402.P17225487096160142620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 (2 * (n + 2))

end

end A028402.P17225487096160142620

namespace A028402

/-- `A113979(2*(n+2))` -/
def P17225487096160142620.Spec : Prop :=
  ∀ n, P17225487096160142620.a n = A028402 (n + 2)

end A028402

/-! ## A028402.P16514054022960988165

`A185376(2*n+3)`
-/

namespace A028402.P16514054022960988165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185376 (2 * n + 3)

end

end A028402.P16514054022960988165

namespace A028402

/-- `A185376(2*n+3)` -/
def P16514054022960988165.Spec : Prop :=
  ∀ n, P16514054022960988165.a n = A028402 (n + 2)

end A028402

/-!
# A028403: Number of types of Boolean functions of n variables under a certain group.

The programs for A028403, the canonical program `A028403.P12072581597189381239` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028403 has offset 1).

The definition of A028403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028403.P12072581597189381239

`2^(n+1)*(2^n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028403

/-- `2^(n+1)*(2^n+1)` -/
def P12072581597189381239.Spec : Prop :=
  ∀ n, (P12072581597189381239.a n : ℤ) = A028403 (n + 1)

theorem P12072581597189381239.correct : P12072581597189381239.Spec := by
  intro n
  simp only [A028403, Nat.add_sub_cancel]

end A028403

/-! ## A028403.P8692466399065075499

`6*a(n-1)-8*a(n-2)` with `a(0)=4, a(1)=12`
-/

namespace A028403.P8692466399065075499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 12] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A028403.P8692466399065075499

namespace A028403

/-- `6*a(n-1)-8*a(n-2)` -/
def P8692466399065075499.Spec : Prop :=
  ∀ n, P8692466399065075499.a n = A028403 (n + 1)

theorem P8692466399065075499.correct : P8692466399065075499.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028403, Nat.add_sub_cancel, A028403.P8692466399065075499.a, A028403.P12072581597189381239.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028403, Nat.add_sub_cancel, A028403.P8692466399065075499.a, A028403.P12072581597189381239.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028403

/-! ## A028403.P1111400768747345728

`A004171(n)+A000079(n+1)`
-/

namespace A028403.P1111400768747345728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n + A000079 (n + 1)

end

end A028403.P1111400768747345728

namespace A028403

/-- `A004171(n)+A000079(n+1)` -/
def P1111400768747345728.Spec : Prop :=
  ∀ n, P1111400768747345728.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P3472714392273116105

`A081294(n+1)+A000079(n+1)`
-/

namespace A028403.P3472714392273116105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 1) + A000079 (n + 1)

end

end A028403.P3472714392273116105

namespace A028403

/-- `A081294(n+1)+A000079(n+1)` -/
def P3472714392273116105.Spec : Prop :=
  ∀ n, P3472714392273116105.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P17640868404129849722

`ogf((4-12x)/(1-6x+8x^2))`
-/

namespace A028403.P17640868404129849722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -12] [1, -6, 8] n

end

end A028403.P17640868404129849722

namespace A028403

/-- `ogf((4-12x)/(1-6x+8x^2))` -/
def P17640868404129849722.Spec : Prop :=
  ∀ n, P17640868404129849722.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P10148472810046447374

`xor(1, 4^n+(2^n+1)²)`
-/

namespace A028403.P10148472810046447374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 ^ n + (2 ^ n + 1) ^ 2)

end

end A028403.P10148472810046447374

namespace A028403

/-- `xor(1, 4^n+(2^n+1)²)` -/
def P10148472810046447374.Spec : Prop :=
  ∀ n, (P10148472810046447374.a n : ℤ) = A028403 (n + 1)

end A028403

/-! ## A028403.P7625562170055132147

`lcm(2^(n+1)+2, 2^(n+1))`
-/

namespace A028403.P7625562170055132147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ (n + 1) + 2) (2 ^ (n + 1))

end

end A028403.P7625562170055132147

namespace A028403

/-- `lcm(2^(n+1)+2, 2^(n+1))` -/
def P7625562170055132147.Spec : Prop :=
  ∀ n, (P7625562170055132147.a n : ℤ) = A028403 (n + 1)

end A028403

/-! ## A028403.P7825897607958848212

`4*a(n-1)-2*2^n` with `a(0)=4`
-/

namespace A028403.P7825897607958848212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * a (n - 1) - (2 * 2 ^ n : ℤ)

end

end A028403.P7825897607958848212

namespace A028403

/-- `4*a(n-1)-2*2^n` -/
def P7825897607958848212.Spec : Prop :=
  ∀ n, P7825897607958848212.a n = A028403 (n + 1)

theorem P7825897607958848212.correct : P7825897607958848212.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A028403, Nat.add_sub_cancel, A028403.P7825897607958848212.a, A028403.P12072581597189381239.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A028403, Nat.add_sub_cancel, A028403.P7825897607958848212.a, A028403.P12072581597189381239.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028403

/-! ## A028403.P17452831392606879509

`floor(∑[2*a(n-1)]²/2)` with `a(0)=3, a(1)=2`
-/

namespace A028403.P17452831392606879509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌋

end

end A028403.P17452831392606879509

namespace A028403

/-- `floor(∑[2*a(n-1)]²/2)` -/
def P17452831392606879509.Spec : Prop :=
  ∀ n, P17452831392606879509.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P1353009190905948445

`a(n-1)+a(n-1)+4^n` with `a(0)=4`
-/

namespace A028403.P1353009190905948445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 4 ^ n)

end

end A028403.P1353009190905948445

namespace A028403

/-- `a(n-1)+a(n-1)+4^n` -/
def P1353009190905948445.Spec : Prop :=
  ∀ n, (P1353009190905948445.a n : ℤ) = A028403 (n + 1)

end A028403

/-! ## A028403.P9476063754775965819

`A281482(n)+1`
-/

namespace A028403.P9476063754775965819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281482 n + 1

end

end A028403.P9476063754775965819

namespace A028403

/-- `A281482(n)+1` -/
def P9476063754775965819.Spec : Prop :=
  ∀ n, P9476063754775965819.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P4761847205416650975

`A085601(n)-1`
-/

namespace A028403.P4761847205416650975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085601 n - 1

end

end A028403.P4761847205416650975

namespace A028403

/-- `A085601(n)-1` -/
def P4761847205416650975.Spec : Prop :=
  ∀ n, P4761847205416650975.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P3903958461826258375

`Δ[A060919(n+1)]`
-/

namespace A028403.P3903958461826258375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028403.P3903958461826258375

namespace A028403

/-- `Δ[A060919(n+1)]` -/
def P3903958461826258375.Spec : Prop :=
  ∀ n, P3903958461826258375.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P2336050785679409345

`Δ[2*A079319(n)]`
-/

namespace A028403.P2336050785679409345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028403.P2336050785679409345

namespace A028403

/-- `Δ[2*A079319(n)]` -/
def P2336050785679409345.Spec : Prop :=
  ∀ n, P2336050785679409345.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P17546349723492320693

`Δ[4*A007581(n)]`
-/

namespace A028403.P17546349723492320693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028403.P17546349723492320693

namespace A028403

/-- `Δ[4*A007581(n)]` -/
def P17546349723492320693.Spec : Prop :=
  ∀ n, P17546349723492320693.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P5672218063967100962

`Δ[4*A076024(n)]`
-/

namespace A028403.P5672218063967100962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A076024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028403.P5672218063967100962

namespace A028403

/-- `Δ[4*A076024(n)]` -/
def P5672218063967100962.Spec : Prop :=
  ∀ n, P5672218063967100962.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P9180485835767902419

`A143960(n+1)+2`
-/

namespace A028403.P9180485835767902419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143960 (n + 1) + 2

end

end A028403.P9180485835767902419

namespace A028403

/-- `A143960(n+1)+2` -/
def P9180485835767902419.Spec : Prop :=
  ∀ n, P9180485835767902419.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P10402473045234744398

`A343175(n+1)-1`
-/

namespace A028403.P10402473045234744398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 (n + 1) - 1

end

end A028403.P10402473045234744398

namespace A028403

/-- `A343175(n+1)-1` -/
def P10402473045234744398.Spec : Prop :=
  ∀ n, P10402473045234744398.a n = A028403 (n + 1)

end A028403

/-! ## A028403.P767431711398764010

`A242985(n+1)/2`
-/

namespace A028403.P767431711398764010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242985 (n + 1) : ℚ) / 2

end

end A028403.P767431711398764010

namespace A028403

/-- `A242985(n+1)/2` -/
def P767431711398764010.Spec : Prop :=
  ∀ n, P767431711398764010.a n = (A028403 (n + 1) : ℚ)

end A028403

/-! ## A028403.P660653382754062253

`4*A281481(n)-4`
-/

namespace A028403.P660653382754062253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A281481 n - 4

end

end A028403.P660653382754062253

namespace A028403

/-- `4*A281481(n)-4` -/
def P660653382754062253.Spec : Prop :=
  ∀ n, P660653382754062253.a n = A028403 (n + 1)

end A028403

/-!
# A028404: Number of types of Boolean functions of n variables under a certain group.

The programs for A028404, there is no canonical definition to state claims against.
-/

/-! ## A028404.P5166875629305982675

`(A053040(n+1)+A028405(n+1))/2`
-/

namespace A028404.P5166875629305982675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053040 (n + 1) + A028405 (n + 1) : ℚ) / 2

end

end A028404.P5166875629305982675

/-!
# A028405: Number of equivalence classes of Boolean functions of n variables under action of M(n,2).

The programs for A028405, there is no canonical definition to state claims against.
-/

/-! ## A028405.P4624113927118964432

`2*A028404(n+1)-A053040(n+1)`
-/

namespace A028405.P4624113927118964432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028404 (n + 1) - A053040 (n + 1)

end

end A028405.P4624113927118964432

/-!
# A028406: Number of types of Boolean functions of n variables under a certain group.

The programs for A028406, there is no canonical definition to state claims against.
-/

/-! ## A028406.P15275528962252615631

`A028407(n+2)/2`
-/

namespace A028406.P15275528962252615631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028407 (n + 2) : ℚ) / 2

end

end A028406.P15275528962252615631

/-!
# A028408: Number of types of Boolean functions of n variables under a certain group.

The programs for A028408, there is no canonical definition to state claims against.
-/

/-! ## A028408.P607773721024080023

`A382465(A363251(n))`
-/

namespace A028408.P607773721024080023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382465 (A363251 n).toNat

end

end A028408.P607773721024080023

/-! ## A028408.P5003153571247917503

`A328172(A079955(n+4)-1)`
-/

namespace A028408.P5003153571247917503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328172 (A079955 (n + 4) - 1).toNat

end

end A028408.P5003153571247917503

/-! ## A028408.P4782868118377205445

`A328172(char[11]+A328172(n+1)-n)`
-/

namespace A028408.P4782868118377205445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328172 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A328172 (n + 1) - (n : ℤ))).toNat

end

end A028408.P4782868118377205445

/-! ## A028408.P14105485653815539543

`A280950(xor(A048993(n), A332638(n)))`
-/

namespace A028408.P14105485653815539543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280950 (Int.xor (A048993 n) (A332638 n)).toNat

end

end A028408.P14105485653815539543

/-! ## A028408.P15655972359921195155

`A000010(A056517(n))-A056512(n+1)`
-/

namespace A028408.P15655972359921195155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A056517 n).toNat - A056512 (n + 1)

end

end A028408.P15655972359921195155

/-!
# A028409: Number of types of Boolean functions of n variables under a certain group.

The programs for A028409, there is no canonical definition to state claims against.
-/

/-! ## A028409.P8132572009358263865

`A360600(A023105(n))`
-/

namespace A028409.P8132572009358263865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360600 (A023105 n).toNat

end

end A028409.P8132572009358263865

/-! ## A028409.P6425329018556673596

`A085736(A000671(n)+1)`
-/

namespace A028409.P6425329018556673596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A000671 n + 1).toNat

end

end A028409.P6425329018556673596

/-! ## A028409.P1189235226465607479

`A003059(A202062(n)+n)`
-/

namespace A028409.P1189235226465607479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A202062 n + (n : ℤ)).toNat

end

end A028409.P1189235226465607479

/-! ## A028409.P3891895294731277007

`A003059(A279559(n)+n)`
-/

namespace A028409.P3891895294731277007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A279559 n + (n : ℤ)).toNat

end

end A028409.P3891895294731277007

/-! ## A028409.P13449064639883683665

`A135034(A202062(n)+n)`
-/

namespace A028409.P13449064639883683665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A202062 n + (n : ℤ)).toNat

end

end A028409.P13449064639883683665

/-!
# A028410: Number of types of Boolean functions of n variables under a certain group.

The programs for A028410, there is no canonical definition to state claims against.
-/

/-! ## A028410.P59678714136994038

`A005218(n+1)+A003989(A257245(3*n+5))`
-/

namespace A028410.P59678714136994038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005218 (n + 1) + A003989 (A257245 (3 * n + 5)).toNat

end

end A028410.P59678714136994038

/-! ## A028410.P18329930169861764181

`A335235(A173126(n)+A067590(n))`
-/

namespace A028410.P18329930169861764181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A173126 n + A067590 n).toNat

end

end A028410.P18329930169861764181

/-! ## A028410.P3115157880494538238

`A320456(A329701(n))+A004198(n)`
-/

namespace A028410.P3115157880494538238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (A329701 n).toNat + A004198 n

end

end A028410.P3115157880494538238

/-! ## A028410.P7429238565797525145

`A318995(n+1)+A003056(A328430(n))`
-/

namespace A028410.P7429238565797525145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A003056 (A328430 n).toNat

end

end A028410.P7429238565797525145

/-! ## A028410.P16862950248733847932

`A280951(A112088(n+1)+A000010(n+1))`
-/

namespace A028410.P16862950248733847932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A112088 (n + 1) + A000010 (n + 1)).toNat

end

end A028410.P16862950248733847932

/-!
# A028411: Number of types of Boolean functions of n variables under a certain group.

The programs for A028411, there is no canonical definition to state claims against.
-/

/-! ## A028411.P10175301800138124625

`A101433(n)+A077212(n+1)`
-/

namespace A028411.P10175301800138124625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101433 n + A077212 (n + 1)

end

end A028411.P10175301800138124625

/-! ## A028411.P11194740730006521821

`A077212(n+1)+A008738(n+1)`
-/

namespace A028411.P11194740730006521821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077212 (n + 1) + A008738 (n + 1)

end

end A028411.P11194740730006521821

/-! ## A028411.P18309468781040944602

`A194238(n+1)+A077212(n+1)`
-/

namespace A028411.P18309468781040944602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194238 (n + 1) + A077212 (n + 1)

end

end A028411.P18309468781040944602

/-! ## A028411.P9285055731667679974

`A248360(n+1)+A077212(n+1)`
-/

namespace A028411.P9285055731667679974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248360 (n + 1) + A077212 (n + 1)

end

end A028411.P9285055731667679974

/-!
# A028412: Rectangular array of numbers Fibonacci(m(n+1))/Fibonacci(m), m >= 1, n >= 0, read by downward antidiagonals.

The programs for A028412, the canonical program `A028412.P14917559016390442593` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028412 has offset 0).

The definition of A028412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028412.P14540034216522390324

`A214978(A038722(n+1))`
-/

namespace A028412.P14540034216522390324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214978 (A038722 (n + 1)).toNat

end

end A028412.P14540034216522390324

namespace A028412

/-- `A214978(A038722(n+1))` -/
def P14540034216522390324.Spec : Prop :=
  ∀ n, P14540034216522390324.a n = A028412 n

end A028412

/-! ## A028412.P2103070869531191796

`A214978(A061579(n)+1)`
-/

namespace A028412.P2103070869531191796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214978 (A061579 n + 1).toNat

end

end A028412.P2103070869531191796

namespace A028412

/-- `A214978(A061579(n)+1)` -/
def P2103070869531191796.Spec : Prop :=
  ∀ n, P2103070869531191796.a n = A028412 n

end A028412

/-! ## A028412.P14917559016390442593

`A102310(n+1)/A104762(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A028412

/-- `A102310(n+1)/A104762(n+1)` -/
def P14917559016390442593.Spec : Prop :=
  ∀ n, P14917559016390442593.a n = (A028412 n : ℚ)

end A028412

/-! ## A028412.P4529363032028303237

`A000045(A003991(n+1))/A104762(n+1)`
-/

namespace A028412.P4529363032028303237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003991 (n + 1)).toNat : ℚ) / (A104762 (n + 1) : ℚ)

end

end A028412.P4529363032028303237

namespace A028412

/-- `A000045(A003991(n+1))/A104762(n+1)` -/
def P4529363032028303237.Spec : Prop :=
  ∀ n, P4529363032028303237.a n = (A028412 n : ℚ)

end A028412

/-! ## A028412.P18315970774208376014

`A000045(A003991(n+1))/A000045(A004736(n+1))`
-/

namespace A028412.P18315970774208376014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003991 (n + 1)).toNat : ℚ) / (A000045 (A004736 (n + 1)).toNat : ℚ)

end

end A028412.P18315970774208376014

namespace A028412

/-- `A000045(A003991(n+1))/A000045(A004736(n+1))` -/
def P18315970774208376014.Spec : Prop :=
  ∀ n, P18315970774208376014.a n = (A028412 n : ℚ)

end A028412

/-!
# A028413: Numbers k such that k^2 + k + 1 is a palindrome.

The programs for A028413, there is no canonical definition to state claims against.
-/

/-! ## A028413.P8581095435200717071

`floor(sqrt(A028414(n+1)-1))`
-/

namespace A028413.P8581095435200717071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028414 (n + 1) - 1)

end

end A028413.P8581095435200717071

/-! ## A028413.P41124263006723170

`round(sqrt(A028414(n+1)-A000124(n)))`
-/

namespace A028413.P41124263006723170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028414 (n + 1) - A000124 n : ℝ))

end

end A028413.P41124263006723170

/-! ## A028413.P255450291447411364

`round(sqrt(A028414(n+1)-A002061(n)))`
-/

namespace A028413.P255450291447411364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028414 (n + 1) - A002061 n : ℝ))

end

end A028413.P255450291447411364

/-! ## A028413.P10567479282119926256

`round(sqrt(A028414(n+1)-A059173(n)))`
-/

namespace A028413.P10567479282119926256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028414 (n + 1) - A059173 n : ℝ))

end

end A028413.P10567479282119926256

/-! ## A028413.P14755042424398959911

`round(sqrt(A028414(n+1)-A059250(n+1)))`
-/

namespace A028413.P14755042424398959911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028414 (n + 1) - A059250 (n + 1) : ℝ))

end

end A028413.P14755042424398959911

/-!
# A028414: Palindromes of form k^2 + k + 1.

The programs for A028414, there is no canonical definition to state claims against.
-/

/-! ## A028414.P4742603425412667724

`A028413(n+1)+A028413(n+1)²+1`
-/

namespace A028414.P4742603425412667724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028413 (n + 1) + (A028413 (n + 1) ^ 2 + 1)

end

end A028414.P4742603425412667724

/-! ## A028414.P7267042559377618405

`A048058(A028413(n+1))-10`
-/

namespace A028414.P7267042559377618405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (A028413 (n + 1)).toNat - 10

end

end A028414.P7267042559377618405

/-! ## A028414.P7158180165032250138

`A002061(A028413(n+1)+1)`
-/

namespace A028414.P7158180165032250138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A028413 (n + 1) + 1).toNat

end

end A028414.P7158180165032250138

/-! ## A028414.P3768691279528170349

`A173151(4*A028413(n+1))`
-/

namespace A028414.P3768691279528170349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (4 * A028413 (n + 1)).toNat

end

end A028414.P3768691279528170349

/-! ## A028414.P6446487176984284047

`∩[A029950(n+1), A008811(n)]`
-/

namespace A028414.P6446487176984284047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028414.P6446487176984284047

/-!
# A028415: Numerator of Sum_{k=1..n} 1/phi(k).

The programs for A028415, there is no canonical definition to state claims against.
-/

/-! ## A028415.P9456461353307878257

`A048049(n+1)/A001088(n+1)*A067578(n+1)`
-/

namespace A028415.P9456461353307878257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048049 (n + 1) : ℚ) / (A001088 (n + 1) : ℚ) * (A067578 (n + 1) : ℚ)

end

end A028415.P9456461353307878257

/-!
# A028416: Primes p such that the decimal expansion of 1/p has a periodic part of even length.

The programs for A028416, there is no canonical definition to state claims against.
-/

/-! ## A028416.P4004944948108802244

`p?[A043292(n+3)]`
-/

namespace A028416.P4004944948108802244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028416.P4004944948108802244

/-! ## A028416.P14470739778527138232

`∩[A004139(n+1), A043292(n+1)]`
-/

namespace A028416.P14470739778527138232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P14470739778527138232

/-! ## A028416.P5814555832655978363

`∩[A043292(n+1), A064728(n+1)]`
-/

namespace A028416.P5814555832655978363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P5814555832655978363

/-! ## A028416.P16553090841877829901

`∩[A043292(n+1), A065091(n+1)]`
-/

namespace A028416.P16553090841877829901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P16553090841877829901

/-! ## A028416.P17664960993109117221

`∩[A043292(n+1), A066542(n+1)]`
-/

namespace A028416.P17664960993109117221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P17664960993109117221

/-! ## A028416.P17036959466490862566

`∩[A043292(n+1), A083249(n+1)]`
-/

namespace A028416.P17036959466490862566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P17036959466490862566

/-! ## A028416.P5239733731621138926

`∩[A043292(n+1), A140826(n+1)]`
-/

namespace A028416.P5239733731621138926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P5239733731621138926

/-! ## A028416.P8947089297043642275

`∩[A043292(n+1), A161346(n+1)]`
-/

namespace A028416.P8947089297043642275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P8947089297043642275

/-! ## A028416.P4073417232674471000

`∩[A043292(n+1), A161428(n+1)]`
-/

namespace A028416.P4073417232674471000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P4073417232674471000

/-! ## A028416.P1885308508691558774

`∩[A043292(n+1), A161839(n+1)]`
-/

namespace A028416.P1885308508691558774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P1885308508691558774

/-! ## A028416.P3337823746923818398

`∩[A043292(n+1), A162786(n+1)]`
-/

namespace A028416.P3337823746923818398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P3337823746923818398

/-! ## A028416.P13939431597307652769

`∩[A043292(n+1), A215848(n+1)]`
-/

namespace A028416.P13939431597307652769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P13939431597307652769

/-! ## A028416.P6720673471815046674

`∩[A043292(n+1), A351398(n+1)]`
-/

namespace A028416.P6720673471815046674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P6720673471815046674

/-! ## A028416.P7464536988499222563

`filter[A043292(n+1), A379969(#)]`
-/

namespace A028416.P7464536988499222563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A028416.P7464536988499222563

/-! ## A028416.P4151369714345406574

`filter[A043292(n+3), A010051(#)]`
-/

namespace A028416.P4151369714345406574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A028416.P4151369714345406574

/-! ## A028416.P2551769831540123800

`∩[A043292(n+1), A082378(n+1)]`
-/

namespace A028416.P2551769831540123800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P2551769831540123800

/-! ## A028416.P2259789707141225477

`filter[A043292(n+1), A353670(#)]`
-/

namespace A028416.P2259789707141225477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A028416.P2259789707141225477

/-! ## A028416.P17108027680566378074

`filter[A043292(n+3), A323152(#)]`
-/

namespace A028416.P17108027680566378074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A028416.P17108027680566378074

/-! ## A028416.P8942687760242265624

`∩[A038550(n+1), A043292(n+1)]`
-/

namespace A028416.P8942687760242265624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028416.P8942687760242265624

/-! ## A028416.P4195792445126147479

`p?[(n+1)*A180613(A077196(n+1))]`
-/

namespace A028416.P4195792445126147479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A180613 (A077196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028416.P4195792445126147479

/-!
# A028417: Sum over all n! permutations of n elements of minimum lengths of cycles.

The programs for A028417, there is no canonical definition to state claims against.
-/

/-! ## A028417.P13866348840380758535

`A322383(∑[n]+1)`
-/

namespace A028417.P13866348840380758535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A028417.P13866348840380758535

/-! ## A028417.P18196211567847143158

`lcm(log2(1/2), A322383(A000124(n)))`
-/

namespace A028417.P18196211567847143158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A322383 (A000124 n).toNat)

end

end A028417.P18196211567847143158

/-! ## A028417.P16741817334262616625

`record[A287325(n)*A322383(n+1)]`
-/

namespace A028417.P16741817334262616625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287325 n * A322383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P16741817334262616625

/-! ## A028417.P11381589595040306524

`record[A322383(n+1)/A007318(n)]`
-/

namespace A028417.P11381589595040306524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322383 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P11381589595040306524

/-! ## A028417.P18128046947423723886

`record[A322383(n+1)/A008459(n)]`
-/

namespace A028417.P18128046947423723886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322383 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P18128046947423723886

/-! ## A028417.P1374334343914655872

`record[gcd(A002262(n), A322383(n+1))]`
-/

namespace A028417.P1374334343914655872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A322383 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P1374334343914655872

/-! ## A028417.P9294265018081138890

`record[A322383(n+1)/A057728(n+1)]`
-/

namespace A028417.P9294265018081138890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322383 (n + 1) : ℚ) / (A057728 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P9294265018081138890

/-! ## A028417.P1481283356354677844

`record[A322383(n+1)/A211836(n+1)]`
-/

namespace A028417.P1481283356354677844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322383 (n + 1) : ℚ) / (A211836 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P1481283356354677844

/-! ## A028417.P15787301858552677932

`record[A322383(A008619(A008497(n)))]`
-/

namespace A028417.P15787301858552677932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A008619 (A008497 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P15787301858552677932

/-! ## A028417.P6151173723684561319

`record[A322383(A052938(A002620(n)))]`
-/

namespace A028417.P6151173723684561319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A052938 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028417.P6151173723684561319

/-!
# A028418: Sum over all n! permutations of n letters of maximum cycle length.

The programs for A028418, there is no canonical definition to state claims against.
-/

/-! ## A028418.P16676501473185853191

`A322384(∑[n]+1)`
-/

namespace A028418.P16676501473185853191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A028418.P16676501473185853191

/-! ## A028418.P8031282011921052483

`record[A322384(n+1)]`
-/

namespace A028418.P8031282011921052483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028418.P8031282011921052483

/-! ## A028418.P5406411104123710510

`or(1, A322384(A000124(n)))`
-/

namespace A028418.P5406411104123710510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322384 (A000124 n).toNat)

end

end A028418.P5406411104123710510

/-! ## A028418.P17164984433058759232

`gcd(A000038(n), A322384(A000124(n)))`
-/

namespace A028418.P17164984433058759232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A322384 (A000124 n).toNat)

end

end A028418.P17164984433058759232

/-! ## A028418.P8306487855588588031

`A322384(A000124(n))^A011628(n²)`
-/

namespace A028418.P8306487855588588031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322384 (A000124 n).toNat : ℚ) ^ (A011628 (n ^ 2) : ℤ)

end

end A028418.P8306487855588588031

/-!
# A028419: Congruence classes of triangles which can be drawn using lattice points in n X n grid as vertices.

The programs for A028419, there is no canonical definition to state claims against.
-/

/-! ## A028419.P7633196761279187699

`A190313(n+1)+A189978(n+1)`
-/

namespace A028419.P7633196761279187699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + A189978 (n + 1)

end

end A028419.P7633196761279187699

/-! ## A028419.P11012421320833826579

`A189979(n+1)+A190022(n+1)+A190021(n+1)`
-/

namespace A028419.P11012421320833826579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189979 (n + 1) + (A190022 (n + 1) + A190021 (n + 1))

end

end A028419.P11012421320833826579

/-! ## A028419.P10886792292739853475

`A190313(n+1)+A108279(n+1)+A190310(n+1)+A190309(n+1)`
-/

namespace A028419.P10886792292739853475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + (A108279 (n + 1) + (A190310 (n + 1) + A190309 (n + 1)))

end

end A028419.P10886792292739853475

/-! ## A028419.P10904209658198883423

`(A272053(n)+A189978(n+1))/3`
-/

namespace A028419.P10904209658198883423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272053 n + A189978 (n + 1) : ℚ) / 3

end

end A028419.P10904209658198883423

/-! ## A028419.P5538205166196102599

`(A272053(n)-A190313(n+1))/2`
-/

namespace A028419.P5538205166196102599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272053 n - A190313 (n + 1) : ℚ) / 2

end

end A028419.P5538205166196102599

/-!
# A028420: Number of monomer-dimer tilings of n X n chessboard.

The programs for A028420, there is no canonical definition to state claims against.
-/

/-! ## A028420.P1439181986873050770

`A210662(C(abs(1-n)+1, 2)+n)`
-/

namespace A028420.P1439181986873050770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (Nat.choose (|1 - (n : ℤ)| + 1).toNat 2 + n)

end

end A028420.P1439181986873050770

/-! ## A028420.P2662811180542146908

`A210662(A028310(∑[n]))`
-/

namespace A028420.P2662811180542146908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A028420.P2662811180542146908

/-! ## A028420.P4738052252362947335

`A210662(A179865(n+1))`
-/

namespace A028420.P4738052252362947335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (A179865 (n + 1)).toNat

end

end A028420.P4738052252362947335

/-! ## A028420.P6123952801442839660

`A210662(A000217(floor(acot(n)+n)))`
-/

namespace A028420.P6123952801442839660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (A000217 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A028420.P6123952801442839660

/-! ## A028420.P15825992504754214970

`A210662(A000217(A000007(n)+n))`
-/

namespace A028420.P15825992504754214970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A028420.P15825992504754214970

/-!
# A028421: Triangle read by rows: T(n, k) = (k+1)*A132393(n+1, k+1), for 0 <= k <= n.

The programs for A028421, there is no canonical definition to state claims against.
-/

/-! ## A028421.P6321071108221723081

`A002260(n+1)*A130534(n)`
-/

namespace A028421.P6321071108221723081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130534 n

end

end A028421.P6321071108221723081

/-! ## A028421.P17908862141738406063

`(A002262(n)+1)*A130534(n)`
-/

namespace A028421.P17908862141738406063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A130534 n

end

end A028421.P17908862141738406063

/-! ## A028421.P1886107539747462454

`abs(A140756(n+1))*A130534(n)`
-/

namespace A028421.P1886107539747462454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * A130534 n

end

end A028421.P1886107539747462454

/-! ## A028421.P17231894914530477873

`A008275(n+1)*A140756(n+1)`
-/

namespace A028421.P17231894914530477873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A140756 (n + 1)

end

end A028421.P17231894914530477873

/-! ## A028421.P17438157109787211304

`abs(A002260(n+1)*A008275(n+1))`
-/

namespace A028421.P17438157109787211304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) * A008275 (n + 1)|

end

end A028421.P17438157109787211304

/-! ## A028421.P13302997594000012349

`abs((A002262(n)+1)*A008275(n+1))`
-/

namespace A028421.P13302997594000012349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002262 n + 1) * A008275 (n + 1)|

end

end A028421.P13302997594000012349

/-! ## A028421.P5660724739547811667

`A130534(n)*A141539(A245300(n))`
-/

namespace A028421.P5660724739547811667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A141539 (A245300 n).toNat

end

end A028421.P5660724739547811667

/-! ## A028421.P13544606503695061400

`A004736(A038722(n+1))*A130534(n)`
-/

namespace A028421.P13544606503695061400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A130534 n

end

end A028421.P13544606503695061400

/-! ## A028421.P17789992183743243910

`(A025581(A061579(n))+1)*A130534(n)`
-/

namespace A028421.P17789992183743243910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 (A061579 n).toNat + 1) * A130534 n

end

end A028421.P17789992183743243910

/-! ## A028421.P6818094124482355808

`A130534(n)*A193738(A007401(n+1))`
-/

namespace A028421.P6818094124482355808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A193738 (A007401 (n + 1)).toNat

end

end A028421.P6818094124482355808

/-! ## A028421.P7883009660879601255

`A002260(n+1)*A094638(A038722(n+1))`
-/

namespace A028421.P7883009660879601255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A094638 (A038722 (n + 1)).toNat

end

end A028421.P7883009660879601255

/-! ## A028421.P12530107773421741710

`A002260(n+1)*A094638(A061579(n)+1)`
-/

namespace A028421.P12530107773421741710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A094638 (A061579 n + 1).toNat

end

end A028421.P12530107773421741710

/-! ## A028421.P9192519018188781811

`A130534(n)*A193738(A014132(n+1)-1)`
-/

namespace A028421.P9192519018188781811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A193738 (A014132 (n + 1) - 1).toNat

end

end A028421.P9192519018188781811

/-! ## A028421.P143479095486579114

`A048594(n+1)/A225475(n)*A039757(n)`
-/

namespace A028421.P143479095486579114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A225475 n : ℚ) * (A039757 n : ℚ)

end

end A028421.P143479095486579114

/-! ## A028421.P6472141016249468908

`A130534(n)*A284600(A077320(n+1))`
-/

namespace A028421.P6472141016249468908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A284600 (A077320 (n + 1)).toNat

end

end A028421.P6472141016249468908

/-!
# A028422: Number of ways n can be properly factored.

The programs for A028422, there is no canonical definition to state claims against.
-/

/-! ## A028422.P12280887158171996956

`A001055(n+1)-1`
-/

namespace A028422.P12280887158171996956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - 1

end

end A028422.P12280887158171996956

/-! ## A028422.P15312153563760354361

`Δ[A096276(n)]-1`
-/

namespace A028422.P15312153563760354361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A028422.P15312153563760354361

/-! ## A028422.P862970826350125701

`A344368(n+1)/(n+1)-1`
-/

namespace A028422.P862970826350125701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344368 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A028422.P862970826350125701

/-! ## A028422.P17709468985678818525

`A023443(A001055(n+1))`
-/

namespace A028422.P17709468985678818525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001055 (n + 1)).toNat

end

end A028422.P17709468985678818525

/-! ## A028422.P17866527567438592195

`A289207(Δ[A096276(n)]+1)`
-/

namespace A028422.P17866527567438592195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (f1 (n + 1) - f1 n + 1).toNat

end

end A028422.P17866527567438592195

/-! ## A028422.P4363927894244911138

`A289207(A001055(n+1)+1)`
-/

namespace A028422.P4363927894244911138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A001055 (n + 1) + 1).toNat

end

end A028422.P4363927894244911138

/-! ## A028422.P9610896573756135622

`A050322(A101296(n+1))-1`
-/

namespace A028422.P9610896573756135622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 (n + 1)).toNat - 1

end

end A028422.P9610896573756135622

/-! ## A028422.P2779736938438391426

`A331049(A077462(n+1))-1`
-/

namespace A028422.P2779736938438391426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331049 (A077462 (n + 1)).toNat - 1

end

end A028422.P2779736938438391426

/-! ## A028422.P11780332176274321169

`A318284(A181819(n+1))-1`
-/

namespace A028422.P11780332176274321169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1)).toNat - 1

end

end A028422.P11780332176274321169

/-! ## A028422.P12265279152616060346

`xor(A154281(n+1), A380218(n))`
-/

namespace A028422.P12265279152616060346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154281 (n + 1)) (A380218 n)

end

end A028422.P12265279152616060346

/-! ## A028422.P8658183573811649960

`A167688(n+1)+A055212(n+1)`
-/

namespace A028422.P8658183573811649960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (n + 1) + A055212 (n + 1)

end

end A028422.P8658183573811649960

/-! ## A028422.P10327332709395793922

`A096276(n+1)-A096276(n)-1`
-/

namespace A028422.P10327332709395793922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1) - A096276 n - 1

end

end A028422.P10327332709395793922

/-! ## A028422.P11838803187257777635

`A033273(n+1)+A167688(n+1)-1`
-/

namespace A028422.P11838803187257777635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + (A167688 (n + 1) - 1)

end

end A028422.P11838803187257777635

/-! ## A028422.P14686197069344132764

`A057567(n+1)-(A339564(n+1)+1)`
-/

namespace A028422.P14686197069344132764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - (A339564 (n + 1) + 1)

end

end A028422.P14686197069344132764

/-! ## A028422.P6807698251494722965

`A281116(n+1)+A319786(n+1)-1`
-/

namespace A028422.P6807698251494722965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) + (A319786 (n + 1) - 1)

end

end A028422.P6807698251494722965

/-! ## A028422.P779463073272620183

`A066637(n+1)%(A076277(n+1)+1)`
-/

namespace A028422.P779463073272620183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066637 (n + 1)) (A076277 (n + 1) + 1)

end

end A028422.P779463073272620183

/-! ## A028422.P7551144301869519185

`∑{d}[n+1, A008683(#)*A363756((n+1)/#)]`
-/

namespace A028422.P7551144301869519185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A363756 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A028422.P7551144301869519185

/-! ## A028422.P437024838776488937

`A153881(n+2)+A001055(n+1)`
-/

namespace A028422.P437024838776488937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A001055 (n + 1)

end

end A028422.P437024838776488937

/-! ## A028422.P10693366156819070231

`(A001055(n+1)+Δ[A139277(n)]+2)%(n+1)`
-/

namespace A028422.P10693366156819070231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1) + (f1 (n + 1) - f1 n + 2)) (n + 1 : ℤ)

end

end A028422.P10693366156819070231

/-! ## A028422.P10297934212311728076

`A008836(A026424(n+1))+A001055(n+1)`
-/

namespace A028422.P10297934212311728076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A026424 (n + 1)).toNat + A001055 (n + 1)

end

end A028422.P10297934212311728076

/-!
# A028423: Clog sequence in base 2. Right to left concatenation of n,int(log_2(n)),int(log_2(int(log_2(n)))),... in base 2.

The programs for A028423, there is no canonical definition to state claims against.
-/

/-! ## A028423.P3345478165692864461

`A281223(n+1)+A014682(A281377(n+1)+1)`
-/

namespace A028423.P3345478165692864461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281223 (n + 1) + A014682 (A281377 (n + 1) + 1).toNat

end

end A028423.P3345478165692864461

/-! ## A028423.P12340252700154125514

`2*(A000225(A072464(n+1))+A281223(n+1)+1)/4`
-/

namespace A028423.P12340252700154125514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000225 (A072464 (n + 1)).toNat + (A281223 (n + 1) + 1) : ℚ) / 4)

end

end A028423.P12340252700154125514

/-! ## A028423.P7281181564451923989

`A281223(n+1)+A038459(A281377(n+1))`
-/

namespace A028423.P7281181564451923989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281223 (n + 1) + A038459 (A281377 (n + 1)).toNat

end

end A028423.P7281181564451923989

/-! ## A028423.P17304600457891984690

`A038572(A281223(n+1)+1)`
-/

namespace A028423.P17304600457891984690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A281223 (n + 1) + 1).toNat

end

end A028423.P17304600457891984690

/-! ## A028423.P11702780347939590889

`A080542(A281223(n+1)+1)`
-/

namespace A028423.P11702780347939590889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A281223 (n + 1) + 1).toNat

end

end A028423.P11702780347939590889

/-!
# A028424: Clog sequence in base 3. Right to left concatenation of n,int(log_3(n)),int(log_3(int(log_3(n)))),... in base 3.

The programs for A028424, there is no canonical definition to state claims against.
-/

/-! ## A028424.P15969337215361592574

`∑[A175892(∑[A140679(n)-n])]`
-/

namespace A028424.P15969337215361592574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175892 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028424.P15969337215361592574

/-! ## A028424.P16234049515502996826

`∑[A051340(A055999(n)*A103517(n))]`
-/

namespace A028424.P16234049515502996826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A055999 n * A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028424.P16234049515502996826

/-! ## A028424.P14288429871616074275

`∑[A058026(A327320(3*n+5))+1]`
-/

namespace A028424.P14288429871616074275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (A327320 (3 * n + 5)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028424.P14288429871616074275

/-! ## A028424.P13889306850700531217

`A255588(∑[A060135(2*n+1)+1])`
-/

namespace A028424.P13889306850700531217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060135 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028424.P13889306850700531217

/-!
# A028425: Clog sequence in base 4. Right to left concatenation of n, int(log_4(n)), int(log_4(int(log_4(n)))), ... in base 4.

The programs for A028425, there is no canonical definition to state claims against.
-/

/-! ## A028425.P1728951141621973993

`∑[gcd(A091554(n+1), A153057(n))]`
-/

namespace A028425.P1728951141621973993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091554 (n + 1)) (A153057 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028425.P1728951141621973993

/-! ## A028425.P10691265984628655168

`∑[gcd(A045410(n+1), A108811(n+1))]`
-/

namespace A028425.P10691265984628655168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045410 (n + 1)) (A108811 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028425.P10691265984628655168

/-! ## A028425.P11490314737790083615

`∑[gcd(A038961(n+1), A147627(n+1))]`
-/

namespace A028425.P11490314737790083615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038961 (n + 1)) (A147627 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028425.P11490314737790083615

/-! ## A028425.P6657581947138118195

`∑[gcd(A054347(2*n+9), A155489(n+2))]`
-/

namespace A028425.P6657581947138118195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054347 (2 * n + 9)) (A155489 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028425.P6657581947138118195

/-!
# A028426: Clog sequence in base 5. Right to left concatenation of n,int(log_5(n)),int(log_5(int(log_5(n)))),... in base5.

The programs for A028426, there is no canonical definition to state claims against.
-/

/-! ## A028426.P7097264164256520671

`∑[A035316(∑[A326438(n)])]`
-/

namespace A028426.P7097264164256520671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326438 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028426.P7097264164256520671

/-! ## A028426.P15290514540817565662

`∑[A360159(∑[A326438(n)])]`
-/

namespace A028426.P15290514540817565662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326438 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360159 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028426.P15290514540817565662

/-! ## A028426.P15209182147765033910

`∑[A010227(p?[A000607(n)])]`
-/

namespace A028426.P15209182147765033910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010227 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028426.P15209182147765033910

/-! ## A028426.P6824123089871284716

`∑[A035316(∑[A051683(n+1)])]`
-/

namespace A028426.P6824123089871284716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028426.P6824123089871284716

/-! ## A028426.P13086562359818504899

`∑[gcd(A016789(n+4), A330123(3*n+5))]`
-/

namespace A028426.P13086562359818504899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016789 (n + 4)) (A330123 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028426.P13086562359818504899

/-!
# A028427: Clog sequence in base 6. Right to left concatenation of n,int(log_6(n)),int(log_6(int(log_6(n)))),... in base6.

The programs for A028427, there is no canonical definition to state claims against.
-/

/-! ## A028427.P3365806512800228902

`∑[gcd(37, A153925(n))]`
-/

namespace A028427.P3365806512800228902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 37 (A153925 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028427.P3365806512800228902

/-! ## A028427.P14534052334295480332

`∑[gcd(74, A099651(n+1))]`
-/

namespace A028427.P14534052334295480332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 74 (A099651 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028427.P14534052334295480332

/-! ## A028427.P2207932527641333461

`∑[A244569(A315942(n)²)]`
-/

namespace A028427.P2207932527641333461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 (A315942 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028427.P2207932527641333461

/-! ## A028427.P3315784890584130323

`∑[A051340(A256833(n+1))]`
-/

namespace A028427.P3315784890584130323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A256833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028427.P3315784890584130323

/-! ## A028427.P2237326617953367323

`∑[A244569(A024697(n+5))]`
-/

namespace A028427.P2237326617953367323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 (A024697 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028427.P2237326617953367323

/-!
# A028428: Clog sequence in base 7. Right to left concatenation of n,int(log_7(n)),int(log_7(int(log_7(n)))),... in base7.

The programs for A028428, there is no canonical definition to state claims against.
-/

/-! ## A028428.P5718209990246257576

`(∏{e}[A220440(n+4), #+1]-1)²+1+n`
-/

namespace A028428.P5718209990246257576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220440 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1) ^ 2 + 1 + (n : ℤ)

end

end A028428.P5718209990246257576

/-! ## A028428.P18234319708208002241

`∑[A019193(n+3)^A083928(n)]`
-/

namespace A028428.P18234319708208002241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019193 (n + 3) : ℚ) ^ (A083928 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028428.P18234319708208002241

/-! ## A028428.P6040041920372296568

`∑[A019195(n+3)^A083928(n)]`
-/

namespace A028428.P6040041920372296568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019195 (n + 3) : ℚ) ^ (A083928 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028428.P6040041920372296568

/-! ## A028428.P87502630397524025

`∑[A019199(n+3)^A083928(n)]`
-/

namespace A028428.P87502630397524025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019199 (n + 3) : ℚ) ^ (A083928 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028428.P87502630397524025

/-! ## A028428.P2590073138340698144

`∑[A065958(A296659(3*n+1))]`
-/

namespace A028428.P2590073138340698144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (A296659 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028428.P2590073138340698144

/-!
# A028429: Clog sequence in base 8. Right to left concatenation of n, int(log_8(n)),int(log_8(int(log_8(n)))),... in base8.

The programs for A028429, there is no canonical definition to state claims against.
-/

/-! ## A028429.P2050468172514531281

`A178334(A175817(n+1))+n`
-/

namespace A028429.P2050468172514531281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A175817 (n + 1)).toNat + (n : ℤ)

end

end A028429.P2050468172514531281

/-! ## A028429.P79782055293954139

`∑[A380396(A188277(2*(n+1))+A014302(n+3))]`
-/

namespace A028429.P79782055293954139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380396 (A188277 (2 * (n + 1)) + A014302 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028429.P79782055293954139

/-! ## A028429.P12152250254409318761

`∑[A007310(3*n+1)^A343958(3*n+2)]`
-/

namespace A028429.P12152250254409318761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007310 (3 * n + 1) : ℚ) ^ (A343958 (3 * n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028429.P12152250254409318761

/-! ## A028429.P9431847640232581181

`∑[A380396(A173196(n)+A104684(n))]`
-/

namespace A028429.P9431847640232581181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380396 (A173196 n + A104684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028429.P9431847640232581181

/-! ## A028429.P4544997803337026937

`∑[A330315(A061832(3*n+4))+1]`
-/

namespace A028429.P4544997803337026937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330315 (A061832 (3 * n + 4)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028429.P4544997803337026937

/-!
# A028430: Clog sequence in base 9. Right to left concatenation of n, int(log_9(n)), int(log_9(int(log_9(n)))),... in base9.

The programs for A028430, there is no canonical definition to state claims against.
-/

/-! ## A028430.P10656803408877064919

`∑[A000463(A021009(n)*A194186(3*n+4)+1)]`
-/

namespace A028430.P10656803408877064919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A021009 n * A194186 (3 * n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028430.P10656803408877064919

/-! ## A028430.P13314231553633981681

`∑[A300909(A051345(n+1))]`
-/

namespace A028430.P13314231553633981681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (A051345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028430.P13314231553633981681

/-! ## A028430.P6469368240757194299

`∑[A275972(A326697(3*n+4)²)]`
-/

namespace A028430.P6469368240757194299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 (A326697 (3 * n + 4) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028430.P6469368240757194299

/-! ## A028430.P758436227874611434

`∑[A300909(A345493(2*(n+2))+A345461(n+1))]`
-/

namespace A028430.P758436227874611434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (A345493 (2 * (n + 2)) + A345461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028430.P758436227874611434

/-! ## A028430.P16902982351838957415

`∑[A329862(3*n+4)^val(A000041(3*n+2), 6)]`
-/

namespace A028430.P16902982351838957415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329862 (3 * n + 4) ^ SequenceMachineLib.valuation (A000041 (3 * n + 2)).toNat 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028430.P16902982351838957415

/-!
# A028431: Clog sequence in base 10. Right to left concatenation of n, int(log_10(n)), int(log_10(int(log_10(n)))),... in base10.

The programs for A028431, there is no canonical definition to state claims against.
-/

/-! ## A028431.P7845174442049399306

`A056965(n+1)+A004086(A028440(n+1))`
-/

namespace A028431.P7845174442049399306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (n + 1) + A004086 (A028440 (n + 1)).toNat

end

end A028431.P7845174442049399306

/-! ## A028431.P1531167047354489579

`A087712(A000040(n+1)*A055642(n+1))`
-/

namespace A028431.P1531167047354489579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A000040 (n + 1) * A055642 (n + 1)).toNat

end

end A028431.P1531167047354489579

/-! ## A028431.P9306130162271824818

`A087712(lcm(A000040(n+1), A055642(n+1)))`
-/

namespace A028431.P9306130162271824818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (Int.lcm (A000040 (n + 1)) (A055642 (n + 1)))

end

end A028431.P9306130162271824818

/-! ## A028431.P5142684323125357893

`A087712((A004216(n+1)+1)*A000040(n+1))`
-/

namespace A028431.P5142684323125357893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 ((A004216 (n + 1) + 1) * A000040 (n + 1)).toNat

end

end A028431.P5142684323125357893

/-! ## A028431.P10411558420124382017

`A103181(A323578(comp[∑[n]]))+n`
-/

namespace A028431.P10411558420124382017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A323578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat + (n : ℤ)

end

end A028431.P10411558420124382017

/-! ## A028431.P10072738018175734029

`or(A020725(a(n-1)), A088472(n+1))` with `a(0)=1`
-/

namespace A028431.P10072738018175734029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A020725 (a (n - 1)).toNat) (A088472 (n + 1))

end

end A028431.P10072738018175734029

/-!
# A028433: Golc sequence in base 3. Left to right concatenation of n,int(log_3(n)),int(log_3(int(log_3(n)))),... in base 3.

The programs for A028433, there is no canonical definition to state claims against.
-/

/-! ## A028433.P17270836032789925965

`lcm(A007412(3*n+2), A164306(A276142(n+1)))`
-/

namespace A028433.P17270836032789925965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007412 (3 * n + 2)) (A164306 (A276142 (n + 1)).toNat)

end

end A028433.P17270836032789925965

/-! ## A028433.P7219188757988763735

`lcm(A031980(3*(n+1)), A050873(A088956(3*n+2)))`
-/

namespace A028433.P7219188757988763735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031980 (3 * (n + 1))) (A050873 (A088956 (3 * n + 2)).toNat)

end

end A028433.P7219188757988763735

/-!
# A028434: Golc sequence in base 4. Left to right concatenation of n,int(log_4(n)),int(log_4(int(log_4(n)))),... in base 4.

The programs for A028434, there is no canonical definition to state claims against.
-/

/-! ## A028434.P13509307186945112661

`∑[A088152(2^n)+4]`
-/

namespace A028434.P13509307186945112661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088152 (2 ^ n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028434.P13509307186945112661

/-! ## A028434.P2774782560440458365

`∑[A101605(2^n)+4]`
-/

namespace A028434.P2774782560440458365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 ^ n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028434.P2774782560440458365

/-! ## A028434.P4967474051595915768

`∑[∏{e}[A148215(n), #]+3]`
-/

namespace A028434.P4967474051595915768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148215 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028434.P4967474051595915768

/-! ## A028434.P7683992640890972873

`∑[∏{e}[∑[A054854(n)], #]+3]`
-/

namespace A028434.P7683992640890972873
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028434.P7683992640890972873

/-! ## A028434.P5168015357407041452

`∑[A071178(2^n+1)+3]`
-/

namespace A028434.P5168015357407041452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (2 ^ n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028434.P5168015357407041452

/-!
# A028435: Golc sequence in base 5. Left to right concatenation of n,int(log_5(n)),int(log_5(int(log_5(n)))),... in base5.

The programs for A028435, there is no canonical definition to state claims against.
-/

/-! ## A028435.P13884174519565143589

`∑[val(A220120(n+1), 5)+5]`
-/

namespace A028435.P13884174519565143589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A220120 (n + 1)).toNat 5 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028435.P13884174519565143589

/-! ## A028435.P2528879069232875455

`∑[C(n, A036173(3*n+4))+5]`
-/

namespace A028435.P2528879069232875455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A036173 (3 * n + 4)).toNat + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028435.P2528879069232875455

/-! ## A028435.P16052774162124391798

`∑[floor(2*n/A082672(n+1))+5]`
-/

namespace A028435.P16052774162124391798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (A082672 (n + 1) : ℚ)⌋ + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028435.P16052774162124391798

/-! ## A028435.P17178078381775873398

`∑[A177704(A001371(n))+4]`
-/

namespace A028435.P17178078381775873398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A001371 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028435.P17178078381775873398

/-! ## A028435.P15317140691573426364

`∑[A010052(A282757(n+3))+5]`
-/

namespace A028435.P15317140691573426364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A282757 (n + 3)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028435.P15317140691573426364

/-!
# A028436: Golc sequence in base 6. Left to right concatenation of n,int(log_6(n)),int(log_6(int(log_6(n)))),... in base6.

The programs for A028436, there is no canonical definition to state claims against.
-/

/-! ## A028436.P17313436280936806438

`∑[val(A107591(n), 13)+6]`
-/

namespace A028436.P17313436280936806438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A107591 n).toNat 13 + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028436.P17313436280936806438

/-! ## A028436.P1261247975601059406

`∑[val(A008963(∏{d}[n, #]), 5)+6]`
-/

namespace A028436.P1261247975601059406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (∏ d ∈ Nat.divisors (f2 n), d)).toNat 5 + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028436.P1261247975601059406

/-! ## A028436.P739338512394016318

`6*n+7-A010057(C(n, 4))`
-/

namespace A028436.P739338512394016318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 7 : ℤ) - A010057 (Nat.choose n 4)

end

end A028436.P739338512394016318

/-! ## A028436.P6963995285020864859

`A133137(3*(n+1))+3*(n+1)`
-/

namespace A028436.P6963995285020864859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (3 * (n + 1)) + (3 * (n + 1) : ℤ)

end

end A028436.P6963995285020864859

/-! ## A028436.P8358093876356220580

`∑[A052409(A061561(n))+5]`
-/

namespace A028436.P8358093876356220580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A061561 n).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028436.P8358093876356220580

/-!
# A028437: Golc sequence in base 7. Left to right concatenation of n,int(log_7(n)),int(log_7(int(log_7(n)))),... in base7.

The programs for A028437, there is no canonical definition to state claims against.
-/

/-! ## A028437.P9419972863445647657

`8*n+10-A160755(n+3)`
-/

namespace A028437.P9419972863445647657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 10 : ℤ) - A160755 (n + 3)

end

end A028437.P9419972863445647657

/-! ## A028437.P15463752983141622536

`round(∑[7*root(8, A087703(n+1))])`
-/

namespace A028437.P15463752983141622536
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  7 * (8 : ℝ) ^ (1 / (A087703 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028437.P15463752983141622536

/-! ## A028437.P9916916480828482901

`A258198(A134213(n+1))+A017017(n)`
-/

namespace A028437.P9916916480828482901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A134213 (n + 1)).toNat + A017017 n

end

end A028437.P9916916480828482901

/-! ## A028437.P14474837115427762193

`A055642(A277459(n+2))+7*n+4`
-/

namespace A028437.P14474837115427762193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A277459 (n + 2)).toNat + (7 * n + 4 : ℤ)

end

end A028437.P14474837115427762193

/-! ## A028437.P14355726937501583873

`∑[A035214(∑[A038400(n+1)+6])+6]`
-/

namespace A028437.P14355726937501583873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028437.P14355726937501583873

/-!
# A028438: Golc sequence in base 8. Left to right concatenation of n,int(log_8(n)),int(log_8(int(log_8(n)))),... in base8.

The programs for A028438, there is no canonical definition to state claims against.
-/

/-! ## A028438.P461134937642063798

`A138902(A138884(n+1))+record[xor(7, n)]`
-/

namespace A028438.P461134937642063798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A138884 (n + 1)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A028438.P461134937642063798

/-! ## A028438.P16162010457397427133

`A004768(n)-A000007(A018814(n))`
-/

namespace A028438.P16162010457397427133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n - A000007 (A018814 n).toNat

end

end A028438.P16162010457397427133

/-! ## A028438.P6515780033461854879

`8*(n+1)+A185115(A000009(n))`
-/

namespace A028438.P6515780033461854879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) + A185115 (A000009 n).toNat

end

end A028438.P6515780033461854879

/-! ## A028438.P16447061668382551356

`a(n-1)+9-A132350(A003215(n))` with `a(0)=8`
-/

namespace A028438.P16447061668382551356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 9 - A132350 (A003215 n).toNat

end

end A028438.P16447061668382551356

/-! ## A028438.P5939687415610991704

`A004768(n)-A249832(A240875(n))`
-/

namespace A028438.P5939687415610991704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n - A249832 (A240875 n).toNat

end

end A028438.P5939687415610991704

/-! ## A028438.P7300958675501899177

`or(a(n-1)+8, A066247(A351974(n+1)))` with `a(0)=8`
-/

namespace A028438.P7300958675501899177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.lor (a (n - 1) + 8) (A066247 (A351974 (n + 1)).toNat)

end

end A028438.P7300958675501899177

/-! ## A028438.P2182424558272053176

`A004771(n)+A020639(A248774(n+1))`
-/

namespace A028438.P2182424558272053176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + A020639 (A248774 (n + 1)).toNat

end

end A028438.P2182424558272053176

/-! ## A028438.P8876671074846088185

`8*n+9-A015396(A087136(n))`
-/

namespace A028438.P8876671074846088185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 9 : ℤ) - A015396 (A087136 n).toNat

end

end A028438.P8876671074846088185

/-!
# A028439: Golc sequence in base 9. Left to right concatenation of n,int(log_9(n)),int(log_9(int(log_9(n)))),... in base9.

The programs for A028439, there is no canonical definition to state claims against.
-/

/-! ## A028439.P13556082368004084241

`A055642(A145395(n+1))+A017257(n)`
-/

namespace A028439.P13556082368004084241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A145395 (n + 1)).toNat + A017257 n

end

end A028439.P13556082368004084241

/-! ## A028439.P11505562237284586449

`A055642(A316495(n+1))+A017257(n)`
-/

namespace A028439.P11505562237284586449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A316495 (n + 1)).toNat + A017257 n

end

end A028439.P11505562237284586449

/-! ## A028439.P4870363130210187753

`A055642(A367401(n+1))+A017257(n)`
-/

namespace A028439.P4870363130210187753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A367401 (n + 1)).toNat + A017257 n

end

end A028439.P4870363130210187753

/-! ## A028439.P5143221617996871159

`A133137(n+9)+8*n`
-/

namespace A028439.P5143221617996871159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (n + 9) + (8 * n : ℤ)

end

end A028439.P5143221617996871159

/-! ## A028439.P5332817044885140037

`A175253(A022296(n+4))+A008585(3*(n+1))`
-/

namespace A028439.P5332817044885140037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (A022296 (n + 4)).toNat + A008585 (3 * (n + 1))

end

end A028439.P5332817044885140037

/-! ## A028439.P14304857458760143958

`A055642(A074822(n+4))+9*n+6`
-/

namespace A028439.P14304857458760143958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A074822 (n + 4)).toNat + (9 * n + 6 : ℤ)

end

end A028439.P14304857458760143958

/-! ## A028439.P3634088290833948736

`A055642(A322409(n+1))+9*n+7`
-/

namespace A028439.P3634088290833948736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A322409 (n + 1)).toNat + (9 * n + 7 : ℤ)

end

end A028439.P3634088290833948736

/-! ## A028439.P17966264135955687809

`A297042(A325371(n+3))+A008585(3*n+3)`
-/

namespace A028439.P17966264135955687809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297042 (A325371 (n + 3)).toNat + A008585 (3 * n + 3)

end

end A028439.P17966264135955687809

/-! ## A028439.P6613910847878167956

`A023976(A279106(n+1))+9*(n+1)`
-/

namespace A028439.P6613910847878167956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023976 (A279106 (n + 1)).toNat + (9 * (n + 1) : ℤ)

end

end A028439.P6613910847878167956

/-! ## A028439.P16448289409439402090

`10*(n+1)-A160755(n+1)`
-/

namespace A028439.P16448289409439402090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) - A160755 (n + 1)

end

end A028439.P16448289409439402090

/-!
# A028440: Golc sequence in base 10. Left to right concatenation of n,int(log_10(n)),int(log_10(int(log_10(n)))),... in base 10.

The programs for A028440, there is no canonical definition to state claims against.
-/

/-! ## A028440.P3868113399091426490

`A098955(A000196((n+2)²))-2`
-/

namespace A028440.P3868113399091426490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098955 (A000196 ((n + 2) ^ 2)).toNat - 2

end

end A028440.P3868113399091426490

/-! ## A028440.P15159133448237848400

`A233583(10*n+12)-char[A071330(10*n+7)]`
-/

namespace A028440.P15159133448237848400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (10 * n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (10 * n + 12) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A028440.P15159133448237848400

/-! ## A028440.P3997742418503345569

`A055642(A158128(n+1))+A017353(n)`
-/

namespace A028440.P3997742418503345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A158128 (n + 1)).toNat + A017353 n

end

end A028440.P3997742418503345569

/-! ## A028440.P3709250688788378540

`eq[A000040(A274206(n+1)), A055642(n)]`
-/

namespace A028440.P3709250688788378540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A274206 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028440.P3709250688788378540

/-! ## A028440.P466178198520314898

`A059995(A044332(n+1))+A004216(n+1)`
-/

namespace A028440.P466178198520314898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A044332 (n + 1)).toNat + A004216 (n + 1)

end

end A028440.P466178198520314898

/-! ## A028440.P10309103771230968279

`A059995(A158128(n+1))+A004216(n+1)`
-/

namespace A028440.P10309103771230968279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A158128 (n + 1)).toNat + A004216 (n + 1)

end

end A028440.P10309103771230968279

/-! ## A028440.P10566335060570329058

`A059995(A158128(n+1))+A031346(A212499(n+1))`
-/

namespace A028440.P10566335060570329058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A158128 (n + 1)).toNat + A031346 (A212499 (n + 1)).toNat

end

end A028440.P10566335060570329058

/-! ## A028440.P7627958982421137305

`A017377(n)+A000034(A088469(n+1))`
-/

namespace A028440.P7627958982421137305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + A000034 (A088469 (n + 1)).toNat

end

end A028440.P7627958982421137305

/-!
# A028441: Number of triangulations of 4-dimensional cyclic polytopes.

The programs for A028441, there is no canonical definition to state claims against.
-/

/-! ## A028441.P5880360384034306099

`A006455(n+1)-A033718(A000945(n+1))`
-/

namespace A028441.P5880360384034306099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006455 (n + 1) - A033718 (A000945 (n + 1)).toNat

end

end A028441.P5880360384034306099

/-! ## A028441.P17007631801576632779

`A006455(∑[C(n, floor(n/6))²])`
-/

namespace A028441.P17007631801576632779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 6⌋.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006455 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028441.P17007631801576632779

/-!
# A028442: Numbers k such that Mertens's function M(k) (A002321) is zero.

The programs for A028442, the canonical program `A028442.P16090401491980094714` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028442 has offset 1).

The definition of A028442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028442.P1639597426597052333

`A057639(n)+a(n-1)` with `a(0)=2`
-/

namespace A028442.P1639597426597052333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057639 n + a (n - 1)

end

end A028442.P1639597426597052333

namespace A028442

/-- `A057639(n)+a(n-1)` -/
def P1639597426597052333.Spec : Prop :=
  ∀ n, P1639597426597052333.a n = A028442 (n + 1)

end A028442

/-! ## A028442.P16090401491980094714

`A100306(n+2)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A028442

/-- `A100306(n+2)-1` -/
def P16090401491980094714.Spec : Prop :=
  ∀ n, P16090401491980094714.a n = A028442 (n + 1)

theorem P16090401491980094714.correct : P16090401491980094714.Spec := by
  intro n
  simp only [A028442, Nat.add_sub_cancel]

end A028442

/-! ## A028442.P16905662301953569666

`eq[1, a(n-1)-A008683(n)]` with `a(0)=0, a(1)=0`
-/

namespace A028442.P16905662301953569666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) - A008683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028442.P16905662301953569666

namespace A028442

/-- `eq[1, a(n-1)-A008683(n)]` -/
def P16905662301953569666.Spec : Prop :=
  ∀ n, (P16905662301953569666.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P16416152488694966606

`A062982(n+2)`
-/

namespace A028442.P16416152488694966606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 2)

end

end A028442.P16416152488694966606

namespace A028442

/-- `A062982(n+2)` -/
def P16416152488694966606.Spec : Prop :=
  ∀ n, P16416152488694966606.a n = A028442 (n + 1)

end A028442

/-! ## A028442.P16868634845582907556

`eq[2, A162943(n+1)]+1`
-/

namespace A028442.P16868634845582907556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028442.P16868634845582907556

namespace A028442

/-- `eq[2, A162943(n+1)]+1` -/
def P16868634845582907556.Spec : Prop :=
  ∀ n, (P16868634845582907556.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P18379946105984776692

`A023443(A100306(n+2))`
-/

namespace A028442.P18379946105984776692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100306 (n + 2)).toNat

end

end A028442.P18379946105984776692

namespace A028442

/-- `A023443(A100306(n+2))` -/
def P18379946105984776692.Spec : Prop :=
  ∀ n, P18379946105984776692.a n = A028442 (n + 1)

end A028442

/-! ## A028442.P11445152635597804586

`eq[2, A162943(A028310(n))]`
-/

namespace A028442.P11445152635597804586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028442.P11445152635597804586

namespace A028442

/-- `eq[2, A162943(A028310(n))]` -/
def P11445152635597804586.Spec : Prop :=
  ∀ n, (P11445152635597804586.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P12250156124324807172

`eq[2, A162943(A000007(n)+n)]`
-/

namespace A028442.P12250156124324807172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028442.P12250156124324807172

namespace A028442

/-- `eq[2, A162943(A000007(n)+n)]` -/
def P12250156124324807172.Spec : Prop :=
  ∀ n, (P12250156124324807172.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P12524184416409192732

`A020725(eq[1, A002321(n+1)+1])`
-/

namespace A028442.P12524184416409192732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028442.P12524184416409192732

namespace A028442

/-- `A020725(eq[1, A002321(n+1)+1])` -/
def P12524184416409192732.Spec : Prop :=
  ∀ n, P12524184416409192732.a n = A028442 (n + 1)

end A028442

/-! ## A028442.P2161716823968955753

`eq[A002321(n+1), A178411(n+1)]`
-/

namespace A028442.P2161716823968955753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028442.P2161716823968955753

namespace A028442

/-- `eq[A002321(n+1), A178411(n+1)]` -/
def P2161716823968955753.Spec : Prop :=
  ∀ n, (P2161716823968955753.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P12315898433088163971

`eq[-A002321(n+1), A157657(n+1)]`
-/

namespace A028442.P12315898433088163971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028442.P12315898433088163971

namespace A028442

/-- `eq[-A002321(n+1), A157657(n+1)]` -/
def P12315898433088163971.Spec : Prop :=
  ∀ n, (P12315898433088163971.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P5138575049366313505

`eq[A000720(n+1), A088004(n+1)]+1`
-/

namespace A028442.P5138575049366313505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028442.P5138575049366313505

namespace A028442

/-- `eq[A000720(n+1), A088004(n+1)]+1` -/
def P5138575049366313505.Spec : Prop :=
  ∀ n, (P5138575049366313505.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P16237577296563496330

`eq[A008683(n+2), A002321(n+2)]+1`
-/

namespace A028442.P16237577296563496330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028442.P16237577296563496330

namespace A028442

/-- `eq[A008683(n+2), A002321(n+2)]+1` -/
def P16237577296563496330.Spec : Prop :=
  ∀ n, (P16237577296563496330.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P2465253630490775924

`eq[a(n-1)-A157657(n+1), A007423(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A028442.P2465253630490775924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028442.P2465253630490775924

namespace A028442

/-- `eq[a(n-1)-A157657(n+1), A007423(n+1)]` -/
def P2465253630490775924.Spec : Prop :=
  ∀ n, (P2465253630490775924.a n : ℤ) = A028442 (n + 1)

end A028442

/-! ## A028442.P6988090908718816168

`eq[1, A057427(n)-A002321(A028310(n))]`
-/

namespace A028442.P6988090908718816168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028442.P6988090908718816168

namespace A028442

/-- `eq[1, A057427(n)-A002321(A028310(n))]` -/
def P6988090908718816168.Spec : Prop :=
  ∀ n, (P6988090908718816168.a n : ℤ) = A028442 (n + 1)

end A028442

/-!
# A028444: Busy Beaver sequence, or Rado's sigma function: maximal number of 1's that an n-state Turing machine can print on an initially blank tape before halting.

The programs for A028444, there is no canonical definition to state claims against.
-/

/-! ## A028444.P10005467357200703822

`A048675(xor(A000578(n), A284823(3*n+1)))`
-/

namespace A028444.P10005467357200703822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (Int.xor (A000578 n) (A284823 (3 * n + 1))).toNat

end

end A028444.P10005467357200703822

/-!
# A028445: Number of cubefree words of length n on two letters.

The programs for A028445, there is no canonical definition to state claims against.
-/

/-! ## A028445.P6989975543922029926

`A260196(A023278(n+1))+A228121(floor(2^(n/2)+(n+1)/2))`
-/

namespace A028445.P6989975543922029926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A023278 (n + 1)).toNat + A228121 ⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) + ((n + 1 : ℚ) / 2 : ℝ)⌋.toNat

end

end A028445.P6989975543922029926

/-! ## A028445.P4211718928771061833

`A178786(Δ[A048496(n)])`
-/

namespace A028445.P4211718928771061833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (f1 (n + 1) - f1 n).toNat

end

end A028445.P4211718928771061833

/-! ## A028445.P7749410013499105272

`A178786(A053220(n+1))`
-/

namespace A028445.P7749410013499105272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A053220 (n + 1)).toNat

end

end A028445.P7749410013499105272

/-! ## A028445.P7398927890311421622

`∑[A110884(A003318(n+1))]`
-/

namespace A028445.P7398927890311421622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110884 (A003318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028445.P7398927890311421622

/-! ## A028445.P8601064408894754721

`A178786(A001787(n+1)+A001787(n))`
-/

namespace A028445.P8601064408894754721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A001787 (n + 1) + A001787 n).toNat

end

end A028445.P8601064408894754721

/-!
# A028447: Number of perfect matchings in graph P_{2} X P_{3} X P_{n}.

The programs for A028447, there is no canonical definition to state claims against.
-/

/-! ## A028447.P5026833398805780644

`A181206(∑[n+2]-1)`
-/

namespace A028447.P5026833398805780644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A028447.P5026833398805780644

/-! ## A028447.P14569527468031078332

`A185255(n)+A181206(A034856(n+1))`
-/

namespace A028447.P14569527468031078332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A181206 (A034856 (n + 1)).toNat

end

end A028447.P14569527468031078332

/-! ## A028447.P3505794759972911905

`A165326(n)²*A181206(A034856(n+1))`
-/

namespace A028447.P3505794759972911905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A181206 (A034856 (n + 1)).toNat

end

end A028447.P3505794759972911905

/-! ## A028447.P16691357946465419560

`char[A028242(n)]*A181206(A034856(n+1))`
-/

namespace A028447.P16691357946465419560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A181206 (A034856 (n + 1)).toNat

end

end A028447.P16691357946465419560

/-!
# A028448: Number of perfect matchings in graph P_{2} X P_{4} X P_{n}.

The programs for A028448, there is no canonical definition to state claims against.
-/

/-! ## A028448.P2515945138567588744

`A181206(A141214(n))-A000007(n)`
-/

namespace A028448.P2515945138567588744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (A141214 n).toNat - A000007 n

end

end A028448.P2515945138567588744

/-! ## A028448.P6890628560070504733

`A181206(A141214(n)-A000038(n))`
-/

namespace A028448.P6890628560070504733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (A141214 n - A000038 n).toNat

end

end A028448.P6890628560070504733

/-! ## A028448.P9462012253821948470

`A181206(A141214(n))/A054977(n)`
-/

namespace A028448.P9462012253821948470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181206 (A141214 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A028448.P9462012253821948470

/-! ## A028448.P12308158370221413416

`A181206(A141214(n)%A108100(n))`
-/

namespace A028448.P12308158370221413416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (Int.tmod (A141214 n) (A108100 n)).toNat

end

end A028448.P12308158370221413416

/-! ## A028448.P16958671848531244858

`A181206(xor(A000038(n), A141214(n)))`
-/

namespace A028448.P16958671848531244858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (Int.xor (A000038 n) (A141214 n)).toNat

end

end A028448.P16958671848531244858

/-!
# A028450: Number of perfect matchings in graph P_{2} X P_{6} X P_{n}.

The programs for A028450, there is no canonical definition to state claims against.
-/

/-! ## A028450.P2735626380076181798

`A181206(∪[A167499(n+4)+1, A028451(n)])`
-/

namespace A028450.P2735626380076181798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (n + 4) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028451 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A028450.P2735626380076181798

/-! ## A028450.P3795519963337886959

`A181206(∪[A167499(n+4)+1, A287052(n)])`
-/

namespace A028450.P3795519963337886959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (n + 4) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287052 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A028450.P3795519963337886959

/-! ## A028450.P2397572236985825181

`A181206(eq[A049410(n+5), A211009(n+1)])`
-/

namespace A028450.P2397572236985825181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049410 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028450.P2397572236985825181

/-!
# A028451: Number of perfect matchings in graph P_{2} X P_{7} X P_{n}.

The programs for A028451, there is no canonical definition to state claims against.
-/

/-! ## A028451.P7110414535821689281

`A181206(A055999(n+3)^A055640(n))`
-/

namespace A028451.P7110414535821689281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 (SequenceMachineLib.roundAway ((A055999 (n + 3) : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A028451.P7110414535821689281

/-!
# A028468: Number of perfect matchings in graph P_{6} X P_{n}.

The programs for A028468, there is no canonical definition to state claims against.
-/

/-! ## A028468.P12653244337960388280

`A187596(A155212(n+2)+14)`
-/

namespace A028468.P12653244337960388280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A155212 (n + 2) + 14).toNat

end

end A028468.P12653244337960388280

/-! ## A028468.P15842983757019363596

`A187596(A056000(n+2)+16)`
-/

namespace A028468.P15842983757019363596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A056000 (n + 2) + 16).toNat

end

end A028468.P15842983757019363596

/-! ## A028468.P17532594057237984034

`A187596(A056115(n+2)+8)`
-/

namespace A028468.P17532594057237984034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A056115 (n + 2) + 8).toNat

end

end A028468.P17532594057237984034

/-! ## A028468.P2676958409914278508

`A189006(A056119(n+1)+14)`
-/

namespace A028468.P2676958409914278508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A056119 (n + 1) + 14).toNat

end

end A028468.P2676958409914278508

/-! ## A028468.P2573623660868059072

`A099390(A052905(n+2))`
-/

namespace A028468.P2573623660868059072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (A052905 (n + 2)).toNat

end

end A028468.P2573623660868059072

/-!
# A028469: Number of perfect matchings in graph P_{7} X P_{2n}.

The programs for A028469, there is no canonical definition to state claims against.
-/

/-! ## A028469.P10000608856477167555

`A189004(2*n)`
-/

namespace A028469.P10000608856477167555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (2 * n)

end

end A028469.P10000608856477167555

/-! ## A028469.P7439477333863267984

`record[A189004(n)/(-1)^n]`
-/

namespace A028469.P7439477333863267984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189004 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028469.P7439477333863267984

/-! ## A028469.P4638143792045815719

`or(1, A189004(A005843(n)))`
-/

namespace A028469.P4638143792045815719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189004 (A005843 n).toNat)

end

end A028469.P4638143792045815719

/-! ## A028469.P7453888014600090486

`A001835(n+1)*A334135(n)`
-/

namespace A028469.P7453888014600090486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1) * A334135 n

end

end A028469.P7453888014600090486

/-! ## A028469.P6016838351099815216

`record[A189004(abs(A009001(n))-1)]`
-/

namespace A028469.P6016838351099815216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (|A009001 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028469.P6016838351099815216

/-! ## A028469.P16218299773977415062

`record[A189004(abs(n/A009001(n)))]`
-/

namespace A028469.P16218299773977415062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (SequenceMachineLib.roundAway |(n : ℚ) / (A009001 n : ℚ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028469.P16218299773977415062

/-! ## A028469.P4493338176051188504

`record[A189004(A000265(n+1)-1)]`
-/

namespace A028469.P4493338176051188504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028469.P4493338176051188504

/-! ## A028469.P9353621607689128754

`record[A189004(A204154(n+1)-1)]`
-/

namespace A028469.P9353621607689128754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189004 (A204154 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028469.P9353621607689128754

/-! ## A028469.P10914617201335775979

`record[gcd(A035363(n+1), A189004(n))]`
-/

namespace A028469.P10914617201335775979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 (n + 1)) (A189004 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028469.P10914617201335775979

/-! ## A028469.P15106173146954317941

`record[and(A033999(n+1), A189004(n))]`
-/

namespace A028469.P15106173146954317941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (n + 1)) (A189004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028469.P15106173146954317941

/-!
# A028470: Number of perfect matchings in graph P_{8} X P_{n}.

The programs for A028470, there is no canonical definition to state claims against.
-/

/-! ## A028470.P14815499713562607574

`A187596(A000096(n+7)+9)`
-/

namespace A028470.P14815499713562607574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A000096 (n + 7) + 9).toNat

end

end A028470.P14815499713562607574

/-! ## A028470.P7822068410954645327

`A189006(A000217(n+8)+8)`
-/

namespace A028470.P7822068410954645327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A000217 (n + 8) + 8).toNat

end

end A028470.P7822068410954645327

/-! ## A028470.P10904473335042599181

`A189006(A055998(n+6)+11)`
-/

namespace A028470.P10904473335042599181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A055998 (n + 6) + 11).toNat

end

end A028470.P10904473335042599181

/-! ## A028470.P3990639747240138064

`A189006(A052905(n+7)-A005843(n+3))`
-/

namespace A028470.P3990639747240138064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A052905 (n + 7) - A005843 (n + 3)).toNat

end

end A028470.P3990639747240138064

/-! ## A028470.P13385170093325537228

`A187596(A000217(n+9)-9)`
-/

namespace A028470.P13385170093325537228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A000217 (n + 9) - 9).toNat

end

end A028470.P13385170093325537228

/-! ## A028470.P9546552741937100133

`A187596(A161680(n+10)-9)`
-/

namespace A028470.P9546552741937100133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A161680 (n + 10) - 9).toNat

end

end A028470.P9546552741937100133

/-!
# A028471: Number of perfect matchings (or domino tilings) in the graph P_9 X P_2n.

The programs for A028471, there is no canonical definition to state claims against.
-/

/-! ## A028471.P2296426815879397758

`A189005(2*n)`
-/

namespace A028471.P2296426815879397758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189005 (2 * n)

end

end A028471.P2296426815879397758

/-! ## A028471.P15145702145686458192

`record[A189005(n)/(-1)^n]`
-/

namespace A028471.P15145702145686458192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189005 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028471.P15145702145686458192

/-! ## A028471.P17177327956339076513

`record[A189005(A014681(n))]`
-/

namespace A028471.P17177327956339076513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189005 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028471.P17177327956339076513

/-! ## A028471.P1908870987401270631

`record[gcd(A138364(n), A189005(n))]`
-/

namespace A028471.P1908870987401270631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138364 n) (A189005 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028471.P1908870987401270631

/-! ## A028471.P13311662542850159138

`record[A189005(lcm(n, A056594(n)))]`
-/

namespace A028471.P13311662542850159138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189005 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028471.P13311662542850159138

/-!
# A028472: Number of perfect matchings in graph P_{10} X P_{n}.

The programs for A028472, there is no canonical definition to state claims against.
-/

/-! ## A028472.P16118426882784118838

`A187596(eq[10, A002262(n)])`
-/

namespace A028472.P16118426882784118838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028472.P16118426882784118838

/-! ## A028472.P4669270588296745868

`A189006(eq[10, A002262(n)])`
-/

namespace A028472.P4669270588296745868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028472.P4669270588296745868

/-! ## A028472.P3988235011514458750

`A187596(A167499(n+9)+5)`
-/

namespace A028472.P3988235011514458750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A167499 (n + 9) + 5).toNat

end

end A028472.P3988235011514458750

/-! ## A028472.P5952378476776921677

`A189006(A055998(n+8)+13)`
-/

namespace A028472.P5952378476776921677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A055998 (n + 8) + 13).toNat

end

end A028472.P5952378476776921677

/-! ## A028472.P10764436611081915818

`A189006(eq[10, A144328(n+1)])`
-/

namespace A028472.P10764436611081915818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028472.P10764436611081915818

/-!
# A028473: Number of perfect matchings in graph P_{11} X P_{2n}.

The programs for A028473, there is no canonical definition to state claims against.
-/

/-! ## A028473.P18199765657900276900

`A210724(2*n)`
-/

namespace A028473.P18199765657900276900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210724 (2 * n)

end

end A028473.P18199765657900276900

/-! ## A028473.P4297890579750695575

`record[A210724(A029578(n))]`
-/

namespace A028473.P4297890579750695575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210724 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028473.P4297890579750695575

/-! ## A028473.P14039373995974408347

`record[gcd(A210724(n), A264782(n+1))]`
-/

namespace A028473.P14039373995974408347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210724 n) (A264782 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028473.P14039373995974408347

/-! ## A028473.P9909850530453143505

`record[A210724(A004275(A008612(n)))]`
-/

namespace A028473.P9909850530453143505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210724 (A004275 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028473.P9909850530453143505

/-! ## A028473.P599135833715426873

`A187596(eq[12, A140756(n+1)])`
-/

namespace A028473.P599135833715426873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028473.P599135833715426873

/-!
# A028474: Number of perfect matchings in graph P_{12} X P_{n}.

The programs for A028474, there is no canonical definition to state claims against.
-/

/-! ## A028474.P17379462599713564206

`A189006(eq[12, A002262(n)])`
-/

namespace A028474.P17379462599713564206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028474.P17379462599713564206

/-! ## A028474.P13622621999898457906

`A189006(eq[12, log2(A059268(n))])`
-/

namespace A028474.P13622621999898457906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A028474.P13622621999898457906

/-! ## A028474.P5306947217226173308

`A187596(eq[12, A025581(n)])`
-/

namespace A028474.P5306947217226173308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028474.P5306947217226173308

/-! ## A028474.P9065565343127591131

`A189006(eq[12, A025581(n)])`
-/

namespace A028474.P9065565343127591131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028474.P9065565343127591131

/-! ## A028474.P1675416736850120408

`A099390(eq[11, A004736(n+1)])`
-/

namespace A028474.P1675416736850120408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028474.P1675416736850120408

/-!
# A028475: Total number of Hamiltonian cycles avoiding the root-edge in rooted cubic bipartite planar maps with 2n nodes.

The programs for A028475, there is no canonical definition to state claims against.
-/

/-! ## A028475.P458385231418224868

`A116456(n+1)/2`
-/

namespace A028475.P458385231418224868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116456 (n + 1) : ℚ) / 2

end

end A028475.P458385231418224868

/-! ## A028475.P7019551251913685030

`Δ[∑[A116456(n)]/2]`
-/

namespace A028475.P7019551251913685030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116456 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028475.P7019551251913685030

/-! ## A028475.P8557763599202734552

`record[A116456(A123108(n))/2]`
-/

namespace A028475.P8557763599202734552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116456 (A123108 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028475.P8557763599202734552

/-! ## A028475.P17417287111107265925

`record[ratio[A116456(A320010(n+1))]]`
-/

namespace A028475.P17417287111107265925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116456 (A320010 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028475.P17417287111107265925

/-! ## A028475.P6768100432555276499

`∏[ratio[A116456(n)]-A000007(n)]`
-/

namespace A028475.P6768100432555276499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116456 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) - (A000007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028475.P6768100432555276499

/-!
# A028476: Greatest k such that phi(k) = phi(n), where phi is Euler's totient function.

The programs for A028476, there is no canonical definition to state claims against.
-/

/-! ## A028476.P10736461481480645227

`A057635(Δ[A002088(n)])`
-/

namespace A028476.P10736461481480645227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (f1 (n + 1) - f1 n).toNat

end

end A028476.P10736461481480645227

/-! ## A028476.P7149634495701419498

`A057635(Δ[A005728(n)])`
-/

namespace A028476.P7149634495701419498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (f1 (n + 1) - f1 n).toNat

end

end A028476.P7149634495701419498

/-! ## A028476.P8453945108939490908

`A319048(Δ[A002088(n)])`
-/

namespace A028476.P8453945108939490908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (f1 (n + 1) - f1 n).toNat

end

end A028476.P8453945108939490908

/-! ## A028476.P5039874788999284468

`A319048(Δ[A005728(n)])`
-/

namespace A028476.P5039874788999284468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (f1 (n + 1) - f1 n).toNat

end

end A028476.P5039874788999284468

/-! ## A028476.P574252194589964169

`A057635(A000010(n+1))`
-/

namespace A028476.P574252194589964169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A000010 (n + 1)).toNat

end

end A028476.P574252194589964169

/-! ## A028476.P2237087815553180578

`A057635(A109606(n+1)+1)`
-/

namespace A028476.P2237087815553180578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A109606 (n + 1) + 1).toNat

end

end A028476.P2237087815553180578

/-! ## A028476.P2198542605246108594

`A319048(A109606(n+1)+1)`
-/

namespace A028476.P2198542605246108594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A109606 (n + 1) + 1).toNat

end

end A028476.P2198542605246108594

/-! ## A028476.P16281602005980230829

`A319048(A039649(n+1)-1)`
-/

namespace A028476.P16281602005980230829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A039649 (n + 1) - 1).toNat

end

end A028476.P16281602005980230829

/-! ## A028476.P15458864946757653150

`A066900(A000010(2*n+1-n))`
-/

namespace A028476.P15458864946757653150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066900 (A000010 (2 * n + 1 - n)).toNat

end

end A028476.P15458864946757653150

/-! ## A028476.P4467933293360614382

`A057635(A002088(n+1)-A002088(n))`
-/

namespace A028476.P4467933293360614382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A002088 (n + 1) - A002088 n).toNat

end

end A028476.P4467933293360614382

/-! ## A028476.P17273215434203591655

`A319048(A002088(n+1)-A002088(n))`
-/

namespace A028476.P17273215434203591655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A002088 (n + 1) - A002088 n).toNat

end

end A028476.P17273215434203591655

/-! ## A028476.P8442487495275311980

`A057635(A007614(A064275(n+1)))`
-/

namespace A028476.P8442487495275311980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A007614 (A064275 (n + 1)).toNat).toNat

end

end A028476.P8442487495275311980

/-! ## A028476.P3097011679019567133

`A262603(A015126(n+1))`
-/

namespace A028476.P3097011679019567133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262603 (A015126 (n + 1)).toNat

end

end A028476.P3097011679019567133

/-! ## A028476.P8439284918193982811

`A262603(A049283(A000010(A262599(n+1))))`
-/

namespace A028476.P8439284918193982811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262603 (A049283 (A000010 (A262599 (n + 1)).toNat).toNat).toNat

end

end A028476.P8439284918193982811

/-! ## A028476.P5047130638377052420

`A262603(A049283(A000010(A262603(n+1))))`
-/

namespace A028476.P5047130638377052420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262603 (A049283 (A000010 (A262603 (n + 1)).toNat).toNat).toNat

end

end A028476.P5047130638377052420

/-! ## A028476.P300550496724498847

`A319048(A000010((n+1)²)/(n+1))`
-/

namespace A028476.P300550496724498847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (SequenceMachineLib.roundAway ((A000010 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A028476.P300550496724498847

/-!
# A028477: Number of perfect matchings in graph C_{6} X P_{n}.

The programs for A028477, the canonical program `A028477.P2901389004330069939` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028477 has offset 0).

The definition of A028477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028477.P2901389004330069939

`A000045(n+1)*A001582(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028477

/-- `A000045(n+1)*A001582(n)` -/
def P2901389004330069939.Spec : Prop :=
  ∀ n, P2901389004330069939.a n = A028477 n

theorem P2901389004330069939.correct : P2901389004330069939.Spec := by
  intro n
  simp only [A028477]

end A028477

/-! ## A028477.P10979900508896124166

`∑[A001333(n)]*Δ[A001654(n)]`
-/

namespace A028477.P10979900508896124166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A028477.P10979900508896124166

namespace A028477

/-- `∑[A001333(n)]*Δ[A001654(n)]` -/
def P10979900508896124166.Spec : Prop :=
  ∀ n, P10979900508896124166.a n = A028477 n

end A028477

/-! ## A028477.P2529919280762856122

`∑[A001333(n)]*A007598(n+1)`
-/

namespace A028477.P2529919280762856122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007598 (n + 1)

end

end A028477.P2529919280762856122

namespace A028477

/-- `∑[A001333(n)]*A007598(n+1)` -/
def P2529919280762856122.Spec : Prop :=
  ∀ n, P2529919280762856122.a n = A028477 n

end A028477

/-! ## A028477.P11244907210619921729

`A000129(n+1)*A007598(n+1)`
-/

namespace A028477.P11244907210619921729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A007598 (n + 1)

end

end A028477.P11244907210619921729

namespace A028477

/-- `A000129(n+1)*A007598(n+1)` -/
def P11244907210619921729.Spec : Prop :=
  ∀ n, P11244907210619921729.a n = A028477 n

end A028477

/-! ## A028477.P5427628984472969358

`A000129(n+1)*A006498(2*n)`
-/

namespace A028477.P5427628984472969358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A006498 (2 * n)

end

end A028477.P5427628984472969358

namespace A028477

/-- `A000129(n+1)*A006498(2*n)` -/
def P5427628984472969358.Spec : Prop :=
  ∀ n, P5427628984472969358.a n = A028477 n

end A028477

/-! ## A028477.P11806873165024084550

`A000045(n+1)²*A000129(n+1)`
-/

namespace A028477.P11806873165024084550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * A000129 (n + 1)

end

end A028477.P11806873165024084550

namespace A028477

/-- `A000045(n+1)²*A000129(n+1)` -/
def P11806873165024084550.Spec : Prop :=
  ∀ n, P11806873165024084550.a n = A028477 n

end A028477

/-! ## A028477.P14305836379626989898

`A000045(n+1)²*A215928(n+1)`
-/

namespace A028477.P14305836379626989898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * A215928 (n + 1)

end

end A028477.P14305836379626989898

namespace A028477

/-- `A000045(n+1)²*A215928(n+1)` -/
def P14305836379626989898.Spec : Prop :=
  ∀ n, P14305836379626989898.a n = A028477 n

end A028477

/-! ## A028477.P11039104656232704450

`A324969(n+2)²*A215928(n+1)`
-/

namespace A028477.P11039104656232704450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) ^ 2 * A215928 (n + 1)

end

end A028477.P11039104656232704450

namespace A028477

/-- `A324969(n+2)²*A215928(n+1)` -/
def P11039104656232704450.Spec : Prop :=
  ∀ n, P11039104656232704450.a n = A028477 n

end A028477

/-! ## A028477.P17857252292695742354

`A000129(n+1)*A074677(2*n+1)`
-/

namespace A028477.P17857252292695742354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A074677 (2 * n + 1)

end

end A028477.P17857252292695742354

namespace A028477

/-- `A000129(n+1)*A074677(2*n+1)` -/
def P17857252292695742354.Spec : Prop :=
  ∀ n, P17857252292695742354.a n = A028477 n

end A028477

/-! ## A028477.P4635998873811201992

`A000129(n+1)*A111569(2*n+1)`
-/

namespace A028477.P4635998873811201992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A111569 (2 * n + 1)

end

end A028477.P4635998873811201992

namespace A028477

/-- `A000129(n+1)*A111569(2*n+1)` -/
def P4635998873811201992.Spec : Prop :=
  ∀ n, P4635998873811201992.a n = A028477 n

end A028477

/-! ## A028477.P5915948229745241915

`A000045(n+1)²*sqrt(A079291(n+1))`
-/

namespace A028477.P5915948229745241915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) ^ 2 : ℝ) * Real.sqrt (A079291 (n + 1) : ℝ)

end

end A028477.P5915948229745241915

namespace A028477

/-- `A000045(n+1)²*sqrt(A079291(n+1))` -/
def P5915948229745241915.Spec : Prop :=
  ∀ n, P5915948229745241915.a n = (A028477 n : ℝ)

end A028477

/-! ## A028477.P589422299616872016

`A000045(n+1)²*Δ[A171842(n+1)]`
-/

namespace A028477.P589422299616872016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A028477.P589422299616872016

namespace A028477

/-- `A000045(n+1)²*Δ[A171842(n+1)]` -/
def P589422299616872016.Spec : Prop :=
  ∀ n, P589422299616872016.a n = A028477 n

end A028477

/-! ## A028477.P11909739155744194650

`Δ[A000071(n+2)]²*A000129(n+1)`
-/

namespace A028477.P11909739155744194650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000129 (n + 1)

end

end A028477.P11909739155744194650

namespace A028477

/-- `Δ[A000071(n+2)]²*A000129(n+1)` -/
def P11909739155744194650.Spec : Prop :=
  ∀ n, P11909739155744194650.a n = A028477 n

end A028477

/-! ## A028477.P14051704960973818891

`A000045(n+1)²*A155046(2*(n+1))`
-/

namespace A028477.P14051704960973818891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * A155046 (2 * (n + 1))

end

end A028477.P14051704960973818891

namespace A028477

/-- `A000045(n+1)²*A155046(2*(n+1))` -/
def P14051704960973818891.Spec : Prop :=
  ∀ n, P14051704960973818891.a n = A028477 n

end A028477

/-! ## A028477.P17885511930485961248

`A001582(n)/A000129(n+1)*A001582(n)`
-/

namespace A028477.P17885511930485961248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001582 n : ℚ) / (A000129 (n + 1) : ℚ) * (A001582 n : ℚ)

end

end A028477.P17885511930485961248

namespace A028477

/-- `A001582(n)/A000129(n+1)*A001582(n)` -/
def P17885511930485961248.Spec : Prop :=
  ∀ n, P17885511930485961248.a n = (A028477 n : ℚ)

end A028477

/-! ## A028477.P260894734383607249

`(A001654(n+1)-A001654(n))*A000129(n+1)`
-/

namespace A028477.P260894734383607249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001654 (n + 1) - A001654 n) * A000129 (n + 1)

end

end A028477.P260894734383607249

namespace A028477

/-- `(A001654(n+1)-A001654(n))*A000129(n+1)` -/
def P260894734383607249.Spec : Prop :=
  ∀ n, P260894734383607249.a n = A028477 n

end A028477

/-!
# A028478: Number of perfect matchings in graph C_{7} X P_{2n}.

The programs for A028478, there is no canonical definition to state claims against.
-/

/-! ## A028478.P9859847143524057143

`A241908(n)/A256044(n)`
-/

namespace A028478.P9859847143524057143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241908 n : ℚ) / (A256044 n : ℚ)

end

end A028478.P9859847143524057143

/-! ## A028478.P7745174983311579552

`A241908(n)/A028468(2*n)`
-/

namespace A028478.P7745174983311579552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241908 n : ℚ) / (A028468 (2 * n) : ℚ)

end

end A028478.P7745174983311579552

/-!
# A028479: Number of perfect matchings in graph C_{8} X P_{n}.

The programs for A028479, there is no canonical definition to state claims against.
-/

/-! ## A028479.P784433486578721654

`A252463(A240488(3*n+4)²)`
-/

namespace A028479.P784433486578721654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A240488 (3 * n + 4) ^ 2).toNat

end

end A028479.P784433486578721654

/-!
# A028480: Number of perfect matchings in graph C_{9} X P_{2n}.

The programs for A028480, there is no canonical definition to state claims against.
-/

/-! ## A028480.P11569232711599586586

`A340476(A026287(n+1))`
-/

namespace A028480.P11569232711599586586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340476 (A026287 (n + 1)).toNat

end

end A028480.P11569232711599586586

/-!
# A028485: Number of perfect matchings in graph C_{14} X P_{n}.

The programs for A028485, there is no canonical definition to state claims against.
-/

/-! ## A028485.P7393930550577084422

`A028468(n)²*A000129(n+1)`
-/

namespace A028485.P7393930550577084422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028468 n ^ 2 * A000129 (n + 1)

end

end A028485.P7393930550577084422

/-!
# A028488: Numbers k such that the summatory Liouville function L(k) (A002819) is zero.

The programs for A028488, there is no canonical definition to state claims against.
-/

/-! ## A028488.P6113507639626442493

`eq[floor(acot(n)), A002819(n)]`
-/

namespace A028488.P6113507639626442493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028488.P6113507639626442493

/-! ## A028488.P10024534270328037982

`record[(2*(n+1))%A026422(n+3)]`
-/

namespace A028488.P10024534270328037982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A026422 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028488.P10024534270328037982

/-! ## A028488.P2187815448640446757

`eq[0, A002819(A028310(n))]`
-/

namespace A028488.P2187815448640446757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028488.P2187815448640446757

/-! ## A028488.P18354599120341962676

`eq[A000007(n), A002819(n)]`
-/

namespace A028488.P18354599120341962676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028488.P18354599120341962676

/-! ## A028488.P5898949363853509885

`eq[exp(A002819(n)), A001221(n+1)]`
-/

namespace A028488.P5898949363853509885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A002819 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A028488.P5898949363853509885

/-!
# A028491: Numbers k such that (3^k - 1)/2 is prime.

The programs for A028491, there is no canonical definition to state claims against.
-/

/-! ## A028491.P10625632806937777222

`A090747(n+1)+1`
-/

namespace A028491.P10625632806937777222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090747 (n + 1) + 1

end

end A028491.P10625632806937777222

/-! ## A028491.P3542239296694680030

`or(1, A090747(1-(n-2*n)))`
-/

namespace A028491.P3542239296694680030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A090747 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A028491.P3542239296694680030

/-! ## A028491.P13352658043409045388

`xor(1, A090747(A052938(2*n)))`
-/

namespace A028491.P13352658043409045388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A090747 (A052938 (2 * n)).toNat)

end

end A028491.P13352658043409045388

/-! ## A028491.P4120240586137593741

`xor(1, A090747(A158416(2*n)))`
-/

namespace A028491.P4120240586137593741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A090747 (A158416 (2 * n)).toNat)

end

end A028491.P4120240586137593741

/-! ## A028491.P2915366702078978575

`p?[A096723(n+3)]`
-/

namespace A028491.P2915366702078978575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096723 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028491.P2915366702078978575

/-!
# A028492: Number of similarity classes of triangles which can be drawn using the lattice points in an n X n grid for vertices.

The programs for A028492, there is no canonical definition to state claims against.
-/

/-! ## A028492.P15813731832454905206

`C(∑[n]+1, 2)-A297155(A003087(n))`
-/

namespace A028492.P15813731832454905206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 : ℤ) - A297155 (A003087 n).toNat

end

end A028492.P15813731832454905206

/-! ## A028492.P2969680850069978841

`A002817(n)-A037808(A000774(n))`
-/

namespace A028492.P2969680850069978841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A037808 (A000774 n).toNat

end

end A028492.P2969680850069978841

/-! ## A028492.P14570931826870721962

`A002817(n)-A037808(A007840(n))`
-/

namespace A028492.P14570931826870721962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A037808 (A007840 n).toNat

end

end A028492.P14570931826870721962

/-!
# A028493: a(0) = 16, a(n+1) = 3a(n) - (6-n)^2.

The programs for A028493, the canonical program `A028493.P14412996590430151676` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028493 has offset 0).

The definition of A028493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028493.P2220711364728450308

`(3^n+(5-n)*(6-n)+1)/2`
-/

namespace A028493.P2220711364728450308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + (5 - (n : ℤ)) * (6 - (n : ℤ)) + 1 : ℚ) / 2

end

end A028493.P2220711364728450308

namespace A028493

/-- `(3^n+(5-n)*(6-n)+1)/2` -/
def P2220711364728450308.Spec : Prop :=
  ∀ n, P2220711364728450308.a n = (A028493 n : ℚ)

theorem P2220711364728450308.correct : P2220711364728450308.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A028493, Nat.add_sub_cancel, A028493.P2220711364728450308.a, A028493.P14412996590430151676.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A028493, Nat.add_sub_cancel, A028493.P2220711364728450308.a, A028493.P14412996590430151676.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028493

/-! ## A028493.P14412996590430151676

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=16, a(1)=12, a(2)=11, a(3)=17`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028493

/-- `6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` -/
def P14412996590430151676.Spec : Prop :=
  ∀ n, P14412996590430151676.a n = A028493 n

theorem P14412996590430151676.correct : P14412996590430151676.Spec := by
  intro n
  simp only [A028493]

end A028493

/-! ## A028493.P16213814413719866924

`3*a(n-1)-(7-n)²` with `a(0)=16`
-/

namespace A028493.P16213814413719866924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  3 * a (n - 1) - (7 - (n : ℤ)) ^ 2

end

end A028493.P16213814413719866924

namespace A028493

/-- `3*a(n-1)-(7-n)²` -/
def P16213814413719866924.Spec : Prop :=
  ∀ n, P16213814413719866924.a n = A028493 n

end A028493

/-! ## A028493.P15847911584632665304

`A000124(n+5)-(n-A003462(n))-10*n`
-/

namespace A028493.P15847911584632665304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 5) - ((n : ℤ) - A003462 n) - (10 * n : ℤ)

end

end A028493.P15847911584632665304

namespace A028493

/-- `A000124(n+5)-(n-A003462(n))-10*n` -/
def P15847911584632665304.Spec : Prop :=
  ∀ n, P15847911584632665304.a n = A028493 n

end A028493

/-! ## A028493.P6550619090792409412

`A124302(n+1)-10*n+A000124(n+4)+4`
-/

namespace A028493.P6550619090792409412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) - (10 * n : ℤ) + (A000124 (n + 4) + 4)

end

end A028493.P6550619090792409412

namespace A028493

/-- `A124302(n+1)-10*n+A000124(n+4)+4` -/
def P6550619090792409412.Spec : Prop :=
  ∀ n, P6550619090792409412.a n = A028493 n

end A028493

/-! ## A028493.P4847270409872266113

`eq[7, A131818(n+1)]+A115098(n)-A017473(n)`
-/

namespace A028493.P4847270409872266113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A115098 n - A017473 n)

end

end A028493.P4847270409872266113

namespace A028493

/-- `eq[7, A131818(n+1)]+A115098(n)-A017473(n)` -/
def P4847270409872266113.Spec : Prop :=
  ∀ n, P4847270409872266113.a n = A028493 n

end A028493

/-!
# A028494: a(n) = -(1/2)*(n+2)*(n^2 - 6*n - 1).

The programs for A028494, the canonical program `A028494.P14934978941366402405` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028494 has offset 0).

The definition of A028494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(1/2)*(n+2)*(n²-6*n-1)` (program `A028494.P9048879933591178926`, by `A028494.P9048879933591178926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028494.P9048879933591178926

`-(1/2)*(n+2)*(n²-6*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028494.P9048879933591178926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-((1 : ℚ) / 2)) * (n + 2 : ℚ) * ((n ^ 2 : ℤ) - (6 * n : ℤ) - 1 : ℚ)

end

end A028494.P9048879933591178926

namespace A028494

/-- `-(1/2)*(n+2)*(n²-6*n-1)` -/
def P9048879933591178926.Spec : Prop :=
  ∀ n, P9048879933591178926.a n = (A028494 n : ℚ)

theorem P9048879933591178926.correct : P9048879933591178926.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A028494, Nat.add_sub_cancel, A028494.P9048879933591178926.a, A028494.P14934978941366402405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A028494, Nat.add_sub_cancel, A028494.P9048879933591178926.a, A028494.P14934978941366402405.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028494

/-! ## A028494.P14934978941366402405

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=18, a(3)=25`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028494

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14934978941366402405.Spec : Prop :=
  ∀ n, P14934978941366402405.a n = A028494 n

theorem P14934978941366402405.correct : P14934978941366402405.Spec := by
  intro n
  simp only [A028494]

end A028494

/-! ## A028494.P4946232257904019044

`∑[∑[a(n-1)-3]]` with `a(0)=1, a(1)=7, a(2)=1`
-/

namespace A028494.P4946232257904019044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028494.P4946232257904019044

namespace A028494

/-- `∑[∑[a(n-1)-3]]` -/
def P4946232257904019044.Spec : Prop :=
  ∀ n, P4946232257904019044.a n = A028494 n

end A028494

/-! ## A028494.P1518213029835356745

`8*n-(n-3)*C(n, 2)+1`
-/

namespace A028494.P1518213029835356745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - ((n : ℤ) - 3) * (Nat.choose n 2 : ℤ) + 1

end

end A028494.P1518213029835356745

namespace A028494

/-- `8*n-(n-3)*C(n, 2)+1` -/
def P1518213029835356745.Spec : Prop :=
  ∀ n, P1518213029835356745.a n = A028494 n

end A028494

/-! ## A028494.P6868349291434766318

`8*n-((n-3)*C(n, 2)-1)`
-/

namespace A028494.P6868349291434766318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - (((n : ℤ) - 3) * (Nat.choose n 2 : ℤ) - 1)

end

end A028494.P6868349291434766318

namespace A028494

/-- `8*n-((n-3)*C(n, 2)-1)` -/
def P6868349291434766318.Spec : Prop :=
  ∀ n, P6868349291434766318.a n = A028494 n

end A028494

/-! ## A028494.P7037625525836443415

`3*(n+1)²+n-2-A006002(n)`
-/

namespace A028494.P7037625525836443415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) + ((n : ℤ) - 2) - A006002 n

end

end A028494.P7037625525836443415

namespace A028494

/-- `3*(n+1)²+n-2-A006002(n)` -/
def P7037625525836443415.Spec : Prop :=
  ∀ n, P7037625525836443415.a n = A028494 n

end A028494

/-! ## A028494.P3649968602871191029

`A131874(n)-A027480(n)`
-/

namespace A028494.P3649968602871191029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131874 n - A027480 n

end

end A028494.P3649968602871191029

namespace A028494

/-- `A131874(n)-A027480(n)` -/
def P3649968602871191029.Spec : Prop :=
  ∀ n, P3649968602871191029.a n = A028494 n

end A028494

/-! ## A028494.P13775257396345169208

`A017173(n)-A162607(n)`
-/

namespace A028494.P13775257396345169208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - A162607 n

end

end A028494.P13775257396345169208

namespace A028494

/-- `A017173(n)-A162607(n)` -/
def P13775257396345169208.Spec : Prop :=
  ∀ n, P13775257396345169208.a n = A028494 n

end A028494

/-! ## A028494.P15587490371099488967

`A059993(n)-A135503(n)`
-/

namespace A028494.P15587490371099488967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n - A135503 n

end

end A028494.P15587490371099488967

namespace A028494

/-- `A059993(n)-A135503(n)` -/
def P15587490371099488967.Spec : Prop :=
  ∀ n, P15587490371099488967.a n = A028494 n

end A028494

/-! ## A028494.P1006634380219755731

`A090288(n)-A158842(n)`
-/

namespace A028494.P1006634380219755731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - A158842 n

end

end A028494.P1006634380219755731

namespace A028494

/-- `A090288(n)-A158842(n)` -/
def P1006634380219755731.Spec : Prop :=
  ∀ n, P1006634380219755731.a n = A028494 n

end A028494

/-! ## A028494.P11463081065817933119

`A161532(n)-A229183(n)`
-/

namespace A028494.P11463081065817933119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n - A229183 n

end

end A028494.P11463081065817933119

namespace A028494

/-- `A161532(n)-A229183(n)` -/
def P11463081065817933119.Spec : Prop :=
  ∀ n, P11463081065817933119.a n = A028494 n

end A028494

/-! ## A028494.P11817733210282131011

`A198017(n)-A256857(n)`
-/

namespace A028494.P11817733210282131011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198017 n - A256857 n

end

end A028494.P11817733210282131011

namespace A028494

/-- `A198017(n)-A256857(n)` -/
def P11817733210282131011.Spec : Prop :=
  ∀ n, P11817733210282131011.a n = A028494 n

end A028494

/-! ## A028494.P17796503486930376482

`A279895(n)+A110427(n+1)`
-/

namespace A028494.P17796503486930376482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + A110427 (n + 1)

end

end A028494.P17796503486930376482

namespace A028494

/-- `A279895(n)+A110427(n+1)` -/
def P17796503486930376482.Spec : Prop :=
  ∀ n, P17796503486930376482.a n = A028494 n

end A028494

/-! ## A028494.P1215015434087631935

`A082109(n)-A077414(n+1)`
-/

namespace A028494.P1215015434087631935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n - A077414 (n + 1)

end

end A028494.P1215015434087631935

namespace A028494

/-- `A082109(n)-A077414(n+1)` -/
def P1215015434087631935.Spec : Prop :=
  ∀ n, P1215015434087631935.a n = A028494 n

end A028494

/-! ## A028494.P14764328803499916714

`A166151(n+1)-A064808(n)`
-/

namespace A028494.P14764328803499916714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166151 (n + 1) - A064808 n

end

end A028494.P14764328803499916714

namespace A028494

/-- `A166151(n+1)-A064808(n)` -/
def P14764328803499916714.Spec : Prop :=
  ∀ n, P14764328803499916714.a n = A028494 n

end A028494

/-! ## A028494.P651346092569463394

`A133694(n+1)-A341768(n)`
-/

namespace A028494.P651346092569463394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133694 (n + 1) - A341768 n

end

end A028494.P651346092569463394

namespace A028494

/-- `A133694(n+1)-A341768(n)` -/
def P651346092569463394.Spec : Prop :=
  ∀ n, P651346092569463394.a n = A028494 n

end A028494

/-! ## A028494.P17231236427868688593

`∑[A004767(n)-A143208(n+1)]`
-/

namespace A028494.P17231236427868688593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A143208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028494.P17231236427868688593

namespace A028494

/-- `∑[A004767(n)-A143208(n+1)]` -/
def P17231236427868688593.Spec : Prop :=
  ∀ n, P17231236427868688593.a n = A028494 n

end A028494

/-! ## A028494.P486658837235908454

`A117560(n+2)-A100109(n+1)`
-/

namespace A028494.P486658837235908454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117560 (n + 2) - A100109 (n + 1)

end

end A028494.P486658837235908454

namespace A028494

/-- `A117560(n+2)-A100109(n+1)` -/
def P486658837235908454.Spec : Prop :=
  ∀ n, P486658837235908454.a n = A028494 n

end A028494

/-! ## A028494.P8476135095270807659

`A144390(n+1)-A212343(n+2)`
-/

namespace A028494.P8476135095270807659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (n + 1) - A212343 (n + 2)

end

end A028494.P8476135095270807659

namespace A028494

/-- `A144390(n+1)-A212343(n+2)` -/
def P8476135095270807659.Spec : Prop :=
  ∀ n, P8476135095270807659.a n = A028494 n

end A028494

/-! ## A028494.P4813115176222156227

`∑[A065475(n+1)²-A000566(n)]`
-/

namespace A028494.P4813115176222156227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) ^ 2 - A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028494.P4813115176222156227

namespace A028494

/-- `∑[A065475(n+1)²-A000566(n)]` -/
def P4813115176222156227.Spec : Prop :=
  ∀ n, P4813115176222156227.a n = A028494 n

end A028494

/-!
# A028495: Expansion of g.f. (1-x^2)/(1-x-2*x^2+x^3).

The programs for A028495, the canonical program `A028495.P14445890505411110476` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028495 has offset 0).

The definition of A028495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-2x^2+x^3))` (program `A028495.P14445890505411110476`, by `A028495.P14445890505411110476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028495.P14445890505411110476

`ogf((1-x^2)/(1-x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028495

/-- `ogf((1-x^2)/(1-x-2x^2+x^3))` -/
def P14445890505411110476.Spec : Prop :=
  ∀ n, P14445890505411110476.a n = A028495 n

theorem P14445890505411110476.correct : P14445890505411110476.Spec := by
  intro n
  simp only [A028495]

end A028495

/-! ## A028495.P17317205473415381950

`5*a(n-2)-6*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=10`
-/

namespace A028495.P17317205473415381950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 6, 10] fun n a =>
  5 * a (n - 2) - 6 * a (n - 4) + a (n - 6)

end

end A028495.P17317205473415381950

namespace A028495

/-- `5*a(n-2)-6*a(n-4)+a(n-6)` -/
def P17317205473415381950.Spec : Prop :=
  ∀ n, P17317205473415381950.a n = A028495 n

end A028495

/-! ## A028495.P8412351360927402392

`A006053(n+2)-A006053(n)`
-/

namespace A028495.P8412351360927402392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 2) - A006053 n

end

end A028495.P8412351360927402392

namespace A028495

/-- `A006053(n+2)-A006053(n)` -/
def P8412351360927402392.Spec : Prop :=
  ∀ n, P8412351360927402392.a n = A028495 n

end A028495

/-! ## A028495.P3330671073505573480

`2*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028495.P3330671073505573480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 2) + (a (n - 1) - a (n - 3))

end

end A028495.P3330671073505573480

namespace A028495

/-- `2*a(n-2)+a(n-1)-a(n-3)` -/
def P3330671073505573480.Spec : Prop :=
  ∀ n, P3330671073505573480.a n = A028495 n

end A028495

/-! ## A028495.P13784140366943290989

`a(n-1)-(a(n-3)-2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028495.P13784140366943290989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - 2 * a (n - 2))

end

end A028495.P13784140366943290989

namespace A028495

/-- `a(n-1)-(a(n-3)-2*a(n-2))` -/
def P13784140366943290989.Spec : Prop :=
  ∀ n, P13784140366943290989.a n = A028495 n

end A028495

/-! ## A028495.P3101763419962593655

`a(n-1)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028495.P3101763419962593655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A028495.P3101763419962593655

namespace A028495

/-- `a(n-1)+a(n-2)+a(n-2)-a(n-3)` -/
def P3101763419962593655.Spec : Prop :=
  ∀ n, P3101763419962593655.a n = A028495 n

end A028495

/-! ## A028495.P8869984971541922559

`a(n-1)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028495.P8869984971541922559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A028495.P8869984971541922559

namespace A028495

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-2))` -/
def P8869984971541922559.Spec : Prop :=
  ∀ n, P8869984971541922559.a n = A028495 n

end A028495

/-! ## A028495.P6813351645782005501

`A187067(Δ[n²])`
-/

namespace A028495.P6813351645782005501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A028495.P6813351645782005501

namespace A028495

/-- `A187067(Δ[n²])` -/
def P6813351645782005501.Spec : Prop :=
  ∀ n, P6813351645782005501.a n = A028495 n

end A028495

/-! ## A028495.P1222846285991054552

`∑[A006053(n)]+1`
-/

namespace A028495.P1222846285991054552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A028495.P1222846285991054552

namespace A028495

/-- `∑[A006053(n)]+1` -/
def P1222846285991054552.Spec : Prop :=
  ∀ n, P1222846285991054552.a n = A028495 n

end A028495

/-! ## A028495.P15687116526428285657

`∑[∑[A096976(n)]]-n`
-/

namespace A028495.P15687116526428285657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A028495.P15687116526428285657

namespace A028495

/-- `∑[∑[A096976(n)]]-n` -/
def P15687116526428285657.Spec : Prop :=
  ∀ n, P15687116526428285657.a n = A028495 n

end A028495

/-! ## A028495.P11635318636066098332

`∑[A265755(2*n)]+1`
-/

namespace A028495.P11635318636066098332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A028495.P11635318636066098332

namespace A028495

/-- `∑[A265755(2*n)]+1` -/
def P11635318636066098332.Spec : Prop :=
  ∀ n, P11635318636066098332.a n = A028495 n

end A028495

/-! ## A028495.P4461103800455565461

`∑[A187065(2*n+1)]+1`
-/

namespace A028495.P4461103800455565461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A028495.P4461103800455565461

namespace A028495

/-- `∑[A187065(2*n+1)]+1` -/
def P4461103800455565461.Spec : Prop :=
  ∀ n, P4461103800455565461.a n = A028495 n

end A028495

/-! ## A028495.P10185206043105447298

`A265755(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A028495.P10185206043105447298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265755 (n + n) + a (n - 1)

end

end A028495.P10185206043105447298

namespace A028495

/-- `A265755(n+n)+a(n-1)` -/
def P10185206043105447298.Spec : Prop :=
  ∀ n, P10185206043105447298.a n = A028495 n

end A028495

/-! ## A028495.P17396116289923207857

`A096976(n)+A006053(n+1)`
-/

namespace A028495.P17396116289923207857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 n + A006053 (n + 1)

end

end A028495.P17396116289923207857

namespace A028495

/-- `A096976(n)+A006053(n+1)` -/
def P17396116289923207857.Spec : Prop :=
  ∀ n, P17396116289923207857.a n = A028495 n

end A028495

/-! ## A028495.P7838561242200827503

`A096976(n+1)+A052547(n)`
-/

namespace A028495.P7838561242200827503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 1) + A052547 n

end

end A028495.P7838561242200827503

namespace A028495

/-- `A096976(n+1)+A052547(n)` -/
def P7838561242200827503.Spec : Prop :=
  ∀ n, P7838561242200827503.a n = A028495 n

end A028495

/-! ## A028495.P4124681174838681501

`A187065(2*n)+A052547(n)`
-/

namespace A028495.P4124681174838681501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (2 * n) + A052547 n

end

end A028495.P4124681174838681501

namespace A028495

/-- `A187065(2*n)+A052547(n)` -/
def P4124681174838681501.Spec : Prop :=
  ∀ n, P4124681174838681501.a n = A028495 n

end A028495

/-! ## A028495.P12780890663432437861

`A187067(2*n)+A096976(n)`
-/

namespace A028495.P12780890663432437861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * n) + A096976 n

end

end A028495.P12780890663432437861

namespace A028495

/-- `A187067(2*n)+A096976(n)` -/
def P12780890663432437861.Spec : Prop :=
  ∀ n, P12780890663432437861.a n = A028495 n

end A028495

/-! ## A028495.P290502278639404031

`A096976(n)+∑[A096976(n+1)]`
-/

namespace A028495.P290502278639404031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028495.P290502278639404031

namespace A028495

/-- `A096976(n)+∑[A096976(n+1)]` -/
def P290502278639404031.Spec : Prop :=
  ∀ n, P290502278639404031.a n = A028495 n

end A028495

/-! ## A028495.P8306370043368122455

`A096976(n+1)+A096976(n+2)`
-/

namespace A028495.P8306370043368122455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 1) + A096976 (n + 2)

end

end A028495.P8306370043368122455

namespace A028495

/-- `A096976(n+1)+A096976(n+2)` -/
def P8306370043368122455.Spec : Prop :=
  ∀ n, P8306370043368122455.a n = A028495 n

end A028495

/-! ## A028495.P7475041448518640081

`A265755(2*n+1)+A052547(n)`
-/

namespace A028495.P7475041448518640081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * n + 1) + A052547 n

end

end A028495.P7475041448518640081

namespace A028495

/-- `A265755(2*n+1)+A052547(n)` -/
def P7475041448518640081.Spec : Prop :=
  ∀ n, P7475041448518640081.a n = A028495 n

end A028495

/-!
# A028498: Let [n] = {0,...,n-1}; a(n) is number of functions f:[n] -> [n] for which there exists an injection g:[n] -> [n+1] such that for j with 0 <= j < n, either g(j) = f(j) or g(j) = f(j)+1.

The programs for A028498, there is no canonical definition to state claims against.
-/

/-! ## A028498.P9150293756143406332

`A004277(∏[Δ[n²]])-∏[n+1]`
-/

namespace A028498.P9150293756143406332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A028498.P9150293756143406332

