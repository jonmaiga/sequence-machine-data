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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A003500: a(n) = 4*a(n-1) - a(n-2) with a(0) = 2, a(1) = 4.

The programs for A003500, the canonical program `A003500.P8204487719202750174` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003500 has offset 0).

The definition of A003500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A003500.P8204487719202750174`, by `A003500.P8204487719202750174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003500.P8204487719202750174

`4*a(n-1)-a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003500

/-- `4*a(n-1)-a(n-2)` -/
def P8204487719202750174.Spec : Prop :=
  ∀ n, P8204487719202750174.a n = A003500 n

theorem P8204487719202750174.correct : P8204487719202750174.Spec := by
  intro n
  simp only [A003500]

end A003500

/-! ## A003500.P10503740550467777735

`2*A001075(n)`
-/

namespace A003500.P10503740550467777735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001075 n

end

end A003500.P10503740550467777735

namespace A003500

/-- `2*A001075(n)` -/
def P10503740550467777735.Spec : Prop :=
  ∀ n, P10503740550467777735.a n = A003500 n

end A003500

/-! ## A003500.P6104860358772731539

`A001835(n)+A001835(n+1)`
-/

namespace A003500.P6104860358772731539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n + A001835 (n + 1)

end

end A003500.P6104860358772731539

namespace A003500

/-- `A001835(n)+A001835(n+1)` -/
def P6104860358772731539.Spec : Prop :=
  ∀ n, P6104860358772731539.a n = A003500 n

end A003500

/-! ## A003500.P12467228855294600077

`2*A001353(n+1)-4*A001353(n)`
-/

namespace A003500.P12467228855294600077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001353 (n + 1) - 4 * A001353 n

end

end A003500.P12467228855294600077

namespace A003500

/-- `2*A001353(n+1)-4*A001353(n)` -/
def P12467228855294600077.Spec : Prop :=
  ∀ n, P12467228855294600077.a n = A003500 n

end A003500

/-! ## A003500.P2540945777046083876

`sqrt(2+2*A011943(n+1))`
-/

namespace A003500.P2540945777046083876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 + 2 * A011943 (n + 1) : ℝ)

end

end A003500.P2540945777046083876

namespace A003500

/-- `sqrt(2+2*A011943(n+1))` -/
def P2540945777046083876.Spec : Prop :=
  ∀ n, P2540945777046083876.a n = (A003500 n : ℝ)

end A003500

/-! ## A003500.P13901971476038537885

`ogf((2-4x)/(1-4x+x^2))`
-/

namespace A003500.P13901971476038537885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4, 1] n

end

end A003500.P13901971476038537885

namespace A003500

/-- `ogf((2-4x)/(1-4x+x^2))` -/
def P13901971476038537885.Spec : Prop :=
  ∀ n, P13901971476038537885.a n = A003500 n

end A003500

/-! ## A003500.P16938011218760283728

`floor((sqrt(3)+2)^n)+1`
-/

namespace A003500.P16938011218760283728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1

end

end A003500.P16938011218760283728

namespace A003500

/-- `floor((sqrt(3)+2)^n)+1` -/
def P16938011218760283728.Spec : Prop :=
  ∀ n, P16938011218760283728.a n = A003500 n

end A003500

/-! ## A003500.P2515014618632888321

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A003500.P2515014618632888321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A003500.P2515014618632888321

namespace A003500

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P2515014618632888321.Spec : Prop :=
  ∀ n, P2515014618632888321.a n = A003500 n

end A003500

/-! ## A003500.P8259035950137564356

`2*(A092184(n)+1)`
-/

namespace A003500.P8259035950137564356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092184 n + 1)

end

end A003500.P8259035950137564356

namespace A003500

/-- `2*(A092184(n)+1)` -/
def P8259035950137564356.Spec : Prop :=
  ∀ n, P8259035950137564356.a n = A003500 n

end A003500

/-! ## A003500.P16387134293818061705

`2*(A121401(n)-1)`
-/

namespace A003500.P16387134293818061705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A121401 n - 1)

end

end A003500.P16387134293818061705

namespace A003500

/-- `2*(A121401(n)-1)` -/
def P16387134293818061705.Spec : Prop :=
  ∀ n, P16387134293818061705.a n = A003500 n

end A003500

/-! ## A003500.P17964532329524036621

`2*A002531(2*n)`
-/

namespace A003500.P17964532329524036621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002531 (2 * n)

end

end A003500.P17964532329524036621

namespace A003500

/-- `2*A002531(2*n)` -/
def P17964532329524036621.Spec : Prop :=
  ∀ n, P17964532329524036621.a n = A003500 n

end A003500

/-! ## A003500.P16423452248196130047

`A321119(2*n)/2`
-/

namespace A003500.P16423452248196130047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321119 (2 * n) : ℚ) / 2

end

end A003500.P16423452248196130047

namespace A003500

/-- `A321119(2*n)/2` -/
def P16423452248196130047.Spec : Prop :=
  ∀ n, P16423452248196130047.a n = (A003500 n : ℚ)

end A003500

/-! ## A003500.P9426350246493498405

`xor(1, A016064(n)+2)`
-/

namespace A003500.P9426350246493498405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A016064 n + 2)

end

end A003500.P9426350246493498405

namespace A003500

/-- `xor(1, A016064(n)+2)` -/
def P9426350246493498405.Spec : Prop :=
  ∀ n, P9426350246493498405.a n = A003500 n

end A003500

/-! ## A003500.P8005692317324342096

`2*A005246(Δ[n²])`
-/

namespace A003500.P8005692317324342096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003500.P8005692317324342096

namespace A003500

/-- `2*A005246(Δ[n²])` -/
def P8005692317324342096.Spec : Prop :=
  ∀ n, P8005692317324342096.a n = A003500 n

end A003500

/-! ## A003500.P9153359247828668549

`record[Δ[2*A002530(n)]]`
-/

namespace A003500.P9153359247828668549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003500.P9153359247828668549

namespace A003500

/-- `record[Δ[2*A002530(n)]]` -/
def P9153359247828668549.Spec : Prop :=
  ∀ n, P9153359247828668549.a n = A003500 n

end A003500

/-! ## A003500.P17674469101633871593

`Δ[2*A107401(2*n)]`
-/

namespace A003500.P17674469101633871593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107401 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003500.P17674469101633871593

namespace A003500

/-- `Δ[2*A107401(2*n)]` -/
def P17674469101633871593.Spec : Prop :=
  ∀ n, P17674469101633871593.a n = A003500 n

end A003500

/-! ## A003500.P5039771950055059807

`2/3*A151961(n+1)`
-/

namespace A003500.P5039771950055059807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A151961 (n + 1) : ℚ)

end

end A003500.P5039771950055059807

namespace A003500

/-- `2/3*A151961(n+1)` -/
def P5039771950055059807.Spec : Prop :=
  ∀ n, P5039771950055059807.a n = (A003500 n : ℚ)

end A003500

/-! ## A003500.P6413674324158758271

`lcm(A001075(n), A010694(n))`
-/

namespace A003500.P6413674324158758271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001075 n) (A010694 n)

end

end A003500.P6413674324158758271

namespace A003500

/-- `lcm(A001075(n), A010694(n))` -/
def P6413674324158758271.Spec : Prop :=
  ∀ n, (P6413674324158758271.a n : ℤ) = A003500 n

end A003500

/-! ## A003500.P14795221699578916408

`xor(A010705(n), A016064(n))`
-/

namespace A003500.P14795221699578916408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010705 n) (A016064 n)

end

end A003500.P14795221699578916408

namespace A003500

/-- `xor(A010705(n), A016064(n))` -/
def P14795221699578916408.Spec : Prop :=
  ∀ n, P14795221699578916408.a n = A003500 n

end A003500

/-! ## A003500.P8707088255892108484

`A162563(n)%A082841(n)`
-/

namespace A003500.P8707088255892108484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162563 n) (A082841 n)

end

end A003500.P8707088255892108484

namespace A003500

/-- `A162563(n)%A082841(n)` -/
def P8707088255892108484.Spec : Prop :=
  ∀ n, P8707088255892108484.a n = A003500 n

end A003500

/-!
# A003501: a(n) = 5*a(n-1) - a(n-2), with a(0) = 2, a(1) = 5.

The programs for A003501, the canonical program `A003501.P7233180597746246201` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003501 has offset 0).

The definition of A003501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A003501.P7233180597746246201`, by `A003501.P7233180597746246201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003501.P7233180597746246201

`5*a(n-1)-a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003501

/-- `5*a(n-1)-a(n-2)` -/
def P7233180597746246201.Spec : Prop :=
  ∀ n, P7233180597746246201.a n = A003501 n

theorem P7233180597746246201.correct : P7233180597746246201.Spec := by
  intro n
  simp only [A003501]

end A003501

/-! ## A003501.P13858251829923708181

`sqrt(4+21*A004254(n)²)`
-/

namespace A003501.P13858251829923708181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (4 + 21 * A004254 n ^ 2 : ℝ)

end

end A003501.P13858251829923708181

namespace A003501

/-- `sqrt(4+21*A004254(n)²)` -/
def P13858251829923708181.Spec : Prop :=
  ∀ n, P13858251829923708181.a n = (A003501 n : ℝ)

end A003501

/-! ## A003501.P17981829965536601932

`ogf((2-5x)/(1-5x+x^2))`
-/

namespace A003501.P17981829965536601932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -5, 1] n

end

end A003501.P17981829965536601932

namespace A003501

/-- `ogf((2-5x)/(1-5x+x^2))` -/
def P17981829965536601932.Spec : Prop :=
  ∀ n, P17981829965536601932.a n = A003501 n

end A003501

/-! ## A003501.P13932170464180511691

`((5+sqrt(21))/2)^n+((5-sqrt(21))/2)^n`
-/

namespace A003501.P13932170464180511691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (21 : ℝ)) / 2) ^ n + ((5 - Real.sqrt (21 : ℝ)) / 2) ^ n

end

end A003501.P13932170464180511691

namespace A003501

/-- `((5+sqrt(21))/2)^n+((5-sqrt(21))/2)^n` -/
def P13932170464180511691.Spec : Prop :=
  ∀ n, P13932170464180511691.a n = (A003501 n : ℝ)

theorem P13932170464180511691.correct : P13932170464180511691.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A003501, Nat.add_sub_cancel, A003501.P13932170464180511691.a, A003501.P7233180597746246201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A003501, Nat.add_sub_cancel, A003501.P13932170464180511691.a, A003501.P7233180597746246201.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003501

/-! ## A003501.P9113278499158500252

`Δ[A107389(n+2)-A107389(n)]`
-/

namespace A003501.P9113278499158500252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107389 (n + 2) - A107389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003501.P9113278499158500252

namespace A003501

/-- `Δ[A107389(n+2)-A107389(n)]` -/
def P9113278499158500252.Spec : Prop :=
  ∀ n, P9113278499158500252.a n = A003501 n

end A003501

/-! ## A003501.P5516423451408577562

`Δ[A004253(n+1)-A164582(n+1)]`
-/

namespace A003501.P5516423451408577562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) - A164582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003501.P5516423451408577562

namespace A003501

/-- `Δ[A004253(n+1)-A164582(n+1)]` -/
def P5516423451408577562.Spec : Prop :=
  ∀ n, P5516423451408577562.a n = A003501 n

end A003501

/-! ## A003501.P11197126455050471656

`Δ[A099867(n)]%A290902(n)`
-/

namespace A003501.P11197126455050471656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A290902 n)

end

end A003501.P11197126455050471656

namespace A003501

/-- `Δ[A099867(n)]%A290902(n)` -/
def P11197126455050471656.Spec : Prop :=
  ∀ n, P11197126455050471656.a n = A003501 n

end A003501

/-! ## A003501.P17409341475590595536

`A060964(A000124(n+5)+4)`
-/

namespace A003501.P17409341475590595536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (A000124 (n + 5) + 4).toNat

end

end A003501.P17409341475590595536

namespace A003501

/-- `A060964(A000124(n+5)+4)` -/
def P17409341475590595536.Spec : Prop :=
  ∀ n, P17409341475590595536.a n = A003501 n

end A003501

/-! ## A003501.P1019760982858250244

`A172012(2*n)/A000244(n)`
-/

namespace A003501.P1019760982858250244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172012 (2 * n) : ℚ) / (A000244 n : ℚ)

end

end A003501.P1019760982858250244

namespace A003501

/-- `A172012(2*n)/A000244(n)` -/
def P1019760982858250244.Spec : Prop :=
  ∀ n, P1019760982858250244.a n = (A003501 n : ℚ)

end A003501

/-! ## A003501.P18104438208820468938

`(a(n-1)²+21)/a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A003501.P18104438208820468938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 5] fun n a =>
  (a (n - 1) ^ 2 + 21) / a (n - 2)

end

end A003501.P18104438208820468938

namespace A003501

/-- `(a(n-1)²+21)/a(n-2)` -/
def P18104438208820468938.Spec : Prop :=
  ∀ n, P18104438208820468938.a n = (A003501 n : ℚ)

end A003501

/-!
# A003502: The smaller of a betrothed pair.

The programs for A003502, there is no canonical definition to state claims against.
-/

/-! ## A003502.P8360791085677501068

`A179612(n+1)-A003503(n+1)`
-/

namespace A003502.P8360791085677501068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179612 (n + 1) - A003503 (n + 1)

end

end A003502.P8360791085677501068

/-! ## A003502.P12567000048825799393

`A179612(A000027(n+1))%A003503(n+1)`
-/

namespace A003502.P12567000048825799393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179612 (A000027 (n + 1)).toNat) (A003503 (n + 1))

end

end A003502.P12567000048825799393

/-! ## A003502.P10308937401892866600

`or(A179612(n+1), A245092(n))%A003503(n+1)`
-/

namespace A003502.P10308937401892866600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A179612 (n + 1)) (A245092 n)) (A003503 (n + 1))

end

end A003502.P10308937401892866600

/-! ## A003502.P9949168023771723157

`A179612(n+1)%(A003503(n+1)%A007992(n+1))`
-/

namespace A003502.P9949168023771723157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179612 (n + 1)) (Int.tmod (A003503 (n + 1)) (A007992 (n + 1)))

end

end A003502.P9949168023771723157

/-! ## A003502.P9154041290572107596

`or(A048050(n+1), A179612(n+1))%A003503(n+1)`
-/

namespace A003502.P9154041290572107596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A048050 (n + 1)) (A179612 (n + 1))) (A003503 (n + 1))

end

end A003502.P9154041290572107596

/-!
# A003503: The larger of a betrothed pair.

The programs for A003503, there is no canonical definition to state claims against.
-/

/-! ## A003503.P13132412241735646868

`A179612(n+1)-A003502(n+1)`
-/

namespace A003503.P13132412241735646868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179612 (n + 1) - A003502 (n + 1)

end

end A003503.P13132412241735646868

/-! ## A003503.P7403560662687595046

`A328370(2*(n+1))`
-/

namespace A003503.P7403560662687595046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328370 (2 * (n + 1))

end

end A003503.P7403560662687595046

/-! ## A003503.P13910402797624107411

`A179612(n+1)-A328370(Δ[n²])`
-/

namespace A003503.P13910402797624107411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179612 (n + 1) - A328370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003503.P13910402797624107411

/-!
# A003504: a(0)=a(1)=1; thereafter a(n+1) = (1/n)*Sum_{k=0..n} a(k)^2 (a(n) is not always integral!).

The programs for A003504, there is no canonical definition to state claims against.
-/

/-! ## A003504.P17234855611548675784

`A061315(C(n, 2)+2)`
-/

namespace A003504.P17234855611548675784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061315 (Nat.choose n 2 + 2)

end

end A003504.P17234855611548675784

/-! ## A003504.P5588722522614370533

`A061315(∑[n-1]+3)`
-/

namespace A003504.P5588722522614370533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061315 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A003504.P5588722522614370533

/-! ## A003504.P11001080226196404143

`A185037(n)+A061315(A238531(n))`
-/

namespace A003504.P11001080226196404143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + A061315 (A238531 n).toNat

end

end A003504.P11001080226196404143

/-! ## A003504.P17180325978555265366

`A061315(A238531(n))*A208673(n)`
-/

namespace A003504.P17180325978555265366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061315 (A238531 n).toNat * A208673 n

end

end A003504.P17180325978555265366

/-! ## A003504.P7557493177880658191

`A061315(A238531(n))/A329198(n)`
-/

namespace A003504.P7557493177880658191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061315 (A238531 n).toNat : ℚ) / (A329198 n : ℚ)

end

end A003504.P7557493177880658191

/-!
# A003505: Number of simple tournaments with n nodes.

The programs for A003505, there is no canonical definition to state claims against.
-/

/-! ## A003505.P1798337322974529027

`A048967(A007570(n+1)+1)`
-/

namespace A003505.P1798337322974529027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A007570 (n + 1) + 1).toNat

end

end A003505.P1798337322974529027

/-! ## A003505.P8419568967877028410

`A350260(A301700(n+1)+1)`
-/

namespace A003505.P8419568967877028410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350260 (A301700 (n + 1) + 1).toNat

end

end A003505.P8419568967877028410

/-! ## A003505.P11881770188069917511

`A363778(A010815(n)+A000129(n))`
-/

namespace A003505.P11881770188069917511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A010815 n + A000129 n).toNat

end

end A003505.P11881770188069917511

/-!
# A003506: Triangle of denominators in Leibniz's Harmonic Triangle a(n,k), n >= 1, 1 <= k <= n.

The programs for A003506, the canonical program `A003506.P3661532846367947331` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003506 has offset 1).

The definition of A003506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003506.P9500762946473208183

`A007318(n)*∑[char[∑[n]]]`
-/

namespace A003506.P9500762946473208183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003506.P9500762946473208183

namespace A003506

/-- `A007318(n)*∑[char[∑[n]]]` -/
def P9500762946473208183.Spec : Prop :=
  ∀ n, P9500762946473208183.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P16815409287886181348

`(A132751(n+1)+1)/2`
-/

namespace A003506.P16815409287886181348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132751 (n + 1) + 1 : ℚ) / 2

end

end A003506.P16815409287886181348

namespace A003506

/-- `(A132751(n+1)+1)/2` -/
def P16815409287886181348.Spec : Prop :=
  ∀ n, P16815409287886181348.a n = (A003506 (n + 1) : ℚ)

theorem P16815409287886181348.correct : P16815409287886181348.Spec := by
  intro n
  simp only [A003506, Nat.add_sub_cancel, A003506.P16815409287886181348.a, A003506.P3661532846367947331.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A132751, A132751.P15149145036717789500.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003506

/-! ## A003506.P1701279967705203739

`A216973(n)+A103406(n)`
-/

namespace A003506.P1701279967705203739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A103406 n

end

end A003506.P1701279967705203739

namespace A003506

/-- `A216973(n)+A103406(n)` -/
def P1701279967705203739.Spec : Prop :=
  ∀ n, P1701279967705203739.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P9103113152018170342

`A128710(n)-A055137(n)`
-/

namespace A003506.P9103113152018170342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A055137 n

end

end A003506.P9103113152018170342

namespace A003506

/-- `A128710(n)-A055137(n)` -/
def P9103113152018170342.Spec : Prop :=
  ∀ n, P9103113152018170342.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P4505590507458030241

`A140880(n)-A135065(n)`
-/

namespace A003506.P4505590507458030241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140880 n - A135065 n

end

end A003506.P4505590507458030241

namespace A003506

/-- `A140880(n)-A135065(n)` -/
def P4505590507458030241.Spec : Prop :=
  ∀ n, P4505590507458030241.a n = A003506 (n + 1)

theorem P4505590507458030241.correct : P4505590507458030241.Spec := by
  intro n
  simp only [A003506, Nat.add_sub_cancel, A003506.P4505590507458030241.a, A003506.P3661532846367947331.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135065, A135065.P17350075566062413981.a, A140880, A140880.P7790259496823977085.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A063929, A063929.P8531949189101213059.a, A003991, A003991.P14084851459366035567.a, A005369, A005369.P10796159359873341658.a, A055461, A055461.P3025188043753293136.a, A057944, A057944.P16851463738746886639.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003506

/-! ## A003506.P7065974464667673975

`gcd(A103516(n), A135853(n))`
-/

namespace A003506.P7065974464667673975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103516 n) (A135853 n)

end

end A003506.P7065974464667673975

namespace A003506

/-- `gcd(A103516(n), A135853(n))` -/
def P7065974464667673975.Spec : Prop :=
  ∀ n, (P7065974464667673975.a n : ℤ) = A003506 (n + 1)

end A003506

/-! ## A003506.P11665958996854829660

`∑[A010054(n)]*A007318(n)`
-/

namespace A003506.P11665958996854829660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007318 n

end

end A003506.P11665958996854829660

namespace A003506

/-- `∑[A010054(n)]*A007318(n)` -/
def P11665958996854829660.Spec : Prop :=
  ∀ n, P11665958996854829660.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P17017975221741962013

`A002024(n+1)*A007318(n)`
-/

namespace A003506.P17017975221741962013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A007318 n

end

end A003506.P17017975221741962013

namespace A003506

/-- `A002024(n+1)*A007318(n)` -/
def P17017975221741962013.Spec : Prop :=
  ∀ n, P17017975221741962013.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P7763670959249793189

`(A003056(n)+1)*A007318(n)`
-/

namespace A003506.P7763670959249793189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A007318 n

end

end A003506.P7763670959249793189

namespace A003506

/-- `(A003056(n)+1)*A007318(n)` -/
def P7763670959249793189.Spec : Prop :=
  ∀ n, P7763670959249793189.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P3661532846367947331

`A004736(n+1)*A074909(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003506

/-- `A004736(n+1)*A074909(n)` -/
def P3661532846367947331.Spec : Prop :=
  ∀ n, P3661532846367947331.a n = A003506 (n + 1)

theorem P3661532846367947331.correct : P3661532846367947331.Spec := by
  intro n
  simp only [A003506, Nat.add_sub_cancel]

end A003506

/-! ## A003506.P173145676031894019

`(A025581(n)+1)*A074909(n)`
-/

namespace A003506.P173145676031894019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A074909 n

end

end A003506.P173145676031894019

namespace A003506

/-- `(A025581(n)+1)*A074909(n)` -/
def P173145676031894019.Spec : Prop :=
  ∀ n, P173145676031894019.a n = A003506 (n + 1)

theorem P173145676031894019.correct : P173145676031894019.Spec := by
  intro n
  simp only [A003506, Nat.add_sub_cancel, A003506.P173145676031894019.a, A003506.P3661532846367947331.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003506

/-! ## A003506.P12388820141528778419

`A002260(n+1)*A135278(n)`
-/

namespace A003506.P12388820141528778419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A135278 n

end

end A003506.P12388820141528778419

namespace A003506

/-- `A002260(n+1)*A135278(n)` -/
def P12388820141528778419.Spec : Prop :=
  ∀ n, P12388820141528778419.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P11652448334463921491

`(A002262(n)+1)*A135278(n)`
-/

namespace A003506.P11652448334463921491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A135278 n

end

end A003506.P11652448334463921491

namespace A003506

/-- `(A002262(n)+1)*A135278(n)` -/
def P11652448334463921491.Spec : Prop :=
  ∀ n, P11652448334463921491.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P824293814265744680

`A131818(n+1)*A184049(n)`
-/

namespace A003506.P824293814265744680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A184049 n

end

end A003506.P824293814265744680

namespace A003506

/-- `A131818(n+1)*A184049(n)` -/
def P824293814265744680.Spec : Prop :=
  ∀ n, P824293814265744680.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P17681013042758464007

`A135065(n)/A002024(n+1)`
-/

namespace A003506.P17681013042758464007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135065 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A003506.P17681013042758464007

namespace A003506

/-- `A135065(n)/A002024(n+1)` -/
def P17681013042758464007.Spec : Prop :=
  ∀ n, P17681013042758464007.a n = (A003506 (n + 1) : ℚ)

end A003506

/-! ## A003506.P14699610590866650691

`(A132775(n)+A007318(n))/2`
-/

namespace A003506.P14699610590866650691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132775 n + A007318 n : ℚ) / 2

end

end A003506.P14699610590866650691

namespace A003506

/-- `(A132775(n)+A007318(n))/2` -/
def P14699610590866650691.Spec : Prop :=
  ∀ n, P14699610590866650691.a n = (A003506 (n + 1) : ℚ)

end A003506

/-! ## A003506.P15644697230305539331

`∑[A197870(n)²]*A007318(n)`
-/

namespace A003506.P15644697230305539331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007318 n

end

end A003506.P15644697230305539331

namespace A003506

/-- `∑[A197870(n)²]*A007318(n)` -/
def P15644697230305539331.Spec : Prop :=
  ∀ n, P15644697230305539331.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P16756385953349969225

`abs(A002024(n+1)*A108086(n))`
-/

namespace A003506.P16756385953349969225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) * A108086 n|

