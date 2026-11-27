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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A074500: Difference between n*sqrt(n)+1 and prime(n), rounded to nearest integer.

The programs for A074500, the canonical program `A074500.P17320920647285243035` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074500 has offset 1).

The definition of A074500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074500.P17320920647285243035

`round((n+1)*sqrt(n+1)+1-A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074500

/-- `round((n+1)*sqrt(n+1)+1-A000040(n+1))` -/
def P17320920647285243035.Spec : Prop :=
  ∀ n, P17320920647285243035.a n = A074500 (n + 1)

theorem P17320920647285243035.correct : P17320920647285243035.Spec := by
  intro n
  simp only [A074500, Nat.add_sub_cancel]

end A074500

/-! ## A074500.P5724242199096576058

`round(sqrt((n+1)^3))-A006093(n+1)`
-/

namespace A074500.P5724242199096576058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) - A006093 (n + 1)

end

end A074500.P5724242199096576058

namespace A074500

/-- `round(sqrt((n+1)^3))-A006093(n+1)` -/
def P5724242199096576058.Spec : Prop :=
  ∀ n, P5724242199096576058.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P3760713724440342041

`round(sqrt((n+1)^3))+1-A000040(n+1)`
-/

namespace A074500.P3760713724440342041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) + 1 - A000040 (n + 1)

end

end A074500.P3760713724440342041

namespace A074500

/-- `round(sqrt((n+1)^3))+1-A000040(n+1)` -/
def P3760713724440342041.Spec : Prop :=
  ∀ n, P3760713724440342041.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P8515983489932205406

`A002821(n+1)+1-A000040(n+1)`
-/

namespace A074500.P8515983489932205406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) + (1 - A000040 (n + 1))

end

end A074500.P8515983489932205406

namespace A074500

/-- `A002821(n+1)+1-A000040(n+1)` -/
def P8515983489932205406.Spec : Prop :=
  ∀ n, P8515983489932205406.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P3243776519558394799

`round(sqrt((n+1)^3))-record[A000010(n+1)]`
-/

namespace A074500.P3243776519558394799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074500.P3243776519558394799

namespace A074500

/-- `round(sqrt((n+1)^3))-record[A000010(n+1)]` -/
def P3243776519558394799.Spec : Prop :=
  ∀ n, P3243776519558394799.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P14125957205803950375

`round(sqrt((n+1)^3))-record[A006530(n+2)]+1`
-/

namespace A074500.P14125957205803950375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A074500.P14125957205803950375

namespace A074500

/-- `round(sqrt((n+1)^3))-record[A006530(n+2)]+1` -/
def P14125957205803950375.Spec : Prop :=
  ∀ n, P14125957205803950375.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P888945954393699397

`A002821(n+1)-A000010(Δ[A007504(n)])`
-/

namespace A074500.P888945954393699397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A074500.P888945954393699397

namespace A074500

/-- `A002821(n+1)-A000010(Δ[A007504(n)])` -/
def P888945954393699397.Spec : Prop :=
  ∀ n, P888945954393699397.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P5811630877289648168

`round((n+1)²/sqrt(n+1))-eq[1, A001222(n+1)]`
-/

namespace A074500.P5811630877289648168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) / Real.sqrt (n + 1 : ℝ)) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A074500.P5811630877289648168

namespace A074500

/-- `round((n+1)²/sqrt(n+1))-eq[1, A001222(n+1)]` -/
def P5811630877289648168.Spec : Prop :=
  ∀ n, P5811630877289648168.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P16893375359388532492

`A002821(n+1)-eq[2, A000005(n+1)]`
-/

namespace A074500.P16893375359388532492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A074500.P16893375359388532492

namespace A074500

/-- `A002821(n+1)-eq[2, A000005(n+1)]` -/
def P16893375359388532492.Spec : Prop :=
  ∀ n, P16893375359388532492.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P7146898254702500250

`A002821(n+1)-record[A002322(n+1)]`
-/

namespace A074500.P7146898254702500250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074500.P7146898254702500250

namespace A074500

/-- `A002821(n+1)-record[A002322(n+1)]` -/
def P7146898254702500250.Spec : Prop :=
  ∀ n, P7146898254702500250.a n = A074500 (n + 1)

end A074500

/-!
# A074501: a(n) = 1^n + 2^n + 5^n.

The programs for A074501, the canonical program `A074501.P455223776824412715` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074501 has offset 0).

The definition of A074501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+5^n` (program `A074501.P455223776824412715`, by `A074501.P455223776824412715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074501.P15534208100897605080

`1+2^n+5^n`
-/

namespace A074501.P15534208100897605080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 5 ^ n

end

end A074501.P15534208100897605080

namespace A074501

/-- `1+2^n+5^n` -/
def P15534208100897605080.Spec : Prop :=
  ∀ n, (P15534208100897605080.a n : ℤ) = A074501 n

theorem P15534208100897605080.correct : P15534208100897605080.Spec := by
  intro n
  simp only [A074501, Nat.add_sub_cancel, A074501.P15534208100897605080.a, A074501.P455223776824412715.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074501

/-! ## A074501.P9236737907343595408

`ogf((3-16x+17x^2)/(1-8x+17x^2-10x^3))`
-/

namespace A074501.P9236737907343595408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -16, 17] [1, -8, 17, -10] n

end

end A074501.P9236737907343595408

namespace A074501

/-- `ogf((3-16x+17x^2)/(1-8x+17x^2-10x^3))` -/
def P9236737907343595408.Spec : Prop :=
  ∀ n, P9236737907343595408.a n = A074501 n

end A074501

/-! ## A074501.P455223776824412715

`1^n+2^n+5^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074501

/-- `1^n+2^n+5^n` -/
def P455223776824412715.Spec : Prop :=
  ∀ n, (P455223776824412715.a n : ℤ) = A074501 n

theorem P455223776824412715.correct : P455223776824412715.Spec := by
  intro n
  simp only [A074501]

end A074501

/-! ## A074501.P15975267685607992933

`7*a(n-1)-10*a(n-2)+4` with `a(0)=3, a(1)=8`
-/

namespace A074501.P15975267685607992933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  7 * a (n - 1) - 10 * a (n - 2) + 4

end

end A074501.P15975267685607992933

namespace A074501

/-- `7*a(n-1)-10*a(n-2)+4` -/
def P15975267685607992933.Spec : Prop :=
  ∀ n, P15975267685607992933.a n = A074501 n

theorem P15975267685607992933.correct : P15975267685607992933.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074501, Nat.add_sub_cancel, A074501.P15975267685607992933.a, A074501.P455223776824412715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074501, Nat.add_sub_cancel, A074501.P15975267685607992933.a, A074501.P455223776824412715.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074501

/-! ## A074501.P14400161874371534586

`∑{#}[2, (#²+1)^n]`
-/

namespace A074501.P14400161874371534586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k ^ 2 + 1) ^ n

end

end A074501.P14400161874371534586

namespace A074501

/-- `∑{#}[2, (#²+1)^n]` -/
def P14400161874371534586.Spec : Prop :=
  ∀ n, (P14400161874371534586.a n : ℤ) = A074501 n

end A074501

/-! ## A074501.P17192229141007902210

`abs(2^n-xor(5^n, -1))`
-/

namespace A074501.P17192229141007902210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - Int.xor (5 ^ n : ℤ) (-1)|

end

end A074501.P17192229141007902210

namespace A074501

/-- `abs(2^n-xor(5^n, -1))` -/
def P17192229141007902210.Spec : Prop :=
  ∀ n, P17192229141007902210.a n = A074501 n

end A074501

/-! ## A074501.P337348559461538163

`∑{d}[-a(n-1), A000041(#)^n]` with `a(0)=4`
-/

namespace A074501.P337348559461538163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 d ^ n

end

end A074501.P337348559461538163

namespace A074501

/-- `∑{d}[-a(n-1), A000041(#)^n]` -/
def P337348559461538163.Spec : Prop :=
  ∀ n, P337348559461538163.a n = A074501 n

end A074501

/-! ## A074501.P11948821312963342960

`Δ[A006127(n)+A003463(n)]`
-/

namespace A074501.P11948821312963342960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074501.P11948821312963342960

namespace A074501

/-- `Δ[A006127(n)+A003463(n)]` -/
def P11948821312963342960.Spec : Prop :=
  ∀ n, P11948821312963342960.a n = A074501 n

end A074501

/-! ## A074501.P686657909481991280

`record[A000351(A025581(n))+A054582(n)+1]`
-/

namespace A074501.P686657909481991280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat + (A054582 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074501.P686657909481991280

namespace A074501

/-- `record[A000351(A025581(n))+A054582(n)+1]` -/
def P686657909481991280.Spec : Prop :=
  ∀ n, P686657909481991280.a n = A074501 n

end A074501

/-! ## A074501.P5244182585298288113

`record[1-(A152572(n)+A152568(n))]`
-/

namespace A074501.P5244182585298288113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A152572 n + A152568 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074501.P5244182585298288113

namespace A074501

/-- `record[1-(A152572(n)+A152568(n))]` -/
def P5244182585298288113.Spec : Prop :=
  ∀ n, P5244182585298288113.a n = A074501 n

end A074501

/-!
# A074502: a(n) = 1^n + 2^n + 6^n.

The programs for A074502, the canonical program `A074502.P12330941856278510367` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074502 has offset 0).

The definition of A074502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+6^n` (program `A074502.P12330941856278510367`, by `A074502.P12330941856278510367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074502.P5387418910683155617

`ogf((3-18x+20x^2)/(1-9x+20x^2-12x^3))`
-/

namespace A074502.P5387418910683155617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -18, 20] [1, -9, 20, -12] n

end

end A074502.P5387418910683155617

namespace A074502

/-- `ogf((3-18x+20x^2)/(1-9x+20x^2-12x^3))` -/
def P5387418910683155617.Spec : Prop :=
  ∀ n, P5387418910683155617.a n = A074502 n

end A074502

/-! ## A074502.P12330941856278510367

`1^n+2^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074502

/-- `1^n+2^n+6^n` -/
def P12330941856278510367.Spec : Prop :=
  ∀ n, (P12330941856278510367.a n : ℤ) = A074502 n

theorem P12330941856278510367.correct : P12330941856278510367.Spec := by
  intro n
  simp only [A074502]

end A074502

/-! ## A074502.P3374437632903311781

`8*a(n-1)-12*a(n-2)+5` with `a(0)=3, a(1)=9`
-/

namespace A074502.P3374437632903311781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  8 * a (n - 1) - 12 * a (n - 2) + 5

end

end A074502.P3374437632903311781

namespace A074502

/-- `8*a(n-1)-12*a(n-2)+5` -/
def P3374437632903311781.Spec : Prop :=
  ∀ n, P3374437632903311781.a n = A074502 n

theorem P3374437632903311781.correct : P3374437632903311781.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074502, Nat.add_sub_cancel, A074502.P3374437632903311781.a, A074502.P12330941856278510367.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074502, Nat.add_sub_cancel, A074502.P3374437632903311781.a, A074502.P12330941856278510367.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074502

/-! ## A074502.P6979398958208254098

`∑{#}[2, gcd(#, 6)^n]`
-/

namespace A074502.P6979398958208254098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.gcd k 6 ^ n

end

end A074502.P6979398958208254098

namespace A074502

/-- `∑{#}[2, gcd(#, 6)^n]` -/
def P6979398958208254098.Spec : Prop :=
  ∀ n, (P6979398958208254098.a n : ℤ) = A074502 n

end A074502

/-! ## A074502.P14195271170706791195

`∑{#}[2, (#+1)!^n]`
-/

namespace A074502.P14195271170706791195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.factorial (k + 1) ^ n

end

end A074502.P14195271170706791195

namespace A074502

/-- `∑{#}[2, (#+1)!^n]` -/
def P14195271170706791195.Spec : Prop :=
  ∀ n, (P14195271170706791195.a n : ℤ) = A074502 n

end A074502

/-! ## A074502.P10314374516448927393

`or(1, 2^n+6^n)`
-/

namespace A074502.P10314374516448927393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n + 6 ^ n)

end

end A074502.P10314374516448927393

namespace A074502

/-- `or(1, 2^n+6^n)` -/
def P10314374516448927393.Spec : Prop :=
  ∀ n, (P10314374516448927393.a n : ℤ) = A074502 n

end A074502

/-! ## A074502.P11194577274925514487

`xor(1, 2^n+6^n)`
-/

namespace A074502.P11194577274925514487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ n + 6 ^ n)

end

end A074502.P11194577274925514487

namespace A074502

/-- `xor(1, 2^n+6^n)` -/
def P11194577274925514487.Spec : Prop :=
  ∀ n, (P11194577274925514487.a n : ℤ) = A074502 n

end A074502

/-! ## A074502.P13021355211764174754

`∑{#}[2, A077936(#)^n]`
-/

namespace A074502.P13021355211764174754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A077936 k ^ n

end

end A074502.P13021355211764174754

namespace A074502

/-- `∑{#}[2, A077936(#)^n]` -/
def P13021355211764174754.Spec : Prop :=
  ∀ n, P13021355211764174754.a n = A074502 n

end A074502

/-! ## A074502.P14225626173733183896

`abs(3^n-A034488(n))`
-/

namespace A074502.P14225626173733183896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A034488 n|

end

end A074502.P14225626173733183896

namespace A074502

/-- `abs(3^n-A034488(n))` -/
def P14225626173733183896.Spec : Prop :=
  ∀ n, P14225626173733183896.a n = A074502 n

end A074502

/-! ## A074502.P10295344118818922864

`∑{e}[A179703(n+1), #^n]`
-/

namespace A074502.P10295344118818922864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ n

end

end A074502.P10295344118818922864

namespace A074502

/-- `∑{e}[A179703(n+1), #^n]` -/
def P10295344118818922864.Spec : Prop :=
  ∀ n, (P10295344118818922864.a n : ℤ) = A074502 n

end A074502

/-! ## A074502.P16036925100067890342

`∑[6*a(n-1)-A011782(n+1)]` with `a(0)=3, a(1)=6`
-/

namespace A074502.P16036925100067890342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  6 * f1 (n - 1) - A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074502.P16036925100067890342

namespace A074502

/-- `∑[6*a(n-1)-A011782(n+1)]` -/
def P16036925100067890342.Spec : Prop :=
  ∀ n, P16036925100067890342.a n = A074502 n

end A074502

/-! ## A074502.P16222269780112114869

`record[A055235(n)*A055248(n)+1]`
-/

namespace A074502.P16222269780112114869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n * A055248 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074502.P16222269780112114869

namespace A074502

/-- `record[A055235(n)*A055248(n)+1]` -/
def P16222269780112114869.Spec : Prop :=
  ∀ n, P16222269780112114869.a n = A074502 n

end A074502

/-!
# A074503: a(n) = 1^n + 2^n + 7^n.

The programs for A074503, the canonical program `A074503.P2316594922775968962` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074503 has offset 0).

The definition of A074503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+7^n` (program `A074503.P2316594922775968962`, by `A074503.P2316594922775968962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074503.P9589014495939014015

`ogf((3-20x+23x^2)/(1-10x+23x^2-14x^3))`
-/

namespace A074503.P9589014495939014015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -20, 23] [1, -10, 23, -14] n

end

end A074503.P9589014495939014015

namespace A074503

/-- `ogf((3-20x+23x^2)/(1-10x+23x^2-14x^3))` -/
def P9589014495939014015.Spec : Prop :=
  ∀ n, P9589014495939014015.a n = A074503 n

end A074503

/-! ## A074503.P2316594922775968962

`1^n+2^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074503

/-- `1^n+2^n+7^n` -/
def P2316594922775968962.Spec : Prop :=
  ∀ n, (P2316594922775968962.a n : ℤ) = A074503 n

theorem P2316594922775968962.correct : P2316594922775968962.Spec := by
  intro n
  simp only [A074503]

end A074503

/-! ## A074503.P11277408315175432063

`9*a(n-1)-14*a(n-2)+6` with `a(0)=3, a(1)=10`
-/

namespace A074503.P11277408315175432063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  9 * a (n - 1) - 14 * a (n - 2) + 6

end

end A074503.P11277408315175432063

namespace A074503

/-- `9*a(n-1)-14*a(n-2)+6` -/
def P11277408315175432063.Spec : Prop :=
  ∀ n, P11277408315175432063.a n = A074503 n

theorem P11277408315175432063.correct : P11277408315175432063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074503, Nat.add_sub_cancel, A074503.P11277408315175432063.a, A074503.P2316594922775968962.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074503, Nat.add_sub_cancel, A074503.P11277408315175432063.a, A074503.P2316594922775968962.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074503

/-! ## A074503.P2008357097921156174

`7^n-xor(2^n, -1)`
-/

namespace A074503.P2008357097921156174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - Int.xor (2 ^ n : ℤ) (-1)

end

end A074503.P2008357097921156174

namespace A074503

/-- `7^n-xor(2^n, -1)` -/
def P2008357097921156174.Spec : Prop :=
  ∀ n, P2008357097921156174.a n = A074503 n

end A074503

/-! ## A074503.P8562183767680236457

`abs(log2(1/2)-A074602(n))`
-/

namespace A074503.P8562183767680236457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A074602 n : ℝ)|

end

end A074503.P8562183767680236457

namespace A074503

/-- `abs(log2(1/2)-A074602(n))` -/
def P8562183767680236457.Spec : Prop :=
  ∀ n, P8562183767680236457.a n = (A074503 n : ℝ)

end A074503

/-! ## A074503.P17140752315817543624

`record[A074602(row(n)-col(n))+1]`
-/

namespace A074503.P17140752315817543624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074602 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074503.P17140752315817543624

namespace A074503

/-- `record[A074602(row(n)-col(n))+1]` -/
def P17140752315817543624.Spec : Prop :=
  ∀ n, P17140752315817543624.a n = A074503 n

end A074503

/-! ## A074503.P2644573046408517910

`Δ[A023000(n)+A005126(n)]`
-/

namespace A074503.P2644573046408517910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074503.P2644573046408517910

namespace A074503

/-- `Δ[A023000(n)+A005126(n)]` -/
def P2644573046408517910.Spec : Prop :=
  ∀ n, P2644573046408517910.a n = A074503 n

end A074503

/-! ## A074503.P7899199226571181352

`Δ[A023000(n)+A000051(n)+n]`
-/

namespace A074503.P7899199226571181352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000051 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074503.P7899199226571181352

namespace A074503

/-- `Δ[A023000(n)+A000051(n)+n]` -/
def P7899199226571181352.Spec : Prop :=
  ∀ n, P7899199226571181352.a n = A074503 n

end A074503

/-! ## A074503.P7629027558123822729

`Δ[A023000(n)+A000079(n)+n]`
-/

namespace A074503.P7629027558123822729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000079 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074503.P7629027558123822729

namespace A074503

/-- `Δ[A023000(n)+A000079(n)+n]` -/
def P7629027558123822729.Spec : Prop :=
  ∀ n, P7629027558123822729.a n = A074503 n

end A074503

/-! ## A074503.P18144225566587281881

`record[A074602(A004523(n))+(1-n%3)²]`
-/

namespace A074503.P18144225566587281881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074602 (A004523 n).toNat + (1 - ((n % 3 : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074503.P18144225566587281881

namespace A074503

/-- `record[A074602(A004523(n))+(1-n%3)²]` -/
def P18144225566587281881.Spec : Prop :=
  ∀ n, P18144225566587281881.a n = A074503 n

end A074503

/-! ## A074503.P16976468248906484961

`Δ[A074602(n)]%A198687(n)`
-/

namespace A074503.P16976468248906484961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A198687 n)

end

end A074503.P16976468248906484961

namespace A074503

/-- `Δ[A074602(n)]%A198687(n)` -/
def P16976468248906484961.Spec : Prop :=
  ∀ n, P16976468248906484961.a n = A074503 n

end A074503

/-! ## A074503.P12779504537133791122

`(A198692(n)+A000079(n))%A198687(n)`
-/

namespace A074503.P12779504537133791122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198692 n + A000079 n) (A198687 n)

end

end A074503.P12779504537133791122

namespace A074503

/-- `(A198692(n)+A000079(n))%A198687(n)` -/
def P12779504537133791122.Spec : Prop :=
  ∀ n, P12779504537133791122.a n = A074503 n

end A074503

/-! ## A074503.P16880879256534651574

`abs(A024088(n)-A074544(n))`
-/

namespace A074503.P16880879256534651574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n - A074544 n|

end

end A074503.P16880879256534651574

namespace A074503

/-- `abs(A024088(n)-A074544(n))` -/
def P16880879256534651574.Spec : Prop :=
  ∀ n, P16880879256534651574.a n = A074503 n

end A074503

/-!
# A074504: a(n) = 1^n + 2^n + 8^n.

The programs for A074504, the canonical program `A074504.P13616172850196297059` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074504 has offset 0).

The definition of A074504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+8^n` (program `A074504.P13616172850196297059`, by `A074504.P13616172850196297059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074504.P3427223636229598287

`ogf((3-22x+26x^2)/(1-11x+26x^2-16x^3))`
-/

namespace A074504.P3427223636229598287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -22, 26] [1, -11, 26, -16] n

end

end A074504.P3427223636229598287

namespace A074504

/-- `ogf((3-22x+26x^2)/(1-11x+26x^2-16x^3))` -/
def P3427223636229598287.Spec : Prop :=
  ∀ n, P3427223636229598287.a n = A074504 n

end A074504

/-! ## A074504.P13616172850196297059

`1^n+2^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074504

/-- `1^n+2^n+8^n` -/
def P13616172850196297059.Spec : Prop :=
  ∀ n, (P13616172850196297059.a n : ℤ) = A074504 n

theorem P13616172850196297059.correct : P13616172850196297059.Spec := by
  intro n
  simp only [A074504]

end A074504

/-! ## A074504.P1024703705856181068

`10*a(n-1)-16*a(n-2)+7` with `a(0)=3, a(1)=11`
-/

namespace A074504.P1024703705856181068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  10 * a (n - 1) - 16 * a (n - 2) + 7

end

end A074504.P1024703705856181068

namespace A074504

/-- `10*a(n-1)-16*a(n-2)+7` -/
def P1024703705856181068.Spec : Prop :=
  ∀ n, P1024703705856181068.a n = A074504 n

theorem P1024703705856181068.correct : P1024703705856181068.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074504, Nat.add_sub_cancel, A074504.P1024703705856181068.a, A074504.P13616172850196297059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074504, Nat.add_sub_cancel, A074504.P1024703705856181068.a, A074504.P13616172850196297059.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074504

/-! ## A074504.P5498891116302615757

`or(1, 2^n+8^n)`
-/

namespace A074504.P5498891116302615757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n + 8 ^ n)

end

end A074504.P5498891116302615757

namespace A074504

/-- `or(1, 2^n+8^n)` -/
def P5498891116302615757.Spec : Prop :=
  ∀ n, (P5498891116302615757.a n : ℤ) = A074504 n

end A074504

/-! ## A074504.P9414137712659943549

`xor(1, 2^n+8^n)`
-/

namespace A074504.P9414137712659943549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ n + 8 ^ n)

end

end A074504.P9414137712659943549

namespace A074504

/-- `xor(1, 2^n+8^n)` -/
def P9414137712659943549.Spec : Prop :=
  ∀ n, (P9414137712659943549.a n : ℤ) = A074504 n

end A074504

/-! ## A074504.P4960231601702720440

`abs(4^n-A034496(n))`
-/

namespace A074504.P4960231601702720440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A034496 n|

end

end A074504.P4960231601702720440

namespace A074504

/-- `abs(4^n-A034496(n))` -/
def P4960231601702720440.Spec : Prop :=
  ∀ n, P4960231601702720440.a n = A074504 n

end A074504

/-! ## A074504.P4018784389450781362

`Δ[A023001(n)+A000225(n)+n]`
-/

namespace A074504.P4018784389450781362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A000225 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074504.P4018784389450781362

namespace A074504

/-- `Δ[A023001(n)+A000225(n)+n]` -/
def P4018784389450781362.Spec : Prop :=
  ∀ n, P4018784389450781362.a n = A074504 n

end A074504

/-!
# A074505: a(n) = 1^n + 2^n + 9^n.

The programs for A074505, the canonical program `A074505.P17127150442839759814` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074505 has offset 0).

The definition of A074505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+9^n` (program `A074505.P17127150442839759814`, by `A074505.P17127150442839759814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074505.P14743791440852516821

`ogf((3-24x+29x^2)/(1-12x+29x^2-18x^3))`
-/

namespace A074505.P14743791440852516821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24, 29] [1, -12, 29, -18] n

end

end A074505.P14743791440852516821

namespace A074505

/-- `ogf((3-24x+29x^2)/(1-12x+29x^2-18x^3))` -/
def P14743791440852516821.Spec : Prop :=
  ∀ n, P14743791440852516821.a n = A074505 n

end A074505

/-! ## A074505.P17127150442839759814

`1^n+2^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074505

/-- `1^n+2^n+9^n` -/
def P17127150442839759814.Spec : Prop :=
  ∀ n, (P17127150442839759814.a n : ℤ) = A074505 n

theorem P17127150442839759814.correct : P17127150442839759814.Spec := by
  intro n
  simp only [A074505]

end A074505

/-! ## A074505.P4542892052582670214

`11*a(n-1)-18*a(n-2)+8` with `a(0)=3, a(1)=12`
-/

namespace A074505.P4542892052582670214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12] fun n a =>
  11 * a (n - 1) - 18 * a (n - 2) + 8

end

end A074505.P4542892052582670214

namespace A074505

/-- `11*a(n-1)-18*a(n-2)+8` -/
def P4542892052582670214.Spec : Prop :=
  ∀ n, P4542892052582670214.a n = A074505 n

theorem P4542892052582670214.correct : P4542892052582670214.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074505, Nat.add_sub_cancel, A074505.P4542892052582670214.a, A074505.P17127150442839759814.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074505, Nat.add_sub_cancel, A074505.P4542892052582670214.a, A074505.P17127150442839759814.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074505

/-! ## A074505.P4446624127282738143

`∑{#}[2, ((#+1)^n)^#]`
-/

namespace A074505.P4446624127282738143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ n) ^ k

end

end A074505.P4446624127282738143

namespace A074505

/-- `∑{#}[2, ((#+1)^n)^#]` -/
def P4446624127282738143.Spec : Prop :=
  ∀ n, (P4446624127282738143.a n : ℤ) = A074505 n

end A074505

/-! ## A074505.P14399851918299893798

`record[A074604(A025480(n))+1]`
-/

namespace A074505.P14399851918299893798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074604 (A025480 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074505.P14399851918299893798

namespace A074505

/-- `record[A074604(A025480(n))+1]` -/
def P14399851918299893798.Spec : Prop :=
  ∀ n, P14399851918299893798.a n = A074505 n

end A074505

/-! ## A074505.P3904861344339437165

`abs(A001047(n)-A034513(n))`
-/

namespace A074505.P3904861344339437165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A034513 n|

end

end A074505.P3904861344339437165

namespace A074505

/-- `abs(A001047(n)-A034513(n))` -/
def P3904861344339437165.Spec : Prop :=
  ∀ n, P3904861344339437165.a n = A074505 n

end A074505

/-! ## A074505.P8648883270679101647

`abs(A020522(n)-A074515(n))`
-/

namespace A074505.P8648883270679101647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020522 n - A074515 n|

end

end A074505.P8648883270679101647

namespace A074505

/-- `abs(A020522(n)-A074515(n))` -/
def P8648883270679101647.Spec : Prop :=
  ∀ n, P8648883270679101647.a n = A074505 n

end A074505

/-! ## A074505.P6620045888594560008

`Δ[A005126(n)+A002452(n)]`
-/

namespace A074505.P6620045888594560008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074505.P6620045888594560008

namespace A074505

/-- `Δ[A005126(n)+A002452(n)]` -/
def P6620045888594560008.Spec : Prop :=
  ∀ n, P6620045888594560008.a n = A074505 n

end A074505

/-! ## A074505.P3270795636048582068

`Δ[A006127(n)+A002452(n)]`
-/

namespace A074505.P3270795636048582068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074505.P3270795636048582068

namespace A074505

/-- `Δ[A006127(n)+A002452(n)]` -/
def P3270795636048582068.Spec : Prop :=
  ∀ n, P3270795636048582068.a n = A074505 n

end A074505

/-!
# A074506: a(n) = 1^n + 3^n + 4^n.

The programs for A074506, the canonical program `A074506.P11281591618345595835` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074506 has offset 0).

The definition of A074506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+4^n` (program `A074506.P11281591618345595835`, by `A074506.P11281591618345595835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074506.P7404350694807809911

`ogf((3-16x+19x^2)/(1-8x+19x^2-12x^3))`
-/

namespace A074506.P7404350694807809911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -16, 19] [1, -8, 19, -12] n

end

end A074506.P7404350694807809911

namespace A074506

/-- `ogf((3-16x+19x^2)/(1-8x+19x^2-12x^3))` -/
def P7404350694807809911.Spec : Prop :=
  ∀ n, P7404350694807809911.a n = A074506 n

end A074506

/-! ## A074506.P11281591618345595835

`1^n+3^n+4^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074506

/-- `1^n+3^n+4^n` -/
def P11281591618345595835.Spec : Prop :=
  ∀ n, (P11281591618345595835.a n : ℤ) = A074506 n

theorem P11281591618345595835.correct : P11281591618345595835.Spec := by
  intro n
  simp only [A074506]

end A074506

/-! ## A074506.P15184469134492778302

`7*a(n-1)-12*a(n-2)+6` with `a(0)=3, a(1)=8`
-/

namespace A074506.P15184469134492778302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  7 * a (n - 1) - 12 * a (n - 2) + 6

end

end A074506.P15184469134492778302

namespace A074506

/-- `7*a(n-1)-12*a(n-2)+6` -/
def P15184469134492778302.Spec : Prop :=
  ∀ n, P15184469134492778302.a n = A074506 n

theorem P15184469134492778302.correct : P15184469134492778302.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074506, Nat.add_sub_cancel, A074506.P15184469134492778302.a, A074506.P11281591618345595835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074506, Nat.add_sub_cancel, A074506.P15184469134492778302.a, A074506.P11281591618345595835.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074506

/-! ## A074506.P7064241355776029683

`∑{#}[1, (4-#)^n]+1`
-/

namespace A074506.P7064241355776029683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 - (k : ℤ)) ^ n + 1

end

end A074506.P7064241355776029683

namespace A074506

/-- `∑{#}[1, (4-#)^n]+1` -/
def P7064241355776029683.Spec : Prop :=
  ∀ n, P7064241355776029683.a n = A074506 n

end A074506

/-! ## A074506.P14238727105538309101

`∑{#}[2, ((4-#)^n)^#]`
-/

namespace A074506.P14238727105538309101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((4 - (k : ℤ)) ^ n) ^ k

end

end A074506.P14238727105538309101

namespace A074506

/-- `∑{#}[2, ((4-#)^n)^#]` -/
def P14238727105538309101.Spec : Prop :=
  ∀ n, P14238727105538309101.a n = A074506 n

end A074506

/-! ## A074506.P12248603836320786221

`4^n-xor(3^n, -1)`
-/

namespace A074506.P12248603836320786221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - Int.xor (3 ^ n : ℤ) (-1)

end

end A074506.P12248603836320786221

namespace A074506

/-- `4^n-xor(3^n, -1)` -/
def P12248603836320786221.Spec : Prop :=
  ∀ n, P12248603836320786221.a n = A074506 n

end A074506

/-! ## A074506.P10206665266290831148

`or(3^n-1, 4^n)+2`
-/

namespace A074506.P10206665266290831148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 ^ n : ℤ) - 1) (4 ^ n : ℤ) + 2

end

end A074506.P10206665266290831148

namespace A074506

/-- `or(3^n-1, 4^n)+2` -/
def P10206665266290831148.Spec : Prop :=
  ∀ n, P10206665266290831148.a n = A074506 n

end A074506

/-! ## A074506.P17043389597648166832

`abs(xor(-1, A074605(n)))`
-/

namespace A074506.P17043389597648166832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A074605 n)|

end

end A074506.P17043389597648166832

namespace A074506

/-- `abs(xor(-1, A074605(n)))` -/
def P17043389597648166832.Spec : Prop :=
  ∀ n, P17043389597648166832.a n = A074506 n

end A074506

/-! ## A074506.P11623185126006539222

`abs(A000079(n)-A001551(n))`
-/

namespace A074506.P11623185126006539222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A001551 n|

end

end A074506.P11623185126006539222

namespace A074506

/-- `abs(A000079(n)-A001551(n))` -/
def P11623185126006539222.Spec : Prop :=
  ∀ n, P11623185126006539222.a n = A074506 n

end A074506

/-! ## A074506.P10905632349926040717

`abs(A000079(n)-(A074526(n)+1))`
-/

namespace A074506.P10905632349926040717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - (A074526 n + 1)|

end

end A074506.P10905632349926040717

namespace A074506

/-- `abs(A000079(n)-(A074526(n)+1))` -/
def P10905632349926040717.Spec : Prop :=
  ∀ n, P10905632349926040717.a n = A074506 n

end A074506

/-! ## A074506.P17987140611565155670

`Δ[A085282(n)+n]`
-/

namespace A074506.P17987140611565155670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074506.P17987140611565155670

namespace A074506

/-- `Δ[A085282(n)+n]` -/
def P17987140611565155670.Spec : Prop :=
  ∀ n, P17987140611565155670.a n = A074506 n

end A074506

/-! ## A074506.P3378322829778725237

`Δ[A036557(2*n+1)+n]`
-/

namespace A074506.P3378322829778725237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074506.P3378322829778725237

namespace A074506

/-- `Δ[A036557(2*n+1)+n]` -/
def P3378322829778725237.Spec : Prop :=
  ∀ n, P3378322829778725237.a n = A074506 n

end A074506

/-! ## A074506.P9388626868759713759

`(A052919(n+1)+A000051(2*n+1))/2`
-/

namespace A074506.P9388626868759713759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052919 (n + 1) + A000051 (2 * n + 1) : ℚ) / 2

end

end A074506.P9388626868759713759

namespace A074506

/-- `(A052919(n+1)+A000051(2*n+1))/2` -/
def P9388626868759713759.Spec : Prop :=
  ∀ n, P9388626868759713759.a n = (A074506 n : ℚ)

end A074506

/-! ## A074506.P15289453271760008869

`(A083318(2*n+1)+A052919(n+1))/2`
-/

namespace A074506.P15289453271760008869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083318 (2 * n + 1) + A052919 (n + 1) : ℚ) / 2

end

end A074506.P15289453271760008869

namespace A074506

/-- `(A083318(2*n+1)+A052919(n+1))/2` -/
def P15289453271760008869.Spec : Prop :=
  ∀ n, P15289453271760008869.a n = (A074506 n : ℚ)

end A074506

/-! ## A074506.P8663416764019025066

`record[A262616(n)+A055235(n)]`
-/

namespace A074506.P8663416764019025066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n + A055235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074506.P8663416764019025066

namespace A074506

/-- `record[A262616(n)+A055235(n)]` -/
def P8663416764019025066.Spec : Prop :=
  ∀ n, P8663416764019025066.a n = A074506 n

end A074506

/-! ## A074506.P8320997295623874352

`record[A055235(n)+A055248(n)²]`
-/

namespace A074506.P8320997295623874352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n + A055248 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074506.P8320997295623874352

namespace A074506

/-- `record[A055235(n)+A055248(n)²]` -/
def P8320997295623874352.Spec : Prop :=
  ∀ n, P8320997295623874352.a n = A074506 n

end A074506

/-!
# A074507: a(n) = 1^n + 3^n + 5^n.

The programs for A074507, the canonical program `A074507.P11026524760515639452` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074507 has offset 0).

The definition of A074507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+5^n` (program `A074507.P11026524760515639452`, by `A074507.P11026524760515639452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074507.P14076099071536163614

`1+3^n+5^n`
-/

namespace A074507.P14076099071536163614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 ^ n + 5 ^ n

end

end A074507.P14076099071536163614

namespace A074507

/-- `1+3^n+5^n` -/
def P14076099071536163614.Spec : Prop :=
  ∀ n, (P14076099071536163614.a n : ℤ) = A074507 n

theorem P14076099071536163614.correct : P14076099071536163614.Spec := by
  intro n
  simp only [A074507, Nat.add_sub_cancel, A074507.P14076099071536163614.a, A074507.P11026524760515639452.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074507

/-! ## A074507.P13801458996442052472

`ogf((3-18x+23x^2)/(1-9x+23x^2-15x^3))`
-/

namespace A074507.P13801458996442052472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -18, 23] [1, -9, 23, -15] n

end

end A074507.P13801458996442052472

namespace A074507

/-- `ogf((3-18x+23x^2)/(1-9x+23x^2-15x^3))` -/
def P13801458996442052472.Spec : Prop :=
  ∀ n, P13801458996442052472.a n = A074507 n

end A074507

/-! ## A074507.P11026524760515639452

`1^n+3^n+5^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074507

/-- `1^n+3^n+5^n` -/
def P11026524760515639452.Spec : Prop :=
  ∀ n, (P11026524760515639452.a n : ℤ) = A074507 n

theorem P11026524760515639452.correct : P11026524760515639452.Spec := by
  intro n
  simp only [A074507]

end A074507

/-! ## A074507.P1274978926070951714

`8*a(n-1)-15*a(n-2)+8` with `a(0)=3, a(1)=9`
-/

namespace A074507.P1274978926070951714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  8 * a (n - 1) - 15 * a (n - 2) + 8

end

end A074507.P1274978926070951714

namespace A074507

/-- `8*a(n-1)-15*a(n-2)+8` -/
def P1274978926070951714.Spec : Prop :=
  ∀ n, P1274978926070951714.a n = A074507 n

theorem P1274978926070951714.correct : P1274978926070951714.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074507, Nat.add_sub_cancel, A074507.P1274978926070951714.a, A074507.P11026524760515639452.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074507, Nat.add_sub_cancel, A074507.P1274978926070951714.a, A074507.P11026524760515639452.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074507

/-! ## A074507.P242644463778558102

`∑{#}[2, (5-2*#)^n]`
-/

namespace A074507.P242644463778558102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (5 - (2 * k : ℤ)) ^ n

end

end A074507.P242644463778558102

namespace A074507

/-- `∑{#}[2, (5-2*#)^n]` -/
def P242644463778558102.Spec : Prop :=
  ∀ n, P242644463778558102.a n = A074507 n

end A074507

/-! ## A074507.P15140799483613161266

`or(1, A074606(n))`
-/

namespace A074507.P15140799483613161266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074606 n)

end

end A074507.P15140799483613161266

namespace A074507

/-- `or(1, A074606(n))` -/
def P15140799483613161266.Spec : Prop :=
  ∀ n, P15140799483613161266.a n = A074507 n

end A074507

/-! ## A074507.P15686057677350809499

`or(1, A155603(n)+1)`
-/

namespace A074507.P15686057677350809499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155603 n + 1)

end

end A074507.P15686057677350809499

namespace A074507

/-- `or(1, A155603(n)+1)` -/
def P15686057677350809499.Spec : Prop :=
  ∀ n, P15686057677350809499.a n = A074507 n

end A074507

/-! ## A074507.P12117579037270435078

`or(1, 2*A081186(n))`
-/

namespace A074507.P12117579037270435078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A081186 n)

end

end A074507.P12117579037270435078

namespace A074507

/-- `or(1, 2*A081186(n))` -/
def P12117579037270435078.Spec : Prop :=
  ∀ n, P12117579037270435078.a n = A074507 n

end A074507

/-! ## A074507.P8821668955973567380

`xor(1, A120950(n)+2*n)`
-/

namespace A074507.P8821668955973567380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120950 n + (2 * n : ℤ))

end

end A074507.P8821668955973567380

namespace A074507

/-- `xor(1, A120950(n)+2*n)` -/
def P8821668955973567380.Spec : Prop :=
  ∀ n, P8821668955973567380.a n = A074507 n

end A074507

/-! ## A074507.P7567157649203896829

`abs(2*n-(A120949(n)+1))`
-/

namespace A074507.P7567157649203896829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A120949 n + 1)|

end

end A074507.P7567157649203896829

namespace A074507

/-- `abs(2*n-(A120949(n)+1))` -/
def P7567157649203896829.Spec : Prop :=
  ∀ n, P7567157649203896829.a n = A074507 n

end A074507

/-! ## A074507.P8835285045509800625

`or(1, A120950(n)+A004277(n))`
-/

namespace A074507.P8835285045509800625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120950 n + A004277 n)

end

end A074507.P8835285045509800625

namespace A074507

/-- `or(1, A120950(n)+A004277(n))` -/
def P8835285045509800625.Spec : Prop :=
  ∀ n, P8835285045509800625.a n = A074507 n

end A074507

/-! ## A074507.P2226531967157839632

`xor(1, A000351(n)+A000244(n))`
-/

namespace A074507.P2226531967157839632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000351 n + A000244 n)

end

end A074507.P2226531967157839632

namespace A074507

/-- `xor(1, A000351(n)+A000244(n))` -/
def P2226531967157839632.Spec : Prop :=
  ∀ n, P2226531967157839632.a n = A074507 n

end A074507

/-! ## A074507.P2501521544115303715

`or(1, Δ[2*A233106(n+1)])`
-/

namespace A074507.P2501521544115303715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A074507.P2501521544115303715

namespace A074507

/-- `or(1, Δ[2*A233106(n+1)])` -/
def P2501521544115303715.Spec : Prop :=
  ∀ n, P2501521544115303715.a n = A074507 n

end A074507

/-! ## A074507.P5805250770445551558

`or(1, Δ[A003463(n)+A003462(n)])`
-/

namespace A074507.P5805250770445551558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A074507.P5805250770445551558

namespace A074507

/-- `or(1, Δ[A003463(n)+A003462(n)])` -/
def P5805250770445551558.Spec : Prop :=
  ∀ n, P5805250770445551558.a n = A074507 n

end A074507

/-! ## A074507.P8254853834400040666

`xor(1, Δ[A003462(n)+A024049(n)/4])`
-/

namespace A074507.P8254853834400040666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) + (A024049 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A074507.P8254853834400040666

namespace A074507

/-- `xor(1, Δ[A003462(n)+A024049(n)/4])` -/
def P8254853834400040666.Spec : Prop :=
  ∀ n, P8254853834400040666.a n = A074507 n

end A074507

/-! ## A074507.P6764702454820549129

`xor(1, Δ[A003462(n)+A104891(n)/5])`
-/

namespace A074507.P6764702454820549129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) + (A104891 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A074507.P6764702454820549129

namespace A074507

/-- `xor(1, Δ[A003462(n)+A104891(n)/5])` -/
def P6764702454820549129.Spec : Prop :=
  ∀ n, P6764702454820549129.a n = A074507 n

end A074507

/-!
# A074508: a(n) = 1^n + 3^n + 6^n.

The programs for A074508, the canonical program `A074508.P7041777955413014859` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074508 has offset 0).

The definition of A074508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+6^n` (program `A074508.P7041777955413014859`, by `A074508.P7041777955413014859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074508.P17494848267295550762

`ogf((3-20x+27x^2)/(1-10x+27x^2-18x^3))`
-/

namespace A074508.P17494848267295550762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -20, 27] [1, -10, 27, -18] n

end

end A074508.P17494848267295550762

namespace A074508

/-- `ogf((3-20x+27x^2)/(1-10x+27x^2-18x^3))` -/
def P17494848267295550762.Spec : Prop :=
  ∀ n, P17494848267295550762.a n = A074508 n

end A074508

/-! ## A074508.P7041777955413014859

`1^n+3^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074508

/-- `1^n+3^n+6^n` -/
def P7041777955413014859.Spec : Prop :=
  ∀ n, (P7041777955413014859.a n : ℤ) = A074508 n

theorem P7041777955413014859.correct : P7041777955413014859.Spec := by
  intro n
  simp only [A074508]

end A074508

/-! ## A074508.P17464961638749649409

`9*a(n-1)-18*a(n-2)+10` with `a(0)=3, a(1)=10`
-/

namespace A074508.P17464961638749649409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  9 * a (n - 1) - 18 * a (n - 2) + 10

end

end A074508.P17464961638749649409

namespace A074508

/-- `9*a(n-1)-18*a(n-2)+10` -/
def P17464961638749649409.Spec : Prop :=
  ∀ n, P17464961638749649409.a n = A074508 n

theorem P17464961638749649409.correct : P17464961638749649409.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074508, Nat.add_sub_cancel, A074508.P17464961638749649409.a, A074508.P7041777955413014859.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074508, Nat.add_sub_cancel, A074508.P17464961638749649409.a, A074508.P7041777955413014859.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074508

/-! ## A074508.P9365304077407385101

`-xor(-1, A074607(n))`
-/

namespace A074508.P9365304077407385101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A074607 n)

end

end A074508.P9365304077407385101

namespace A074508

/-- `-xor(-1, A074607(n))` -/
def P9365304077407385101.Spec : Prop :=
  ∀ n, P9365304077407385101.a n = A074508 n

end A074508

/-! ## A074508.P3969412899261874891

`abs(2^n-A034488(n))`
-/

namespace A074508.P3969412899261874891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034488 n|

end

end A074508.P3969412899261874891

namespace A074508

/-- `abs(2^n-A034488(n))` -/
def P3969412899261874891.Spec : Prop :=
  ∀ n, P3969412899261874891.a n = A074508 n

end A074508

/-! ## A074508.P7052302574532901196

`∑{#}[2, A398355(3^#)^n]`
-/

namespace A074508.P7052302574532901196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A398355 (3 ^ k) ^ n

end

end A074508.P7052302574532901196

namespace A074508

/-- `∑{#}[2, A398355(3^#)^n]` -/
def P7052302574532901196.Spec : Prop :=
  ∀ n, P7052302574532901196.a n = A074508 n

end A074508

/-! ## A074508.P14912901936201501847

`abs(A000225(n)-A074528(n))`
-/

namespace A074508.P14912901936201501847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074528 n|

end

end A074508.P14912901936201501847

namespace A074508

/-- `abs(A000225(n)-A074528(n))` -/
def P14912901936201501847.Spec : Prop :=
  ∀ n, P14912901936201501847.a n = A074508 n

end A074508

/-! ## A074508.P2617908750726758228

`record[A074607(A053645(n+1))+1]`
-/

namespace A074508.P2617908750726758228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074607 (A053645 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074508.P2617908750726758228

namespace A074508

/-- `record[A074607(A053645(n+1))+1]` -/
def P2617908750726758228.Spec : Prop :=
  ∀ n, P2617908750726758228.a n = A074508 n

end A074508

/-! ## A074508.P13652254460340086708

`abs(A024088(n)-A074556(n))`
-/

namespace A074508.P13652254460340086708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n - A074556 n|

end

end A074508.P13652254460340086708

namespace A074508

/-- `abs(A024088(n)-A074556(n))` -/
def P13652254460340086708.Spec : Prop :=
  ∀ n, P13652254460340086708.a n = A074508 n

end A074508

/-!
# A074509: a(n) = 1^n + 3^n + 7^n.

The programs for A074509, the canonical program `A074509.P15121560356045695920` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074509 has offset 0).

The definition of A074509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+7^n` (program `A074509.P15121560356045695920`, by `A074509.P15121560356045695920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074509.P12407659573934872881

`ogf((3-22x+31x^2)/(1-11x+31x^2-21x^3))`
-/

namespace A074509.P12407659573934872881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -22, 31] [1, -11, 31, -21] n

end

end A074509.P12407659573934872881

namespace A074509

/-- `ogf((3-22x+31x^2)/(1-11x+31x^2-21x^3))` -/
def P12407659573934872881.Spec : Prop :=
  ∀ n, P12407659573934872881.a n = A074509 n

end A074509

/-! ## A074509.P15121560356045695920

`1^n+3^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074509

/-- `1^n+3^n+7^n` -/
def P15121560356045695920.Spec : Prop :=
  ∀ n, (P15121560356045695920.a n : ℤ) = A074509 n

theorem P15121560356045695920.correct : P15121560356045695920.Spec := by
  intro n
  simp only [A074509]

end A074509

/-! ## A074509.P10079155170142992927

`10*a(n-1)-21*a(n-2)+12` with `a(0)=3, a(1)=11`
-/

namespace A074509.P10079155170142992927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  10 * a (n - 1) - 21 * a (n - 2) + 12

end

end A074509.P10079155170142992927

namespace A074509

/-- `10*a(n-1)-21*a(n-2)+12` -/
def P10079155170142992927.Spec : Prop :=
  ∀ n, P10079155170142992927.a n = A074509 n

theorem P10079155170142992927.correct : P10079155170142992927.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074509, Nat.add_sub_cancel, A074509.P10079155170142992927.a, A074509.P15121560356045695920.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074509, Nat.add_sub_cancel, A074509.P10079155170142992927.a, A074509.P15121560356045695920.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074509

/-! ## A074509.P13636609401890629896

`or(1, 3^n+7^n)`
-/

namespace A074509.P13636609401890629896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 ^ n + 7 ^ n)

end

end A074509.P13636609401890629896

namespace A074509

/-- `or(1, 3^n+7^n)` -/
def P13636609401890629896.Spec : Prop :=
  ∀ n, (P13636609401890629896.a n : ℤ) = A074509 n

end A074509

/-! ## A074509.P4927336993216896988

`xor(1, 3^n+7^n)`
-/

namespace A074509.P4927336993216896988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 ^ n + 7 ^ n)

end

end A074509.P4927336993216896988

namespace A074509

/-- `xor(1, 3^n+7^n)` -/
def P4927336993216896988.Spec : Prop :=
  ∀ n, (P4927336993216896988.a n : ℤ) = A074509 n

end A074509

/-! ## A074509.P3738641003286203533

`∑{d}[-a(n-1), A000032(#)^n]` with `a(0)=4`
-/

namespace A074509.P3738641003286203533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000032 d ^ n

end

end A074509.P3738641003286203533

namespace A074509

/-- `∑{d}[-a(n-1), A000032(#)^n]` -/
def P3738641003286203533.Spec : Prop :=
  ∀ n, P3738641003286203533.a n = A074509 n

end A074509

/-! ## A074509.P16473677063442547903

`∑{d}[-a(n-1), A000203(#)^n]` with `a(0)=4`
-/

namespace A074509.P16473677063442547903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 d ^ n

end

end A074509.P16473677063442547903

namespace A074509

/-- `∑{d}[-a(n-1), A000203(#)^n]` -/
def P16473677063442547903.Spec : Prop :=
  ∀ n, P16473677063442547903.a n = A074509 n

end A074509

/-!
# A074510: a(n) = 1^n + 3^n + 8^n.

The programs for A074510, the canonical program `A074510.P14805957398525706916` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074510 has offset 0).

The definition of A074510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+8^n` (program `A074510.P14805957398525706916`, by `A074510.P14805957398525706916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074510.P7952981758769725105

`1+3^n+8^n`
-/

namespace A074510.P7952981758769725105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 ^ n + 8 ^ n

end

end A074510.P7952981758769725105

namespace A074510

/-- `1+3^n+8^n` -/
def P7952981758769725105.Spec : Prop :=
  ∀ n, (P7952981758769725105.a n : ℤ) = A074510 n

theorem P7952981758769725105.correct : P7952981758769725105.Spec := by
  intro n
  simp only [A074510, Nat.add_sub_cancel, A074510.P7952981758769725105.a, A074510.P14805957398525706916.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074510

/-! ## A074510.P16528429296084216028

`ogf((3-24x+35x^2)/(1-12x+35x^2-24x^3))`
-/

namespace A074510.P16528429296084216028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24, 35] [1, -12, 35, -24] n

end

end A074510.P16528429296084216028

namespace A074510

/-- `ogf((3-24x+35x^2)/(1-12x+35x^2-24x^3))` -/
def P16528429296084216028.Spec : Prop :=
  ∀ n, P16528429296084216028.a n = A074510 n

end A074510

/-! ## A074510.P14805957398525706916

`1^n+3^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074510

/-- `1^n+3^n+8^n` -/
def P14805957398525706916.Spec : Prop :=
  ∀ n, (P14805957398525706916.a n : ℤ) = A074510 n

theorem P14805957398525706916.correct : P14805957398525706916.Spec := by
  intro n
  simp only [A074510]

end A074510

/-! ## A074510.P10103503096113672780

`11*a(n-1)-24*a(n-2)+14` with `a(0)=3, a(1)=12`
-/

namespace A074510.P10103503096113672780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12] fun n a =>
  11 * a (n - 1) - 24 * a (n - 2) + 14

end

end A074510.P10103503096113672780

namespace A074510

/-- `11*a(n-1)-24*a(n-2)+14` -/
def P10103503096113672780.Spec : Prop :=
  ∀ n, P10103503096113672780.a n = A074510 n

theorem P10103503096113672780.correct : P10103503096113672780.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074510, Nat.add_sub_cancel, A074510.P10103503096113672780.a, A074510.P14805957398525706916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074510, Nat.add_sub_cancel, A074510.P10103503096113672780.a, A074510.P14805957398525706916.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074510

/-! ## A074510.P7022325381739373895

`or(8^n, A034472(n))`
-/

namespace A074510.P7022325381739373895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n : ℤ) (A034472 n)

end

end A074510.P7022325381739373895

namespace A074510

/-- `or(8^n, A034472(n))` -/
def P7022325381739373895.Spec : Prop :=
  ∀ n, P7022325381739373895.a n = A074510 n

end A074510

/-! ## A074510.P14830255715522112483

`or(3^n+1, A001018(n))`
-/

namespace A074510.P14830255715522112483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 ^ n + 1 : ℤ) (A001018 n)

end

end A074510.P14830255715522112483

namespace A074510

/-- `or(3^n+1, A001018(n))` -/
def P14830255715522112483.Spec : Prop :=
  ∀ n, P14830255715522112483.a n = A074510 n

end A074510

/-!
# A074511: a(n) = 1^n + 4^n + 5^n.

The programs for A074511, the canonical program `A074511.P15291591030534958469` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074511 has offset 0).

The definition of A074511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+5^n` (program `A074511.P15291591030534958469`, by `A074511.P15291591030534958469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074511.P11938220625464723068

`ogf((3-20x+29x^2)/(1-10x+29x^2-20x^3))`
-/

namespace A074511.P11938220625464723068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -20, 29] [1, -10, 29, -20] n

end

end A074511.P11938220625464723068

namespace A074511

/-- `ogf((3-20x+29x^2)/(1-10x+29x^2-20x^3))` -/
def P11938220625464723068.Spec : Prop :=
  ∀ n, P11938220625464723068.a n = A074511 n

end A074511

/-! ## A074511.P15291591030534958469

`1^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074511

/-- `1^n+4^n+5^n` -/
def P15291591030534958469.Spec : Prop :=
  ∀ n, (P15291591030534958469.a n : ℤ) = A074511 n

theorem P15291591030534958469.correct : P15291591030534958469.Spec := by
  intro n
  simp only [A074511]

end A074511

/-! ## A074511.P7726198193610842445

`9*a(n-1)-20*a(n-2)+12` with `a(0)=3, a(1)=10`
-/

namespace A074511.P7726198193610842445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  9 * a (n - 1) - 20 * a (n - 2) + 12

end

end A074511.P7726198193610842445

namespace A074511

/-- `9*a(n-1)-20*a(n-2)+12` -/
def P7726198193610842445.Spec : Prop :=
  ∀ n, P7726198193610842445.a n = A074511 n

theorem P7726198193610842445.correct : P7726198193610842445.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074511, Nat.add_sub_cancel, A074511.P7726198193610842445.a, A074511.P15291591030534958469.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074511, Nat.add_sub_cancel, A074511.P7726198193610842445.a, A074511.P15291591030534958469.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074511

/-! ## A074511.P10860206614884232918

`∑{#}[1, (5-#)^n]+1`
-/

namespace A074511.P10860206614884232918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (5 - (k : ℤ)) ^ n + 1

end

end A074511.P10860206614884232918

namespace A074511

/-- `∑{#}[1, (5-#)^n]+1` -/
def P10860206614884232918.Spec : Prop :=
  ∀ n, P10860206614884232918.a n = A074511 n

end A074511

/-! ## A074511.P4717760463826575685

`4^n-xor(5^n, -1)`
-/

namespace A074511.P4717760463826575685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - Int.xor (5 ^ n : ℤ) (-1)

end

end A074511.P4717760463826575685

namespace A074511

/-- `4^n-xor(5^n, -1)` -/
def P4717760463826575685.Spec : Prop :=
  ∀ n, P4717760463826575685.a n = A074511 n

end A074511

/-! ## A074511.P1941860974977040640

`or(2, 4^n+5^n+1)`
-/

namespace A074511.P1941860974977040640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 ^ n + 5 ^ n + 1)

end

end A074511.P1941860974977040640

namespace A074511

/-- `or(2, 4^n+5^n+1)` -/
def P1941860974977040640.Spec : Prop :=
  ∀ n, (P1941860974977040640.a n : ℤ) = A074511 n

end A074511

/-! ## A074511.P7863807431984062787

`xor(2, A155616(2*n-n))`
-/

namespace A074511.P7863807431984062787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A155616 (2 * n - n))

end

end A074511.P7863807431984062787

namespace A074511

/-- `xor(2, A155616(2*n-n))` -/
def P7863807431984062787.Spec : Prop :=
  ∀ n, P7863807431984062787.a n = A074511 n

end A074511

/-! ## A074511.P10671764767778954227

`Δ[A003463(n)+A002450(n)+n]`
-/

namespace A074511.P10671764767778954227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002450 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074511.P10671764767778954227

namespace A074511

/-- `Δ[A003463(n)+A002450(n)+n]` -/
def P10671764767778954227.Spec : Prop :=
  ∀ n, P10671764767778954227.a n = A074511 n

end A074511

/-! ## A074511.P15723707723468821401

`∑{#}[n, (-1)^(n-#)*C(n, #)*A074537(#)]`
-/

namespace A074511.P15723707723468821401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A074537 k : ℚ)

end

end A074511.P15723707723468821401

namespace A074511

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A074537(#)]` -/
def P15723707723468821401.Spec : Prop :=
  ∀ n, P15723707723468821401.a n = (A074511 n : ℚ)

end A074511

/-!
# A074512: a(n) = 1^n + 4^n + 6^n.

The programs for A074512, the canonical program `A074512.P8179462783468662161` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074512 has offset 0).

The definition of A074512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+6^n` (program `A074512.P8179462783468662161`, by `A074512.P8179462783468662161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074512.P18204421379598818104

`ogf((3-22x+34x^2)/(1-11x+34x^2-24x^3))`
-/

namespace A074512.P18204421379598818104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -22, 34] [1, -11, 34, -24] n

end

end A074512.P18204421379598818104

namespace A074512

/-- `ogf((3-22x+34x^2)/(1-11x+34x^2-24x^3))` -/
def P18204421379598818104.Spec : Prop :=
  ∀ n, P18204421379598818104.a n = A074512 n

end A074512

/-! ## A074512.P8179462783468662161

`1^n+4^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074512

/-- `1^n+4^n+6^n` -/
def P8179462783468662161.Spec : Prop :=
  ∀ n, (P8179462783468662161.a n : ℤ) = A074512 n

theorem P8179462783468662161.correct : P8179462783468662161.Spec := by
  intro n
  simp only [A074512]

end A074512

/-! ## A074512.P7893804144183922672

`10*a(n-1)-24*a(n-2)+15` with `a(0)=3, a(1)=11`
-/

namespace A074512.P7893804144183922672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  10 * a (n - 1) - 24 * a (n - 2) + 15

end

end A074512.P7893804144183922672

namespace A074512

/-- `10*a(n-1)-24*a(n-2)+15` -/
def P7893804144183922672.Spec : Prop :=
  ∀ n, P7893804144183922672.a n = A074512 n

theorem P7893804144183922672.correct : P7893804144183922672.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074512, Nat.add_sub_cancel, A074512.P7893804144183922672.a, A074512.P8179462783468662161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074512, Nat.add_sub_cancel, A074512.P7893804144183922672.a, A074512.P8179462783468662161.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074512

/-! ## A074512.P9819778768384469639

`∑{#}[2, C(4, #)^n]`
-/

namespace A074512.P9819778768384469639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose 4 k ^ n

end

end A074512.P9819778768384469639

namespace A074512

/-- `∑{#}[2, C(4, #)^n]` -/
def P9819778768384469639.Spec : Prop :=
  ∀ n, (P9819778768384469639.a n : ℤ) = A074512 n

end A074512

/-! ## A074512.P15028581072809611438

`or(1, 4^n+6^n)`
-/

namespace A074512.P15028581072809611438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 ^ n + 6 ^ n)

end

end A074512.P15028581072809611438

namespace A074512

/-- `or(1, 4^n+6^n)` -/
def P15028581072809611438.Spec : Prop :=
  ∀ n, (P15028581072809611438.a n : ℤ) = A074512 n

end A074512

/-! ## A074512.P8148487980655986320

`xor(1, 4^n+6^n)`
-/

namespace A074512.P8148487980655986320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 ^ n + 6 ^ n)

end

end A074512.P8148487980655986320

namespace A074512

/-- `xor(1, 4^n+6^n)` -/
def P8148487980655986320.Spec : Prop :=
  ∀ n, (P8148487980655986320.a n : ℤ) = A074512 n

end A074512

/-! ## A074512.P16196985523457981452

`6^n-xor(4^n, -1)`
-/

namespace A074512.P16196985523457981452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - Int.xor (4 ^ n : ℤ) (-1)

end

end A074512.P16196985523457981452

namespace A074512

/-- `6^n-xor(4^n, -1)` -/
def P16196985523457981452.Spec : Prop :=
  ∀ n, P16196985523457981452.a n = A074512 n

end A074512

/-!
# A074513: a(n) = 1^n + 4^n + 7^n.

The programs for A074513, the canonical program `A074513.P6713864320669486437` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074513 has offset 0).

The definition of A074513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+7^n` (program `A074513.P6713864320669486437`, by `A074513.P6713864320669486437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074513.P17856449544483658505

`ogf((3-24x+39x^2)/(1-12x+39x^2-28x^3))`
-/

namespace A074513.P17856449544483658505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24, 39] [1, -12, 39, -28] n

end

end A074513.P17856449544483658505

namespace A074513

/-- `ogf((3-24x+39x^2)/(1-12x+39x^2-28x^3))` -/
def P17856449544483658505.Spec : Prop :=
  ∀ n, P17856449544483658505.a n = A074513 n

end A074513

/-! ## A074513.P6713864320669486437

`1^n+4^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074513

/-- `1^n+4^n+7^n` -/
def P6713864320669486437.Spec : Prop :=
  ∀ n, (P6713864320669486437.a n : ℤ) = A074513 n

theorem P6713864320669486437.correct : P6713864320669486437.Spec := by
  intro n
  simp only [A074513]

end A074513

/-! ## A074513.P9049676673286366844

`11*a(n-1)-28*a(n-2)+18` with `a(0)=3, a(1)=12`
-/

namespace A074513.P9049676673286366844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12] fun n a =>
  11 * a (n - 1) - 28 * a (n - 2) + 18

end

end A074513.P9049676673286366844

namespace A074513

/-- `11*a(n-1)-28*a(n-2)+18` -/
def P9049676673286366844.Spec : Prop :=
  ∀ n, P9049676673286366844.a n = A074513 n

theorem P9049676673286366844.correct : P9049676673286366844.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074513, Nat.add_sub_cancel, A074513.P9049676673286366844.a, A074513.P6713864320669486437.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074513, Nat.add_sub_cancel, A074513.P9049676673286366844.a, A074513.P6713864320669486437.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074513

/-! ## A074513.P872210207395151866

`∑{#}[2, (7-3*#)^n]`
-/

namespace A074513.P872210207395151866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (7 - (3 * k : ℤ)) ^ n

end

end A074513.P872210207395151866

namespace A074513

/-- `∑{#}[2, (7-3*#)^n]` -/
def P872210207395151866.Spec : Prop :=
  ∀ n, P872210207395151866.a n = A074513 n

end A074513

/-! ## A074513.P3565588946649379600

`abs(A000225(n)-A074534(n))`
-/

namespace A074513.P3565588946649379600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074534 n|

end

end A074513.P3565588946649379600

namespace A074513

/-- `abs(A000225(n)-A074534(n))` -/
def P3565588946649379600.Spec : Prop :=
  ∀ n, P3565588946649379600.a n = A074513 n

end A074513

/-! ## A074513.P1170543211750767754

`abs(A024049(n)-A074562(n))`
-/

namespace A074513.P1170543211750767754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - A074562 n|

end

end A074513.P1170543211750767754

namespace A074513

/-- `abs(A024049(n)-A074562(n))` -/
def P1170543211750767754.Spec : Prop :=
  ∀ n, P1170543211750767754.a n = A074513 n

end A074513

/-! ## A074513.P2054815501353994364

`record[A074613(A053645(n+1))+1]`
-/

namespace A074513.P2054815501353994364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074613 (A053645 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074513.P2054815501353994364

namespace A074513

/-- `record[A074613(A053645(n+1))+1]` -/
def P2054815501353994364.Spec : Prop :=
  ∀ n, P2054815501353994364.a n = A074513 n

end A074513

/-! ## A074513.P15188846314409919059

`Δ[A047852(n)+A047849(n)+n]`
-/

namespace A074513.P15188846314409919059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A047849 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074513.P15188846314409919059

namespace A074513

/-- `Δ[A047852(n)+A047849(n)+n]` -/
def P15188846314409919059.Spec : Prop :=
  ∀ n, P15188846314409919059.a n = A074513 n

end A074513

/-!
# A074514: a(n) = 1^n + 4^n + 8^n.

The programs for A074514, the canonical program `A074514.P5209020570279087244` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074514 has offset 0).

The definition of A074514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+8^n` (program `A074514.P5209020570279087244`, by `A074514.P5209020570279087244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074514.P14064177982361802939

`ogf((3-26x+44x^2)/(1-13x+44x^2-32x^3))`
-/

namespace A074514.P14064177982361802939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -26, 44] [1, -13, 44, -32] n

end

end A074514.P14064177982361802939

namespace A074514

/-- `ogf((3-26x+44x^2)/(1-13x+44x^2-32x^3))` -/
def P14064177982361802939.Spec : Prop :=
  ∀ n, P14064177982361802939.a n = A074514 n

end A074514

/-! ## A074514.P5209020570279087244

`1^n+4^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074514

/-- `1^n+4^n+8^n` -/
def P5209020570279087244.Spec : Prop :=
  ∀ n, (P5209020570279087244.a n : ℤ) = A074514 n

theorem P5209020570279087244.correct : P5209020570279087244.Spec := by
  intro n
  simp only [A074514]

end A074514

/-! ## A074514.P14676403573131544177

`12*a(n-1)-32*a(n-2)+21` with `a(0)=3, a(1)=13`
-/

namespace A074514.P14676403573131544177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  12 * a (n - 1) - 32 * a (n - 2) + 21

end

end A074514.P14676403573131544177

namespace A074514

/-- `12*a(n-1)-32*a(n-2)+21` -/
def P14676403573131544177.Spec : Prop :=
  ∀ n, P14676403573131544177.a n = A074514 n

theorem P14676403573131544177.correct : P14676403573131544177.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074514, Nat.add_sub_cancel, A074514.P14676403573131544177.a, A074514.P5209020570279087244.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074514, Nat.add_sub_cancel, A074514.P14676403573131544177.a, A074514.P5209020570279087244.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074514

/-! ## A074514.P4109851929876599615

`or(1, 4^n+8^n)`
-/

namespace A074514.P4109851929876599615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 ^ n + 8 ^ n)

end

end A074514.P4109851929876599615

namespace A074514

/-- `or(1, 4^n+8^n)` -/
def P4109851929876599615.Spec : Prop :=
  ∀ n, (P4109851929876599615.a n : ℤ) = A074514 n

end A074514

/-! ## A074514.P3469552005357160542

`xor(1, 4^n+8^n)`
-/

namespace A074514.P3469552005357160542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 ^ n + 8 ^ n)

end

end A074514.P3469552005357160542

namespace A074514

/-- `xor(1, 4^n+8^n)` -/
def P3469552005357160542.Spec : Prop :=
  ∀ n, (P3469552005357160542.a n : ℤ) = A074514 n

end A074514

/-! ## A074514.P9695716189611902477

`lcm(4^n, 2^n+1)+1`
-/

namespace A074514.P9695716189611902477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (4 ^ n) (2 ^ n + 1) + 1

end

end A074514.P9695716189611902477

namespace A074514

/-- `lcm(4^n, 2^n+1)+1` -/
def P9695716189611902477.Spec : Prop :=
  ∀ n, (P9695716189611902477.a n : ℤ) = A074514 n

end A074514

/-! ## A074514.P13209370698035095176

`record[2*A098657(n)+1]`
-/

namespace A074514.P13209370698035095176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098657 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074514.P13209370698035095176

namespace A074514

/-- `record[2*A098657(n)+1]` -/
def P13209370698035095176.Spec : Prop :=
  ∀ n, P13209370698035095176.a n = A074514 n

end A074514

/-! ## A074514.P14973290315981667864

`abs(2^n-A034496(n))`
-/

namespace A074514.P14973290315981667864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034496 n|

end

end A074514.P14973290315981667864

namespace A074514

/-- `abs(2^n-A034496(n))` -/
def P14973290315981667864.Spec : Prop :=
  ∀ n, P14973290315981667864.a n = A074514 n

end A074514

/-! ## A074514.P12843110631648033385

`∑{d}[-a(n-1), A018252(#)^n]` with `a(0)=4`
-/

namespace A074514.P12843110631648033385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018252 d ^ n

end

end A074514.P12843110631648033385

namespace A074514

/-- `∑{d}[-a(n-1), A018252(#)^n]` -/
def P12843110631648033385.Spec : Prop :=
  ∀ n, P12843110631648033385.a n = A074514 n

end A074514

/-! ## A074514.P15996519650363151877

`record[A131575(3*n+1)+A000051(n)]`
-/

namespace A074514.P15996519650363151877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (3 * n + 1) + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074514.P15996519650363151877

namespace A074514

/-- `record[A131575(3*n+1)+A000051(n)]` -/
def P15996519650363151877.Spec : Prop :=
  ∀ n, P15996519650363151877.a n = A074514 n

end A074514

/-!
# A074515: a(n) = 1^n + 4^n + 9^n.

The programs for A074515, the canonical program `A074515.P11932211166948693284` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074515 has offset 0).

The definition of A074515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+9^n` (program `A074515.P11932211166948693284`, by `A074515.P11932211166948693284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074515.P2978623871607120257

`ogf((3-28x+49x^2)/(1-14x+49x^2-36x^3))`
-/

namespace A074515.P2978623871607120257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -28, 49] [1, -14, 49, -36] n

end

end A074515.P2978623871607120257

namespace A074515

/-- `ogf((3-28x+49x^2)/(1-14x+49x^2-36x^3))` -/
def P2978623871607120257.Spec : Prop :=
  ∀ n, P2978623871607120257.a n = A074515 n

end A074515

/-! ## A074515.P11932211166948693284

`1^n+4^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074515

/-- `1^n+4^n+9^n` -/
def P11932211166948693284.Spec : Prop :=
  ∀ n, (P11932211166948693284.a n : ℤ) = A074515 n

theorem P11932211166948693284.correct : P11932211166948693284.Spec := by
  intro n
  simp only [A074515]

end A074515

/-! ## A074515.P15737475065053550752

`13*a(n-1)-36*a(n-2)+24` with `a(0)=3, a(1)=14`
-/

namespace A074515.P15737475065053550752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14] fun n a =>
  13 * a (n - 1) - 36 * a (n - 2) + 24

end

end A074515.P15737475065053550752

namespace A074515

/-- `13*a(n-1)-36*a(n-2)+24` -/
def P15737475065053550752.Spec : Prop :=
  ∀ n, P15737475065053550752.a n = A074515 n

theorem P15737475065053550752.correct : P15737475065053550752.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074515, Nat.add_sub_cancel, A074515.P15737475065053550752.a, A074515.P11932211166948693284.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074515, Nat.add_sub_cancel, A074515.P15737475065053550752.a, A074515.P11932211166948693284.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074515

/-! ## A074515.P6025035685450299079

`∑{#}[2, ((#+1)^n)²]`
-/

namespace A074515.P6025035685450299079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ n) ^ 2

end

end A074515.P6025035685450299079

namespace A074515

/-- `∑{#}[2, ((#+1)^n)²]` -/
def P6025035685450299079.Spec : Prop :=
  ∀ n, (P6025035685450299079.a n : ℤ) = A074515 n

end A074515

/-! ## A074515.P1128250904978856352

`9^n-xor(4^n, -1)`
-/

namespace A074515.P1128250904978856352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - Int.xor (4 ^ n : ℤ) (-1)

end

end A074515.P1128250904978856352

namespace A074515

/-- `9^n-xor(4^n, -1)` -/
def P1128250904978856352.Spec : Prop :=
  ∀ n, P1128250904978856352.a n = A074515 n

end A074515

/-! ## A074515.P9150116414112892512

`1+record[(-3)^n]+4^n`
-/

namespace A074515.P9150116414112892512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (4 ^ n : ℤ)

end

end A074515.P9150116414112892512

namespace A074515

/-- `1+record[(-3)^n]+4^n` -/
def P9150116414112892512.Spec : Prop :=
  ∀ n, P9150116414112892512.a n = A074515 n

end A074515

/-! ## A074515.P5106468278851422585

`A001550(2*n)`
-/

namespace A074515.P5106468278851422585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (2 * n)

end

end A074515.P5106468278851422585

namespace A074515

/-- `A001550(2*n)` -/
def P5106468278851422585.Spec : Prop :=
  ∀ n, P5106468278851422585.a n = A074515 n

end A074515

/-! ## A074515.P16583840895682960652

`A135399(2*n)`
-/

namespace A074515.P16583840895682960652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135399 (2 * n)

end

end A074515.P16583840895682960652

namespace A074515

/-- `A135399(2*n)` -/
def P16583840895682960652.Spec : Prop :=
  ∀ n, P16583840895682960652.a n = A074515 n

end A074515

/-! ## A074515.P10817432735296928417

`or(2, A155620(n))`
-/

namespace A074515.P10817432735296928417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155620 n)

end

end A074515.P10817432735296928417

namespace A074515

/-- `or(2, A155620(n))` -/
def P10817432735296928417.Spec : Prop :=
  ∀ n, P10817432735296928417.a n = A074515 n

end A074515

/-! ## A074515.P13407936560454311153

`record[A001550(and(n, n+1))]`
-/

namespace A074515.P13407936560454311153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074515.P13407936560454311153

namespace A074515

/-- `record[A001550(and(n, n+1))]` -/
def P13407936560454311153.Spec : Prop :=
  ∀ n, P13407936560454311153.a n = A074515 n

end A074515

/-! ## A074515.P6492778567960449867

`record[A001550(n%or(1, n))]`
-/

namespace A074515.P6492778567960449867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074515.P6492778567960449867

namespace A074515

/-- `record[A001550(n%or(1, n))]` -/
def P6492778567960449867.Spec : Prop :=
  ∀ n, P6492778567960449867.a n = A074515 n

end A074515

/-! ## A074515.P13003976085532081316

`record[A000051(n)+(-3)^n]`
-/

namespace A074515.P13003976085532081316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074515.P13003976085532081316

namespace A074515

/-- `record[A000051(n)+(-3)^n]` -/
def P13003976085532081316.Spec : Prop :=
  ∀ n, P13003976085532081316.a n = A074515 n

end A074515

/-! ## A074515.P14536602077741993161

`∑{d}[-a(n-1), A000005(#)^(2*n)]` with `a(0)=4`
-/

namespace A074515.P14536602077741993161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d ^ (2 * n)

end

end A074515.P14536602077741993161

namespace A074515

/-- `∑{d}[-a(n-1), A000005(#)^(2*n)]` -/
def P14536602077741993161.Spec : Prop :=
  ∀ n, P14536602077741993161.a n = A074515 n

end A074515

/-!
# A074516: a(n) = 1^n + 5^n + 6^n.

The programs for A074516, the canonical program `A074516.P495637833087846535` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074516 has offset 0).

The definition of A074516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+6^n` (program `A074516.P495637833087846535`, by `A074516.P495637833087846535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074516.P7871408817476328494

`5^n+6^n+1`
-/

namespace A074516.P7871408817476328494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + 6 ^ n + 1

end

end A074516.P7871408817476328494

namespace A074516

/-- `5^n+6^n+1` -/
def P7871408817476328494.Spec : Prop :=
  ∀ n, (P7871408817476328494.a n : ℤ) = A074516 n

theorem P7871408817476328494.correct : P7871408817476328494.Spec := by
  intro n
  simp only [A074516, Nat.add_sub_cancel, A074516.P7871408817476328494.a, A074516.P495637833087846535.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074516

/-! ## A074516.P17765834556215264755

`ogf((3-24x+41x^2)/(1-12x+41x^2-30x^3))`
-/

namespace A074516.P17765834556215264755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24, 41] [1, -12, 41, -30] n

end

end A074516.P17765834556215264755

namespace A074516

/-- `ogf((3-24x+41x^2)/(1-12x+41x^2-30x^3))` -/
def P17765834556215264755.Spec : Prop :=
  ∀ n, P17765834556215264755.a n = A074516 n

end A074516

/-! ## A074516.P495637833087846535

`1^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074516

/-- `1^n+5^n+6^n` -/
def P495637833087846535.Spec : Prop :=
  ∀ n, (P495637833087846535.a n : ℤ) = A074516 n

theorem P495637833087846535.correct : P495637833087846535.Spec := by
  intro n
  simp only [A074516]

end A074516

/-! ## A074516.P15249871026185888739

`11*a(n-1)-30*a(n-2)+20` with `a(0)=3, a(1)=12`
-/

namespace A074516.P15249871026185888739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12] fun n a =>
  11 * a (n - 1) - 30 * a (n - 2) + 20

end

end A074516.P15249871026185888739

namespace A074516

/-- `11*a(n-1)-30*a(n-2)+20` -/
def P15249871026185888739.Spec : Prop :=
  ∀ n, P15249871026185888739.a n = A074516 n

theorem P15249871026185888739.correct : P15249871026185888739.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074516, Nat.add_sub_cancel, A074516.P15249871026185888739.a, A074516.P495637833087846535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074516, Nat.add_sub_cancel, A074516.P15249871026185888739.a, A074516.P495637833087846535.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074516

/-! ## A074516.P14004614369479732153

`abs(xor(-1, A074615(n)))`
-/

namespace A074516.P14004614369479732153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A074615 n)|

end

end A074516.P14004614369479732153

namespace A074516

/-- `abs(xor(-1, A074615(n)))` -/
def P14004614369479732153.Spec : Prop :=
  ∀ n, P14004614369479732153.a n = A074516 n

end A074516

/-! ## A074516.P11282829940700509368

`record[A074615(A025480(n))+1]`
-/

namespace A074516.P11282829940700509368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074615 (A025480 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074516.P11282829940700509368

namespace A074516

/-- `record[A074615(A025480(n))+1]` -/
def P11282829940700509368.Spec : Prop :=
  ∀ n, P11282829940700509368.a n = A074516 n

end A074516

/-! ## A074516.P9935320315075672007

`Δ[A003464(n)+A003463(n)+n]`
-/

namespace A074516.P9935320315075672007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074516.P9935320315075672007

namespace A074516

/-- `Δ[A003464(n)+A003463(n)+n]` -/
def P9935320315075672007.Spec : Prop :=
  ∀ n, P9935320315075672007.a n = A074516 n

end A074516

/-! ## A074516.P9058337416407990145

`∏{e}[A049544(n+1), A074615(n)+#]`
-/

namespace A074516.P9058337416407990145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074615 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074516.P9058337416407990145

namespace A074516

/-- `∏{e}[A049544(n+1), A074615(n)+#]` -/
def P9058337416407990145.Spec : Prop :=
  ∀ n, P9058337416407990145.a n = A074516 n

end A074516

/-! ## A074516.P17610156234490369499

`∏{e}[A049568(n+1), A074615(n)+#]`
-/

namespace A074516.P17610156234490369499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074615 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074516.P17610156234490369499

namespace A074516

/-- `∏{e}[A049568(n+1), A074615(n)+#]` -/
def P17610156234490369499.Spec : Prop :=
  ∀ n, P17610156234490369499.a n = A074516 n

end A074516

/-! ## A074516.P10311996013017311971

`∏{e}[A059264(n+1), A074615(n)+#]`
-/

namespace A074516.P10311996013017311971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074615 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074516.P10311996013017311971

namespace A074516

/-- `∏{e}[A059264(n+1), A074615(n)+#]` -/
def P10311996013017311971.Spec : Prop :=
  ∀ n, P10311996013017311971.a n = A074516 n

end A074516

/-! ## A074516.P14088187321284423820

`∏{e}[A216484(n+1), A074615(n)+#]`
-/

namespace A074516.P14088187321284423820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074615 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074516.P14088187321284423820

namespace A074516

/-- `∏{e}[A216484(n+1), A074615(n)+#]` -/
def P14088187321284423820.Spec : Prop :=
  ∀ n, P14088187321284423820.a n = A074516 n

end A074516

/-!
# A074517: a(n) = 1^n + 5^n + 7^n.

The programs for A074517, the canonical program `A074517.P12301603146598015912` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074517 has offset 0).

The definition of A074517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+7^n` (program `A074517.P12301603146598015912`, by `A074517.P12301603146598015912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074517.P16041974221547452942

`ogf((3-26x+47x^2)/(1-13x+47x^2-35x^3))`
-/

namespace A074517.P16041974221547452942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -26, 47] [1, -13, 47, -35] n

end

end A074517.P16041974221547452942

namespace A074517

/-- `ogf((3-26x+47x^2)/(1-13x+47x^2-35x^3))` -/
def P16041974221547452942.Spec : Prop :=
  ∀ n, P16041974221547452942.a n = A074517 n

end A074517

/-! ## A074517.P12301603146598015912

`1^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074517

/-- `1^n+5^n+7^n` -/
def P12301603146598015912.Spec : Prop :=
  ∀ n, (P12301603146598015912.a n : ℤ) = A074517 n

theorem P12301603146598015912.correct : P12301603146598015912.Spec := by
  intro n
  simp only [A074517]

end A074517

/-! ## A074517.P3263064876265439327

`12*a(n-1)-35*a(n-2)+24` with `a(0)=3, a(1)=13`
-/

namespace A074517.P3263064876265439327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  12 * a (n - 1) - 35 * a (n - 2) + 24

end

end A074517.P3263064876265439327

namespace A074517

/-- `12*a(n-1)-35*a(n-2)+24` -/
def P3263064876265439327.Spec : Prop :=
  ∀ n, P3263064876265439327.a n = A074517 n

theorem P3263064876265439327.correct : P3263064876265439327.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074517, Nat.add_sub_cancel, A074517.P3263064876265439327.a, A074517.P12301603146598015912.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074517, Nat.add_sub_cancel, A074517.P3263064876265439327.a, A074517.P12301603146598015912.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074517

/-! ## A074517.P16746610909226224256

`or(1, 5^n+7^n)`
-/

namespace A074517.P16746610909226224256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 ^ n + 7 ^ n)

end

end A074517.P16746610909226224256

namespace A074517

/-- `or(1, 5^n+7^n)` -/
def P16746610909226224256.Spec : Prop :=
  ∀ n, (P16746610909226224256.a n : ℤ) = A074517 n

end A074517

/-! ## A074517.P17934580451100276848

`xor(1, 5^n+7^n)`
-/

namespace A074517.P17934580451100276848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 ^ n + 7 ^ n)

end

end A074517.P17934580451100276848

namespace A074517

/-- `xor(1, 5^n+7^n)` -/
def P17934580451100276848.Spec : Prop :=
  ∀ n, (P17934580451100276848.a n : ℤ) = A074517 n

end A074517

/-!
# A074518: a(n) = 1^n + 5^n + 8^n.

The programs for A074518, the canonical program `A074518.P14675353483285050966` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074518 has offset 0).

The definition of A074518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+8^n` (program `A074518.P14675353483285050966`, by `A074518.P14675353483285050966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074518.P4884645885919081064

`ogf((3-28x+53x^2)/(1-14x+53x^2-40x^3))`
-/

namespace A074518.P4884645885919081064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -28, 53] [1, -14, 53, -40] n

end

end A074518.P4884645885919081064

namespace A074518

/-- `ogf((3-28x+53x^2)/(1-14x+53x^2-40x^3))` -/
def P4884645885919081064.Spec : Prop :=
  ∀ n, P4884645885919081064.a n = A074518 n

end A074518

/-! ## A074518.P14675353483285050966

`1^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074518

/-- `1^n+5^n+8^n` -/
def P14675353483285050966.Spec : Prop :=
  ∀ n, (P14675353483285050966.a n : ℤ) = A074518 n

theorem P14675353483285050966.correct : P14675353483285050966.Spec := by
  intro n
  simp only [A074518]

end A074518

/-! ## A074518.P9263316717786065747

`13*a(n-1)-40*a(n-2)+28` with `a(0)=3, a(1)=14`
-/

namespace A074518.P9263316717786065747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14] fun n a =>
  13 * a (n - 1) - 40 * a (n - 2) + 28

end

end A074518.P9263316717786065747

namespace A074518

/-- `13*a(n-1)-40*a(n-2)+28` -/
def P9263316717786065747.Spec : Prop :=
  ∀ n, P9263316717786065747.a n = A074518 n

theorem P9263316717786065747.correct : P9263316717786065747.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074518, Nat.add_sub_cancel, A074518.P9263316717786065747.a, A074518.P14675353483285050966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074518, Nat.add_sub_cancel, A074518.P9263316717786065747.a, A074518.P14675353483285050966.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074518

/-! ## A074518.P6688387385587302611

`or(5^n+1, 8^n)`
-/

namespace A074518.P6688387385587302611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (5 ^ n + 1) (8 ^ n)

end

end A074518.P6688387385587302611

namespace A074518

/-- `or(5^n+1, 8^n)` -/
def P6688387385587302611.Spec : Prop :=
  ∀ n, (P6688387385587302611.a n : ℤ) = A074518 n

end A074518

/-! ## A074518.P2257086362459768495

`xor(5^n+1, 8^n)`
-/

namespace A074518.P2257086362459768495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (5 ^ n + 1) (8 ^ n)

end

end A074518.P2257086362459768495

namespace A074518

/-- `xor(5^n+1, 8^n)` -/
def P2257086362459768495.Spec : Prop :=
  ∀ n, (P2257086362459768495.a n : ℤ) = A074518 n

end A074518

/-! ## A074518.P8168950248320950173

`abs(A024075(n)-A074574(n))`
-/

namespace A074518.P8168950248320950173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024075 n - A074574 n|

end

end A074518.P8168950248320950173

namespace A074518

/-- `abs(A024075(n)-A074574(n))` -/
def P8168950248320950173.Spec : Prop :=
  ∀ n, P8168950248320950173.a n = A074518 n

end A074518

/-! ## A074518.P18237564376423458419

`Δ[A023001(n)+A003463(n)+n]`
-/

namespace A074518.P18237564376423458419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074518.P18237564376423458419

namespace A074518

/-- `Δ[A023001(n)+A003463(n)+n]` -/
def P18237564376423458419.Spec : Prop :=
  ∀ n, P18237564376423458419.a n = A074518 n

end A074518

/-! ## A074518.P17928476056927092793

`Δ[A047853(n)+A003463(n)+n]`
-/

namespace A074518.P17928476056927092793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n + A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074518.P17928476056927092793

namespace A074518

/-- `Δ[A047853(n)+A003463(n)+n]` -/
def P17928476056927092793.Spec : Prop :=
  ∀ n, P17928476056927092793.a n = A074518 n

end A074518

/-! ## A074518.P16137058013685192921

`Δ[A047850(n)+A023001(n)+n]`
-/

namespace A074518.P16137058013685192921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + A023001 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074518.P16137058013685192921

namespace A074518

/-- `Δ[A047850(n)+A023001(n)+n]` -/
def P16137058013685192921.Spec : Prop :=
  ∀ n, P16137058013685192921.a n = A074518 n

end A074518

/-!
# A074519: a(n) = 1^n + 5^n + 9^n.

The programs for A074519, the canonical program `A074519.P9733245345505110360` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074519 has offset 0).

The definition of A074519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+9^n` (program `A074519.P9733245345505110360`, by `A074519.P9733245345505110360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074519.P3233360887712239926

`ogf((3-30x+59x^2)/(1-15x+59x^2-45x^3))`
-/

namespace A074519.P3233360887712239926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 59] [1, -15, 59, -45] n

end

end A074519.P3233360887712239926

namespace A074519

/-- `ogf((3-30x+59x^2)/(1-15x+59x^2-45x^3))` -/
def P3233360887712239926.Spec : Prop :=
  ∀ n, P3233360887712239926.a n = A074519 n

end A074519

/-! ## A074519.P9733245345505110360

`1^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074519

/-- `1^n+5^n+9^n` -/
def P9733245345505110360.Spec : Prop :=
  ∀ n, (P9733245345505110360.a n : ℤ) = A074519 n

theorem P9733245345505110360.correct : P9733245345505110360.Spec := by
  intro n
  simp only [A074519]

end A074519

/-! ## A074519.P13508775004096129433

`14*a(n-1)-45*a(n-2)+32` with `a(0)=3, a(1)=15`
-/

namespace A074519.P13508775004096129433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15] fun n a =>
  14 * a (n - 1) - 45 * a (n - 2) + 32

end

end A074519.P13508775004096129433

namespace A074519

/-- `14*a(n-1)-45*a(n-2)+32` -/
def P13508775004096129433.Spec : Prop :=
  ∀ n, P13508775004096129433.a n = A074519 n

theorem P13508775004096129433.correct : P13508775004096129433.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074519, Nat.add_sub_cancel, A074519.P13508775004096129433.a, A074519.P9733245345505110360.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074519, Nat.add_sub_cancel, A074519.P13508775004096129433.a, A074519.P9733245345505110360.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074519

/-! ## A074519.P14147679042036479197

`or(1, 9^n+5^n)`
-/

namespace A074519.P14147679042036479197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (9 ^ n + 5 ^ n)

end

end A074519.P14147679042036479197

namespace A074519

/-- `or(1, 9^n+5^n)` -/
def P14147679042036479197.Spec : Prop :=
  ∀ n, (P14147679042036479197.a n : ℤ) = A074519 n

end A074519

/-! ## A074519.P15788330779526109775

`xor(1, 5^n+9^n)`
-/

namespace A074519.P15788330779526109775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 ^ n + 9 ^ n)

end

end A074519.P15788330779526109775

namespace A074519

/-- `xor(1, 5^n+9^n)` -/
def P15788330779526109775.Spec : Prop :=
  ∀ n, (P15788330779526109775.a n : ℤ) = A074519 n

end A074519

/-! ## A074519.P15567093864645893828

`record[A155636(A213714(n))+2]`
-/

namespace A074519.P15567093864645893828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155636 (A213714 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074519.P15567093864645893828

namespace A074519

/-- `record[A155636(A213714(n))+2]` -/
def P15567093864645893828.Spec : Prop :=
  ∀ n, P15567093864645893828.a n = A074519 n

end A074519

/-! ## A074519.P8840934614730952432

`record[A155636(A234017(n))+2]`
-/

namespace A074519.P8840934614730952432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155636 (A234017 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074519.P8840934614730952432

namespace A074519

/-- `record[A155636(A234017(n))+2]` -/
def P8840934614730952432.Spec : Prop :=
  ∀ n, P8840934614730952432.a n = A074519 n

end A074519

/-! ## A074519.P5722834480458766939

`Δ[A003463(n)+A002452(n)+n]`
-/

namespace A074519.P5722834480458766939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002452 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074519.P5722834480458766939

namespace A074519

/-- `Δ[A003463(n)+A002452(n)+n]` -/
def P5722834480458766939.Spec : Prop :=
  ∀ n, P5722834480458766939.a n = A074519 n

end A074519

/-!
# A074520: a(n) = 1^n + 6^n + 7^n.

The programs for A074520, the canonical program `A074520.P13529409184195776871` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074520 has offset 0).

The definition of A074520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+6^n+7^n` (program `A074520.P13529409184195776871`, by `A074520.P13529409184195776871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074520.P17491702654213781283

`1+6^n+7^n`
-/

namespace A074520.P17491702654213781283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 6 ^ n + 7 ^ n

end

end A074520.P17491702654213781283

namespace A074520

/-- `1+6^n+7^n` -/
def P17491702654213781283.Spec : Prop :=
  ∀ n, (P17491702654213781283.a n : ℤ) = A074520 n

theorem P17491702654213781283.correct : P17491702654213781283.Spec := by
  intro n
  simp only [A074520, Nat.add_sub_cancel, A074520.P17491702654213781283.a, A074520.P13529409184195776871.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074520

/-! ## A074520.P6148703038926903397

`ogf((3-28x+55x^2)/(1-14x+55x^2-42x^3))`
-/

namespace A074520.P6148703038926903397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -28, 55] [1, -14, 55, -42] n

end

end A074520.P6148703038926903397

namespace A074520

/-- `ogf((3-28x+55x^2)/(1-14x+55x^2-42x^3))` -/
def P6148703038926903397.Spec : Prop :=
  ∀ n, P6148703038926903397.a n = A074520 n

end A074520

/-! ## A074520.P13529409184195776871

`1^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074520

/-- `1^n+6^n+7^n` -/
def P13529409184195776871.Spec : Prop :=
  ∀ n, (P13529409184195776871.a n : ℤ) = A074520 n

theorem P13529409184195776871.correct : P13529409184195776871.Spec := by
  intro n
  simp only [A074520]

end A074520

/-! ## A074520.P17917308232333079529

`13*a(n-1)-42*a(n-2)+30` with `a(0)=3, a(1)=14`
-/

namespace A074520.P17917308232333079529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14] fun n a =>
  13 * a (n - 1) - 42 * a (n - 2) + 30

end

end A074520.P17917308232333079529

namespace A074520

/-- `13*a(n-1)-42*a(n-2)+30` -/
def P17917308232333079529.Spec : Prop :=
  ∀ n, P17917308232333079529.a n = A074520 n

theorem P17917308232333079529.correct : P17917308232333079529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074520, Nat.add_sub_cancel, A074520.P17917308232333079529.a, A074520.P13529409184195776871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074520, Nat.add_sub_cancel, A074520.P17917308232333079529.a, A074520.P13529409184195776871.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074520

/-! ## A074520.P9344809658177492922

`abs(A024049(n)-A074571(n))`
-/

namespace A074520.P9344809658177492922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - A074571 n|

end

end A074520.P9344809658177492922

namespace A074520

/-- `abs(A024049(n)-A074571(n))` -/
def P9344809658177492922.Spec : Prop :=
  ∀ n, P9344809658177492922.a n = A074520 n

end A074520

/-! ## A074520.P10749487975352455817

`Δ[A023000(n)+A003464(n)+n]`
-/

namespace A074520.P10749487975352455817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A003464 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074520.P10749487975352455817

namespace A074520

/-- `Δ[A023000(n)+A003464(n)+n]` -/
def P10749487975352455817.Spec : Prop :=
  ∀ n, P10749487975352455817.a n = A074520 n

end A074520

/-!
# A074521: a(n) = 1^n + 6^n + 8^n.

The programs for A074521, the canonical program `A074521.P7181502212402933271` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074521 has offset 0).

The definition of A074521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+6^n+8^n` (program `A074521.P7181502212402933271`, by `A074521.P7181502212402933271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074521.P9411283341221675580

`ogf((3-30x+62x^2)/(1-15x+62x^2-48x^3))`
-/

namespace A074521.P9411283341221675580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 62] [1, -15, 62, -48] n

end

end A074521.P9411283341221675580

namespace A074521

/-- `ogf((3-30x+62x^2)/(1-15x+62x^2-48x^3))` -/
def P9411283341221675580.Spec : Prop :=
  ∀ n, P9411283341221675580.a n = A074521 n

end A074521

/-! ## A074521.P7181502212402933271

`1^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074521

/-- `1^n+6^n+8^n` -/
def P7181502212402933271.Spec : Prop :=
  ∀ n, (P7181502212402933271.a n : ℤ) = A074521 n

theorem P7181502212402933271.correct : P7181502212402933271.Spec := by
  intro n
  simp only [A074521]

end A074521

/-! ## A074521.P8468858627412026952

`14*a(n-1)-48*a(n-2)+35` with `a(0)=3, a(1)=15`
-/

namespace A074521.P8468858627412026952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15] fun n a =>
  14 * a (n - 1) - 48 * a (n - 2) + 35

end

end A074521.P8468858627412026952

namespace A074521

/-- `14*a(n-1)-48*a(n-2)+35` -/
def P8468858627412026952.Spec : Prop :=
  ∀ n, P8468858627412026952.a n = A074521 n

theorem P8468858627412026952.correct : P8468858627412026952.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074521, Nat.add_sub_cancel, A074521.P8468858627412026952.a, A074521.P7181502212402933271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074521, Nat.add_sub_cancel, A074521.P8468858627412026952.a, A074521.P7181502212402933271.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074521

/-! ## A074521.P4896950388964571008

`or(1, 6^n+8^n)`
-/

namespace A074521.P4896950388964571008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 ^ n + 8 ^ n)

end

end A074521.P4896950388964571008

namespace A074521

/-- `or(1, 6^n+8^n)` -/
def P4896950388964571008.Spec : Prop :=
  ∀ n, (P4896950388964571008.a n : ℤ) = A074521 n

end A074521

/-! ## A074521.P1392186210597316913

`xor(1, 8^n+6^n)`
-/

namespace A074521.P1392186210597316913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 ^ n + 6 ^ n)

end

end A074521.P1392186210597316913

namespace A074521

/-- `xor(1, 8^n+6^n)` -/
def P1392186210597316913.Spec : Prop :=
  ∀ n, (P1392186210597316913.a n : ℤ) = A074521 n

end A074521

/-! ## A074521.P3154511546585093643

`abs(xor(A020985(n), A074620(n)))`
-/

namespace A074521.P3154511546585093643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A020985 n) (A074620 n)|

end

end A074521.P3154511546585093643

namespace A074521

/-- `abs(xor(A020985(n), A074620(n)))` -/
def P3154511546585093643.Spec : Prop :=
  ∀ n, P3154511546585093643.a n = A074521 n

end A074521

/-! ## A074521.P18423620304737761556

`record[A026549(n)+A094014(n)+1]`
-/

namespace A074521.P18423620304737761556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n + (A094014 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074521.P18423620304737761556

namespace A074521

/-- `record[A026549(n)+A094014(n)+1]` -/
def P18423620304737761556.Spec : Prop :=
  ∀ n, P18423620304737761556.a n = A074521 n

end A074521

/-! ## A074521.P7561098998300031813

`Δ[A023001(n)+A003464(n)+n]`
-/

namespace A074521.P7561098998300031813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A003464 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074521.P7561098998300031813

namespace A074521

/-- `Δ[A023001(n)+A003464(n)+n]` -/
def P7561098998300031813.Spec : Prop :=
  ∀ n, P7561098998300031813.a n = A074521 n

end A074521

/-!
# A074522: a(n) = 1^n + 6^n + 9^n.

The programs for A074522, the canonical program `A074522.P3793011620967857992` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074522 has offset 0).

The definition of A074522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+6^n+9^n` (program `A074522.P3793011620967857992`, by `A074522.P3793011620967857992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074522.P8005435310468667597

`ogf((3-32x+69x^2)/(1-16x+69x^2-54x^3))`
-/

namespace A074522.P8005435310468667597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 69] [1, -16, 69, -54] n

end

end A074522.P8005435310468667597

namespace A074522

/-- `ogf((3-32x+69x^2)/(1-16x+69x^2-54x^3))` -/
def P8005435310468667597.Spec : Prop :=
  ∀ n, P8005435310468667597.a n = A074522 n

end A074522

/-! ## A074522.P3793011620967857992

`1^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074522

/-- `1^n+6^n+9^n` -/
def P3793011620967857992.Spec : Prop :=
  ∀ n, (P3793011620967857992.a n : ℤ) = A074522 n

theorem P3793011620967857992.correct : P3793011620967857992.Spec := by
  intro n
  simp only [A074522]

end A074522

/-! ## A074522.P6788963251485465658

`15*a(n-1)-54*a(n-2)+40` with `a(0)=3, a(1)=16`
-/

namespace A074522.P6788963251485465658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16] fun n a =>
  15 * a (n - 1) - 54 * a (n - 2) + 40

end

end A074522.P6788963251485465658

namespace A074522

/-- `15*a(n-1)-54*a(n-2)+40` -/
def P6788963251485465658.Spec : Prop :=
  ∀ n, P6788963251485465658.a n = A074522 n

theorem P6788963251485465658.correct : P6788963251485465658.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074522, Nat.add_sub_cancel, A074522.P6788963251485465658.a, A074522.P3793011620967857992.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074522, Nat.add_sub_cancel, A074522.P6788963251485465658.a, A074522.P3793011620967857992.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074522

/-! ## A074522.P39702485480718252

`-xor(-1, A074621(n))`
-/

namespace A074522.P39702485480718252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A074621 n)

end

end A074522.P39702485480718252

namespace A074522

/-- `-xor(-1, A074621(n))` -/
def P39702485480718252.Spec : Prop :=
  ∀ n, P39702485480718252.a n = A074522 n

end A074522

/-! ## A074522.P5221986740349871115

`abs(A000225(n)-A074543(n))`
-/

namespace A074522.P5221986740349871115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074543 n|

end

end A074522.P5221986740349871115

namespace A074522

/-- `abs(A000225(n)-A074543(n))` -/
def P5221986740349871115.Spec : Prop :=
  ∀ n, P5221986740349871115.a n = A074522 n

end A074522

/-! ## A074522.P1836413744343628614

`abs(A024088(n)-A074579(n))`
-/

namespace A074522.P1836413744343628614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n - A074579 n|

end

end A074522.P1836413744343628614

namespace A074522

/-- `abs(A024088(n)-A074579(n))` -/
def P1836413744343628614.Spec : Prop :=
  ∀ n, P1836413744343628614.a n = A074522 n

end A074522

/-! ## A074522.P7108753643478433218

`∏{e}[A049544(n+1), A074621(n)+#]`
-/

namespace A074522.P7108753643478433218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P7108753643478433218

namespace A074522

/-- `∏{e}[A049544(n+1), A074621(n)+#]` -/
def P7108753643478433218.Spec : Prop :=
  ∀ n, P7108753643478433218.a n = A074522 n

end A074522

/-! ## A074522.P403044891320204924

`∏{e}[A049568(n+1), A074621(n)+#]`
-/

namespace A074522.P403044891320204924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P403044891320204924

namespace A074522

/-- `∏{e}[A049568(n+1), A074621(n)+#]` -/
def P403044891320204924.Spec : Prop :=
  ∀ n, P403044891320204924.a n = A074522 n

end A074522

/-! ## A074522.P323400943674156218

`∏{e}[A059264(n+1), A074621(n)+#]`
-/

namespace A074522.P323400943674156218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P323400943674156218

namespace A074522

/-- `∏{e}[A059264(n+1), A074621(n)+#]` -/
def P323400943674156218.Spec : Prop :=
  ∀ n, P323400943674156218.a n = A074522 n

end A074522

/-! ## A074522.P17179314275873165487

`∏{e}[A059668(n+1), A074621(n)+#]`
-/

namespace A074522.P17179314275873165487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P17179314275873165487

namespace A074522

/-- `∏{e}[A059668(n+1), A074621(n)+#]` -/
def P17179314275873165487.Spec : Prop :=
  ∀ n, P17179314275873165487.a n = A074522 n

end A074522

/-! ## A074522.P3481562222441156088

`∏{e}[A070183(n+1), A074621(n)+#]`
-/

namespace A074522.P3481562222441156088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P3481562222441156088

namespace A074522

/-- `∏{e}[A070183(n+1), A074621(n)+#]` -/
def P3481562222441156088.Spec : Prop :=
  ∀ n, P3481562222441156088.a n = A074522 n

end A074522

/-! ## A074522.P12311073774852463841

`∏{e}[A216484(n+1), A074621(n)+#]`
-/

namespace A074522.P12311073774852463841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P12311073774852463841

namespace A074522

/-- `∏{e}[A216484(n+1), A074621(n)+#]` -/
def P12311073774852463841.Spec : Prop :=
  ∀ n, P12311073774852463841.a n = A074522 n

end A074522

/-!
# A074523: a(n) = 1^n + 7^n + 8^n.

The programs for A074523, the canonical program `A074523.P14457316819938120650` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074523 has offset 0).

The definition of A074523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+7^n+8^n` (program `A074523.P14457316819938120650`, by `A074523.P14457316819938120650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074523.P6767001565584270886

`1+7^n+8^n`
-/

namespace A074523.P6767001565584270886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 7 ^ n + 8 ^ n

end

end A074523.P6767001565584270886

namespace A074523

/-- `1+7^n+8^n` -/
def P6767001565584270886.Spec : Prop :=
  ∀ n, (P6767001565584270886.a n : ℤ) = A074523 n

theorem P6767001565584270886.correct : P6767001565584270886.Spec := by
  intro n
  simp only [A074523, Nat.add_sub_cancel, A074523.P6767001565584270886.a, A074523.P14457316819938120650.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074523

/-! ## A074523.P2389244659331036606

`ogf((3-32x+71x^2)/(1-16x+71x^2-56x^3))`
-/

namespace A074523.P2389244659331036606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 71] [1, -16, 71, -56] n

end

end A074523.P2389244659331036606

namespace A074523

/-- `ogf((3-32x+71x^2)/(1-16x+71x^2-56x^3))` -/
def P2389244659331036606.Spec : Prop :=
  ∀ n, P2389244659331036606.a n = A074523 n

end A074523

/-! ## A074523.P14457316819938120650

`1^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074523

/-- `1^n+7^n+8^n` -/
def P14457316819938120650.Spec : Prop :=
  ∀ n, (P14457316819938120650.a n : ℤ) = A074523 n

theorem P14457316819938120650.correct : P14457316819938120650.Spec := by
  intro n
  simp only [A074523]

end A074523

/-! ## A074523.P853770936453684471

`15*a(n-1)-56*a(n-2)+42` with `a(0)=3, a(1)=16`
-/

namespace A074523.P853770936453684471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16] fun n a =>
  15 * a (n - 1) - 56 * a (n - 2) + 42

end

end A074523.P853770936453684471

namespace A074523

/-- `15*a(n-1)-56*a(n-2)+42` -/
def P853770936453684471.Spec : Prop :=
  ∀ n, P853770936453684471.a n = A074523 n

theorem P853770936453684471.correct : P853770936453684471.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074523, Nat.add_sub_cancel, A074523.P853770936453684471.a, A074523.P14457316819938120650.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074523, Nat.add_sub_cancel, A074523.P853770936453684471.a, A074523.P14457316819938120650.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074523

/-! ## A074523.P10064420184185412153

`xor(4, A074622(n)+5)`
-/

namespace A074523.P10064420184185412153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A074622 n + 5)

end

end A074523.P10064420184185412153

namespace A074523

/-- `xor(4, A074622(n)+5)` -/
def P10064420184185412153.Spec : Prop :=
  ∀ n, P10064420184185412153.a n = A074523 n

end A074523

/-! ## A074523.P15605876722048092468

`2*(1+A155655(n)/2)`
-/

namespace A074523.P15605876722048092468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (1 + (A155655 n : ℚ) / 2)

end

end A074523.P15605876722048092468

namespace A074523

/-- `2*(1+A155655(n)/2)` -/
def P15605876722048092468.Spec : Prop :=
  ∀ n, P15605876722048092468.a n = (A074523 n : ℚ)

theorem P15605876722048092468.correct : P15605876722048092468.Spec := by
  intro n
  simp only [A074523, Nat.add_sub_cancel, A074523.P15605876722048092468.a, A074523.P14457316819938120650.a, A155655, A155655.P4260104681183197795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074523

/-! ## A074523.P2136284258429595992

`record[A074622(A003986(n))+1]`
-/

namespace A074523.P2136284258429595992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074622 (A003986 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074523.P2136284258429595992

namespace A074523

/-- `record[A074622(A003986(n))+1]` -/
def P2136284258429595992.Spec : Prop :=
  ∀ n, P2136284258429595992.a n = A074523 n

end A074523

/-! ## A074523.P12366008455234154213

`record[A074622(A078898(n))+1]`
-/

namespace A074523.P12366008455234154213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074622 (A078898 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074523.P12366008455234154213

namespace A074523

/-- `record[A074622(A078898(n))+1]` -/
def P12366008455234154213.Spec : Prop :=
  ∀ n, P12366008455234154213.a n = A074523 n

end A074523

/-! ## A074523.P3910232554241587745

`record[A155655(A002262(n))+2]`
-/

namespace A074523.P3910232554241587745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155655 (A002262 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074523.P3910232554241587745

namespace A074523

/-- `record[A155655(A002262(n))+2]` -/
def P3910232554241587745.Spec : Prop :=
  ∀ n, P3910232554241587745.a n = A074523 n

end A074523

/-! ## A074523.P6668536114017096689

`abs(A000225(n)-A074544(n))`
-/

namespace A074523.P6668536114017096689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074544 n|

end

end A074523.P6668536114017096689

namespace A074523

/-- `abs(A000225(n)-A074544(n))` -/
def P6668536114017096689.Spec : Prop :=
  ∀ n, P6668536114017096689.a n = A074523 n

end A074523

/-! ## A074523.P15434022084259933990

`abs(A001553(n)-(A001555(n)+1))`
-/

namespace A074523.P15434022084259933990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - (A001555 n + 1)|

end

end A074523.P15434022084259933990

namespace A074523

/-- `abs(A001553(n)-(A001555(n)+1))` -/
def P15434022084259933990.Spec : Prop :=
  ∀ n, P15434022084259933990.a n = A074523 n

end A074523

/-! ## A074523.P9046803447245439870

`Δ[A023001(n)+A023000(n)+n]`
-/

namespace A074523.P9046803447245439870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A023000 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074523.P9046803447245439870

namespace A074523

/-- `Δ[A023001(n)+A023000(n)+n]` -/
def P9046803447245439870.Spec : Prop :=
  ∀ n, P9046803447245439870.a n = A074523 n

end A074523

/-! ## A074523.P16975618297844495768

`∏{e}[A049544(n+1), A074622(n)+#]`
-/

namespace A074523.P16975618297844495768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P16975618297844495768

namespace A074523

/-- `∏{e}[A049544(n+1), A074622(n)+#]` -/
def P16975618297844495768.Spec : Prop :=
  ∀ n, P16975618297844495768.a n = A074523 n

end A074523

/-! ## A074523.P15340161019509737010

`∏{e}[A049568(n+1), A074622(n)+#]`
-/

namespace A074523.P15340161019509737010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P15340161019509737010

namespace A074523

/-- `∏{e}[A049568(n+1), A074622(n)+#]` -/
def P15340161019509737010.Spec : Prop :=
  ∀ n, P15340161019509737010.a n = A074523 n

end A074523

/-! ## A074523.P15839692331985755627

`∏{e}[A059264(n+1), A074622(n)+#]`
-/

namespace A074523.P15839692331985755627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P15839692331985755627

namespace A074523

/-- `∏{e}[A059264(n+1), A074622(n)+#]` -/
def P15839692331985755627.Spec : Prop :=
  ∀ n, P15839692331985755627.a n = A074523 n

end A074523

/-! ## A074523.P17576337005189155243

`∏{e}[A059668(n+1), A074622(n)+#]`
-/

namespace A074523.P17576337005189155243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P17576337005189155243

namespace A074523

/-- `∏{e}[A059668(n+1), A074622(n)+#]` -/
def P17576337005189155243.Spec : Prop :=
  ∀ n, P17576337005189155243.a n = A074523 n

end A074523

/-!
# A074524: a(n) = 1^n + 7^n + 9^n.

The programs for A074524, the canonical program `A074524.P15745366741827391327` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074524 has offset 0).

The definition of A074524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+7^n+9^n` (program `A074524.P15745366741827391327`, by `A074524.P15745366741827391327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074524.P10592560517020984485

`ogf((3-34x+79x^2)/(1-17x+79x^2-63x^3))`
-/

namespace A074524.P10592560517020984485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -34, 79] [1, -17, 79, -63] n

end

end A074524.P10592560517020984485

namespace A074524

/-- `ogf((3-34x+79x^2)/(1-17x+79x^2-63x^3))` -/
def P10592560517020984485.Spec : Prop :=
  ∀ n, P10592560517020984485.a n = A074524 n

end A074524

/-! ## A074524.P15745366741827391327

`1^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074524

/-- `1^n+7^n+9^n` -/
def P15745366741827391327.Spec : Prop :=
  ∀ n, (P15745366741827391327.a n : ℤ) = A074524 n

theorem P15745366741827391327.correct : P15745366741827391327.Spec := by
  intro n
  simp only [A074524]

end A074524

/-! ## A074524.P11758128741763786228

`16*a(n-1)-63*a(n-2)+48` with `a(0)=3, a(1)=17`
-/

namespace A074524.P11758128741763786228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17] fun n a =>
  16 * a (n - 1) - 63 * a (n - 2) + 48

end

end A074524.P11758128741763786228

namespace A074524

/-- `16*a(n-1)-63*a(n-2)+48` -/
def P11758128741763786228.Spec : Prop :=
  ∀ n, P11758128741763786228.a n = A074524 n

theorem P11758128741763786228.correct : P11758128741763786228.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074524, Nat.add_sub_cancel, A074524.P11758128741763786228.a, A074524.P15745366741827391327.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074524, Nat.add_sub_cancel, A074524.P11758128741763786228.a, A074524.P15745366741827391327.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074524

/-! ## A074524.P5894856052122871963

`or(1, 9^n+7^n)`
-/

namespace A074524.P5894856052122871963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (9 ^ n + 7 ^ n)

end

end A074524.P5894856052122871963

namespace A074524

/-- `or(1, 9^n+7^n)` -/
def P5894856052122871963.Spec : Prop :=
  ∀ n, (P5894856052122871963.a n : ℤ) = A074524 n

end A074524

/-! ## A074524.P2403795835912005043

`xor(1, 9^n+7^n)`
-/

namespace A074524.P2403795835912005043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (9 ^ n + 7 ^ n)

end

end A074524.P2403795835912005043

namespace A074524

/-- `xor(1, 9^n+7^n)` -/
def P2403795835912005043.Spec : Prop :=
  ∀ n, (P2403795835912005043.a n : ℤ) = A074524 n

end A074524

/-! ## A074524.P1425726171579535720

`abs(8^n-1-A074580(n))`
-/

namespace A074524.P1425726171579535720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 ^ n : ℤ) - 1 - A074580 n|

end

end A074524.P1425726171579535720

namespace A074524

/-- `abs(8^n-1-A074580(n))` -/
def P1425726171579535720.Spec : Prop :=
  ∀ n, P1425726171579535720.a n = A074524 n

end A074524

/-! ## A074524.P7949504618361890805

`abs(2*n-(n+2)-A155656(n)-n)`
-/

namespace A074524.P7949504618361890805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (n + 2 : ℤ) - A155656 n - (n : ℤ)|

end

end A074524.P7949504618361890805

namespace A074524

/-- `abs(2*n-(n+2)-A155656(n)-n)` -/
def P7949504618361890805.Spec : Prop :=
  ∀ n, P7949504618361890805.a n = A074524 n

end A074524

/-!
# A074525: a(n) = 1^n + 8^n + 9^n.

The programs for A074525, the canonical program `A074525.P14199224158783527037` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074525 has offset 0).

The definition of A074525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+8^n+9^n` (program `A074525.P14199224158783527037`, by `A074525.P14199224158783527037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074525.P7588801518207324294

`ogf((3-36x+89x^2)/(1-18x+89x^2-72x^3))`
-/

namespace A074525.P7588801518207324294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -36, 89] [1, -18, 89, -72] n

end

end A074525.P7588801518207324294

namespace A074525

/-- `ogf((3-36x+89x^2)/(1-18x+89x^2-72x^3))` -/
def P7588801518207324294.Spec : Prop :=
  ∀ n, P7588801518207324294.a n = A074525 n

end A074525

/-! ## A074525.P14199224158783527037

`1^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074525

/-- `1^n+8^n+9^n` -/
def P14199224158783527037.Spec : Prop :=
  ∀ n, (P14199224158783527037.a n : ℤ) = A074525 n

theorem P14199224158783527037.correct : P14199224158783527037.Spec := by
  intro n
  simp only [A074525]

end A074525

/-! ## A074525.P10797513457370743999

`17*a(n-1)-72*a(n-2)+56` with `a(0)=3, a(1)=18`
-/

namespace A074525.P10797513457370743999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 18] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + 56

end

end A074525.P10797513457370743999

namespace A074525

/-- `17*a(n-1)-72*a(n-2)+56` -/
def P10797513457370743999.Spec : Prop :=
  ∀ n, P10797513457370743999.a n = A074525 n

theorem P10797513457370743999.correct : P10797513457370743999.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A074525, Nat.add_sub_cancel, A074525.P10797513457370743999.a, A074525.P14199224158783527037.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A074525, Nat.add_sub_cancel, A074525.P10797513457370743999.a, A074525.P14199224158783527037.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074525

/-! ## A074525.P12252715419931301883

`∑{#}[1, (9-#)^n]+1`
-/

namespace A074525.P12252715419931301883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (9 - (k : ℤ)) ^ n + 1

end

end A074525.P12252715419931301883

namespace A074525

/-- `∑{#}[1, (9-#)^n]+1` -/
def P12252715419931301883.Spec : Prop :=
  ∀ n, P12252715419931301883.a n = A074525 n

end A074525

/-! ## A074525.P7267298449295544226

`or(2, A155663(n))`
-/

namespace A074525.P7267298449295544226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155663 n)

end

end A074525.P7267298449295544226

namespace A074525

/-- `or(2, A155663(n))` -/
def P7267298449295544226.Spec : Prop :=
  ∀ n, P7267298449295544226.a n = A074525 n

end A074525

/-! ## A074525.P5557104230811868284

`abs(xor(-1, A074624(n)))`
-/

namespace A074525.P5557104230811868284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A074624 n)|

end

end A074525.P5557104230811868284

namespace A074525

/-- `abs(xor(-1, A074624(n)))` -/
def P5557104230811868284.Spec : Prop :=
  ∀ n, P5557104230811868284.a n = A074525 n

end A074525

/-! ## A074525.P12440172341540734140

`record[A155663(col(n))+2]`
-/

namespace A074525.P12440172341540734140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155663 (SequenceMachineLib.triCol n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074525.P12440172341540734140

namespace A074525

/-- `record[A155663(col(n))+2]` -/
def P12440172341540734140.Spec : Prop :=
  ∀ n, P12440172341540734140.a n = A074525 n

end A074525

/-! ## A074525.P4001449499430599326

`record[A074624(A155043(n))+1]`
-/

namespace A074525.P4001449499430599326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074624 (A155043 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074525.P4001449499430599326

namespace A074525

/-- `record[A074624(A155043(n))+1]` -/
def P4001449499430599326.Spec : Prop :=
  ∀ n, P4001449499430599326.a n = A074525 n

end A074525

/-!
# A074526: a(n) = 2^n + 3^n + 4^n.

The programs for A074526, the canonical program `A074526.P4630388288089685513` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074526 has offset 0).

The definition of A074526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+4^n` (program `A074526.P4630388288089685513`, by `A074526.P4630388288089685513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074526.P4630388288089685513

`2^n+3^n+4^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074526

/-- `2^n+3^n+4^n` -/
def P4630388288089685513.Spec : Prop :=
  ∀ n, (P4630388288089685513.a n : ℤ) = A074526 n

theorem P4630388288089685513.correct : P4630388288089685513.Spec := by
  intro n
  simp only [A074526]

end A074526

/-! ## A074526.P4026739332159612655

`ogf((3-18x+26x^2)/(1-9x+26x^2-24x^3))`
-/

namespace A074526.P4026739332159612655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -18, 26] [1, -9, 26, -24] n

end

end A074526.P4026739332159612655

namespace A074526

/-- `ogf((3-18x+26x^2)/(1-9x+26x^2-24x^3))` -/
def P4026739332159612655.Spec : Prop :=
  ∀ n, P4026739332159612655.a n = A074526 n

end A074526

/-! ## A074526.P5216195266321692644

`∑{#}[2, (2+#)^n]`
-/

namespace A074526.P5216195266321692644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 + k) ^ n

end

end A074526.P5216195266321692644

namespace A074526

/-- `∑{#}[2, (2+#)^n]` -/
def P5216195266321692644.Spec : Prop :=
  ∀ n, (P5216195266321692644.a n : ℤ) = A074526 n

end A074526

/-! ## A074526.P18257980292659851036

`abs(∑{#}[2, (4-#)^n])`
-/

namespace A074526.P18257980292659851036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ k ∈ Finset.range (f1 n + 1), (4 - (k : ℤ)) ^ n|

end

end A074526.P18257980292659851036

namespace A074526

/-- `abs(∑{#}[2, (4-#)^n])` -/
def P18257980292659851036.Spec : Prop :=
  ∀ n, P18257980292659851036.a n = A074526 n

end A074526

/-! ## A074526.P870449117612691573

`∑{#}[3, (4-#)^n]-1`
-/

namespace A074526.P870449117612691573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 - (k : ℤ)) ^ n - 1

end

end A074526.P870449117612691573

namespace A074526

/-- `∑{#}[3, (4-#)^n]-1` -/
def P870449117612691573.Spec : Prop :=
  ∀ n, P870449117612691573.a n = A074526 n

end A074526

/-! ## A074526.P13412046442311850579

`abs(1-A001551(n))`
-/

namespace A074526.P13412046442311850579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001551 n|

end

end A074526.P13412046442311850579

namespace A074526

/-- `abs(1-A001551(n))` -/
def P13412046442311850579.Spec : Prop :=
  ∀ n, P13412046442311850579.a n = A074526 n

end A074526

/-! ## A074526.P4750289246712778039

`abs(1-(A001550(n)+A000302(n)))`
-/

namespace A074526.P4750289246712778039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A001550 n + A000302 n)|

end

end A074526.P4750289246712778039

namespace A074526

/-- `abs(1-(A001550(n)+A000302(n)))` -/
def P4750289246712778039.Spec : Prop :=
  ∀ n, P4750289246712778039.a n = A074526 n

end A074526

/-! ## A074526.P18225786223234614209

`or(1, A001551(n)-A291454(n+1))`
-/

namespace A074526.P18225786223234614209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001551 n - A291454 (n + 1))

end

end A074526.P18225786223234614209

namespace A074526

/-- `or(1, A001551(n)-A291454(n+1))` -/
def P18225786223234614209.Spec : Prop :=
  ∀ n, P18225786223234614209.a n = A074526 n

end A074526

/-! ## A074526.P12343534010430987923

`Δ[A085282(n)+A000051(n)]`
-/

namespace A074526.P12343534010430987923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P12343534010430987923

namespace A074526

/-- `Δ[A085282(n)+A000051(n)]` -/
def P12343534010430987923.Spec : Prop :=
  ∀ n, P12343534010430987923.a n = A074526 n

end A074526

/-! ## A074526.P4596521276071175120

`Δ[A085282(n)+A000079(n)]`
-/

namespace A074526.P4596521276071175120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P4596521276071175120

namespace A074526

/-- `Δ[A085282(n)+A000079(n)]` -/
def P4596521276071175120.Spec : Prop :=
  ∀ n, P4596521276071175120.a n = A074526 n

end A074526

/-! ## A074526.P260684804890984034

`Δ[A079319(n)+A007051(n)]`
-/

namespace A074526.P260684804890984034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079319 n + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P260684804890984034

namespace A074526

/-- `Δ[A079319(n)+A007051(n)]` -/
def P260684804890984034.Spec : Prop :=
  ∀ n, P260684804890984034.a n = A074526 n

end A074526

/-! ## A074526.P12926217852404931442

`Δ[A099754(n)+A002450(n)]`
-/

namespace A074526.P12926217852404931442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P12926217852404931442

namespace A074526

/-- `Δ[A099754(n)+A002450(n)]` -/
def P12926217852404931442.Spec : Prop :=
  ∀ n, P12926217852404931442.a n = A074526 n

end A074526

/-! ## A074526.P4042303374917899692

`Δ[A036557(2*n+1)+A000079(n)]`
-/

namespace A074526.P4042303374917899692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P4042303374917899692

namespace A074526

/-- `Δ[A036557(2*n+1)+A000079(n)]` -/
def P4042303374917899692.Spec : Prop :=
  ∀ n, P4042303374917899692.a n = A074526 n

end A074526

/-! ## A074526.P16311276757421523876

`Δ[A036557(2*n+1)+A000225(n)]`
-/

namespace A074526.P16311276757421523876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P16311276757421523876

namespace A074526

/-- `Δ[A036557(2*n+1)+A000225(n)]` -/
def P16311276757421523876.Spec : Prop :=
  ∀ n, P16311276757421523876.a n = A074526 n

end A074526

/-! ## A074526.P17841066181996348114

`Δ[A036557(2*n+1)+Δ[A000295(n)]]`
-/

namespace A074526.P17841066181996348114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P17841066181996348114

namespace A074526

/-- `Δ[A036557(2*n+1)+Δ[A000295(n)]]` -/
def P17841066181996348114.Spec : Prop :=
  ∀ n, P17841066181996348114.a n = A074526 n

end A074526

/-!
# A074527: a(n) = 2^n + 3^n + 5^n.

The programs for A074527, the canonical program `A074527.P5088495585976316782` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074527 has offset 0).

The definition of A074527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+5^n` (program `A074527.P5088495585976316782`, by `A074527.P5088495585976316782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074527.P5088495585976316782

`2^n+3^n+5^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074527

/-- `2^n+3^n+5^n` -/
def P5088495585976316782.Spec : Prop :=
  ∀ n, (P5088495585976316782.a n : ℤ) = A074527 n

theorem P5088495585976316782.correct : P5088495585976316782.Spec := by
  intro n
  simp only [A074527]

end A074527

/-! ## A074527.P14537632887917866251

`ogf((3-20x+31x^2)/(1-10x+31x^2-30x^3))`
-/

namespace A074527.P14537632887917866251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -20, 31] [1, -10, 31, -30] n

end

end A074527.P14537632887917866251

namespace A074527

/-- `ogf((3-20x+31x^2)/(1-10x+31x^2-30x^3))` -/
def P14537632887917866251.Spec : Prop :=
  ∀ n, P14537632887917866251.a n = A074527 n

end A074527

/-! ## A074527.P15234469136442487747

`10*a(n-1)-31*a(n-2)+30*a(n-3)` with `a(0)=3, a(1)=10, a(2)=38`
-/

namespace A074527.P15234469136442487747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10, 38] fun n a =>
  10 * a (n - 1) - 31 * a (n - 2) + 30 * a (n - 3)

end

end A074527.P15234469136442487747

namespace A074527

/-- `10*a(n-1)-31*a(n-2)+30*a(n-3)` -/
def P15234469136442487747.Spec : Prop :=
  ∀ n, P15234469136442487747.a n = A074527 n

theorem P15234469136442487747.correct : P15234469136442487747.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074527, Nat.add_sub_cancel, A074527.P15234469136442487747.a, A074527.P5088495585976316782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074527, Nat.add_sub_cancel, A074527.P15234469136442487747.a, A074527.P5088495585976316782.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074527

/-! ## A074527.P1824972207743480049

`∑{p}[A143207(n+1), #^n]`
-/

namespace A074527.P1824972207743480049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A074527.P1824972207743480049

namespace A074527

/-- `∑{p}[A143207(n+1), #^n]` -/
def P1824972207743480049.Spec : Prop :=
  ∀ n, (P1824972207743480049.a n : ℤ) = A074527 n

end A074527

/-! ## A074527.P10230107809192216002

`∑{#}[2, A000040(#+1)^n]`
-/

namespace A074527.P10230107809192216002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000040 (k + 1) ^ n

end

end A074527.P10230107809192216002

namespace A074527

/-- `∑{#}[2, A000040(#+1)^n]` -/
def P10230107809192216002.Spec : Prop :=
  ∀ n, P10230107809192216002.a n = A074527 n

end A074527

/-! ## A074527.P14078374524792405269

`∑{#}[n, C(n, #)*A001576(#)]`
-/

namespace A074527.P14078374524792405269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001576 k

end

end A074527.P14078374524792405269

namespace A074527

/-- `∑{#}[n, C(n, #)*A001576(#)]` -/
def P14078374524792405269.Spec : Prop :=
  ∀ n, P14078374524792405269.a n = A074527 n

end A074527

/-! ## A074527.P8071955610397481615

`Δ[A094374(n)+A003463(n)]`
-/

namespace A074527.P8071955610397481615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P8071955610397481615

namespace A074527

/-- `Δ[A094374(n)+A003463(n)]` -/
def P8071955610397481615.Spec : Prop :=
  ∀ n, P8071955610397481615.a n = A074527 n

end A074527

/-! ## A074527.P6853691352480355917

`Δ[A099754(n)+A003463(n)]`
-/

namespace A074527.P6853691352480355917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P6853691352480355917

namespace A074527

/-- `Δ[A099754(n)+A003463(n)]` -/
def P6853691352480355917.Spec : Prop :=
  ∀ n, P6853691352480355917.a n = A074527 n

end A074527

/-! ## A074527.P15624885641542083270

`Δ[A094374(n)+A047850(n)]`
-/

namespace A074527.P15624885641542083270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P15624885641542083270

namespace A074527

/-- `Δ[A094374(n)+A047850(n)]` -/
def P15624885641542083270.Spec : Prop :=
  ∀ n, P15624885641542083270.a n = A074527 n

end A074527

/-! ## A074527.P5249816916754797598

`Δ[A099754(n)+A047850(n)]`
-/

namespace A074527.P5249816916754797598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P5249816916754797598

namespace A074527

/-- `Δ[A099754(n)+A047850(n)]` -/
def P5249816916754797598.Spec : Prop :=
  ∀ n, P5249816916754797598.a n = A074527 n

end A074527

/-! ## A074527.P2405748343210789089

`∑{#}[n, (-1)^(n-#)*C(n, #)*A074548(#)]`
-/

namespace A074527.P2405748343210789089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A074548 k : ℚ)

end

end A074527.P2405748343210789089

namespace A074527

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A074548(#)]` -/
def P2405748343210789089.Spec : Prop :=
  ∀ n, P2405748343210789089.a n = (A074527 n : ℚ)

end A074527

/-!
# A074528: a(n) = 2^n + 3^n + 6^n.

The programs for A074528, the canonical program `A074528.P12730308612103962859` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074528 has offset 0).

The definition of A074528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+6^n` (program `A074528.P12730308612103962859`, by `A074528.P12730308612103962859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074528.P11832550703539829486

`ogf((3-22x+36x^2)/(1-11x+36x^2-36x^3))`
-/

namespace A074528.P11832550703539829486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -22, 36] [1, -11, 36, -36] n

end

end A074528.P11832550703539829486

namespace A074528

/-- `ogf((3-22x+36x^2)/(1-11x+36x^2-36x^3))` -/
def P11832550703539829486.Spec : Prop :=
  ∀ n, P11832550703539829486.a n = A074528 n

end A074528

/-! ## A074528.P12730308612103962859

`2^n+3^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074528

/-- `2^n+3^n+6^n` -/
def P12730308612103962859.Spec : Prop :=
  ∀ n, (P12730308612103962859.a n : ℤ) = A074528 n

theorem P12730308612103962859.correct : P12730308612103962859.Spec := by
  intro n
  simp only [A074528]

end A074528

/-! ## A074528.P8393847157946149337

`11*a(n-1)-36*a(n-2)+36*a(n-3)` with `a(0)=3, a(1)=11, a(2)=49`
-/

namespace A074528.P8393847157946149337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11, 49] fun n a =>
  11 * a (n - 1) - 36 * a (n - 2) + 36 * a (n - 3)

end

end A074528.P8393847157946149337

namespace A074528

/-- `11*a(n-1)-36*a(n-2)+36*a(n-3)` -/
def P8393847157946149337.Spec : Prop :=
  ∀ n, P8393847157946149337.a n = A074528 n

theorem P8393847157946149337.correct : P8393847157946149337.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074528, Nat.add_sub_cancel, A074528.P8393847157946149337.a, A074528.P12730308612103962859.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074528, Nat.add_sub_cancel, A074528.P8393847157946149337.a, A074528.P12730308612103962859.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074528

/-! ## A074528.P11401886895698171734

`∑{#}[2, (#²+2)^n]`
-/

namespace A074528.P11401886895698171734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k ^ 2 + 2) ^ n

end

end A074528.P11401886895698171734

namespace A074528

/-- `∑{#}[2, (#²+2)^n]` -/
def P11401886895698171734.Spec : Prop :=
  ∀ n, (P11401886895698171734.a n : ℤ) = A074528 n

end A074528

/-! ## A074528.P12846381930276187784

`A246985(1+n)`
-/

namespace A074528.P12846381930276187784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246985 (1 + n)

end

end A074528.P12846381930276187784

namespace A074528

/-- `A246985(1+n)` -/
def P12846381930276187784.Spec : Prop :=
  ∀ n, P12846381930276187784.a n = A074528 n

end A074528

/-! ## A074528.P16045499002570889960

`abs(1-A034488(n))`
-/

namespace A074528.P16045499002570889960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A034488 n|

end

end A074528.P16045499002570889960

namespace A074528

/-- `abs(1-A034488(n))` -/
def P16045499002570889960.Spec : Prop :=
  ∀ n, P16045499002570889960.a n = A074528 n

end A074528

/-! ## A074528.P3103388375962177966

`record[A246985(abs(1-n))]`
-/

namespace A074528.P3103388375962177966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246985 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074528.P3103388375962177966

namespace A074528

/-- `record[A246985(abs(1-n))]` -/
def P3103388375962177966.Spec : Prop :=
  ∀ n, P3103388375962177966.a n = A074528 n

end A074528

/-! ## A074528.P2974425593852581602

`record[A034488(A002262(n))-1]`
-/

namespace A074528.P2974425593852581602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034488 (A002262 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074528.P2974425593852581602

namespace A074528

/-- `record[A034488(A002262(n))-1]` -/
def P2974425593852581602.Spec : Prop :=
  ∀ n, P2974425593852581602.a n = A074528 n

end A074528

/-!
# A074529: a(n) = 2^n + 3^n + 7^n.

The programs for A074529, the canonical program `A074529.P1743053996531333742` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074529 has offset 0).

The definition of A074529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+7^n` (program `A074529.P1743053996531333742`, by `A074529.P1743053996531333742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074529.P8713252810718853077

`ogf((3-24x+41x^2)/(1-12x+41x^2-42x^3))`
-/

namespace A074529.P8713252810718853077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24, 41] [1, -12, 41, -42] n

end

end A074529.P8713252810718853077

namespace A074529

/-- `ogf((3-24x+41x^2)/(1-12x+41x^2-42x^3))` -/
def P8713252810718853077.Spec : Prop :=
  ∀ n, P8713252810718853077.a n = A074529 n

end A074529

/-! ## A074529.P1743053996531333742

`2^n+3^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074529

/-- `2^n+3^n+7^n` -/
def P1743053996531333742.Spec : Prop :=
  ∀ n, (P1743053996531333742.a n : ℤ) = A074529 n

theorem P1743053996531333742.correct : P1743053996531333742.Spec := by
  intro n
  simp only [A074529]

end A074529

/-! ## A074529.P13690719654803364841

`abs(5^n-A135168(n))`
-/

namespace A074529.P13690719654803364841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A135168 n|

end

end A074529.P13690719654803364841

namespace A074529

/-- `abs(5^n-A135168(n))` -/
def P13690719654803364841.Spec : Prop :=
  ∀ n, P13690719654803364841.a n = A074529 n

end A074529

/-! ## A074529.P1647307411781481113

`∑{#}[2, A358654(#+2)^n]`
-/

namespace A074529.P1647307411781481113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A358654 (k + 2) ^ n

end

end A074529.P1647307411781481113

namespace A074529

/-- `∑{#}[2, A358654(#+2)^n]` -/
def P1647307411781481113.Spec : Prop :=
  ∀ n, P1647307411781481113.a n = A074529 n

end A074529

/-! ## A074529.P11925541739506139528

`∑{#}[n, C(n, #)*A074502(#)]`
-/

namespace A074529.P11925541739506139528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074502 k

end

end A074529.P11925541739506139528

namespace A074529

/-- `∑{#}[n, C(n, #)*A074502(#)]` -/
def P11925541739506139528.Spec : Prop :=
  ∀ n, P11925541739506139528.a n = A074529 n

end A074529

/-! ## A074529.P17363509003446608089

`Δ[A094374(n)+A023000(n)]`
-/

namespace A074529.P17363509003446608089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074529.P17363509003446608089

namespace A074529

/-- `Δ[A094374(n)+A023000(n)]` -/
def P17363509003446608089.Spec : Prop :=
  ∀ n, P17363509003446608089.a n = A074529 n

end A074529

/-! ## A074529.P16774935819328932879

`Δ[A099754(n)+A023000(n)]`
-/

namespace A074529.P16774935819328932879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074529.P16774935819328932879

namespace A074529

/-- `Δ[A099754(n)+A023000(n)]` -/
def P16774935819328932879.Spec : Prop :=
  ∀ n, P16774935819328932879.a n = A074529 n

end A074529

/-! ## A074529.P399572609066167260

`Δ[A341590(n)+A001550(n)]`
-/

namespace A074529.P399572609066167260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 n + A001550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074529.P399572609066167260

namespace A074529

/-- `Δ[A341590(n)+A001550(n)]` -/
def P399572609066167260.Spec : Prop :=
  ∀ n, P399572609066167260.a n = A074529 n

end A074529

/-! ## A074529.P1016432951669884451

`(A135168(n)+A135164(n))/2`
-/

namespace A074529.P1016432951669884451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135168 n + A135164 n : ℚ) / 2

end

end A074529.P1016432951669884451

namespace A074529

/-- `(A135168(n)+A135164(n))/2` -/
def P1016432951669884451.Spec : Prop :=
  ∀ n, P1016432951669884451.a n = (A074529 n : ℚ)

theorem P1016432951669884451.correct : P1016432951669884451.Spec := by
  intro n
  simp only [A074529, Nat.add_sub_cancel, A074529.P1016432951669884451.a, A074529.P1743053996531333742.a, A135164, A135164.P3152880949450682328.a, A135168, A135168.P15537448099565087146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074529

/-!
# A074530: a(n) = 2^n + 3^n + 8^n.

The programs for A074530, the canonical program `A074530.P11230954735415132841` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074530 has offset 0).

The definition of A074530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+8^n` (program `A074530.P11230954735415132841`, by `A074530.P11230954735415132841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074530.P16396667049849034998

`ogf((3-26x+46x^2)/(1-13x+46x^2-48x^3))`
-/

namespace A074530.P16396667049849034998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -26, 46] [1, -13, 46, -48] n

end

end A074530.P16396667049849034998

namespace A074530

/-- `ogf((3-26x+46x^2)/(1-13x+46x^2-48x^3))` -/
def P16396667049849034998.Spec : Prop :=
  ∀ n, P16396667049849034998.a n = A074530 n

end A074530

/-! ## A074530.P11230954735415132841

`2^n+3^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074530

/-- `2^n+3^n+8^n` -/
def P11230954735415132841.Spec : Prop :=
  ∀ n, (P11230954735415132841.a n : ℤ) = A074530 n

theorem P11230954735415132841.correct : P11230954735415132841.Spec := by
  intro n
  simp only [A074530]

end A074530

/-! ## A074530.P16979376285989767740

`xor(8^n, A007689(n))`
-/

namespace A074530.P16979376285989767740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (8 ^ n : ℤ) (A007689 n)

end

end A074530.P16979376285989767740

namespace A074530

/-- `xor(8^n, A007689(n))` -/
def P16979376285989767740.Spec : Prop :=
  ∀ n, P16979376285989767740.a n = A074530 n

end A074530

/-! ## A074530.P14790613960409028316

`∑{#}[2, A066680(#²+1)^n]`
-/

namespace A074530.P14790613960409028316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A066680 (k ^ 2 + 1) ^ n

end

end A074530.P14790613960409028316

namespace A074530

/-- `∑{#}[2, A066680(#²+1)^n]` -/
def P14790613960409028316.Spec : Prop :=
  ∀ n, P14790613960409028316.a n = A074530 n

end A074530

/-! ## A074530.P15048902679417068877

`Δ[A099754(n)+A023001(n)]`
-/

namespace A074530.P15048902679417068877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074530.P15048902679417068877

namespace A074530

/-- `Δ[A099754(n)+A023001(n)]` -/
def P15048902679417068877.Spec : Prop :=
  ∀ n, P15048902679417068877.a n = A074530 n

end A074530

/-! ## A074530.P11893147130885888176

`or(A000079(3*n), A007689(n))`
-/

namespace A074530.P11893147130885888176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (3 * n)) (A007689 n)

end

end A074530.P11893147130885888176

namespace A074530

/-- `or(A000079(3*n), A007689(n))` -/
def P11893147130885888176.Spec : Prop :=
  ∀ n, P11893147130885888176.a n = A074530 n

end A074530

/-! ## A074530.P3328034500677825967

`or(A005056(n)+1, Δ[A023001(n)])`
-/

namespace A074530.P3328034500677825967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005056 n + 1) (f1 (n + 1) - f1 n)

end

end A074530.P3328034500677825967

namespace A074530

/-- `or(A005056(n)+1, Δ[A023001(n)])` -/
def P3328034500677825967.Spec : Prop :=
  ∀ n, P3328034500677825967.a n = A074530 n

end A074530

/-! ## A074530.P5469702732834106213

`or(A000244(n)+A000079(n), A001018(n))`
-/

namespace A074530.P5469702732834106213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n + A000079 n) (A001018 n)

end

end A074530.P5469702732834106213

namespace A074530

/-- `or(A000244(n)+A000079(n), A001018(n))` -/
def P5469702732834106213.Spec : Prop :=
  ∀ n, P5469702732834106213.a n = A074530 n

end A074530

/-!
# A074531: a(n) = 2^n + 3^n + 9^n.

The programs for A074531, the canonical program `A074531.P8042299482482290928` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074531 has offset 0).

The definition of A074531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+9^n` (program `A074531.P8042299482482290928`, by `A074531.P8042299482482290928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074531.P13208956922481452196

`ogf((3-28x+51x^2)/(1-14x+51x^2-54x^3))`
-/

namespace A074531.P13208956922481452196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -28, 51] [1, -14, 51, -54] n

end

end A074531.P13208956922481452196

namespace A074531

/-- `ogf((3-28x+51x^2)/(1-14x+51x^2-54x^3))` -/
def P13208956922481452196.Spec : Prop :=
  ∀ n, P13208956922481452196.a n = A074531 n

end A074531

/-! ## A074531.P8042299482482290928

`2^n+3^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074531

/-- `2^n+3^n+9^n` -/
def P8042299482482290928.Spec : Prop :=
  ∀ n, (P8042299482482290928.a n : ℤ) = A074531 n

theorem P8042299482482290928.correct : P8042299482482290928.Spec := by
  intro n
  simp only [A074531]

end A074531

/-! ## A074531.P10089166818571470716

`∑{#}[2, (A129427(#)+1)^n]`
-/

namespace A074531.P10089166818571470716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A129427 k + 1) ^ n

end

end A074531.P10089166818571470716

namespace A074531

/-- `∑{#}[2, (A129427(#)+1)^n]` -/
def P10089166818571470716.Spec : Prop :=
  ∀ n, P10089166818571470716.a n = A074531 n

end A074531

/-! ## A074531.P11094623332034720870

`Δ[A094374(n)+A002452(n)]`
-/

namespace A074531.P11094623332034720870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074531.P11094623332034720870

namespace A074531

/-- `Δ[A094374(n)+A002452(n)]` -/
def P11094623332034720870.Spec : Prop :=
  ∀ n, P11094623332034720870.a n = A074531 n

end A074531

/-! ## A074531.P17599564177952958922

`Δ[A099754(n)+A002452(n)]`
-/

namespace A074531.P17599564177952958922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074531.P17599564177952958922

namespace A074531

/-- `Δ[A099754(n)+A002452(n)]` -/
def P17599564177952958922.Spec : Prop :=
  ∀ n, P17599564177952958922.a n = A074531 n

end A074531

/-! ## A074531.P7975512789603075938

`Δ[A094374(n)+A047854(n)]`
-/

namespace A074531.P7975512789603075938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A047854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074531.P7975512789603075938

namespace A074531

/-- `Δ[A094374(n)+A047854(n)]` -/
def P7975512789603075938.Spec : Prop :=
  ∀ n, P7975512789603075938.a n = A074531 n

end A074531

/-!
# A074532: a(n) = 2^n + 4^n + 5^n.

The programs for A074532, the canonical program `A074532.P9473823795762054063` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074532 has offset 0).

The definition of A074532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+5^n` (program `A074532.P9473823795762054063`, by `A074532.P9473823795762054063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074532.P9473823795762054063

`2^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074532

/-- `2^n+4^n+5^n` -/
def P9473823795762054063.Spec : Prop :=
  ∀ n, (P9473823795762054063.a n : ℤ) = A074532 n

theorem P9473823795762054063.correct : P9473823795762054063.Spec := by
  intro n
  simp only [A074532]

end A074532

/-! ## A074532.P11421364574999412076

`ogf((3-22x+38x^2)/(1-11x+38x^2-40x^3))`
-/

namespace A074532.P11421364574999412076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -22, 38] [1, -11, 38, -40] n

end

end A074532.P11421364574999412076

namespace A074532

/-- `ogf((3-22x+38x^2)/(1-11x+38x^2-40x^3))` -/
def P11421364574999412076.Spec : Prop :=
  ∀ n, P11421364574999412076.a n = A074532 n

end A074532

/-! ## A074532.P14981847638881076807

`∑{#}[n, C(n, #)*A074506(#)]`
-/

namespace A074532.P14981847638881076807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074506 k

end

end A074532.P14981847638881076807

namespace A074532

/-- `∑{#}[n, C(n, #)*A074506(#)]` -/
def P14981847638881076807.Spec : Prop :=
  ∀ n, P14981847638881076807.a n = A074532 n

end A074532

/-! ## A074532.P2975149423038914780

`abs(A001047(n)-A074547(n))`
-/

namespace A074532.P2975149423038914780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074547 n|

end

end A074532.P2975149423038914780

namespace A074532

/-- `abs(A001047(n)-A074547(n))` -/
def P2975149423038914780.Spec : Prop :=
  ∀ n, P2975149423038914780.a n = A074532 n

end A074532

/-! ## A074532.P10595806273720771015

`or(1, A074600(n)+A024036(n))`
-/

namespace A074532.P10595806273720771015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074600 n + A024036 n)

end

end A074532.P10595806273720771015

namespace A074532

/-- `or(1, A074600(n)+A024036(n))` -/
def P10595806273720771015.Spec : Prop :=
  ∀ n, P10595806273720771015.a n = A074532 n

end A074532

/-! ## A074532.P9472024688799544350

`Δ[A000225(n)+A003463(n)+A002450(n)]`
-/

namespace A074532.P9472024688799544350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A003463 n + A002450 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074532.P9472024688799544350

namespace A074532

/-- `Δ[A000225(n)+A003463(n)+A002450(n)]` -/
def P9472024688799544350.Spec : Prop :=
  ∀ n, P9472024688799544350.a n = A074532 n

end A074532

/-! ## A074532.P5451319213843160130

`∑{#}[n, (-1)^(n-#)*C(n, #)*A001579(#)]`
-/

namespace A074532.P5451319213843160130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A001579 k : ℚ)

end

end A074532.P5451319213843160130

namespace A074532

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A001579(#)]` -/
def P5451319213843160130.Spec : Prop :=
  ∀ n, P5451319213843160130.a n = (A074532 n : ℚ)

end A074532

/-!
# A074533: a(n) = 2^n + 4^n + 6^n.

The programs for A074533, the canonical program `A074533.P12871218139762461628` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074533 has offset 0).

The definition of A074533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+6^n` (program `A074533.P12871218139762461628`, by `A074533.P12871218139762461628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074533.P3512548624403202679

`ogf((3-24x+44x^2)/(1-12x+44x^2-48x^3))`
-/

namespace A074533.P3512548624403202679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24, 44] [1, -12, 44, -48] n

end

end A074533.P3512548624403202679

namespace A074533

/-- `ogf((3-24x+44x^2)/(1-12x+44x^2-48x^3))` -/
def P3512548624403202679.Spec : Prop :=
  ∀ n, P3512548624403202679.a n = A074533 n

end A074533

/-! ## A074533.P12871218139762461628

`2^n+4^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074533

/-- `2^n+4^n+6^n` -/
def P12871218139762461628.Spec : Prop :=
  ∀ n, (P12871218139762461628.a n : ℤ) = A074533 n

theorem P12871218139762461628.correct : P12871218139762461628.Spec := by
  intro n
  simp only [A074533]

end A074533

/-! ## A074533.P3257964841025700116

`∑{#}[2, (2*(#+1))^n]`
-/

namespace A074533.P3257964841025700116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 * (k + 1)) ^ n

end

end A074533.P3257964841025700116

namespace A074533

/-- `∑{#}[2, (2*(#+1))^n]` -/
def P3257964841025700116.Spec : Prop :=
  ∀ n, (P3257964841025700116.a n : ℤ) = A074533 n

end A074533

/-! ## A074533.P18014756900594000517

`2^n*A001550(n)`
-/

namespace A074533.P18014756900594000517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001550 n

end

end A074533.P18014756900594000517

namespace A074533

/-- `2^n*A001550(n)` -/
def P18014756900594000517.Spec : Prop :=
  ∀ n, P18014756900594000517.a n = A074533 n

end A074533

/-! ## A074533.P11313203722825464071

`(A007689(n)+1)*2^n`
-/

namespace A074533.P11313203722825464071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n + 1) * (2 ^ n : ℤ)

end

end A074533.P11313203722825464071

namespace A074533

/-- `(A007689(n)+1)*2^n` -/
def P11313203722825464071.Spec : Prop :=
  ∀ n, P11313203722825464071.a n = A074533 n

end A074533

/-! ## A074533.P5851359882329565295

`(Δ[A094374(n)]+1)*2^n`
-/

namespace A074533.P5851359882329565295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (2 ^ n : ℤ)

end

end A074533.P5851359882329565295

namespace A074533

/-- `(Δ[A094374(n)]+1)*2^n` -/
def P5851359882329565295.Spec : Prop :=
  ∀ n, P5851359882329565295.a n = A074533 n

end A074533

/-! ## A074533.P16202192307212725173

`(Δ[A099754(n)]+1)*2^n`
-/

namespace A074533.P16202192307212725173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (2 ^ n : ℤ)

end

end A074533.P16202192307212725173

namespace A074533

/-- `(Δ[A099754(n)]+1)*2^n` -/
def P16202192307212725173.Spec : Prop :=
  ∀ n, P16202192307212725173.a n = A074533 n

end A074533

/-! ## A074533.P647599305935621710

`A001550(n)*A011782(n+1)`
-/

namespace A074533.P647599305935621710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n * A011782 (n + 1)

end

end A074533.P647599305935621710

namespace A074533

/-- `A001550(n)*A011782(n+1)` -/
def P647599305935621710.Spec : Prop :=
  ∀ n, P647599305935621710.a n = A074533 n

end A074533

/-! ## A074533.P3464451372676672987

`(A005056(n)+2)*A000079(n)`
-/

namespace A074533.P3464451372676672987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005056 n + 2) * A000079 n

end

end A074533.P3464451372676672987

namespace A074533

/-- `(A005056(n)+2)*A000079(n)` -/
def P3464451372676672987.Spec : Prop :=
  ∀ n, P3464451372676672987.a n = A074533 n

end A074533

/-! ## A074533.P5221148942424678233

`(A085281(n+1)+1)*A011782(n+1)`
-/

namespace A074533.P5221148942424678233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + 1) * A011782 (n + 1)

end

end A074533.P5221148942424678233

namespace A074533

/-- `(A085281(n+1)+1)*A011782(n+1)` -/
def P5221148942424678233.Spec : Prop :=
  ∀ n, P5221148942424678233.a n = A074533 n

end A074533

/-! ## A074533.P7255238856509101563

`(A085281(n+1)+1)*A131577(n+1)`
-/

namespace A074533.P7255238856509101563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + 1) * A131577 (n + 1)

end

end A074533.P7255238856509101563

namespace A074533

/-- `(A085281(n+1)+1)*A131577(n+1)` -/
def P7255238856509101563.Spec : Prop :=
  ∀ n, P7255238856509101563.a n = A074533 n

end A074533

/-! ## A074533.P3029266674648427849

`(A000244(n)+A000051(n))*A000079(n)`
-/

namespace A074533.P3029266674648427849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + A000051 n) * A000079 n

end

end A074533.P3029266674648427849

namespace A074533

/-- `(A000244(n)+A000051(n))*A000079(n)` -/
def P3029266674648427849.Spec : Prop :=
  ∀ n, P3029266674648427849.a n = A074533 n

end A074533

/-! ## A074533.P13745044994773733623

`(A034472(n)+A000079(n))*A000079(n)`
-/

namespace A074533.P13745044994773733623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000079 n) * A000079 n

end

end A074533.P13745044994773733623

namespace A074533

/-- `(A034472(n)+A000079(n))*A000079(n)` -/
def P13745044994773733623.Spec : Prop :=
  ∀ n, P13745044994773733623.a n = A074533 n

end A074533

/-! ## A074533.P6383308274457284918

`(A052548(n)+A024023(n))*A000079(n)`
-/

namespace A074533.P6383308274457284918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052548 n + A024023 n) * A000079 n

end

end A074533.P6383308274457284918

namespace A074533

/-- `(A052548(n)+A024023(n))*A000079(n)` -/
def P6383308274457284918.Spec : Prop :=
  ∀ n, P6383308274457284918.a n = A074533 n

end A074533

/-! ## A074533.P11219435456603297842

`(A099754(n)+A007051(n))*A000079(n)`
-/

namespace A074533.P11219435456603297842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099754 n + A007051 n) * A000079 n

end

end A074533.P11219435456603297842

namespace A074533

/-- `(A099754(n)+A007051(n))*A000079(n)` -/
def P11219435456603297842.Spec : Prop :=
  ∀ n, P11219435456603297842.a n = A074533 n

end A074533

/-! ## A074533.P6048123262735389303

`A001550(n)/A007689(n)*A074612(n)`
-/

namespace A074533.P6048123262735389303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001550 n : ℚ) / (A007689 n : ℚ) * (A074612 n : ℚ)

end

end A074533.P6048123262735389303

namespace A074533

/-- `A001550(n)/A007689(n)*A074612(n)` -/
def P6048123262735389303.Spec : Prop :=
  ∀ n, P6048123262735389303.a n = (A074533 n : ℚ)

end A074533

/-! ## A074533.P9529644901125131299

`(A001047(n)+A000051(n+1))*A000079(n)`
-/

namespace A074533.P9529644901125131299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001047 n + A000051 (n + 1)) * A000079 n

end

end A074533.P9529644901125131299

namespace A074533

/-- `(A001047(n)+A000051(n+1))*A000079(n)` -/
def P9529644901125131299.Spec : Prop :=
  ∀ n, P9529644901125131299.a n = A074533 n

end A074533

/-! ## A074533.P15632983635767917685

`(A034472(n)+A011782(n+1))*A011782(n+1)`
-/

namespace A074533.P15632983635767917685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A011782 (n + 1)) * A011782 (n + 1)

end

end A074533.P15632983635767917685

namespace A074533

/-- `(A034472(n)+A011782(n+1))*A011782(n+1)` -/
def P15632983635767917685.Spec : Prop :=
  ∀ n, P15632983635767917685.a n = A074533 n

end A074533

/-! ## A074533.P12987023880643810910

`(A103457(n+1)-A027649(n))*A011782(n+1)`
-/

namespace A074533.P12987023880643810910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103457 (n + 1) - A027649 n) * A011782 (n + 1)

end

end A074533.P12987023880643810910

namespace A074533

/-- `(A103457(n+1)-A027649(n))*A011782(n+1)` -/
def P12987023880643810910.Spec : Prop :=
  ∀ n, P12987023880643810910.a n = A074533 n

end A074533

/-! ## A074533.P12509361024756441811

`(A094388(n+1)+A011782(n+1))*A011782(n+1)`
-/

namespace A074533.P12509361024756441811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094388 (n + 1) + A011782 (n + 1)) * A011782 (n + 1)

end

end A074533.P12509361024756441811

namespace A074533

/-- `(A094388(n+1)+A011782(n+1))*A011782(n+1)` -/
def P12509361024756441811.Spec : Prop :=
  ∀ n, P12509361024756441811.a n = A074533 n

end A074533

/-!
# A074534: a(n) = 2^n + 4^n + 7^n.

The programs for A074534, the canonical program `A074534.P902535221530212066` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074534 has offset 0).

The definition of A074534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+7^n` (program `A074534.P902535221530212066`, by `A074534.P902535221530212066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074534.P7596812947704105193

`ogf((3-26x+50x^2)/(1-13x+50x^2-56x^3))`
-/

namespace A074534.P7596812947704105193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -26, 50] [1, -13, 50, -56] n

end

end A074534.P7596812947704105193

namespace A074534

/-- `ogf((3-26x+50x^2)/(1-13x+50x^2-56x^3))` -/
def P7596812947704105193.Spec : Prop :=
  ∀ n, P7596812947704105193.a n = A074534 n

end A074534

/-! ## A074534.P902535221530212066

`2^n+4^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074534

/-- `2^n+4^n+7^n` -/
def P902535221530212066.Spec : Prop :=
  ∀ n, (P902535221530212066.a n : ℤ) = A074534 n

theorem P902535221530212066.correct : P902535221530212066.Spec := by
  intro n
  simp only [A074534]

end A074534

/-! ## A074534.P1790331853313873599

`or(1, A155618(n)+2^n)`
-/

namespace A074534.P1790331853313873599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155618 n + (2 ^ n : ℤ))

end

end A074534.P1790331853313873599

namespace A074534

/-- `or(1, A155618(n)+2^n)` -/
def P1790331853313873599.Spec : Prop :=
  ∀ n, P1790331853313873599.a n = A074534 n

end A074534

/-! ## A074534.P878329294327515716

`∑{#}[n, C(n, #)*A074508(#)]`
-/

namespace A074534.P878329294327515716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074508 k

end

end A074534.P878329294327515716

namespace A074534

/-- `∑{#}[n, C(n, #)*A074508(#)]` -/
def P878329294327515716.Spec : Prop :=
  ∀ n, P878329294327515716.a n = A074534 n

end A074534

/-! ## A074534.P14519040790049122598

`abs(A001047(n)-A074549(n))`
-/

namespace A074534.P14519040790049122598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074549 n|

end

end A074534.P14519040790049122598

namespace A074534

/-- `abs(A001047(n)-A074549(n))` -/
def P14519040790049122598.Spec : Prop :=
  ∀ n, P14519040790049122598.a n = A074534 n

end A074534

/-! ## A074534.P7456936373738222550

`Δ[A000225(n)+A047852(n)+A047849(n)]`
-/

namespace A074534.P7456936373738222550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A047852 n + A047849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074534.P7456936373738222550

namespace A074534

/-- `Δ[A000225(n)+A047852(n)+A047849(n)]` -/
def P7456936373738222550.Spec : Prop :=
  ∀ n, P7456936373738222550.a n = A074534 n

end A074534

/-! ## A074534.P6771570690480946946

`abs(1-A074513(n)-(A052548(n+1)-A052548(n)))`
-/

namespace A074534.P6771570690480946946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074513 n - (A052548 (n + 1) - A052548 n)|

end

end A074534.P6771570690480946946

namespace A074534

/-- `abs(1-A074513(n)-(A052548(n+1)-A052548(n)))` -/
def P6771570690480946946.Spec : Prop :=
  ∀ n, P6771570690480946946.a n = A074534 n

end A074534

/-! ## A074534.P156252456224863696

`abs(A016177(n)-A074535(n))`
-/

namespace A074534.P156252456224863696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016177 n - A074535 n|

end

end A074534.P156252456224863696

namespace A074534

/-- `abs(A016177(n)-A074535(n))` -/
def P156252456224863696.Spec : Prop :=
  ∀ n, P156252456224863696.a n = A074534 n

end A074534

/-!
# A074535: a(n) = 2^n + 4^n + 8^n.

The programs for A074535, the canonical program `A074535.P639029963041919896` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074535 has offset 0).

The definition of A074535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+8^n` (program `A074535.P639029963041919896`, by `A074535.P639029963041919896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074535.P5306552993612161281

`ogf((3-28x+56x^2)/(1-14x+56x^2-64x^3))`
-/

namespace A074535.P5306552993612161281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -28, 56] [1, -14, 56, -64] n

end

end A074535.P5306552993612161281

namespace A074535

/-- `ogf((3-28x+56x^2)/(1-14x+56x^2-64x^3))` -/
def P5306552993612161281.Spec : Prop :=
  ∀ n, P5306552993612161281.a n = A074535 n

end A074535

/-! ## A074535.P639029963041919896

`2^n+4^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074535

/-- `2^n+4^n+8^n` -/
def P639029963041919896.Spec : Prop :=
  ∀ n, (P639029963041919896.a n : ℤ) = A074535 n

theorem P639029963041919896.correct : P639029963041919896.Spec := by
  intro n
  simp only [A074535]

end A074535

/-! ## A074535.P10319311874623832450

`∑{#}[2, 2^(n*(#+1))]`
-/

namespace A074535.P10319311874623832450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ (n * (k + 1))

end

end A074535.P10319311874623832450

namespace A074535

/-- `∑{#}[2, 2^(n*(#+1))]` -/
def P10319311874623832450.Spec : Prop :=
  ∀ n, (P10319311874623832450.a n : ℤ) = A074535 n

end A074535

/-! ## A074535.P11849169264162271366

`abs(1-A034496(n))`
-/

namespace A074535.P11849169264162271366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A034496 n|

end

end A074535.P11849169264162271366

namespace A074535

/-- `abs(1-A034496(n))` -/
def P11849169264162271366.Spec : Prop :=
  ∀ n, P11849169264162271366.a n = A074535 n

end A074535

/-! ## A074535.P14952448249521662094

`2^n*A001576(n)`
-/

namespace A074535.P14952448249521662094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001576 n

end

end A074535.P14952448249521662094

namespace A074535

/-- `2^n*A001576(n)` -/
def P14952448249521662094.Spec : Prop :=
  ∀ n, P14952448249521662094.a n = A074535 n

end A074535

/-! ## A074535.P12258688446172679224

`or(2^n, A063481(n))`
-/

namespace A074535.P12258688446172679224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A063481 n)

end

end A074535.P12258688446172679224

namespace A074535

/-- `or(2^n, A063481(n))` -/
def P12258688446172679224.Spec : Prop :=
  ∀ n, P12258688446172679224.a n = A074535 n

end A074535

/-! ## A074535.P5312574977163950470

`(A161168(n)+1)*2^n`
-/

namespace A074535.P5312574977163950470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161168 n + 1) * (2 ^ n : ℤ)

end

end A074535.P5312574977163950470

namespace A074535

/-- `(A161168(n)+1)*2^n` -/
def P5312574977163950470.Spec : Prop :=
  ∀ n, P5312574977163950470.a n = A074535 n

end A074535

/-! ## A074535.P14056636874817710864

`lcm(A000079(n), A001576(n))`
-/

namespace A074535.P14056636874817710864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001576 n)

end

end A074535.P14056636874817710864

namespace A074535

/-- `lcm(A000079(n), A001576(n))` -/
def P14056636874817710864.Spec : Prop :=
  ∀ n, (P14056636874817710864.a n : ℤ) = A074535 n

end A074535

/-! ## A074535.P10472228589399556175

`abs(A001576(n)*A171449(n))`
-/

namespace A074535.P10472228589399556175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001576 n * A171449 n|

end

end A074535.P10472228589399556175

namespace A074535

/-- `abs(A001576(n)*A171449(n))` -/
def P10472228589399556175.Spec : Prop :=
  ∀ n, P10472228589399556175.a n = A074535 n

end A074535

/-! ## A074535.P1749765622510066045

`A001576(n)*A011782(n+1)`
-/

namespace A074535.P1749765622510066045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n * A011782 (n + 1)

end

end A074535.P1749765622510066045

namespace A074535

/-- `A001576(n)*A011782(n+1)` -/
def P1749765622510066045.Spec : Prop :=
  ∀ n, P1749765622510066045.a n = A074535 n

end A074535

/-! ## A074535.P5679870023266906624

`A001576(n)*A131577(n+1)`
-/

namespace A074535.P5679870023266906624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n * A131577 (n + 1)

end

end A074535.P5679870023266906624

namespace A074535

/-- `A001576(n)*A131577(n+1)` -/
def P5679870023266906624.Spec : Prop :=
  ∀ n, P5679870023266906624.a n = A074535 n

end A074535

/-! ## A074535.P1269881893546435112

`A135576(n+1)*A171559(n)`
-/

namespace A074535.P1269881893546435112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135576 (n + 1) * A171559 n

end

end A074535.P1269881893546435112

namespace A074535

/-- `A135576(n+1)*A171559(n)` -/
def P1269881893546435112.Spec : Prop :=
  ∀ n, P1269881893546435112.a n = A074535 n

end A074535

/-! ## A074535.P6204551136946966718

`(A099393(n)+2)*A000079(n)`
-/

namespace A074535.P6204551136946966718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099393 n + 2) * A000079 n

end

end A074535.P6204551136946966718

namespace A074535

/-- `(A099393(n)+2)*A000079(n)` -/
def P6204551136946966718.Spec : Prop :=
  ∀ n, P6204551136946966718.a n = A074535 n

end A074535

/-! ## A074535.P16597515742231722267

`lcm(A098646(n), A135576(n+1))`
-/

namespace A074535.P16597515742231722267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098646 n) (A135576 (n + 1))

end

end A074535.P16597515742231722267

namespace A074535

/-- `lcm(A098646(n), A135576(n+1))` -/
def P16597515742231722267.Spec : Prop :=
  ∀ n, (P16597515742231722267.a n : ℤ) = A074535 n

end A074535

/-! ## A074535.P12136056549921505030

`(A052957(2*n)+1)*A016116(2*n)`
-/

namespace A074535.P12136056549921505030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052957 (2 * n) + 1) * A016116 (2 * n)

end

end A074535.P12136056549921505030

namespace A074535

/-- `(A052957(2*n)+1)*A016116(2*n)` -/
def P12136056549921505030.Spec : Prop :=
  ∀ n, P12136056549921505030.a n = A074535 n

end A074535

/-! ## A074535.P4194145081850581162

`(A056326(2*(n+1))+2)*A077958(3*n)`
-/

namespace A074535.P4194145081850581162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056326 (2 * (n + 1)) + 2) * A077958 (3 * n)

end

end A074535.P4194145081850581162

namespace A074535

/-- `(A056326(2*(n+1))+2)*A077958(3*n)` -/
def P4194145081850581162.Spec : Prop :=
  ∀ n, P4194145081850581162.a n = A074535 n

end A074535

/-! ## A074535.P13266444830049465043

`(A052539(n)+A000079(n))*A000079(n)`
-/

namespace A074535.P13266444830049465043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052539 n + A000079 n) * A000079 n

end

end A074535.P13266444830049465043

namespace A074535

/-- `(A052539(n)+A000079(n))*A000079(n)` -/
def P13266444830049465043.Spec : Prop :=
  ∀ n, P13266444830049465043.a n = A074535 n

end A074535

/-! ## A074535.P16842267645595968436

`(A001551(n)-A000244(n))*A000079(n)`
-/

namespace A074535.P16842267645595968436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - A000244 n) * A000079 n

end

end A074535.P16842267645595968436

namespace A074535

/-- `(A001551(n)-A000244(n))*A000079(n)` -/
def P16842267645595968436.Spec : Prop :=
  ∀ n, P16842267645595968436.a n = A074535 n

end A074535

/-!
# A074536: a(n) = 2^n + 4^n + 9^n.

The programs for A074536, the canonical program `A074536.P4230930682588145782` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074536 has offset 0).

The definition of A074536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+9^n` (program `A074536.P4230930682588145782`, by `A074536.P4230930682588145782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074536.P9668939394369192389

`ogf((3-30x+62x^2)/(1-15x+62x^2-72x^3))`
-/

namespace A074536.P9668939394369192389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 62] [1, -15, 62, -72] n

end

end A074536.P9668939394369192389

namespace A074536

/-- `ogf((3-30x+62x^2)/(1-15x+62x^2-72x^3))` -/
def P9668939394369192389.Spec : Prop :=
  ∀ n, P9668939394369192389.a n = A074536 n

end A074536

/-! ## A074536.P4230930682588145782

`2^n+4^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074536

/-- `2^n+4^n+9^n` -/
def P4230930682588145782.Spec : Prop :=
  ∀ n, (P4230930682588145782.a n : ℤ) = A074536 n

theorem P4230930682588145782.correct : P4230930682588145782.Spec := by
  intro n
  simp only [A074536]

end A074536

/-! ## A074536.P17020694892295693407

`record[A005418(n+2)+(-3)^n]`
-/

namespace A074536.P17020694892295693407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074536.P17020694892295693407

namespace A074536

/-- `record[A005418(n+2)+(-3)^n]` -/
def P17020694892295693407.Spec : Prop :=
  ∀ n, P17020694892295693407.a n = A074536 n

end A074536

/-! ## A074536.P13785566074604248910

`xor(1, A074545(n)-A155628(n))`
-/

namespace A074536.P13785566074604248910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074545 n - A155628 n)

end

end A074536.P13785566074604248910

namespace A074536

/-- `xor(1, A074545(n)-A155628(n))` -/
def P13785566074604248910.Spec : Prop :=
  ∀ n, P13785566074604248910.a n = A074536 n

end A074536

/-! ## A074536.P901838226609754244

`floor(A074614(n)+sqrt(A052539(n)))`
-/

namespace A074536.P901838226609754244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074614 n : ℝ) + Real.sqrt (A052539 n : ℝ)⌋

end

end A074536.P901838226609754244

namespace A074536

/-- `floor(A074614(n)+sqrt(A052539(n)))` -/
def P901838226609754244.Spec : Prop :=
  ∀ n, P901838226609754244.a n = A074536 n

end A074536

/-!
# A074537: a(n) = 2^n + 5^n + 6^n.

The programs for A074537, the canonical program `A074537.P9486387776354827771` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074537 has offset 0).

The definition of A074537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+6^n` (program `A074537.P9486387776354827771`, by `A074537.P9486387776354827771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074537.P4633833693422202640

`ogf((3-26x+52x^2)/(1-13x+52x^2-60x^3))`
-/

namespace A074537.P4633833693422202640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -26, 52] [1, -13, 52, -60] n

end

end A074537.P4633833693422202640

namespace A074537

/-- `ogf((3-26x+52x^2)/(1-13x+52x^2-60x^3))` -/
def P4633833693422202640.Spec : Prop :=
  ∀ n, P4633833693422202640.a n = A074537 n

end A074537

/-! ## A074537.P9486387776354827771

`2^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074537

/-- `2^n+5^n+6^n` -/
def P9486387776354827771.Spec : Prop :=
  ∀ n, (P9486387776354827771.a n : ℤ) = A074537 n

theorem P9486387776354827771.correct : P9486387776354827771.Spec := by
  intro n
  simp only [A074537]

end A074537

/-! ## A074537.P2658391546926173613

`∑{#}[n, C(n, #)*A074511(#)]`
-/

namespace A074537.P2658391546926173613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074511 k

end

end A074537.P2658391546926173613

namespace A074537

/-- `∑{#}[n, C(n, #)*A074511(#)]` -/
def P2658391546926173613.Spec : Prop :=
  ∀ n, P2658391546926173613.a n = A074537 n

end A074537

/-! ## A074537.P296720137472404523

`abs(A001047(n)-A001579(n))`
-/

namespace A074537.P296720137472404523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A001579 n|

end

end A074537.P296720137472404523

namespace A074537

/-- `abs(A001047(n)-A001579(n))` -/
def P296720137472404523.Spec : Prop :=
  ∀ n, P296720137472404523.a n = A074537 n

end A074537

/-! ## A074537.P10731480997429110048

`or(1, A155633(n)+A000079(n))`
-/

namespace A074537.P10731480997429110048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155633 n + A000079 n)

end

end A074537.P10731480997429110048

namespace A074537

/-- `or(1, A155633(n)+A000079(n))` -/
def P10731480997429110048.Spec : Prop :=
  ∀ n, P10731480997429110048.a n = A074537 n

end A074537

/-! ## A074537.P10237333469363841356

`xor(1, A074615(n)+A000225(n))`
-/

namespace A074537.P10237333469363841356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074615 n + A000225 n)

end

end A074537.P10237333469363841356

namespace A074537

/-- `xor(1, A074615(n)+A000225(n))` -/
def P10237333469363841356.Spec : Prop :=
  ∀ n, P10237333469363841356.a n = A074537 n

end A074537

/-! ## A074537.P4427216544290526384

`Δ[A000051(n)+A003464(n)+A003463(n)]`
-/

namespace A074537.P4427216544290526384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A003464 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074537.P4427216544290526384

namespace A074537

/-- `Δ[A000051(n)+A003464(n)+A003463(n)]` -/
def P4427216544290526384.Spec : Prop :=
  ∀ n, P4427216544290526384.a n = A074537 n

end A074537

/-! ## A074537.P15324432883287560798

`Δ[A000079(n)+A003464(n)+A003463(n)]`
-/

namespace A074537.P15324432883287560798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A003464 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074537.P15324432883287560798

namespace A074537

/-- `Δ[A000079(n)+A003464(n)+A003463(n)]` -/
def P15324432883287560798.Spec : Prop :=
  ∀ n, P15324432883287560798.a n = A074537 n

end A074537

/-! ## A074537.P5953249422212660838

`abs(A016169(n)-A074538(n))`
-/

namespace A074537.P5953249422212660838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016169 n - A074538 n|

end

end A074537.P5953249422212660838

namespace A074537

/-- `abs(A016169(n)-A074538(n))` -/
def P5953249422212660838.Spec : Prop :=
  ∀ n, P5953249422212660838.a n = A074537 n

end A074537

/-!
# A074538: a(n) = 2^n + 5^n + 7^n.

The programs for A074538, the canonical program `A074538.P8256862648058174290` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074538 has offset 0).

The definition of A074538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+7^n` (program `A074538.P8256862648058174290`, by `A074538.P8256862648058174290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074538.P2974814657876890000

`ogf((3-28x+59x^2)/(1-14x+59x^2-70x^3))`
-/

namespace A074538.P2974814657876890000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -28, 59] [1, -14, 59, -70] n

end

end A074538.P2974814657876890000

namespace A074538

/-- `ogf((3-28x+59x^2)/(1-14x+59x^2-70x^3))` -/
def P2974814657876890000.Spec : Prop :=
  ∀ n, P2974814657876890000.a n = A074538 n

end A074538

/-! ## A074538.P8256862648058174290

`2^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074538

/-- `2^n+5^n+7^n` -/
def P8256862648058174290.Spec : Prop :=
  ∀ n, (P8256862648058174290.a n : ℤ) = A074538 n

theorem P8256862648058174290.correct : P8256862648058174290.Spec := by
  intro n
  simp only [A074538]

end A074538

/-! ## A074538.P4483156991431951421

`14*a(n-1)-59*a(n-2)+70*a(n-3)` with `a(0)=3, a(1)=14, a(2)=78`
-/

namespace A074538.P4483156991431951421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14, 78] fun n a =>
  14 * a (n - 1) - 59 * a (n - 2) + 70 * a (n - 3)

end

end A074538.P4483156991431951421

namespace A074538

/-- `14*a(n-1)-59*a(n-2)+70*a(n-3)` -/
def P4483156991431951421.Spec : Prop :=
  ∀ n, P4483156991431951421.a n = A074538 n

theorem P4483156991431951421.correct : P4483156991431951421.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074538, Nat.add_sub_cancel, A074538.P4483156991431951421.a, A074538.P8256862648058174290.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074538, Nat.add_sub_cancel, A074538.P4483156991431951421.a, A074538.P8256862648058174290.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074538

/-! ## A074538.P16354899125316013030

`abs(3^n-A135168(n))`
-/

namespace A074538.P16354899125316013030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A135168 n|

end

end A074538.P16354899125316013030

namespace A074538

/-- `abs(3^n-A135168(n))` -/
def P16354899125316013030.Spec : Prop :=
  ∀ n, P16354899125316013030.a n = A074538 n

end A074538

/-! ## A074538.P4071515509343677652

`∑{#}[2, A020639(7-#)^n]`
-/

namespace A074538.P4071515509343677652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A020639 (7 - k) ^ n

end

end A074538.P4071515509343677652

namespace A074538

/-- `∑{#}[2, A020639(7-#)^n]` -/
def P4071515509343677652.Spec : Prop :=
  ∀ n, P4071515509343677652.a n = A074538 n

end A074538

/-! ## A074538.P9517993493231916297

`∑{#}[n, C(n, #)*A074512(#)]`
-/

namespace A074538.P9517993493231916297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074512 k

end

end A074538.P9517993493231916297

namespace A074538

/-- `∑{#}[n, C(n, #)*A074512(#)]` -/
def P9517993493231916297.Spec : Prop :=
  ∀ n, P9517993493231916297.a n = A074538 n

end A074538

/-! ## A074538.P13157742426679371772

`abs(A001047(n)-A074552(n))`
-/

namespace A074538.P13157742426679371772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074552 n|

end

end A074538.P13157742426679371772

namespace A074538

/-- `abs(A001047(n)-A074552(n))` -/
def P13157742426679371772.Spec : Prop :=
  ∀ n, P13157742426679371772.a n = A074538 n

end A074538

/-! ## A074538.P16335144853969100967

`abs(A003063(n+1)-A135167(n))`
-/

namespace A074538.P16335144853969100967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003063 (n + 1) - A135167 n|

end

end A074538.P16335144853969100967

namespace A074538

/-- `abs(A003063(n+1)-A135167(n))` -/
def P16335144853969100967.Spec : Prop :=
  ∀ n, P16335144853969100967.a n = A074538 n

end A074538

/-! ## A074538.P4520927365110981379

`Δ[A000079(n)+A023000(n)+A003463(n)]`
-/

namespace A074538.P4520927365110981379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A023000 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074538.P4520927365110981379

namespace A074538

/-- `Δ[A000079(n)+A023000(n)+A003463(n)]` -/
def P4520927365110981379.Spec : Prop :=
  ∀ n, P4520927365110981379.a n = A074538 n

end A074538

/-! ## A074538.P2884440891597739462

`(A135168(n)+A135166(n))/2`
-/

namespace A074538.P2884440891597739462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135168 n + A135166 n : ℚ) / 2

end

end A074538.P2884440891597739462

namespace A074538

/-- `(A135168(n)+A135166(n))/2` -/
def P2884440891597739462.Spec : Prop :=
  ∀ n, P2884440891597739462.a n = (A074538 n : ℚ)

theorem P2884440891597739462.correct : P2884440891597739462.Spec := by
  intro n
  simp only [A074538, Nat.add_sub_cancel, A074538.P2884440891597739462.a, A074538.P8256862648058174290.a, A135166, A135166.P6805597353140494519.a, A135168, A135168.P15537448099565087146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074538

/-!
# A074539: a(n) = 2^n + 5^n + 8^n.

The programs for A074539, the canonical program `A074539.P7545329714654616348` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074539 has offset 0).

The definition of A074539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+8^n` (program `A074539.P7545329714654616348`, by `A074539.P7545329714654616348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074539.P4782876617990876660

`ogf((3-30x+66x^2)/(1-15x+66x^2-80x^3))`
-/

namespace A074539.P4782876617990876660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 66] [1, -15, 66, -80] n

end

end A074539.P4782876617990876660

namespace A074539

/-- `ogf((3-30x+66x^2)/(1-15x+66x^2-80x^3))` -/
def P4782876617990876660.Spec : Prop :=
  ∀ n, P4782876617990876660.a n = A074539 n

end A074539

/-! ## A074539.P7545329714654616348

`2^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074539

/-- `2^n+5^n+8^n` -/
def P7545329714654616348.Spec : Prop :=
  ∀ n, (P7545329714654616348.a n : ℤ) = A074539 n

theorem P7545329714654616348.correct : P7545329714654616348.Spec := by
  intro n
  simp only [A074539]

end A074539

/-! ## A074539.P5063035664697902229

`∑{#}[2, (8-3*#)^n]`
-/

namespace A074539.P5063035664697902229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (8 - (3 * k : ℤ)) ^ n

end

end A074539.P5063035664697902229

namespace A074539

/-- `∑{#}[2, (8-3*#)^n]` -/
def P5063035664697902229.Spec : Prop :=
  ∀ n, P5063035664697902229.a n = A074539 n

end A074539

/-! ## A074539.P2247052721651825634

`or(8^n, A074600(n))`
-/

namespace A074539.P2247052721651825634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n : ℤ) (A074600 n)

end

end A074539.P2247052721651825634

namespace A074539

/-- `or(8^n, A074600(n))` -/
def P2247052721651825634.Spec : Prop :=
  ∀ n, P2247052721651825634.a n = A074539 n

end A074539

/-! ## A074539.P3448444020672044731

`abs(1-2^n-A074518(n))`
-/

namespace A074539.P3448444020672044731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 ^ n : ℤ) - A074518 n|

end

end A074539.P3448444020672044731

namespace A074539

/-- `abs(1-2^n-A074518(n))` -/
def P3448444020672044731.Spec : Prop :=
  ∀ n, P3448444020672044731.a n = A074539 n

end A074539

/-! ## A074539.P3732607280069674517

`or(1, A155635(n)+A000079(n))`
-/

namespace A074539.P3732607280069674517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155635 n + A000079 n)

end

end A074539.P3732607280069674517

namespace A074539

/-- `or(1, A155635(n)+A000079(n))` -/
def P3732607280069674517.Spec : Prop :=
  ∀ n, P3732607280069674517.a n = A074539 n

end A074539

/-! ## A074539.P3058703245362674766

`xor(A062395(n)-1, A074600(n))`
-/

namespace A074539.P3058703245362674766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062395 n - 1) (A074600 n)

end

end A074539.P3058703245362674766

namespace A074539

/-- `xor(A062395(n)-1, A074600(n))` -/
def P3058703245362674766.Spec : Prop :=
  ∀ n, P3058703245362674766.a n = A074539 n

end A074539

/-! ## A074539.P15201848333594842398

`xor(1, A074542(n)-A155639(n))`
-/

namespace A074539.P15201848333594842398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074542 n - A155639 n)

end

end A074539.P15201848333594842398

namespace A074539

/-- `xor(1, A074542(n)-A155639(n))` -/
def P15201848333594842398.Spec : Prop :=
  ∀ n, P15201848333594842398.a n = A074539 n

end A074539

/-! ## A074539.P5270842510054037045

`or(A000051(3*n), A155588(n))`
-/

namespace A074539.P5270842510054037045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (3 * n)) (A155588 n)

end

end A074539.P5270842510054037045

namespace A074539

/-- `or(A000051(3*n), A155588(n))` -/
def P5270842510054037045.Spec : Prop :=
  ∀ n, P5270842510054037045.a n = A074539 n

end A074539

/-! ## A074539.P7096037197238157079

`Δ[2^n+A047850(n)+A023001(n)]`
-/

namespace A074539.P7096037197238157079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A047850 n + A023001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074539.P7096037197238157079

namespace A074539

/-- `Δ[2^n+A047850(n)+A023001(n)]` -/
def P7096037197238157079.Spec : Prop :=
  ∀ n, P7096037197238157079.a n = A074539 n

end A074539

/-! ## A074539.P11795204884536691824

`Δ[A000079(n)+A047853(n)+A003463(n)]`
-/

namespace A074539.P11795204884536691824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A047853 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074539.P11795204884536691824

namespace A074539

/-- `Δ[A000079(n)+A047853(n)+A003463(n)]` -/
def P11795204884536691824.Spec : Prop :=
  ∀ n, P11795204884536691824.a n = A074539 n

end A074539

/-!
# A074540: a(n) = 2^n + 5^n + 9^n.

The programs for A074540, the canonical program `A074540.P18371580203188458495` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074540 has offset 0).

The definition of A074540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+9^n` (program `A074540.P18371580203188458495`, by `A074540.P18371580203188458495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074540.P4579594183172890733

`ogf((3-32x+73x^2)/(1-16x+73x^2-90x^3))`
-/

namespace A074540.P4579594183172890733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 73] [1, -16, 73, -90] n

end

end A074540.P4579594183172890733

namespace A074540

/-- `ogf((3-32x+73x^2)/(1-16x+73x^2-90x^3))` -/
def P4579594183172890733.Spec : Prop :=
  ∀ n, P4579594183172890733.a n = A074540 n

end A074540

/-! ## A074540.P18371580203188458495

`2^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074540

/-- `2^n+5^n+9^n` -/
def P18371580203188458495.Spec : Prop :=
  ∀ n, (P18371580203188458495.a n : ℤ) = A074540 n

theorem P18371580203188458495.correct : P18371580203188458495.Spec := by
  intro n
  simp only [A074540]

end A074540

/-! ## A074540.P2192014358327267742

`16*a(n-1)-73*a(n-2)+90*a(n-3)` with `a(0)=3, a(1)=16, a(2)=110`
-/

namespace A074540.P2192014358327267742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16, 110] fun n a =>
  16 * a (n - 1) - 73 * a (n - 2) + 90 * a (n - 3)

end

end A074540.P2192014358327267742

namespace A074540

/-- `16*a(n-1)-73*a(n-2)+90*a(n-3)` -/
def P2192014358327267742.Spec : Prop :=
  ∀ n, P2192014358327267742.a n = A074540 n

theorem P2192014358327267742.correct : P2192014358327267742.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074540, Nat.add_sub_cancel, A074540.P2192014358327267742.a, A074540.P18371580203188458495.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074540, Nat.add_sub_cancel, A074540.P2192014358327267742.a, A074540.P18371580203188458495.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074540

/-! ## A074540.P3788420096763572429

`abs(A001047(n)-A074554(n))`
-/

namespace A074540.P3788420096763572429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074554 n|

end

end A074540.P3788420096763572429

namespace A074540

/-- `abs(A001047(n)-A074554(n))` -/
def P3788420096763572429.Spec : Prop :=
  ∀ n, P3788420096763572429.a n = A074540 n

end A074540

/-! ## A074540.P3119917971537742694

`Δ[2^n+A003463(n)+A002452(n)]`
-/

namespace A074540.P3119917971537742694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A003463 n + A002452 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074540.P3119917971537742694

namespace A074540

/-- `Δ[2^n+A003463(n)+A002452(n)]` -/
def P3119917971537742694.Spec : Prop :=
  ∀ n, P3119917971537742694.a n = A074540 n

end A074540

/-! ## A074540.P8010323246535255682

`Δ[A000051(n)+A003463(n)+A191681(n)/4]`
-/

namespace A074540.P8010323246535255682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n : ℚ) + ((A003463 n : ℚ) + (A191681 n : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074540.P8010323246535255682

namespace A074540

/-- `Δ[A000051(n)+A003463(n)+A191681(n)/4]` -/
def P8010323246535255682.Spec : Prop :=
  ∀ n, P8010323246535255682.a n = (A074540 n : ℚ)

end A074540

/-! ## A074540.P6974768767982258583

`Δ[A052548(n)+A003463(n)+A191681(n)/4]`
-/

namespace A074540.P6974768767982258583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052548 n : ℚ) + ((A003463 n : ℚ) + (A191681 n : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074540.P6974768767982258583

namespace A074540

/-- `Δ[A052548(n)+A003463(n)+A191681(n)/4]` -/
def P6974768767982258583.Spec : Prop :=
  ∀ n, P6974768767982258583.a n = (A074540 n : ℚ)

end A074540

/-!
# A074541: a(n) = 2^n + 6^n + 7^n.

The programs for A074541, the canonical program `A074541.P9777305932660839317` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074541 has offset 0).

The definition of A074541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6^n+7^n` (program `A074541.P9777305932660839317`, by `A074541.P9777305932660839317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074541.P6128393639039466975

`ogf((3-30x+68x^2)/(1-15x+68x^2-84x^3))`
-/

namespace A074541.P6128393639039466975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 68] [1, -15, 68, -84] n

end

end A074541.P6128393639039466975

namespace A074541

/-- `ogf((3-30x+68x^2)/(1-15x+68x^2-84x^3))` -/
def P6128393639039466975.Spec : Prop :=
  ∀ n, P6128393639039466975.a n = A074541 n

end A074541

/-! ## A074541.P9777305932660839317

`2^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074541

/-- `2^n+6^n+7^n` -/
def P9777305932660839317.Spec : Prop :=
  ∀ n, (P9777305932660839317.a n : ℤ) = A074541 n

theorem P9777305932660839317.correct : P9777305932660839317.Spec := by
  intro n
  simp only [A074541]

end A074541

/-! ## A074541.P12894610113819851472

`∑{#}[n, C(n, #)*A074516(#)]`
-/

namespace A074541.P12894610113819851472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074516 k

end

end A074541.P12894610113819851472

namespace A074541

/-- `∑{#}[n, C(n, #)*A074516(#)]` -/
def P12894610113819851472.Spec : Prop :=
  ∀ n, P12894610113819851472.a n = A074541 n

end A074541

/-! ## A074541.P4170409984623195158

`abs(A005057(n)-A074571(n))`
-/

namespace A074541.P4170409984623195158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005057 n - A074571 n|

end

end A074541.P4170409984623195158

namespace A074541

/-- `abs(A005057(n)-A074571(n))` -/
def P4170409984623195158.Spec : Prop :=
  ∀ n, P4170409984623195158.a n = A074541 n

end A074541

/-!
# A074542: a(n) = 2^n + 6^n + 8^n.

The programs for A074542, the canonical program `A074542.P9016030283820308541` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074542 has offset 0).

The definition of A074542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6^n+8^n` (program `A074542.P9016030283820308541`, by `A074542.P9016030283820308541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074542.P4665394995036231762

`ogf((3-32x+76x^2)/(1-16x+76x^2-96x^3))`
-/

namespace A074542.P4665394995036231762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 76] [1, -16, 76, -96] n

end

end A074542.P4665394995036231762

namespace A074542

/-- `ogf((3-32x+76x^2)/(1-16x+76x^2-96x^3))` -/
def P4665394995036231762.Spec : Prop :=
  ∀ n, P4665394995036231762.a n = A074542 n

end A074542

/-! ## A074542.P9016030283820308541

`2^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074542

/-- `2^n+6^n+8^n` -/
def P9016030283820308541.Spec : Prop :=
  ∀ n, (P9016030283820308541.a n : ℤ) = A074542 n

theorem P9016030283820308541.correct : P9016030283820308541.Spec := by
  intro n
  simp only [A074542]

end A074542

/-! ## A074542.P7119940401445589051

`16*a(n-1)-76*a(n-2)+96*a(n-3)` with `a(0)=3, a(1)=16, a(2)=104`
-/

namespace A074542.P7119940401445589051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16, 104] fun n a =>
  16 * a (n - 1) - 76 * a (n - 2) + 96 * a (n - 3)

end

end A074542.P7119940401445589051

namespace A074542

/-- `16*a(n-1)-76*a(n-2)+96*a(n-3)` -/
def P7119940401445589051.Spec : Prop :=
  ∀ n, P7119940401445589051.a n = A074542 n

theorem P7119940401445589051.correct : P7119940401445589051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074542, Nat.add_sub_cancel, A074542.P7119940401445589051.a, A074542.P9016030283820308541.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074542, Nat.add_sub_cancel, A074542.P7119940401445589051.a, A074542.P9016030283820308541.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074542

/-! ## A074542.P346880018435352897

`2^n*A074506(n)`
-/

namespace A074542.P346880018435352897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A074506 n

end

end A074542.P346880018435352897

namespace A074542

/-- `2^n*A074506(n)` -/
def P346880018435352897.Spec : Prop :=
  ∀ n, P346880018435352897.a n = A074542 n

end A074542

/-! ## A074542.P15491874816451321410

`(A074605(n)+1)*2^n`
-/

namespace A074542.P15491874816451321410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + 1) * (2 ^ n : ℤ)

end

end A074542.P15491874816451321410

namespace A074542

/-- `(A074605(n)+1)*2^n` -/
def P15491874816451321410.Spec : Prop :=
  ∀ n, P15491874816451321410.a n = A074542 n

end A074542

/-! ## A074542.P6730668141057850826

`∑{#}[2, (4+2*A112181(#))^n]`
-/

namespace A074542.P6730668141057850826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 + 2 * A112181 k) ^ n

end

end A074542.P6730668141057850826

namespace A074542

/-- `∑{#}[2, (4+2*A112181(#))^n]` -/
def P6730668141057850826.Spec : Prop :=
  ∀ n, P6730668141057850826.a n = A074542 n

end A074542

/-! ## A074542.P17635499610771461106

`(A155602(n)+2)*A000079(n)`
-/

namespace A074542.P17635499610771461106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155602 n + 2) * A000079 n

end

end A074542.P17635499610771461106

namespace A074542

/-- `(A155602(n)+2)*A000079(n)` -/
def P17635499610771461106.Spec : Prop :=
  ∀ n, P17635499610771461106.a n = A074542 n

end A074542

/-! ## A074542.P13330956430650767238

`(Δ[A085282(n)]+1)*A000079(n)`
-/

namespace A074542.P13330956430650767238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000079 n

end

end A074542.P13330956430650767238

namespace A074542

/-- `(Δ[A085282(n)]+1)*A000079(n)` -/
def P13330956430650767238.Spec : Prop :=
  ∀ n, P13330956430650767238.a n = A074542 n

end A074542

/-! ## A074542.P4367434933794284449

`A074506(n)*A099627(A000217(n))`
-/

namespace A074542.P4367434933794284449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074506 n * A099627 (A000217 n).toNat

end

end A074542.P4367434933794284449

namespace A074542

/-- `A074506(n)*A099627(A000217(n))` -/
def P4367434933794284449.Spec : Prop :=
  ∀ n, P4367434933794284449.a n = A074542 n

end A074542

/-! ## A074542.P16138433511126611748

`(A001551(n)-A000079(n))*A000079(n)`
-/

namespace A074542.P16138433511126611748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - A000079 n) * A000079 n

end

end A074542.P16138433511126611748

namespace A074542

/-- `(A001551(n)-A000079(n))*A000079(n)` -/
def P16138433511126611748.Spec : Prop :=
  ∀ n, P16138433511126611748.a n = A074542 n

end A074542

/-! ## A074542.P13179540682140757073

`(A034472(n)+A000079(n)²)*A000079(n)`
-/

namespace A074542.P13179540682140757073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000079 n ^ 2) * A000079 n

end

end A074542.P13179540682140757073

namespace A074542

/-- `(A034472(n)+A000079(n)²)*A000079(n)` -/
def P13179540682140757073.Spec : Prop :=
  ∀ n, P13179540682140757073.a n = A074542 n

end A074542

/-! ## A074542.P11568668948849084972

`(A087433(n+1)+A047849(n))*A000079(n)`
-/

namespace A074542.P11568668948849084972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087433 (n + 1) + A047849 n) * A000079 n

end

end A074542.P11568668948849084972

namespace A074542

/-- `(A087433(n+1)+A047849(n))*A000079(n)` -/
def P11568668948849084972.Spec : Prop :=
  ∀ n, P11568668948849084972.a n = A074542 n

end A074542

/-! ## A074542.P2312536804243507204

`(A094388(n+1)+A011782(n+1)²)*A011782(n+1)`
-/

namespace A074542.P2312536804243507204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094388 (n + 1) + A011782 (n + 1) ^ 2) * A011782 (n + 1)

end

end A074542.P2312536804243507204

namespace A074542

/-- `(A094388(n+1)+A011782(n+1)²)*A011782(n+1)` -/
def P2312536804243507204.Spec : Prop :=
  ∀ n, P2312536804243507204.a n = A074542 n

end A074542

/-! ## A074542.P410188115397742142

`(A094388(n+1)+A011782(2*n+1))*A011782(n+1)`
-/

namespace A074542.P410188115397742142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094388 (n + 1) + A011782 (2 * n + 1)) * A011782 (n + 1)

end

end A074542.P410188115397742142

namespace A074542

/-- `(A094388(n+1)+A011782(2*n+1))*A011782(n+1)` -/
def P410188115397742142.Spec : Prop :=
  ∀ n, P410188115397742142.a n = A074542 n

end A074542

/-!
# A074543: a(n) = 2^n + 6^n + 9^n.

The programs for A074543, the canonical program `A074543.P15082951967388589342` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074543 has offset 0).

The definition of A074543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6^n+9^n` (program `A074543.P15082951967388589342`, by `A074543.P15082951967388589342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074543.P17150436547541350574

`ogf((3-34x+84x^2)/(1-17x+84x^2-108x^3))`
-/

namespace A074543.P17150436547541350574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -34, 84] [1, -17, 84, -108] n

end

end A074543.P17150436547541350574

namespace A074543

/-- `ogf((3-34x+84x^2)/(1-17x+84x^2-108x^3))` -/
def P17150436547541350574.Spec : Prop :=
  ∀ n, P17150436547541350574.a n = A074543 n

end A074543

/-! ## A074543.P15082951967388589342

`2^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074543

/-- `2^n+6^n+9^n` -/
def P15082951967388589342.Spec : Prop :=
  ∀ n, (P15082951967388589342.a n : ℤ) = A074543 n

theorem P15082951967388589342.correct : P15082951967388589342.Spec := by
  intro n
  simp only [A074543]

end A074543

/-! ## A074543.P12494133325726066161

`17*a(n-1)-84*a(n-2)+108*a(n-3)` with `a(0)=3, a(1)=17, a(2)=121`
-/

namespace A074543.P12494133325726066161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 121] fun n a =>
  17 * a (n - 1) - 84 * a (n - 2) + 108 * a (n - 3)

end

end A074543.P12494133325726066161

namespace A074543

/-- `17*a(n-1)-84*a(n-2)+108*a(n-3)` -/
def P12494133325726066161.Spec : Prop :=
  ∀ n, P12494133325726066161.a n = A074543 n

theorem P12494133325726066161.correct : P12494133325726066161.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074543, Nat.add_sub_cancel, A074543.P12494133325726066161.a, A074543.P15082951967388589342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074543, Nat.add_sub_cancel, A074543.P12494133325726066161.a, A074543.P15082951967388589342.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074543

/-! ## A074543.P7598172413326123571

`xor(1, A074621(n)+A000225(n))`
-/

namespace A074543.P7598172413326123571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074621 n + A000225 n)

end

end A074543.P7598172413326123571

namespace A074543

/-- `xor(1, A074621(n)+A000225(n))` -/
def P7598172413326123571.Spec : Prop :=
  ∀ n, P7598172413326123571.a n = A074543 n

end A074543

/-!
# A074544: a(n) = 2^n + 7^n + 8^n.

The programs for A074544, the canonical program `A074544.P6771952476734506949` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074544 has offset 0).

The definition of A074544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+7^n+8^n` (program `A074544.P6771952476734506949`, by `A074544.P6771952476734506949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074544.P3729812742849637348

`ogf((3-34x+86x^2)/(1-17x+86x^2-112x^3))`
-/

namespace A074544.P3729812742849637348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -34, 86] [1, -17, 86, -112] n

end

end A074544.P3729812742849637348

namespace A074544

/-- `ogf((3-34x+86x^2)/(1-17x+86x^2-112x^3))` -/
def P3729812742849637348.Spec : Prop :=
  ∀ n, P3729812742849637348.a n = A074544 n

end A074544

/-! ## A074544.P6771952476734506949

`2^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074544

/-- `2^n+7^n+8^n` -/
def P6771952476734506949.Spec : Prop :=
  ∀ n, (P6771952476734506949.a n : ℤ) = A074544 n

theorem P6771952476734506949.correct : P6771952476734506949.Spec := by
  intro n
  simp only [A074544]

end A074544

/-! ## A074544.P5316301957091100972

`17*a(n-1)-86*a(n-2)+112*a(n-3)` with `a(0)=3, a(1)=17, a(2)=117`
-/

namespace A074544.P5316301957091100972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 117] fun n a =>
  17 * a (n - 1) - 86 * a (n - 2) + 112 * a (n - 3)

end

end A074544.P5316301957091100972

namespace A074544

/-- `17*a(n-1)-86*a(n-2)+112*a(n-3)` -/
def P5316301957091100972.Spec : Prop :=
  ∀ n, P5316301957091100972.a n = A074544 n

theorem P5316301957091100972.correct : P5316301957091100972.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074544, Nat.add_sub_cancel, A074544.P5316301957091100972.a, A074544.P6771952476734506949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074544, Nat.add_sub_cancel, A074544.P5316301957091100972.a, A074544.P6771952476734506949.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074544

/-! ## A074544.P8958280128746040742

`or(1, A155655(n)+2^n)`
-/

namespace A074544.P8958280128746040742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155655 n + (2 ^ n : ℤ))

end

end A074544.P8958280128746040742

namespace A074544

/-- `or(1, A155655(n)+2^n)` -/
def P8958280128746040742.Spec : Prop :=
  ∀ n, P8958280128746040742.a n = A074544 n

end A074544

/-! ## A074544.P6765134891145213700

`abs(A001047(n)-A074558(n))`
-/

namespace A074544.P6765134891145213700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074558 n|

end

end A074544.P6765134891145213700

namespace A074544

/-- `abs(A001047(n)-A074558(n))` -/
def P6765134891145213700.Spec : Prop :=
  ∀ n, P6765134891145213700.a n = A074544 n

end A074544

/-!
# A074545: a(n) = 2^n + 7^n + 9^n.

The programs for A074545, the canonical program `A074545.P2508276220111533207` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074545 has offset 0).

The definition of A074545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+7^n+9^n` (program `A074545.P2508276220111533207`, by `A074545.P2508276220111533207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074545.P11630505841867677974

`ogf((3-36x+95x^2)/(1-18x+95x^2-126x^3))`
-/

namespace A074545.P11630505841867677974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -36, 95] [1, -18, 95, -126] n

end

end A074545.P11630505841867677974

namespace A074545

/-- `ogf((3-36x+95x^2)/(1-18x+95x^2-126x^3))` -/
def P11630505841867677974.Spec : Prop :=
  ∀ n, P11630505841867677974.a n = A074545 n

end A074545

/-! ## A074545.P2508276220111533207

`2^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074545

/-- `2^n+7^n+9^n` -/
def P2508276220111533207.Spec : Prop :=
  ∀ n, (P2508276220111533207.a n : ℤ) = A074545 n

theorem P2508276220111533207.correct : P2508276220111533207.Spec := by
  intro n
  simp only [A074545]

end A074545

/-! ## A074545.P11173182659943607388

`18*a(n-1)-95*a(n-2)+126*a(n-3)` with `a(0)=3, a(1)=18, a(2)=134`
-/

namespace A074545.P11173182659943607388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 18, 134] fun n a =>
  18 * a (n - 1) - 95 * a (n - 2) + 126 * a (n - 3)

end

end A074545.P11173182659943607388

namespace A074545

/-- `18*a(n-1)-95*a(n-2)+126*a(n-3)` -/
def P11173182659943607388.Spec : Prop :=
  ∀ n, P11173182659943607388.a n = A074545 n

theorem P11173182659943607388.correct : P11173182659943607388.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074545, Nat.add_sub_cancel, A074545.P11173182659943607388.a, A074545.P2508276220111533207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074545, Nat.add_sub_cancel, A074545.P11173182659943607388.a, A074545.P2508276220111533207.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074545

/-! ## A074545.P10253555448951244753

`abs(A001047(n)-A074559(n))`
-/

namespace A074545.P10253555448951244753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074559 n|

end

end A074545.P10253555448951244753

namespace A074545

/-- `abs(A001047(n)-A074559(n))` -/
def P10253555448951244753.Spec : Prop :=
  ∀ n, P10253555448951244753.a n = A074545 n

end A074545

/-! ## A074545.P9983238487682495483

`abs(A020522(n)-A074569(n))`
-/

namespace A074545.P9983238487682495483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020522 n - A074569 n|

end

end A074545.P9983238487682495483

namespace A074545

/-- `abs(A020522(n)-A074569(n))` -/
def P9983238487682495483.Spec : Prop :=
  ∀ n, P9983238487682495483.a n = A074545 n

end A074545

/-! ## A074545.P9521986214216177172

`∑[A166444(n+1)+A055275(n)+A055272(n)]`
-/

namespace A074545.P9521986214216177172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + (A055275 n + A055272 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074545.P9521986214216177172

namespace A074545

/-- `∑[A166444(n+1)+A055275(n)+A055272(n)]` -/
def P9521986214216177172.Spec : Prop :=
  ∀ n, P9521986214216177172.a n = A074545 n

end A074545

/-!
# A074546: a(n) = 2^n + 8^n + 9^n.

The programs for A074546, the canonical program `A074546.P303920784059392654` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074546 has offset 0).

The definition of A074546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+8^n+9^n` (program `A074546.P303920784059392654`, by `A074546.P303920784059392654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074546.P16292823328803854681

`ogf((3-38x+106x^2)/(1-19x+106x^2-144x^3))`
-/

namespace A074546.P16292823328803854681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -38, 106] [1, -19, 106, -144] n

end

end A074546.P16292823328803854681

namespace A074546

/-- `ogf((3-38x+106x^2)/(1-19x+106x^2-144x^3))` -/
def P16292823328803854681.Spec : Prop :=
  ∀ n, P16292823328803854681.a n = A074546 n

end A074546

/-! ## A074546.P303920784059392654

`2^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074546

/-- `2^n+8^n+9^n` -/
def P303920784059392654.Spec : Prop :=
  ∀ n, (P303920784059392654.a n : ℤ) = A074546 n

theorem P303920784059392654.correct : P303920784059392654.Spec := by
  intro n
  simp only [A074546]

end A074546

/-! ## A074546.P10892740958418900129

`19*a(n-1)-106*a(n-2)+144*a(n-3)` with `a(0)=3, a(1)=19, a(2)=149`
-/

namespace A074546.P10892740958418900129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 19, 149] fun n a =>
  19 * a (n - 1) - 106 * a (n - 2) + 144 * a (n - 3)

end

end A074546.P10892740958418900129

namespace A074546

/-- `19*a(n-1)-106*a(n-2)+144*a(n-3)` -/
def P10892740958418900129.Spec : Prop :=
  ∀ n, P10892740958418900129.a n = A074546 n

theorem P10892740958418900129.correct : P10892740958418900129.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074546, Nat.add_sub_cancel, A074546.P10892740958418900129.a, A074546.P303920784059392654.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074546, Nat.add_sub_cancel, A074546.P10892740958418900129.a, A074546.P303920784059392654.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074546

/-! ## A074546.P2158811517548041268

`abs(A001047(n)-A074560(n))`
-/

namespace A074546.P2158811517548041268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074560 n|

end

end A074546.P2158811517548041268

namespace A074546

/-- `abs(A001047(n)-A074560(n))` -/
def P2158811517548041268.Spec : Prop :=
  ∀ n, P2158811517548041268.a n = A074546 n

end A074546

/-! ## A074546.P4228369392970494024

`or(1, A155663(n)+A000079(n))`
-/

namespace A074546.P4228369392970494024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155663 n + A000079 n)

end

end A074546.P4228369392970494024

namespace A074546

/-- `or(1, A155663(n)+A000079(n))` -/
def P4228369392970494024.Spec : Prop :=
  ∀ n, P4228369392970494024.a n = A074546 n

end A074546

/-! ## A074546.P9217867472829083591

`xor(1, A074624(n)+A000225(n))`
-/

namespace A074546.P9217867472829083591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074624 n + A000225 n)

end

end A074546.P9217867472829083591

namespace A074546

/-- `xor(1, A074624(n)+A000225(n))` -/
def P9217867472829083591.Spec : Prop :=
  ∀ n, P9217867472829083591.a n = A074546 n

end A074546

/-!
# A074547: a(n) = 3^n + 4^n + 5^n.

The programs for A074547, the canonical program `A074547.P5874871662245387837` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074547 has offset 0).

The definition of A074547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+5^n` (program `A074547.P5874871662245387837`, by `A074547.P5874871662245387837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074547.P5874871662245387837

`3^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074547

/-- `3^n+4^n+5^n` -/
def P5874871662245387837.Spec : Prop :=
  ∀ n, (P5874871662245387837.a n : ℤ) = A074547 n

theorem P5874871662245387837.correct : P5874871662245387837.Spec := by
  intro n
  simp only [A074547]

end A074547

/-! ## A074547.P3436959836503707839

`ogf((3-24x+47x^2)/(1-12x+47x^2-60x^3))`
-/

namespace A074547.P3436959836503707839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24, 47] [1, -12, 47, -60] n

end

end A074547.P3436959836503707839

namespace A074547

/-- `ogf((3-24x+47x^2)/(1-12x+47x^2-60x^3))` -/
def P3436959836503707839.Spec : Prop :=
  ∀ n, P3436959836503707839.a n = A074547 n

end A074547

/-! ## A074547.P8898450765417935506

`12*a(n-1)-47*a(n-2)+60*a(n-3)` with `a(0)=3, a(1)=12, a(2)=50`
-/

namespace A074547.P8898450765417935506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 50] fun n a =>
  12 * a (n - 1) - 47 * a (n - 2) + 60 * a (n - 3)

end

end A074547.P8898450765417935506

namespace A074547

/-- `12*a(n-1)-47*a(n-2)+60*a(n-3)` -/
def P8898450765417935506.Spec : Prop :=
  ∀ n, P8898450765417935506.a n = A074547 n

theorem P8898450765417935506.correct : P8898450765417935506.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074547, Nat.add_sub_cancel, A074547.P8898450765417935506.a, A074547.P5874871662245387837.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074547, Nat.add_sub_cancel, A074547.P8898450765417935506.a, A074547.P5874871662245387837.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074547

/-! ## A074547.P16566983274868223126

`∑{#}[2, (3+#)^n]`
-/

namespace A074547.P16566983274868223126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 + k) ^ n

end

end A074547.P16566983274868223126

namespace A074547

/-- `∑{#}[2, (3+#)^n]` -/
def P16566983274868223126.Spec : Prop :=
  ∀ n, (P16566983274868223126.a n : ℤ) = A074547 n

end A074547

/-! ## A074547.P16727299081944196664

`abs(∑{#}[2, (5-#)^n])`
-/

namespace A074547.P16727299081944196664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ k ∈ Finset.range (f1 n + 1), (5 - (k : ℤ)) ^ n|

end

end A074547.P16727299081944196664

namespace A074547

/-- `abs(∑{#}[2, (5-#)^n])` -/
def P16727299081944196664.Spec : Prop :=
  ∀ n, P16727299081944196664.a n = A074547 n

end A074547

/-! ## A074547.P12467237303399294954

`abs(A000051(n)-A001552(n))`
-/

namespace A074547.P12467237303399294954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A001552 n|

end

end A074547.P12467237303399294954

namespace A074547

/-- `abs(A000051(n)-A001552(n))` -/
def P12467237303399294954.Spec : Prop :=
  ∀ n, P12467237303399294954.a n = A074547 n

end A074547

/-! ## A074547.P13049381656180880411

`Δ[A036557(2*n+1)+A003463(n)]`
-/

namespace A074547.P13049381656180880411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074547.P13049381656180880411

namespace A074547

/-- `Δ[A036557(2*n+1)+A003463(n)]` -/
def P13049381656180880411.Spec : Prop :=
  ∀ n, P13049381656180880411.a n = A074547 n

end A074547

/-! ## A074547.P11228645039190195629

`Δ[A002450(n)+A007051(n)+A003463(n)]`
-/

namespace A074547.P11228645039190195629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + (A007051 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074547.P11228645039190195629

namespace A074547

/-- `Δ[A002450(n)+A007051(n)+A003463(n)]` -/
def P11228645039190195629.Spec : Prop :=
  ∀ n, P11228645039190195629.a n = A074547 n

end A074547

/-!
# A074548: a(n) = 3^n + 4^n + 6^n.

The programs for A074548, the canonical program `A074548.P14174617057539431764` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074548 has offset 0).

The definition of A074548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+6^n` (program `A074548.P14174617057539431764`, by `A074548.P14174617057539431764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074548.P7599149743172378346

`ogf((3-26x+54x^2)/(1-13x+54x^2-72x^3))`
-/

namespace A074548.P7599149743172378346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -26, 54] [1, -13, 54, -72] n

end

end A074548.P7599149743172378346

namespace A074548

/-- `ogf((3-26x+54x^2)/(1-13x+54x^2-72x^3))` -/
def P7599149743172378346.Spec : Prop :=
  ∀ n, P7599149743172378346.a n = A074548 n

end A074548

/-! ## A074548.P14174617057539431764

`3^n+4^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074548

/-- `3^n+4^n+6^n` -/
def P14174617057539431764.Spec : Prop :=
  ∀ n, (P14174617057539431764.a n : ℤ) = A074548 n

theorem P14174617057539431764.correct : P14174617057539431764.Spec := by
  intro n
  simp only [A074548]

end A074548

/-! ## A074548.P6614640545612641270

`13*a(n-1)-54*a(n-2)+72*a(n-3)` with `a(0)=3, a(1)=13, a(2)=61`
-/

namespace A074548.P6614640545612641270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 61] fun n a =>
  13 * a (n - 1) - 54 * a (n - 2) + 72 * a (n - 3)

end

end A074548.P6614640545612641270

namespace A074548

/-- `13*a(n-1)-54*a(n-2)+72*a(n-3)` -/
def P6614640545612641270.Spec : Prop :=
  ∀ n, P6614640545612641270.a n = A074548 n

theorem P6614640545612641270.correct : P6614640545612641270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074548, Nat.add_sub_cancel, A074548.P6614640545612641270.a, A074548.P14174617057539431764.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074548, Nat.add_sub_cancel, A074548.P6614640545612641270.a, A074548.P14174617057539431764.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074548

/-! ## A074548.P10225128038746172423

`∑{#}[n, C(n, #)*A074527(#)]`
-/

namespace A074548.P10225128038746172423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074527 k

end

end A074548.P10225128038746172423

namespace A074548

/-- `∑{#}[n, C(n, #)*A074527(#)]` -/
def P10225128038746172423.Spec : Prop :=
  ∀ n, P10225128038746172423.a n = A074548 n

end A074548

/-! ## A074548.P11145321126681518583

`or(1, A074605(n)+A024062(n))`
-/

namespace A074548.P11145321126681518583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074605 n + A024062 n)

end

end A074548.P11145321126681518583

namespace A074548

/-- `or(1, A074605(n)+A024062(n))` -/
def P11145321126681518583.Spec : Prop :=
  ∀ n, P11145321126681518583.a n = A074548 n

end A074548

/-! ## A074548.P5422224789842467025

`or(1, A000051(n)*A005056(n))`
-/

namespace A074548.P5422224789842467025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000051 n * A005056 n)

end

end A074548.P5422224789842467025

namespace A074548

/-- `or(1, A000051(n)*A005056(n))` -/
def P5422224789842467025.Spec : Prop :=
  ∀ n, P5422224789842467025.a n = A074548 n

end A074548

/-!
# A074549: a(n) = 3^n + 4^n + 7^n.

The programs for A074549, the canonical program `A074549.P15317035552885254422` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074549 has offset 0).

The definition of A074549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+7^n` (program `A074549.P15317035552885254422`, by `A074549.P15317035552885254422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074549.P16703421876914652713

`ogf((3-28x+61x^2)/(1-14x+61x^2-84x^3))`
-/

namespace A074549.P16703421876914652713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -28, 61] [1, -14, 61, -84] n

end

end A074549.P16703421876914652713

namespace A074549

/-- `ogf((3-28x+61x^2)/(1-14x+61x^2-84x^3))` -/
def P16703421876914652713.Spec : Prop :=
  ∀ n, P16703421876914652713.a n = A074549 n

end A074549

/-! ## A074549.P15317035552885254422

`3^n+4^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074549

/-- `3^n+4^n+7^n` -/
def P15317035552885254422.Spec : Prop :=
  ∀ n, (P15317035552885254422.a n : ℤ) = A074549 n

theorem P15317035552885254422.correct : P15317035552885254422.Spec := by
  intro n
  simp only [A074549]

end A074549

/-! ## A074549.P4974914554955159389

`14*a(n-1)-61*a(n-2)+84*a(n-3)` with `a(0)=3, a(1)=14, a(2)=74`
-/

namespace A074549.P4974914554955159389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14, 74] fun n a =>
  14 * a (n - 1) - 61 * a (n - 2) + 84 * a (n - 3)

end

end A074549.P4974914554955159389

namespace A074549

/-- `14*a(n-1)-61*a(n-2)+84*a(n-3)` -/
def P4974914554955159389.Spec : Prop :=
  ∀ n, P4974914554955159389.a n = A074549 n

theorem P4974914554955159389.correct : P4974914554955159389.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074549, Nat.add_sub_cancel, A074549.P4974914554955159389.a, A074549.P15317035552885254422.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074549, Nat.add_sub_cancel, A074549.P4974914554955159389.a, A074549.P15317035552885254422.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074549

/-! ## A074549.P5831425051544047269

`∑{#}[n, C(n, #)*A074528(#)]`
-/

namespace A074549.P5831425051544047269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074528 k

end

end A074549.P5831425051544047269

namespace A074549

/-- `∑{#}[n, C(n, #)*A074528(#)]` -/
def P5831425051544047269.Spec : Prop :=
  ∀ n, P5831425051544047269.a n = A074549 n

end A074549

/-! ## A074549.P13056597494194215666

`Δ[A085282(n)+A023000(n)]`
-/

namespace A074549.P13056597494194215666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074549.P13056597494194215666

namespace A074549

/-- `Δ[A085282(n)+A023000(n)]` -/
def P13056597494194215666.Spec : Prop :=
  ∀ n, P13056597494194215666.a n = A074549 n

end A074549

/-! ## A074549.P1467263107230055365

`abs(A059409(n)-A074558(n))`
-/

namespace A074549.P1467263107230055365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074558 n|

end

end A074549.P1467263107230055365

namespace A074549

/-- `abs(A059409(n)-A074558(n))` -/
def P1467263107230055365.Spec : Prop :=
  ∀ n, P1467263107230055365.a n = A074549 n

end A074549

/-! ## A074549.P1553972114209632479

`-((A059409(n)-A074558(n))%A225137(n+1))`
-/

namespace A074549.P1553972114209632479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A059409 n - A074558 n) (A225137 (n + 1))

end

end A074549.P1553972114209632479

namespace A074549

/-- `-((A059409(n)-A074558(n))%A225137(n+1))` -/
def P1553972114209632479.Spec : Prop :=
  ∀ n, P1553972114209632479.a n = A074549 n

end A074549

/-!
# A074550: a(n) = 3^n + 4^n + 8^n.

The programs for A074550, the canonical program `A074550.P15764064879711821500` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074550 has offset 0).

The definition of A074550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+8^n` (program `A074550.P15764064879711821500`, by `A074550.P15764064879711821500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074550.P3504619076998604492

`ogf((3-30x+68x^2)/(1-15x+68x^2-96x^3))`
-/

namespace A074550.P3504619076998604492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 68] [1, -15, 68, -96] n

end

end A074550.P3504619076998604492

namespace A074550

/-- `ogf((3-30x+68x^2)/(1-15x+68x^2-96x^3))` -/
def P3504619076998604492.Spec : Prop :=
  ∀ n, P3504619076998604492.a n = A074550 n

end A074550

/-! ## A074550.P15764064879711821500

`3^n+4^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074550

/-- `3^n+4^n+8^n` -/
def P15764064879711821500.Spec : Prop :=
  ∀ n, (P15764064879711821500.a n : ℤ) = A074550 n

theorem P15764064879711821500.correct : P15764064879711821500.Spec := by
  intro n
  simp only [A074550]

end A074550

/-! ## A074550.P1313716705646792979

`15*a(n-1)-68*a(n-2)+96*a(n-3)` with `a(0)=3, a(1)=15, a(2)=89`
-/

namespace A074550.P1313716705646792979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15, 89] fun n a =>
  15 * a (n - 1) - 68 * a (n - 2) + 96 * a (n - 3)

end

end A074550.P1313716705646792979

namespace A074550

/-- `15*a(n-1)-68*a(n-2)+96*a(n-3)` -/
def P1313716705646792979.Spec : Prop :=
  ∀ n, P1313716705646792979.a n = A074550 n

theorem P1313716705646792979.correct : P1313716705646792979.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074550, Nat.add_sub_cancel, A074550.P1313716705646792979.a, A074550.P15764064879711821500.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074550, Nat.add_sub_cancel, A074550.P1313716705646792979.a, A074550.P15764064879711821500.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074550

/-! ## A074550.P12951363787974261832

`xor(3^n, A063481(n))`
-/

namespace A074550.P12951363787974261832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 ^ n : ℤ) (A063481 n)

end

end A074550.P12951363787974261832

namespace A074550

/-- `xor(3^n, A063481(n))` -/
def P12951363787974261832.Spec : Prop :=
  ∀ n, P12951363787974261832.a n = A074550 n

end A074550

/-! ## A074550.P7788361972347496664

`or(A000244(n), A063481(n))`
-/

namespace A074550.P7788361972347496664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n) (A063481 n)

end

end A074550.P7788361972347496664

namespace A074550

/-- `or(A000244(n), A063481(n))` -/
def P7788361972347496664.Spec : Prop :=
  ∀ n, P7788361972347496664.a n = A074550 n

end A074550

/-! ## A074550.P14842793341435762340

`or(A074605(n), A103459(n))`
-/

namespace A074550.P14842793341435762340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074605 n) (A103459 n)

end

end A074550.P14842793341435762340

namespace A074550

/-- `or(A074605(n), A103459(n))` -/
def P14842793341435762340.Spec : Prop :=
  ∀ n, P14842793341435762340.a n = A074550 n

end A074550

/-! ## A074550.P16830777524700600040

`or(Δ[A003462(n)], A063481(n))`
-/

namespace A074550.P16830777524700600040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A063481 n)

end

end A074550.P16830777524700600040

namespace A074550

/-- `or(Δ[A003462(n)], A063481(n))` -/
def P16830777524700600040.Spec : Prop :=
  ∀ n, P16830777524700600040.a n = A074550 n

end A074550

/-! ## A074550.P3192086686306321808

`or(Δ[A007051(n)], A063481(n))`
-/

namespace A074550.P3192086686306321808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A063481 n)

end

end A074550.P3192086686306321808

namespace A074550

/-- `or(Δ[A007051(n)], A063481(n))` -/
def P3192086686306321808.Spec : Prop :=
  ∀ n, P3192086686306321808.a n = A074550 n

end A074550

/-!
# A074551: a(n) = 3^n + 4^n + 9^n.

The programs for A074551, the canonical program `A074551.P10327552448071292567` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074551 has offset 0).

The definition of A074551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+9^n` (program `A074551.P10327552448071292567`, by `A074551.P10327552448071292567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074551.P10328988215938509826

`ogf((3-32x+75x^2)/(1-16x+75x^2-108x^3))`
-/

namespace A074551.P10328988215938509826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 75] [1, -16, 75, -108] n

end

end A074551.P10328988215938509826

namespace A074551

/-- `ogf((3-32x+75x^2)/(1-16x+75x^2-108x^3))` -/
def P10328988215938509826.Spec : Prop :=
  ∀ n, P10328988215938509826.a n = A074551 n

end A074551

/-! ## A074551.P10327552448071292567

`3^n+4^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074551

/-- `3^n+4^n+9^n` -/
def P10327552448071292567.Spec : Prop :=
  ∀ n, (P10327552448071292567.a n : ℤ) = A074551 n

theorem P10327552448071292567.correct : P10327552448071292567.Spec := by
  intro n
  simp only [A074551]

end A074551

/-! ## A074551.P7417071144520738504

`16*a(n-1)-75*a(n-2)+108*a(n-3)` with `a(0)=3, a(1)=16, a(2)=106`
-/

namespace A074551.P7417071144520738504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16, 106] fun n a =>
  16 * a (n - 1) - 75 * a (n - 2) + 108 * a (n - 3)

end

end A074551.P7417071144520738504

namespace A074551

/-- `16*a(n-1)-75*a(n-2)+108*a(n-3)` -/
def P7417071144520738504.Spec : Prop :=
  ∀ n, P7417071144520738504.a n = A074551 n

theorem P7417071144520738504.correct : P7417071144520738504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074551, Nat.add_sub_cancel, A074551.P7417071144520738504.a, A074551.P10327552448071292567.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074551, Nat.add_sub_cancel, A074551.P7417071144520738504.a, A074551.P10327552448071292567.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074551

/-! ## A074551.P13177176308486359233

`abs(A005060(n)-A074554(n))`
-/

namespace A074551.P13177176308486359233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005060 n - A074554 n|

end

end A074551.P13177176308486359233

namespace A074551

/-- `abs(A005060(n)-A074554(n))` -/
def P13177176308486359233.Spec : Prop :=
  ∀ n, P13177176308486359233.a n = A074551 n

end A074551

/-! ## A074551.P1444123139634812885

`abs(A059409(n)-A074560(n))`
-/

namespace A074551.P1444123139634812885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074560 n|

end

end A074551.P1444123139634812885

namespace A074551

/-- `abs(A059409(n)-A074560(n))` -/
def P1444123139634812885.Spec : Prop :=
  ∀ n, P1444123139634812885.a n = A074551 n

end A074551

/-! ## A074551.P6362292700980085824

`Δ[A085282(n)+A002452(n)]`
-/

namespace A074551.P6362292700980085824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074551.P6362292700980085824

namespace A074551

/-- `Δ[A085282(n)+A002452(n)]` -/
def P6362292700980085824.Spec : Prop :=
  ∀ n, P6362292700980085824.a n = A074551 n

end A074551

/-! ## A074551.P15135782843121148896

`floor(A074614(n)+sqrt(A062396(n)))`
-/

namespace A074551.P15135782843121148896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074614 n : ℝ) + Real.sqrt (A062396 n : ℝ)⌋

end

end A074551.P15135782843121148896

namespace A074551

/-- `floor(A074614(n)+sqrt(A062396(n)))` -/
def P15135782843121148896.Spec : Prop :=
  ∀ n, P15135782843121148896.a n = A074551 n

end A074551

/-! ## A074551.P5896244817590922001

`lcm(A059409(n)-A074560(n), A057077(n))`
-/

namespace A074551.P5896244817590922001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059409 n - A074560 n) (A057077 n)

end

end A074551.P5896244817590922001

namespace A074551

/-- `lcm(A059409(n)-A074560(n), A057077(n))` -/
def P5896244817590922001.Spec : Prop :=
  ∀ n, (P5896244817590922001.a n : ℤ) = A074551 n

end A074551

/-!
# A074552: a(n) = 3^n + 5^n + 7^n.

The programs for A074552, the canonical program `A074552.P4012217902332951511` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074552 has offset 0).

The definition of A074552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n+7^n` (program `A074552.P4012217902332951511`, by `A074552.P4012217902332951511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074552.P4012217902332951511

`3^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074552

/-- `3^n+5^n+7^n` -/
def P4012217902332951511.Spec : Prop :=
  ∀ n, (P4012217902332951511.a n : ℤ) = A074552 n

theorem P4012217902332951511.correct : P4012217902332951511.Spec := by
  intro n
  simp only [A074552]

end A074552

/-! ## A074552.P3575077014589782607

`ogf((3-30x+71x^2)/(1-15x+71x^2-105x^3))`
-/

namespace A074552.P3575077014589782607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 71] [1, -15, 71, -105] n

end

end A074552.P3575077014589782607

namespace A074552

/-- `ogf((3-30x+71x^2)/(1-15x+71x^2-105x^3))` -/
def P3575077014589782607.Spec : Prop :=
  ∀ n, P3575077014589782607.a n = A074552 n

end A074552

/-! ## A074552.P7106980662263414076

`15*a(n-1)-71*a(n-2)+105*a(n-3)` with `a(0)=3, a(1)=15, a(2)=83`
-/

namespace A074552.P7106980662263414076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15, 83] fun n a =>
  15 * a (n - 1) - 71 * a (n - 2) + 105 * a (n - 3)

end

end A074552.P7106980662263414076

namespace A074552

/-- `15*a(n-1)-71*a(n-2)+105*a(n-3)` -/
def P7106980662263414076.Spec : Prop :=
  ∀ n, P7106980662263414076.a n = A074552 n

theorem P7106980662263414076.correct : P7106980662263414076.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074552, Nat.add_sub_cancel, A074552.P7106980662263414076.a, A074552.P4012217902332951511.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074552, Nat.add_sub_cancel, A074552.P7106980662263414076.a, A074552.P4012217902332951511.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074552

/-! ## A074552.P4442257080463562425

`∑{#}[2, (3+2*#)^n]`
-/

namespace A074552.P4442257080463562425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 + 2 * k) ^ n

end

end A074552.P4442257080463562425

namespace A074552

/-- `∑{#}[2, (3+2*#)^n]` -/
def P4442257080463562425.Spec : Prop :=
  ∀ n, (P4442257080463562425.a n : ℤ) = A074552 n

end A074552

/-! ## A074552.P5057279536918178960

`abs(1-A134006(n))`
-/

namespace A074552.P5057279536918178960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A134006 n|

end

end A074552.P5057279536918178960

namespace A074552

/-- `abs(1-A134006(n))` -/
def P5057279536918178960.Spec : Prop :=
  ∀ n, P5057279536918178960.a n = A074552 n

end A074552

/-! ## A074552.P15757386696252538806

`abs(2^n-A135168(n))`
-/

namespace A074552.P15757386696252538806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A135168 n|

end

end A074552.P15757386696252538806

namespace A074552

/-- `abs(2^n-A135168(n))` -/
def P15757386696252538806.Spec : Prop :=
  ∀ n, P15757386696252538806.a n = A074552 n

end A074552

/-! ## A074552.P10190474145897131218

`(A135168(n)+A135167(n))/2`
-/

namespace A074552.P10190474145897131218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135168 n + A135167 n : ℚ) / 2

end

end A074552.P10190474145897131218

namespace A074552

/-- `(A135168(n)+A135167(n))/2` -/
def P10190474145897131218.Spec : Prop :=
  ∀ n, P10190474145897131218.a n = (A074552 n : ℚ)

theorem P10190474145897131218.correct : P10190474145897131218.Spec := by
  intro n
  simp only [A074552, Nat.add_sub_cancel, A074552.P10190474145897131218.a, A074552.P4012217902332951511.a, A135167, A135167.P2904130348192986132.a, A135168, A135168.P15537448099565087146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074552

/-!
# A074553: a(n) = 3^n + 5^n + 8^n.

The programs for A074553, the canonical program `A074553.P5148264773027454196` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074553 has offset 0).

The definition of A074553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n+8^n` (program `A074553.P5148264773027454196`, by `A074553.P5148264773027454196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074553.P3042774140922670916

`ogf((3-32x+79x^2)/(1-16x+79x^2-120x^3))`
-/

namespace A074553.P3042774140922670916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 79] [1, -16, 79, -120] n

end

end A074553.P3042774140922670916

namespace A074553

/-- `ogf((3-32x+79x^2)/(1-16x+79x^2-120x^3))` -/
def P3042774140922670916.Spec : Prop :=
  ∀ n, P3042774140922670916.a n = A074553 n

end A074553

/-! ## A074553.P5148264773027454196

`3^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074553

/-- `3^n+5^n+8^n` -/
def P5148264773027454196.Spec : Prop :=
  ∀ n, (P5148264773027454196.a n : ℤ) = A074553 n

theorem P5148264773027454196.correct : P5148264773027454196.Spec := by
  intro n
  simp only [A074553]

end A074553

/-! ## A074553.P16947098295816056512

`16*a(n-1)-79*a(n-2)+120*a(n-3)` with `a(0)=3, a(1)=16, a(2)=98`
-/

namespace A074553.P16947098295816056512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16, 98] fun n a =>
  16 * a (n - 1) - 79 * a (n - 2) + 120 * a (n - 3)

end

end A074553.P16947098295816056512

namespace A074553

/-- `16*a(n-1)-79*a(n-2)+120*a(n-3)` -/
def P16947098295816056512.Spec : Prop :=
  ∀ n, P16947098295816056512.a n = A074553 n

theorem P16947098295816056512.correct : P16947098295816056512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074553, Nat.add_sub_cancel, A074553.P16947098295816056512.a, A074553.P5148264773027454196.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074553, Nat.add_sub_cancel, A074553.P16947098295816056512.a, A074553.P5148264773027454196.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074553

/-! ## A074553.P8566515099541045364

`∑{#}[2, A120070(#+2)^n]`
-/

namespace A074553.P8566515099541045364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A120070 (k + 2) ^ n

end

end A074553.P8566515099541045364

namespace A074553

/-- `∑{#}[2, A120070(#+2)^n]` -/
def P8566515099541045364.Spec : Prop :=
  ∀ n, P8566515099541045364.a n = A074553 n

end A074553

/-! ## A074553.P7329002194072892193

`Δ[A003462(n)+A047853(n)+A003463(n)]`
-/

namespace A074553.P7329002194072892193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A047853 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074553.P7329002194072892193

namespace A074553

/-- `Δ[A003462(n)+A047853(n)+A003463(n)]` -/
def P7329002194072892193.Spec : Prop :=
  ∀ n, P7329002194072892193.a n = A074553 n

end A074553

/-! ## A074553.P2694045095066421664

`Δ[A003463(n)+A047853(n)+A007051(n)]`
-/

namespace A074553.P2694045095066421664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (A047853 n + A007051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074553.P2694045095066421664

namespace A074553

/-- `Δ[A003463(n)+A047853(n)+A007051(n)]` -/
def P2694045095066421664.Spec : Prop :=
  ∀ n, P2694045095066421664.a n = A074553 n

end A074553

/-!
# A074554: a(n) = 3^n + 5^n + 9^n.

The programs for A074554, the canonical program `A074554.P1072886281082828153` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074554 has offset 0).

The definition of A074554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n+9^n` (program `A074554.P1072886281082828153`, by `A074554.P1072886281082828153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074554.P6073335115621246543

`ogf((3-34x+87x^2)/(1-17x+87x^2-135x^3))`
-/

namespace A074554.P6073335115621246543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -34, 87] [1, -17, 87, -135] n

end

end A074554.P6073335115621246543

namespace A074554

/-- `ogf((3-34x+87x^2)/(1-17x+87x^2-135x^3))` -/
def P6073335115621246543.Spec : Prop :=
  ∀ n, P6073335115621246543.a n = A074554 n

end A074554

/-! ## A074554.P1072886281082828153

`3^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074554

/-- `3^n+5^n+9^n` -/
def P1072886281082828153.Spec : Prop :=
  ∀ n, (P1072886281082828153.a n : ℤ) = A074554 n

theorem P1072886281082828153.correct : P1072886281082828153.Spec := by
  intro n
  simp only [A074554]

end A074554

/-! ## A074554.P16884935791025547142

`17*a(n-1)-87*a(n-2)+135*a(n-3)` with `a(0)=3, a(1)=17, a(2)=115`
-/

namespace A074554.P16884935791025547142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 115] fun n a =>
  17 * a (n - 1) - 87 * a (n - 2) + 135 * a (n - 3)

end

end A074554.P16884935791025547142

namespace A074554

/-- `17*a(n-1)-87*a(n-2)+135*a(n-3)` -/
def P16884935791025547142.Spec : Prop :=
  ∀ n, P16884935791025547142.a n = A074554 n

theorem P16884935791025547142.correct : P16884935791025547142.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074554, Nat.add_sub_cancel, A074554.P16884935791025547142.a, A074554.P1072886281082828153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074554, Nat.add_sub_cancel, A074554.P16884935791025547142.a, A074554.P1072886281082828153.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074554

/-!
# A074555: a(n) = 3^n + 6^n + 7^n.

The programs for A074555, the canonical program `A074555.P4738191491316778387` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074555 has offset 0).

The definition of A074555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n+7^n` (program `A074555.P4738191491316778387`, by `A074555.P4738191491316778387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074555.P4738191491316778387

`3^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074555

/-- `3^n+6^n+7^n` -/
def P4738191491316778387.Spec : Prop :=
  ∀ n, (P4738191491316778387.a n : ℤ) = A074555 n

theorem P4738191491316778387.correct : P4738191491316778387.Spec := by
  intro n
  simp only [A074555]

end A074555

/-! ## A074555.P6139507701076584707

`ogf((3-32x+81x^2)/(1-16x+81x^2-126x^3))`
-/

namespace A074555.P6139507701076584707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 81] [1, -16, 81, -126] n

end

end A074555.P6139507701076584707

namespace A074555

/-- `ogf((3-32x+81x^2)/(1-16x+81x^2-126x^3))` -/
def P6139507701076584707.Spec : Prop :=
  ∀ n, P6139507701076584707.a n = A074555 n

end A074555

/-! ## A074555.P7031029713019477398

`∑{#}[n, C(n, #)*A074537(#)]`
-/

namespace A074555.P7031029713019477398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074537 k

end

end A074555.P7031029713019477398

namespace A074555

/-- `∑{#}[n, C(n, #)*A074537(#)]` -/
def P7031029713019477398.Spec : Prop :=
  ∀ n, P7031029713019477398.a n = A074555 n

end A074555

/-!
# A074556: a(n) = 3^n + 6^n + 8^n.

The programs for A074556, the canonical program `A074556.P4378652583454655488` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074556 has offset 0).

The definition of A074556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n+8^n` (program `A074556.P4378652583454655488`, by `A074556.P4378652583454655488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074556.P8648784868318681197

`ogf((3-34x+90x^2)/(1-17x+90x^2-144x^3))`
-/

namespace A074556.P8648784868318681197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -34, 90] [1, -17, 90, -144] n

end

end A074556.P8648784868318681197

namespace A074556

/-- `ogf((3-34x+90x^2)/(1-17x+90x^2-144x^3))` -/
def P8648784868318681197.Spec : Prop :=
  ∀ n, P8648784868318681197.a n = A074556 n

end A074556

/-! ## A074556.P4378652583454655488

`3^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074556

/-- `3^n+6^n+8^n` -/
def P4378652583454655488.Spec : Prop :=
  ∀ n, (P4378652583454655488.a n : ℤ) = A074556 n

theorem P4378652583454655488.correct : P4378652583454655488.Spec := by
  intro n
  simp only [A074556]

end A074556

/-! ## A074556.P7796113064200731460

`17*a(n-1)-90*a(n-2)+144*a(n-3)` with `a(0)=3, a(1)=17, a(2)=109`
-/

namespace A074556.P7796113064200731460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 109] fun n a =>
  17 * a (n - 1) - 90 * a (n - 2) + 144 * a (n - 3)

end

end A074556.P7796113064200731460

namespace A074556

/-- `17*a(n-1)-90*a(n-2)+144*a(n-3)` -/
def P7796113064200731460.Spec : Prop :=
  ∀ n, P7796113064200731460.a n = A074556 n

theorem P7796113064200731460.correct : P7796113064200731460.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074556, Nat.add_sub_cancel, A074556.P7796113064200731460.a, A074556.P4378652583454655488.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074556, Nat.add_sub_cancel, A074556.P7796113064200731460.a, A074556.P4378652583454655488.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074556

/-! ## A074556.P14607300428315327584

`∑{#}[2, (A322969(#+1)+1)^n]`
-/

namespace A074556.P14607300428315327584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A322969 (k + 1) + 1) ^ n

end

end A074556.P14607300428315327584

namespace A074556

/-- `∑{#}[2, (A322969(#+1)+1)^n]` -/
def P14607300428315327584.Spec : Prop :=
  ∀ n, P14607300428315327584.a n = A074556 n

end A074556

/-! ## A074556.P9067581303418431915

`abs(A016185(n)-A074557(n))`
-/

namespace A074556.P9067581303418431915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016185 n - A074557 n|

end

end A074556.P9067581303418431915

namespace A074556

/-- `abs(A016185(n)-A074557(n))` -/
def P9067581303418431915.Spec : Prop :=
  ∀ n, P9067581303418431915.a n = A074556 n

end A074556

/-! ## A074556.P10239744119524958753

`floor(A074620(n)+sqrt(A074610(n)))`
-/

namespace A074556.P10239744119524958753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074620 n : ℝ) + Real.sqrt (A074610 n : ℝ)⌋

end

end A074556.P10239744119524958753

namespace A074556

/-- `floor(A074620(n)+sqrt(A074610(n)))` -/
def P10239744119524958753.Spec : Prop :=
  ∀ n, P10239744119524958753.a n = A074556 n

end A074556

/-!
# A074557: a(n) = 3^n + 6^n + 9^n.

The programs for A074557, the canonical program `A074557.P17865556886609840565` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074557 has offset 0).

The definition of A074557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n+9^n` (program `A074557.P17865556886609840565`, by `A074557.P17865556886609840565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074557.P16949760378946509291

`ogf((3-36x+99x^2)/(1-18x+99x^2-162x^3))`
-/

namespace A074557.P16949760378946509291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -36, 99] [1, -18, 99, -162] n

end

end A074557.P16949760378946509291

namespace A074557

/-- `ogf((3-36x+99x^2)/(1-18x+99x^2-162x^3))` -/
def P16949760378946509291.Spec : Prop :=
  ∀ n, P16949760378946509291.a n = A074557 n

end A074557

/-! ## A074557.P17865556886609840565

`3^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074557

/-- `3^n+6^n+9^n` -/
def P17865556886609840565.Spec : Prop :=
  ∀ n, (P17865556886609840565.a n : ℤ) = A074557 n

theorem P17865556886609840565.correct : P17865556886609840565.Spec := by
  intro n
  simp only [A074557]

end A074557

/-! ## A074557.P6672300577685433721

`∑{#}[2, (9-3*#)^n]`
-/

namespace A074557.P6672300577685433721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (9 - (3 * k : ℤ)) ^ n

end

end A074557.P6672300577685433721

namespace A074557

/-- `∑{#}[2, (9-3*#)^n]` -/
def P6672300577685433721.Spec : Prop :=
  ∀ n, P6672300577685433721.a n = A074557 n

end A074557

/-! ## A074557.P4606287160548263088

`3^n*A001550(n)`
-/

namespace A074557.P4606287160548263088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001550 n

end

end A074557.P4606287160548263088

namespace A074557

/-- `3^n*A001550(n)` -/
def P4606287160548263088.Spec : Prop :=
  ∀ n, P4606287160548263088.a n = A074557 n

end A074557

/-! ## A074557.P2222990470466156057

`(A007689(n)+1)*3^n`
-/

namespace A074557.P2222990470466156057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n + 1) * (3 ^ n : ℤ)

end

end A074557.P2222990470466156057

namespace A074557

/-- `(A007689(n)+1)*3^n` -/
def P2222990470466156057.Spec : Prop :=
  ∀ n, P2222990470466156057.a n = A074557 n

end A074557

/-! ## A074557.P18342771779986115638

`(Δ[A094374(n)]+1)*3^n`
-/

namespace A074557.P18342771779986115638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (3 ^ n : ℤ)

end

end A074557.P18342771779986115638

namespace A074557

/-- `(Δ[A094374(n)]+1)*3^n` -/
def P18342771779986115638.Spec : Prop :=
  ∀ n, P18342771779986115638.a n = A074557 n

end A074557

/-! ## A074557.P14043406731331577145

`(A085281(n+1)+1)*3^n`
-/

namespace A074557.P14043406731331577145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + 1) * (3 ^ n : ℤ)

end

end A074557.P14043406731331577145

namespace A074557

/-- `(A085281(n+1)+1)*3^n` -/
def P14043406731331577145.Spec : Prop :=
  ∀ n, P14043406731331577145.a n = A074557 n

end A074557

/-! ## A074557.P14346838920448014910

`(A005056(n)+2)*A000244(n)`
-/

namespace A074557.P14346838920448014910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005056 n + 2) * A000244 n

end

end A074557.P14346838920448014910

namespace A074557

/-- `(A005056(n)+2)*A000244(n)` -/
def P14346838920448014910.Spec : Prop :=
  ∀ n, P14346838920448014910.a n = A074557 n

end A074557

/-! ## A074557.P8884155871040763320

`(Δ[A099754(n)]+1)*A000244(n)`
-/

namespace A074557.P8884155871040763320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000244 n

end

end A074557.P8884155871040763320

namespace A074557

/-- `(Δ[A099754(n)]+1)*A000244(n)` -/
def P8884155871040763320.Spec : Prop :=
  ∀ n, P8884155871040763320.a n = A074557 n

end A074557

/-! ## A074557.P436309292929887130

`A001550(n)*A127975(A008486(n))`
-/

namespace A074557.P436309292929887130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n * A127975 (A008486 n).toNat

end

end A074557.P436309292929887130

namespace A074557

/-- `A001550(n)*A127975(A008486(n))` -/
def P436309292929887130.Spec : Prop :=
  ∀ n, P436309292929887130.a n = A074557 n

end A074557

/-! ## A074557.P4762124693471270617

`(A000244(n)+A000051(n))*A000244(n)`
-/

namespace A074557.P4762124693471270617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + A000051 n) * A000244 n

end

end A074557.P4762124693471270617

namespace A074557

/-- `(A000244(n)+A000051(n))*A000244(n)` -/
def P4762124693471270617.Spec : Prop :=
  ∀ n, P4762124693471270617.a n = A074557 n

end A074557

/-! ## A074557.P17937306086008856389

`(A034472(n)+A000079(n))*A000244(n)`
-/

namespace A074557.P17937306086008856389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000079 n) * A000244 n

end

end A074557.P17937306086008856389

namespace A074557

/-- `(A034472(n)+A000079(n))*A000244(n)` -/
def P17937306086008856389.Spec : Prop :=
  ∀ n, P17937306086008856389.a n = A074557 n

end A074557

/-! ## A074557.P14594489539098741197

`(A052548(n)+A024023(n))*A000244(n)`
-/

namespace A074557.P14594489539098741197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052548 n + A024023 n) * A000244 n

end

end A074557.P14594489539098741197

namespace A074557

/-- `(A052548(n)+A024023(n))*A000244(n)` -/
def P14594489539098741197.Spec : Prop :=
  ∀ n, P14594489539098741197.a n = A074557 n

end A074557

/-! ## A074557.P14342327939517046709

`(A001551(n)-A000079(n)²)*A000244(n)`
-/

namespace A074557.P14342327939517046709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - A000079 n ^ 2) * A000244 n

end

end A074557.P14342327939517046709

namespace A074557

/-- `(A001551(n)-A000079(n)²)*A000244(n)` -/
def P14342327939517046709.Spec : Prop :=
  ∀ n, P14342327939517046709.a n = A074557 n

end A074557

/-! ## A074557.P9126397835761281817

`(A000244(n)+Δ[A005126(n)])*A000244(n)`
-/

namespace A074557.P9126397835761281817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + (f1 (n + 1) - f1 n)) * A000244 n

end

end A074557.P9126397835761281817

namespace A074557

/-- `(A000244(n)+Δ[A005126(n)])*A000244(n)` -/
def P9126397835761281817.Spec : Prop :=
  ∀ n, P9126397835761281817.a n = A074557 n

end A074557

/-! ## A074557.P1130055531727440089

`(A094373(n+1)+A000244(n))*A000244(n)`
-/

namespace A074557.P1130055531727440089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094373 (n + 1) + A000244 n) * A000244 n

end

end A074557.P1130055531727440089

namespace A074557

/-- `(A094373(n+1)+A000244(n))*A000244(n)` -/
def P1130055531727440089.Spec : Prop :=
  ∀ n, P1130055531727440089.a n = A074557 n

end A074557

/-! ## A074557.P5499443692186721802

`(A133494(n+1)+A094373(n+1))*A133494(n+1)`
-/

namespace A074557.P5499443692186721802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133494 (n + 1) + A094373 (n + 1)) * A133494 (n + 1)

end

end A074557.P5499443692186721802

namespace A074557

/-- `(A133494(n+1)+A094373(n+1))*A133494(n+1)` -/
def P5499443692186721802.Spec : Prop :=
  ∀ n, P5499443692186721802.a n = A074557 n

end A074557

/-! ## A074557.P11560165964278502375

`(A108411(2*n)+A094373(n+1))*A108411(2*n)`
-/

namespace A074557.P11560165964278502375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108411 (2 * n) + A094373 (n + 1)) * A108411 (2 * n)

end

end A074557.P11560165964278502375

namespace A074557

/-- `(A108411(2*n)+A094373(n+1))*A108411(2*n)` -/
def P11560165964278502375.Spec : Prop :=
  ∀ n, P11560165964278502375.a n = A074557 n

end A074557

/-!
# A074558: a(n) = 3^n + 7^n + 8^n.

The programs for A074558, the canonical program `A074558.P16965406357425004510` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074558 has offset 0).

The definition of A074558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+7^n+8^n` (program `A074558.P16965406357425004510`, by `A074558.P16965406357425004510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074558.P17761883923917971215

`ogf((3-36x+101x^2)/(1-18x+101x^2-168x^3))`
-/

namespace A074558.P17761883923917971215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -36, 101] [1, -18, 101, -168] n

end

end A074558.P17761883923917971215

namespace A074558

/-- `ogf((3-36x+101x^2)/(1-18x+101x^2-168x^3))` -/
def P17761883923917971215.Spec : Prop :=
  ∀ n, P17761883923917971215.a n = A074558 n

end A074558

/-! ## A074558.P16965406357425004510

`3^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074558

/-- `3^n+7^n+8^n` -/
def P16965406357425004510.Spec : Prop :=
  ∀ n, (P16965406357425004510.a n : ℤ) = A074558 n

theorem P16965406357425004510.correct : P16965406357425004510.Spec := by
  intro n
  simp only [A074558]

end A074558

/-! ## A074558.P13084975902578584916

`or(2, A155605(n)+A024088(n))`
-/

namespace A074558.P13084975902578584916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155605 n + A024088 n)

end

end A074558.P13084975902578584916

namespace A074558

/-- `or(2, A155605(n)+A024088(n))` -/
def P13084975902578584916.Spec : Prop :=
  ∀ n, P13084975902578584916.a n = A074558 n

end A074558

/-!
# A074559: a(n) = 3^n + 7^n + 9^n.

The programs for A074559, the canonical program `A074559.P3380755015400959094` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074559 has offset 0).

The definition of A074559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+7^n+9^n` (program `A074559.P3380755015400959094`, by `A074559.P3380755015400959094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074559.P7803290489296707251

`ogf((3-38x+111x^2)/(1-19x+111x^2-189x^3))`
-/

namespace A074559.P7803290489296707251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -38, 111] [1, -19, 111, -189] n

end

end A074559.P7803290489296707251

namespace A074559

/-- `ogf((3-38x+111x^2)/(1-19x+111x^2-189x^3))` -/
def P7803290489296707251.Spec : Prop :=
  ∀ n, P7803290489296707251.a n = A074559 n

end A074559

/-! ## A074559.P3380755015400959094

`3^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074559

/-- `3^n+7^n+9^n` -/
def P3380755015400959094.Spec : Prop :=
  ∀ n, (P3380755015400959094.a n : ℤ) = A074559 n

theorem P3380755015400959094.correct : P3380755015400959094.Spec := by
  intro n
  simp only [A074559]

end A074559

/-! ## A074559.P11747901871957353390

`19*a(n-1)-111*a(n-2)+189*a(n-3)` with `a(0)=3, a(1)=19, a(2)=139`
-/

namespace A074559.P11747901871957353390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 19, 139] fun n a =>
  19 * a (n - 1) - 111 * a (n - 2) + 189 * a (n - 3)

end

end A074559.P11747901871957353390

namespace A074559

/-- `19*a(n-1)-111*a(n-2)+189*a(n-3)` -/
def P11747901871957353390.Spec : Prop :=
  ∀ n, P11747901871957353390.a n = A074559 n

theorem P11747901871957353390.correct : P11747901871957353390.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074559, Nat.add_sub_cancel, A074559.P11747901871957353390.a, A074559.P3380755015400959094.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074559, Nat.add_sub_cancel, A074559.P11747901871957353390.a, A074559.P3380755015400959094.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074559

/-!
# A074560: a(n) = 3^n + 8^n + 9^n.

The programs for A074560, the canonical program `A074560.P18342032305587240804` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074560 has offset 0).

The definition of A074560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+8^n+9^n` (program `A074560.P18342032305587240804`, by `A074560.P18342032305587240804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074560.P2380343703117797711

`ogf((3-40x+123x^2)/(1-20x+123x^2-216x^3))`
-/

namespace A074560.P2380343703117797711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -40, 123] [1, -20, 123, -216] n

end

end A074560.P2380343703117797711

namespace A074560

/-- `ogf((3-40x+123x^2)/(1-20x+123x^2-216x^3))` -/
def P2380343703117797711.Spec : Prop :=
  ∀ n, P2380343703117797711.a n = A074560 n

end A074560

/-! ## A074560.P18342032305587240804

`3^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074560

/-- `3^n+8^n+9^n` -/
def P18342032305587240804.Spec : Prop :=
  ∀ n, (P18342032305587240804.a n : ℤ) = A074560 n

theorem P18342032305587240804.correct : P18342032305587240804.Spec := by
  intro n
  simp only [A074560]

end A074560

/-! ## A074560.P13694539328280334765

`20*a(n-1)-123*a(n-2)+216*a(n-3)` with `a(0)=3, a(1)=20, a(2)=154`
-/

namespace A074560.P13694539328280334765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 20, 154] fun n a =>
  20 * a (n - 1) - 123 * a (n - 2) + 216 * a (n - 3)

end

end A074560.P13694539328280334765

namespace A074560

/-- `20*a(n-1)-123*a(n-2)+216*a(n-3)` -/
def P13694539328280334765.Spec : Prop :=
  ∀ n, P13694539328280334765.a n = A074560 n

theorem P13694539328280334765.correct : P13694539328280334765.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074560, Nat.add_sub_cancel, A074560.P13694539328280334765.a, A074560.P18342032305587240804.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074560, Nat.add_sub_cancel, A074560.P13694539328280334765.a, A074560.P18342032305587240804.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074560

/-!
# A074561: a(n) = 4^n + 5^n + 6^n.

The programs for A074561, the canonical program `A074561.P7977343402559612284` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074561 has offset 0).

The definition of A074561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+6^n` (program `A074561.P7977343402559612284`, by `A074561.P7977343402559612284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074561.P7977343402559612284

`4^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074561

/-- `4^n+5^n+6^n` -/
def P7977343402559612284.Spec : Prop :=
  ∀ n, (P7977343402559612284.a n : ℤ) = A074561 n

theorem P7977343402559612284.correct : P7977343402559612284.Spec := by
  intro n
  simp only [A074561]

end A074561

/-! ## A074561.P7814609363948556193

`ogf((3-30x+74x^2)/(1-15x+74x^2-120x^3))`
-/

namespace A074561.P7814609363948556193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -30, 74] [1, -15, 74, -120] n

end

end A074561.P7814609363948556193

namespace A074561

/-- `ogf((3-30x+74x^2)/(1-15x+74x^2-120x^3))` -/
def P7814609363948556193.Spec : Prop :=
  ∀ n, P7814609363948556193.a n = A074561 n

end A074561

/-! ## A074561.P4100430348368344631

`∑{#}[2, (#+4)^n]`
-/

namespace A074561.P4100430348368344631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 4) ^ n

end

end A074561.P4100430348368344631

namespace A074561

/-- `∑{#}[2, (#+4)^n]` -/
def P4100430348368344631.Spec : Prop :=
  ∀ n, (P4100430348368344631.a n : ℤ) = A074561 n

end A074561

/-! ## A074561.P13469478425518468399

`abs(A001550(n)-A001553(n))`
-/

namespace A074561.P13469478425518468399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A001553 n|

end

end A074561.P13469478425518468399

namespace A074561

/-- `abs(A001550(n)-A001553(n))` -/
def P13469478425518468399.Spec : Prop :=
  ∀ n, P13469478425518468399.a n = A074561 n

end A074561

/-!
# A074562: a(n) = 4^n + 5^n + 7^n.

The programs for A074562, the canonical program `A074562.P4806481422985691960` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074562 has offset 0).

The definition of A074562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+7^n` (program `A074562.P4806481422985691960`, by `A074562.P4806481422985691960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074562.P4806481422985691960

`4^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074562

/-- `4^n+5^n+7^n` -/
def P4806481422985691960.Spec : Prop :=
  ∀ n, (P4806481422985691960.a n : ℤ) = A074562 n

theorem P4806481422985691960.correct : P4806481422985691960.Spec := by
  intro n
  simp only [A074562]

end A074562

/-! ## A074562.P7379281311445729135

`ogf((3-32x+83x^2)/(1-16x+83x^2-140x^3))`
-/

namespace A074562.P7379281311445729135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -32, 83] [1, -16, 83, -140] n

end

end A074562.P7379281311445729135

namespace A074562

/-- `ogf((3-32x+83x^2)/(1-16x+83x^2-140x^3))` -/
def P7379281311445729135.Spec : Prop :=
  ∀ n, P7379281311445729135.a n = A074562 n

end A074562

/-! ## A074562.P17878724248630939681

`∑{#}[n, C(n, #)*A074548(#)]`
-/

namespace A074562.P17878724248630939681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A074548 k

end

end A074562.P17878724248630939681

namespace A074562

/-- `∑{#}[n, C(n, #)*A074548(#)]` -/
def P17878724248630939681.Spec : Prop :=
  ∀ n, P17878724248630939681.a n = A074562 n

end A074562

/-! ## A074562.P3733969528452813652

`abs(2-A074513(n)-A034474(n))`
-/

namespace A074562.P3733969528452813652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074513 n - A034474 n|

end

end A074562.P3733969528452813652

namespace A074562

/-- `abs(2-A074513(n)-A034474(n))` -/
def P3733969528452813652.Spec : Prop :=
  ∀ n, P3733969528452813652.a n = A074562 n

end A074562

/-! ## A074562.P5334660789749867351

`abs(A059409(n)-A074574(n))`
-/

namespace A074562.P5334660789749867351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074574 n|

end

end A074562.P5334660789749867351

namespace A074562

/-- `abs(A059409(n)-A074574(n))` -/
def P5334660789749867351.Spec : Prop :=
  ∀ n, P5334660789749867351.a n = A074562 n

end A074562

/-!
# A074563: a(n) = 4^n + 5^n + 8^n.

The programs for A074563, the canonical program `A074563.P1379227277394458418` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074563 has offset 0).

The definition of A074563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+8^n` (program `A074563.P1379227277394458418`, by `A074563.P1379227277394458418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074563.P10687883973886539974

`ogf((3-34x+92x^2)/(1-17x+92x^2-160x^3))`
-/

namespace A074563.P10687883973886539974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -34, 92] [1, -17, 92, -160] n

end

end A074563.P10687883973886539974

namespace A074563

/-- `ogf((3-34x+92x^2)/(1-17x+92x^2-160x^3))` -/
def P10687883973886539974.Spec : Prop :=
  ∀ n, P10687883973886539974.a n = A074563 n

end A074563

/-! ## A074563.P1379227277394458418

`4^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074563

/-- `4^n+5^n+8^n` -/
def P1379227277394458418.Spec : Prop :=
  ∀ n, (P1379227277394458418.a n : ℤ) = A074563 n

theorem P1379227277394458418.correct : P1379227277394458418.Spec := by
  intro n
  simp only [A074563]

end A074563

/-! ## A074563.P17674385006167305613

`xor(1, A074574(n)-A155628(n))`
-/

namespace A074563.P17674385006167305613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074574 n - A155628 n)

end

end A074563.P17674385006167305613

namespace A074563

/-- `xor(1, A074574(n)-A155628(n))` -/
def P17674385006167305613.Spec : Prop :=
  ∀ n, P17674385006167305613.a n = A074563 n

end A074563

/-!
# A074564: a(n) = 4^n + 5^n + 9^n.

The programs for A074564, the canonical program `A074564.P6822157006071906487` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074564 has offset 0).

The definition of A074564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+9^n` (program `A074564.P6822157006071906487`, by `A074564.P6822157006071906487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074564.P16241424638326450117

`ogf((3-36x+101x^2)/(1-18x+101x^2-180x^3))`
-/

namespace A074564.P16241424638326450117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -36, 101] [1, -18, 101, -180] n

end

end A074564.P16241424638326450117

namespace A074564

/-- `ogf((3-36x+101x^2)/(1-18x+101x^2-180x^3))` -/
def P16241424638326450117.Spec : Prop :=
  ∀ n, P16241424638326450117.a n = A074564 n

end A074564

/-! ## A074564.P6822157006071906487

`4^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074564

/-- `4^n+5^n+9^n` -/
def P6822157006071906487.Spec : Prop :=
  ∀ n, (P6822157006071906487.a n : ℤ) = A074564 n

theorem P6822157006071906487.correct : P6822157006071906487.Spec := by
  intro n
  simp only [A074564]

end A074564

/-!
# A074565: a(n) = 4^n + 6^n + 7^n.

The programs for A074565, the canonical program `A074565.P9575054058067106378` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074565 has offset 0).

The definition of A074565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6^n+7^n` (program `A074565.P9575054058067106378`, by `A074565.P9575054058067106378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074565.P9575054058067106378

`4^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074565

/-- `4^n+6^n+7^n` -/
def P9575054058067106378.Spec : Prop :=
  ∀ n, (P9575054058067106378.a n : ℤ) = A074565 n

theorem P9575054058067106378.correct : P9575054058067106378.Spec := by
  intro n
  simp only [A074565]

end A074565

/-! ## A074565.P3893370777250123678

`ogf((3-34x+94x^2)/(1-17x+94x^2-168x^3))`
-/

namespace A074565.P3893370777250123678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -34, 94] [1, -17, 94, -168] n

end

end A074565.P3893370777250123678

namespace A074565

/-- `ogf((3-34x+94x^2)/(1-17x+94x^2-168x^3))` -/
def P3893370777250123678.Spec : Prop :=
  ∀ n, P3893370777250123678.a n = A074565 n

end A074565

/-! ## A074565.P237724961795301238

`17*a(n-1)-94*a(n-2)+168*a(n-3)` with `a(0)=3, a(1)=17, a(2)=101`
-/

namespace A074565.P237724961795301238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 101] fun n a =>
  17 * a (n - 1) - 94 * a (n - 2) + 168 * a (n - 3)

end

end A074565.P237724961795301238

namespace A074565

/-- `17*a(n-1)-94*a(n-2)+168*a(n-3)` -/
def P237724961795301238.Spec : Prop :=
  ∀ n, P237724961795301238.a n = A074565 n

theorem P237724961795301238.correct : P237724961795301238.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074565, Nat.add_sub_cancel, A074565.P237724961795301238.a, A074565.P9575054058067106378.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074565, Nat.add_sub_cancel, A074565.P237724961795301238.a, A074565.P9575054058067106378.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074565

/-! ## A074565.P14267426065013819871

`∑{#}[n, C(n, #)*A001579(#)]`
-/

namespace A074565.P14267426065013819871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A001579 k

end

end A074565.P14267426065013819871

namespace A074565

/-- `∑{#}[n, C(n, #)*A001579(#)]` -/
def P14267426065013819871.Spec : Prop :=
  ∀ n, P14267426065013819871.a n = A074565 n

end A074565

/-!
# A074566: a(n) = 4^n + 6^n + 8^n.

The programs for A074566, the canonical program `A074566.P13156039349728247320` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074566 has offset 0).

The definition of A074566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6^n+8^n` (program `A074566.P13156039349728247320`, by `A074566.P13156039349728247320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074566.P16891478284720550837

`ogf((3-36x+104x^2)/(1-18x+104x^2-192x^3))`
-/

namespace A074566.P16891478284720550837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -36, 104] [1, -18, 104, -192] n

end

end A074566.P16891478284720550837

namespace A074566

/-- `ogf((3-36x+104x^2)/(1-18x+104x^2-192x^3))` -/
def P16891478284720550837.Spec : Prop :=
  ∀ n, P16891478284720550837.a n = A074566 n

end A074566

/-! ## A074566.P13156039349728247320

`4^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074566

/-- `4^n+6^n+8^n` -/
def P13156039349728247320.Spec : Prop :=
  ∀ n, (P13156039349728247320.a n : ℤ) = A074566 n

theorem P13156039349728247320.correct : P13156039349728247320.Spec := by
  intro n
  simp only [A074566]

end A074566

/-! ## A074566.P6727796169308449349

`∑{#}[2, (4+2*#)^n]`
-/

namespace A074566.P6727796169308449349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 + 2 * k) ^ n

end

end A074566.P6727796169308449349

namespace A074566

/-- `∑{#}[2, (4+2*#)^n]` -/
def P6727796169308449349.Spec : Prop :=
  ∀ n, (P6727796169308449349.a n : ℤ) = A074566 n

end A074566

/-! ## A074566.P8294380812971311677

`2^n*∑{#}[2, (4-#)^n]`
-/

namespace A074566.P8294380812971311677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ k ∈ Finset.range (f1 n + 1), (4 - (k : ℤ)) ^ n)

end

end A074566.P8294380812971311677

namespace A074566

/-- `2^n*∑{#}[2, (4-#)^n]` -/
def P8294380812971311677.Spec : Prop :=
  ∀ n, P8294380812971311677.a n = A074566 n

end A074566

/-! ## A074566.P4890920867194041730

`2^n*A074526(n)`
-/

namespace A074566.P4890920867194041730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A074526 n

end

end A074566.P4890920867194041730

namespace A074566

/-- `2^n*A074526(n)` -/
def P4890920867194041730.Spec : Prop :=
  ∀ n, P4890920867194041730.a n = A074566 n

end A074566

/-! ## A074566.P12449782028225721271

`(A001551(n)-1)*2^n`
-/

namespace A074566.P12449782028225721271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - 1) * (2 ^ n : ℤ)

end

end A074566.P12449782028225721271

namespace A074566

/-- `(A001551(n)-1)*2^n` -/
def P12449782028225721271.Spec : Prop :=
  ∀ n, P12449782028225721271.a n = A074566 n

end A074566

/-! ## A074566.P6064860662662235173

`lcm(A000079(n), A074526(n))`
-/

namespace A074566.P6064860662662235173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A074526 n)

end

end A074566.P6064860662662235173

namespace A074566

/-- `lcm(A000079(n), A074526(n))` -/
def P6064860662662235173.Spec : Prop :=
  ∀ n, (P6064860662662235173.a n : ℤ) = A074566 n

end A074566

/-! ## A074566.P14562564203512592537

`(A074605(n)+A000079(n))*A000079(n)`
-/

namespace A074566.P14562564203512592537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + A000079 n) * A000079 n

end

end A074566.P14562564203512592537

namespace A074566

/-- `(A074605(n)+A000079(n))*A000079(n)` -/
def P14562564203512592537.Spec : Prop :=
  ∀ n, P14562564203512592537.a n = A074566 n

end A074566

/-! ## A074566.P16883595006096142420

`A074526(n)/A001576(n)*A074535(n)`
-/

namespace A074566.P16883595006096142420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074526 n : ℚ) / (A001576 n : ℚ) * (A074535 n : ℚ)

end

end A074566.P16883595006096142420

namespace A074566

/-- `A074526(n)/A001576(n)*A074535(n)` -/
def P16883595006096142420.Spec : Prop :=
  ∀ n, P16883595006096142420.a n = (A074566 n : ℚ)

end A074566

/-! ## A074566.P9221738525647655784

`(A007689(n)+A000079(n)²)*A000079(n)`
-/

namespace A074566.P9221738525647655784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n + A000079 n ^ 2) * A000079 n

end

end A074566.P9221738525647655784

namespace A074566

/-- `(A007689(n)+A000079(n)²)*A000079(n)` -/
def P9221738525647655784.Spec : Prop :=
  ∀ n, P9221738525647655784.a n = A074566 n

end A074566

/-! ## A074566.P15149398026382132094

`(A000079(n)+Δ[A085282(n)])*A000079(n)`
-/

namespace A074566.P15149398026382132094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + (f1 (n + 1) - f1 n)) * A000079 n

end

end A074566.P15149398026382132094

namespace A074566

/-- `(A000079(n)+Δ[A085282(n)])*A000079(n)` -/
def P15149398026382132094.Spec : Prop :=
  ∀ n, P15149398026382132094.a n = A074566 n

end A074566

/-! ## A074566.P17416195904949184096

`(A085281(n+1)+A011782(n+1)²)*A011782(n+1)`
-/

namespace A074566.P17416195904949184096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + A011782 (n + 1) ^ 2) * A011782 (n + 1)

end

end A074566.P17416195904949184096

namespace A074566

/-- `(A085281(n+1)+A011782(n+1)²)*A011782(n+1)` -/
def P17416195904949184096.Spec : Prop :=
  ∀ n, P17416195904949184096.a n = A074566 n

end A074566

/-! ## A074566.P16089044325764536906

`(A131577(n+1)²+A085281(n+1))*A131577(n+1)`
-/

namespace A074566.P16089044325764536906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) ^ 2 + A085281 (n + 1)) * A131577 (n + 1)

end

end A074566.P16089044325764536906

namespace A074566

/-- `(A131577(n+1)²+A085281(n+1))*A131577(n+1)` -/
def P16089044325764536906.Spec : Prop :=
  ∀ n, P16089044325764536906.a n = A074566 n

end A074566

/-! ## A074566.P11055940346155687029

`(A085281(n+1)+A011782(2*n+1))*A011782(n+1)`
-/

namespace A074566.P11055940346155687029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + A011782 (2 * n + 1)) * A011782 (n + 1)

end

end A074566.P11055940346155687029

namespace A074566

/-- `(A085281(n+1)+A011782(2*n+1))*A011782(n+1)` -/
def P11055940346155687029.Spec : Prop :=
  ∀ n, P11055940346155687029.a n = A074566 n

end A074566

/-! ## A074566.P15242369638877350813

`(A131577(2*n+1)+A085281(n+1))*A131577(n+1)`
-/

namespace A074566.P15242369638877350813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n + 1) + A085281 (n + 1)) * A131577 (n + 1)

end

end A074566.P15242369638877350813

namespace A074566

/-- `(A131577(2*n+1)+A085281(n+1))*A131577(n+1)` -/
def P15242369638877350813.Spec : Prop :=
  ∀ n, P15242369638877350813.a n = A074566 n

end A074566

/-!
# A074567: a(n) = 4^n + 6^n + 9^n.

The programs for A074567, the canonical program `A074567.P9244853333748286242` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074567 has offset 0).

The definition of A074567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6^n+9^n` (program `A074567.P9244853333748286242`, by `A074567.P9244853333748286242.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074567.P3570054862004393846

`ogf((3-38x+114x^2)/(1-19x+114x^2-216x^3))`
-/

namespace A074567.P3570054862004393846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -38, 114] [1, -19, 114, -216] n

end

end A074567.P3570054862004393846

namespace A074567

/-- `ogf((3-38x+114x^2)/(1-19x+114x^2-216x^3))` -/
def P3570054862004393846.Spec : Prop :=
  ∀ n, P3570054862004393846.a n = A074567 n

end A074567

/-! ## A074567.P9244853333748286242

`4^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074567

/-- `4^n+6^n+9^n` -/
def P9244853333748286242.Spec : Prop :=
  ∀ n, (P9244853333748286242.a n : ℤ) = A074567 n

theorem P9244853333748286242.correct : P9244853333748286242.Spec := by
  intro n
  simp only [A074567]

end A074567

/-!
# A074568: a(n) = 4^n + 7^n + 8^n.

The programs for A074568, the canonical program `A074568.P7662103537063629659` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074568 has offset 0).

The definition of A074568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+7^n+8^n` (program `A074568.P7662103537063629659`, by `A074568.P7662103537063629659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074568.P8298799691483313875

`ogf((3-38x+116x^2)/(1-19x+116x^2-224x^3))`
-/

namespace A074568.P8298799691483313875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -38, 116] [1, -19, 116, -224] n

end

end A074568.P8298799691483313875

namespace A074568

/-- `ogf((3-38x+116x^2)/(1-19x+116x^2-224x^3))` -/
def P8298799691483313875.Spec : Prop :=
  ∀ n, P8298799691483313875.a n = A074568 n

end A074568

/-! ## A074568.P7662103537063629659

`4^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074568

/-- `4^n+7^n+8^n` -/
def P7662103537063629659.Spec : Prop :=
  ∀ n, (P7662103537063629659.a n : ℤ) = A074568 n

theorem P7662103537063629659.correct : P7662103537063629659.Spec := by
  intro n
  simp only [A074568]

end A074568

/-! ## A074568.P2222693775084996848

`19*a(n-1)-116*a(n-2)+224*a(n-3)` with `a(0)=3, a(1)=19, a(2)=129`
-/

namespace A074568.P2222693775084996848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 19, 129] fun n a =>
  19 * a (n - 1) - 116 * a (n - 2) + 224 * a (n - 3)

end

end A074568.P2222693775084996848

namespace A074568

/-- `19*a(n-1)-116*a(n-2)+224*a(n-3)` -/
def P2222693775084996848.Spec : Prop :=
  ∀ n, P2222693775084996848.a n = A074568 n

theorem P2222693775084996848.correct : P2222693775084996848.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074568, Nat.add_sub_cancel, A074568.P2222693775084996848.a, A074568.P7662103537063629659.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074568, Nat.add_sub_cancel, A074568.P2222693775084996848.a, A074568.P7662103537063629659.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074568

/-! ## A074568.P11039371186841390515

`or(1, A155655(n)+4^n)`
-/

namespace A074568.P11039371186841390515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155655 n + (4 ^ n : ℤ))

end

end A074568.P11039371186841390515

namespace A074568

/-- `or(1, A155655(n)+4^n)` -/
def P11039371186841390515.Spec : Prop :=
  ∀ n, P11039371186841390515.a n = A074568 n

end A074568

/-!
# A074569: a(n) = 4^n + 7^n + 9^n.

The programs for A074569, the canonical program `A074569.P12714360922354287209` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074569 has offset 0).

The definition of A074569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+7^n+9^n` (program `A074569.P12714360922354287209`, by `A074569.P12714360922354287209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074569.P12941816335574819333

`ogf((3-40x+127x^2)/(1-20x+127x^2-252x^3))`
-/

namespace A074569.P12941816335574819333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -40, 127] [1, -20, 127, -252] n

end

end A074569.P12941816335574819333

namespace A074569

/-- `ogf((3-40x+127x^2)/(1-20x+127x^2-252x^3))` -/
def P12941816335574819333.Spec : Prop :=
  ∀ n, P12941816335574819333.a n = A074569 n

end A074569

/-! ## A074569.P12714360922354287209

`4^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074569

/-- `4^n+7^n+9^n` -/
def P12714360922354287209.Spec : Prop :=
  ∀ n, (P12714360922354287209.a n : ℤ) = A074569 n

theorem P12714360922354287209.correct : P12714360922354287209.Spec := by
  intro n
  simp only [A074569]

end A074569

/-! ## A074569.P9357726245002964235

`abs(A059409(n)-A074580(n))`
-/

namespace A074569.P9357726245002964235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074580 n|

end

end A074569.P9357726245002964235

namespace A074569

/-- `abs(A059409(n)-A074580(n))` -/
def P9357726245002964235.Spec : Prop :=
  ∀ n, P9357726245002964235.a n = A074569 n

end A074569

/-! ## A074569.P2499869560715501108

`∑{#}[2, A078358(A000040(#+2))^n]`
-/

namespace A074569.P2499869560715501108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A078358 (A000040 (k + 2)).toNat ^ n

end

end A074569.P2499869560715501108

namespace A074569

/-- `∑{#}[2, A078358(A000040(#+2))^n]` -/
def P2499869560715501108.Spec : Prop :=
  ∀ n, P2499869560715501108.a n = A074569 n

end A074569

/-! ## A074569.P5554720486560672282

`Δ[A002452(n)+A047852(n)+A047849(n)]`
-/

namespace A074569.P5554720486560672282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + (A047852 n + A047849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074569.P5554720486560672282

namespace A074569

/-- `Δ[A002452(n)+A047852(n)+A047849(n)]` -/
def P5554720486560672282.Spec : Prop :=
  ∀ n, P5554720486560672282.a n = A074569 n

end A074569

/-!
# A074570: a(n) = 4^n + 8^n + 9^n.

The programs for A074570, the canonical program `A074570.P5306716372487342324` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074570 has offset 0).

The definition of A074570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+8^n+9^n` (program `A074570.P5306716372487342324`, by `A074570.P5306716372487342324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074570.P16730336828152294244

`ogf((3-42x+140x^2)/(1-21x+140x^2-288x^3))`
-/

namespace A074570.P16730336828152294244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -42, 140] [1, -21, 140, -288] n

end

end A074570.P16730336828152294244

namespace A074570

/-- `ogf((3-42x+140x^2)/(1-21x+140x^2-288x^3))` -/
def P16730336828152294244.Spec : Prop :=
  ∀ n, P16730336828152294244.a n = A074570 n

end A074570

/-! ## A074570.P5306716372487342324

`4^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074570

/-- `4^n+8^n+9^n` -/
def P5306716372487342324.Spec : Prop :=
  ∀ n, (P5306716372487342324.a n : ℤ) = A074570 n

theorem P5306716372487342324.correct : P5306716372487342324.Spec := by
  intro n
  simp only [A074570]

end A074570

/-! ## A074570.P2318832286340663423

`∑{#}[2, A122785(2+#)^n]`
-/

namespace A074570.P2318832286340663423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A122785 (2 + k) ^ n

end

end A074570.P2318832286340663423

namespace A074570

/-- `∑{#}[2, A122785(2+#)^n]` -/
def P2318832286340663423.Spec : Prop :=
  ∀ n, P2318832286340663423.a n = A074570 n

end A074570

/-!
# A074571: a(n) = 5^n + 6^n + 7^n.

The programs for A074571, the canonical program `A074571.P12377823437741786856` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074571 has offset 0).

The definition of A074571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+6^n+7^n` (program `A074571.P12377823437741786856`, by `A074571.P12377823437741786856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074571.P12377823437741786856

`5^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074571

/-- `5^n+6^n+7^n` -/
def P12377823437741786856.Spec : Prop :=
  ∀ n, (P12377823437741786856.a n : ℤ) = A074571 n

theorem P12377823437741786856.correct : P12377823437741786856.Spec := by
  intro n
  simp only [A074571]

end A074571

/-! ## A074571.P10736592353426847784

`ogf((3-36x+107x^2)/(1-18x+107x^2-210x^3))`
-/

namespace A074571.P10736592353426847784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -36, 107] [1, -18, 107, -210] n

end

end A074571.P10736592353426847784

namespace A074571

/-- `ogf((3-36x+107x^2)/(1-18x+107x^2-210x^3))` -/
def P10736592353426847784.Spec : Prop :=
  ∀ n, P10736592353426847784.a n = A074571 n

end A074571

/-! ## A074571.P8096027280853736215

`∑{#}[2, (5+#)^n]`
-/

namespace A074571.P8096027280853736215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (5 + k) ^ n

end

end A074571.P8096027280853736215

namespace A074571

/-- `∑{#}[2, (5+#)^n]` -/
def P8096027280853736215.Spec : Prop :=
  ∀ n, (P8096027280853736215.a n : ℤ) = A074571 n

end A074571

/-! ## A074571.P4775245395756867780

`abs(∑{#}[2, (7-#)^n])`
-/

namespace A074571.P4775245395756867780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ k ∈ Finset.range (f1 n + 1), (7 - (k : ℤ)) ^ n|

end

end A074571.P4775245395756867780

namespace A074571

/-- `abs(∑{#}[2, (7-#)^n])` -/
def P4775245395756867780.Spec : Prop :=
  ∀ n, P4775245395756867780.a n = A074571 n

end A074571

/-! ## A074571.P1311042482784531553

`abs(A001551(n)-A001554(n))`
-/

namespace A074571.P1311042482784531553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001551 n - A001554 n|

end

end A074571.P1311042482784531553

namespace A074571

/-- `abs(A001551(n)-A001554(n))` -/
def P1311042482784531553.Spec : Prop :=
  ∀ n, P1311042482784531553.a n = A074571 n

end A074571

/-! ## A074571.P15182901735686753327

`lcm(A001551(n)-A001554(n), A040000(n))`
-/

namespace A074571.P15182901735686753327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001551 n - A001554 n) (A040000 n)

end

end A074571.P15182901735686753327

namespace A074571

/-- `lcm(A001551(n)-A001554(n), A040000(n))` -/
def P15182901735686753327.Spec : Prop :=
  ∀ n, (P15182901735686753327.a n : ℤ) = A074571 n

end A074571

/-! ## A074571.P5863128598601655025

`-or(A001551(n)-A001554(n), A000007(n))`
-/

namespace A074571.P5863128598601655025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A001551 n - A001554 n) (A000007 n)

end

end A074571.P5863128598601655025

namespace A074571

/-- `-or(A001551(n)-A001554(n), A000007(n))` -/
def P5863128598601655025.Spec : Prop :=
  ∀ n, P5863128598601655025.a n = A074571 n

end A074571

/-! ## A074571.P13956900692710855167

`-((A001551(n)-A001554(n))%A280215(n+1))`
-/

namespace A074571.P13956900692710855167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A001551 n - A001554 n) (A280215 (n + 1))

end

end A074571.P13956900692710855167

namespace A074571

/-- `-((A001551(n)-A001554(n))%A280215(n+1))` -/
def P13956900692710855167.Spec : Prop :=
  ∀ n, P13956900692710855167.a n = A074571 n

end A074571

/-!
# A074572: a(n) = 5^n + 6^n + 8^n.

The programs for A074572, the canonical program `A074572.P16324031131915373030` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074572 has offset 0).

The definition of A074572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+6^n+8^n` (program `A074572.P16324031131915373030`, by `A074572.P16324031131915373030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074572.P115633916630279897

`ogf((3-38x+118x^2)/(1-19x+118x^2-240x^3))`
-/

namespace A074572.P115633916630279897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -38, 118] [1, -19, 118, -240] n

end

end A074572.P115633916630279897

namespace A074572

/-- `ogf((3-38x+118x^2)/(1-19x+118x^2-240x^3))` -/
def P115633916630279897.Spec : Prop :=
  ∀ n, P115633916630279897.a n = A074572 n

end A074572

/-! ## A074572.P16324031131915373030

`5^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074572

/-- `5^n+6^n+8^n` -/
def P16324031131915373030.Spec : Prop :=
  ∀ n, (P16324031131915373030.a n : ℤ) = A074572 n

theorem P16324031131915373030.correct : P16324031131915373030.Spec := by
  intro n
  simp only [A074572]

end A074572

/-! ## A074572.P11491334122751275458

`19*a(n-1)-118*a(n-2)+240*a(n-3)` with `a(0)=3, a(1)=19, a(2)=125`
-/

namespace A074572.P11491334122751275458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 19, 125] fun n a =>
  19 * a (n - 1) - 118 * a (n - 2) + 240 * a (n - 3)

end

end A074572.P11491334122751275458

namespace A074572

/-- `19*a(n-1)-118*a(n-2)+240*a(n-3)` -/
def P11491334122751275458.Spec : Prop :=
  ∀ n, P11491334122751275458.a n = A074572 n

theorem P11491334122751275458.correct : P11491334122751275458.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074572, Nat.add_sub_cancel, A074572.P11491334122751275458.a, A074572.P16324031131915373030.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074572, Nat.add_sub_cancel, A074572.P11491334122751275458.a, A074572.P16324031131915373030.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074572

/-! ## A074572.P2685831109931867256

`xor(1, A074620(n)+A024049(n))`
-/

namespace A074572.P2685831109931867256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074620 n + A024049 n)

end

end A074572.P2685831109931867256

namespace A074572

/-- `xor(1, A074620(n)+A024049(n))` -/
def P2685831109931867256.Spec : Prop :=
  ∀ n, P2685831109931867256.a n = A074572 n

end A074572

/-! ## A074572.P12610050875335463820

`abs(A016185(n)-A074573(n))`
-/

namespace A074572.P12610050875335463820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016185 n - A074573 n|

end

end A074572.P12610050875335463820

namespace A074572

/-- `abs(A016185(n)-A074573(n))` -/
def P12610050875335463820.Spec : Prop :=
  ∀ n, P12610050875335463820.a n = A074572 n

end A074572

/-!
# A074573: a(n) = 5^n + 6^n + 9^n.

The programs for A074573, the canonical program `A074573.P1298338052645532930` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074573 has offset 0).

The definition of A074573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+6^n+9^n` (program `A074573.P1298338052645532930`, by `A074573.P1298338052645532930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074573.P12190453577440049467

`ogf((3-40x+129x^2)/(1-20x+129x^2-270x^3))`
-/

namespace A074573.P12190453577440049467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -40, 129] [1, -20, 129, -270] n

end

end A074573.P12190453577440049467

namespace A074573

/-- `ogf((3-40x+129x^2)/(1-20x+129x^2-270x^3))` -/
def P12190453577440049467.Spec : Prop :=
  ∀ n, P12190453577440049467.a n = A074573 n

end A074573

/-! ## A074573.P1298338052645532930

`5^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074573

/-- `5^n+6^n+9^n` -/
def P1298338052645532930.Spec : Prop :=
  ∀ n, (P1298338052645532930.a n : ℤ) = A074573 n

theorem P1298338052645532930.correct : P1298338052645532930.Spec := by
  intro n
  simp only [A074573]

end A074573

/-! ## A074573.P12207540489806415567

`∑{#}[2, (A215848(#+1)-#)^n]`
-/

namespace A074573.P12207540489806415567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A215848 (k + 1) - (k : ℤ)) ^ n

end

end A074573.P12207540489806415567

namespace A074573

/-- `∑{#}[2, (A215848(#+1)-#)^n]` -/
def P12207540489806415567.Spec : Prop :=
  ∀ n, P12207540489806415567.a n = A074573 n

end A074573

/-!
# A074574: a(n) = 5^n + 7^n + 8^n.

The programs for A074574, the canonical program `A074574.P2464668067127189727` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074574 has offset 0).

The definition of A074574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+7^n+8^n` (program `A074574.P2464668067127189727`, by `A074574.P2464668067127189727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074574.P15359333289905026812

`ogf((3-40x+131x^2)/(1-20x+131x^2-280x^3))`
-/

namespace A074574.P15359333289905026812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -40, 131] [1, -20, 131, -280] n

end

end A074574.P15359333289905026812

namespace A074574

/-- `ogf((3-40x+131x^2)/(1-20x+131x^2-280x^3))` -/
def P15359333289905026812.Spec : Prop :=
  ∀ n, P15359333289905026812.a n = A074574 n

end A074574

/-! ## A074574.P2464668067127189727

`5^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074574

/-- `5^n+7^n+8^n` -/
def P2464668067127189727.Spec : Prop :=
  ∀ n, (P2464668067127189727.a n : ℤ) = A074574 n

theorem P2464668067127189727.correct : P2464668067127189727.Spec := by
  intro n
  simp only [A074574]

end A074574

/-! ## A074574.P11387894155909751629

`Δ[A003463(n)+A023001(n)+A023000(n)]`
-/

namespace A074574.P11387894155909751629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (A023001 n + A023000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074574.P11387894155909751629

namespace A074574

/-- `Δ[A003463(n)+A023001(n)+A023000(n)]` -/
def P11387894155909751629.Spec : Prop :=
  ∀ n, P11387894155909751629.a n = A074574 n

end A074574

/-!
# A074575: a(n) = 5^n + 7^n + 9^n.

The programs for A074575, the canonical program `A074575.P7136983271451830220` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074575 has offset 0).

The definition of A074575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+7^n+9^n` (program `A074575.P7136983271451830220`, by `A074575.P7136983271451830220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074575.P2395695899480841566

`ogf((3-42x+143x^2)/(1-21x+143x^2-315x^3))`
-/

namespace A074575.P2395695899480841566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -42, 143] [1, -21, 143, -315] n

end

end A074575.P2395695899480841566

namespace A074575

/-- `ogf((3-42x+143x^2)/(1-21x+143x^2-315x^3))` -/
def P2395695899480841566.Spec : Prop :=
  ∀ n, P2395695899480841566.a n = A074575 n

end A074575

/-! ## A074575.P7136983271451830220

`5^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074575

/-- `5^n+7^n+9^n` -/
def P7136983271451830220.Spec : Prop :=
  ∀ n, (P7136983271451830220.a n : ℤ) = A074575 n

theorem P7136983271451830220.correct : P7136983271451830220.Spec := by
  intro n
  simp only [A074575]

end A074575

/-! ## A074575.P10256442273881487282

`∑{#}[2, (2*#+5)^n]`
-/

namespace A074575.P10256442273881487282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 * k + 5) ^ n

end

end A074575.P10256442273881487282

namespace A074575

/-- `∑{#}[2, (2*#+5)^n]` -/
def P10256442273881487282.Spec : Prop :=
  ∀ n, (P10256442273881487282.a n : ℤ) = A074575 n

end A074575

/-! ## A074575.P3006412089062033206

`abs(A005062(n)-A074578(n))`
-/

namespace A074575.P3006412089062033206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005062 n - A074578 n|

end

end A074575.P3006412089062033206

namespace A074575

/-- `abs(A005062(n)-A074578(n))` -/
def P3006412089062033206.Spec : Prop :=
  ∀ n, P3006412089062033206.a n = A074575 n

end A074575

/-! ## A074575.P3759492489850980694

`abs(A034472(n)-A134007(n))`
-/

namespace A074575.P3759492489850980694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034472 n - A134007 n|

end

end A074575.P3759492489850980694

namespace A074575

/-- `abs(A034472(n)-A134007(n))` -/
def P3759492489850980694.Spec : Prop :=
  ∀ n, P3759492489850980694.a n = A074575 n

end A074575

/-! ## A074575.P15929891576843779226

`floor(A134007(n)-sqrt(A034513(n)))`
-/

namespace A074575.P15929891576843779226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134007 n : ℝ) - Real.sqrt (A034513 n : ℝ)⌋

end

end A074575.P15929891576843779226

namespace A074575

/-- `floor(A134007(n)-sqrt(A034513(n)))` -/
def P15929891576843779226.Spec : Prop :=
  ∀ n, P15929891576843779226.a n = A074575 n

end A074575

/-!
# A074576: a(n) = 5^n + 8^n + 9^n.

The programs for A074576, the canonical program `A074576.P14304956569486685152` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074576 has offset 0).

The definition of A074576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+8^n+9^n` (program `A074576.P14304956569486685152`, by `A074576.P14304956569486685152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074576.P1010586423236279219

`ogf((3-44x+157x^2)/(1-22x+157x^2-360x^3))`
-/

namespace A074576.P1010586423236279219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -44, 157] [1, -22, 157, -360] n

end

end A074576.P1010586423236279219

namespace A074576

/-- `ogf((3-44x+157x^2)/(1-22x+157x^2-360x^3))` -/
def P1010586423236279219.Spec : Prop :=
  ∀ n, P1010586423236279219.a n = A074576 n

end A074576

/-! ## A074576.P14304956569486685152

`5^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074576

/-- `5^n+8^n+9^n` -/
def P14304956569486685152.Spec : Prop :=
  ∀ n, (P14304956569486685152.a n : ℤ) = A074576 n

theorem P14304956569486685152.correct : P14304956569486685152.Spec := by
  intro n
  simp only [A074576]

end A074576

/-!
# A074577: a(n) = 6^n + 7^n + 8^n.

The programs for A074577, the canonical program `A074577.P11705556661611286287` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074577 has offset 0).

The definition of A074577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+7^n+8^n` (program `A074577.P11705556661611286287`, by `A074577.P11705556661611286287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074577.P11705556661611286287

`6^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074577

/-- `6^n+7^n+8^n` -/
def P11705556661611286287.Spec : Prop :=
  ∀ n, (P11705556661611286287.a n : ℤ) = A074577 n

theorem P11705556661611286287.correct : P11705556661611286287.Spec := by
  intro n
  simp only [A074577]

end A074577

/-! ## A074577.P8580667550811406512

`21*a(n-1)-146*a(n-2)+336*a(n-3)` with `a(0)=3, a(1)=21, a(2)=149`
-/

namespace A074577.P8580667550811406512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 21, 149] fun n a =>
  21 * a (n - 1) - 146 * a (n - 2) + 336 * a (n - 3)

end

end A074577.P8580667550811406512

namespace A074577

/-- `21*a(n-1)-146*a(n-2)+336*a(n-3)` -/
def P8580667550811406512.Spec : Prop :=
  ∀ n, P8580667550811406512.a n = A074577 n

theorem P8580667550811406512.correct : P8580667550811406512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074577, Nat.add_sub_cancel, A074577.P8580667550811406512.a, A074577.P11705556661611286287.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074577, Nat.add_sub_cancel, A074577.P8580667550811406512.a, A074577.P11705556661611286287.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074577

/-! ## A074577.P12670736373142064360

`ogf((3-42x+146x^2)/(1-21x+146x^2-336x^3))`
-/

namespace A074577.P12670736373142064360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -42, 146] [1, -21, 146, -336] n

end

end A074577.P12670736373142064360

namespace A074577

/-- `ogf((3-42x+146x^2)/(1-21x+146x^2-336x^3))` -/
def P12670736373142064360.Spec : Prop :=
  ∀ n, P12670736373142064360.a n = A074577 n

end A074577

/-! ## A074577.P8261023475342335660

`∑{#}[2, (#+6)^n]`
-/

namespace A074577.P8261023475342335660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 6) ^ n

end

end A074577.P8261023475342335660

namespace A074577

/-- `∑{#}[2, (#+6)^n]` -/
def P8261023475342335660.Spec : Prop :=
  ∀ n, (P8261023475342335660.a n : ℤ) = A074577 n

end A074577

/-! ## A074577.P8369016639870763403

`abs(A001552(n)-A001555(n))`
-/

namespace A074577.P8369016639870763403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001552 n - A001555 n|

end

end A074577.P8369016639870763403

namespace A074577

/-- `abs(A001552(n)-A001555(n))` -/
def P8369016639870763403.Spec : Prop :=
  ∀ n, P8369016639870763403.a n = A074577 n

end A074577

/-!
# A074578: a(n) = 6^n + 7^n + 9^n.

The programs for A074578, the canonical program `A074578.P9565326728207394404` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074578 has offset 0).

The definition of A074578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+7^n+9^n` (program `A074578.P9565326728207394404`, by `A074578.P9565326728207394404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074578.P5161359703755094859

`ogf((3-44x+159x^2)/(1-22x+159x^2-378x^3))`
-/

namespace A074578.P5161359703755094859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -44, 159] [1, -22, 159, -378] n

end

end A074578.P5161359703755094859

namespace A074578

/-- `ogf((3-44x+159x^2)/(1-22x+159x^2-378x^3))` -/
def P5161359703755094859.Spec : Prop :=
  ∀ n, P5161359703755094859.a n = A074578 n

end A074578

/-! ## A074578.P9565326728207394404

`6^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074578

/-- `6^n+7^n+9^n` -/
def P9565326728207394404.Spec : Prop :=
  ∀ n, (P9565326728207394404.a n : ℤ) = A074578 n

theorem P9565326728207394404.correct : P9565326728207394404.Spec := by
  intro n
  simp only [A074578]

end A074578

/-!
# A074579: a(n) = 6^n + 8^n + 9^n.

The programs for A074579, the canonical program `A074579.P11019084193790550151` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074579 has offset 0).

The definition of A074579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+8^n+9^n` (program `A074579.P11019084193790550151`, by `A074579.P11019084193790550151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074579.P8701855997047134612

`ogf((3-46x+174x^2)/(1-23x+174x^2-432x^3))`
-/

namespace A074579.P8701855997047134612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -46, 174] [1, -23, 174, -432] n

end

end A074579.P8701855997047134612

namespace A074579

/-- `ogf((3-46x+174x^2)/(1-23x+174x^2-432x^3))` -/
def P8701855997047134612.Spec : Prop :=
  ∀ n, P8701855997047134612.a n = A074579 n

end A074579

/-! ## A074579.P11019084193790550151

`6^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074579

/-- `6^n+8^n+9^n` -/
def P11019084193790550151.Spec : Prop :=
  ∀ n, (P11019084193790550151.a n : ℤ) = A074579 n

theorem P11019084193790550151.correct : P11019084193790550151.Spec := by
  intro n
  simp only [A074579]

end A074579

/-! ## A074579.P8973780321014061538

`23*a(n-1)-174*a(n-2)+432*a(n-3)` with `a(0)=3, a(1)=23, a(2)=181`
-/

namespace A074579.P8973780321014061538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 23, 181] fun n a =>
  23 * a (n - 1) - 174 * a (n - 2) + 432 * a (n - 3)

end

end A074579.P8973780321014061538

namespace A074579

/-- `23*a(n-1)-174*a(n-2)+432*a(n-3)` -/
def P8973780321014061538.Spec : Prop :=
  ∀ n, P8973780321014061538.a n = A074579 n

theorem P8973780321014061538.correct : P8973780321014061538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A074579, Nat.add_sub_cancel, A074579.P8973780321014061538.a, A074579.P11019084193790550151.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A074579, Nat.add_sub_cancel, A074579.P8973780321014061538.a, A074579.P11019084193790550151.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A074579

/-! ## A074579.P8392549697226461121

`abs(A016169(n)-A074580(n))`
-/

namespace A074579.P8392549697226461121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016169 n - A074580 n|

end

end A074579.P8392549697226461121

namespace A074579

/-- `abs(A016169(n)-A074580(n))` -/
def P8392549697226461121.Spec : Prop :=
  ∀ n, P8392549697226461121.a n = A074579 n

end A074579

/-! ## A074579.P14291500380069379181

`lcm(A016169(n)-A074580(n), A033999(n))`
-/

namespace A074579.P14291500380069379181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016169 n - A074580 n) (A033999 n)

end

end A074579.P14291500380069379181

namespace A074579

/-- `lcm(A016169(n)-A074580(n), A033999(n))` -/
def P14291500380069379181.Spec : Prop :=
  ∀ n, (P14291500380069379181.a n : ℤ) = A074579 n

end A074579

/-!
# A074580: a(n) = 7^n + 8^n + 9^n.

The programs for A074580, the canonical program `A074580.P17802850478880268909` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074580 has offset 0).

The definition of A074580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+8^n+9^n` (program `A074580.P17802850478880268909`, by `A074580.P17802850478880268909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074580.P17802850478880268909

`7^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074580

/-- `7^n+8^n+9^n` -/
def P17802850478880268909.Spec : Prop :=
  ∀ n, (P17802850478880268909.a n : ℤ) = A074580 n

theorem P17802850478880268909.correct : P17802850478880268909.Spec := by
  intro n
  simp only [A074580]

end A074580

/-! ## A074580.P7153640689425579923

`ogf((3-48x+191x^2)/(1-24x+191x^2-504x^3))`
-/

namespace A074580.P7153640689425579923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -48, 191] [1, -24, 191, -504] n

end

end A074580.P7153640689425579923

namespace A074580

/-- `ogf((3-48x+191x^2)/(1-24x+191x^2-504x^3))` -/
def P7153640689425579923.Spec : Prop :=
  ∀ n, P7153640689425579923.a n = A074580 n

end A074580

/-! ## A074580.P16150039610931215951

`∑{#}[2, (7+#)^n]`
-/

namespace A074580.P16150039610931215951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (7 + k) ^ n

end

end A074580.P16150039610931215951

namespace A074580

/-- `∑{#}[2, (7+#)^n]` -/
def P16150039610931215951.Spec : Prop :=
  ∀ n, (P16150039610931215951.a n : ℤ) = A074580 n

end A074580

/-! ## A074580.P6760966162891127595

`abs(A001553(n)-A001556(n))`
-/

namespace A074580.P6760966162891127595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - A001556 n|

end

end A074580.P6760966162891127595

namespace A074580

/-- `abs(A001553(n)-A001556(n))` -/
def P6760966162891127595.Spec : Prop :=
  ∀ n, P6760966162891127595.a n = A074580 n

end A074580

/-! ## A074580.P988131900420722347

`lcm(A001553(n)-A001556(n), A108775(n+1))`
-/

namespace A074580.P988131900420722347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001553 n - A001556 n) (A108775 (n + 1))

end

end A074580.P988131900420722347

namespace A074580

/-- `lcm(A001553(n)-A001556(n), A108775(n+1))` -/
def P988131900420722347.Spec : Prop :=
  ∀ n, (P988131900420722347.a n : ℤ) = A074580 n

end A074580

/-!
# A074581: a(n) = T(3n+1), where T(n) are tribonacci numbers A000073.

The programs for A074581, the canonical program `A074581.P6434494262900503128` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074581 has offset 0).

The definition of A074581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074581.P12590991622515115466

`ogf((2x-x^2)/(1-7x+5x^2-x^3))`
-/

namespace A074581.P12590991622515115466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -7, 5, -1] n

end

end A074581.P12590991622515115466

namespace A074581

/-- `ogf((2x-x^2)/(1-7x+5x^2-x^3))` -/
def P12590991622515115466.Spec : Prop :=
  ∀ n, P12590991622515115466.a n = A074581 n

end A074581

/-! ## A074581.P6434494262900503128

`7*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074581

/-- `7*a(n-1)-5*a(n-2)+a(n-3)` -/
def P6434494262900503128.Spec : Prop :=
  ∀ n, P6434494262900503128.a n = A074581 n

theorem P6434494262900503128.correct : P6434494262900503128.Spec := by
  intro n
  simp only [A074581]

end A074581

/-! ## A074581.P8272886606480633003

`A000073(1+3*n)`
-/

namespace A074581.P8272886606480633003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (1 + 3 * n)

end

end A074581.P8272886606480633003

namespace A074581

/-- `A000073(1+3*n)` -/
def P8272886606480633003.Spec : Prop :=
  ∀ n, P8272886606480633003.a n = A074581 n

end A074581

/-! ## A074581.P11402535542149436708

`A354784(3*n+1)/2`
-/

namespace A074581.P11402535542149436708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (3 * n + 1) : ℚ) / 2

end

end A074581.P11402535542149436708

namespace A074581

/-- `A354784(3*n+1)/2` -/
def P11402535542149436708.Spec : Prop :=
  ∀ n, P11402535542149436708.a n = (A074581 n : ℚ)

end A074581

/-! ## A074581.P7785132874562549815

`∑[A001590(1+3*n)]-1`
-/

namespace A074581.P7785132874562549815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (1 + 3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A074581.P7785132874562549815

namespace A074581

/-- `∑[A001590(1+3*n)]-1` -/
def P7785132874562549815.Spec : Prop :=
  ∀ n, P7785132874562549815.a n = A074581 n

end A074581

/-! ## A074581.P5649897159678796929

`record[A000073(Δ[n*∑[n%2]])]`
-/

namespace A074581.P5649897159678796929
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P5649897159678796929

namespace A074581

/-- `record[A000073(Δ[n*∑[n%2]])]` -/
def P5649897159678796929.Spec : Prop :=
  ∀ n, P5649897159678796929.a n = A074581 n

end A074581

/-! ## A074581.P14147872626557038544

`A192807(n)+A099464(n)`
-/

namespace A074581.P14147872626557038544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192807 n + A099464 n

end

end A074581.P14147872626557038544

namespace A074581

/-- `A192807(n)+A099464(n)` -/
def P14147872626557038544.Spec : Prop :=
  ∀ n, P14147872626557038544.a n = A074581 n

end A074581

/-! ## A074581.P9985057213261711567

`∑[A001590(A008486(n)+1)]`
-/

namespace A074581.P9985057213261711567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A008486 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P9985057213261711567

namespace A074581

/-- `∑[A001590(A008486(n)+1)]` -/
def P9985057213261711567.Spec : Prop :=
  ∀ n, P9985057213261711567.a n = A074581 n

end A074581

/-! ## A074581.P467697976702767027

`∑[A001590(A033627(n+2))]`
-/

namespace A074581.P467697976702767027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A033627 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P467697976702767027

namespace A074581

/-- `∑[A001590(A033627(n+2))]` -/
def P467697976702767027.Spec : Prop :=
  ∀ n, P467697976702767027.a n = A074581 n

end A074581

/-! ## A074581.P6986321843824191382

`record[A000073(A004155(n)+n)]`
-/

namespace A074581.P6986321843824191382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A004155 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P6986321843824191382

namespace A074581

/-- `record[A000073(A004155(n)+n)]` -/
def P6986321843824191382.Spec : Prop :=
  ∀ n, P6986321843824191382.a n = A074581 n

end A074581

/-! ## A074581.P9707472983044747030

`∑[A001590(comp[A065033(3*n)])]`
-/

namespace A074581.P9707472983044747030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P9707472983044747030

namespace A074581

/-- `∑[A001590(comp[A065033(3*n)])]` -/
def P9707472983044747030.Spec : Prop :=
  ∀ n, P9707472983044747030.a n = A074581 n

end A074581

/-! ## A074581.P9889923275779815483

`∑[A001590(comp[A065033(n)+n])]`
-/

namespace A074581.P9889923275779815483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P9889923275779815483

namespace A074581

/-- `∑[A001590(comp[A065033(n)+n])]` -/
def P9889923275779815483.Spec : Prop :=
  ∀ n, P9889923275779815483.a n = A074581 n

end A074581

/-! ## A074581.P17344511422211618936

`Δ[A000213(A033627(n+1))/2]`
-/

namespace A074581.P17344511422211618936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (A033627 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074581.P17344511422211618936

namespace A074581

/-- `Δ[A000213(A033627(n+1))/2]` -/
def P17344511422211618936.Spec : Prop :=
  ∀ n, P17344511422211618936.a n = (A074581 n : ℚ)

end A074581

/-! ## A074581.P11721320507622167980

`record[A000073(A014682(n+1)-1)]`
-/

namespace A074581.P11721320507622167980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A014682 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P11721320507622167980

namespace A074581

/-- `record[A000073(A014682(n+1)-1)]` -/
def P11721320507622167980.Spec : Prop :=
  ∀ n, P11721320507622167980.a n = A074581 n

end A074581

/-! ## A074581.P5820679220939904113

`∑[A001590(A004273(n)+2+n)]`
-/

namespace A074581.P5820679220939904113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A004273 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P5820679220939904113

namespace A074581

/-- `∑[A001590(A004273(n)+2+n)]` -/
def P5820679220939904113.Spec : Prop :=
  ∀ n, P5820679220939904113.a n = A074581 n

end A074581

/-! ## A074581.P3710592197776932434

`∑[A001590(A004280(n+2)+n)]`
-/

namespace A074581.P3710592197776932434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A004280 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P3710592197776932434

namespace A074581

/-- `∑[A001590(A004280(n+2)+n)]` -/
def P3710592197776932434.Spec : Prop :=
  ∀ n, P3710592197776932434.a n = A074581 n

end A074581

/-! ## A074581.P16467600794730157093

`record[A000073(A071054(and(n, n-1)))]`
-/

namespace A074581.P16467600794730157093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A071054 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P16467600794730157093

namespace A074581

/-- `record[A000073(A071054(and(n, n-1)))]` -/
def P16467600794730157093.Spec : Prop :=
  ∀ n, P16467600794730157093.a n = A074581 n

end A074581

/-! ## A074581.P2343568139613585068

`A114952(4*n+A014601(n+1))`
-/

namespace A074581.P2343568139613585068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 ((4 * n : ℤ) + A014601 (n + 1)).toNat

end

end A074581.P2343568139613585068

namespace A074581

/-- `A114952(4*n+A014601(n+1))` -/
def P2343568139613585068.Spec : Prop :=
  ∀ n, P2343568139613585068.a n = A074581 n

end A074581

/-! ## A074581.P18275071858710300177

`A001590(3*n)+∑[A001590(3*n)]`
-/

namespace A074581.P18275071858710300177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (3 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P18275071858710300177

namespace A074581

/-- `A001590(3*n)+∑[A001590(3*n)]` -/
def P18275071858710300177.Spec : Prop :=
  ∀ n, P18275071858710300177.a n = A074581 n

end A074581

/-! ## A074581.P16892506031272765444

`A192806(n+1)-(A192806(n)+A099464(n))`
-/

namespace A074581.P16892506031272765444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192806 (n + 1) - (A192806 n + A099464 n)

end

end A074581.P16892506031272765444

namespace A074581

/-- `A192806(n+1)-(A192806(n)+A099464(n))` -/
def P16892506031272765444.Spec : Prop :=
  ∀ n, P16892506031272765444.a n = A074581 n

end A074581

/-!
# A074582: a(n) = S(3n), where S(n) is the generalized tribonacci sequence A001644.

The programs for A074582, the canonical program `A074582.P8116197716199792781` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074582 has offset 0).

The definition of A074582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074582.P5515701999064924041

`ogf((3-14x+5x^2)/(1-7x+5x^2-x^3))`
-/

namespace A074582.P5515701999064924041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -14, 5] [1, -7, 5, -1] n

end

end A074582.P5515701999064924041

namespace A074582

/-- `ogf((3-14x+5x^2)/(1-7x+5x^2-x^3))` -/
def P5515701999064924041.Spec : Prop :=
  ∀ n, P5515701999064924041.a n = A074582 n

end A074582

/-! ## A074582.P8116197716199792781

`7*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=3, a(1)=7, a(2)=39`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074582

/-- `7*a(n-1)-5*a(n-2)+a(n-3)` -/
def P8116197716199792781.Spec : Prop :=
  ∀ n, P8116197716199792781.a n = A074582 n

theorem P8116197716199792781.correct : P8116197716199792781.Spec := by
  intro n
  simp only [A074582]

end A074582

/-! ## A074582.P3127888448137602644

`A001644(3*n)`
-/

namespace A074582.P3127888448137602644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (3 * n)

end

end A074582.P3127888448137602644

namespace A074582

/-- `A001644(3*n)` -/
def P3127888448137602644.Spec : Prop :=
  ∀ n, P3127888448137602644.a n = A074582 n

end A074582

/-! ## A074582.P8030789620289008975

`record[gcd(n²%3, A001644(n))]`
-/

namespace A074582.P8030789620289008975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 % 3 : ℕ) : ℤ) (A001644 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P8030789620289008975

namespace A074582

/-- `record[gcd(n²%3, A001644(n))]` -/
def P8030789620289008975.Spec : Prop :=
  ∀ n, (P8030789620289008975.a n : ℤ) = A074582 n

end A074582

/-! ## A074582.P16181657468991626355

`record[A001644(A006368(n))]`
-/

namespace A074582.P16181657468991626355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P16181657468991626355

namespace A074582

/-- `record[A001644(A006368(n))]` -/
def P16181657468991626355.Spec : Prop :=
  ∀ n, P16181657468991626355.a n = A074582 n

end A074582

/-! ## A074582.P11776744150565744228

`record[A001644(n-A091684(n))]`
-/

namespace A074582.P11776744150565744228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 ((n : ℤ) - A091684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P11776744150565744228

namespace A074582

/-- `record[A001644(n-A091684(n))]` -/
def P11776744150565744228.Spec : Prop :=
  ∀ n, P11776744150565744228.a n = A074582 n

end A074582

/-! ## A074582.P102611697974173118

`record[gcd(A001644(n), A091684(n))]`
-/

namespace A074582.P102611697974173118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001644 n) (A091684 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P102611697974173118

namespace A074582

/-- `record[gcd(A001644(n), A091684(n))]` -/
def P102611697974173118.Spec : Prop :=
  ∀ n, (P102611697974173118.a n : ℤ) = A074582 n

end A074582

/-! ## A074582.P15068048390864212885

`record[A001644(A007494(A014681(n)))]`
-/

namespace A074582.P15068048390864212885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A007494 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P15068048390864212885

namespace A074582

/-- `record[A001644(A007494(A014681(n)))]` -/
def P15068048390864212885.Spec : Prop :=
  ∀ n, P15068048390864212885.a n = A074582 n

end A074582

/-!
# A074583: Numbers k such that sopfr(k) = S(k), where sopfr = A001414 and S = A002034.

The programs for A074583, the canonical program `A074583.P15123226653629379694` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074583 has offset 1).

The definition of A074583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A192188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074583.P15123226653629379694

`A000961(A192188(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A074583

/-- `A000961(A192188(n+1))` -/
def P15123226653629379694.Spec : Prop :=
  ∀ n, P15123226653629379694.a n = A074583 (n + 1)

theorem P15123226653629379694.correct : P15123226653629379694.Spec := by
  intro n
  simp only [A074583, Nat.add_sub_cancel]

end A074583

/-! ## A074583.P14380602144273818873

`∪[A067126(n+1), A073045(n+1)]`
-/

namespace A074583.P14380602144273818873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P14380602144273818873

namespace A074583

/-- `∪[A067126(n+1), A073045(n+1)]` -/
def P14380602144273818873.Spec : Prop :=
  ∀ n, (P14380602144273818873.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P2658477668818655423

`∩[A000961(n+1), A343983(n+1)]`
-/

namespace A074583.P2658477668818655423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P2658477668818655423

namespace A074583

/-- `∩[A000961(n+1), A343983(n+1)]` -/
def P2658477668818655423.Spec : Prop :=
  ∀ n, (P2658477668818655423.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P10850932580059022463

`filter[A343983(n+1), A344884(#)]`
-/

namespace A074583.P10850932580059022463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A074583.P10850932580059022463

namespace A074583

/-- `filter[A343983(n+1), A344884(#)]` -/
def P10850932580059022463.Spec : Prop :=
  ∀ n, P10850932580059022463.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P17845637234275082419

`filter[A343983(n+1), A344885(#)]`
-/

namespace A074583.P17845637234275082419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A074583.P17845637234275082419

namespace A074583

/-- `filter[A343983(n+1), A344885(#)]` -/
def P17845637234275082419.Spec : Prop :=
  ∀ n, P17845637234275082419.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P14150876763242456544

`filter[A343983(n+1), A345064(#)]`
-/

namespace A074583.P14150876763242456544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A074583.P14150876763242456544

namespace A074583

/-- `filter[A343983(n+1), A345064(#)]` -/
def P14150876763242456544.Spec : Prop :=
  ∀ n, P14150876763242456544.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P2697938990302985654

`filter[A343983(n+1), A345950(#)]`
-/

namespace A074583.P2697938990302985654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P2697938990302985654

namespace A074583

/-- `filter[A343983(n+1), A345950(#)]` -/
def P2697938990302985654.Spec : Prop :=
  ∀ n, P2697938990302985654.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P2881588637555104455

`∩[A056867(n+1), A343983(n+1)]`
-/

namespace A074583.P2881588637555104455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P2881588637555104455

namespace A074583

/-- `∩[A056867(n+1), A343983(n+1)]` -/
def P2881588637555104455.Spec : Prop :=
  ∀ n, (P2881588637555104455.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P4294629470712430273

`∩[A085156(n+1), A343983(n+1)]`
-/

namespace A074583.P4294629470712430273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P4294629470712430273

namespace A074583

/-- `∩[A085156(n+1), A343983(n+1)]` -/
def P4294629470712430273.Spec : Prop :=
  ∀ n, (P4294629470712430273.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P13721523549447499531

`∩[A060683(n+1), A343983(n+1)]`
-/

namespace A074583.P13721523549447499531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P13721523549447499531

namespace A074583

/-- `∩[A060683(n+1), A343983(n+1)]` -/
def P13721523549447499531.Spec : Prop :=
  ∀ n, (P13721523549447499531.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P2171330579409329692

`filter[A380693(n+1), A345950(#)]`
-/

namespace A074583.P2171330579409329692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P2171330579409329692

namespace A074583

/-- `filter[A380693(n+1), A345950(#)]` -/
def P2171330579409329692.Spec : Prop :=
  ∀ n, P2171330579409329692.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P4324005512765498260

`record[A034699(A207481(n+1))]`
-/

namespace A074583.P4324005512765498260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A207481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074583.P4324005512765498260

namespace A074583

/-- `record[A034699(A207481(n+1))]` -/
def P4324005512765498260.Spec : Prop :=
  ∀ n, P4324005512765498260.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P9312277735177644354

`filter[A207481(n+1), A345950(#)]`
-/

namespace A074583.P9312277735177644354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P9312277735177644354

namespace A074583

/-- `filter[A207481(n+1), A345950(#)]` -/
def P9312277735177644354.Spec : Prop :=
  ∀ n, P9312277735177644354.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P16162984816555468510

`∩[A000961(n+1), A207481(n+1)]`
-/

namespace A074583.P16162984816555468510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P16162984816555468510

namespace A074583

/-- `∩[A000961(n+1), A207481(n+1)]` -/
def P16162984816555468510.Spec : Prop :=
  ∀ n, (P16162984816555468510.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P18052952255068983569

`∩[A164336(n+1), A207481(n+1)]`
-/

namespace A074583.P18052952255068983569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P18052952255068983569

namespace A074583

/-- `∩[A164336(n+1), A207481(n+1)]` -/
def P18052952255068983569.Spec : Prop :=
  ∀ n, (P18052952255068983569.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P4385016504047591932

`record[A034699(A068937(n+1))]`
-/

namespace A074583.P4385016504047591932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A068937 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074583.P4385016504047591932

namespace A074583

/-- `record[A034699(A068937(n+1))]` -/
def P4385016504047591932.Spec : Prop :=
  ∀ n, P4385016504047591932.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P9406937436498217128

`filter[A068937(n+1), A345950(#)]`
-/

namespace A074583.P9406937436498217128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P9406937436498217128

namespace A074583

/-- `filter[A068937(n+1), A345950(#)]` -/
def P9406937436498217128.Spec : Prop :=
  ∀ n, P9406937436498217128.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P2465062427550007924

`∩[A000961(n+1), A068937(n+1)]`
-/

namespace A074583.P2465062427550007924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P2465062427550007924

namespace A074583

/-- `∩[A000961(n+1), A068937(n+1)]` -/
def P2465062427550007924.Spec : Prop :=
  ∀ n, (P2465062427550007924.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P11981475863419354270

`∩[A068937(n+1), A164336(n+1)]`
-/

namespace A074583.P11981475863419354270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P11981475863419354270

namespace A074583

/-- `∩[A068937(n+1), A164336(n+1)]` -/
def P11981475863419354270.Spec : Prop :=
  ∀ n, (P11981475863419354270.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P14418235436421671922

`filter[A068937(n+1), A010055(#)]`
-/

namespace A074583.P14418235436421671922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A074583.P14418235436421671922

namespace A074583

/-- `filter[A068937(n+1), A010055(#)]` -/
def P14418235436421671922.Spec : Prop :=
  ∀ n, P14418235436421671922.a n = A074583 (n + 1)

end A074583

/-!
# A074584: Esanacci (hexanacci or "6-anacci") numbers.

The programs for A074584, the canonical program `A074584.P3920882411418601067` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074584 has offset 0).

The definition of A074584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074584.P14217113718998593693

`ogf((6-5x-4x^2-3x^3-2x^4-x^5)/(1-x-x^2-x^3-x^4-x^5-x^6))`
-/

namespace A074584.P14217113718998593693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5, -4, -3, -2, -1] [1, -1, -1, -1, -1, -1, -1] n

end

end A074584.P14217113718998593693

namespace A074584

/-- `ogf((6-5x-4x^2-3x^3-2x^4-x^5)/(1-x-x^2-x^3-x^4-x^5-x^6))` -/
def P14217113718998593693.Spec : Prop :=
  ∀ n, P14217113718998593693.a n = A074584 n

end A074584

/-! ## A074584.P3920882411418601067

`2*a(n-1)-a(n-7)` with `a(0)=6, a(1)=1, a(2)=3, a(3)=7, a(4)=15, a(5)=31, a(6)=63`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074584

/-- `2*a(n-1)-a(n-7)` -/
def P3920882411418601067.Spec : Prop :=
  ∀ n, P3920882411418601067.a n = A074584 n

theorem P3920882411418601067.correct : P3920882411418601067.Spec := by
  intro n
  simp only [A074584]

end A074584

/-! ## A074584.P9758857233154908177

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=6, a(1)=1, a(2)=3, a(3)=7, a(4)=15, a(5)=31`
-/

namespace A074584.P9758857233154908177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 3, 7, 15, 31] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5) + a (n - 6)

end

end A074584.P9758857233154908177

namespace A074584

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P9758857233154908177.Spec : Prop :=
  ∀ n, (P9758857233154908177.a n : ℤ) = A074584 n

end A074584

/-!
# A074585: a(n)= Sum_{j=0..floor(n/2)} A073145(2*j + q), where q = 2*(n/2 - floor(n/2)).

The programs for A074585, the canonical program `A074585.P5591526772286351370` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074585 has offset 0).

The definition of A074585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074585.P5591526772286351370

`ogf((3+2x+x^2)/(1+x-2x^3-x^4+x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A074585

/-- `ogf((3+2x+x^2)/(1+x-2x^3-x^4+x^5))` -/
def P5591526772286351370.Spec : Prop :=
  ∀ n, P5591526772286351370.a n = A074585 n

theorem P5591526772286351370.correct : P5591526772286351370.Spec := by
  intro n
  simp only [A074585]

end A074585

/-! ## A074585.P10482400427346925936

`∑[A073145(n)-a(n-1)]` with `a(0)=3`
-/

namespace A074585.P10482400427346925936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A073145 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074585.P10482400427346925936

namespace A074585

/-- `∑[A073145(n)-a(n-1)]` -/
def P10482400427346925936.Spec : Prop :=
  ∀ n, P10482400427346925936.a n = A074585 n

end A074585

/-! ## A074585.P17671924389146903250

`∑[A190913(n)-A000032(n)-a(n-1)]` with `a(0)=3`
-/

namespace A074585.P17671924389146903250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A190913 n - A000032 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074585.P17671924389146903250

namespace A074585

/-- `∑[A190913(n)-A000032(n)-a(n-1)]` -/
def P17671924389146903250.Spec : Prop :=
  ∀ n, P17671924389146903250.a n = A074585 n

end A074585

/-! ## A074585.P17358286819271825553

`∑[A190913(n)+2-A000211(n)-a(n-1)]` with `a(0)=3`
-/

namespace A074585.P17358286819271825553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A190913 n + (2 - A000211 n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074585.P17358286819271825553

namespace A074585

/-- `∑[A190913(n)+2-A000211(n)-a(n-1)]` -/
def P17358286819271825553.Spec : Prop :=
  ∀ n, P17358286819271825553.a n = A074585 n

end A074585

/-!
# A074586: Triangle of Moebius polynomial coefficients, read by rows, the n-th row forming the polynomial M(n,x) such that M(n,-1) = mu(n), the Moebius function of n.

The programs for A074586, there is no canonical definition to state claims against.
-/

/-! ## A074586.P2517839348337368350

`A029600(n)-A010059(A046691(A060546(n)))`
-/

namespace A074586.P2517839348337368350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n - A010059 (A046691 (A060546 n).toNat).toNat

end

end A074586.P2517839348337368350

/-! ## A074586.P15111438494983252010

`A029600(n)-A166486(A097683(n+1))`
-/

namespace A074586.P15111438494983252010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n - A166486 (A097683 (n + 1)).toNat

end

end A074586.P15111438494983252010

/-! ## A074586.P2538860821278207496

`A354703(A190088(n))`
-/

namespace A074586.P2538860821278207496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354703 (A190088 n).toNat

end

end A074586.P2538860821278207496

/-! ## A074586.P13878657784390013354

`A125936(A114706(n+1))`
-/

namespace A074586.P13878657784390013354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125936 (A114706 (n + 1)).toNat

end

end A074586.P13878657784390013354

/-! ## A074586.P5577692181348364232

`A162352(A321331(n)+2)`
-/

namespace A074586.P5577692181348364232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162352 (A321331 n + 2).toNat

end

end A074586.P5577692181348364232

/-!
# A074587: Sum of the coefficients of the n-th Moebius polynomial, M(n,x), where M(n,-1) = mu(n), the Moebius function of n.

The programs for A074587, there is no canonical definition to state claims against.
-/

/-! ## A074587.P15761471595862375438

`A184744(A126656(n+1))`
-/

namespace A074587.P15761471595862375438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184744 (A126656 (n + 1)).toNat

end

end A074587.P15761471595862375438

/-! ## A074587.P14955007236048515038

`A169659(1+∑[n])`
-/

namespace A074587.P14955007236048515038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169659 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074587.P14955007236048515038

/-! ## A074587.P9469123195765299446

`record[A169659(1+n)]`
-/

namespace A074587.P9469123195765299446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169659 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074587.P9469123195765299446

/-!
# A074588: Rearrangement of odd primes such that a(k) + a(k+1) + 1 is a prime for all k.

The programs for A074588, there is no canonical definition to state claims against.
-/

/-! ## A074588.P6723163224263453282

`p?[A085478(A092569(n))]`
-/

namespace A074588.P6723163224263453282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A092569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P6723163224263453282

/-! ## A074588.P15703485997370810020

`p?[A085478(A166404(n))]`
-/

namespace A074588.P15703485997370810020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A166404 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P15703485997370810020

/-! ## A074588.P9092058385458917644

`p?[A085478(A193231(n))]`
-/

namespace A074588.P9092058385458917644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A193231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P9092058385458917644

/-! ## A074588.P6000294740050543132

`p?[A085478(A269162(n))]`
-/

namespace A074588.P6000294740050543132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A269162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P6000294740050543132

/-! ## A074588.P9642004417215255204

`p?[A085478(A334727(n))]`
-/

namespace A074588.P9642004417215255204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A334727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P9642004417215255204

/-!
# A074589: Replace each number n in Pascal's triangle with the n-th prime.

The programs for A074589, the canonical program `A074589.P13295843883208962175` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074589 has offset 0).

The definition of A074589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074589.P13295843883208962175

`A000040(A007318(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074589

/-- `A000040(A007318(n))` -/
def P13295843883208962175.Spec : Prop :=
  ∀ n, P13295843883208962175.a n = A074589 n

theorem P13295843883208962175.correct : P13295843883208962175.Spec := by
  intro n
  simp only [A074589]

end A074589

/-! ## A074589.P2717608752974319639

`A001748(C(row(n), col(n)))/3`
-/

namespace A074589.P2717608752974319639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)) : ℚ) / 3

end

end A074589.P2717608752974319639

namespace A074589

/-- `A001748(C(row(n), col(n)))/3` -/
def P2717608752974319639.Spec : Prop :=
  ∀ n, P2717608752974319639.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P15501335645983494633

`(1/2)²*A001749(C(row(n), col(n)))`
-/

namespace A074589.P15501335645983494633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2) ^ 2 * (A001749 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)) : ℚ)

end

end A074589.P15501335645983494633

namespace A074589

/-- `(1/2)²*A001749(C(row(n), col(n)))` -/
def P15501335645983494633.Spec : Prop :=
  ∀ n, P15501335645983494633.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P9490063355958909793

`A001749(sqrt(A008459(n)))/4`
-/

namespace A074589.P9490063355958909793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat : ℚ) / 4

end

end A074589.P9490063355958909793

namespace A074589

/-- `A001749(sqrt(A008459(n)))/4` -/
def P9490063355958909793.Spec : Prop :=
  ∀ n, P9490063355958909793.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P17482793911431255449

`A001748(A028326(n)/2)/3`
-/

namespace A074589.P17482793911431255449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat : ℚ) / 3

end

end A074589.P17482793911431255449

namespace A074589

/-- `A001748(A028326(n)/2)/3` -/
def P17482793911431255449.Spec : Prop :=
  ∀ n, P17482793911431255449.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P13284208279443415340

`A001748(ceil(A131108(n)/2))/3`
-/

namespace A074589.P13284208279443415340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 ⌈(A131108 n : ℚ) / 2⌉.toNat : ℚ) / 3

end

end A074589.P13284208279443415340

namespace A074589

/-- `A001748(ceil(A131108(n)/2))/3` -/
def P13284208279443415340.Spec : Prop :=
  ∀ n, P13284208279443415340.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P4085966919285792360

`A001748(abs(sqrt(A008459(n))-1)+1)/3`
-/

namespace A074589.P4085966919285792360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.roundAway (|Real.sqrt (A008459 n : ℝ) - 1| + 1)).toNat : ℚ) / 3

end

end A074589.P4085966919285792360

namespace A074589

/-- `A001748(abs(sqrt(A008459(n))-1)+1)/3` -/
def P4085966919285792360.Spec : Prop :=
  ∀ n, P4085966919285792360.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P6600036770283266714

`A000040(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A074589.P6600036770283266714
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
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat)

end

end A074589.P6600036770283266714

namespace A074589

/-- `A000040(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))` -/
def P6600036770283266714.Spec : Prop :=
  ∀ n, P6600036770283266714.a n = A074589 n

end A074589

/-! ## A074589.P3512329219553742830

`A008578(A007318(n)+1)`
-/

namespace A074589.P3512329219553742830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007318 n + 1).toNat

end

end A074589.P3512329219553742830

namespace A074589

/-- `A008578(A007318(n)+1)` -/
def P3512329219553742830.Spec : Prop :=
  ∀ n, P3512329219553742830.a n = A074589 n

end A074589

/-! ## A074589.P7671432385219988393

`A073846(A028326(n))`
-/

namespace A074589.P7671432385219988393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A028326 n).toNat

end

end A074589.P7671432385219988393

namespace A074589

/-- `A073846(A028326(n))` -/
def P7671432385219988393.Spec : Prop :=
  ∀ n, P7671432385219988393.a n = A074589 n

end A074589

/-! ## A074589.P13720929092833498296

`A067747(A109128(n))`
-/

namespace A074589.P13720929092833498296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A109128 n).toNat

end

end A074589.P13720929092833498296

namespace A074589

/-- `A067747(A109128(n))` -/
def P13720929092833498296.Spec : Prop :=
  ∀ n, P13720929092833498296.a n = A074589 n

end A074589

/-! ## A074589.P4311476140154085783

`A063934(A132731(n))`
-/

namespace A074589.P4311476140154085783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (A132731 n).toNat

end

end A074589.P4311476140154085783

namespace A074589

/-- `A063934(A132731(n))` -/
def P4311476140154085783.Spec : Prop :=
  ∀ n, P4311476140154085783.a n = A074589 n

end A074589

/-! ## A074589.P7440109879793565692

`A075643(A132735(n))`
-/

namespace A074589.P7440109879793565692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (A132735 n).toNat

end

end A074589.P7440109879793565692

namespace A074589

/-- `A075643(A132735(n))` -/
def P7440109879793565692.Spec : Prop :=
  ∀ n, P7440109879793565692.a n = A074589 n

end A074589

/-! ## A074589.P1263626312818965506

`A109763(A124927(n))`
-/

namespace A074589.P1263626312818965506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A124927 n).toNat

end

end A074589.P1263626312818965506

namespace A074589

/-- `A109763(A124927(n))` -/
def P1263626312818965506.Spec : Prop :=
  ∀ n, P1263626312818965506.a n = A074589 n

end A074589

/-! ## A074589.P11382272975881431627

`A162753(A132737(n))`
-/

namespace A074589.P11382272975881431627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A132737 n).toNat

end

end A074589.P11382272975881431627

namespace A074589

/-- `A162753(A132737(n))` -/
def P11382272975881431627.Spec : Prop :=
  ∀ n, P11382272975881431627.a n = A074589 n

end A074589

/-! ## A074589.P4468239546893900514

`A071988(A131060(n))`
-/

namespace A074589.P4468239546893900514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071988 (A131060 n).toNat

end

end A074589.P4468239546893900514

namespace A074589

/-- `A071988(A131060(n))` -/
def P4468239546893900514.Spec : Prop :=
  ∀ n, P4468239546893900514.a n = A074589 n

end A074589

/-!
# A074591: If n is a prime power then 0 else n.

The programs for A074591, the canonical program `A074591.P7866340962004254295` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074591 has offset 1).

The definition of A074591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074591.P7866340962004254295

`(n+1)*(1-A010055(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074591

/-- `(n+1)*(1-A010055(n+1))` -/
def P7866340962004254295.Spec : Prop :=
  ∀ n, P7866340962004254295.a n = A074591 (n + 1)

theorem P7866340962004254295.correct : P7866340962004254295.Spec := by
  intro n
  simp only [A074591, Nat.add_sub_cancel]

end A074591

/-! ## A074591.P16089426501960526951

`(n+1)%∏{p}[n+1, lcm(#, n+1)]`
-/

namespace A074591.P16089426501960526951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1))

end

end A074591.P16089426501960526951

namespace A074591

/-- `(n+1)%∏{p}[n+1, lcm(#, n+1)]` -/
def P16089426501960526951.Spec : Prop :=
  ∀ n, (P16089426501960526951.a n : ℤ) = A074591 (n + 1)

end A074591

/-! ## A074591.P12028725546247580525

`((n+1)²/gcd(n+1, ∏{p}[n+1, (n+1)/#]))%((1+n)*∏{p}[n+1, #])`
-/

namespace A074591.P12028725546247580525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℚ))) (((1 + n) * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ)

end

end A074591.P12028725546247580525

namespace A074591

/-- `((n+1)²/gcd(n+1, ∏{p}[n+1, (n+1)/#]))%((1+n)*∏{p}[n+1, #])` -/
def P12028725546247580525.Spec : Prop :=
  ∀ n, P12028725546247580525.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P16267232947009771632

`(1+n)*A143731(n+1)`
-/

namespace A074591.P16267232947009771632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A143731 (n + 1)

end

end A074591.P16267232947009771632

namespace A074591

/-- `(1+n)*A143731(n+1)` -/
def P16267232947009771632.Spec : Prop :=
  ∀ n, P16267232947009771632.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P13582373950527968146

`(n+1)%A000015(n+1)`
-/

namespace A074591.P13582373950527968146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000015 (n + 1))

end

end A074591.P13582373950527968146

namespace A074591

/-- `(n+1)%A000015(n+1)` -/
def P13582373950527968146.Spec : Prop :=
  ∀ n, P13582373950527968146.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P8397506529703884252

`min(A035321(n+1), n+1)`
-/

namespace A074591.P8397506529703884252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A035321 (n + 1)) (n + 1 : ℤ)

end

end A074591.P8397506529703884252

namespace A074591

/-- `min(A035321(n+1), n+1)` -/
def P8397506529703884252.Spec : Prop :=
  ∀ n, P8397506529703884252.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P11968435470071960405

`(n+1)*A079872(n+1)²`
-/

namespace A074591.P11968435470071960405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079872 (n + 1) ^ 2

end

end A074591.P11968435470071960405

namespace A074591

/-- `(n+1)*A079872(n+1)²` -/
def P11968435470071960405.Spec : Prop :=
  ∀ n, P11968435470071960405.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P7815476347964689499

`(n+1)*char[A080765(n+1)]`
-/

namespace A074591.P7815476347964689499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A074591.P7815476347964689499

namespace A074591

/-- `(n+1)*char[A080765(n+1)]` -/
def P7815476347964689499.Spec : Prop :=
  ∀ n, (P7815476347964689499.a n : ℤ) = A074591 (n + 1)

end A074591

/-! ## A074591.P3100976547200167965

`(n+1)*floor(atan(A001221(n+1)))`
-/

namespace A074591.P3100976547200167965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊Real.arctan (A001221 (n + 1) : ℝ)⌋

end

end A074591.P3100976547200167965

namespace A074591

/-- `(n+1)*floor(atan(A001221(n+1)))` -/
def P3100976547200167965.Spec : Prop :=
  ∀ n, P3100976547200167965.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P16308907917528631749

`A143731(n+1)*A153152(n)`
-/

namespace A074591.P16308907917528631749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A153152 n

end

end A074591.P16308907917528631749

namespace A074591

/-- `A143731(n+1)*A153152(n)` -/
def P16308907917528631749.Spec : Prop :=
  ∀ n, P16308907917528631749.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P7832103924610619071

`A143731(n+1)*A326178(n)`
-/

namespace A074591.P7832103924610619071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A326178 n

end

end A074591.P7832103924610619071

namespace A074591

/-- `A143731(n+1)*A326178(n)` -/
def P7832103924610619071.Spec : Prop :=
  ∀ n, P7832103924610619071.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P11569150576054602138

`A005915(n)%A130064(n+1)`
-/

namespace A074591.P11569150576054602138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005915 n) (A130064 (n + 1))

end

end A074591.P11569150576054602138

namespace A074591

/-- `A005915(n)%A130064(n+1)` -/
def P11569150576054602138.Spec : Prop :=
  ∀ n, P11569150576054602138.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P18419138619953140957

`A006000(n)%A130064(n+1)`
-/

namespace A074591.P18419138619953140957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006000 n) (A130064 (n + 1))

end

end A074591.P18419138619953140957

namespace A074591

/-- `A006000(n)%A130064(n+1)` -/
def P18419138619953140957.Spec : Prop :=
  ∀ n, P18419138619953140957.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P13570766948459748424

`A011379(n)%A130064(n+1)`
-/

namespace A074591.P13570766948459748424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011379 n) (A130064 (n + 1))

end

end A074591.P13570766948459748424

namespace A074591

/-- `A011379(n)%A130064(n+1)` -/
def P13570766948459748424.Spec : Prop :=
  ∀ n, P13570766948459748424.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P4364263978495795262

`A055112(n)%A130064(n+1)`
-/

namespace A074591.P4364263978495795262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055112 n) (A130064 (n + 1))

end

end A074591.P4364263978495795262

namespace A074591

/-- `A055112(n)%A130064(n+1)` -/
def P4364263978495795262.Spec : Prop :=
  ∀ n, P4364263978495795262.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P11930860385298394306

`A069778(n)%A130064(n+1)`
-/

namespace A074591.P11930860385298394306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069778 n) (A130064 (n + 1))

end

end A074591.P11930860385298394306

namespace A074591

/-- `A069778(n)%A130064(n+1)` -/
def P11930860385298394306.Spec : Prop :=
  ∀ n, P11930860385298394306.a n = A074591 (n + 1)

end A074591

/-!
# A074592: Smallest prime factors of numbers that are not prime powers.

The programs for A074592, the canonical program `A074592.P1810100295234526989` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074592 has offset 1).

The definition of A074592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074592.P1810100295234526989

`A020639(A024619(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074592

/-- `A020639(A024619(n+1))` -/
def P1810100295234526989.Spec : Prop :=
  ∀ n, P1810100295234526989.a n = A074592 (n + 1)

theorem P1810100295234526989.correct : P1810100295234526989.Spec := by
  intro n
  simp only [A074592, Nat.add_sub_cancel]

end A074592

/-! ## A074592.P16525475214831723587

`A074593(n+1)-A212332(n+1)`
-/

namespace A074592.P16525475214831723587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074593 (n + 1) - A212332 (n + 1)

end

end A074592.P16525475214831723587

namespace A074592

/-- `A074593(n+1)-A212332(n+1)` -/
def P16525475214831723587.Spec : Prop :=
  ∀ n, P16525475214831723587.a n = A074592 (n + 1)

end A074592

/-! ## A074592.P8051757134413247345

`p?[A020639(n+1)%A006530(n+1)]`
-/

namespace A074592.P8051757134413247345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (A006530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074592.P8051757134413247345

namespace A074592

/-- `p?[A020639(n+1)%A006530(n+1)]` -/
def P8051757134413247345.Spec : Prop :=
  ∀ n, P8051757134413247345.a n = A074592 (n + 1)

end A074592

/-! ## A074592.P3220873197047039030

`A074828(A361102(n+2))`
-/

namespace A074592.P3220873197047039030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A361102 (n + 2)).toNat

end

end A074592.P3220873197047039030

namespace A074592

/-- `A074828(A361102(n+2))` -/
def P3220873197047039030.Spec : Prop :=
  ∀ n, P3220873197047039030.a n = A074592 (n + 1)

end A074592

/-! ## A074592.P7302074135042068815

`A361119(A361103(n+1))`
-/

namespace A074592.P7302074135042068815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361119 (A361103 (n + 1)).toNat

end

end A074592.P7302074135042068815

namespace A074592

/-- `A361119(A361103(n+1))` -/
def P7302074135042068815.Spec : Prop :=
  ∀ n, P7302074135042068815.a n = A074592 (n + 1)

end A074592

/-! ## A074592.P144775927668287297

`A308480(A084365(n+1))`
-/

namespace A074592.P144775927668287297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308480 (A084365 (n + 1)).toNat

end

end A074592.P144775927668287297

namespace A074592

/-- `A308480(A084365(n+1))` -/
def P144775927668287297.Spec : Prop :=
  ∀ n, P144775927668287297.a n = A074592 (n + 1)

end A074592

/-!
# A074593: Largest prime factors of numbers that are not prime powers.

The programs for A074593, the canonical program `A074593.P13854002765739044957` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074593 has offset 1).

The definition of A074593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074593.P13854002765739044957

`A006530(A024619(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074593

/-- `A006530(A024619(n+1))` -/
def P13854002765739044957.Spec : Prop :=
  ∀ n, P13854002765739044957.a n = A074593 (n + 1)

theorem P13854002765739044957.correct : P13854002765739044957.Spec := by
  intro n
  simp only [A074593, Nat.add_sub_cancel]

end A074593

/-! ## A074593.P15696685257477140515

`A212332(n+1)+A074592(n+1)`
-/

namespace A074593.P15696685257477140515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212332 (n + 1) + A074592 (n + 1)

end

end A074593.P15696685257477140515

namespace A074593

/-- `A212332(n+1)+A074592(n+1)` -/
def P15696685257477140515.Spec : Prop :=
  ∀ n, P15696685257477140515.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P15975092354159786591

`A076566(A080765(n+1))`
-/

namespace A074593.P15975092354159786591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A080765 (n + 1)).toNat

end

end A074593.P15975092354159786591

namespace A074593

/-- `A076566(A080765(n+1))` -/
def P15975092354159786591.Spec : Prop :=
  ∀ n, P15975092354159786591.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P5463474803730799344

`A002034(A084365(n+1))`
-/

namespace A074593.P5463474803730799344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A084365 (n + 1)).toNat

end

end A074593.P5463474803730799344

namespace A074593

/-- `A002034(A084365(n+1))` -/
def P5463474803730799344.Spec : Prop :=
  ∀ n, P5463474803730799344.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P10415416932076468917

`A217434(A084365(2*n+1-n))`
-/

namespace A074593.P10415416932076468917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A084365 (2 * n + 1 - n)).toNat

end

end A074593.P10415416932076468917

namespace A074593

/-- `A217434(A084365(2*n+1-n))` -/
def P10415416932076468917.Spec : Prop :=
  ∀ n, P10415416932076468917.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P16185552771065490134

`A361120(A361103(n+1))`
-/

namespace A074593.P16185552771065490134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361120 (A361103 (n + 1)).toNat

end

end A074593.P16185552771065490134

namespace A074593

/-- `A361120(A361103(n+1))` -/
def P16185552771065490134.Spec : Prop :=
  ∀ n, P16185552771065490134.a n = A074593 (n + 1)

end A074593

/-!
# A074594: Number of distinct prime factors of numbers that are not prime powers.

The programs for A074594, the canonical program `A074594.P12974540694644133885` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074594 has offset 1).

The definition of A074594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074594.P12974540694644133885

`A001221(A024619(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074594

/-- `A001221(A024619(n+1))` -/
def P12974540694644133885.Spec : Prop :=
  ∀ n, P12974540694644133885.a n = A074594 (n + 1)

theorem P12974540694644133885.correct : P12974540694644133885.Spec := by
  intro n
  simp only [A074594, Nat.add_sub_cancel]

end A074594

/-! ## A074594.P12239197089488711374

`∑{e}[A084365(1+n), #]`
-/

namespace A074594.P12239197089488711374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074594.P12239197089488711374

namespace A074594

/-- `∑{e}[A084365(1+n), #]` -/
def P12239197089488711374.Spec : Prop :=
  ∀ n, (P12239197089488711374.a n : ℤ) = A074594 (n + 1)

end A074594

/-! ## A074594.P9122962199308881932

`∑{e}[∏{p}[comp[A000961(n+1)-1]+1, #], #]`
-/

namespace A074594.P9122962199308881932
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074594.P9122962199308881932

namespace A074594

/-- `∑{e}[∏{p}[comp[A000961(n+1)-1]+1, #], #]` -/
def P9122962199308881932.Spec : Prop :=
  ∀ n, (P9122962199308881932.a n : ℤ) = A074594 (n + 1)

end A074594

/-! ## A074594.P15318810274639473834

`∑{p}[A024619(n+1), A001222(#)]`
-/

namespace A074594.P15318810274639473834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A074594.P15318810274639473834

namespace A074594

/-- `∑{p}[A024619(n+1), A001222(#)]` -/
def P15318810274639473834.Spec : Prop :=
  ∀ n, P15318810274639473834.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P16090737151703896233

`A001222(∏{p}[A024619(n+1), #])`
-/

namespace A074594.P16090737151703896233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A074594.P16090737151703896233

namespace A074594

/-- `A001222(∏{p}[A024619(n+1), #])` -/
def P16090737151703896233.Spec : Prop :=
  ∀ n, P16090737151703896233.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P5940172240634150483

`∑{e}[∏{p}[lt[2, A073180(n+1)]+1, #], #]`
-/

namespace A074594.P5940172240634150483
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073180 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074594.P5940172240634150483

namespace A074594

/-- `∑{e}[∏{p}[lt[2, A073180(n+1)]+1, #], #]` -/
def P5940172240634150483.Spec : Prop :=
  ∀ n, (P5940172240634150483.a n : ℤ) = A074594 (n + 1)

end A074594

/-! ## A074594.P18373097363430778041

`∑{p}[lt[A014963(n+2), 2]+2, A001222(#)]`
-/

namespace A074594.P18373097363430778041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A074594.P18373097363430778041

namespace A074594

/-- `∑{p}[lt[A014963(n+2), 2]+2, A001222(#)]` -/
def P18373097363430778041.Spec : Prop :=
  ∀ n, P18373097363430778041.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P9084730415058451472

`and(63, A001221(eq[0, A072931(a(A243055(n)))]))` with `a(0)=63`
-/

namespace A074594.P9084730415058451472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [63] fun n f2 =>
  A072931 (f2 (A243055 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A074594.P9084730415058451472

namespace A074594

/-- `and(63, A001221(eq[0, A072931(a(A243055(n)))]))` -/
def P9084730415058451472.Spec : Prop :=
  ∀ n, P9084730415058451472.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P10910702786273460647

`A341644(A074816(A024619(n+1))²)`
-/

namespace A074594.P10910702786273460647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A074816 (A024619 (n + 1)).toNat ^ 2).toNat

end

end A074594.P10910702786273460647

namespace A074594

/-- `A341644(A074816(A024619(n+1))²)` -/
def P10910702786273460647.Spec : Prop :=
  ∀ n, P10910702786273460647.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P11896744339679670002

`A158210(A360529(n+1))`
-/

namespace A074594.P11896744339679670002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (A360529 (n + 1)).toNat

end

end A074594.P11896744339679670002

namespace A074594

/-- `A158210(A360529(n+1))` -/
def P11896744339679670002.Spec : Prop :=
  ∀ n, P11896744339679670002.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P9069246285919786636

`A001222(A084365(n+1)²)/2`
-/

namespace A074594.P9069246285919786636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A084365 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A074594.P9069246285919786636

namespace A074594

/-- `A001222(A084365(n+1)²)/2` -/
def P9069246285919786636.Spec : Prop :=
  ∀ n, P9069246285919786636.a n = (A074594 (n + 1) : ℚ)

end A074594

/-!
# A074595: Number of prime factors of numbers that are not prime powers (with multiplicity).

The programs for A074595, the canonical program `A074595.P16093768430276289458` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074595 has offset 1).

The definition of A074595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074595.P16093768430276289458

`A001222(A024619(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074595

/-- `A001222(A024619(n+1))` -/
def P16093768430276289458.Spec : Prop :=
  ∀ n, P16093768430276289458.a n = A074595 (n + 1)

theorem P16093768430276289458.correct : P16093768430276289458.Spec := by
  intro n
  simp only [A074595, Nat.add_sub_cancel]

end A074595

/-! ## A074595.P3997374553409985009

`∑{e}[A024619(1+n), #]`
-/

namespace A074595.P3997374553409985009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074595.P3997374553409985009

namespace A074595

/-- `∑{e}[A024619(1+n), #]` -/
def P3997374553409985009.Spec : Prop :=
  ∀ n, (P3997374553409985009.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P6715047391176619770

`∑{e}[lt[1, A231813(n)], #]`
-/

namespace A074595.P6715047391176619770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074595.P6715047391176619770

namespace A074595

/-- `∑{e}[lt[1, A231813(n)], #]` -/
def P6715047391176619770.Spec : Prop :=
  ∀ n, (P6715047391176619770.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P854545794997192591

`∑{e}[lt[2, A327641(n)], #]`
-/

namespace A074595.P854545794997192591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327641 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074595.P854545794997192591

namespace A074595

/-- `∑{e}[lt[2, A327641(n)], #]` -/
def P854545794997192591.Spec : Prop :=
  ∀ n, (P854545794997192591.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P11441060554211111118

`∑{e}[floor(sqrt(A335064(n+1))), #]`
-/

namespace A074595.P11441060554211111118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A335064 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074595.P11441060554211111118

namespace A074595

/-- `∑{e}[floor(sqrt(A335064(n+1))), #]` -/
def P11441060554211111118.Spec : Prop :=
  ∀ n, (P11441060554211111118.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P202910708440679275

`∑{e}[comp[A181062(n+1)]+1, #]`
-/

namespace A074595.P202910708440679275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074595.P202910708440679275

namespace A074595

/-- `∑{e}[comp[A181062(n+1)]+1, #]` -/
def P202910708440679275.Spec : Prop :=
  ∀ n, (P202910708440679275.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P4480304768314713163

`∑{e}[A361102(n+2), #]`
-/

namespace A074595.P4480304768314713163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074595.P4480304768314713163

namespace A074595

/-- `∑{e}[A361102(n+2), #]` -/
def P4480304768314713163.Spec : Prop :=
  ∀ n, (P4480304768314713163.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P2733191721446734294

`∑{e}[lt[1, A066882(n)], #]`
-/

namespace A074595.P2733191721446734294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074595.P2733191721446734294

namespace A074595

/-- `∑{e}[lt[1, A066882(n)], #]` -/
def P2733191721446734294.Spec : Prop :=
  ∀ n, (P2733191721446734294.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P4403717198318713779

`∑{e}[lt[1, A007875(n+1)]+1, #]`
-/

namespace A074595.P4403717198318713779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074595.P4403717198318713779

namespace A074595

/-- `∑{e}[lt[1, A007875(n+1)]+1, #]` -/
def P4403717198318713779.Spec : Prop :=
  ∀ n, (P4403717198318713779.a n : ℤ) = A074595 (n + 1)

end A074595

/-!
# A074596: Numerator of 3 * H(n,3,1), a generalized harmonic number. See A075135.

The programs for A074596, there is no canonical definition to state claims against.
-/

/-! ## A074596.P16542780171866054436

`3*A075135(1+n)`
-/

namespace A074596.P16542780171866054436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075135 (1 + n)

end

end A074596.P16542780171866054436

/-! ## A074596.P16349498938641719292

`A075135(n+1)+lcm(2, A075135(n+1))`
-/

namespace A074596.P16349498938641719292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075135 (n + 1) + (Int.lcm 2 (A075135 (n + 1)) : ℤ)

end

end A074596.P16349498938641719292

/-!
# A074597: Numerator of 3 * H(n,3,2), a generalized harmonic number. See A075135.

The programs for A074597, there is no canonical definition to state claims against.
-/

/-! ## A074597.P16534189161448404967

`A000265(3*A024395(n))`
-/

namespace A074597.P16534189161448404967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * A024395 n).toNat

end

end A074597.P16534189161448404967

/-!
# A074598: Numerator of 4 * H(n,4,1), a generalized harmonic number. See A075136.

The programs for A074598, there is no canonical definition to state claims against.
-/

/-! ## A074598.P816507778807415379

`4*A075136(n+1)`
-/

namespace A074598.P816507778807415379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A075136 (n + 1)

end

end A074598.P816507778807415379

/-! ## A074598.P11536601352238351220

`lcm(A171977(2+n+n), A075136(n+1))`
-/

namespace A074598.P11536601352238351220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A171977 (2 + n + n)) (A075136 (n + 1))

end

end A074598.P11536601352238351220

/-!
# A074599: Numerator of 2 * H(n,2,1), a generalized harmonic number. See A075135. Also 2 * A350669.

The programs for A074599, there is no canonical definition to state claims against.
-/

/-! ## A074599.P13337553005213797247

`2*A025550(1+n)`
-/

namespace A074599.P13337553005213797247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025550 (1 + n)

end

end A074599.P13337553005213797247

/-! ## A074599.P14026899435976548152

`A025550(n+1)+A025550(1+n)`
-/

namespace A074599.P14026899435976548152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025550 (n + 1) + A025550 (1 + n)

end

end A074599.P14026899435976548152

/-! ## A074599.P15733042247037527671

`2/A025549(n+1)*A004041(n)`
-/

namespace A074599.P15733042247037527671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A025549 (n + 1) : ℚ) * (A004041 n : ℚ)

end

end A074599.P15733042247037527671

/-! ## A074599.P9329364217137439403

`2/A006519(n+1)*A233470(n+1)`
-/

namespace A074599.P9329364217137439403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A006519 (n + 1) : ℚ) * (A233470 (n + 1) : ℚ)

end

end A074599.P9329364217137439403