end

end A003506.P16756385953349969225

namespace A003506

/-- `abs(A002024(n+1)*A108086(n))` -/
def P16756385953349969225.Spec : Prop :=
  ∀ n, P16756385953349969225.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P16984039531333920123

`abs((A003056(n)+1)*A108086(n))`
-/

namespace A003506.P16984039531333920123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A003056 n + 1) * A108086 n|

end

end A003506.P16984039531333920123

namespace A003506

/-- `abs((A003056(n)+1)*A108086(n))` -/
def P16984039531333920123.Spec : Prop :=
  ∀ n, P16984039531333920123.a n = A003506 (n + 1)

end A003506

/-! ## A003506.P16454874518586936515

`abs(A002024(n+1)*A130595(n))`
-/

namespace A003506.P16454874518586936515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) * A130595 n|

end

end A003506.P16454874518586936515

namespace A003506

/-- `abs(A002024(n+1)*A130595(n))` -/
def P16454874518586936515.Spec : Prop :=
  ∀ n, P16454874518586936515.a n = A003506 (n + 1)

end A003506

/-!
# A003507: Number of rigid tournaments with n nodes.

The programs for A003507, there is no canonical definition to state claims against.
-/

/-! ## A003507.P8350221712679563283

`A025868(A323930(n+1)-A121186(n+1))`
-/

namespace A003507.P8350221712679563283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (A323930 (n + 1) - A121186 (n + 1)).toNat

end

end A003507.P8350221712679563283

/-! ## A003507.P5549405638674913829

`A025868(A018190(n+1)+A190163(n)-A121186(n+1))`
-/

namespace A003507.P5549405638674913829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (A018190 (n + 1) + (A190163 n - A121186 (n + 1))).toNat

end

end A003507.P5549405638674913829

/-! ## A003507.P16037751162591524359

`A025868(A018190(n+1)+A234277(n)-A121186(n+1))`
-/

namespace A003507.P16037751162591524359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (A018190 (n + 1) + (A234277 n - A121186 (n + 1))).toNat

end

end A003507.P16037751162591524359

/-! ## A003507.P17853943945842964776

`A025868(A018190(n+1)+A038140(n+1)-A121186(n+1))`
-/

namespace A003507.P17853943945842964776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (A018190 (n + 1) + (A038140 (n + 1) - A121186 (n + 1))).toNat

end

end A003507.P17853943945842964776

/-!
# A003508: a(1) = 1; for n>1, a(n) = a(n-1) + 1 + sum of distinct prime factors of a(n-1) that are < a(n-1).

The programs for A003508, there is no canonical definition to state claims against.
-/

/-! ## A003508.P11796812434447114712

`eq[0, A105593(n+1)]+1`
-/

namespace A003508.P11796812434447114712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003508.P11796812434447114712

/-! ## A003508.P18354310424925863679

`lt[A105593(n+1), A105597(n)]+1`
-/

namespace A003508.P18354310424925863679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A003508.P18354310424925863679

/-! ## A003508.P14304415600045150572

`record[gcd(A000027(n+1), A105593(n+1))]`
-/

namespace A003508.P14304415600045150572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A105593 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003508.P14304415600045150572

/-! ## A003508.P7559274373384678939

`eq[A000007(n), A105593(A028310(n))]`
-/

namespace A003508.P7559274373384678939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105593 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003508.P7559274373384678939

/-! ## A003508.P4954980792650805426

`eq[A000038(n), A105593(A028310(n))]`
-/

namespace A003508.P4954980792650805426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105593 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003508.P4954980792650805426

/-!
# A003510: An equivalence relation on permutations.

The programs for A003510, there is no canonical definition to state claims against.
-/

/-! ## A003510.P2767093018687024421

`A089179(n+1)/(n+1)`
-/

namespace A003510.P2767093018687024421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089179 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003510.P2767093018687024421

/-! ## A003510.P7237935644801396562

`A389835(A148149(n))`
-/

namespace A003510.P7237935644801396562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389835 (A148149 n).toNat

end

end A003510.P7237935644801396562

/-! ## A003510.P2719179530617836324

`A340763(A276613(n!))`
-/

namespace A003510.P2719179530617836324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A276613 (Nat.factorial n)).toNat

end

end A003510.P2719179530617836324

/-!
# A003511: A Beatty sequence: floor( n * (1 + sqrt(3))/2 ).

The programs for A003511, the canonical program `A003511.P207188279640742071` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003511 has offset 1).

The definition of A003511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(1+sqrt(3))/2)` (program `A003511.P207188279640742071`, by `A003511.P207188279640742071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003511.P207188279640742071

`floor((n+1)*(1+sqrt(3))/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003511

/-- `floor((n+1)*(1+sqrt(3))/2)` -/
def P207188279640742071.Spec : Prop :=
  ∀ n, P207188279640742071.a n = A003511 (n + 1)

theorem P207188279640742071.correct : P207188279640742071.Spec := by
  intro n
  simp only [A003511, Nat.add_sub_cancel]

end A003511

/-! ## A003511.P15990574787792291077

`∑[A245222(n)]-1`
-/

namespace A003511.P15990574787792291077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003511.P15990574787792291077

namespace A003511

/-- `∑[A245222(n)]-1` -/
def P15990574787792291077.Spec : Prop :=
  ∀ n, P15990574787792291077.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P10588187613467423711

`A188070(n+1)-1`
-/

namespace A003511.P10588187613467423711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) - 1

end

end A003511.P10588187613467423711

namespace A003511

/-- `A188070(n+1)-1` -/
def P10588187613467423711.Spec : Prop :=
  ∀ n, P10588187613467423711.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P18316514553260078161

`ceil(A180122(n+1)/2)`
-/

namespace A003511.P18316514553260078161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180122 (n + 1) : ℚ) / 2⌉

end

end A003511.P18316514553260078161

namespace A003511

/-- `ceil(A180122(n+1)/2)` -/
def P18316514553260078161.Spec : Prop :=
  ∀ n, P18316514553260078161.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P7958192361186511564

`comp[A180123(n+1)]+1`
-/

namespace A003511.P7958192361186511564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003511.P7958192361186511564

namespace A003511

/-- `comp[A180123(n+1)]+1` -/
def P7958192361186511564.Spec : Prop :=
  ∀ n, (P7958192361186511564.a n : ℤ) = A003511 (n + 1)

end A003511

/-! ## A003511.P13899329759371332606

`comp[A188069(n+1)-1]`
-/

namespace A003511.P13899329759371332606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003511.P13899329759371332606

namespace A003511

/-- `comp[A188069(n+1)-1]` -/
def P13899329759371332606.Spec : Prop :=
  ∀ n, (P13899329759371332606.a n : ℤ) = A003511 (n + 1)

end A003511

/-! ## A003511.P2400844960184764343

`A054406(n+1)-(n+1)`
-/

namespace A003511.P2400844960184764343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) - (n + 1 : ℤ)

end

end A003511.P2400844960184764343

namespace A003511

/-- `A054406(n+1)-(n+1)` -/
def P2400844960184764343.Spec : Prop :=
  ∀ n, P2400844960184764343.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P3962135223397521719

`round(sqrt(A194141(n+1)))-1`
-/

namespace A003511.P3962135223397521719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A194141 (n + 1) : ℝ)) - 1

end

end A003511.P3962135223397521719

namespace A003511

/-- `round(sqrt(A194141(n+1)))-1` -/
def P3962135223397521719.Spec : Prop :=
  ∀ n, P3962135223397521719.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P484119735135568217

`Δ[n²]-A074065(n+1)`
-/

namespace A003511.P484119735135568217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A074065 (n + 1)

end

end A003511.P484119735135568217

namespace A003511

/-- `Δ[n²]-A074065(n+1)` -/
def P484119735135568217.Spec : Prop :=
  ∀ n, P484119735135568217.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P16673135307180509410

`comp[A188072(2*n+1)-1]`
-/

namespace A003511.P16673135307180509410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003511.P16673135307180509410

namespace A003511

/-- `comp[A188072(2*n+1)-1]` -/
def P16673135307180509410.Spec : Prop :=
  ∀ n, (P16673135307180509410.a n : ℤ) = A003511 (n + 1)

end A003511

/-! ## A003511.P9668433053916837418

`(A188088(n+1)-(n+1))/3`
-/

namespace A003511.P9668433053916837418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188088 (n + 1) - (n + 1 : ℤ) : ℚ) / 3

end

end A003511.P9668433053916837418

namespace A003511

/-- `(A188088(n+1)-(n+1))/3` -/
def P9668433053916837418.Spec : Prop :=
  ∀ n, P9668433053916837418.a n = (A003511 (n + 1) : ℚ)

end A003511

/-! ## A003511.P16048188638464174546

`A194979(A014245(n+1))+n`
-/

namespace A003511.P16048188638464174546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A014245 (n + 1)).toNat + (n : ℤ)

end

end A003511.P16048188638464174546

namespace A003511

/-- `A194979(A014245(n+1))+n` -/
def P16048188638464174546.Spec : Prop :=
  ∀ n, P16048188638464174546.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P7429634815307788916

`A016789(n)-A182772(n+1)`
-/

namespace A003511.P7429634815307788916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A182772 (n + 1)

end

end A003511.P7429634815307788916

namespace A003511

/-- `A016789(n)-A182772(n+1)` -/
def P7429634815307788916.Spec : Prop :=
  ∀ n, P7429634815307788916.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P8636326077274670654

`A022805(n+1)-A054088(n+1)`
-/

namespace A003511.P8636326077274670654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022805 (n + 1) - A054088 (n + 1)

end

end A003511.P8636326077274670654

namespace A003511

/-- `A022805(n+1)-A054088(n+1)` -/
def P8636326077274670654.Spec : Prop :=
  ∀ n, P8636326077274670654.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P342563795340001686

`A189406(n+1)-A182778(n+1)`
-/

namespace A003511.P342563795340001686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189406 (n + 1) - A182778 (n + 1)

end

end A003511.P342563795340001686

namespace A003511

/-- `A189406(n+1)-A182778(n+1)` -/
def P342563795340001686.Spec : Prop :=
  ∀ n, P342563795340001686.a n = A003511 (n + 1)

end A003511

/-! ## A003511.P9701098834522583171

`∪[A054087(n+1), A054088(n+1)]`
-/

namespace A003511.P9701098834522583171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003511.P9701098834522583171

namespace A003511

/-- `∪[A054087(n+1), A054088(n+1)]` -/
def P9701098834522583171.Spec : Prop :=
  ∀ n, (P9701098834522583171.a n : ℤ) = A003511 (n + 1)

end A003511

/-! ## A003511.P2241025743309976731

`∪[A180123(n+1), A188072(n+1)]`
-/

namespace A003511.P2241025743309976731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003511.P2241025743309976731

namespace A003511

/-- `∪[A180123(n+1), A188072(n+1)]` -/
def P2241025743309976731.Spec : Prop :=
  ∀ n, (P2241025743309976731.a n : ℤ) = A003511 (n + 1)

end A003511

/-! ## A003511.P10863247989267434755

`filter[n+1, A188082(#)]`
-/

namespace A003511.P10863247989267434755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188082 (f1 j) = 1) n)

end

end A003511.P10863247989267434755

namespace A003511

/-- `filter[n+1, A188082(#)]` -/
def P10863247989267434755.Spec : Prop :=
  ∀ n, (P10863247989267434755.a n : ℤ) = A003511 (n + 1)

end A003511

/-!
# A003512: A Beatty sequence: floor(n*(sqrt(3) + 2)).

The programs for A003512, the canonical program `A003512.P2628697329391618931` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003512 has offset 1).

The definition of A003512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(sqrt(3)+2))` (program `A003512.P2628697329391618931`, by `A003512.P2628697329391618931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003512.P2628697329391618931

`floor((n+1)*(sqrt(3)+2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003512

/-- `floor((n+1)*(sqrt(3)+2))` -/
def P2628697329391618931.Spec : Prop :=
  ∀ n, P2628697329391618931.a n = A003512 (n + 1)

theorem P2628697329391618931.correct : P2628697329391618931.Spec := by
  intro n
  simp only [A003512, Nat.add_sub_cancel]

end A003512

/-! ## A003512.P11127869095602000276

`a(n-1)+A182778(n+1)-A182778(n)-1` with `a(0)=3`
-/

namespace A003512.P11127869095602000276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + A182778 (n + 1) - A182778 n - 1

end

end A003512.P11127869095602000276

namespace A003512

/-- `a(n-1)+A182778(n+1)-A182778(n)-1` -/
def P11127869095602000276.Spec : Prop :=
  ∀ n, P11127869095602000276.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P14270999974139024066

`∑[A276865(n+1)]`
-/

namespace A003512.P14270999974139024066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003512.P14270999974139024066

namespace A003512

/-- `∑[A276865(n+1)]` -/
def P14270999974139024066.Spec : Prop :=
  ∀ n, P14270999974139024066.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P2772638690093959127

`∑[A080757(n)+2]`
-/

namespace A003512.P2772638690093959127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003512.P2772638690093959127

namespace A003512

/-- `∑[A080757(n)+2]` -/
def P2772638690093959127.Spec : Prop :=
  ∀ n, P2772638690093959127.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P6424203101048097714

`A180123(n+1)+1`
-/

namespace A003512.P6424203101048097714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) + 1

end

end A003512.P6424203101048097714

namespace A003512

/-- `A180123(n+1)+1` -/
def P6424203101048097714.Spec : Prop :=
  ∀ n, P6424203101048097714.a n = A003512 (n + 1)

theorem P6424203101048097714.correct : P6424203101048097714.Spec := by
  intro n
  simp only [A003512, Nat.add_sub_cancel, A003512.P6424203101048097714.a, A003512.P2628697329391618931.a, A180123, A180123.P1250991661855750215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003512

/-! ## A003512.P15436312357288728099

`∑[4-Δ[A195120(n)]]`
-/

namespace A003512.P15436312357288728099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003512.P15436312357288728099

namespace A003512

/-- `∑[4-Δ[A195120(n)]]` -/
def P15436312357288728099.Spec : Prop :=
  ∀ n, P15436312357288728099.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P6944018309414178861

`∑[A007538(n+1)+1]`
-/

namespace A003512.P6944018309414178861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003512.P6944018309414178861

namespace A003512

/-- `∑[A007538(n+1)+1]` -/
def P6944018309414178861.Spec : Prop :=
  ∀ n, P6944018309414178861.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P14245199049566487767

`∑[A188068(n+1)+3]`
-/

namespace A003512.P14245199049566487767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003512.P14245199049566487767

namespace A003512

/-- `∑[A188068(n+1)+3]` -/
def P14245199049566487767.Spec : Prop :=
  ∀ n, P14245199049566487767.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P17884949728080435826

`A054088(n+1)+1+n`
-/

namespace A003512.P17884949728080435826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1) + 1 + (n : ℤ)

end

end A003512.P17884949728080435826

namespace A003512

/-- `A054088(n+1)+1+n` -/
def P17884949728080435826.Spec : Prop :=
  ∀ n, P17884949728080435826.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P10596063206781480991

`A180122(n+1)+2+n`
-/

namespace A003512.P10596063206781480991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + 2 + (n : ℤ)

end

end A003512.P10596063206781480991

namespace A003512

/-- `A180122(n+1)+2+n` -/
def P10596063206781480991.Spec : Prop :=
  ∀ n, P10596063206781480991.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P2535252217361124767

`A182778(n+1)-(n+1)`
-/

namespace A003512.P2535252217361124767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1) - (n + 1 : ℤ)

end

end A003512.P2535252217361124767

namespace A003512

/-- `A182778(n+1)-(n+1)` -/
def P2535252217361124767.Spec : Prop :=
  ∀ n, P2535252217361124767.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P9224118964890914846

`A198081(n+1)+Δ[n²]`
-/

namespace A003512.P9224118964890914846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A003512.P9224118964890914846

namespace A003512

/-- `A198081(n+1)+Δ[n²]` -/
def P9224118964890914846.Spec : Prop :=
  ∀ n, P9224118964890914846.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P17219522162677422916

`A022838(n+1)+2*(n+1)`
-/

namespace A003512.P17219522162677422916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + (2 * (n + 1) : ℤ)

end

end A003512.P17219522162677422916

namespace A003512

/-- `A022838(n+1)+2*(n+1)` -/
def P17219522162677422916.Spec : Prop :=
  ∀ n, P17219522162677422916.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P4119824597014725327

`A190334(n+1)-2*(n+1)`
-/

namespace A003512.P4119824597014725327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190334 (n + 1) - (2 * (n + 1) : ℤ)

end

end A003512.P4119824597014725327

namespace A003512

/-- `A190334(n+1)-2*(n+1)` -/
def P4119824597014725327.Spec : Prop :=
  ∀ n, P4119824597014725327.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P8585455588757002390

`(A188089(n+1)+n+1)/4`
-/

namespace A003512.P8585455588757002390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188089 (n + 1) + (n + 1 : ℤ) : ℚ) / 4

end

end A003512.P8585455588757002390

namespace A003512

/-- `(A188089(n+1)+n+1)/4` -/
def P8585455588757002390.Spec : Prop :=
  ∀ n, P8585455588757002390.a n = (A003512 (n + 1) : ℚ)

theorem P8585455588757002390.correct : P8585455588757002390.Spec := by
  intro n
  simp only [A003512, Nat.add_sub_cancel, A003512.P8585455588757002390.a, A003512.P2628697329391618931.a, A188089, A188089.P18310189432462336947.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003512

/-! ## A003512.P877351059646727536

`A190055(n+1)+A008621(n)`
-/

namespace A003512.P877351059646727536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190055 (n + 1) + A008621 n

end

end A003512.P877351059646727536

namespace A003512

/-- `A190055(n+1)+A008621(n)` -/
def P877351059646727536.Spec : Prop :=
  ∀ n, P877351059646727536.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P11499418202240827124

`A016897(n)-A182777(n+1)`
-/

namespace A003512.P11499418202240827124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A182777 (n + 1)

end

end A003512.P11499418202240827124

namespace A003512

/-- `A016897(n)-A182777(n+1)` -/
def P11499418202240827124.Spec : Prop :=
  ∀ n, P11499418202240827124.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P2629431698770691811

`∑[A000032(Δ[A195120(n)])+2]`
-/

namespace A003512.P2629431698770691811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003512.P2629431698770691811

namespace A003512

/-- `∑[A000032(Δ[A195120(n)])+2]` -/
def P2629431698770691811.Spec : Prop :=
  ∀ n, P2629431698770691811.a n = A003512 (n + 1)

end A003512

/-! ## A003512.P11989053048793246969

`A188069(n+1)+A007538(n+1)`
-/

namespace A003512.P11989053048793246969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) + A007538 (n + 1)

end

end A003512.P11989053048793246969

namespace A003512

/-- `A188069(n+1)+A007538(n+1)` -/
def P11989053048793246969.Spec : Prop :=
  ∀ n, P11989053048793246969.a n = A003512 (n + 1)

end A003512

/-!
# A003513: Number of regular sequences of length n.

The programs for A003513, there is no canonical definition to state claims against.
-/

/-! ## A003513.P10701045919005957179

`A285762(A002110(n)*A077564(n))`
-/

namespace A003513.P10701045919005957179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285762 (A002110 n * A077564 n).toNat

end

end A003513.P10701045919005957179

/-!
# A003514: Number of series-reduced labeled graphs with n nodes.

The programs for A003514, there is no canonical definition to state claims against.
-/

/-! ## A003514.P10041203443847269830

`A347663(2^n)`
-/

namespace A003514.P10041203443847269830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (2 ^ n)

end

end A003514.P10041203443847269830

/-! ## A003514.P7345264272951900635

`∑[A226919(∑[ceil(n/3)])]`
-/

namespace A003514.P7345264272951900635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226919 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003514.P7345264272951900635

/-!
# A003516: Binomial coefficients C(2n+1, n-2).

The programs for A003516, the canonical program `A003516.P5833190185912987795` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003516 has offset 2).

The definition of A003516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+2)+1, n)` (program `A003516.P5833190185912987795`, by `A003516.P5833190185912987795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003516.P5833190185912987795

`C(2*(n+2)+1, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003516

/-- `C(2*(n+2)+1, n)` -/
def P5833190185912987795.Spec : Prop :=
  ∀ n, (P5833190185912987795.a n : ℤ) = A003516 (n + 2)

theorem P5833190185912987795.correct : P5833190185912987795.Spec := by
  intro n
  simp only [A003516, Nat.add_sub_cancel]

end A003516

/-! ## A003516.P4863951846465819615

`Δ[A371963(n+3)]`
-/

namespace A003516.P4863951846465819615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003516.P4863951846465819615

namespace A003516

/-- `Δ[A371963(n+3)]` -/
def P4863951846465819615.Spec : Prop :=
  ∀ n, P4863951846465819615.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P16548355257844593670

`A037953(2*n+5)`
-/

namespace A003516.P16548355257844593670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (2 * n + 5)

end

end A003516.P16548355257844593670

namespace A003516

/-- `A037953(2*n+5)` -/
def P16548355257844593670.Spec : Prop :=
  ∀ n, P16548355257844593670.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P9238717755942679248

`A037956(2*n+5)`
-/

namespace A003516.P9238717755942679248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (2 * n + 5)

end

end A003516.P9238717755942679248

namespace A003516

/-- `A037956(2*n+5)` -/
def P9238717755942679248.Spec : Prop :=
  ∀ n, P9238717755942679248.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P10469730156207133615

`A002058(n+5)/2`
-/

namespace A003516.P10469730156207133615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002058 (n + 5) : ℚ) / 2

end

end A003516.P10469730156207133615

namespace A003516

/-- `A002058(n+5)/2` -/
def P10469730156207133615.Spec : Prop :=
  ∀ n, P10469730156207133615.a n = (A003516 (n + 2) : ℚ)

theorem P10469730156207133615.correct : P10469730156207133615.Spec := by
  intro n
  simp only [A003516, Nat.add_sub_cancel, A003516.P10469730156207133615.a, A003516.P5833190185912987795.a, A002058, A002058.P5384101461092554470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003516

/-! ## A003516.P12374440628045493993

`record[A037953(A237420(n)+5)]`
-/

namespace A003516.P12374440628045493993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (A237420 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003516.P12374440628045493993

namespace A003516

/-- `record[A037953(A237420(n)+5)]` -/
def P12374440628045493993.Spec : Prop :=
  ∀ n, P12374440628045493993.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P5900517666272106148

`A383456(n)-A120989(n+1)`
-/

namespace A003516.P5900517666272106148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383456 n - A120989 (n + 1)

end

end A003516.P5900517666272106148

namespace A003516

/-- `A383456(n)-A120989(n+1)` -/
def P5900517666272106148.Spec : Prop :=
  ∀ n, P5900517666272106148.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P4381173967409545369

`2*A172062(n)-A172061(n)`
-/

namespace A003516.P4381173967409545369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172062 n - A172061 n

end

end A003516.P4381173967409545369

namespace A003516

/-- `2*A172062(n)-A172061(n)` -/
def P4381173967409545369.Spec : Prop :=
  ∀ n, P4381173967409545369.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P5801381491269670092

`A002054(n+2)-A002057(n+1)`
-/

namespace A003516.P5801381491269670092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 2) - A002057 (n + 1)

end

end A003516.P5801381491269670092

namespace A003516

/-- `A002054(n+2)-A002057(n+1)` -/
def P5801381491269670092.Spec : Prop :=
  ∀ n, P5801381491269670092.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P11120646829921240906

`A006659(n+1)-A000344(n+2)`
-/

namespace A003516.P11120646829921240906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006659 (n + 1) - A000344 (n + 2)

end

end A003516.P11120646829921240906

namespace A003516

/-- `A006659(n+1)-A000344(n+2)` -/
def P11120646829921240906.Spec : Prop :=
  ∀ n, P11120646829921240906.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P17222071557362201561

`A002054(n+2)-A099376(n+2)`
-/

namespace A003516.P17222071557362201561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 2) - A099376 (n + 2)

end

end A003516.P17222071557362201561

namespace A003516

/-- `A002054(n+2)-A099376(n+2)` -/
def P17222071557362201561.Spec : Prop :=
  ∀ n, P17222071557362201561.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P2692959850982271315

`A001700(n+2)-A000245(n+3)`
-/

namespace A003516.P2692959850982271315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 2) - A000245 (n + 3)

end

end A003516.P2692959850982271315

namespace A003516

/-- `A001700(n+2)-A000245(n+3)` -/
def P2692959850982271315.Spec : Prop :=
  ∀ n, P2692959850982271315.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P2322289090344555808

`A002694(n+3)-A002054(n+2)`
-/

namespace A003516.P2322289090344555808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 3) - A002054 (n + 2)

end

end A003516.P2322289090344555808

namespace A003516

/-- `A002694(n+3)-A002054(n+2)` -/
def P2322289090344555808.Spec : Prop :=
  ∀ n, P2322289090344555808.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P15691450298718467117

`A088218(n+3)-A000245(n+3)`
-/

namespace A003516.P15691450298718467117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 3) - A000245 (n + 3)

end

end A003516.P15691450298718467117

namespace A003516

/-- `A088218(n+3)-A000245(n+3)` -/
def P15691450298718467117.Spec : Prop :=
  ∀ n, P15691450298718467117.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P16167639091657385506

`A088218(n+3)-A071724(n+3)`
-/

namespace A003516.P16167639091657385506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 3) - A071724 (n + 3)

end

end A003516.P16167639091657385506

namespace A003516

/-- `A088218(n+3)-A071724(n+3)` -/
def P16167639091657385506.Spec : Prop :=
  ∀ n, P16167639091657385506.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P18381955278493433609

`A344136(n+3)-A344191(n+3)`
-/

namespace A003516.P18381955278493433609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344136 (n + 3) - A344191 (n + 3)

end

end A003516.P18381955278493433609

namespace A003516

/-- `A344136(n+3)-A344191(n+3)` -/
def P18381955278493433609.Spec : Prop :=
  ∀ n, P18381955278493433609.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P10671199221845001535

`A003442(n+5)-A003444(n+4)`
-/

namespace A003516.P10671199221845001535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003442 (n + 5) - A003444 (n + 4)

end

end A003516.P10671199221845001535

namespace A003516

/-- `A003442(n+5)-A003444(n+4)` -/
def P10671199221845001535.Spec : Prop :=
  ∀ n, P10671199221845001535.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P496473178000907249

`A003442(n+5)-A220881(n+5)`
-/

namespace A003516.P496473178000907249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003442 (n + 5) - A220881 (n + 5)

end

end A003516.P496473178000907249

namespace A003516

/-- `A003442(n+5)-A220881(n+5)` -/
def P496473178000907249.Spec : Prop :=
  ∀ n, P496473178000907249.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P15368252164492237008

`A006659(n+1)-∑[A026013(n+1)]`
-/

namespace A003516.P15368252164492237008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006659 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003516.P15368252164492237008

namespace A003516

/-- `A006659(n+1)-∑[A026013(n+1)]` -/
def P15368252164492237008.Spec : Prop :=
  ∀ n, P15368252164492237008.a n = A003516 (n + 2)

end A003516

/-! ## A003516.P5886195711687541529

`(A002694(n+3)-A002057(n+1))/2`
-/

namespace A003516.P5886195711687541529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002694 (n + 3) - A002057 (n + 1) : ℚ) / 2

end

end A003516.P5886195711687541529

namespace A003516

/-- `(A002694(n+3)-A002057(n+1))/2` -/
def P5886195711687541529.Spec : Prop :=
  ∀ n, P5886195711687541529.a n = (A003516 (n + 2) : ℚ)

end A003516

/-!
# A003517: Number of permutations of [n+1] with exactly 1 increasing subsequence of length 3.

The programs for A003517, the canonical program `A003517.P8107805588659007257` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003517 has offset 2).

The definition of A003517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003517.P8107805588659007257

`A000108(n+5)-4*A000108(n+4)+3*A000108(n+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003517

/-- `A000108(n+5)-4*A000108(n+4)+3*A000108(n+3)` -/
def P8107805588659007257.Spec : Prop :=
  ∀ n, P8107805588659007257.a n = A003517 (n + 2)

theorem P8107805588659007257.correct : P8107805588659007257.Spec := by
  intro n
  simp only [A003517, Nat.add_sub_cancel]

end A003517

/-! ## A003517.P7776262192590372222

`6*C(2*(n+2)+1, n)/(n+6)`
-/

namespace A003517.P7776262192590372222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (2 * (n + 2) + 1) n : ℚ) / (n + 6 : ℚ)

end

end A003517.P7776262192590372222

namespace A003517

/-- `6*C(2*(n+2)+1, n)/(n+6)` -/
def P7776262192590372222.Spec : Prop :=
  ∀ n, P7776262192590372222.a n = (A003517 (n + 2) : ℚ)

end A003517

/-! ## A003517.P8327407892776055428

`abs(A115145(n+6))`
-/

namespace A003517.P8327407892776055428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115145 (n + 6)|

end

end A003517.P8327407892776055428

namespace A003517

/-- `abs(A115145(n+6))` -/
def P8327407892776055428.Spec : Prop :=
  ∀ n, P8327407892776055428.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P2494388763194580484

`∑[A026017(n+2)]`
-/

namespace A003517.P2494388763194580484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003517.P2494388763194580484

namespace A003517

/-- `∑[A026017(n+2)]` -/
def P2494388763194580484.Spec : Prop :=
  ∀ n, P2494388763194580484.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P17887309428331170550

`abs(record[-A115145(n)])`
-/

namespace A003517.P17887309428331170550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A115145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A003517.P17887309428331170550

namespace A003517

/-- `abs(record[-A115145(n)])` -/
def P17887309428331170550.Spec : Prop :=
  ∀ n, P17887309428331170550.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P12483254564906338746

`∑[∑[∑[A370478(n)]]]`
-/

namespace A003517.P12483254564906338746
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370478 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003517.P12483254564906338746

namespace A003517

/-- `∑[∑[∑[A370478(n)]]]` -/
def P12483254564906338746.Spec : Prop :=
  ∀ n, P12483254564906338746.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P9587030814564543259

`∑[A002057(n)+A000588(n+2)]`
-/

namespace A003517.P9587030814564543259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003517.P9587030814564543259

namespace A003517

/-- `∑[A002057(n)+A000588(n+2)]` -/
def P9587030814564543259.Spec : Prop :=
  ∀ n, P9587030814564543259.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P4293906001017582571

`A000588(n+2)+A000344(n+2)`
-/

namespace A003517.P4293906001017582571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 2) + A000344 (n + 2)

end

end A003517.P4293906001017582571

namespace A003517

/-- `A000588(n+2)+A000344(n+2)` -/
def P4293906001017582571.Spec : Prop :=
  ∀ n, P4293906001017582571.a n = A003517 (n + 2)

theorem P4293906001017582571.correct : P4293906001017582571.Spec := by
  intro n
  simp only [A003517, Nat.add_sub_cancel, A003517.P4293906001017582571.a, A003517.P8107805588659007257.a, A000108, A000108.P17551949696095299361.a, A000344, A000344.P14231163545056280941.a, A000588, A000588.P2240156739823594693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003517

/-! ## A003517.P10461699079611462218

`A032952(n+1)-A000108(n+2)`
-/

namespace A003517.P10461699079611462218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032952 (n + 1) - A000108 (n + 2)

end

end A003517.P10461699079611462218

namespace A003517

/-- `A032952(n+1)-A000108(n+2)` -/
def P10461699079611462218.Spec : Prop :=
  ∀ n, P10461699079611462218.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P10307505184142597276

`A026013(n+2)-A000245(n+2)`
-/

namespace A003517.P10307505184142597276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 2) - A000245 (n + 2)

end

end A003517.P10307505184142597276

namespace A003517

/-- `A026013(n+2)-A000245(n+2)` -/
def P10307505184142597276.Spec : Prop :=
  ∀ n, P10307505184142597276.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P7027360792317925802

`A026013(n+2)-A071724(n+2)`
-/

namespace A003517.P7027360792317925802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 2) - A071724 (n + 2)

end

end A003517.P7027360792317925802

namespace A003517

/-- `A026013(n+2)-A071724(n+2)` -/
def P7027360792317925802.Spec : Prop :=
  ∀ n, P7027360792317925802.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P16054900840165081677

`A000588(n+2)+∑[A026013(n+1)]`
-/

namespace A003517.P16054900840165081677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003517.P16054900840165081677

namespace A003517

/-- `A000588(n+2)+∑[A026013(n+1)]` -/
def P16054900840165081677.Spec : Prop :=
  ∀ n, P16054900840165081677.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P11800424421253714972

`∑[A026013(n+2)-A026016(n+2)]`
-/

namespace A003517.P11800424421253714972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 2) - A026016 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003517.P11800424421253714972

namespace A003517

/-- `∑[A026013(n+2)-A026016(n+2)]` -/
def P11800424421253714972.Spec : Prop :=
  ∀ n, P11800424421253714972.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P4670678640440569621

`abs(Δ[A120009(n+3)])`
-/

namespace A003517.P4670678640440569621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A003517.P4670678640440569621

namespace A003517

/-- `abs(Δ[A120009(n+3)])` -/
def P4670678640440569621.Spec : Prop :=
  ∀ n, P4670678640440569621.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P5934960217651244575

`A000344(n+3)-A002057(n+1)`
-/

namespace A003517.P5934960217651244575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - A002057 (n + 1)

end

end A003517.P5934960217651244575

namespace A003517

/-- `A000344(n+3)-A002057(n+1)` -/
def P5934960217651244575.Spec : Prop :=
  ∀ n, P5934960217651244575.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P13341035388951703903

`A002057(n+2)-A070031(n+2)`
-/

namespace A003517.P13341035388951703903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 2) - A070031 (n + 2)

end

end A003517.P13341035388951703903

namespace A003517

/-- `A002057(n+2)-A070031(n+2)` -/
def P13341035388951703903.Spec : Prop :=
  ∀ n, P13341035388951703903.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P4706891886558601718

`A071723(n+2)-A002057(n+2)`
-/

namespace A003517.P4706891886558601718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 (n + 2) - A002057 (n + 2)

end

end A003517.P4706891886558601718

namespace A003517

/-- `A071723(n+2)-A002057(n+2)` -/
def P4706891886558601718.Spec : Prop :=
  ∀ n, P4706891886558601718.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P10663619437914417324

`A070859(n+2)-A026012(n+2)`
-/

namespace A003517.P10663619437914417324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070859 (n + 2) - A026012 (n + 2)

end

end A003517.P10663619437914417324

namespace A003517

/-- `A070859(n+2)-A026012(n+2)` -/
def P10663619437914417324.Spec : Prop :=
  ∀ n, P10663619437914417324.a n = A003517 (n + 2)

end A003517

/-! ## A003517.P17017995581235794354

`A000344(n+3)-A099376(n+2)`
-/

namespace A003517.P17017995581235794354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - A099376 (n + 2)

end

end A003517.P17017995581235794354

namespace A003517

/-- `A000344(n+3)-A099376(n+2)` -/
def P17017995581235794354.Spec : Prop :=
  ∀ n, P17017995581235794354.a n = A003517 (n + 2)

theorem P17017995581235794354.correct : P17017995581235794354.Spec := by
  intro n
  simp only [A003517, Nat.add_sub_cancel, A003517.P17017995581235794354.a, A003517.P8107805588659007257.a, A000108, A000108.P17551949696095299361.a, A000344, A000344.P14231163545056280941.a, A099376, A099376.P5902379968883628035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003517

/-! ## A003517.P16166479588617295924

`A026016(n+3)-A000245(n+3)`
-/

namespace A003517.P16166479588617295924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 3) - A000245 (n + 3)

end

end A003517.P16166479588617295924

namespace A003517

/-- `A026016(n+3)-A000245(n+3)` -/
def P16166479588617295924.Spec : Prop :=
  ∀ n, P16166479588617295924.a n = A003517 (n + 2)

end A003517

/-!
# A003518: a(n) = 8*binomial(2*n+1,n-3)/(n+5).

The programs for A003518, the canonical program `A003518.P6079018483949857096` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003518 has offset 3).

The definition of A003518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003518.P6079018483949857096

`8*A030053(n+3)/(n+8)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003518

/-- `8*A030053(n+3)/(n+8)` -/
def P6079018483949857096.Spec : Prop :=
  ∀ n, P6079018483949857096.a n = (A003518 (n + 3) : ℚ)

end A003518

/-! ## A003518.P16041488352295378735

`8*C(2*(n+3)+1, n)/(n+8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003518.P16041488352295378735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * Nat.choose (2 * (n + 3) + 1) n : ℚ) / (n + 8 : ℚ)

end

end A003518.P16041488352295378735

namespace A003518

/-- `8*C(2*(n+3)+1, n)/(n+8)` -/
def P16041488352295378735.Spec : Prop :=
  ∀ n, P16041488352295378735.a n = (A003518 (n + 3) : ℚ)

end A003518

/-! ## A003518.P911682416311619495

`abs(A115147(n+8))`
-/

namespace A003518.P911682416311619495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115147 (n + 8)|

end

end A003518.P911682416311619495

namespace A003518

/-- `abs(A115147(n+8))` -/
def P911682416311619495.Spec : Prop :=
  ∀ n, P911682416311619495.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P15137526521355643545

`∑[A026018(n+3)]`
-/

namespace A003518.P15137526521355643545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026018 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003518.P15137526521355643545

namespace A003518

/-- `∑[A026018(n+3)]` -/
def P15137526521355643545.Spec : Prop :=
  ∀ n, P15137526521355643545.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P3518612387412531117

`A001089(n+3)+A000344(n+2)`
-/

namespace A003518.P3518612387412531117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001089 (n + 3) + A000344 (n + 2)

end

end A003518.P3518612387412531117

namespace A003518

/-- `A001089(n+3)+A000344(n+2)` -/
def P3518612387412531117.Spec : Prop :=
  ∀ n, P3518612387412531117.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P6186010621198156858

`A026014(n+3)-A000344(n+3)`
-/

namespace A003518.P6186010621198156858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 3) - A000344 (n + 3)

end

end A003518.P6186010621198156858

namespace A003518

/-- `A026014(n+3)-A000344(n+3)` -/
def P6186010621198156858.Spec : Prop :=
  ∀ n, P6186010621198156858.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P525106864008864925

`∑[A026014(n+3)-(A026014(n+2)+A026013(n+2))]`
-/

namespace A003518.P525106864008864925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 3) - (A026014 (n + 2) + A026013 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003518.P525106864008864925

namespace A003518

/-- `∑[A026014(n+3)-(A026014(n+2)+A026013(n+2))]` -/
def P525106864008864925.Spec : Prop :=
  ∀ n, P525106864008864925.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P10884648669068868362

`2*A030053(n+3)-A004310(n+4)`
-/

namespace A003518.P10884648669068868362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030053 (n + 3) - A004310 (n + 4)

end

end A003518.P10884648669068868362

namespace A003518

/-- `2*A030053(n+3)-A004310(n+4)` -/
def P10884648669068868362.Spec : Prop :=
  ∀ n, P10884648669068868362.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P13283794822766668922

`A026852(n+4)-A026673(n+3)`
-/

namespace A003518.P13283794822766668922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026852 (n + 4) - A026673 (n + 3)

end

end A003518.P13283794822766668922

namespace A003518

/-- `A026852(n+4)-A026673(n+3)` -/
def P13283794822766668922.Spec : Prop :=
  ∀ n, P13283794822766668922.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P7043066515996030537

`A026852(n+4)-(A026851(n+3)+A026842(n+3))`
-/

namespace A003518.P7043066515996030537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026852 (n + 4) - (A026851 (n + 3) + A026842 (n + 3))

end

end A003518.P7043066515996030537

namespace A003518

/-- `A026852(n+4)-(A026851(n+3)+A026842(n+3))` -/
def P7043066515996030537.Spec : Prop :=
  ∀ n, P7043066515996030537.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P11170740121333846084

`A026842(n+4)-(A026841(n+4)+A026673(n+3))`
-/

namespace A003518.P11170740121333846084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026842 (n + 4) - (A026841 (n + 4) + A026673 (n + 3))

end

end A003518.P11170740121333846084

namespace A003518

/-- `A026842(n+4)-(A026841(n+4)+A026673(n+3))` -/
def P11170740121333846084.Spec : Prop :=
  ∀ n, P11170740121333846084.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P16150648463873430404

`A128899(A000217(n+4)+4)`
-/

namespace A003518.P16150648463873430404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A000217 (n + 4) + 4).toNat

end

end A003518.P16150648463873430404

namespace A003518

/-- `A128899(A000217(n+4)+4)` -/
def P16150648463873430404.Spec : Prop :=
  ∀ n, P16150648463873430404.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P16828993639917659094

`A030237(A055999(n+4))`
-/

namespace A003518.P16828993639917659094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (A055999 (n + 4)).toNat

end

end A003518.P16828993639917659094

namespace A003518

/-- `A030237(A055999(n+4))` -/
def P16828993639917659094.Spec : Prop :=
  ∀ n, P16828993639917659094.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P12873034852901323455

`A257501(∑[n+1]+2)`
-/

namespace A003518.P12873034852901323455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257501 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A003518.P12873034852901323455

namespace A003518

/-- `A257501(∑[n+1]+2)` -/
def P12873034852901323455.Spec : Prop :=
  ∀ n, P12873034852901323455.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P10061188422199695980

`A050156(∑[n+2]+3)`
-/

namespace A003518.P10061188422199695980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050156 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003518.P10061188422199695980

namespace A003518

/-- `A050156(∑[n+2]+3)` -/
def P10061188422199695980.Spec : Prop :=
  ∀ n, P10061188422199695980.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P8086184340572683867

`A107842(A167614(n+1)-1)`
-/

namespace A003518.P8086184340572683867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107842 (A167614 (n + 1) - 1).toNat

end

end A003518.P8086184340572683867

namespace A003518

/-- `A107842(A167614(n+1)-1)` -/
def P8086184340572683867.Spec : Prop :=
  ∀ n, P8086184340572683867.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P12700436012797648844

`A039598(A167614(n+2))`
-/

namespace A003518.P12700436012797648844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A167614 (n + 2)).toNat

end

end A003518.P12700436012797648844

namespace A003518

/-- `A039598(A167614(n+2))` -/
def P12700436012797648844.Spec : Prop :=
  ∀ n, P12700436012797648844.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P17940089972604562066

`A050153(A340266(n+2)+1)`
-/

namespace A003518.P17940089972604562066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050153 (A340266 (n + 2) + 1).toNat

end

end A003518.P17940089972604562066

namespace A003518

/-- `A050153(A340266(n+2)+1)` -/
def P17940089972604562066.Spec : Prop :=
  ∀ n, P17940089972604562066.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P11312560334026476581

`A039598(eq[2, A002260(n+1)-2])`
-/

namespace A003518.P11312560334026476581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003518.P11312560334026476581

namespace A003518

/-- `A039598(eq[2, A002260(n+1)-2])` -/
def P11312560334026476581.Spec : Prop :=
  ∀ n, P11312560334026476581.a n = A003518 (n + 3)

end A003518

/-! ## A003518.P7907931305318538401

`A039598(eq[2, A002260(n+1)/2])`
-/

namespace A003518.P7907931305318538401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A003518.P7907931305318538401

namespace A003518

/-- `A039598(eq[2, A002260(n+1)/2])` -/
def P7907931305318538401.Spec : Prop :=
  ∀ n, P7907931305318538401.a n = A003518 (n + 3)

end A003518

/-!
# A003519: a(n) = 10*binomial(2*n + 1, n - 4)/(n + 6).

The programs for A003519, the canonical program `A003519.P8748030535205218975` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003519 has offset 4).

The definition of A003519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003519.P8748030535205218975

`10*C(2*(n+4)+1, n)/(n+10)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003519

/-- `10*C(2*(n+4)+1, n)/(n+10)` -/
def P8748030535205218975.Spec : Prop :=
  ∀ n, P8748030535205218975.a n = (A003519 (n + 4) : ℚ)

end A003519

/-! ## A003519.P17675522830301751494

`A001392(n+5)-A003518(n+4)`
-/

namespace A003519.P17675522830301751494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001392 (n + 5) - A003518 (n + 4)

end

end A003519.P17675522830301751494

namespace A003519

/-- `A001392(n+5)-A003518(n+4)` -/
def P17675522830301751494.Spec : Prop :=
  ∀ n, P17675522830301751494.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P7020307571110718439

`A128899(A167499(n+4))`
-/

namespace A003519.P7020307571110718439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A167499 (n + 4)).toNat

end

end A003519.P7020307571110718439

namespace A003519

/-- `A128899(A167499(n+4))` -/
def P7020307571110718439.Spec : Prop :=
  ∀ n, P7020307571110718439.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P9978209727116387871

`A128899(A167614(n+4)+2)`
-/

namespace A003519.P9978209727116387871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A167614 (n + 4) + 2).toNat

end

end A003519.P9978209727116387871

namespace A003519

/-- `A128899(A167614(n+4)+2)` -/
def P9978209727116387871.Spec : Prop :=
  ∀ n, P9978209727116387871.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P16544066225967363352

`A030237(A000096(n+7)+n+2)`
-/

namespace A003519.P16544066225967363352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A003519.P16544066225967363352

namespace A003519

/-- `A030237(A000096(n+7)+n+2)` -/
def P16544066225967363352.Spec : Prop :=
  ∀ n, P16544066225967363352.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P8689689308310813989

`A050156(A167614(n+2))`
-/

namespace A003519.P8689689308310813989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050156 (A167614 (n + 2)).toNat

end

end A003519.P8689689308310813989

namespace A003519

/-- `A050156(A167614(n+2))` -/
def P8689689308310813989.Spec : Prop :=
  ∀ n, P8689689308310813989.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P9587237884626742829

`A039598(A167614(n+3)+1)`
-/

namespace A003519.P9587237884626742829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A167614 (n + 3) + 1).toNat

end

end A003519.P9587237884626742829

namespace A003519

/-- `A039598(A167614(n+3)+1)` -/
def P9587237884626742829.Spec : Prop :=
  ∀ n, P9587237884626742829.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P16381186855881388105

`A039598(eq[2, A144328(n+1)-2])`
-/

namespace A003519.P16381186855881388105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003519.P16381186855881388105

namespace A003519

/-- `A039598(eq[2, A144328(n+1)-2])` -/
def P16381186855881388105.Spec : Prop :=
  ∀ n, P16381186855881388105.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P7214030846955845661

`A039598(eq[2, A144328(n+1)/2])`
-/

namespace A003519.P7214030846955845661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A003519.P7214030846955845661

namespace A003519

/-- `A039598(eq[2, A144328(n+1)/2])` -/
def P7214030846955845661.Spec : Prop :=
  ∀ n, P7214030846955845661.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P17541052754009051084

`A039598(Δ[A023551(n+1)-n²])`
-/

namespace A003519.P17541052754009051084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (f1 (n + 1) - f1 n).toNat

end

end A003519.P17541052754009051084

namespace A003519

/-- `A039598(Δ[A023551(n+1)-n²])` -/
def P17541052754009051084.Spec : Prop :=
  ∀ n, P17541052754009051084.a n = A003519 (n + 4)

end A003519

/-! ## A003519.P208550959702498137

`A050166(∑[n+5]+5)`
-/

namespace A003519.P208550959702498137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A003519.P208550959702498137

namespace A003519

/-- `A050166(∑[n+5]+5)` -/
def P208550959702498137.Spec : Prop :=
  ∀ n, P208550959702498137.a n = A003519 (n + 4)

end A003519

/-!
# A003520: a(n) = a(n-1) + a(n-5); a(0) = ... = a(4) = 1.

The programs for A003520, the canonical program `A003520.P12173010453307883111` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003520 has offset 0).

The definition of A003520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-5)` (program `A003520.P12173010453307883111`, by `A003520.P12173010453307883111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003520.P12173010453307883111

`a(n-1)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003520

/-- `a(n-1)+a(n-5)` -/
def P12173010453307883111.Spec : Prop :=
  ∀ n, (P12173010453307883111.a n : ℤ) = A003520 n

theorem P12173010453307883111.correct : P12173010453307883111.Spec := by
  intro n
  simp only [A003520]

end A003520

/-! ## A003520.P12650971025298194926

`ogf(1/(1-x-x^5))`
-/

namespace A003520.P12650971025298194926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, 0, -1] n

end

end A003520.P12650971025298194926

namespace A003520

/-- `ogf(1/(1-x-x^5))` -/
def P12650971025298194926.Spec : Prop :=
  ∀ n, P12650971025298194926.a n = A003520 n

end A003520

/-! ## A003520.P7498500943216822902

`∑[A017899(n)]`
-/

namespace A003520.P7498500943216822902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003520.P7498500943216822902

namespace A003520

/-- `∑[A017899(n)]` -/
def P7498500943216822902.Spec : Prop :=
  ∀ n, P7498500943216822902.a n = A003520 n

end A003520

/-! ## A003520.P1304403454850182908

`A017899(n+5)`
-/

namespace A003520.P1304403454850182908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 5)

end

end A003520.P1304403454850182908

namespace A003520

/-- `A017899(n+5)` -/
def P1304403454850182908.Spec : Prop :=
  ∀ n, P1304403454850182908.a n = A003520 n

end A003520

/-! ## A003520.P3489699586783085430

`∑[A226516(2*n+1)]+1`
-/

namespace A003520.P3489699586783085430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003520.P3489699586783085430

namespace A003520

/-- `∑[A226516(2*n+1)]+1` -/
def P3489699586783085430.Spec : Prop :=
  ∀ n, P3489699586783085430.a n = A003520 n

end A003520

/-! ## A003520.P17900303491474502104

`A228361(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A003520.P17900303491474502104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A228361 n - a (n - 3)

end

end A003520.P17900303491474502104

namespace A003520

/-- `A228361(n)-a(n-3)` -/
def P17900303491474502104.Spec : Prop :=
  ∀ n, P17900303491474502104.a n = A003520 n

end A003520

/-! ## A003520.P6267964767283003836

`A226516(3*(n+3)-(n-2))`
-/

namespace A003520.P6267964767283003836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 ((3 * (n + 3) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A003520.P6267964767283003836

namespace A003520

/-- `A226516(3*(n+3)-(n-2))` -/
def P6267964767283003836.Spec : Prop :=
  ∀ n, P6267964767283003836.a n = A003520 n

end A003520

/-! ## A003520.P16075158001741577336

`A098523(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003520.P16075158001741577336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098523 n - a (n - 2)

end

end A003520.P16075158001741577336

namespace A003520

/-- `A098523(n)-a(n-2)` -/
def P16075158001741577336.Spec : Prop :=
  ∀ n, P16075158001741577336.a n = A003520 n

end A003520

/-! ## A003520.P15995814433137540092

`A098523(n+1)-A182097(n+1)`
-/

namespace A003520.P15995814433137540092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098523 (n + 1) - A182097 (n + 1)

end

end A003520.P15995814433137540092

namespace A003520

/-- `A098523(n+1)-A182097(n+1)` -/
def P15995814433137540092.Spec : Prop :=
  ∀ n, P15995814433137540092.a n = A003520 n

end A003520

/-! ## A003520.P7503677453834131478

`Δ[A099559(n)]`
-/

namespace A003520.P7503677453834131478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003520.P7503677453834131478

namespace A003520

/-- `Δ[A099559(n)]` -/
def P7503677453834131478.Spec : Prop :=
  ∀ n, P7503677453834131478.a n = A003520 n

end A003520

/-! ## A003520.P12753313175626992423

`A005708(n)+Δ[A143284(n)]`
-/

namespace A003520.P12753313175626992423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n + (f1 (n + 1) - f1 n)

end

end A003520.P12753313175626992423

namespace A003520

/-- `A005708(n)+Δ[A143284(n)]` -/
def P12753313175626992423.Spec : Prop :=
  ∀ n, P12753313175626992423.a n = A003520 n

end A003520

/-! ## A003520.P6703757007723140954

`A099559(n+1)-A099559(n)`
-/

namespace A003520.P6703757007723140954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 (n + 1) - A099559 n

end

end A003520.P6703757007723140954

namespace A003520

/-- `A099559(n+1)-A099559(n)` -/
def P6703757007723140954.Spec : Prop :=
  ∀ n, P6703757007723140954.a n = A003520 n

end A003520

/-! ## A003520.P2587865732990382368

`A143284(n+1)+A005708(n)-A143284(n)`
-/

namespace A003520.P2587865732990382368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143284 (n + 1) + (A005708 n - A143284 n)

end

end A003520.P2587865732990382368

namespace A003520

/-- `A143284(n+1)+A005708(n)-A143284(n)` -/
def P2587865732990382368.Spec : Prop :=
  ∀ n, P2587865732990382368.a n = A003520 n

end A003520

/-! ## A003520.P17930219415323965072

`Δ[Δ[Δ[A330910(n+3)]]]`
-/

namespace A003520.P17930219415323965072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330910 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003520.P17930219415323965072

namespace A003520

/-- `Δ[Δ[Δ[A330910(n+3)]]]` -/
def P17930219415323965072.Spec : Prop :=
  ∀ n, P17930219415323965072.a n = A003520 n

end A003520

/-! ## A003520.P424628001618580314

`A003269(n+1)+A143283(n)-A143283(n+1)`
-/

namespace A003520.P424628001618580314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1) + (A143283 n - A143283 (n + 1))

end

end A003520.P424628001618580314

namespace A003520

/-- `A003269(n+1)+A143283(n)-A143283(n+1)` -/
def P424628001618580314.Spec : Prop :=
  ∀ n, P424628001618580314.a n = A003520 n

end A003520

/-! ## A003520.P12048122584179522543

`sqrt(A224811(2*n))`
-/

namespace A003520.P12048122584179522543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224811 (2 * n) : ℝ)

end

end A003520.P12048122584179522543

namespace A003520

/-- `sqrt(A224811(2*n))` -/
def P12048122584179522543.Spec : Prop :=
  ∀ n, P12048122584179522543.a n = (A003520 n : ℝ)

end A003520

/-! ## A003520.P4815480599051940966

`A193517(A028310(∑[n]))`
-/

namespace A003520.P4815480599051940966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A003520.P4815480599051940966

namespace A003520

/-- `A193517(A028310(∑[n]))` -/
def P4815480599051940966.Spec : Prop :=
  ∀ n, P4815480599051940966.a n = A003520 n

end A003520

/-! ## A003520.P7194844844780874680

`A193517(A179865(n+1))`
-/

namespace A003520.P7194844844780874680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A179865 (n + 1)).toNat

end

end A003520.P7194844844780874680

namespace A003520

/-- `A193517(A179865(n+1))` -/
def P7194844844780874680.Spec : Prop :=
  ∀ n, P7194844844780874680.a n = A003520 n

end A003520

/-! ## A003520.P3938219582249610588

`A193517(A212342(n)+1)`
-/

namespace A003520.P3938219582249610588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A212342 n + 1).toNat

end

end A003520.P3938219582249610588

namespace A003520

/-- `A193517(A212342(n)+1)` -/
def P3938219582249610588.Spec : Prop :=
  ∀ n, P3938219582249610588.a n = A003520 n

end A003520

/-! ## A003520.P18001477805967911160

`A193517(A347513(n+3)-n)`
-/

namespace A003520.P18001477805967911160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A347513 (n + 3) - (n : ℤ)).toNat

end

end A003520.P18001477805967911160

namespace A003520

/-- `A193517(A347513(n+3)-n)` -/
def P18001477805967911160.Spec : Prop :=
  ∀ n, P18001477805967911160.a n = A003520 n

end A003520

/-!
# A003521: Values of m in the discriminant D = -4*m leading to a new minimum of the L-function of the Dirichlet series L(1) = Sum_{k>=1} Kronecker(D,k)/k.

The programs for A003521, there is no canonical definition to state claims against.
-/

/-! ## A003521.P9437935229808182714

`∑[A227608(a(n-1)+4)]` with `a(0)=1`
-/

namespace A003521.P9437935229808182714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A227608 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003521.P9437935229808182714

/-!
# A003522: a(n) = Sum_{k=0..n} C(n-k,3k).

The programs for A003522, the canonical program `A003522.P15991022858637231627` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003522 has offset 0).

The definition of A003522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003522.P15991022858637231627

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003522

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` -/
def P15991022858637231627.Spec : Prop :=
  ∀ n, P15991022858637231627.a n = A003522 n

theorem P15991022858637231627.correct : P15991022858637231627.Spec := by
  intro n
  simp only [A003522]

end A003522

/-! ## A003522.P15279799671044700735

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-x^4))`
-/

namespace A003522.P15279799671044700735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -1, -1] n

end

end A003522.P15279799671044700735

namespace A003522

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-x^4))` -/
def P15279799671044700735.Spec : Prop :=
  ∀ n, P15279799671044700735.a n = A003522 n

end A003522

/-! ## A003522.P18050667612804155976

`A017817(3*n)`
-/

namespace A003522.P18050667612804155976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (3 * n)

end

end A003522.P18050667612804155976

namespace A003522

/-- `A017817(3*n)` -/
def P18050667612804155976.Spec : Prop :=
  ∀ n, P18050667612804155976.a n = A003522 n

end A003522

/-! ## A003522.P9458287223855345858

`A127838(3*n+5)`
-/

namespace A003522.P9458287223855345858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (3 * n + 5)

end

end A003522.P9458287223855345858

namespace A003522

/-- `A127838(3*n+5)` -/
def P9458287223855345858.Spec : Prop :=
  ∀ n, P9458287223855345858.a n = A003522 n

end A003522

/-! ## A003522.P14825794793762636322

`∑[A127838(n+1+n+n)]`
-/

namespace A003522.P14825794793762636322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (n + 1 + (n + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003522.P14825794793762636322

namespace A003522

/-- `∑[A127838(n+1+n+n)]` -/
def P14825794793762636322.Spec : Prop :=
  ∀ n, P14825794793762636322.a n = A003522 n

end A003522

/-! ## A003522.P14208059812480509967

`A017817(A008486(n))+A000007(n)`
-/

namespace A003522.P14208059812480509967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (A008486 n).toNat + A000007 n

end

end A003522.P14208059812480509967

namespace A003522

/-- `A017817(A008486(n))+A000007(n)` -/
def P14208059812480509967.Spec : Prop :=
  ∀ n, P14208059812480509967.a n = A003522 n

end A003522

/-! ## A003522.P13798059573330154467

`or(A017817(A008486(n)), A036987(n))`
-/

namespace A003522.P13798059573330154467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017817 (A008486 n).toNat) (A036987 n)

end

end A003522.P13798059573330154467

namespace A003522

/-- `or(A017817(A008486(n)), A036987(n))` -/
def P13798059573330154467.Spec : Prop :=
  ∀ n, P13798059573330154467.a n = A003522 n

end A003522

/-! ## A003522.P15880591690742640705

`Δ[A017817(n+1+n+n)]`
-/

namespace A003522.P15880591690742640705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (n + 1 + (n + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003522.P15880591690742640705

namespace A003522

/-- `Δ[A017817(n+1+n+n)]` -/
def P15880591690742640705.Spec : Prop :=
  ∀ n, P15880591690742640705.a n = A003522 n

end A003522

/-! ## A003522.P15754274774197413559

`A306680(∑[n+3]+n+3)`
-/

namespace A003522.P15754274774197413559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A003522.P15754274774197413559

namespace A003522

/-- `A306680(∑[n+3]+n+3)` -/
def P15754274774197413559.Spec : Prop :=
  ∀ n, P15754274774197413559.a n = A003522 n

end A003522

/-! ## A003522.P9649438531890033303

`A036987(A008486(n)²)+A017817(A008486(n))`
-/

namespace A003522.P9649438531890033303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A008486 n ^ 2).toNat + A017817 (A008486 n).toNat

end

end A003522.P9649438531890033303

namespace A003522

/-- `A036987(A008486(n)²)+A017817(A008486(n))` -/
def P9649438531890033303.Spec : Prop :=
  ∀ n, P9649438531890033303.a n = A003522 n

end A003522

/-!
# A003523: Divisors of 2^10 - 1.

The programs for A003523, there is no canonical definition to state claims against.
-/

/-! ## A003523.P4259181187065400551

`A361438(n+32)`
-/

namespace A003523.P4259181187065400551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 32)

end

end A003523.P4259181187065400551

/-! ## A003523.P13425432859007153580

`record[gcd(n+5, A006527(2*n)-1)]`
-/

namespace A003523.P13425432859007153580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A006527 (2 * n) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003523.P13425432859007153580

/-! ## A003523.P13368428856978316447

`record[gcd(n+2, A141759(8*n+7))]`
-/

namespace A003523.P13368428856978316447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A141759 (8 * n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003523.P13368428856978316447

/-! ## A003523.P11157457603823830715

`A003554(record[A017854(n)])`
-/

namespace A003523.P11157457603823830715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003554 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003523.P11157457603823830715

/-!
# A003524: Divisors of 2^12 - 1.

The programs for A003524, there is no canonical definition to state claims against.
-/

/-! ## A003524.P12247364788456755161

`filter[A081110(n+1), A122255(#)]`
-/

namespace A003524.P12247364788456755161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A003524.P12247364788456755161

/-! ## A003524.P13236362828813125700

`filter[A177855(n+1), A122255(#)]`
-/

namespace A003524.P13236362828813125700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A003524.P13236362828813125700

/-! ## A003524.P3431136462624611601

`eq[1, A017260(n)%A008574(n)]`
-/

namespace A003524.P3431136462624611601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017260 n) (A008574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003524.P3431136462624611601

/-! ## A003524.P9436158329327021076

`∩[A003532(n+1), A003543(n+1)]`
-/

namespace A003524.P9436158329327021076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003524.P9436158329327021076

/-! ## A003524.P11094040110981811384

`∩[A003543(n+1), A003553(n+1)]`
-/

namespace A003524.P11094040110981811384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003524.P11094040110981811384

/-!
# A003525: Divisors of 2^14 - 1.

The programs for A003525, there is no canonical definition to state claims against.
-/

/-! ## A003525.P8738527717360293306

`A361438(A217400(n+2))`
-/

namespace A003525.P8738527717360293306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (A217400 (n + 2)).toNat

end

end A003525.P8738527717360293306

/-! ## A003525.P12024932412595698484

`filter[A003536(n+1), A353815(#)]`
-/

namespace A003525.P12024932412595698484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A003525.P12024932412595698484

/-! ## A003525.P15533755299345278050

`filter[A003536(n+1), A353816(#)]`
-/

namespace A003525.P15533755299345278050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A003525.P15533755299345278050

/-! ## A003525.P14547176190806336156

`∩[A003136(n+1), A003536(n+1)]`
-/

namespace A003525.P14547176190806336156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003525.P14547176190806336156

/-!
# A003526: Divisors of 2^15 - 1.

The programs for A003526, there is no canonical definition to state claims against.
-/

/-! ## A003526.P1304307395500817947

`A003550(A035948(n+1))`
-/

namespace A003526.P1304307395500817947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003550 (A035948 (n + 1)).toNat

end

end A003526.P1304307395500817947

/-! ## A003526.P14809802052146349370

`A003550(A244747(n+1))`
-/

namespace A003526.P14809802052146349370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003550 (A244747 (n + 1)).toNat

end

end A003526.P14809802052146349370

/-! ## A003526.P14072726312575435042

`A003550(A258939(n+1))`
-/

namespace A003526.P14072726312575435042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003550 (A258939 (n + 1)).toNat

end

end A003526.P14072726312575435042

/-! ## A003526.P4284904890725544550

`A003550(A329165(n+1))`
-/

namespace A003526.P4284904890725544550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003550 (A329165 (n + 1)).toNat

end

end A003526.P4284904890725544550

/-!
# A003527: Divisors of 2^16 - 1.

The programs for A003527, there is no canonical definition to state claims against.
-/

/-! ## A003527.P16365566833461396444

`xor(2*a(n-1), a((n+20)%21))` with `a(0)=1`
-/

namespace A003527.P16365566833461396444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (a ((n + 20) % 21))

end

end A003527.P16365566833461396444

/-! ## A003527.P12447262721788312754

`xor(2*a(n-1), a(n-1)%n²²)` with `a(0)=1, a(1)=3`
-/

namespace A003527.P12447262721788312754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (2 * a (n - 1)) (a (n - 1) % (n ^ 2) ^ 2)

end

end A003527.P12447262721788312754

/-! ## A003527.P16318051855256963371

`char[16]+a(n-1)+2*a(and(n, n-1))` with `a(0)=1`
-/

namespace A003527.P16318051855256963371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + (a (n - 1) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A003527.P16318051855256963371

/-! ## A003527.P17176143826733154019

`(a(n-1)+2*a(and(n, n-1)))%C(n+7, 7)` with `a(0)=1`
-/

namespace A003527.P17176143826733154019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) % Nat.choose (n + 7) 7

end

end A003527.P17176143826733154019

/-! ## A003527.P15867949163440764945

`xor(a(n-1)+or(floor(sqrt(sqrt(n))), a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A003527.P15867949163440764945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1) + Int.lor ⌊Real.sqrt (Real.sqrt (n : ℝ))⌋ (a (n - 1))) (a (n - 1))

end

end A003527.P15867949163440764945

/-!
# A003528: Divisors of 2^18 - 1.

The programs for A003528, there is no canonical definition to state claims against.
-/

/-! ## A003528.P16186079427656673030

`∩[A003543(n+1), A333911(n+1)]`
-/

namespace A003528.P16186079427656673030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003528.P16186079427656673030

/-! ## A003528.P8081709272113397871

`record[A000265(n+1)/A060789(A007739(n+1))]`
-/

namespace A003528.P8081709272113397871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A060789 (A007739 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003528.P8081709272113397871

/-! ## A003528.P7198577177210931553

`record[(A038608(n)+1)/A060789(A054709(n+1))]`
-/

namespace A003528.P7198577177210931553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038608 n + 1 : ℚ) / (A060789 (A054709 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003528.P7198577177210931553

/-! ## A003528.P16844428644987917475

`record[gcd(A165478(n), A289440(n+5))]`
-/

namespace A003528.P16844428644987917475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165478 n) (A289440 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003528.P16844428644987917475

/-!
# A003529: Divisors of 2^20 - 1.

The programs for A003529, there is no canonical definition to state claims against.
-/

/-! ## A003529.P12335621167025338081

`∩[A003546(n+1), A081110(n+1)]`
-/

namespace A003529.P12335621167025338081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003529.P12335621167025338081

/-! ## A003529.P18159910517479947169

`∩[A057760(n+1), A081110(n+1)]`
-/

namespace A003529.P18159910517479947169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003529.P18159910517479947169

/-! ## A003529.P14311053493221035172

`∩[A003546(n+1), A204458(n+1)]`
-/

namespace A003529.P14311053493221035172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003529.P14311053493221035172

/-! ## A003529.P14262110533408800075

`∩[A003546(n+1), A160543(n+1)]`
-/

namespace A003529.P14262110533408800075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003529.P14262110533408800075

/-! ## A003529.P933613206877325445

`record[A005408(n)/A106621(A002326(n))]`
-/

namespace A003529.P933613206877325445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A106621 (A002326 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003529.P933613206877325445

/-!
# A003530: Divisors of 2^21 - 1.

The programs for A003530, there is no canonical definition to state claims against.
-/

/-! ## A003530.P16642996615980827283

`∩[A003547(n+1), A004616(n+1)]`
-/

namespace A003530.P16642996615980827283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003530.P16642996615980827283

/-! ## A003530.P13035471782060291614

`∩[A003547(n+1), A036259(n+1)]`
-/

namespace A003530.P13035471782060291614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003530.P13035471782060291614

/-! ## A003530.P17436992486887798972

`∩[A003547(n+1), A058529(n+1)]`
-/

namespace A003530.P17436992486887798972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003530.P17436992486887798972

/-! ## A003530.P18357883283336841052

`∩[A003547(n+1), A253408(n+1)]`
-/

namespace A003530.P18357883283336841052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003530.P18357883283336841052

/-!
# A003531: Divisors of 2^22 - 1.

The programs for A003531, there is no canonical definition to state claims against.
-/

/-! ## A003531.P2048289021445371631

`record[gcd(n+2, (2*n)^11+1)]`
-/

namespace A003531.P2048289021445371631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) ((2 * n) ^ 11 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003531.P2048289021445371631

/-! ## A003531.P5511435783989587110

`∩[A003549(n+1), A336655(n+1)]`
-/

namespace A003531.P5511435783989587110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003531.P5511435783989587110

/-! ## A003531.P5400184280289882439

`∩[A003549(n+1), A045797(n+1)]`
-/

namespace A003531.P5400184280289882439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003531.P5400184280289882439

/-!
# A003532: Divisors of 2^24 - 1.

The programs for A003532, there is no canonical definition to state claims against.
-/

/-! ## A003532.P1630745179762799934

`∩[A003553(n+1), A062505(n+1)]`
-/

namespace A003532.P1630745179762799934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003532.P1630745179762799934

/-! ## A003532.P11492892296226532407

`record[A005408(n)/A051724(A053447(n))]`
-/

namespace A003532.P11492892296226532407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A051724 (A053447 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003532.P11492892296226532407

/-! ## A003532.P3391976055835893162

`record[A004273(n+1)/A051724(A053447(n))]`
-/

namespace A003532.P3391976055835893162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 (n + 1) : ℚ) / (A051724 (A053447 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003532.P3391976055835893162

/-! ## A003532.P8040044196443842955

`record[A005408(n)/A181776(A002326(n))]`
-/

namespace A003532.P8040044196443842955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A181776 (A002326 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003532.P8040044196443842955

/-! ## A003532.P11144185782607243724

`record[A000265(n+1)/A051724(A007735(n+1))]`
-/

namespace A003532.P11144185782607243724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A051724 (A007735 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003532.P11144185782607243724

/-! ## A003532.P14225055474350930218

`record[A000265(n+1)/A051724(A054705(n+1))]`
-/

namespace A003532.P14225055474350930218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A051724 (A054705 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003532.P14225055474350930218

/-!
# A003535: Divisors of 2^27 - 1.

The programs for A003535, there is no canonical definition to state claims against.
-/

/-! ## A003535.P13234502165115517252

`A117981(A005823(n+1))`
-/

namespace A003535.P13234502165115517252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (A005823 (n + 1)).toNat

end

end A003535.P13234502165115517252

/-! ## A003535.P4814840218634539690

`A117981(A055247(n+1))`
-/

namespace A003535.P4814840218634539690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (A055247 (n + 1)).toNat

end

end A003535.P4814840218634539690

/-! ## A003535.P15970600637653618063

`A117981(A191106(n+1))`
-/

namespace A003535.P15970600637653618063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (A191106 (n + 1)).toNat

end

end A003535.P15970600637653618063

/-! ## A003535.P1610549151858285102

`A117981(A233572(n+1))`
-/

namespace A003535.P1610549151858285102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (A233572 (n + 1)).toNat

end

end A003535.P1610549151858285102

/-!
# A003537: Divisors of 2^29 - 1.

The programs for A003537, there is no canonical definition to state claims against.
-/

/-! ## A003537.P17832763698478248747

`A361438(A296904(n+2))`
-/

namespace A003537.P17832763698478248747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (A296904 (n + 2)).toNat

end

end A003537.P17832763698478248747

/-!
# A003538: Divisors of 2^30 - 1.

The programs for A003538, there is no canonical definition to state claims against.
-/

/-! ## A003538.P285725172009959114

`∩[A081110(n+1), A336655(n+1)]`
-/

namespace A003538.P285725172009959114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003538.P285725172009959114

/-! ## A003538.P16327205593395319684

`∩[A004144(n+1), A081110(n+1)]`
-/

namespace A003538.P16327205593395319684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003538.P16327205593395319684

/-! ## A003538.P5568519229575118405

`∩[A004614(n+1), A081110(n+1)]`
-/

namespace A003538.P5568519229575118405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003538.P5568519229575118405

/-! ## A003538.P13413586279222476000

`∩[A081110(n+1), A081754(n+1)]`
-/

namespace A003538.P13413586279222476000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003538.P13413586279222476000

/-! ## A003538.P17119921490511305169

`record[A072438(A081110(n+1))]`
-/

namespace A003538.P17119921490511305169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A081110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003538.P17119921490511305169

/-!
# A003539: a(0) = 587, a(n) = 3*a(n-1) + 16 for n > 0 (the first 11 terms are primes).

The programs for A003539, the canonical program `A003539.P17662965462275445022` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003539 has offset 0).

The definition of A003539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+16` (program `A003539.P17662965462275445022`, by `A003539.P17662965462275445022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003539.P17225321008923943514

`595*3^n-8`
-/

namespace A003539.P17225321008923943514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (595 * 3 ^ n : ℤ) - 8

end

end A003539.P17225321008923943514

namespace A003539

/-- `595*3^n-8` -/
def P17225321008923943514.Spec : Prop :=
  ∀ n, P17225321008923943514.a n = A003539 n

theorem P17225321008923943514.correct : P17225321008923943514.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A003539, Nat.add_sub_cancel, A003539.P17225321008923943514.a, A003539.P17662965462275445022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A003539, Nat.add_sub_cancel, A003539.P17225321008923943514.a, A003539.P17662965462275445022.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A003539

/-! ## A003539.P17662965462275445022

`3*a(n-1)+16` with `a(0)=587`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003539

/-- `3*a(n-1)+16` -/
def P17662965462275445022.Spec : Prop :=
  ∀ n, (P17662965462275445022.a n : ℤ) = A003539 n

theorem P17662965462275445022.correct : P17662965462275445022.Spec := by
  intro n
  simp only [A003539]

end A003539

/-!
# A003540: Divisors of 2^33 - 1.

The programs for A003540, there is no canonical definition to state claims against.
-/

/-! ## A003540.P9939341314290265524

`record[gcd((4*n)²-8, A217893(3*n+1))]`
-/

namespace A003540.P9939341314290265524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((4 * n) ^ 2 : ℤ) - 8) (A217893 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003540.P9939341314290265524

/-! ## A003540.P14362162041322726369

`record[gcd(A061793(n), A165563(n))]`
-/

namespace A003540.P14362162041322726369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061793 n) (A165563 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003540.P14362162041322726369

/-! ## A003540.P479616306348741828

`record[gcd(A000217(n+5), A261893(n))]`
-/

namespace A003540.P479616306348741828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (n + 5)) (A261893 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003540.P479616306348741828

/-!
# A003542: Divisors of 2^35 - 1.

The programs for A003542, there is no canonical definition to state claims against.
-/

/-! ## A003542.P13272943267004435626

`record[gcd(A027480(n+2), A056220(2*n))]`
-/

namespace A003542.P13272943267004435626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027480 (n + 2)) (A056220 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003542.P13272943267004435626

/-!
# A003543: Divisors of 2^36 - 1.

The programs for A003543, there is no canonical definition to state claims against.
-/

/-! ## A003543.P6724988051798034789

`record[gcd(n+1, 1-A186619(gcd(n, n+1)))]`
-/

namespace A003543.P6724988051798034789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - A186619 (Nat.gcd n (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003543.P6724988051798034789

/-! ## A003543.P9177634846465903324

`record[A000265(n+1)/A051724(A007739(n+1))]`
-/

namespace A003543.P9177634846465903324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A051724 (A007739 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003543.P9177634846465903324

/-! ## A003543.P3708276537678363708

`record[A000265(n+1)/A051724(A054709(n+1))]`
-/

namespace A003543.P3708276537678363708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A051724 (A054709 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003543.P3708276537678363708

/-!
# A003545: Divisors of 2^39 - 1.

The programs for A003545, there is no canonical definition to state claims against.
-/

/-! ## A003545.P3194813134143336945

`or(A109482(n), A129389(A026302(n)))`
-/

namespace A003545.P3194813134143336945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109482 n) (A129389 (A026302 n).toNat)

end

end A003545.P3194813134143336945

/-!
# A003546: Divisors of 2^40 - 1.

The programs for A003546, there is no canonical definition to state claims against.
-/

/-! ## A003546.P3658344189622077083

`record[A000265(n+1)/A054711(A054716(n+1))]`
-/

namespace A003546.P3658344189622077083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A054711 (A054716 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003546.P3658344189622077083

/-! ## A003546.P12511936213470843626

`A353395(n+1)-A212619(A027642(n))`
-/

namespace A003546.P12511936213470843626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353395 (n + 1) - A212619 (A027642 n).toNat

end

end A003546.P12511936213470843626

/-! ## A003546.P17075293571549211387

`A353395(n+1)-A171588(A283877(n))`
-/

namespace A003546.P17075293571549211387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353395 (n + 1) - A171588 (A283877 n).toNat

end

end A003546.P17075293571549211387

/-! ## A003546.P13746540369971379012

`A353395(n+1)-A010051(A218208(n+1))`
-/

namespace A003546.P13746540369971379012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353395 (n + 1) - A010051 (A218208 (n + 1)).toNat

end

end A003546.P13746540369971379012

/-! ## A003546.P5153057932122546932

`A353395(n+1)-A196272(A063007(2*n))`
-/

namespace A003546.P5153057932122546932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353395 (n + 1) - A196272 (A063007 (2 * n)).toNat

end

end A003546.P5153057932122546932

/-!
# A003547: Divisors of 2^42 - 1.

The programs for A003547, there is no canonical definition to state claims against.
-/

/-! ## A003547.P2879646708617698354

`record[gcd(A024004(2*n), A258806(n))]`
-/

namespace A003547.P2879646708617698354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024004 (2 * n)) (A258806 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003547.P2879646708617698354

/-! ## A003547.P17123441587681000184

`record[gcd(A056745(n+1), A057359(n))]`
-/

namespace A003547.P17123441587681000184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056745 (n + 1)) (A057359 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003547.P17123441587681000184

/-!
# A003550: Divisors of 2^45 - 1.

The programs for A003550, there is no canonical definition to state claims against.
-/

/-! ## A003550.P3286721540300600086

`record[gcd(A286099(n), A347907(n+1))]`
-/

namespace A003550.P3286721540300600086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286099 n) (A347907 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003550.P3286721540300600086

/-! ## A003550.P9212615046230602315

`A244819(A008000(n)-A105221(n+1))`
-/

namespace A003550.P9212615046230602315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (A008000 n - A105221 (n + 1)).toNat

end

end A003550.P9212615046230602315

/-!
# A003553: Divisors of 2^48 - 1.

The programs for A003553, there is no canonical definition to state claims against.
-/

/-! ## A003553.P9891898523776091954

`record[A005408(n)/A046073(A053447(n))]`
-/

namespace A003553.P9891898523776091954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A046073 (A053447 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003553.P9891898523776091954

/-! ## A003553.P11140633216006533283

`record[A109613(2*n)/A046073(A053447(n))]`
-/

namespace A003553.P11140633216006533283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 (2 * n) : ℚ) / (A046073 (A053447 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003553.P11140633216006533283

/-! ## A003553.P3710133357358735009

`record[A000265(n+1)/A046073(A007735(n+1))]`
-/

namespace A003553.P3710133357358735009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A046073 (A007735 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003553.P3710133357358735009

/-! ## A003553.P8454088393536413511

`record[A026741(n+1)/A046073(A007735(n+1))]`
-/

namespace A003553.P8454088393536413511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) : ℚ) / (A046073 (A007735 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003553.P8454088393536413511

/-! ## A003553.P11393735685536980130

`record[A028234(n+1)/A046073(A007735(n+1))]`
-/

namespace A003553.P11393735685536980130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (n + 1) : ℚ) / (A046073 (A007735 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003553.P11393735685536980130

/-!
# A003554: Divisors of 2^50 - 1.

The programs for A003554, there is no canonical definition to state claims against.
-/

/-! ## A003554.P3187169371046973459

`A003523(A003401(n+1))%A003377(n+1)`
-/

namespace A003554.P3187169371046973459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003523 (A003401 (n + 1)).toNat) (A003377 (n + 1))

end

end A003554.P3187169371046973459

/-! ## A003554.P8966496901681992137

`A003523(A026483(n+1))%A003377(n+1)`
-/

namespace A003554.P8966496901681992137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003523 (A026483 (n + 1)).toNat) (A003377 (n + 1))

end

end A003554.P8966496901681992137

/-!
# A003555: Sum_{i=1..(10^n - 1)/9} i, or ((10^n -1)/9)*((10^n -1)/9 +1)/2 (n-th term is the middle 2(n-1) digits of the (n+9)-th term for n > 1).

The programs for A003555, the canonical program `A003555.P8703552957623351320` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003555 has offset 1).

The definition of A003555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003555.P8703552957623351320

`(10^(n+1)-1)/9*((10^(n+1)-1)/9+1)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003555

/-- `(10^(n+1)-1)/9*((10^(n+1)-1)/9+1)/2` -/
def P8703552957623351320.Spec : Prop :=
  ∀ n, P8703552957623351320.a n = (A003555 (n + 1) : ℚ)

end A003555

/-! ## A003555.P8723066944431856529

`lcm(∑[ceil(10^n/2)], ∑[10^n])`
-/

namespace A003555.P8723066944431856529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A003555.P8723066944431856529

namespace A003555

/-- `lcm(∑[ceil(10^n/2)], ∑[10^n])` -/
def P8723066944431856529.Spec : Prop :=
  ∀ n, (P8723066944431856529.a n : ℤ) = A003555 (n + 1)

end A003555

/-! ## A003555.P14525591743101283302

`A202606(n+1)-1`
-/

namespace A003555.P14525591743101283302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202606 (n + 1) - 1

end

end A003555.P14525591743101283302

namespace A003555

/-- `A202606(n+1)-1` -/
def P14525591743101283302.Spec : Prop :=
  ∀ n, P14525591743101283302.a n = A003555 (n + 1)

end A003555

/-! ## A003555.P17122208302976160731

`A002275(n+1)*A093142(n)`
-/

namespace A003555.P17122208302976160731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A093142 n

end

end A003555.P17122208302976160731

namespace A003555

/-- `A002275(n+1)*A093142(n)` -/
def P17122208302976160731.Spec : Prop :=
  ∀ n, P17122208302976160731.a n = A003555 (n + 1)

end A003555

/-! ## A003555.P12087561460330055001

`A000042(n+1)+A000042(n+1)*A002279(n)`
-/

namespace A003555.P12087561460330055001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A000042 (n + 1) * A002279 n

end

end A003555.P12087561460330055001

namespace A003555

/-- `A000042(n+1)+A000042(n+1)*A002279(n)` -/
def P12087561460330055001.Spec : Prop :=
  ∀ n, P12087561460330055001.a n = A003555 (n + 1)

end A003555

/-! ## A003555.P10779333135499990664

`A002275(n+1)+A002275(n+1)*A002279(n)`
-/

namespace A003555.P10779333135499990664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + A002275 (n + 1) * A002279 n

end

end A003555.P10779333135499990664

namespace A003555

/-- `A002275(n+1)+A002275(n+1)*A002279(n)` -/
def P10779333135499990664.Spec : Prop :=
  ∀ n, P10779333135499990664.a n = A003555 (n + 1)

end A003555

/-! ## A003555.P18300868369906501019

`(A067275(n+1)-A002275(n))*A002275(n+1)`
-/

namespace A003555.P18300868369906501019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067275 (n + 1) - A002275 n) * A002275 (n + 1)

end

end A003555.P18300868369906501019

namespace A003555

/-- `(A067275(n+1)-A002275(n))*A002275(n+1)` -/
def P18300868369906501019.Spec : Prop :=
  ∀ n, P18300868369906501019.a n = A003555 (n + 1)

end A003555

/-! ## A003555.P4832392237723222496

`(A126109(n)-A002275(n+1))*A002275(n+1)`
-/

namespace A003555.P4832392237723222496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126109 n - A002275 (n + 1)) * A002275 (n + 1)

end

end A003555.P4832392237723222496

namespace A003555

/-- `(A126109(n)-A002275(n+1))*A002275(n+1)` -/
def P4832392237723222496.Spec : Prop :=
  ∀ n, P4832392237723222496.a n = A003555 (n + 1)

end A003555

/-! ## A003555.P11345719967814253965

`A002275(n+1)*A178769(n)-A002275(n+1)`
-/

namespace A003555.P11345719967814253965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A178769 n - A002275 (n + 1)

end

end A003555.P11345719967814253965

namespace A003555

/-- `A002275(n+1)*A178769(n)-A002275(n+1)` -/
def P11345719967814253965.Spec : Prop :=
  ∀ n, P11345719967814253965.a n = A003555 (n + 1)

end A003555

/-! ## A003555.P11475368820500941890

`C(∑[10^n]+1, 2)`
-/

namespace A003555.P11475368820500941890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A003555.P11475368820500941890

namespace A003555

/-- `C(∑[10^n]+1, 2)` -/
def P11475368820500941890.Spec : Prop :=
  ∀ n, (P11475368820500941890.a n : ℤ) = A003555 (n + 1)

end A003555

/-!
# A003557: n divided by largest squarefree divisor of n; if n = Product p(k)^e(k) then a(n) = Product p(k)^(e(k)-1), with a(1) = 1.

The programs for A003557, the canonical program `A003557.P6364735403900941810` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003557 has offset 1).

The definition of A003557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003557.P6364735403900941810

`(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003557

/-- `(n+1)/A007947(n+1)` -/
def P6364735403900941810.Spec : Prop :=
  ∀ n, P6364735403900941810.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P2449207672527434479

`A001615(n+1)/A048250(n+1)`
-/

namespace A003557.P2449207672527434479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A003557.P2449207672527434479

namespace A003557

/-- `A001615(n+1)/A048250(n+1)` -/
def P2449207672527434479.Spec : Prop :=
  ∀ n, P2449207672527434479.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P10734368654931726927

`A057521(n+1)/A071773(n+1)`
-/

namespace A003557.P10734368654931726927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A003557.P10734368654931726927

namespace A003557

/-- `A057521(n+1)/A071773(n+1)` -/
def P10734368654931726927.Spec : Prop :=
  ∀ n, P10734368654931726927.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P15334837291023589226

`(n+1)/∏{p}[n+1, #]`
-/

namespace A003557.P15334837291023589226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A003557.P15334837291023589226

namespace A003557

/-- `(n+1)/∏{p}[n+1, #]` -/
def P15334837291023589226.Spec : Prop :=
  ∀ n, P15334837291023589226.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P9020959156101470163

`(n+1)*∏{p}[n+1, #^-1]`
-/

namespace A003557.P9020959156101470163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (-1 : ℤ))

end

end A003557.P9020959156101470163

namespace A003557

/-- `(n+1)*∏{p}[n+1, #^-1]` -/
def P9020959156101470163.Spec : Prop :=
  ∀ n, P9020959156101470163.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P7965121983740967023

`(n+1)/2^∑{p}[n+1, log2(#)]`
-/

namespace A003557.P7965121983740967023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ))

end

end A003557.P7965121983740967023

namespace A003557

/-- `(n+1)/2^∑{p}[n+1, log2(#)]` -/
def P7965121983740967023.Spec : Prop :=
  ∀ n, P7965121983740967023.a n = (A003557 (n + 1) : ℝ)

end A003557

/-! ## A003557.P7857438499015615203

`gcd(n+1, ∑{p}[n+1, (n+1)/#])`
-/

namespace A003557.P7857438499015615203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))

end

end A003557.P7857438499015615203

namespace A003557

/-- `gcd(n+1, ∑{p}[n+1, (n+1)/#])` -/
def P7857438499015615203.Spec : Prop :=
  ∀ n, (P7857438499015615203.a n : ℤ) = A003557 (n + 1)

end A003557

/-! ## A003557.P12456766215541416134

`A336551(n+1)+1`
-/

namespace A003557.P12456766215541416134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + 1

end

end A003557.P12456766215541416134

namespace A003557

/-- `A336551(n+1)+1` -/
def P12456766215541416134.Spec : Prop :=
  ∀ n, P12456766215541416134.a n = A003557 (n + 1)

end A003557

/-! ## A003557.P9968360507799994222

`∑{d}[n+1, A300717(#)]`
-/

namespace A003557.P9968360507799994222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300717 d

end

end A003557.P9968360507799994222

namespace A003557

/-- `∑{d}[n+1, A300717(#)]` -/
def P9968360507799994222.Spec : Prop :=
  ∀ n, P9968360507799994222.a n = A003557 (n + 1)

end A003557

/-! ## A003557.P10214550462378344885

`lcm(2, A357689(n+1))/2`
-/

namespace A003557.P10214550462378344885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A357689 (n + 1)) : ℚ) / 2

end

end A003557.P10214550462378344885

namespace A003557

/-- `lcm(2, A357689(n+1))/2` -/
def P10214550462378344885.Spec : Prop :=
  ∀ n, P10214550462378344885.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P990292850309559702

`1-A010848(n+1)+n`
-/

namespace A003557.P990292850309559702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010848 (n + 1) + (n : ℤ)

end

end A003557.P990292850309559702

namespace A003557

/-- `1-A010848(n+1)+n` -/
def P990292850309559702.Spec : Prop :=
  ∀ n, P990292850309559702.a n = A003557 (n + 1)

end A003557

/-! ## A003557.P11176520128766357582

`A102631(n+1)/(n+1)`
-/

namespace A003557.P11176520128766357582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003557.P11176520128766357582

namespace A003557

/-- `A102631(n+1)/(n+1)` -/
def P11176520128766357582.Spec : Prop :=
  ∀ n, P11176520128766357582.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P18211529188161185838

`gcd(n+1, A065967(n+1))`
-/

namespace A003557.P18211529188161185838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A065967 (n + 1))

end

end A003557.P18211529188161185838

namespace A003557

/-- `gcd(n+1, A065967(n+1))` -/
def P18211529188161185838.Spec : Prop :=
  ∀ n, (P18211529188161185838.a n : ℤ) = A003557 (n + 1)

end A003557

/-! ## A003557.P3309800449151465765

`abs((n+1)/A062953(n+1))`
-/

namespace A003557.P3309800449151465765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℚ) / (A062953 (n + 1) : ℚ)|

end

end A003557.P3309800449151465765

namespace A003557

/-- `abs((n+1)/A062953(n+1))` -/
def P3309800449151465765.Spec : Prop :=
  ∀ n, P3309800449151465765.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P17794645888403441944

`(n+1)²/A064549(n+1)`
-/

namespace A003557.P17794645888403441944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ)

end

end A003557.P17794645888403441944

namespace A003557

/-- `(n+1)²/A064549(n+1)` -/
def P17794645888403441944.Spec : Prop :=
  ∀ n, P17794645888403441944.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P1779550808550834109

`(n+1)/sqrt(A078615(n+1))`
-/

namespace A003557.P1779550808550834109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A078615 (n + 1) : ℝ)

end

end A003557.P1779550808550834109

namespace A003557

/-- `(n+1)/sqrt(A078615(n+1))` -/
def P1779550808550834109.Spec : Prop :=
  ∀ n, P1779550808550834109.a n = (A003557 (n + 1) : ℝ)

end A003557

/-! ## A003557.P6568017487821989189

`gcd((n+1)², A069359(n+1))`
-/

namespace A003557.P6568017487821989189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A069359 (n + 1))

end

end A003557.P6568017487821989189

namespace A003557

/-- `gcd((n+1)², A069359(n+1))` -/
def P6568017487821989189.Spec : Prop :=
  ∀ n, (P6568017487821989189.a n : ℤ) = A003557 (n + 1)

end A003557

/-! ## A003557.P6676587018732188673

`(n+1)/(A075423(n+1)+1)`
-/

namespace A003557.P6676587018732188673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075423 (n + 1) + 1 : ℚ)

end

end A003557.P6676587018732188673

namespace A003557

/-- `(n+1)/(A075423(n+1)+1)` -/
def P6676587018732188673.Spec : Prop :=
  ∀ n, P6676587018732188673.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P11723442799180841485

`(n+1)/(A076618(n+1)-1)`
-/

namespace A003557.P11723442799180841485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076618 (n + 1) - 1 : ℚ)

end

end A003557.P11723442799180841485

namespace A003557

/-- `(n+1)/(A076618(n+1)-1)` -/
def P11723442799180841485.Spec : Prop :=
  ∀ n, P11723442799180841485.a n = (A003557 (n + 1) : ℚ)

end A003557

/-! ## A003557.P18310594339204307055

`(n+1)/(n+1-A066503(n+1))`
-/

namespace A003557.P18310594339204307055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A066503 (n + 1) : ℚ)

end

end A003557.P18310594339204307055

namespace A003557

/-- `(n+1)/(n+1-A066503(n+1))` -/
def P18310594339204307055.Spec : Prop :=
  ∀ n, P18310594339204307055.a n = (A003557 (n + 1) : ℚ)

end A003557

/-!
# A003558: Least number m > 0 such that 2^m == +-1 (mod 2n + 1).

The programs for A003558, there is no canonical definition to state claims against.
-/

/-! ## A003558.P15659768034987213304

`A137605(1-char[1]+n)+1`
-/

namespace A003558.P15659768034987213304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137605 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat + 1

end

end A003558.P15659768034987213304

/-! ## A003558.P13249836962291076354

`A060576(n)*A137605(n+1)+1`
-/

namespace A003558.P13249836962291076354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A137605 (n + 1) + 1

end

end A003558.P13249836962291076354

/-! ## A003558.P7820296889133332502

`A028310(A137605(n+1)+A060576(n))`
-/

namespace A003558.P7820296889133332502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A137605 (n + 1) + A060576 n).toNat

end

end A003558.P7820296889133332502

/-! ## A003558.P14850009315446855919

`A309786(Δ[n²])`
-/

namespace A003558.P14850009315446855919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003558.P14850009315446855919

/-! ## A003558.P16780950292371363024

`A309786(2*n+1)%(n+2)`
-/

namespace A003558.P16780950292371363024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309786 (2 * n + 1)) (n + 2 : ℤ)

end

end A003558.P16780950292371363024

/-! ## A003558.P14527454996976452427

`A137605(n+1)%A094103(n+1)+1`
-/

namespace A003558.P14527454996976452427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137605 (n + 1)) (A094103 (n + 1)) + 1

end

end A003558.P14527454996976452427

/-! ## A003558.P1344777570461151182

`A137605(n+1)%A327739(n)+1`
-/

namespace A003558.P1344777570461151182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137605 (n + 1)) (A327739 n) + 1

end

end A003558.P1344777570461151182

/-! ## A003558.P4306537974540673368

`gcd(A002326(n), A216440(n+1))`
-/

namespace A003558.P4306537974540673368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002326 n) (A216440 (n + 1))

end

end A003558.P4306537974540673368

/-! ## A003558.P16118521349417864417

`A028310(A002326(n)-A216440(n+1))`
-/

namespace A003558.P16118521349417864417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002326 n - A216440 (n + 1)).toNat

end

end A003558.P16118521349417864417

/-!
# A003559: Least number m such that 3^m == +- 1 (mod 3n + 1).

The programs for A003559, there is no canonical definition to state claims against.
-/

/-! ## A003559.P7440504363716628225

`A103489(3*n+4)`
-/

namespace A003559.P7440504363716628225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103489 (3 * n + 4)

end

end A003559.P7440504363716628225

/-!
# A003560: Least number m such that 4^m == +- 1 (mod 4n + 1).

The programs for A003560, there is no canonical definition to state claims against.
-/

/-! ## A003560.P4226831928490465992

`lcm(2, A019567(n))/2`
-/

namespace A003560.P4226831928490465992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A019567 n) : ℚ) / 2

end

end A003560.P4226831928490465992

/-! ## A003560.P5732841307041533187

`A026741(A019567(n))`
-/

namespace A003560.P5732841307041533187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A019567 n).toNat

end

end A003560.P5732841307041533187

/-! ## A003560.P710169782256141036

`A003569(A004277(n))`
-/

namespace A003560.P710169782256141036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A004277 n).toNat

end

end A003560.P710169782256141036

/-! ## A003560.P14574304555511102968

`A003569(A004275(n+1))`
-/

namespace A003560.P14574304555511102968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A004275 (n + 1)).toNat

end

end A003560.P14574304555511102968

/-! ## A003560.P7628389343964847444

`A003569(A316571(n+1))`
-/

namespace A003560.P7628389343964847444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A316571 (n + 1)).toNat

end

end A003560.P7628389343964847444

/-! ## A003560.P2099242327181756847

`A003569(A300576(n+2))`
-/

namespace A003560.P2099242327181756847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A300576 (n + 2)).toNat

end

end A003560.P2099242327181756847

/-! ## A003560.P5810985065702721356

`A026741(A003558(2*n))`
-/

namespace A003560.P5810985065702721356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003558 (2 * n)).toNat

end

end A003560.P5810985065702721356

/-! ## A003560.P18080860937091315497

`A003569(A114112(2*(n+1))-1)`
-/

namespace A003560.P18080860937091315497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A114112 (2 * (n + 1)) - 1).toNat

end

end A003560.P18080860937091315497

/-! ## A003560.P7094608760046885332

`A145787(2*n+1)/gcd(2, A145787(2*n+1))`
-/

namespace A003560.P7094608760046885332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145787 (2 * n + 1) : ℚ) / (Int.gcd 2 (A145787 (2 * n + 1)) : ℚ)

end

end A003560.P7094608760046885332

/-! ## A003560.P7802088980155404813

`gcd(A000096(A145787(2*n+1)), A145787(2*n+1))`
-/

namespace A003560.P7802088980155404813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 (A145787 (2 * n + 1)).toNat) (A145787 (2 * n + 1))

end

end A003560.P7802088980155404813

/-! ## A003560.P1213777601268015337

`A123108(lcm(2, A019567(n)))`
-/

namespace A003560.P1213777601268015337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lcm 2 (A019567 n))

end

end A003560.P1213777601268015337

/-! ## A003560.P10348373238195197243

`A003569(A233583(2*n+1))`
-/

namespace A003560.P10348373238195197243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A233583 (2 * n + 1)).toNat

end

end A003560.P10348373238195197243

/-!
# A003562: Least number m such that 6^m == +- 1 (mod 6n + 1).

The programs for A003562, there is no canonical definition to state claims against.
-/

/-! ## A003562.P16596812397527359245

`A103492(3*(n+1))`
-/

namespace A003562.P16596812397527359245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103492 (3 * (n + 1))

end

end A003562.P16596812397527359245

/-!
# A003563: Least number m such that 7^m == +- 1 (mod 7n + 1).

The programs for A003563, there is no canonical definition to state claims against.
-/

/-! ## A003563.P6300447008190202810

`A103493(7*n+8)`
-/

namespace A003563.P6300447008190202810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103493 (7 * n + 8)

end

end A003563.P6300447008190202810

/-!
# A003564: Least number m such that 8^m == +- 1 (mod 8n + 1).

The programs for A003564, there is no canonical definition to state claims against.
-/

/-! ## A003564.P8861889494764747254

`gcd(A000292(A145787(4*(n+1))), A145787(4*(n+1)))`
-/

namespace A003564.P8861889494764747254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 (A145787 (4 * (n + 1))).toNat) (A145787 (4 * (n + 1)))

end

end A003564.P8861889494764747254

/-! ## A003564.P17537905244891620235

`A003570(4*(n+1))`
-/

namespace A003564.P17537905244891620235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003570 (4 * (n + 1))

end

end A003564.P17537905244891620235

/-! ## A003564.P14453362623457132974

`lcm(3, A003558(4*(n+1)))/3`
-/

namespace A003564.P14453362623457132974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A003558 (4 * (n + 1))) : ℚ) / 3

end

end A003564.P14453362623457132974

/-!
# A003566: Least number m such that 10^m == +- 1 mod (10n + 1).

The programs for A003566, there is no canonical definition to state claims against.
-/

/-! ## A003566.P6016480382339288199

`A103496(5*(n+1))`
-/

namespace A003566.P6016480382339288199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103496 (5 * (n + 1))

end

end A003566.P6016480382339288199

/-!
# A003568: Least number m such that 12^m == +- 1 (mod 12n + 1).

The programs for A003568, there is no canonical definition to state claims against.
-/

/-! ## A003568.P10598089787312190377

`A103498(6*(n+1))`
-/

namespace A003568.P10598089787312190377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103498 (6 * (n + 1))

end

end A003568.P10598089787312190377

/-!
# A003569: For n>0, a(n) = least positive number m such that 4^m == +1 or -1 (mod 2n + 1), with a(0) = 0 by convention.

The programs for A003569, there is no canonical definition to state claims against.
-/

/-! ## A003569.P4974681844338179694

`A026741(A003558(n)%(n+1))`
-/

namespace A003569.P4974681844338179694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A003558 n) (n + 1 : ℤ)).toNat

end

end A003569.P4974681844338179694

/-! ## A003569.P16560042905941577909

`A026741(A003558(n)-A000007(n))`
-/

namespace A003569.P16560042905941577909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003558 n - A000007 n).toNat

end

end A003569.P16560042905941577909

/-! ## A003569.P5927005982886669957

`A026741(A003558(n))%A035016(n)`
-/

namespace A003569.P5927005982886669957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A003558 n).toNat) (A035016 n)

end

end A003569.P5927005982886669957

/-! ## A003569.P10190322219812770378

`A026741(xor(A000007(n), A003558(n)))`
-/

namespace A003569.P10190322219812770378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.xor (A000007 n) (A003558 n)).toNat

end

end A003569.P10190322219812770378

/-! ## A003569.P8692634989412396109

`A025480(lcm(2, A000007(n)-A003558(n)))`
-/

namespace A003569.P8692634989412396109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm 2 (A000007 n - A003558 n))

end

end A003569.P8692634989412396109

/-! ## A003569.P5152563030157583357

`A026741(and(A000225(n), A003558(n)))`
-/

namespace A003569.P5152563030157583357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (A000225 n) (A003558 n)).toNat

end

end A003569.P5152563030157583357

/-!
# A003570: For n>0, a(n) = least positive number m such that 8^m == +1 or -1 (mod 2n + 1), with a(0) = 0 by convention.

The programs for A003570, there is no canonical definition to state claims against.
-/

/-! ## A003570.P2999757621047502266

`A051176(A003558(n)%(n+1))`
-/

namespace A003570.P2999757621047502266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.tmod (A003558 n) (n + 1 : ℤ)).toNat

end

end A003570.P2999757621047502266

/-! ## A003570.P471200902731288180

`A051176(A003558(n)-A000007(n))`
-/

namespace A003570.P471200902731288180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A003558 n - A000007 n).toNat

end

end A003570.P471200902731288180

/-! ## A003570.P6901947838584404438

`A051176(A003558(n)*A057427(n))`
-/

namespace A003570.P6901947838584404438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A003558 n * A057427 n).toNat

end

end A003570.P6901947838584404438

/-! ## A003570.P12009850960405180435

`A051176(and(A003558(n), A003817(n)))`
-/

namespace A003570.P12009850960405180435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.land (A003558 n) (A003817 n)).toNat

end

end A003570.P12009850960405180435

/-! ## A003570.P11646544422016229485

`A051176(xor(A000007(n), A003558(n)))`
-/

namespace A003570.P11646544422016229485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.xor (A000007 n) (A003558 n)).toNat

end

end A003570.P11646544422016229485

/-! ## A003570.P12284510169405321318

`A051176(A003558(n)+A057427(n)-1)`
-/

namespace A003570.P12284510169405321318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A003558 n + (A057427 n - 1)).toNat

end

end A003570.P12284510169405321318

/-! ## A003570.P7034675982593335011

`A051176(A003558(n)-(1-A057427(n)))`
-/

namespace A003570.P7034675982593335011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A003558 n - (1 - A057427 n)).toNat

end

end A003570.P7034675982593335011

/-! ## A003570.P5605590214676654215

`A051176(A003558(n))%A000098(n)`
-/

namespace A003570.P5605590214676654215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051176 (A003558 n).toNat) (A000098 n)

end

end A003570.P5605590214676654215

/-!
# A003571: Order of 3 mod 3n+1.

The programs for A003571, there is no canonical definition to state claims against.
-/

/-! ## A003571.P12726080869490663196

`A050975(A004277(n))`
-/

namespace A003571.P12726080869490663196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A004277 n).toNat

end

end A003571.P12726080869490663196

/-! ## A003571.P6632313425359053895

`A050975(A004275(n+1))`
-/

namespace A003571.P6632313425359053895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A004275 (n + 1)).toNat

end

end A003571.P6632313425359053895

/-! ## A003571.P14217951348013881435

`A050975(A004273(n)+1)`
-/

namespace A003571.P14217951348013881435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A004273 n + 1).toNat

end

end A003571.P14217951348013881435

/-! ## A003571.P16991632018003219190

`A050975(A028310(2*n))`
-/

namespace A003571.P16991632018003219190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A028310 (2 * n)).toNat

end

end A003571.P16991632018003219190

/-! ## A003571.P9068039426641462683

`A050975(A028310(n)+n)`
-/

namespace A003571.P9068039426641462683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A028310 n + (n : ℤ)).toNat

end

end A003571.P9068039426641462683

/-! ## A003571.P7999407216246545648

`A053446(Δ[n²])`
-/

namespace A003571.P7999407216246545648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003571.P7999407216246545648

/-! ## A003571.P7954861654147654227

`A053446(2*n+1)%A001157(A000010(n+1)+1)`
-/

namespace A003571.P7954861654147654227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053446 (2 * n + 1)) (A001157 (A000010 (n + 1) + 1).toNat)

end

end A003571.P7954861654147654227

/-! ## A003571.P10903443049898885386

`A007734(3*n+1)`
-/

namespace A003571.P10903443049898885386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (3 * n + 1)

end

end A003571.P10903443049898885386

/-! ## A003571.P17931892960386807954

`A054704(3*n+1)`
-/

namespace A003571.P17931892960386807954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (3 * n + 1)

end

end A003571.P17931892960386807954

/-! ## A003571.P1525850315980900939

`A070676(lt[A070676(n+1), 1]+2)`
-/

namespace A003571.P1525850315980900939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A003571.P1525850315980900939

/-! ## A003571.P750969470694105840

`A070676(2*n+1+A028310(n))`
-/

namespace A003571.P750969470694105840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 ((2 * n + 1 : ℤ) + A028310 n).toNat

end

end A003571.P750969470694105840

/-!
# A003572: Order of 3 mod 3n+2.

The programs for A003572, there is no canonical definition to state claims against.
-/

/-! ## A003572.P4471328600016921950

`A050975(Δ[n²])`
-/

namespace A003572.P4471328600016921950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003572.P4471328600016921950

/-! ## A003572.P1571093829853885985

`A053446(2*(n+1))`
-/

namespace A003572.P1571093829853885985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053446 (2 * (n + 1))

end

end A003572.P1571093829853885985

/-! ## A003572.P2922758283891425594

`A050975(2*n+1)%A016825(n)`
-/

namespace A003572.P2922758283891425594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050975 (2 * n + 1)) (A016825 n)

end

end A003572.P2922758283891425594

/-! ## A003572.P12537663393489348202

`A053446(A005843(n+1))%∑[n+2]`
-/

namespace A003572.P12537663393489348202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053446 (A005843 (n + 1)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003572.P12537663393489348202

/-! ## A003572.P12440181785158810243

`A040001(2*n+1)*A050975(2*n+1)`
-/

namespace A003572.P12440181785158810243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A050975 (2 * n + 1)

end

end A003572.P12440181785158810243

/-! ## A003572.P1065642841672720716

`∑{d}[A053446(A103517(n)), A000010(#)]`
-/

namespace A003572.P1065642841672720716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053446 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A003572.P1065642841672720716

/-! ## A003572.P1345801132129010060

`A053446(Δ[A014206(n)])%A167499(n)`
-/

namespace A003572.P1345801132129010060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053446 (f1 (n + 1) - f1 n).toNat) (A167499 n)

end

end A003572.P1345801132129010060

/-! ## A003572.P15108528105224338922

`gcd(A000010(n+2)*A050975(2*n+1), A050975(2*n+1))`
-/

namespace A003572.P15108528105224338922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 2) * A050975 (2 * n + 1)) (A050975 (2 * n + 1))

end

end A003572.P15108528105224338922

/-! ## A003572.P7215162261159724239

`A007734(3*n+2)`
-/

namespace A003572.P7215162261159724239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (3 * n + 2)

end

end A003572.P7215162261159724239

/-! ## A003572.P7630857597570018442

`A054704(3*n+2)`
-/

namespace A003572.P7630857597570018442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (3 * n + 2)

end

end A003572.P7630857597570018442

/-! ## A003572.P3183469942625142503

`A070676(3*n+2)`
-/

namespace A003572.P3183469942625142503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (3 * n + 2)

end

end A003572.P3183469942625142503

/-! ## A003572.P18132394198856726028

`gcd(A000010(A050975(2*n+1)²), A050975(2*n+1))`
-/

namespace A003572.P18132394198856726028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A050975 (2 * n + 1) ^ 2).toNat) (A050975 (2 * n + 1))

end

end A003572.P18132394198856726028

/-!
# A003573: Order of 4 mod 4n+1.

The programs for A003573, there is no canonical definition to state claims against.
-/

/-! ## A003573.P7607433149748569177

`A053447(2*n)`
-/

namespace A003573.P7607433149748569177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (2 * n)

end

end A003573.P7607433149748569177

/-! ## A003573.P137626776160838487

`lcm(2, A002326(2*n))/2`
-/

namespace A003573.P137626776160838487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002326 (2 * n)) : ℚ) / 2

end

end A003573.P137626776160838487

/-! ## A003573.P3103895914237667475

`A050976(A004277(n))`
-/

namespace A003573.P3103895914237667475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A004277 n).toNat

end

end A003573.P3103895914237667475

/-! ## A003573.P614645600796812470

`A050976(A004275(n+1))`
-/

namespace A003573.P614645600796812470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A004275 (n + 1)).toNat

end

end A003573.P614645600796812470

/-! ## A003573.P16811923034374610181

`A050976(A004273(n)+1)`
-/

namespace A003573.P16811923034374610181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A004273 n + 1).toNat

end

end A003573.P16811923034374610181

/-! ## A003573.P7476312768692935715

`A050976(A316571(n+1))`
-/

namespace A003573.P7476312768692935715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A316571 (n + 1)).toNat

end

end A003573.P7476312768692935715

/-! ## A003573.P9995251560460764774

`A050976(A028310(2*n))`
-/

namespace A003573.P9995251560460764774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A028310 (2 * n)).toNat

end

end A003573.P9995251560460764774

/-! ## A003573.P2936051874323661732

`A050976(A028310(n)+n)`
-/

namespace A003573.P2936051874323661732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A028310 n + (n : ℤ)).toNat

end

end A003573.P2936051874323661732

/-! ## A003573.P5104886672784492920

`A055388(Δ[n²])/2`
-/

namespace A003573.P5104886672784492920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A003573.P5104886672784492920

/-! ## A003573.P15906674216677266868

`1/2*A055388(A005408(n))`
-/

namespace A003573.P15906674216677266868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A055388 (A005408 n).toNat : ℚ)

end

end A003573.P15906674216677266868

/-! ## A003573.P11605303149905600299

`A050976(A101279(2*n+1)+n)`
-/

namespace A003573.P11605303149905600299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A101279 (2 * n + 1) + (n : ℤ)).toNat

end

end A003573.P11605303149905600299

/-! ## A003573.P17764409303872171046

`A037225(2*n)/A339049(2*n)`
-/

namespace A003573.P17764409303872171046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 (2 * n) : ℚ) / (A339049 (2 * n) : ℚ)

end

end A003573.P17764409303872171046

/-! ## A003573.P8942301044820443387

`gcd(A002326(2*n), A216829(2*n+1))`
-/

namespace A003573.P8942301044820443387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002326 (2 * n)) (A216829 (2 * n + 1))

end

end A003573.P8942301044820443387

/-! ## A003573.P4821526271173371229

`A026741(A274298(n))`
-/

namespace A003573.P4821526271173371229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A274298 n).toNat

end

end A003573.P4821526271173371229

/-! ## A003573.P10276715830095872317

`A026741(A002326(2*n))`
-/

namespace A003573.P10276715830095872317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002326 (2 * n)).toNat

end

end A003573.P10276715830095872317

/-! ## A003573.P598439532318603401

`A001281(A055388(2*n+1))`
-/

namespace A003573.P598439532318603401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055388 (2 * n + 1)).toNat

end

end A003573.P598439532318603401

/-! ## A003573.P6237221145959506473

`A004526(lcm(2, A002326(2*n)))`
-/

namespace A003573.P6237221145959506473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A002326 (2 * n)))

end

end A003573.P6237221145959506473

/-! ## A003573.P6045155944156049697

`A007735(4*n+1)`
-/

namespace A003573.P6045155944156049697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (4 * n + 1)

end

end A003573.P6045155944156049697

/-! ## A003573.P16394441320377105465

`A054705(3*n+n+1)`
-/

namespace A003573.P16394441320377105465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (3 * n + (n + 1))

end

end A003573.P16394441320377105465

/-! ## A003573.P14892676906397452863

`A026741(A024222(2*(2*n+1)))`
-/

namespace A003573.P14892676906397452863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A024222 (2 * (2 * n + 1))).toNat

end

end A003573.P14892676906397452863

/-!
# A003574: Order of 4 mod 4n-1.

The programs for A003574, there is no canonical definition to state claims against.
-/

/-! ## A003574.P7647803717930456902

`A053447(2*(n+1)-1)`
-/

namespace A003574.P7647803717930456902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (2 * (n + 1) - 1)

end

end A003574.P7647803717930456902

/-! ## A003574.P10137522216536289139

`lcm(2, A294673(n))/2`
-/

namespace A003574.P10137522216536289139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A294673 n) : ℚ) / 2

end

end A003574.P10137522216536289139

/-! ## A003574.P15014053015321991470

`A274299(n)/gcd(2, A274299(n))`
-/

namespace A003574.P15014053015321991470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274299 n : ℚ) / (Int.gcd 2 (A274299 n) : ℚ)

end

end A003574.P15014053015321991470

/-! ## A003574.P11594423673851315351

`A026741(A294673(n))`
-/

namespace A003574.P11594423673851315351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A294673 n).toNat

end

end A003574.P11594423673851315351

/-! ## A003574.P7863055333034063898

`A003569(Δ[n²])`
-/

namespace A003574.P7863055333034063898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003574.P7863055333034063898

/-! ## A003574.P5920718477556982915

`A050976(Δ[n²])`
-/

namespace A003574.P5920718477556982915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003574.P5920718477556982915

/-! ## A003574.P17220420529913723811

`A055388(2*(n+1))/2`
-/

namespace A003574.P17220420529913723811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 (2 * (n + 1)) : ℚ) / 2

end

end A003574.P17220420529913723811

/-! ## A003574.P15541114996687528049

`A026741(A003558(2*n+1))`
-/

namespace A003574.P15541114996687528049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003558 (2 * n + 1)).toNat

end

end A003574.P15541114996687528049

/-! ## A003574.P13686329412871916070

`A084680(2*(n+1))+A053447(2*n+1)`
-/

namespace A003574.P13686329412871916070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (2 * (n + 1)) + A053447 (2 * n + 1)

end

end A003574.P13686329412871916070

/-! ## A003574.P9334859490108093019

`A183063(2*n+1)+A053447(2*n+1)`
-/

namespace A003574.P9334859490108093019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * n + 1) + A053447 (2 * n + 1)

end

end A003574.P9334859490108093019

/-! ## A003574.P12917992237439563129

`A037225(2*n+1)/A339049(2*n+1)`
-/

namespace A003574.P12917992237439563129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 (2 * n + 1) : ℚ) / (A339049 (2 * n + 1) : ℚ)

end

end A003574.P12917992237439563129

/-! ## A003574.P13277510177348657757

`gcd(A002326(2*n+1), A216829(2*(n+1)))`
-/

namespace A003574.P13277510177348657757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002326 (2 * n + 1)) (A216829 (2 * (n + 1)))

end

end A003574.P13277510177348657757

/-! ## A003574.P2782849206171643786

`A026741(A274299(n))`
-/

namespace A003574.P2782849206171643786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A274299 n).toNat

end

end A003574.P2782849206171643786

/-! ## A003574.P1321667515630363618

`A026741(A002326(2*n+1))`
-/

namespace A003574.P1321667515630363618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002326 (2 * n + 1)).toNat

end

end A003574.P1321667515630363618

/-! ## A003574.P9164553662126869246

`A001281(A055388(2*(n+1)))`
-/

namespace A003574.P9164553662126869246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055388 (2 * (n + 1))).toNat

end

end A003574.P9164553662126869246

/-! ## A003574.P2076353200348701066

`A065033(A055388(2*(n+1))-1)`
-/

namespace A003574.P2076353200348701066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A055388 (2 * (n + 1)) - 1).toNat

end

end A003574.P2076353200348701066

/-! ## A003574.P16983864502930933845

`A007735(3*(n+1)+n)`
-/

namespace A003574.P16983864502930933845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (3 * (n + 1) + n)

end

end A003574.P16983864502930933845

/-! ## A003574.P8543311518525822869

`A054705(3*(n+1)+n)`
-/

namespace A003574.P8543311518525822869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (3 * (n + 1) + n)

end

end A003574.P8543311518525822869

/-!
# A003575: Dowling numbers: e.g.f.: exp(x + (exp(b*x) - 1)/b) with b=3.

The programs for A003575, there is no canonical definition to state claims against.
-/

/-! ## A003575.P13684677050171858810

`A334165(∑[n+3])`
-/

namespace A003575.P13684677050171858810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003575.P13684677050171858810

/-! ## A003575.P5160479771789254196

`record[A334165(A019304(n))]`
-/

namespace A003575.P5160479771789254196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003575.P5160479771789254196

/-! ## A003575.P16431041239783566023

`A334165(A141214(n))+char[10]`
-/

namespace A003575.P16431041239783566023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A003575.P16431041239783566023

/-! ## A003575.P13348578478384434337

`record[A334165(gcd(n, A198379(n)))]`
-/

namespace A003575.P13348578478384434337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (Int.gcd (n : ℤ) (A198379 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003575.P13348578478384434337

/-! ## A003575.P13861001840878169285

`record[and(A104975(n), A334165(n))]`
-/

namespace A003575.P13861001840878169285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104975 n) (A334165 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003575.P13861001840878169285

/-!
# A003576: Dowling numbers: e.g.f.: exp(x + (exp(b*x) - 1)/b) with b=4.

The programs for A003576, there is no canonical definition to state claims against.
-/

/-! ## A003576.P18136130776334352267

`2^n*A187251(n)`
-/

namespace A003576.P18136130776334352267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A187251 n

end

end A003576.P18136130776334352267

/-! ## A003576.P10297518808655393618

`A187251(n)*A344855(A000124(n+2))`
-/

namespace A003576.P10297518808655393618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n * A344855 (A000124 (n + 2)).toNat

end

end A003576.P10297518808655393618

/-! ## A003576.P13831006932875440208

`A187251(n)*A225472(A000217(n))`
-/

namespace A003576.P13831006932875440208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n * A225472 (A000217 n).toNat

end

end A003576.P13831006932875440208

/-! ## A003576.P12281263061434373529

`A187251(n)*A245092(A000079(n))`
-/

namespace A003576.P12281263061434373529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n * A245092 (A000079 n).toNat

end

end A003576.P12281263061434373529

/-! ## A003576.P355402145517672532

`A187251(n)*A338840(A000051(n))`
-/

namespace A003576.P355402145517672532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n * A338840 (A000051 n).toNat

end

end A003576.P355402145517672532

/-!
# A003577: Dowling numbers: e.g.f. exp(x + (exp(b*x)-1)/b) with b=5.

The programs for A003577, there is no canonical definition to state claims against.
-/

/-! ## A003577.P7181207496751191719

`A334165(A052905(n+2))`
-/

namespace A003577.P7181207496751191719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A052905 (n + 2)).toNat

end

end A003577.P7181207496751191719

/-! ## A003577.P8660733061491678550

`A334165(A168104(n)-5)`
-/

namespace A003577.P8660733061491678550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A168104 n - 5).toNat

end

end A003577.P8660733061491678550

/-! ## A003577.P7143052242577103365

`A334165(A056115(n)+10)`
-/

namespace A003577.P7143052242577103365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A056115 n + 10).toNat

end

end A003577.P7143052242577103365

/-!
# A003578: Dowling numbers: e.g.f. exp(x + (exp(b*x) - 1)/b), with b=6.

The programs for A003578, there is no canonical definition to state claims against.
-/

/-! ## A003578.P12837423835013115013

`A334165(A055999(n+3))`
-/

namespace A003578.P12837423835013115013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A055999 (n + 3)).toNat

end

end A003578.P12837423835013115013

/-! ## A003578.P11858685996384905239

`A334165(eq[5, A025581(n)])`
-/

namespace A003578.P11858685996384905239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003578.P11858685996384905239

/-!
# A003579: Dowling numbers: e.g.f. exp(x + (exp(b*x) - 1)/b), with b=7.

The programs for A003579, there is no canonical definition to state claims against.
-/

/-! ## A003579.P6138142858169241050

`A334165(C(n+7, 2)+n)`
-/

namespace A003579.P6138142858169241050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (Nat.choose (n + 7) 2 + n)

end

end A003579.P6138142858169241050

/-!
# A003580: Dowling numbers: e.g.f. exp(x + (exp(b*x)-1)/b) with b=8.

The programs for A003580, there is no canonical definition to state claims against.
-/

/-! ## A003580.P29201100309380434

`A364074(∑[n+1]+1)`
-/

namespace A003580.P29201100309380434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364074 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003580.P29201100309380434

/-! ## A003580.P8756141525634245831

`record[A023531(n)*A364074(n+2)]`
-/

namespace A003580.P8756141525634245831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A364074 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003580.P8756141525634245831

/-! ## A003580.P13021231708636961371

`record[gcd(A089840(n), A364074(n+2))]`
-/

namespace A003580.P13021231708636961371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089840 n) (A364074 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003580.P13021231708636961371

/-! ## A003580.P14122172792588844704

`record[A364074(n+2)/A049290(n+1)]`
-/

namespace A003580.P14122172792588844704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364074 (n + 2) : ℚ) / (A049290 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003580.P14122172792588844704

/-! ## A003580.P5871143350665795094

`record[root(A364074(n+2), A008292(n+1))]`
-/

namespace A003580.P5871143350665795094
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A364074 (n + 2) : ℝ) ^ (1 / (A008292 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003580.P5871143350665795094

/-!
# A003581: Dowling numbers: e.g.f. exp(x + (exp(b*x)-1)/b) with b=9.

The programs for A003581, there is no canonical definition to state claims against.
-/

/-! ## A003581.P18230368254134107305

`A007095(A003580(n))`
-/

namespace A003581.P18230368254134107305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A003580 n).toNat

end

end A003581.P18230368254134107305

/-!
# A003582: Dowling numbers: e.g.f. exp(x + (exp(b*x)-1)/b) with b=10.

The programs for A003582, there is no canonical definition to state claims against.
-/

/-! ## A003582.P4028249507616275402

`A171397(A003581(n))`
-/

namespace A003582.P4028249507616275402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A003581 n).toNat

end

end A003582.P4028249507616275402

/-!
# A003583: a(n) = (n+2)*2^(2*n-1) - (n/2)*binomial(2*n,n).

The programs for A003583, the canonical program `A003583.P10842991437374558718` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003583 has offset 0).

The definition of A003583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003583.P10842991437374558718

`(n+2)*2^(2*n-1)-n/2*C(2*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003583

/-- `(n+2)*2^(2*n-1)-n/2*C(2*n, n)` -/
def P10842991437374558718.Spec : Prop :=
  ∀ n, P10842991437374558718.a n = (A003583 n : ℚ)

end A003583

/-! ## A003583.P13309416909618564472

`A164990(2*(n+1))/2`
-/

namespace A003583.P13309416909618564472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164990 (2 * (n + 1)) : ℚ) / 2

end

end A003583.P13309416909618564472

namespace A003583

/-- `A164990(2*(n+1))/2` -/
def P13309416909618564472.Spec : Prop :=
  ∀ n, P13309416909618564472.a n = (A003583 n : ℚ)

end A003583

/-! ## A003583.P8655283239557179215

`A100511(n)-A068554(n)`
-/

namespace A003583.P8655283239557179215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100511 n - A068554 n

end

end A003583.P8655283239557179215

namespace A003583

/-- `A100511(n)-A068554(n)` -/
def P8655283239557179215.Spec : Prop :=
  ∀ n, P8655283239557179215.a n = A003583 n

end A003583

/-! ## A003583.P12871035260762075167

`A081039(n)-A339240(n)`
-/

namespace A003583.P12871035260762075167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n - A339240 n

end

end A003583.P12871035260762075167

namespace A003583

/-- `A081039(n)-A339240(n)` -/
def P12871035260762075167.Spec : Prop :=
  ∀ n, P12871035260762075167.a n = A003583 n

end A003583

/-! ## A003583.P15291133906085124317

`Δ[A002697(n)]-A339240(n)`
-/

namespace A003583.P15291133906085124317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A339240 n

end

end A003583.P15291133906085124317

namespace A003583

/-- `Δ[A002697(n)]-A339240(n)` -/
def P15291133906085124317.Spec : Prop :=
  ∀ n, P15291133906085124317.a n = A003583 n

end A003583

/-! ## A003583.P6490394290409351036

`A002697(n+1)-A100511(n)`
-/

namespace A003583.P6490394290409351036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A100511 n

end

end A003583.P6490394290409351036

namespace A003583

/-- `A002697(n+1)-A100511(n)` -/
def P6490394290409351036.Spec : Prop :=
  ∀ n, P6490394290409351036.a n = A003583 n

end A003583

/-! ## A003583.P13992419334370876741

`A081039(n)-n*A114121(n)`
-/

namespace A003583.P13992419334370876741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n - (n : ℤ) * A114121 n

end

end A003583.P13992419334370876741

namespace A003583

/-- `A081039(n)-n*A114121(n)` -/
def P13992419334370876741.Spec : Prop :=
  ∀ n, P13992419334370876741.a n = A003583 n

end A003583

/-! ## A003583.P17041553253703413712

`Δ[A049610(2*n)]-A339240(n)`
-/

namespace A003583.P17041553253703413712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A339240 n

end

end A003583.P17041553253703413712

namespace A003583

/-- `Δ[A049610(2*n)]-A339240(n)` -/
def P17041553253703413712.Spec : Prop :=
  ∀ n, P17041553253703413712.a n = A003583 n

end A003583

/-! ## A003583.P3956192004274854944

`Δ[A002697(n)]-n*A114121(n)`
-/

namespace A003583.P3956192004274854944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A114121 n

end

end A003583.P3956192004274854944

namespace A003583

/-- `Δ[A002697(n)]-n*A114121(n)` -/
def P3956192004274854944.Spec : Prop :=
  ∀ n, P3956192004274854944.a n = A003583 n

end A003583

/-! ## A003583.P1103302728178047686

`A081039(n)-n*A079280(Δ[n²])`
-/

namespace A003583.P1103302728178047686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n - (n : ℤ) * A079280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003583.P1103302728178047686

namespace A003583

/-- `A081039(n)-n*A079280(Δ[n²])` -/
def P1103302728178047686.Spec : Prop :=
  ∀ n, P1103302728178047686.a n = A003583 n

end A003583

/-! ## A003583.P13549258462250779197

`A000079(n)²+n*A058622(2*n)`
-/

namespace A003583.P13549258462250779197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (n : ℤ) * A058622 (2 * n)

end

end A003583.P13549258462250779197

namespace A003583

/-- `A000079(n)²+n*A058622(2*n)` -/
def P13549258462250779197.Spec : Prop :=
  ∀ n, P13549258462250779197.a n = A003583 n

end A003583

/-! ## A003583.P17557762937747909973

`A000079(n)²+n*A294175(2*n)`
-/

namespace A003583.P17557762937747909973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (n : ℤ) * A294175 (2 * n)

end

end A003583.P17557762937747909973

namespace A003583

/-- `A000079(n)²+n*A294175(2*n)` -/
def P17557762937747909973.Spec : Prop :=
  ∀ n, P17557762937747909973.a n = A003583 n

end A003583

/-! ## A003583.P11180813891362886860

`A131352(2*n)-A100071(2*n)/2`
-/

namespace A003583.P11180813891362886860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131352 (2 * n) : ℚ) - (A100071 (2 * n) : ℚ) / 2

end

end A003583.P11180813891362886860

namespace A003583

/-- `A131352(2*n)-A100071(2*n)/2` -/
def P11180813891362886860.Spec : Prop :=
  ∀ n, P11180813891362886860.a n = (A003583 n : ℚ)

end A003583

/-! ## A003583.P14832460386542152704

`A001792(2*n)-A230137(2*n)/2`
-/

namespace A003583.P14832460386542152704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001792 (2 * n) : ℚ) - (A230137 (2 * n) : ℚ) / 2

end

end A003583.P14832460386542152704

namespace A003583

/-- `A001792(2*n)-A230137(2*n)/2` -/
def P14832460386542152704.Spec : Prop :=
  ∀ n, P14832460386542152704.a n = (A003583 n : ℚ)

end A003583

/-! ## A003583.P3700896113761191619

`A000079(2*n)+n*A058622(2*n)`
-/

namespace A003583.P3700896113761191619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (n : ℤ) * A058622 (2 * n)

end

end A003583.P3700896113761191619

namespace A003583

/-- `A000079(2*n)+n*A058622(2*n)` -/
def P3700896113761191619.Spec : Prop :=
  ∀ n, P3700896113761191619.a n = A003583 n

end A003583

/-! ## A003583.P14533654287884434914

`A000079(2*n)+n*A294175(2*n)`
-/

namespace A003583.P14533654287884434914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (n : ℤ) * A294175 (2 * n)

end

end A003583.P14533654287884434914

namespace A003583

/-- `A000079(2*n)+n*A294175(2*n)` -/
def P14533654287884434914.Spec : Prop :=
  ∀ n, P14533654287884434914.a n = A003583 n

end A003583

/-! ## A003583.P11534789539402610129

`A000079(n)²+n*A007008(2*n+1)`
-/

namespace A003583.P11534789539402610129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (n : ℤ) * A007008 (2 * n + 1)

end

end A003583.P11534789539402610129

namespace A003583

/-- `A000079(n)²+n*A007008(2*n+1)` -/
def P11534789539402610129.Spec : Prop :=
  ∀ n, P11534789539402610129.a n = A003583 n

end A003583

/-! ## A003583.P5529289160185811640

`A011782(n+1)²+n*A058622(2*n)`
-/

namespace A003583.P5529289160185811640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + (n : ℤ) * A058622 (2 * n)

end

end A003583.P5529289160185811640

namespace A003583

/-- `A011782(n+1)²+n*A058622(2*n)` -/
def P5529289160185811640.Spec : Prop :=
  ∀ n, P5529289160185811640.a n = A003583 n

end A003583

/-! ## A003583.P16201733408503486200

`A011782(n+1)²+n*A294175(2*n)`
-/

namespace A003583.P16201733408503486200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + (n : ℤ) * A294175 (2 * n)

end

end A003583.P16201733408503486200

namespace A003583

/-- `A011782(n+1)²+n*A294175(2*n)` -/
def P16201733408503486200.Spec : Prop :=
  ∀ n, P16201733408503486200.a n = A003583 n

end A003583

/-! ## A003583.P12339306273920181572

`(A045623(2*n+1)-A100071(2*n))/2`
-/

namespace A003583.P12339306273920181572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045623 (2 * n + 1) - A100071 (2 * n) : ℚ) / 2

end

end A003583.P12339306273920181572

namespace A003583

/-- `(A045623(2*n+1)-A100071(2*n))/2` -/
def P12339306273920181572.Spec : Prop :=
  ∀ n, P12339306273920181572.a n = (A003583 n : ℚ)

end A003583

/-!
# A003584: Unicursal (i.e., possessing an Eulerian path) planar rooted maps with n edges.

The programs for A003584, there is no canonical definition to state claims against.
-/

/-! ## A003584.P11701488104899522843

`A252759(ceil(2^(n-1)*C(2*n, n)))+A000257(n)`
-/

namespace A003584.P11701488104899522843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n) n : ℚ)⌉.toNat + A000257 n

end

end A003584.P11701488104899522843

/-! ## A003584.P15714646161888680865

`A004526(A069723(n+1))+A000257(n)`
-/

namespace A003584.P15714646161888680865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069723 (n + 1)).toNat + A000257 n

end

end A003584.P15714646161888680865

/-!
# A003585: Odd numbers that are not of the form x^2 + y^2 + 10*z^2.

The programs for A003585, there is no canonical definition to state claims against.
-/

/-! ## A003585.P8633764324575311888

`2*A141463(n+1)+1`
-/

namespace A003585.P8633764324575311888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141463 (n + 1) + 1

end

end A003585.P8633764324575311888

/-! ## A003585.P9435885971727170063

`A005408(A141463(n+1))`
-/

namespace A003585.P9435885971727170063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A141463 (n + 1)).toNat

end

end A003585.P9435885971727170063

/-! ## A003585.P11911133854470666231

`A004273(A141463(n+1)+1)`
-/

namespace A003585.P11911133854470666231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A141463 (n + 1) + 1).toNat

end

end A003585.P11911133854470666231

/-! ## A003585.P11684982336282580391

`A060747(A141463(n+1)+1)`
-/

namespace A003585.P11684982336282580391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A141463 (n + 1) + 1).toNat

end

end A003585.P11684982336282580391

/-! ## A003585.P16378729711182471401

`A096431(A141463(n+1)+1)`
-/

namespace A003585.P16378729711182471401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096431 (A141463 (n + 1) + 1).toNat

end

end A003585.P16378729711182471401

/-!
# A003586: 3-smooth numbers: numbers of the form 2^i*3^j with i, j >= 0.

The programs for A003586, there is no canonical definition to state claims against.
-/

/-! ## A003586.P12854769635418826258

`2^A022328(n+1)*3^A022329(n+1)`
-/

namespace A003586.P12854769635418826258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A022328 (n + 1) : ℤ) * (3 : ℚ) ^ (A022329 (n + 1) : ℤ)

end

end A003586.P12854769635418826258

/-! ## A003586.P2233868897329217170

`A007694(n+2)/2`
-/

namespace A003586.P2233868897329217170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2

end

end A003586.P2233868897329217170

/-! ## A003586.P17359811694814766864

`∑[A061987(n)]`
-/

namespace A003586.P17359811694814766864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003586.P17359811694814766864

/-! ## A003586.P1549033012126246641

`Δ[A259823(n)]`
-/

namespace A003586.P1549033012126246641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003586.P1549033012126246641

/-! ## A003586.P14608830007504903349

`A069353(n+1)+1`
-/

namespace A003586.P14608830007504903349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 1

end

end A003586.P14608830007504903349

/-! ## A003586.P16607932107111882219

`A055600(n+1)-1`
-/

namespace A003586.P16607932107111882219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 1

end

end A003586.P16607932107111882219

/-! ## A003586.P18008646130136580126

`A065119(n+1)/3`
-/

namespace A003586.P18008646130136580126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (n + 1) : ℚ) / 3

end

end A003586.P18008646130136580126

/-! ## A003586.P4815446240316494169

`A033845(n+1)/6`
-/

namespace A003586.P4815446240316494169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033845 (n + 1) : ℚ) / 6

end

end A003586.P4815446240316494169

/-! ## A003586.P17615871513483890233

`ceil(A190812(n+1)/2)`
-/

namespace A003586.P17615871513483890233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190812 (n + 1) : ℚ) / 2⌉

end

end A003586.P17615871513483890233

/-! ## A003586.P303343957609913500

`A259823(n+1)-A259823(n)`
-/

namespace A003586.P303343957609913500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 (n + 1) - A259823 n

end

end A003586.P303343957609913500

/-! ## A003586.P495967350676451697

`∪[A000244(n), A007694(n+1)]`
-/

namespace A003586.P495967350676451697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P495967350676451697

/-! ## A003586.P12210792616654933097

`∪[A007694(n+1), A038754(n)]`
-/

namespace A003586.P12210792616654933097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P12210792616654933097

/-! ## A003586.P3043781741257723059

`∪[A000079(n), A065119(n+1)]`
-/

namespace A003586.P3043781741257723059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P3043781741257723059

/-! ## A003586.P8458528907541532520

`∪[A065119(n+1), A133464(n)]`
-/

namespace A003586.P8458528907541532520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P8458528907541532520

/-! ## A003586.P8542922434458404526

`∪[A007694(n+1), A367083(n)]`
-/

namespace A003586.P8542922434458404526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P8542922434458404526

/-! ## A003586.P7402933618929189144

`∪[A007694(n+1), A025613(n+1)]`
-/

namespace A003586.P7402933618929189144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P7402933618929189144

/-! ## A003586.P7711507421979699448

`∪[A007694(n+1), A025614(n+1)]`
-/

namespace A003586.P7711507421979699448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P7711507421979699448

/-! ## A003586.P517731637220044150

`∪[A025610(n+1), A025614(n+1)]`
-/

namespace A003586.P517731637220044150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P517731637220044150

/-! ## A003586.P17786894130412685739

`∪[A036667(n+1), A257999(n+1)]`
-/

namespace A003586.P17786894130412685739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003586.P17786894130412685739

/-! ## A003586.P13716033972022057592

`A065119(n+1)-(A190812(n+1)+1)`
-/

namespace A003586.P13716033972022057592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1) - (A190812 (n + 1) + 1)

end

end A003586.P13716033972022057592

/-!
# A003587: Roman numerals with 1 letter, in numerical order; then those with 2 letters, etc.

The programs for A003587, there is no canonical definition to state claims against.
-/

/-! ## A003587.P5510261762802742413

`∑[10*a(n-2)]%C(p?[2^n-1]+1, 2)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A003587.P5510261762802742413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n f1 =>
  10 * f1 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % Nat.choose (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat 2

end

end A003587.P5510261762802742413

/-! ## A003587.P15676057482977313506

`eq[1, A092196(n)]`
-/

namespace A003587.P15676057482977313506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003587.P15676057482977313506

/-! ## A003587.P4441131706782888073

`record[A093704(n+1)]`
-/

namespace A003587.P4441131706782888073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003587.P4441131706782888073

/-!
# A003588: Roman numerals with 1 letter, in alphabetical order; then those with 2 letters, etc.

The programs for A003588, there is no canonical definition to state claims against.
-/

/-! ## A003588.P17226586869795005896

`A093796(Δ[A093799(3*n+4)]²-1)`
-/

namespace A003588.P17226586869795005896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093799 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093796 ((f1 (n + 1) - f1 n) ^ 2 - 1).toNat

end

end A003588.P17226586869795005896

/-!
# A003589: a(n) has the property that the sequence b(n) = number of 2's between successive 3's is the same as the original sequence.

The programs for A003589, the canonical program `A003589.P17999501955238363741` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003589 has offset 0).

The definition of A003589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003589.P17999501955238363741

`A276397(n)+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003589

/-- `A276397(n)+2` -/
def P17999501955238363741.Spec : Prop :=
  ∀ n, P17999501955238363741.a n = A003589 n

theorem P17999501955238363741.correct : P17999501955238363741.Spec := by
  intro n
  simp only [A003589]

end A003589

/-! ## A003589.P7461648107713015551

`A188590(n+1)-1`
-/

namespace A003589.P7461648107713015551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188590 (n + 1) - 1

end

end A003589.P7461648107713015551

namespace A003589

/-- `A188590(n+1)-1` -/
def P7461648107713015551.Spec : Prop :=
  ∀ n, P7461648107713015551.a n = A003589 n

theorem P7461648107713015551.correct : P7461648107713015551.Spec := by
  intro n
  simp only [A003589, Nat.add_sub_cancel, A003589.P7461648107713015551.a, A003589.P17999501955238363741.a, A188590, A188590.P3711629956380345104.f1, A188590.P3711629956380345104.a, A276397, A276397.P8421453054304162173.a, A080081, A080081.P2894289496035499761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003589

/-! ## A003589.P12864849010948320056

`A001538(n)%A188590(n+1)`
-/

namespace A003589.P12864849010948320056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A188590 (n + 1))

end

end A003589.P12864849010948320056

namespace A003589

/-- `A001538(n)%A188590(n+1)` -/
def P12864849010948320056.Spec : Prop :=
  ∀ n, P12864849010948320056.a n = A003589 n

end A003589

/-! ## A003589.P8477243616068483755

`A017653(n)%A188590(n+1)`
-/

namespace A003589.P8477243616068483755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A188590 (n + 1))

end

end A003589.P8477243616068483755

namespace A003589

/-- `A017653(n)%A188590(n+1)` -/
def P8477243616068483755.Spec : Prop :=
  ∀ n, P8477243616068483755.a n = A003589 n

end A003589

/-! ## A003589.P3154810883193837313

`A017655(n)%A188590(n+1)`
-/

namespace A003589.P3154810883193837313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A188590 (n + 1))

end

end A003589.P3154810883193837313

namespace A003589

/-- `A017655(n)%A188590(n+1)` -/
def P3154810883193837313.Spec : Prop :=
  ∀ n, P3154810883193837313.a n = A003589 n

end A003589

/-! ## A003589.P10653350835531139844

`A017657(n)%A188590(n+1)`
-/

namespace A003589.P10653350835531139844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A188590 (n + 1))

end

end A003589.P10653350835531139844

namespace A003589

/-- `A017657(n)%A188590(n+1)` -/
def P10653350835531139844.Spec : Prop :=
  ∀ n, P10653350835531139844.a n = A003589 n

end A003589

/-! ## A003589.P2828470299844905866

`A033300(n)%A188590(n+1)`
-/

namespace A003589.P2828470299844905866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033300 n) (A188590 (n + 1))

end

end A003589.P2828470299844905866

namespace A003589

/-- `A033300(n)%A188590(n+1)` -/
def P2828470299844905866.Spec : Prop :=
  ∀ n, P2828470299844905866.a n = A003589 n

end A003589

/-! ## A003589.P9565125508633627225

`A152951(n)%A188590(n+1)`
-/

namespace A003589.P9565125508633627225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152951 n) (A188590 (n + 1))

end

end A003589.P9565125508633627225

namespace A003589

/-- `A152951(n)%A188590(n+1)` -/
def P9565125508633627225.Spec : Prop :=
  ∀ n, P9565125508633627225.a n = A003589 n

end A003589

/-! ## A003589.P599680966779133737

`A348845(n)%A188590(n+1)`
-/

namespace A003589.P599680966779133737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348845 n) (A188590 (n + 1))

end

end A003589.P599680966779133737

namespace A003589

/-- `A348845(n)%A188590(n+1)` -/
def P599680966779133737.Spec : Prop :=
  ∀ n, P599680966779133737.a n = A003589 n

end A003589

/-! ## A003589.P2249275867268955692

`A350055(n)%A188590(n+1)`
-/

namespace A003589.P2249275867268955692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350055 n) (A188590 (n + 1))

end

end A003589.P2249275867268955692

namespace A003589

/-- `A350055(n)%A188590(n+1)` -/
def P2249275867268955692.Spec : Prop :=
  ∀ n, P2249275867268955692.a n = A003589 n

end A003589

/-! ## A003589.P8589868392149320100

`A044494(n+1)%A188590(n+1)`
-/

namespace A003589.P8589868392149320100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044494 (n + 1)) (A188590 (n + 1))

end

end A003589.P8589868392149320100

namespace A003589

/-- `A044494(n+1)%A188590(n+1)` -/
def P8589868392149320100.Spec : Prop :=
  ∀ n, P8589868392149320100.a n = A003589 n

end A003589

/-! ## A003589.P17341313288374063841

`A044506(n+1)%A188590(n+1)`
-/

namespace A003589.P17341313288374063841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044506 (n + 1)) (A188590 (n + 1))

end

end A003589.P17341313288374063841

namespace A003589

/-- `A044506(n+1)%A188590(n+1)` -/
def P17341313288374063841.Spec : Prop :=
  ∀ n, P17341313288374063841.a n = A003589 n

end A003589

/-! ## A003589.P9648259523140347507

`A044518(n+1)%A188590(n+1)`
-/

namespace A003589.P9648259523140347507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044518 (n + 1)) (A188590 (n + 1))

end

end A003589.P9648259523140347507

namespace A003589

/-- `A044518(n+1)%A188590(n+1)` -/
def P9648259523140347507.Spec : Prop :=
  ∀ n, P9648259523140347507.a n = A003589 n

end A003589

/-! ## A003589.P10535776131231955541

`A059323(n+1)%A188590(n+1)`
-/

namespace A003589.P10535776131231955541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059323 (n + 1)) (A188590 (n + 1))

end

end A003589.P10535776131231955541

namespace A003589

/-- `A059323(n+1)%A188590(n+1)` -/
def P10535776131231955541.Spec : Prop :=
  ∀ n, P10535776131231955541.a n = A003589 n

end A003589

/-! ## A003589.P2851412138156889358

`A059395(n+1)%A188590(n+1)`
-/

namespace A003589.P2851412138156889358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059395 (n + 1)) (A188590 (n + 1))

end

end A003589.P2851412138156889358

namespace A003589

/-- `A059395(n+1)%A188590(n+1)` -/
def P2851412138156889358.Spec : Prop :=
  ∀ n, P2851412138156889358.a n = A003589 n

end A003589

/-! ## A003589.P13435107774382664069

`A059455(n+1)%A188590(n+1)`
-/

namespace A003589.P13435107774382664069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059455 (n + 1)) (A188590 (n + 1))

end

end A003589.P13435107774382664069

namespace A003589

/-- `A059455(n+1)%A188590(n+1)` -/
def P13435107774382664069.Spec : Prop :=
  ∀ n, P13435107774382664069.a n = A003589 n

end A003589

/-! ## A003589.P12011786237820211450

`A119859(n+1)%A188590(n+1)`
-/

namespace A003589.P12011786237820211450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119859 (n + 1)) (A188590 (n + 1))

end

end A003589.P12011786237820211450

namespace A003589

/-- `A119859(n+1)%A188590(n+1)` -/
def P12011786237820211450.Spec : Prop :=
  ∀ n, P12011786237820211450.a n = A003589 n

end A003589

/-! ## A003589.P7448634783538080120

`A192228(n+1)%A188590(n+1)`
-/

namespace A003589.P7448634783538080120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192228 (n + 1)) (A188590 (n + 1))

end

end A003589.P7448634783538080120

namespace A003589

/-- `A192228(n+1)%A188590(n+1)` -/
def P7448634783538080120.Spec : Prop :=
  ∀ n, P7448634783538080120.a n = A003589 n

end A003589

/-! ## A003589.P7333574851704142753

`A127229(n+5)%A188590(n+1)`
-/

namespace A003589.P7333574851704142753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A188590 (n + 1))

end

end A003589.P7333574851704142753

namespace A003589

/-- `A127229(n+5)%A188590(n+1)` -/
def P7333574851704142753.Spec : Prop :=
  ∀ n, P7333574851704142753.a n = A003589 n

end A003589

/-!
# A003591: Numbers of form 2^i*7^j, with i, j >= 0.

The programs for A003591, there is no canonical definition to state claims against.
-/

/-! ## A003591.P17825101427577543612

`2^A025637(n+1)*7^A025664(n+1)`
-/

namespace A003591.P17825101427577543612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025637 (n + 1) : ℤ) * (7 : ℚ) ^ (A025664 (n + 1) : ℤ)

end

end A003591.P17825101427577543612

/-! ## A003591.P14698743342360008181

`A033847(n+1)/14`
-/

namespace A003591.P14698743342360008181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033847 (n + 1) : ℚ) / 14

end

end A003591.P14698743342360008181

/-! ## A003591.P2377462427545359848

`A165742(n)+a(n-1)` with `a(0)=1`
-/

namespace A003591.P2377462427545359848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165742 n + a (n - 1)

end

end A003591.P2377462427545359848

/-! ## A003591.P4219929005829392548

`∑[A165742(abs(1-n)+1)]-1`
-/

namespace A003591.P4219929005829392548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003591.P4219929005829392548

/-! ## A003591.P8338967252304793667

`∑[A165742(A028310(n))]`
-/

namespace A003591.P8338967252304793667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003591.P8338967252304793667

/-! ## A003591.P7200827285107658629

`∑[A165742(A065033(A004273(n)))]`
-/

namespace A003591.P7200827285107658629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003591.P7200827285107658629

/-! ## A003591.P3989883602055233657

`∑[A165742(A065033(2*n))]`
-/

namespace A003591.P3989883602055233657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003591.P3989883602055233657

/-! ## A003591.P13948769166909819936

`∩[A108319(n+1), A108513(n+1)]`
-/

namespace A003591.P13948769166909819936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P13948769166909819936

/-! ## A003591.P5663179017588849437

`∩[A108513(n+1), A219174(n+1)]`
-/

namespace A003591.P5663179017588849437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P5663179017588849437

/-! ## A003591.P12531078932190803019

`∩[A002473(n+1), A177805(n+1)]`
-/

namespace A003591.P12531078932190803019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P12531078932190803019

/-! ## A003591.P438481066608811798

`∩[A108319(n+1), A177805(n+1)]`
-/

namespace A003591.P438481066608811798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P438481066608811798

/-! ## A003591.P2925358089495054335

`∩[A108513(n+1), A177805(n+1)]`
-/

namespace A003591.P2925358089495054335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P2925358089495054335

/-! ## A003591.P694525956234669546

`∩[A177805(n+1), A219174(n+1)]`
-/

namespace A003591.P694525956234669546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P694525956234669546

/-! ## A003591.P3631014852162914961

`∩[A177805(n+1), A342950(n+1)]`
-/

namespace A003591.P3631014852162914961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P3631014852162914961

/-! ## A003591.P18312992390333125057

`∩[A051038(n+1), A177805(n+1)]`
-/

namespace A003591.P18312992390333125057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P18312992390333125057

/-! ## A003591.P9166429596087834053

`∩[A108513(n+1), A318400(n+1)]`
-/

namespace A003591.P9166429596087834053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P9166429596087834053

/-! ## A003591.P4465962616127394073

`∩[A177805(n+1), A318400(n+1)]`
-/

namespace A003591.P4465962616127394073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P4465962616127394073

/-! ## A003591.P7298337019076749445

`∩[A084034(n+1), A177805(n+1)]`
-/

namespace A003591.P7298337019076749445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003591.P7298337019076749445

/-! ## A003591.P16180589143607968449

`∑[A165742(A134478(∑[n]))]`
-/

namespace A003591.P16180589143607968449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003591.P16180589143607968449

/-! ## A003591.P10444903216080270867

`∑[A165742(n^A178334(n))]`
-/

namespace A003591.P10444903216080270867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003591.P10444903216080270867

/-!
# A003592: Numbers of the form 2^i*5^j with i, j >= 0.

The programs for A003592, there is no canonical definition to state claims against.
-/

/-! ## A003592.P14587699936841904943

`2^A022332(n+1)*5^A022333(n+1)`
-/

namespace A003592.P14587699936841904943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A022332 (n + 1) : ℤ) * (5 : ℚ) ^ (A022333 (n + 1) : ℤ)

end

end A003592.P14587699936841904943

/-! ## A003592.P15336705891334609092

`A158911(n+1)+1`
-/

namespace A003592.P15336705891334609092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1) + 1

end

end A003592.P15336705891334609092

/-! ## A003592.P2779368275176773735

`A086761(n+1)/5`
-/

namespace A003592.P2779368275176773735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086761 (n + 1) : ℚ) / 5

end

end A003592.P2779368275176773735

/-! ## A003592.P17154130430783142673

`A033846(n+1)/10`
-/

namespace A003592.P17154130430783142673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033846 (n + 1) : ℚ) / 10

end

end A003592.P17154130430783142673

/-! ## A003592.P5826769825877004153

`A164768(n)+a(n-1)` with `a(0)=1`
-/

namespace A003592.P5826769825877004153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164768 n + a (n - 1)

end

end A003592.P5826769825877004153

/-! ## A003592.P10657275837035451829

`∪[A026383(n), A036311(n+1)]`
-/

namespace A003592.P10657275837035451829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P10657275837035451829

/-! ## A003592.P16540738477494228166

`∪[A000079(n), A086761(n+1)]`
-/

namespace A003592.P16540738477494228166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P16540738477494228166

/-! ## A003592.P15569684496801152633

`∪[A036311(n+1), A051109(n)]`
-/

namespace A003592.P15569684496801152633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P15569684496801152633

/-! ## A003592.P2887100276109835587

`∪[A036311(n+1), A084215(n)]`
-/

namespace A003592.P2887100276109835587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P2887100276109835587

/-! ## A003592.P2962225828046030918

`∪[A036311(n+1), A104721(n)]`
-/

namespace A003592.P2962225828046030918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P2962225828046030918

/-! ## A003592.P11470763302612665876

`∪[A025612(n+1), A025625(n+1)]`
-/

namespace A003592.P11470763302612665876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P11470763302612665876

/-! ## A003592.P2936152739210747345

`∪[A054774(n+1), A054901(n+1)]`
-/

namespace A003592.P2936152739210747345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P2936152739210747345

/-! ## A003592.P16702957874119978424

`∑[A164768(n+1)]+1-A164768(n+1)`
-/

namespace A003592.P16702957874119978424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A164768 (n + 1))

end

end A003592.P16702957874119978424

/-! ## A003592.P2987925776751782136

`∩[A070023(n+1), A108513(n+1)]`
-/

namespace A003592.P2987925776751782136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P2987925776751782136

/-! ## A003592.P8117607404445562857

`∩[A108513(n+1), A257997(n+1)]`
-/

namespace A003592.P8117607404445562857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P8117607404445562857

/-! ## A003592.P9466363570705411831

`∩[A108513(n+1), A337800(n+1)]`
-/

namespace A003592.P9466363570705411831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P9466363570705411831

/-! ## A003592.P6567675538094885362

`∩[A108513(n+1), A337801(n+1)]`
-/

namespace A003592.P6567675538094885362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P6567675538094885362

/-! ## A003592.P6112338374041418877

`record[lcm(3, A051037(n+1))/3]`
-/

namespace A003592.P6112338374041418877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A051037 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003592.P6112338374041418877

/-! ## A003592.P8182876917284001889

`∩[A051037(n+1), A108513(n+1)]`
-/

namespace A003592.P8182876917284001889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P8182876917284001889

/-! ## A003592.P17473358475568305853

`∩[A108513(n+1), A143513(n+1)]`
-/

namespace A003592.P17473358475568305853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003592.P17473358475568305853

/-!
# A003593: Numbers of the form 3^i*5^j with i, j >= 0.

The programs for A003593, there is no canonical definition to state claims against.
-/

/-! ## A003593.P4063296833998233104

`A033849(n+1)/A033849(n-A023443(n))`
-/

namespace A003593.P4063296833998233104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033849 (n + 1) : ℚ) / (A033849 ((n : ℤ) - A023443 n).toNat : ℚ)

end

end A003593.P4063296833998233104

/-! ## A003593.P14860483166992960017

`A033849(n+1)/A033849(gcd(n, A003557(n+1)))`
-/

namespace A003593.P14860483166992960017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033849 (n + 1) : ℚ) / (A033849 (Int.gcd (n : ℤ) (A003557 (n + 1))) : ℚ)

end

end A003593.P14860483166992960017

/-! ## A003593.P6258760139752248978

`record[lcm(2, A051037(n+1))/2]`
-/

namespace A003593.P6258760139752248978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A051037 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003593.P6258760139752248978

/-! ## A003593.P1512230758845513472

`∩[A051037(n+1), A108347(n+1)]`
-/

namespace A003593.P1512230758845513472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003593.P1512230758845513472

/-! ## A003593.P15770084860268649219

`∩[A051037(n+1), A143512(n+1)]`
-/

namespace A003593.P15770084860268649219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003593.P15770084860268649219

/-! ## A003593.P12473404502627084631

`record[gcd(A051037(n+1), A112760(n+1))]`
-/

namespace A003593.P12473404502627084631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051037 (n + 1)) (A112760 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003593.P12473404502627084631

/-! ## A003593.P15409070320502464569

`A051037(eq[1, A051037(n+1)%2]+1)`
-/

namespace A003593.P15409070320502464569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051037 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A003593.P15409070320502464569

/-! ## A003593.P4236835253273034280

`A051037(eq[1, and(1, A051037(n+1))]+1)`
-/

namespace A003593.P4236835253273034280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051037 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A003593.P4236835253273034280

/-! ## A003593.P15019647277590250937

`A051037(record[n*and(1, A051037(n+1))]+1)`
-/

namespace A003593.P15019647277590250937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A051037 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A003593.P15019647277590250937

/-! ## A003593.P14398661605205647085

`∩[A143512(n+1), A342950(n+1)]`
-/

namespace A003593.P14398661605205647085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003593.P14398661605205647085

/-! ## A003593.P2061837492291901635

`∩[A002473(n+1), A143512(n+1)]`
-/

namespace A003593.P2061837492291901635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003593.P2061837492291901635

/-! ## A003593.P5951715170886753368

`∩[A108347(n+1), A143513(n+1)]`
-/

namespace A003593.P5951715170886753368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003593.P5951715170886753368

/-! ## A003593.P15025745824187356863

`∩[A002473(n+1), A056741(n+1)]`
-/

namespace A003593.P15025745824187356863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003593.P15025745824187356863

/-! ## A003593.P4535745413287708193

`∩[A051037(n+1), A056741(n+1)]`
-/

namespace A003593.P4535745413287708193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003593.P4535745413287708193

/-!
# A003594: Numbers of the form 3^i*7^j with i, j >= 0.

The programs for A003594, there is no canonical definition to state claims against.
-/

/-! ## A003594.P10697325002192215310

`3^A025642(n+1)*7^A025665(n+1)`
-/

namespace A003594.P10697325002192215310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025642 (n + 1) : ℤ) * (7 : ℚ) ^ (A025665 (n + 1) : ℤ)

end

end A003594.P10697325002192215310

/-! ## A003594.P5464970143200332678

`A033850(n+1)/21`
-/

namespace A003594.P5464970143200332678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033850 (n + 1) : ℚ) / 21

end

end A003594.P5464970143200332678

/-! ## A003594.P650681249538067107

`floor(A033850(A028242(2*n))/21)`
-/

namespace A003594.P650681249538067107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033850 (A028242 (2 * n)).toNat : ℚ) / 21⌋

end

end A003594.P650681249538067107

/-! ## A003594.P17868585629001735334

`record[A108347(n+1)/gcd(5, A108347(n+1))]`
-/

namespace A003594.P17868585629001735334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108347 (n + 1) : ℚ) / (Int.gcd 5 (A108347 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003594.P17868585629001735334

/-! ## A003594.P16464787994427163739

`∩[A108319(n+1), A108347(n+1)]`
-/

namespace A003594.P16464787994427163739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P16464787994427163739

/-! ## A003594.P14035244326052945152

`A108319(record[(n+1)*A108319(n+1)%2])`
-/

namespace A003594.P14035244326052945152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A108319 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003594.P14035244326052945152

/-! ## A003594.P16823152239302261047

`∩[A014959(n+1), A108319(n+1)]`
-/

namespace A003594.P16823152239302261047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P16823152239302261047

/-! ## A003594.P13669102926529189187

`∩[A014959(n+1), A108347(n+1)]`
-/

namespace A003594.P13669102926529189187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P13669102926529189187

/-! ## A003594.P11817533644556445001

`∩[A014959(n+1), A342950(n+1)]`
-/

namespace A003594.P11817533644556445001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P11817533644556445001

/-! ## A003594.P730062055807030815

`record[lcm(10, A002473(n+1))/10]`
-/

namespace A003594.P730062055807030815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 10 (A002473 (n + 1)) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003594.P730062055807030815

/-! ## A003594.P14765718098560282350

`∩[A002473(n+1), A014959(n+1)]`
-/

namespace A003594.P14765718098560282350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P14765718098560282350

/-! ## A003594.P10911801789902660957

`∩[A108347(n+1), A219174(n+1)]`
-/

namespace A003594.P10911801789902660957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P10911801789902660957

/-! ## A003594.P12740029913366939608

`∩[A002473(n+1), A125227(n+3)]`
-/

namespace A003594.P12740029913366939608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P12740029913366939608

/-! ## A003594.P13788388272407540618

`∩[A108319(n+1), A125227(n+3)]`
-/

namespace A003594.P13788388272407540618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P13788388272407540618

/-! ## A003594.P15479653507466986750

`∩[A108347(n+1), A125227(n+3)]`
-/

namespace A003594.P15479653507466986750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P15479653507466986750

/-! ## A003594.P5795527730454474689

`∩[A342950(n+1), A125227(n+3)]`
-/

namespace A003594.P5795527730454474689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P5795527730454474689

/-! ## A003594.P13183898338606435729

`∩[A108319(n+1), A282572(n+1)]`
-/

namespace A003594.P13183898338606435729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P13183898338606435729

/-! ## A003594.P17417360971943454630

`∩[A002473(n+1), A057233(n+1)]`
-/

namespace A003594.P17417360971943454630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P17417360971943454630

/-! ## A003594.P12300138651641649977

`∩[A057233(n+1), A108319(n+1)]`
-/

namespace A003594.P12300138651641649977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P12300138651641649977

/-! ## A003594.P14818865758151188559

`∩[A057233(n+1), A108347(n+1)]`
-/

namespace A003594.P14818865758151188559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003594.P14818865758151188559

/-!
# A003595: Numbers of the form 5^i*7^j with i, j >= 0.

The programs for A003595, there is no canonical definition to state claims against.
-/

/-! ## A003595.P6855347559911133103

`5^A025652(n+1)*7^A025667(n+1)`
-/

namespace A003595.P6855347559911133103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A025652 (n + 1) : ℤ) * (7 : ℚ) ^ (A025667 (n + 1) : ℤ)

end

end A003595.P6855347559911133103

/-! ## A003595.P1507815951295678395

`A033851(n+1)/35`
-/

namespace A003595.P1507815951295678395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033851 (n + 1) : ℚ) / 35

end

end A003595.P1507815951295678395

/-! ## A003595.P15765825824969111017

`record[A033851(A133310(n))/35]`
-/

namespace A003595.P15765825824969111017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033851 (A133310 n).toNat : ℚ) / 35

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003595.P15765825824969111017

/-! ## A003595.P15608360811072872443

`record[A033851(A246694(n))/35]`
-/

namespace A003595.P15608360811072872443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033851 (A246694 n).toNat : ℚ) / 35

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003595.P15608360811072872443

/-! ## A003595.P15840240626866837501

`record[A033851(A106466(n))/35]`
-/

namespace A003595.P15840240626866837501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033851 (A106466 n).toNat : ℚ) / 35

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003595.P15840240626866837501

/-! ## A003595.P9164092295904402271

`record[A108347(n+1)/gcd(3, A108347(n+1))]`
-/

namespace A003595.P9164092295904402271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108347 (n + 1) : ℚ) / (Int.gcd 3 (A108347 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003595.P9164092295904402271

/-! ## A003595.P14477315038706319861

`∩[A108347(n+1), A108513(n+1)]`
-/

namespace A003595.P14477315038706319861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003595.P14477315038706319861

/-! ## A003595.P515569268083512164

`record[A033851(A134478(n))/35]`
-/

namespace A003595.P515569268083512164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033851 (A134478 n).toNat : ℚ) / 35

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003595.P515569268083512164

/-! ## A003595.P9830621873810343170

`∩[A108513(n+1), A342572(n+1)]`
-/

namespace A003595.P9830621873810343170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003595.P9830621873810343170

/-!
# A003596: Numbers of the form 2^i * 11^j.

The programs for A003596, there is no canonical definition to state claims against.
-/

/-! ## A003596.P16036110429278730644

`A033848(n+1)/22`
-/

namespace A003596.P16036110429278730644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033848 (n + 1) : ℚ) / 22

end

end A003596.P16036110429278730644

/-! ## A003596.P18188202593486531262

`∪[2*A107988(n+1), A107988(n+1)]`
-/

namespace A003596.P18188202593486531262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003596.P18188202593486531262

/-! ## A003596.P3822440675194606247

`∩[A051038(n+1), A385344(n+1)]`
-/

namespace A003596.P3822440675194606247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003596.P3822440675194606247

/-! ## A003596.P17469534325036705569

`∩[A325663(n+1), A385344(n+1)]`
-/

namespace A003596.P17469534325036705569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003596.P17469534325036705569

/-! ## A003596.P1045210459911048606

`∩[A080197(n+1), A385344(n+1)]`
-/

namespace A003596.P1045210459911048606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003596.P1045210459911048606

/-! ## A003596.P12218334291846689852

`∩[A080681(n+1), A385344(n+1)]`
-/

namespace A003596.P12218334291846689852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003596.P12218334291846689852

/-! ## A003596.P527219931686707828

`∩[A080682(n+1), A385344(n+1)]`
-/

namespace A003596.P527219931686707828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003596.P527219931686707828

/-! ## A003596.P3160512450969293053

`∩[A080683(n+1), A385344(n+1)]`
-/

namespace A003596.P3160512450969293053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003596.P3160512450969293053

/-!
# A003597: Numbers of the form 3^i*11^j.

The programs for A003597, there is no canonical definition to state claims against.
-/

/-! ## A003597.P1566532141347812833

`∪[3*A108687(n+1), A108687(n+1)]`
-/

namespace A003597.P1566532141347812833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003597.P1566532141347812833

/-! ## A003597.P12761149283365207006

`∩[A325663(n+1), A331029(n+1)]`
-/

namespace A003597.P12761149283365207006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003597.P12761149283365207006

/-! ## A003597.P8831032653190991998

`∩[A033637(n+1), A057261(n+1)]`
-/

namespace A003597.P8831032653190991998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003597.P8831032653190991998

/-! ## A003597.P11368015630312596701

`∩[A051038(n+1), A057261(n+1)]`
-/

namespace A003597.P11368015630312596701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003597.P11368015630312596701

/-! ## A003597.P14997150274601632959

`∩[A057261(n+1), A057292(n+1)]`
-/

namespace A003597.P14997150274601632959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003597.P14997150274601632959

/-! ## A003597.P10464092335088082891

`∩[A057261(n+1), A084034(n+1)]`
-/

namespace A003597.P10464092335088082891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003597.P10464092335088082891

/-! ## A003597.P7378840180895754090

`∩[A057261(n+1), A331029(n+1)]`
-/

namespace A003597.P7378840180895754090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003597.P7378840180895754090

/-!
# A003598: Numbers of the form 5^i * 11^j.

The programs for A003598, there is no canonical definition to state claims against.
-/

/-! ## A003598.P11167237415482750822

`∩[A051038(n+1), A056739(n+1)]`
-/

namespace A003598.P11167237415482750822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003598.P11167237415482750822

/-! ## A003598.P15876461542151700607

`∩[A056739(n+1), A325663(n+1)]`
-/

namespace A003598.P15876461542151700607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003598.P15876461542151700607

/-! ## A003598.P4533648060997674349

`∩[A056739(n+1), A084034(n+1)]`
-/

namespace A003598.P4533648060997674349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003598.P4533648060997674349

/-! ## A003598.P3073720640199818574

`∩[A056739(n+1), A080197(n+1)]`
-/

namespace A003598.P3073720640199818574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003598.P3073720640199818574

/-! ## A003598.P12644998674264760199

`∩[A033637(n+1), A056739(n+1)]`
-/

namespace A003598.P12644998674264760199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003598.P12644998674264760199

/-!
# A003599: Numbers of the form 7^i*11^j.

The programs for A003599, there is no canonical definition to state claims against.
-/

/-! ## A003599.P10142822572479908963

`∩[A033637(n+1), A057290(n+1)]`
-/

namespace A003599.P10142822572479908963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003599.P10142822572479908963

/-! ## A003599.P5290130811538507514

`∩[A051038(n+1), A057290(n+1)]`
-/

namespace A003599.P5290130811538507514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003599.P5290130811538507514

/-! ## A003599.P18006571815371834979

`∩[A057290(n+1), A080197(n+1)]`
-/

namespace A003599.P18006571815371834979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003599.P18006571815371834979

/-! ## A003599.P11292900544616438992

`∩[A057290(n+1), A084034(n+1)]`
-/

namespace A003599.P11292900544616438992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003599.P11292900544616438992

/-! ## A003599.P15271810139965361642

`∑{d}[A003595(n+1), A003972(#)]`
-/

namespace A003599.P15271810139965361642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A003599.P15271810139965361642

