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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A109500: Number of closed walks of length n on the complete graph on 6 nodes from a given node.

The programs for A109500, the canonical program `A109500.P11229190263320286540` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109500 has offset 0).

The definition of A109500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109500.P11229190263320286540

`5^(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109500

/-- `5^(n-1)-a(n-1)` -/
def P11229190263320286540.Spec : Prop :=
  ∀ n, P11229190263320286540.a n = (A109500 n : ℚ)

end A109500

/-! ## A109500.P13372508490131686109

`(5^n+5*(-1)^n)/6`
-/

namespace A109500.P13372508490131686109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) + 5 * (-1) ^ n : ℚ) / 6

end

end A109500.P13372508490131686109

namespace A109500

/-- `(5^n+5*(-1)^n)/6` -/
def P13372508490131686109.Spec : Prop :=
  ∀ n, P13372508490131686109.a n = (A109500 n : ℚ)

end A109500

/-! ## A109500.P6956441051378038057

`ogf((-1+4x)/(-1+4x+5x^2))`
-/

namespace A109500.P6956441051378038057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -4, -5] n

end

end A109500.P6956441051378038057

namespace A109500

/-- `ogf((-1+4x)/(-1+4x+5x^2))` -/
def P6956441051378038057.Spec : Prop :=
  ∀ n, P6956441051378038057.a n = A109500 n

end A109500

/-! ## A109500.P15208330649256141270

`5*xor(1, a(n-1))` with `a(0)=1`
-/

namespace A109500.P15208330649256141270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * Nat.xor 1 (a (n - 1))

end

end A109500.P15208330649256141270

namespace A109500

/-- `5*xor(1, a(n-1))` -/
def P15208330649256141270.Spec : Prop :=
  ∀ n, (P15208330649256141270.a n : ℤ) = A109500 n

end A109500

/-! ## A109500.P5989443992663091281

`lcm(5, xor(1, a(n-1)))` with `a(0)=1`
-/

namespace A109500.P5989443992663091281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (Nat.xor 1 (a (n - 1)))

end

end A109500.P5989443992663091281

namespace A109500

/-- `lcm(5, xor(1, a(n-1)))` -/
def P5989443992663091281.Spec : Prop :=
  ∀ n, (P5989443992663091281.a n : ℤ) = A109500 n

end A109500

/-! ## A109500.P51397618738842066

`4*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A109500.P51397618738842066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2)

end

end A109500.P51397618738842066

namespace A109500

/-- `4*a(n-1)+5*a(n-2)` -/
def P51397618738842066.Spec : Prop :=
  ∀ n, (P51397618738842066.a n : ℤ) = A109500 n

end A109500

/-! ## A109500.P1575751286832798582

`a(n-2)-5*(a(n-3)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A109500.P1575751286832798582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  a (n - 2) - 5 * (a (n - 3) - a (n - 1))

end

end A109500.P1575751286832798582

namespace A109500

/-- `a(n-2)-5*(a(n-3)-a(n-1))` -/
def P1575751286832798582.Spec : Prop :=
  ∀ n, P1575751286832798582.a n = A109500 n

end A109500

/-! ## A109500.P9737221691612101450

`xor(1, A015531(n))`
-/

namespace A109500.P9737221691612101450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A015531 n)

end

end A109500.P9737221691612101450

namespace A109500

/-- `xor(1, A015531(n))` -/
def P9737221691612101450.Spec : Prop :=
  ∀ n, P9737221691612101450.a n = A109500 n

end A109500

/-! ## A109500.P600656567505040146

`abs(2-A166122(n))`
-/

namespace A109500.P600656567505040146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A166122 n|

end

end A109500.P600656567505040146

namespace A109500

/-- `abs(2-A166122(n))` -/
def P600656567505040146.Spec : Prop :=
  ∀ n, P600656567505040146.a n = A109500 n

end A109500

/-! ## A109500.P16582085617243937272

`A033999(n)+A015531(n)`
-/

namespace A109500.P16582085617243937272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A015531 n

end

end A109500.P16582085617243937272

namespace A109500

/-- `A033999(n)+A015531(n)` -/
def P16582085617243937272.Spec : Prop :=
  ∀ n, P16582085617243937272.a n = A109500 n

end A109500

/-! ## A109500.P5588462169117811582

`A054885(n)+A054884(n)`
-/

namespace A109500.P5588462169117811582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054885 n + A054884 n

end

end A109500.P5588462169117811582

namespace A109500

/-- `A054885(n)+A054884(n)` -/
def P5588462169117811582.Spec : Prop :=
  ∀ n, P5588462169117811582.a n = A109500 n

end A109500

/-! ## A109500.P13056851156562348611

`A062157(n+1)+A015531(n)`
-/

namespace A109500.P13056851156562348611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) + A015531 n

end

end A109500.P13056851156562348611

namespace A109500

/-- `A062157(n+1)+A015531(n)` -/
def P13056851156562348611.Spec : Prop :=
  ∀ n, P13056851156562348611.a n = A109500 n

end A109500

/-! ## A109500.P15622599167002360232

`A015531(n)+1-A010673(n)`
-/

namespace A109500.P15622599167002360232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + (1 - A010673 n)

end

end A109500.P15622599167002360232

namespace A109500

/-- `A015531(n)+1-A010673(n)` -/
def P15622599167002360232.Spec : Prop :=
  ∀ n, P15622599167002360232.a n = A109500 n

end A109500

/-! ## A109500.P16242470514330576457

`A133730(2*n)+A015531(n)`
-/

namespace A109500.P16242470514330576457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (2 * n) + A015531 n

end

end A109500.P16242470514330576457

namespace A109500

/-- `A133730(2*n)+A015531(n)` -/
def P16242470514330576457.Spec : Prop :=
  ∀ n, P16242470514330576457.a n = A109500 n

end A109500

/-! ## A109500.P6860975544069328030

`A015531(n)+A054878(n)-A015518(n)`
-/

namespace A109500.P6860975544069328030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + (A054878 n - A015518 n)

end

end A109500.P6860975544069328030

namespace A109500

/-- `A015531(n)+A054878(n)-A015518(n)` -/
def P6860975544069328030.Spec : Prop :=
  ∀ n, P6860975544069328030.a n = A109500 n

end A109500

/-! ## A109500.P10592545782146384750

`A015531(n)+A078008(n)-A001045(n)`
-/

namespace A109500.P10592545782146384750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + (A078008 n - A001045 n)

end

end A109500.P10592545782146384750

namespace A109500

/-- `A015531(n)+A078008(n)-A001045(n)` -/
def P10592545782146384750.Spec : Prop :=
  ∀ n, P10592545782146384750.a n = A109500 n

end A109500

/-! ## A109500.P11014663474935594986

`A015531(n)+A109499(n)-A015521(n)`
-/

namespace A109500.P11014663474935594986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n + (A109499 n - A015521 n)

end

end A109500.P11014663474935594986

namespace A109500

/-- `A015531(n)+A109499(n)-A015521(n)` -/
def P11014663474935594986.Spec : Prop :=
  ∀ n, P11014663474935594986.a n = A109500 n

end A109500

/-! ## A109500.P14859923611361664515

`A000035(n+1)+A015531(n)-A000035(n)`
-/

namespace A109500.P14859923611361664515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A015531 n - A000035 n)

end

end A109500.P14859923611361664515

namespace A109500

/-- `A000035(n+1)+A015531(n)-A000035(n)` -/
def P14859923611361664515.Spec : Prop :=
  ∀ n, P14859923611361664515.a n = A109500 n

end A109500

/-! ## A109500.P1202075054393883009

`A100284(n)-A056594(n+1)*A056594(n+1)`
-/

namespace A109500.P1202075054393883009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100284 n - A056594 (n + 1) * A056594 (n + 1)

end

end A109500.P1202075054393883009

namespace A109500

/-- `A100284(n)-A056594(n+1)*A056594(n+1)` -/
def P1202075054393883009.Spec : Prop :=
  ∀ n, P1202075054393883009.a n = A109500 n

end A109500

/-!
# A109501: Number of closed walks of length n on the complete graph on 7 nodes from a given node.

The programs for A109501, the canonical program `A109501.P642477870986599064` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109501 has offset 0).

The definition of A109501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109501.P4454054480741620307

`6^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A109501.P4454054480741620307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A109501.P4454054480741620307

namespace A109501

/-- `6^(n-1)-a(n-1)` -/
def P4454054480741620307.Spec : Prop :=
  ∀ n, P4454054480741620307.a n = (A109501 n : ℚ)

end A109501

/-! ## A109501.P642477870986599064

`5*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109501

/-- `5*a(n-1)+6*a(n-2)` -/
def P642477870986599064.Spec : Prop :=
  ∀ n, (P642477870986599064.a n : ℤ) = A109501 n

theorem P642477870986599064.correct : P642477870986599064.Spec := by
  intro n
  simp only [A109501]

end A109501

/-! ## A109501.P4097710124150186086

`(6^n+6*(-1)^n)/7`
-/

namespace A109501.P4097710124150186086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) + 6 * (-1) ^ n : ℚ) / 7

end

end A109501.P4097710124150186086

namespace A109501

/-- `(6^n+6*(-1)^n)/7` -/
def P4097710124150186086.Spec : Prop :=
  ∀ n, P4097710124150186086.a n = (A109501 n : ℚ)

theorem P4097710124150186086.correct : P4097710124150186086.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A109501, Nat.add_sub_cancel, A109501.P4097710124150186086.a, A109501.P642477870986599064.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A109501, Nat.add_sub_cancel, A109501.P4097710124150186086.a, A109501.P642477870986599064.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A109501

/-! ## A109501.P11016854449736003708

`ogf((-1+5x)/(-1+5x+6x^2))`
-/

namespace A109501.P11016854449736003708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -5, -6] n

end

end A109501.P11016854449736003708

namespace A109501

/-- `ogf((-1+5x)/(-1+5x+6x^2))` -/
def P11016854449736003708.Spec : Prop :=
  ∀ n, P11016854449736003708.a n = A109501 n

end A109501

/-! ## A109501.P2614908808324877026

`A015540(n)+(-1)^n`
-/

namespace A109501.P2614908808324877026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n + (-1) ^ n

end

end A109501.P2614908808324877026

namespace A109501

/-- `A015540(n)+(-1)^n` -/
def P2614908808324877026.Spec : Prop :=
  ∀ n, P2614908808324877026.a n = A109501 n

end A109501

/-! ## A109501.P13157691813330073115

`6*(A033999(n)+a(n-1))` with `a(0)=1`
-/

namespace A109501.P13157691813330073115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * (A033999 n + a (n - 1))

end

end A109501.P13157691813330073115

namespace A109501

/-- `6*(A033999(n)+a(n-1))` -/
def P13157691813330073115.Spec : Prop :=
  ∀ n, P13157691813330073115.a n = A109501 n

end A109501

/-! ## A109501.P13193016660833558242

`6*(a(n-1)-A165326(n))` with `a(0)=1`
-/

namespace A109501.P13193016660833558242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * (a (n - 1) - A165326 n)

end

end A109501.P13193016660833558242

namespace A109501

/-- `6*(a(n-1)-A165326(n))` -/
def P13193016660833558242.Spec : Prop :=
  ∀ n, P13193016660833558242.a n = A109501 n

end A109501

/-! ## A109501.P9672785903829771058

`A033999(n)+A015540(n)`
-/

namespace A109501.P9672785903829771058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A015540 n

end

end A109501.P9672785903829771058

namespace A109501

/-- `A033999(n)+A015540(n)` -/
def P9672785903829771058.Spec : Prop :=
  ∀ n, P9672785903829771058.a n = A109501 n

end A109501

/-! ## A109501.P10253970569791331191

`A062157(n+1)+A015540(n)`
-/

namespace A109501.P10253970569791331191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) + A015540 n

end

end A109501.P10253970569791331191

namespace A109501

/-- `A062157(n+1)+A015540(n)` -/
def P10253970569791331191.Spec : Prop :=
  ∀ n, P10253970569791331191.a n = A109501 n

end A109501

/-! ## A109501.P15019894154771181870

`Δ[ceil(A003464(n)/7)]`
-/

namespace A109501.P15019894154771181870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003464 n : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109501.P15019894154771181870

namespace A109501

/-- `Δ[ceil(A003464(n)/7)]` -/
def P15019894154771181870.Spec : Prop :=
  ∀ n, P15019894154771181870.a n = A109501 n

end A109501

/-!
# A109502: Array read by antidiagonals: T(m,n) is the number of closed walks of length n on the complete graph on m nodes, m >= 1, n >= 0.

The programs for A109502, there is no canonical definition to state claims against.
-/

/-! ## A109502.P14429585669831571926

`A255740(n+1)%A063074(A098825(n))`
-/

namespace A109502.P14429585669831571926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255740 (n + 1)) (A063074 (A098825 n).toNat)

end

end A109502.P14429585669831571926

/-! ## A109502.P547752813119626111

`lcm(A248908(A203647(n+1)), A274190(n))`
-/

namespace A109502.P547752813119626111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A248908 (A203647 (n + 1)).toNat) (A274190 n)

end

end A109502.P547752813119626111

/-! ## A109502.P5383143288996555368

`A352513(A048993(n))+A010054(n)`
-/

namespace A109502.P5383143288996555368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A048993 n).toNat + A010054 n

end

end A109502.P5383143288996555368

/-! ## A109502.P10182691611355977721

`A352513(A048993(n))+char[A000217(n)]`
-/

namespace A109502.P10182691611355977721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A048993 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A109502.P10182691611355977721

/-! ## A109502.P16156817422231913471

`and(A017185(A333509(n+1)), A290353(n))`
-/

namespace A109502.P16156817422231913471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017185 (A333509 (n + 1)).toNat) (A290353 n)

end

end A109502.P16156817422231913471

/-!
# A109504: Chen primes p such that p + 2 is triangular.

The programs for A109504, there is no canonical definition to state claims against.
-/

/-! ## A109504.P3369368214546525433

`∩[A034856(n+1), A109611(n+1)]`
-/

namespace A109504.P3369368214546525433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109504.P3369368214546525433

/-! ## A109504.P17503160623420357810

`∩[A109611(n+1), A124199(n+1)]`
-/

namespace A109504.P17503160623420357810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109504.P17503160623420357810

/-! ## A109504.P13955954278070089047

`∩[A109611(n+1), A275660(n+1)]`
-/

namespace A109504.P13955954278070089047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109504.P13955954278070089047

/-! ## A109504.P6772843328129661415

`p?[A068443(n+1)-2]`
-/

namespace A109504.P6772843328129661415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068443 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109504.P6772843328129661415

/-! ## A109504.P8985378902684505346

`p?[A124000(n+1)-2]`
-/

namespace A109504.P8985378902684505346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109504.P8985378902684505346

/-!
# A109506: Expansion of (1 - phi(-q)^4)/ 8 in powers of q where phi() is a Ramanujan theta function.

The programs for A109506, the canonical program `A109506.P11028972124802489963` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109506 has offset 1).

The definition of A109506 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046897, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109506.P11028972124802489963

`(-1)^n*A046897(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109506

/-- `(-1)^n*A046897(n+1)` -/
def P11028972124802489963.Spec : Prop :=
  ∀ n, P11028972124802489963.a n = A109506 (n + 1)

theorem P11028972124802489963.correct : P11028972124802489963.Spec := by
  intro n
  simp only [A109506, Nat.add_sub_cancel]

end A109506

/-! ## A109506.P15233394764072880105

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#]`
-/

namespace A109506.P15233394764072880105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((d : ℚ) + (n + 1 : ℚ) / (d : ℚ) : ℝ) * (d : ℝ)

end

end A109506.P15233394764072880105

namespace A109506

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#]` -/
def P15233394764072880105.Spec : Prop :=
  ∀ n, P15233394764072880105.a n = (A109506 (n + 1) : ℝ)

end A109506

/-! ## A109506.P11362568138960329033

`Δ[xor(n, -2)]*A000593(n+1)`
-/

namespace A109506.P11362568138960329033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000593 (n + 1)

end

end A109506.P11362568138960329033

namespace A109506

/-- `Δ[xor(n, -2)]*A000593(n+1)` -/
def P11362568138960329033.Spec : Prop :=
  ∀ n, P11362568138960329033.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P6409266383267793973

`(-1)^n*A000203((n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A109506.P6409266383267793973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A109506.P6409266383267793973

namespace A109506

/-- `(-1)^n*A000203((n+1)/ceil(xor(n, n+1)/4))` -/
def P6409266383267793973.Spec : Prop :=
  ∀ n, P6409266383267793973.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P762740716709976828

`A143348(A259445(n+1))`
-/

namespace A109506.P762740716709976828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (A259445 (n + 1)).toNat

end

end A109506.P762740716709976828

namespace A109506

/-- `A143348(A259445(n+1))` -/
def P762740716709976828.Spec : Prop :=
  ∀ n, P762740716709976828.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P11712080595345439748

`A010684(n)*A115607(n+1)`
-/

namespace A109506.P11712080595345439748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A115607 (n + 1)

end

end A109506.P11712080595345439748

namespace A109506

/-- `A010684(n)*A115607(n+1)` -/
def P11712080595345439748.Spec : Prop :=
  ∀ n, P11712080595345439748.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P18132902775992094507

`A046897(n+1)/A033999(n)`
-/

namespace A109506.P18132902775992094507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A109506.P18132902775992094507

namespace A109506

/-- `A046897(n+1)/A033999(n)` -/
def P18132902775992094507.Spec : Prop :=
  ∀ n, P18132902775992094507.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P13160856100336814946

`2*A115607(n+1)-A000593(n+1)`
-/

namespace A109506.P13160856100336814946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115607 (n + 1) - A000593 (n + 1)

end

end A109506.P13160856100336814946

namespace A109506

/-- `2*A115607(n+1)-A000593(n+1)` -/
def P13160856100336814946.Spec : Prop :=
  ∀ n, P13160856100336814946.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P8831840077301479268

`2*A113184(n+1)-A215947(n+1)`
-/

namespace A109506.P8831840077301479268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113184 (n + 1) - A215947 (n + 1)

end

end A109506.P8831840077301479268

namespace A109506

/-- `2*A113184(n+1)-A215947(n+1)` -/
def P8831840077301479268.Spec : Prop :=
  ∀ n, P8831840077301479268.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P16013077472606951786

`A239050(n+1)-A062731(A022998(n+1))`
-/

namespace A109506.P16013077472606951786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1) - A062731 (A022998 (n + 1)).toNat

end

end A109506.P16013077472606951786

namespace A109506

/-- `A239050(n+1)-A062731(A022998(n+1))` -/
def P16013077472606951786.Spec : Prop :=
  ∀ n, P16013077472606951786.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P5347064047371803413

`A046897(n+1)/A000118(n)*A096727(n)`
-/

namespace A109506.P5347064047371803413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) : ℚ) / (A000118 n : ℚ) * (A096727 n : ℚ)

end

end A109506.P5347064047371803413

namespace A109506

/-- `A046897(n+1)/A000118(n)*A096727(n)` -/
def P5347064047371803413.Spec : Prop :=
  ∀ n, P5347064047371803413.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P16177101763567567946

`A046897(n+1)/A029841(n)*A112143(n)`
-/

namespace A109506.P16177101763567567946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) : ℚ) / (A029841 n : ℚ) * (A112143 n : ℚ)

end

end A109506.P16177101763567567946

namespace A109506

/-- `A046897(n+1)/A029841(n)*A112143(n)` -/
def P16177101763567567946.Spec : Prop :=
  ∀ n, P16177101763567567946.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P1371211927866845618

`A046897(n+1)*A112151(n)/A112152(n)`
-/

namespace A109506.P1371211927866845618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) * A112151 n : ℚ) / (A112152 n : ℚ)

end

end A109506.P1371211927866845618

namespace A109506

/-- `A046897(n+1)*A112151(n)/A112152(n)` -/
def P1371211927866845618.Spec : Prop :=
  ∀ n, P1371211927866845618.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P15526030932889312481

`A046897(n+1)*A097057(n)/A133690(n)`
-/

namespace A109506.P15526030932889312481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) * A097057 n : ℚ) / (A133690 n : ℚ)

end

end A109506.P15526030932889312481

namespace A109506

/-- `A046897(n+1)*A097057(n)/A133690(n)` -/
def P15526030932889312481.Spec : Prop :=
  ∀ n, P15526030932889312481.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P409546298757626856

`A186690(n+1)+A186690(n+1)-A002129(n+1)`
-/

namespace A109506.P409546298757626856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186690 (n + 1) + (A186690 (n + 1) - A002129 (n + 1))

end

end A109506.P409546298757626856

namespace A109506

/-- `A186690(n+1)+A186690(n+1)-A002129(n+1)` -/
def P409546298757626856.Spec : Prop :=
  ∀ n, P409546298757626856.a n = A109506 (n + 1)

end A109506

/-! ## A109506.P5298776250736084079

`A113184(n+1)*A185152(n+1)/A326238(n+1)`
-/

namespace A109506.P5298776250736084079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113184 (n + 1) * A185152 (n + 1) : ℚ) / (A326238 (n + 1) : ℚ)

end

end A109506.P5298776250736084079

namespace A109506

/-- `A113184(n+1)*A185152(n+1)/A326238(n+1)` -/
def P5298776250736084079.Spec : Prop :=
  ∀ n, P5298776250736084079.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P18384716785366442871

`A115607(n+1)*A285895(n+1)/A327095(n+1)`
-/

namespace A109506.P18384716785366442871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115607 (n + 1) * A285895 (n + 1) : ℚ) / (A327095 (n + 1) : ℚ)

end

end A109506.P18384716785366442871

namespace A109506

/-- `A115607(n+1)*A285895(n+1)/A327095(n+1)` -/
def P18384716785366442871.Spec : Prop :=
  ∀ n, P18384716785366442871.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P14170582622446700374

`A046897(n+1)/A001938(n)*A093160(n)`
-/

namespace A109506.P14170582622446700374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) : ℚ) / (A001938 n : ℚ) * (A093160 n : ℚ)

end

end A109506.P14170582622446700374

namespace A109506

/-- `A046897(n+1)/A001938(n)*A093160(n)` -/
def P14170582622446700374.Spec : Prop :=
  ∀ n, P14170582622446700374.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P3266813344728369244

`A005798(n+1)*A046897(n+1)/A092877(n+1)`
-/

namespace A109506.P3266813344728369244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) * A046897 (n + 1) : ℚ) / (A092877 (n + 1) : ℚ)

end

end A109506.P3266813344728369244

namespace A109506

/-- `A005798(n+1)*A046897(n+1)/A092877(n+1)` -/
def P3266813344728369244.Spec : Prop :=
  ∀ n, P3266813344728369244.a n = (A109506 (n + 1) : ℚ)

end A109506

/-! ## A109506.P10073421996510200103

`A348608(A004926(n+1))`
-/

namespace A109506.P10073421996510200103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348608 (A004926 (n + 1)).toNat

end

end A109506.P10073421996510200103

namespace A109506

/-- `A348608(A004926(n+1))` -/
def P10073421996510200103.Spec : Prop :=
  ∀ n, P10073421996510200103.a n = A109506 (n + 1)

end A109506

/-!
# A109507: Let x be a positive number, Lambda(d) = Moebius(d)*[log(x/d)]^2, f(m) = Sum_{d|m} Lambda(d), S(x) = Sum_{m <= x} f(m). Sequence gives nearest integer to S(n).

The programs for A109507, there is no canonical definition to state claims against.
-/

/-! ## A109507.P16541605465488910956

`or(A001221(A026898(n)), A079552(n))`
-/

namespace A109507.P16541605465488910956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A026898 n).toNat) (A079552 n)

end

end A109507.P16541605465488910956

/-! ## A109507.P17359271128936117756

`or(A305079(A357792(n)), A357778(n+1))`
-/

namespace A109507.P17359271128936117756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305079 (A357792 n).toNat) (A357778 (n + 1))

end

end A109507.P17359271128936117756

/-! ## A109507.P11394823918771128234

`eq[A342414(n+1), A384483(n+1)]`
-/

namespace A109507.P11394823918771128234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109507.P11394823918771128234

/-! ## A109507.P10317083241115767025

`or(A000035(A095587(n)), A079552(n))`
-/

namespace A109507.P10317083241115767025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A095587 n).toNat) (A079552 n)

end

end A109507.P10317083241115767025

/-! ## A109507.P750644722275554827

`A337120(n)-A099545(∏[A352745(n)])`
-/

namespace A109507.P750644722275554827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337120 n - A099545 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109507.P750644722275554827

/-!
# A109509: Number of hierarchical orderings with at least 2 elements on each level for n unlabeled elements. Unlabeled analog of A097236.

The programs for A109509, there is no canonical definition to state claims against.
-/

/-! ## A109509.P6951581028510896900

`xor(A006053(n), A240465(A033304(n)))`
-/

namespace A109509.P6951581028510896900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006053 n) (A240465 (A033304 n).toNat)

end

end A109509.P6951581028510896900

/-! ## A109509.P11118908537392841438

`A202306(A124500(n))-A001224(n+1)`
-/

namespace A109509.P11118908537392841438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 (A124500 n).toNat - A001224 (n + 1)

end

end A109509.P11118908537392841438

/-! ## A109509.P15829475512339906357

`xor(A006053(n), A178333(A343498(n+1)))`
-/

namespace A109509.P15829475512339906357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006053 n) (A178333 (A343498 (n + 1)).toNat)

end

end A109509.P15829475512339906357

/-! ## A109509.P4059870416498303443

`A162344(A051841(n+1))`
-/

namespace A109509.P4059870416498303443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A051841 (n + 1)).toNat

end

end A109509.P4059870416498303443

/-! ## A109509.P4094737494909197343

`A063524(A000744(n))+A006053(n)`
-/

namespace A109509.P4094737494909197343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A000744 n).toNat + A006053 n

end

end A109509.P4094737494909197343

/-!
# A109510: Values of n such that sigma(n)-2n (the abundance of n) is a (nonnegative) square.

The programs for A109510, there is no canonical definition to state claims against.
-/

/-! ## A109510.P12147918495471419015

`filter[A185031(n+1), A294936(#)]`
-/

namespace A109510.P12147918495471419015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A109510.P12147918495471419015

/-! ## A109510.P16492114774364074877

`filter[A185031(n+1), A378550(#)]`
-/

namespace A109510.P16492114774364074877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A109510.P16492114774364074877

/-! ## A109510.P13089301984821162511

`∩[A023196(n+1), A185031(n+1)]`
-/

namespace A109510.P13089301984821162511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109510.P13089301984821162511

/-! ## A109510.P4734708254472932556

`∩[A103288(n+1), A185031(n+1)]`
-/

namespace A109510.P4734708254472932556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109510.P4734708254472932556

/-! ## A109510.P18164546198582169568

`∩[A177052(n+1), A185031(n+1)]`
-/

namespace A109510.P18164546198582169568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109510.P18164546198582169568

/-!
# A109511: Number of subsets of the first n numbers having a common divisor greater than 1.

The programs for A109511, the canonical program `A109511.P175732434807543170` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109511 has offset 1).

The definition of A109511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085945, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109511.P175732434807543170

`A000225(n+1)-A085945(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A109511

/-- `A000225(n+1)-A085945(n+1)` -/
def P175732434807543170.Spec : Prop :=
  ∀ n, P175732434807543170.a n = A109511 (n + 1)

theorem P175732434807543170.correct : P175732434807543170.Spec := by
  intro n
  simp only [A109511, Nat.add_sub_cancel]

end A109511

/-! ## A109511.P7343468523697632384

`∑[A178472(n+1)]`
-/

namespace A109511.P7343468523697632384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109511.P7343468523697632384

namespace A109511

/-- `∑[A178472(n+1)]` -/
def P7343468523697632384.Spec : Prop :=
  ∀ n, P7343468523697632384.a n = A109511 (n + 1)

end A109511

/-! ## A109511.P11813123698078835984

`∑[A152061(n+1)/2]`
-/

namespace A109511.P11813123698078835984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152061 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109511.P11813123698078835984

namespace A109511

/-- `∑[A152061(n+1)/2]` -/
def P11813123698078835984.Spec : Prop :=
  ∀ n, P11813123698078835984.a n = (A109511 (n + 1) : ℚ)

end A109511

/-! ## A109511.P2150993145917782178

`∑[∑[Δ[A152061(n)]/2]]`
-/

namespace A109511.P2150993145917782178
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109511.P2150993145917782178

namespace A109511

/-- `∑[∑[Δ[A152061(n)]/2]]` -/
def P2150993145917782178.Spec : Prop :=
  ∀ n, P2150993145917782178.a n = (A109511 (n + 1) : ℚ)

end A109511

/-! ## A109511.P5197961312536045946

`∑[2^n-A000740(n+1)]`
-/

namespace A109511.P5197961312536045946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109511.P5197961312536045946

namespace A109511

/-- `∑[2^n-A000740(n+1)]` -/
def P5197961312536045946.Spec : Prop :=
  ∀ n, P5197961312536045946.a n = A109511 (n + 1)

end A109511

/-! ## A109511.P16891935850064435938

`A126646(n)-A085945(n+1)`
-/

namespace A109511.P16891935850064435938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A085945 (n + 1)

end

end A109511.P16891935850064435938

namespace A109511

/-- `A126646(n)-A085945(n+1)` -/
def P16891935850064435938.Spec : Prop :=
  ∀ n, P16891935850064435938.a n = A109511 (n + 1)

end A109511

/-!
# A109512: Integers which are not the sum of n and A001462(n).

The programs for A109512, the canonical program `A109512.P2454362305134620450` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109512 has offset 0).

The definition of A109512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109512.P2454362305134620450

`A095114(A028310(n))-1+n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109512

/-- `A095114(A028310(n))-1+n` -/
def P2454362305134620450.Spec : Prop :=
  ∀ n, P2454362305134620450.a n = A109512 n

theorem P2454362305134620450.correct : P2454362305134620450.Spec := by
  intro n
  simp only [A109512]

end A109512

/-! ## A109512.P2481306766640296107

`A095114(A000007(n)+n)+n-1`
-/

namespace A109512.P2481306766640296107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A000007 n + (n : ℤ)).toNat + ((n : ℤ) - 1)

end

end A109512.P2481306766640296107

namespace A109512

/-- `A095114(A000007(n)+n)+n-1` -/
def P2481306766640296107.Spec : Prop :=
  ∀ n, P2481306766640296107.a n = A109512 n

end A109512

/-! ## A109512.P13434508415259287004

`A095114(gcd(n, A008458(n)))+n-1`
-/

namespace A109512.P13434508415259287004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (Int.gcd (n : ℤ) (A008458 n)) + ((n : ℤ) - 1)

end

end A109512.P13434508415259287004

namespace A109512

/-- `A095114(gcd(n, A008458(n)))+n-1` -/
def P13434508415259287004.Spec : Prop :=
  ∀ n, P13434508415259287004.a n = A109512 n

end A109512

/-! ## A109512.P996750565013479027

`A095114(A028310(n))+A023443(n)`
-/

namespace A109512.P996750565013479027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A028310 n).toNat + A023443 n

end

end A109512.P996750565013479027

namespace A109512

/-- `A095114(A028310(n))+A023443(n)` -/
def P996750565013479027.Spec : Prop :=
  ∀ n, P996750565013479027.a n = A109512 n

theorem P996750565013479027.correct : P996750565013479027.Spec := by
  intro n
  simp only [A109512, Nat.add_sub_cancel, A109512.P996750565013479027.a, A109512.P2454362305134620450.a, A023443, A023443.P2966051066474347068.a, A028310, A028310.P18130301328277559831.a, A095114, A095114.P18128364600797049740.f1, A095114.P18128364600797049740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109512

/-! ## A109512.P9591157116592781940

`A095114(A123108(2*n))-1+n`
-/

namespace A109512.P9591157116592781940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A123108 (2 * n)).toNat - 1 + (n : ℤ)

end

end A109512.P9591157116592781940

namespace A109512

/-- `A095114(A123108(2*n))-1+n` -/
def P9591157116592781940.Spec : Prop :=
  ∀ n, P9591157116592781940.a n = A109512 n

end A109512

/-! ## A109512.P16509379255348055063

`A095114(A065033(2*n))+A023443(n)`
-/

namespace A109512.P16509379255348055063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A065033 (2 * n)).toNat + A023443 n

end

end A109512.P16509379255348055063

namespace A109512

/-- `A095114(A065033(2*n))+A023443(n)` -/
def P16509379255348055063.Spec : Prop :=
  ∀ n, P16509379255348055063.a n = A109512 n

end A109512

/-! ## A109512.P12502909939248541283

`A095114(A123108(2*n))+A023443(n)`
-/

namespace A109512.P12502909939248541283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A123108 (2 * n)).toNat + A023443 n

end

end A109512.P12502909939248541283

namespace A109512

/-- `A095114(A123108(2*n))+A023443(n)` -/
def P12502909939248541283.Spec : Prop :=
  ∀ n, P12502909939248541283.a n = A109512 n

end A109512

/-! ## A109512.P6990674449082104796

`A095114(A065033(2*n))-A024000(n)`
-/

namespace A109512.P6990674449082104796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (A065033 (2 * n)).toNat - A024000 n

end

end A109512.P6990674449082104796

namespace A109512

/-- `A095114(A065033(2*n))-A024000(n)` -/
def P6990674449082104796.Spec : Prop :=
  ∀ n, P6990674449082104796.a n = A109512 n

end A109512

/-! ## A109512.P16005207027815014688

`comp[A224731(n+1)]`
-/

namespace A109512.P16005207027815014688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109512.P16005207027815014688

namespace A109512

/-- `comp[A224731(n+1)]` -/
def P16005207027815014688.Spec : Prop :=
  ∀ n, (P16005207027815014688.a n : ℤ) = A109512 n

end A109512

/-! ## A109512.P11313637834807111131

`∑[A227177(∑[n-A093354(n+1)])]`
-/

namespace A109512.P11313637834807111131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109512.P11313637834807111131

namespace A109512

/-- `∑[A227177(∑[n-A093354(n+1)])]` -/
def P11313637834807111131.Spec : Prop :=
  ∀ n, P11313637834807111131.a n = A109512 n

end A109512

/-!
# A109515: Prime numbers that are the sum of two perfect powers.

The programs for A109515, there is no canonical definition to state claims against.
-/

/-! ## A109515.P2187256503411377983

`p?[A070049(n+1)]`
-/

namespace A109515.P2187256503411377983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109515.P2187256503411377983

/-! ## A109515.P899893899277488655

`filter[A070049(n+1), A010051(#)]`
-/

namespace A109515.P899893899277488655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A109515.P899893899277488655

/-! ## A109515.P211277373159066801

`∩[A000040(n+1), A070049(n+1)]`
-/

namespace A109515.P211277373159066801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P211277373159066801

/-! ## A109515.P14717605838872330475

`∩[A008578(n+1), A070049(n+1)]`
-/

namespace A109515.P14717605838872330475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P14717605838872330475

/-! ## A109515.P15833271658483285136

`∩[A045344(n+1), A070049(n+1)]`
-/

namespace A109515.P15833271658483285136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P15833271658483285136

/-! ## A109515.P11458992525136229203

`∩[A046022(n+1), A070049(n+1)]`
-/

namespace A109515.P11458992525136229203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P11458992525136229203

/-! ## A109515.P4882900910632029712

`∩[A051948(n+1), A070049(n+1)]`
-/

namespace A109515.P4882900910632029712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P4882900910632029712

/-! ## A109515.P11111069772754833845

`∩[A070049(n+1), A116974(n+1)]`
-/

namespace A109515.P11111069772754833845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P11111069772754833845

/-! ## A109515.P18007094494693183685

`∩[A070049(n+1), A158611(n+1)]`
-/

namespace A109515.P18007094494693183685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P18007094494693183685

/-! ## A109515.P4433935286877384607

`∩[A070049(n+1), A175787(n+1)]`
-/

namespace A109515.P4433935286877384607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P4433935286877384607

/-! ## A109515.P16732607443907184572

`∩[A070049(n+1), A182986(n+1)]`
-/

namespace A109515.P16732607443907184572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P16732607443907184572

/-! ## A109515.P5456967231706280623

`∩[A326715(n+1), A070049(n+1)]`
-/

namespace A109515.P5456967231706280623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P5456967231706280623

/-! ## A109515.P15909155807018043615

`p?[A327609(n+1)]`
-/

namespace A109515.P15909155807018043615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109515.P15909155807018043615

/-! ## A109515.P5432648578293736216

`filter[A327609(n+2), A010051(#)]`
-/

namespace A109515.P5432648578293736216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A109515.P5432648578293736216

/-! ## A109515.P11940124378662017074

`∩[A000040(n+1), A327609(n+1)]`
-/

namespace A109515.P11940124378662017074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P11940124378662017074

/-! ## A109515.P8836424409881113344

`∩[A045344(n+1), A327609(n+1)]`
-/

namespace A109515.P8836424409881113344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109515.P8836424409881113344

/-! ## A109515.P8201529663030284218

`p?[eq[2, A274459(n+1)]+1]`
-/

namespace A109515.P8201529663030284218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109515.P8201529663030284218

/-! ## A109515.P13277010496261423704

`filter[A070049(n+1), A080339(#)]`
-/

namespace A109515.P13277010496261423704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A109515.P13277010496261423704

/-! ## A109515.P17535999679142657414

`filter[A327609(n+3), A080339(#)]`
-/

namespace A109515.P17535999679142657414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A109515.P17535999679142657414

/-! ## A109515.P5432181956672439940

`p?[(A274459(n+1)-1)*A019554(n+1)]`
-/

namespace A109515.P5432181956672439940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274459 (n + 1) - 1) * A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109515.P5432181956672439940

/-!
# A109516: a(n) is the (1,2)-entry of the n-th power of the 2 X 2 matrix [0,1;n-1,n-1].

The programs for A109516, there is no canonical definition to state claims against.
-/

/-! ## A109516.P15873536923402711405

`A342120(∑[4*n])`
-/

namespace A109516.P15873536923402711405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109516.P15873536923402711405

/-! ## A109516.P12704445930778038029

`gcd(A000038(n), A342120(A046092(n)))`
-/

namespace A109516.P12704445930778038029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A342120 (A046092 n).toNat)

end

end A109516.P12704445930778038029

/-! ## A109516.P4692701583709984920

`lcm(A028310(n), A342120(A046092(n)))`
-/

namespace A109516.P4692701583709984920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A342120 (A046092 n).toNat)

end

end A109516.P4692701583709984920

/-! ## A109516.P1224514283958237445

`or(A000007(n), A342120(A046092(n)))`
-/

namespace A109516.P1224514283958237445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A342120 (A046092 n).toNat)

end

end A109516.P1224514283958237445

/-! ## A109516.P12571350418182131744

`char[A122350(n)]*A342120(A046092(n))`
-/

namespace A109516.P12571350418182131744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A342120 (A046092 n).toNat

end

end A109516.P12571350418182131744

/-!
# A109517: a(n) is the (1,2)-entry of the n-th power of the 2 X 2 matrix [0,1;n-1,2(n-1)].

The programs for A109517, there is no canonical definition to state claims against.
-/

/-! ## A109517.P16408719080026515372

`A342134(∑[4*n])`
-/

namespace A109517.P16408719080026515372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109517.P16408719080026515372

/-! ## A109517.P652043578833965305

`record[A342134(∑[A071045(n)])]`
-/

namespace A109517.P652043578833965305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342134 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109517.P652043578833965305

/-! ## A109517.P9155159176414906781

`record[A003982(n)*A342134(n)]`
-/

namespace A109517.P9155159176414906781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A342134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109517.P9155159176414906781

/-! ## A109517.P5783842180018440291

`record[A342134(n*A028242(n))]`
-/

namespace A109517.P5783842180018440291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342134 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109517.P5783842180018440291

/-! ## A109517.P1749422562370719888

`record[gcd(A037012(n), A342134(n))]`
-/

namespace A109517.P1749422562370719888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A342134 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109517.P1749422562370719888

/-!
# A109519: a(n) is the (1,2)-entry of the n-th power of the 2 X 2 matrix [0,-1;n-1,n-1].

The programs for A109519, there is no canonical definition to state claims against.
-/

/-! ## A109519.P15898903676662247107

`-A342129(∑[4*n])`
-/

namespace A109519.P15898903676662247107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A342129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109519.P15898903676662247107

/-! ## A109519.P4307110012152011601

`A000007(2*(n+1))-A342129(A046092(n))`
-/

namespace A109519.P4307110012152011601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * (n + 1)) - A342129 (A046092 n).toNat

end

end A109519.P4307110012152011601

/-! ## A109519.P13324174883411213190

`A003982(2*n+1)-A342129(A046092(n))`
-/

namespace A109519.P13324174883411213190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (2 * n + 1) - A342129 (A046092 n).toNat

end

end A109519.P13324174883411213190

/-! ## A109519.P7021187276456552693

`A000038(3*n+4)-A342129(A046092(n))`
-/

namespace A109519.P7021187276456552693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (3 * n + 4) - A342129 (A046092 n).toNat

end

end A109519.P7021187276456552693

/-!
# A109520: a(n)=the (1,2)-entry of the n-th power of the 2 X 2 matrix [0,-1;n-1,2*(n-1)].

The programs for A109520, there is no canonical definition to state claims against.
-/

/-! ## A109520.P3749874894917852165

`-A342133(∑[4*n])`
-/

namespace A109520.P3749874894917852165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A342133 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109520.P3749874894917852165

/-! ## A109520.P15137958281769331411

`A000035(2*n)-A342133(A008586(∑[n]))`
-/

namespace A109520.P15137958281769331411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A342133 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109520.P15137958281769331411

/-!
# A109522: a(n) = the (1,2)-entry in the matrix P^n + F^n, where the 2 X 2 matrices P and F are defined by P=[0,1;1,0] and F=[0,1;1,1].

The programs for A109522, the canonical program `A109522.P11227030013933118010` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109522 has offset 0).

The definition of A109522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109522.P15042704467634775531

`ogf((2x-x^2-2x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A109522.P15042704467634775531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, -2] [1, -1, -2, 1, 1] n

end

end A109522.P15042704467634775531

namespace A109522

/-- `ogf((2x-x^2-2x^3)/(1-x-2x^2+x^3+x^4))` -/
def P15042704467634775531.Spec : Prop :=
  ∀ n, P15042704467634775531.a n = A109522 n

end A109522

/-! ## A109522.P11227030013933118010

`2*a(n-2)+a(n-3)-1` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109522

/-- `2*a(n-2)+a(n-3)-1` -/
def P11227030013933118010.Spec : Prop :=
  ∀ n, P11227030013933118010.a n = A109522 n

theorem P11227030013933118010.correct : P11227030013933118010.Spec := by
  intro n
  simp only [A109522]

end A109522

/-! ## A109522.P9096858520494957368

`2*a(n-2)-(1-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A109522.P9096858520494957368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 * a (n - 2) - (1 - a (n - 3))

end

end A109522.P9096858520494957368

namespace A109522

/-- `2*a(n-2)-(1-a(n-3))` -/
def P9096858520494957368.Spec : Prop :=
  ∀ n, P9096858520494957368.a n = A109522 n

theorem P9096858520494957368.correct : P9096858520494957368.Spec := by
  intro n
  simp only [A109522, Nat.add_sub_cancel, A109522.P9096858520494957368.a, A109522.P11227030013933118010.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109522

/-! ## A109522.P477364860342664023

`(1-n)%2+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A109522.P477364860342664023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  Int.tmod (1 - (n : ℤ)) 2 + (a (n - 1) + a (n - 2))

end

end A109522.P477364860342664023

namespace A109522

/-- `(1-n)%2+a(n-1)+a(n-2)` -/
def P477364860342664023.Spec : Prop :=
  ∀ n, P477364860342664023.a n = A109522 n

end A109522

/-! ## A109522.P8736252360482937214

`1-gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A109522.P8736252360482937214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (Nat.gcd 2 n : ℤ) + (a (n - 1) + a (n - 2))

end

end A109522.P8736252360482937214

namespace A109522

/-- `1-gcd(2, n)+a(n-1)+a(n-2)` -/
def P8736252360482937214.Spec : Prop :=
  ∀ n, P8736252360482937214.a n = A109522 n

end A109522

/-! ## A109522.P6728502543178498468

`a(n-1)-((n-1)%2-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A109522.P6728502543178498468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - 1) 2 - a (n - 2))

end

end A109522.P6728502543178498468

namespace A109522

/-- `a(n-1)-((n-1)%2-a(n-2))` -/
def P6728502543178498468.Spec : Prop :=
  ∀ n, P6728502543178498468.a n = A109522 n

end A109522

/-! ## A109522.P1345194043077941991

`a(n-1)+a(n-2)-and(1, n+1)` with `a(0)=0, a(1)=2`
-/

namespace A109522.P1345194043077941991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 2) - (Nat.land 1 (n + 1) : ℤ))

end

end A109522.P1345194043077941991

namespace A109522

/-- `a(n-1)+a(n-2)-and(1, n+1)` -/
def P1345194043077941991.Spec : Prop :=
  ∀ n, P1345194043077941991.a n = A109522 n

end A109522

/-! ## A109522.P12652222576058228674

`a(n-2)-1+a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A109522.P12652222576058228674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 2) - 1 + (a (n - 2) + a (n - 3))

end

end A109522.P12652222576058228674

namespace A109522

/-- `a(n-2)-1+a(n-2)+a(n-3)` -/
def P12652222576058228674.Spec : Prop :=
  ∀ n, P12652222576058228674.a n = A109522 n

theorem P12652222576058228674.correct : P12652222576058228674.Spec := by
  intro n
  simp only [A109522, Nat.add_sub_cancel, A109522.P12652222576058228674.a, A109522.P11227030013933118010.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109522

/-! ## A109522.P12020334277084642437

`a(n-2)-(1-a(n-2)-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A109522.P12020334277084642437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 2) - (1 - a (n - 2) - a (n - 3))

end

end A109522.P12020334277084642437

namespace A109522

/-- `a(n-2)-(1-a(n-2)-a(n-3))` -/
def P12020334277084642437.Spec : Prop :=
  ∀ n, P12020334277084642437.a n = A109522 n

theorem P12020334277084642437.correct : P12020334277084642437.Spec := by
  intro n
  simp only [A109522, Nat.add_sub_cancel, A109522.P12020334277084642437.a, A109522.P11227030013933118010.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109522

/-! ## A109522.P2168579287116517500

`A000035(n)+A000045(n)`
-/

namespace A109522.P2168579287116517500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000045 n

end

end A109522.P2168579287116517500

namespace A109522

/-- `A000035(n)+A000045(n)` -/
def P2168579287116517500.Spec : Prop :=
  ∀ n, P2168579287116517500.a n = A109522 n

end A109522

/-! ## A109522.P766143882285744307

`A002062(n)-A052928(n)`
-/

namespace A109522.P766143882285744307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n - A052928 n

end

end A109522.P766143882285744307

namespace A109522

/-- `A002062(n)-A052928(n)` -/
def P766143882285744307.Spec : Prop :=
  ∀ n, P766143882285744307.a n = A109522 n

end A109522

/-! ## A109522.P6464574007342803677

`A001611(n)-A059841(n)`
-/

namespace A109522.P6464574007342803677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A059841 n

end

end A109522.P6464574007342803677

namespace A109522

/-- `A001611(n)-A059841(n)` -/
def P6464574007342803677.Spec : Prop :=
  ∀ n, P6464574007342803677.a n = A109522 n

end A109522

/-! ## A109522.P10881372509032676653

`A157726(n)-A176059(n)`
-/

namespace A109522.P10881372509032676653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - A176059 n

end

end A109522.P10881372509032676653

namespace A109522

/-- `A157726(n)-A176059(n)` -/
def P10881372509032676653.Spec : Prop :=
  ∀ n, P10881372509032676653.a n = A109522 n

end A109522

/-! ## A109522.P4890921828160624237

`A295619(n)-A106624(n)`
-/

namespace A109522.P4890921828160624237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295619 n - A106624 n

end

end A109522.P4890921828160624237

namespace A109522

/-- `A295619(n)-A106624(n)` -/
def P4890921828160624237.Spec : Prop :=
  ∀ n, P4890921828160624237.a n = A109522 n

end A109522

/-! ## A109522.P13121261379259555808

`A059841(n+1)+A000045(n)`
-/

namespace A109522.P13121261379259555808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A000045 n

end

end A109522.P13121261379259555808

namespace A109522

/-- `A059841(n+1)+A000045(n)` -/
def P13121261379259555808.Spec : Prop :=
  ∀ n, P13121261379259555808.a n = A109522 n

end A109522

/-! ## A109522.P6731492828429665161

`A008346(n)-A327767(n+1)`
-/

namespace A109522.P6731492828429665161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n - A327767 (n + 1)

end

end A109522.P6731492828429665161

namespace A109522

/-- `A008346(n)-A327767(n+1)` -/
def P6731492828429665161.Spec : Prop :=
  ∀ n, P6731492828429665161.a n = A109522 n

end A109522

/-! ## A109522.P10037803557047419763

`A014707(2*n)+A000045(n)`
-/

namespace A109522.P10037803557047419763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * n) + A000045 n

end

end A109522.P10037803557047419763

namespace A109522

/-- `A014707(2*n)+A000045(n)` -/
def P10037803557047419763.Spec : Prop :=
  ∀ n, P10037803557047419763.a n = A109522 n

end A109522

/-! ## A109522.P4413828996974841870

`A166486(2*n)+A000045(n)`
-/

namespace A109522.P4413828996974841870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A000045 n

end

end A109522.P4413828996974841870

namespace A109522

/-- `A166486(2*n)+A000045(n)` -/
def P4413828996974841870.Spec : Prop :=
  ∀ n, P4413828996974841870.a n = A109522 n

end A109522

/-! ## A109522.P9759640561436639167

`A079979(A008585(n+1))+A000045(n)`
-/

namespace A109522.P9759640561436639167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A008585 (n + 1)).toNat + A000045 n

end

end A109522.P9759640561436639167

namespace A109522

/-- `A079979(A008585(n+1))+A000045(n)` -/
def P9759640561436639167.Spec : Prop :=
  ∀ n, P9759640561436639167.a n = A109522 n

end A109522

/-! ## A109522.P12803846384014901826

`A000045(n)+A152271(n)-A057979(n)`
-/

namespace A109522.P12803846384014901826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A152271 n - A057979 n)

end

end A109522.P12803846384014901826

namespace A109522

/-- `A000045(n)+A152271(n)-A057979(n)` -/
def P12803846384014901826.Spec : Prop :=
  ∀ n, P12803846384014901826.a n = A109522 n

end A109522

/-!
# A109523: a(n) is the sum of the (1,2)- and (1,3)-entries of the matrix P^n + T^n, where the 3 X 3 matrices P and T are defined by P = [0,1,0; 0,0,1; 1,0,0] and T = [0,1,0; 0,0,1; 1,1,1].

The programs for A109523, there is no canonical definition to state claims against.
-/

/-! ## A109523.P6086865190856321877

`∑[A001590(n)]+n²%3`
-/

namespace A109523.P6086865190856321877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A109523.P6086865190856321877

/-! ## A109523.P10171881763130331974

`A000073(n+1)+round(4*n/3)%2`
-/

namespace A109523.P10171881763130331974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + Int.tmod (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))) 2

end

end A109523.P10171881763130331974

/-! ## A109523.P12762125886333286326

`A011655(n)+∑[A001590(n)]`
-/

namespace A109523.P12762125886333286326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109523.P12762125886333286326

/-! ## A109523.P14456915382934101037

`A011655(n)+A000073(n+1)`
-/

namespace A109523.P14456915382934101037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + A000073 (n + 1)

end

end A109523.P14456915382934101037

/-! ## A109523.P15981676877345228532

`A000073(n+1)+abs(A128834(n))`
-/

namespace A109523.P15981676877345228532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + |A128834 n|

end

end A109523.P15981676877345228532

/-!
# A109524: a(n)=the sum of the (1,2)- and (1,3)-entries of the matrix P^n + T^n, where the 3 X 3 matrices P and T are defined by P=[0,1,0;0,0,1;1,0,0] and T=[0,1,0;0,0,1;1,1,0].

The programs for A109524, there is no canonical definition to state claims against.
-/

/-! ## A109524.P9780741664110379085

`A182097(n+1)+n²%3`
-/

namespace A109524.P9780741664110379085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1) + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A109524.P9780741664110379085

/-! ## A109524.P15977728922118757809

`A052954(n+1)-char[3*n]`
-/

namespace A109524.P15977728922118757809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109524.P15977728922118757809

/-! ## A109524.P18252139019585553625

`A078027(n+6)+char[comp[3*n]]`
-/

namespace A109524.P18252139019585553625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 6) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109524.P18252139019585553625

/-! ## A109524.P9437170984416518854

`A000931(n+4)+(n+6)²%3`
-/

namespace A109524.P9437170984416518854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 4) + (((n + 6) ^ 2 % 3 : ℕ) : ℤ)

end

end A109524.P9437170984416518854

/-! ## A109524.P7222566110098343930

`A127682(2*n+1)+floor(1/gcd(3, n))`
-/

namespace A109524.P7222566110098343930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 1) + ⌊1 / (Nat.gcd 3 n : ℚ)⌋

end

end A109524.P7222566110098343930

/-!
# A109525: Expansion of g.f.: x*(2 - 4*x^3 - 5*x^4 - 3*x^5 - 2*x^6)/((1 - x)*(1 + x)*(1 + x^2)*(1 - x - x^2 - x^3 - x^4)).

The programs for A109525, the canonical program `A109525.P14170505245178233316` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109525 has offset 0).

The definition of A109525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-4x^4-5x^5-3x^6-2x^7)/(1-x-x^2-x^3-2x^4+x^5+x^6+x^7+x^8))` (program `A109525.P14170505245178233316`, by `A109525.P14170505245178233316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109525.P14170505245178233316

`ogf((2x-4x^4-5x^5-3x^6-2x^7)/(1-x-x^2-x^3-2x^4+x^5+x^6+x^7+x^8))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109525

/-- `ogf((2x-4x^4-5x^5-3x^6-2x^7)/(1-x-x^2-x^3-2x^4+x^5+x^6+x^7+x^8))` -/
def P14170505245178233316.Spec : Prop :=
  ∀ n, P14170505245178233316.a n = A109525 n

theorem P14170505245178233316.correct : P14170505245178233316.Spec := by
  intro n
  simp only [A109525]

end A109525

/-! ## A109525.P13814706912585357675

`n%2+A021913(n)+A000078(n+2)`
-/

namespace A109525.P13814706912585357675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A021913 n + A000078 (n + 2))

end

end A109525.P13814706912585357675

namespace A109525

/-- `n%2+A021913(n)+A000078(n+2)` -/
def P13814706912585357675.Spec : Prop :=
  ∀ n, P13814706912585357675.a n = A109525 n

end A109525

/-! ## A109525.P17246080575282243287

`A000035(n)+A021913(n)+A000078(n+2)`
-/

namespace A109525.P17246080575282243287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A021913 n + A000078 (n + 2))

end

end A109525.P17246080575282243287

namespace A109525

/-- `A000035(n)+A021913(n)+A000078(n+2)` -/
def P17246080575282243287.Spec : Prop :=
  ∀ n, P17246080575282243287.a n = A109525 n

end A109525

/-! ## A109525.P10286979922821343147

`log2(A000034(n))+A021913(n)+A000078(n+2)`
-/

namespace A109525.P10286979922821343147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ) + (A021913 n + A000078 (n + 2) : ℝ)

end

end A109525.P10286979922821343147

namespace A109525

/-- `log2(A000034(n))+A021913(n)+A000078(n+2)` -/
def P10286979922821343147.Spec : Prop :=
  ∀ n, P10286979922821343147.a n = (A109525 n : ℝ)

end A109525

/-! ## A109525.P7229616638333620525

`Δ[A004526(n)]+A021913(n)+A000078(n+2)`
-/

namespace A109525.P7229616638333620525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A021913 n + A000078 (n + 2))

end

end A109525.P7229616638333620525

namespace A109525

/-- `Δ[A004526(n)]+A021913(n)+A000078(n+2)` -/
def P7229616638333620525.Spec : Prop :=
  ∀ n, P7229616638333620525.a n = A109525 n

end A109525

/-! ## A109525.P12884352951430607383

`char[A005408(n)]+A021913(n)+A000078(n+2)`
-/

namespace A109525.P12884352951430607383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A021913 n + A000078 (n + 2))

end

end A109525.P12884352951430607383

namespace A109525

/-- `char[A005408(n)]+A021913(n)+A000078(n+2)` -/
def P12884352951430607383.Spec : Prop :=
  ∀ n, P12884352951430607383.a n = A109525 n

end A109525

/-! ## A109525.P11160226121531099778

`char[A000265(n+1)]+A021913(n)+A000078(n+2)`
-/

namespace A109525.P11160226121531099778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A021913 n + A000078 (n + 2))

end

end A109525.P11160226121531099778

namespace A109525

/-- `char[A000265(n+1)]+A021913(n)+A000078(n+2)` -/
def P11160226121531099778.Spec : Prop :=
  ∀ n, P11160226121531099778.a n = A109525 n

end A109525

/-!
# A109527: Prague bus clock sequence.

The programs for A109527, there is no canonical definition to state claims against.
-/

/-! ## A109527.P12333507454964217200

`A107846(A046489(n)*A126792(n))`
-/

namespace A109527.P12333507454964217200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A046489 n * A126792 n).toNat

end

end A109527.P12333507454964217200

/-! ## A109527.P11178272963019981793

`A070176(n*gcd(n, A294961(n+1)))`
-/

namespace A109527.P11178272963019981793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (n * Int.gcd (n : ℤ) (A294961 (n + 1)))

end

end A109527.P11178272963019981793

/-! ## A109527.P2645924074834747511

`A152489(A080458(n+1)+n)`
-/

namespace A109527.P2645924074834747511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152489 (A080458 (n + 1) + (n : ℤ)).toNat

end

end A109527.P2645924074834747511

/-! ## A109527.P10187588075346812660

`val(A000010(A083075(2*n+3)), 5)`
-/

namespace A109527.P10187588075346812660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A083075 (2 * n + 3)).toNat).toNat 5

end

end A109527.P10187588075346812660

/-! ## A109527.P1898846183328543052

`A152489(eq[A000120(n+4), A000120(n)])`
-/

namespace A109527.P1898846183328543052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152489 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109527.P1898846183328543052

/-!
# A109528: a(n)= 3*a(n-3) +3*a(n-6) +a(n-9).

The programs for A109528, the canonical program `A109528.P466323676009869903` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109528 has offset 0).

The definition of A109528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)+3*a(n-6)+a(n-9)` (program `A109528.P466323676009869903`, by `A109528.P466323676009869903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109528.P466323676009869903

`3*a(n-3)+3*a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=2, a(5)=12, a(6)=2, a(7)=9, a(8)=45`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109528

/-- `3*a(n-3)+3*a(n-6)+a(n-9)` -/
def P466323676009869903.Spec : Prop :=
  ∀ n, (P466323676009869903.a n : ℤ) = A109528 n

theorem P466323676009869903.correct : P466323676009869903.Spec := by
  intro n
  simp only [A109528]

end A109528

/-!
# A109529: a(n)= 3*a(n-3) +3*a(n-6) +a(n-9).

The programs for A109529, the canonical program `A109529.P11280084574889849183` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109529 has offset 0).

The definition of A109529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)+3*a(n-6)+a(n-9)` (program `A109529.P11280084574889849183`, by `A109529.P11280084574889849183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109529.P11280084574889849183

`3*a(n-3)+3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=9, a(5)=2, a(6)=9, a(7)=34, a(8)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109529

/-- `3*a(n-3)+3*a(n-6)+a(n-9)` -/
def P11280084574889849183.Spec : Prop :=
  ∀ n, (P11280084574889849183.a n : ℤ) = A109529 n

theorem P11280084574889849183.correct : P11280084574889849183.Spec := by
  intro n
  simp only [A109529]

end A109529

/-! ## A109529.P2530242710279920600

`A277709(A152947(3*a(n-3)))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A109529.P2530242710279920600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A277709 (A152947 (3 * a (n - 3)).toNat).toNat

end

end A109529.P2530242710279920600

namespace A109529

/-- `A277709(A152947(3*a(n-3)))` -/
def P2530242710279920600.Spec : Prop :=
  ∀ n, P2530242710279920600.a n = A109529 n

end A109529

/-! ## A109529.P3407597585998618392

`and(A006521(A323642(n+1)), A323642(3*(n+1)))`
-/

namespace A109529.P3407597585998618392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006521 (A323642 (n + 1)).toNat) (A323642 (3 * (n + 1)))

end

end A109529.P3407597585998618392

namespace A109529

/-- `and(A006521(A323642(n+1)), A323642(3*(n+1)))` -/
def P3407597585998618392.Spec : Prop :=
  ∀ n, P3407597585998618392.a n = A109529 n

end A109529

/-!
# A109530: a(n)= 3*a(n-3) +3*a(n-6) +a(n-9).

The programs for A109530, the canonical program `A109530.P15777831112510323656` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109530 has offset 0).

The definition of A109530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)+3*a(n-6)+a(n-9)` (program `A109530.P15777831112510323656`, by `A109530.P15777831112510323656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109530.P15777831112510323656

`3*a(n-3)+3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=6, a(4)=1, a(5)=9, a(6)=23, a(7)=2, a(8)=34`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109530

/-- `3*a(n-3)+3*a(n-6)+a(n-9)` -/
def P15777831112510323656.Spec : Prop :=
  ∀ n, (P15777831112510323656.a n : ℤ) = A109530 n

theorem P15777831112510323656.correct : P15777831112510323656.Spec := by
  intro n
  simp only [A109530]

end A109530

/-!
# A109531: a(n)= +a(n-3) +2*a(n-6) +a(n-9).

The programs for A109531, the canonical program `A109531.P10404051785208791820` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109531 has offset 0).

The definition of A109531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+2*a(n-6)+a(n-9)` (program `A109531.P10404051785208791820`, by `A109531.P10404051785208791820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109531.P10404051785208791820

`a(n-3)+2*a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4, a(6)=1, a(7)=3, a(8)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109531

/-- `a(n-3)+2*a(n-6)+a(n-9)` -/
def P10404051785208791820.Spec : Prop :=
  ∀ n, (P10404051785208791820.a n : ℤ) = A109531 n

theorem P10404051785208791820.correct : P10404051785208791820.Spec := by
  intro n
  simp only [A109531]

end A109531

/-!
# A109532: a(n)= +a(n-3) +2*a(n-6) +a(n-9).

The programs for A109532, the canonical program `A109532.P7647598010449435039` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109532 has offset 0).

The definition of A109532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+2*a(n-6)+a(n-9)` (program `A109532.P7647598010449435039`, by `A109532.P7647598010449435039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109532.P7647598010449435039

`a(n-3)+2*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=1, a(6)=3, a(7)=6, a(8)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109532

/-- `a(n-3)+2*a(n-6)+a(n-9)` -/
def P7647598010449435039.Spec : Prop :=
  ∀ n, (P7647598010449435039.a n : ℤ) = A109532 n

theorem P7647598010449435039.correct : P7647598010449435039.Spec := by
  intro n
  simp only [A109532]

end A109532

/-! ## A109532.P16049967914377406117

`A000930(A063942(Δ[n²]))`
-/

namespace A109532.P16049967914377406117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A063942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A109532.P16049967914377406117

namespace A109532

/-- `A000930(A063942(Δ[n²]))` -/
def P16049967914377406117.Spec : Prop :=
  ∀ n, P16049967914377406117.a n = A109532 n

end A109532

/-! ## A109532.P13474380487098462557

`A002478(A008611(abs(1-n)))`
-/

namespace A109532.P13474380487098462557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (A008611 |1 - (n : ℤ)|.toNat).toNat

end

end A109532.P13474380487098462557

namespace A109532

/-- `A002478(A008611(abs(1-n)))` -/
def P13474380487098462557.Spec : Prop :=
  ∀ n, P13474380487098462557.a n = A109532 n

end A109532

/-! ## A109532.P16720606747617668132

`A002478(Δ[A007997(n+3)])`
-/

namespace A109532.P16720606747617668132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (f1 (n + 1) - f1 n).toNat

end

end A109532.P16720606747617668132

namespace A109532

/-- `A002478(Δ[A007997(n+3)])` -/
def P16720606747617668132.Spec : Prop :=
  ∀ n, P16720606747617668132.a n = A109532 n

end A109532

/-! ## A109532.P12203165145393156416

`A002478(A008612(2*n+1))`
-/

namespace A109532.P12203165145393156416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (A008612 (2 * n + 1)).toNat

end

end A109532.P12203165145393156416

namespace A109532

/-- `A002478(A008612(2*n+1))` -/
def P12203165145393156416.Spec : Prop :=
  ∀ n, P12203165145393156416.a n = A109532 n

end A109532

/-! ## A109532.P6921538171807993985

`A199804(A063942(2*n+1))`
-/

namespace A109532.P6921538171807993985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (A063942 (2 * n + 1)).toNat

end

end A109532.P6921538171807993985

namespace A109532

/-- `A199804(A063942(2*n+1))` -/
def P6921538171807993985.Spec : Prop :=
  ∀ n, P6921538171807993985.a n = A109532 n

end A109532

/-! ## A109532.P5210117419879343960

`A000930(n-A063942(n+1))`
-/

namespace A109532.P5210117419879343960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 ((n : ℤ) - A063942 (n + 1)).toNat

end

end A109532.P5210117419879343960

namespace A109532

/-- `A000930(n-A063942(n+1))` -/
def P5210117419879343960.Spec : Prop :=
  ∀ n, P5210117419879343960.a n = A109532 n

end A109532

/-! ## A109532.P1549303029884604945

`A199804(n-A063942(n+1))`
-/

namespace A109532.P1549303029884604945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 ((n : ℤ) - A063942 (n + 1)).toNat

end

end A109532.P1549303029884604945

namespace A109532

/-- `A199804(n-A063942(n+1))` -/
def P1549303029884604945.Spec : Prop :=
  ∀ n, P1549303029884604945.a n = A109532 n

end A109532

/-! ## A109532.P8222056113300256501

`A002478(3*n-A047395(n+1))`
-/

namespace A109532.P8222056113300256501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 ((3 * n : ℤ) - A047395 (n + 1)).toNat

end

end A109532.P8222056113300256501

namespace A109532

/-- `A002478(3*n-A047395(n+1))` -/
def P8222056113300256501.Spec : Prop :=
  ∀ n, P8222056113300256501.a n = A109532 n

end A109532

/-! ## A109532.P11290069147002269766

`A002478(A004526(A133310(n)))`
-/

namespace A109532.P11290069147002269766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (A004526 (A133310 n).toNat).toNat

end

end A109532.P11290069147002269766

namespace A109532

/-- `A002478(A004526(A133310(n)))` -/
def P11290069147002269766.Spec : Prop :=
  ∀ n, P11290069147002269766.a n = A109532 n

end A109532

/-! ## A109532.P11050774624835224799

`A002478(A008611(2*n)-A008611(n))`
-/

namespace A109532.P11050774624835224799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (A008611 (2 * n) - A008611 n).toNat

end

end A109532.P11050774624835224799

namespace A109532

/-- `A002478(A008611(2*n)-A008611(n))` -/
def P11050774624835224799.Spec : Prop :=
  ∀ n, P11050774624835224799.a n = A109532 n

end A109532

/-! ## A109532.P7703597414826564246

`A000930(A008611(2*n+1)-Δ[A008611(2*n)])`
-/

namespace A109532.P7703597414826564246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A008611 (2 * n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A109532.P7703597414826564246

namespace A109532

/-- `A000930(A008611(2*n+1)-Δ[A008611(2*n)])` -/
def P7703597414826564246.Spec : Prop :=
  ∀ n, P7703597414826564246.a n = A109532 n

end A109532

/-! ## A109532.P5236056382233878027

`A000930(Δ[A008611(A002061(n))])`
-/

namespace A109532.P5236056382233878027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (f1 (n + 1) - f1 n).toNat

end

end A109532.P5236056382233878027

namespace A109532

/-- `A000930(Δ[A008611(A002061(n))])` -/
def P5236056382233878027.Spec : Prop :=
  ∀ n, P5236056382233878027.a n = A109532 n

end A109532

/-!
# A109533: a(n) = a(n-3) + 2*a(n-6) + a(n-9).

The programs for A109533, the canonical program `A109533.P2730390766524709493` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109533 has offset 0).

The definition of A109533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+2*a(n-6)+a(n-9)` (program `A109533.P2730390766524709493`, by `A109533.P2730390766524709493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109533.P2730390766524709493

`a(n-3)+2*a(n-6)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=1, a(5)=3, a(6)=5, a(7)=1, a(8)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109533

/-- `a(n-3)+2*a(n-6)+a(n-9)` -/
def P2730390766524709493.Spec : Prop :=
  ∀ n, (P2730390766524709493.a n : ℤ) = A109533 n

theorem P2730390766524709493.correct : P2730390766524709493.Spec := by
  intro n
  simp only [A109533]

end A109533

/-!
# A109534: a(0)=1, a(n)=n+a(n-1) if n mod 2=0, a(n)=3n-a(n-1) if n mod 2 = 1.

The programs for A109534, the canonical program `A109534.P13748415017501442149` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109534 has offset 0).

The definition of A109534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109534.P13748415017501442149

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=9, a(5)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109534

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P13748415017501442149.Spec : Prop :=
  ∀ n, P13748415017501442149.a n = A109534 n

theorem P13748415017501442149.correct : P13748415017501442149.Spec := by
  intro n
  simp only [A109534]

end A109534

/-! ## A109534.P13772517583001055

`xor(n, a(n-1)-n)+n` with `a(0)=1`
-/

namespace A109534.P13772517583001055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n : ℤ) (a (n - 1) - (n : ℤ)) + (n : ℤ)

end

end A109534.P13772517583001055

namespace A109534

/-- `xor(n, a(n-1)-n)+n` -/
def P13772517583001055.Spec : Prop :=
  ∀ n, P13772517583001055.a n = A109534 n

end A109534

/-! ## A109534.P8179398981641326668

`∑[gcd(4, n+1)]-lcm(2, n)+n`
-/

namespace A109534.P8179398981641326668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm 2 n : ℤ) + (n : ℤ)

end

end A109534.P8179398981641326668

namespace A109534

/-- `∑[gcd(4, n+1)]-lcm(2, n)+n` -/
def P8179398981641326668.Spec : Prop :=
  ∀ n, P8179398981641326668.a n = A109534 n

end A109534

/-! ## A109534.P985448211157729013

`gcd(a(n-1), Δ[or(1, n)])+n` with `a(0)=1`
-/

namespace A109534.P985448211157729013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + n

end

end A109534.P985448211157729013

namespace A109534

/-- `gcd(a(n-1), Δ[or(1, n)])+n` -/
def P985448211157729013.Spec : Prop :=
  ∀ n, (P985448211157729013.a n : ℤ) = A109534 n

end A109534

/-! ## A109534.P11870766549239034922

`xor(1, 3*n-xor(3, or(2, a(n-1))))` with `a(0)=1`
-/

namespace A109534.P11870766549239034922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 ((3 * n : ℤ) - Int.xor 3 (Int.lor 2 (a (n - 1))))

end

end A109534.P11870766549239034922

namespace A109534

/-- `xor(1, 3*n-xor(3, or(2, a(n-1))))` -/
def P11870766549239034922.Spec : Prop :=
  ∀ n, P11870766549239034922.a n = A109534 n

end A109534

/-! ## A109534.P4519893764242975087

`n-or(2, a(n-1)-2*(n+1))` with `a(0)=1`
-/

namespace A109534.P4519893764242975087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.lor 2 (a (n - 1) - (2 * (n + 1) : ℤ))

end

end A109534.P4519893764242975087

namespace A109534

/-- `n-or(2, a(n-1)-2*(n+1))` -/
def P4519893764242975087.Spec : Prop :=
  ∀ n, P4519893764242975087.a n = A109534 n

end A109534

/-! ## A109534.P14795290024467618127

`1-xor(1-2*n, xor(n, a(n-1)))` with `a(0)=1`
-/

namespace A109534.P14795290024467618127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.xor (1 - (2 * n : ℤ)) (Int.xor (n : ℤ) (a (n - 1)))

end

end A109534.P14795290024467618127

namespace A109534

/-- `1-xor(1-2*n, xor(n, a(n-1)))` -/
def P14795290024467618127.Spec : Prop :=
  ∀ n, P14795290024467618127.a n = A109534 n

end A109534

/-! ## A109534.P14570929878857747213

`n-1-xor(n, n-1-a(n-1))` with `a(0)=1`
-/

namespace A109534.P14570929878857747213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 1 - Int.xor (n : ℤ) ((n : ℤ) - 1 - a (n - 1))

end

end A109534.P14570929878857747213

namespace A109534

/-- `n-1-xor(n, n-1-a(n-1))` -/
def P14570929878857747213.Spec : Prop :=
  ∀ n, P14570929878857747213.a n = A109534 n

end A109534

/-! ## A109534.P13401391284569803281

`(n-a(n-1))^gcd(2, n)+2*n` with `a(0)=1`
-/

namespace A109534.P13401391284569803281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - a (n - 1)) ^ Nat.gcd 2 n + (2 * n : ℤ)

end

end A109534.P13401391284569803281

namespace A109534

/-- `(n-a(n-1))^gcd(2, n)+2*n` -/
def P13401391284569803281.Spec : Prop :=
  ∀ n, P13401391284569803281.a n = A109534 n

end A109534

/-! ## A109534.P4575058400188584020

`or(2, Δ[n²]-a(n-1))-1+n` with `a(0)=1`
-/

namespace A109534.P4575058400188584020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)) - 1 + (n : ℤ)

end

end A109534.P4575058400188584020

namespace A109534

/-- `or(2, Δ[n²]-a(n-1))-1+n` -/
def P4575058400188584020.Spec : Prop :=
  ∀ n, P4575058400188584020.a n = A109534 n

end A109534

/-! ## A109534.P861187922173660718

`A266286(n)+A106249(n)`
-/

namespace A109534.P861187922173660718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 n + A106249 n

end

end A109534.P861187922173660718

namespace A109534

/-- `A266286(n)+A106249(n)` -/
def P861187922173660718.Spec : Prop :=
  ∀ n, P861187922173660718.a n = A109534 n

end A109534

/-! ## A109534.P10610568168415617852

`A113497(n+1)-A285869(n)`
-/

namespace A109534.P10610568168415617852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (n + 1) - A285869 n

end

end A109534.P10610568168415617852

namespace A109534

/-- `A113497(n+1)-A285869(n)` -/
def P10610568168415617852.Spec : Prop :=
  ∀ n, P10610568168415617852.a n = A109534 n

end A109534

/-! ## A109534.P3385701884355472476

`xor(A021913(n), A114752(n+1))`
-/

namespace A109534.P3385701884355472476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 n) (A114752 (n + 1))

end

end A109534.P3385701884355472476

namespace A109534

/-- `xor(A021913(n), A114752(n+1))` -/
def P3385701884355472476.Spec : Prop :=
  ∀ n, P3385701884355472476.a n = A109534 n

end A109534

/-! ## A109534.P15329428862103106584

`A047482(n+1)-A338824(n+1)`
-/

namespace A109534.P15329428862103106584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (n + 1) - A338824 (n + 1)

end

end A109534.P15329428862103106584

namespace A109534

/-- `A047482(n+1)-A338824(n+1)` -/
def P15329428862103106584.Spec : Prop :=
  ∀ n, P15329428862103106584.a n = A109534 n

end A109534

/-! ## A109534.P18311946922029380784

`A266285(n+1)+2*A002265(n+1)`
-/

namespace A109534.P18311946922029380784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (n + 1) + 2 * A002265 (n + 1)

end

end A109534.P18311946922029380784

namespace A109534

/-- `A266285(n+1)+2*A002265(n+1)` -/
def P18311946922029380784.Spec : Prop :=
  ∀ n, P18311946922029380784.a n = A109534 n

end A109534

/-! ## A109534.P772425950678925430

`A116966(2*n-A338824(n+1))`
-/

namespace A109534.P772425950678925430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 ((2 * n : ℤ) - A338824 (n + 1)).toNat

end

end A109534.P772425950678925430

namespace A109534

/-- `A116966(2*n-A338824(n+1))` -/
def P772425950678925430.Spec : Prop :=
  ∀ n, P772425950678925430.a n = A109534 n

end A109534

/-!
# A109535: a(0) = 1, a(n) = n+a(floor(n/2)) if n mod 2 = 0, a(n) = 2n-a(floor((n-1)/2)) if n mod 2 = 1.

The programs for A109535, the canonical program `A109535.P2599924658879857923` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109535 has offset 0).

The definition of A109535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109535.P7108153061960783118

`ceil(A109536(n)/2+n)`
-/

namespace A109535.P7108153061960783118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109536 n : ℚ) / 2 + (n : ℚ)⌉

end

end A109535.P7108153061960783118

namespace A109535

/-- `ceil(A109536(n)/2+n)` -/
def P7108153061960783118.Spec : Prop :=
  ∀ n, P7108153061960783118.a n = A109535 n

end A109535

/-! ## A109535.P6553265763222336782

`2*n-a(A003602(n)-1)` with `a(0)=1`
-/

namespace A109535.P6553265763222336782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - a (A003602 n - 1).toNat

end

end A109535.P6553265763222336782

namespace A109535

/-- `2*n-a(A003602(n)-1)` -/
def P6553265763222336782.Spec : Prop :=
  ∀ n, P6553265763222336782.a n = A109535 n

end A109535

/-! ## A109535.P2599924658879857923

`2*n-a(A025480(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109535

/-- `2*n-a(A025480(n-1))` -/
def P2599924658879857923.Spec : Prop :=
  ∀ n, P2599924658879857923.a n = A109535 n

theorem P2599924658879857923.correct : P2599924658879857923.Spec := by
  intro n
  simp only [A109535]

end A109535

/-! ## A109535.P1720665149024175291

`n-(a(A030109(A030101(n)))-n)` with `a(0)=1`
-/

namespace A109535.P1720665149024175291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (a (A030109 (A030101 n).toNat).toNat - (n : ℤ))

end

end A109535.P1720665149024175291

namespace A109535

/-- `n-(a(A030109(A030101(n)))-n)` -/
def P1720665149024175291.Spec : Prop :=
  ∀ n, P1720665149024175291.a n = A109535 n

end A109535

/-! ## A109535.P6874625945120295769

`ceil(A109536(2*n)/2)`
-/

namespace A109535.P6874625945120295769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109536 (2 * n) : ℚ) / 2⌉

end

end A109535.P6874625945120295769

namespace A109535

/-- `ceil(A109536(2*n)/2)` -/
def P6874625945120295769.Spec : Prop :=
  ∀ n, P6874625945120295769.a n = A109535 n

end A109535

/-! ## A109535.P10774256043915911909

`round(A109536(6*n/3)/2)`
-/

namespace A109535.P10774256043915911909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109536 (SequenceMachineLib.roundAway ((6 * n : ℚ) / 3)).toNat : ℚ) / 2)

end

end A109535.P10774256043915911909

namespace A109535

/-- `round(A109536(6*n/3)/2)` -/
def P10774256043915911909.Spec : Prop :=
  ∀ n, P10774256043915911909.a n = A109535 n

end A109535

/-!
# A109536: a(0) = 1, a(n) = n+a(floor(n/2)) if n mod 2 = 0, a(n) = n-a(floor((n-1)/2)) if n mod 2 = 1.

The programs for A109536, the canonical program `A109536.P12074192729039457556` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109536 has offset 0).

The definition of A109536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109536.P12074192729039457556

`(-1)^n*a(floor(n/2))+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109536

/-- `(-1)^n*a(floor(n/2))+n` -/
def P12074192729039457556.Spec : Prop :=
  ∀ n, P12074192729039457556.a n = A109536 n

theorem P12074192729039457556.correct : P12074192729039457556.Spec := by
  intro n
  simp only [A109536]

end A109536

/-! ## A109536.P17102549629459366244

`a(floor(n/2))/A033999(n)+n` with `a(0)=1`
-/

namespace A109536.P17102549629459366244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / (A033999 n : ℚ) + (n : ℚ)

end

end A109536.P17102549629459366244

namespace A109536

/-- `a(floor(n/2))/A033999(n)+n` -/
def P17102549629459366244.Spec : Prop :=
  ∀ n, P17102549629459366244.a n = (A109536 n : ℚ)

end A109536

/-! ## A109536.P401145832372612625

`a(floor(n/2))*A062157(n+1)+n` with `a(0)=1`
-/

namespace A109536.P401145832372612625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A062157 (n + 1) + (n : ℤ)

end

end A109536.P401145832372612625

namespace A109536

/-- `a(floor(n/2))*A062157(n+1)+n` -/
def P401145832372612625.Spec : Prop :=
  ∀ n, P401145832372612625.a n = A109536 n

theorem P401145832372612625.correct : P401145832372612625.Spec := by
  intro n
  simp only [A109536, Nat.add_sub_cancel, A109536.P401145832372612625.a, A109536.P12074192729039457556.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109536

/-! ## A109536.P14873867390778246610

`abs(A038608(n)+a(A004526(n)))` with `a(0)=1`
-/

namespace A109536.P14873867390778246610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A038608 n + a (A004526 n).toNat|

end

end A109536.P14873867390778246610

namespace A109536

/-- `abs(A038608(n)+a(A004526(n)))` -/
def P14873867390778246610.Spec : Prop :=
  ∀ n, P14873867390778246610.a n = A109536 n

end A109536

/-! ## A109536.P12592342936527314273

`2*A109535(n)-A000069(n+1)`
-/

namespace A109536.P12592342936527314273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109535 n - A000069 (n + 1)

end

end A109536.P12592342936527314273

namespace A109536

/-- `2*A109535(n)-A000069(n+1)` -/
def P12592342936527314273.Spec : Prop :=
  ∀ n, P12592342936527314273.a n = A109536 n

end A109536

/-! ## A109536.P6222291487108546600

`a(A123108(n))*A009001(2*n)+n` with `a(0)=1`
-/

namespace A109536.P6222291487108546600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A123108 n).toNat * A009001 (2 * n) + (n : ℤ)

end

end A109536.P6222291487108546600

namespace A109536

/-- `a(A123108(n))*A009001(2*n)+n` -/
def P6222291487108546600.Spec : Prop :=
  ∀ n, P6222291487108546600.a n = A109536 n

end A109536

/-! ## A109536.P12034350187373105840

`a(floor(n/2))*A009531(2*n+1)+n` with `a(0)=1`
-/

namespace A109536.P12034350187373105840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A009531 (2 * n + 1) + (n : ℤ)

end

end A109536.P12034350187373105840

namespace A109536

/-- `a(floor(n/2))*A009531(2*n+1)+n` -/
def P12034350187373105840.Spec : Prop :=
  ∀ n, P12034350187373105840.a n = A109536 n

end A109536

/-! ## A109536.P17820056415563303886

`a(floor(n/2))*A056594(2*n)+n` with `a(0)=1`
-/

namespace A109536.P17820056415563303886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A056594 (2 * n) + (n : ℤ)

end

end A109536.P17820056415563303886

namespace A109536

/-- `a(floor(n/2))*A056594(2*n)+n` -/
def P17820056415563303886.Spec : Prop :=
  ∀ n, P17820056415563303886.a n = A109536 n

end A109536

/-! ## A109536.P13401922429182715438

`a(floor(n/2))*A034947(A005408(n))+n` with `a(0)=1`
-/

namespace A109536.P13401922429182715438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A034947 (A005408 n).toNat + (n : ℤ)

end

end A109536.P13401922429182715438

namespace A109536

/-- `a(floor(n/2))*A034947(A005408(n))+n` -/
def P13401922429182715438.Spec : Prop :=
  ∀ n, P13401922429182715438.a n = A109536 n

end A109536

/-! ## A109536.P11013090465510511018

`a(floor(n/2))*A009001(A008458(n))+n` with `a(0)=1`
-/

namespace A109536.P11013090465510511018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A009001 (A008458 n).toNat + (n : ℤ)

end

end A109536.P11013090465510511018

namespace A109536

/-- `a(floor(n/2))*A009001(A008458(n))+n` -/
def P11013090465510511018.Spec : Prop :=
  ∀ n, P11013090465510511018.a n = A109536 n

end A109536

/-!
# A109537: a(0)=a(1)=a(2)=a(3)=a(4)=a(5)=1; a(n)=a(n-1)+a(n-2)-a(n-4)+a(n-6) for n>=6.

The programs for A109537, the canonical program `A109537.P14353395099050010857` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109537 has offset 0).

The definition of A109537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)+a(n-6)` (program `A109537.P14353395099050010857`, by `A109537.P14353395099050010857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109537.P14353395099050010857

`a(n-1)+a(n-2)-a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109537

/-- `a(n-1)+a(n-2)-a(n-4)+a(n-6)` -/
def P14353395099050010857.Spec : Prop :=
  ∀ n, P14353395099050010857.a n = A109537 n

theorem P14353395099050010857.correct : P14353395099050010857.Spec := by
  intro n
  simp only [A109537]

end A109537

/-! ## A109537.P12704182089621245595

`A000196(ceil(A221945(n)/30))`
-/

namespace A109537.P12704182089621245595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈(A221945 n : ℚ) / 30⌉.toNat

end

end A109537.P12704182089621245595

namespace A109537

/-- `A000196(ceil(A221945(n)/30))` -/
def P12704182089621245595.Spec : Prop :=
  ∀ n, P12704182089621245595.a n = A109537 n

end A109537

/-! ## A109537.P3207964707952403507

`A343822(∑[A001399(n)-n])`
-/

namespace A109537.P3207964707952403507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109537.P3207964707952403507

namespace A109537

/-- `A343822(∑[A001399(n)-n])` -/
def P3207964707952403507.Spec : Prop :=
  ∀ n, P3207964707952403507.a n = A109537 n

end A109537

/-! ## A109537.P16322642833014785047

`A000196(A317880(n+1)-A090616(n))`
-/

namespace A109537.P16322642833014785047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A317880 (n + 1) - A090616 n).toNat

end

end A109537.P16322642833014785047

namespace A109537

/-- `A000196(A317880(n+1)-A090616(n))` -/
def P16322642833014785047.Spec : Prop :=
  ∀ n, P16322642833014785047.a n = A109537 n

end A109537

/-! ## A109537.P16597817835866743814

`A000196(A317880(n+1)-A140427(n))`
-/

namespace A109537.P16597817835866743814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A317880 (n + 1) - A140427 n).toNat

end

end A109537.P16597817835866743814

namespace A109537

/-- `A000196(A317880(n+1)-A140427(n))` -/
def P16597817835866743814.Spec : Prop :=
  ∀ n, P16597817835866743814.a n = A109537 n

end A109537

/-!
# A109538: a(n) = a(n-2) + a(n-3) + a(n-4) + a(n-5) + a(n-6) + a(n-7).

The programs for A109538, the canonical program `A109538.P16750267962565976072` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109538 has offset 0).

The definition of A109538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` (program `A109538.P16750267962565976072`, by `A109538.P16750267962565976072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109538.P16750267962565976072

`a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109538

/-- `a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` -/
def P16750267962565976072.Spec : Prop :=
  ∀ n, (P16750267962565976072.a n : ℤ) = A109538 n

theorem P16750267962565976072.correct : P16750267962565976072.Spec := by
  intro n
  simp only [A109538]

end A109538

/-! ## A109538.P130550928307590716

`A131829(A109541(n))`
-/

namespace A109538.P130550928307590716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131829 (A109541 n).toNat

end

end A109538.P130550928307590716

namespace A109538

/-- `A131829(A109541(n))` -/
def P130550928307590716.Spec : Prop :=
  ∀ n, P130550928307590716.a n = A109538 n

end A109538

/-! ## A109538.P2740972227408433351

`A120238(A109540(n+1))`
-/

namespace A109538.P2740972227408433351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120238 (A109540 (n + 1)).toNat

end

end A109538.P2740972227408433351

namespace A109538

/-- `A120238(A109540(n+1))` -/
def P2740972227408433351.Spec : Prop :=
  ∀ n, P2740972227408433351.a n = A109538 n

end A109538

/-! ## A109538.P10432700286567989480

`A131829(A109539(n+1))`
-/

namespace A109538.P10432700286567989480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131829 (A109539 (n + 1)).toNat

end

end A109538.P10432700286567989480

namespace A109538

/-- `A131829(A109539(n+1))` -/
def P10432700286567989480.Spec : Prop :=
  ∀ n, P10432700286567989480.a n = A109538 n

end A109538

/-!
# A109539: a(n) = a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8).

The programs for A109539, there is no canonical definition to state claims against.
-/

/-! ## A109539.P5669277062633687126

`A209900(A109540(n))`
-/

namespace A109539.P5669277062633687126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A109540 n).toNat

end

end A109539.P5669277062633687126

/-! ## A109539.P11753236675595581348

`A327514(Δ[A347295(n+2)])`
-/

namespace A109539.P11753236675595581348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327514 (f1 (n + 1) - f1 n).toNat

end

end A109539.P11753236675595581348

/-! ## A109539.P13799271783046066854

`A308994(n)+A120238(A109540(n))`
-/

namespace A109539.P13799271783046066854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308994 n + A120238 (A109540 n).toNat

end

end A109539.P13799271783046066854

/-! ## A109539.P7344989728612073728

`A327514(A109540(n)-A308994(n))`
-/

namespace A109539.P7344989728612073728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327514 (A109540 n - A308994 n).toNat

end

end A109539.P7344989728612073728

/-! ## A109539.P7464362593431378684

`A338006(A308989(n)+1)`
-/

namespace A109539.P7464362593431378684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A308989 n + 1).toNat

end

end A109539.P7464362593431378684

/-!
# A109540: a(n) = a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+2*a(n-7)+a(n-8).

The programs for A109540, there is no canonical definition to state claims against.
-/

/-! ## A109540.P14491590755747585148

`A343526(2^A308994(n))`
-/

namespace A109540.P14491590755747585148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343526 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A308994 n : ℤ))).toNat

end

end A109540.P14491590755747585148

/-! ## A109540.P13792346221112725877

`A102569(A109539(n))`
-/

namespace A109540.P13792346221112725877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102569 (A109539 n).toNat

end

end A109540.P13792346221112725877

/-! ## A109540.P205070174269970993

`A327514(A109539(n))+A308994(n)`
-/

namespace A109540.P205070174269970993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327514 (A109539 n).toNat + A308994 n

end

end A109540.P205070174269970993

/-! ## A109540.P10954501182095546200

`A327514(Δ[A347295(n+2)])+A308994(n)`
-/

namespace A109540.P10954501182095546200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327514 (f1 (n + 1) - f1 n).toNat + A308994 n

end

end A109540.P10954501182095546200

/-! ## A109540.P15656522439915291589

`A338006(A308989(n)+1)+A308994(n)`
-/

namespace A109540.P15656522439915291589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A308989 n + 1).toNat + A308994 n

end

end A109540.P15656522439915291589

/-!
# A109541: a(n) = a(n-2)+a(n-3)+a(n-4)+a(n-5)+2*a(n-6)+a(n-7).

The programs for A109541, the canonical program `A109541.P9858929104374648649` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109541 has offset 0).

The definition of A109541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)+a(n-5)+2*a(n-6)+a(n-7)` (program `A109541.P9858929104374648649`, by `A109541.P9858929104374648649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109541.P9858929104374648649

`a(n-2)+a(n-3)+a(n-4)+a(n-5)+2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109541

/-- `a(n-2)+a(n-3)+a(n-4)+a(n-5)+2*a(n-6)+a(n-7)` -/
def P9858929104374648649.Spec : Prop :=
  ∀ n, (P9858929104374648649.a n : ℤ) = A109541 n

theorem P9858929104374648649.correct : P9858929104374648649.Spec := by
  intro n
  simp only [A109541]

end A109541

/-! ## A109541.P8673261798504758593

`A086957(A109539(n+1))`
-/

namespace A109541.P8673261798504758593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086957 (A109539 (n + 1)).toNat

end

end A109541.P8673261798504758593

namespace A109541

/-- `A086957(A109539(n+1))` -/
def P8673261798504758593.Spec : Prop :=
  ∀ n, P8673261798504758593.a n = A109541 n

end A109541

/-! ## A109541.P2249947051996507873

`A209900(A109540(n+1))`
-/

namespace A109541.P2249947051996507873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A109540 (n + 1)).toNat

end

end A109541.P2249947051996507873

namespace A109541

/-- `A209900(A109540(n+1))` -/
def P2249947051996507873.Spec : Prop :=
  ∀ n, P2249947051996507873.a n = A109541 n

end A109541

/-! ## A109541.P4622938030886788583

`A109539(A004896(n+1)+1)`
-/

namespace A109541.P4622938030886788583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109539 (A004896 (n + 1) + 1).toNat

end

end A109541.P4622938030886788583

namespace A109541

/-- `A109539(A004896(n+1)+1)` -/
def P4622938030886788583.Spec : Prop :=
  ∀ n, P4622938030886788583.a n = A109541 n

end A109541

/-! ## A109541.P14373998762931888449

`A109539(A004907(n+1)+1)`
-/

namespace A109541.P14373998762931888449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109539 (A004907 (n + 1) + 1).toNat

end

end A109541.P14373998762931888449

namespace A109541

/-- `A109539(A004907(n+1)+1)` -/
def P14373998762931888449.Spec : Prop :=
  ∀ n, P14373998762931888449.a n = A109541 n

end A109541

/-!
# A109543: a(n) = a(n-1) + a(n-3) + a(n-5), with a(1..5) = 1.

The programs for A109543, the canonical program `A109543.P14801436113445741004` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109543 has offset 0).

The definition of A109543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-5)` (program `A109543.P14801436113445741004`, by `A109543.P14801436113445741004.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109543.P14801436113445741004

`a(n-1)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109543

/-- `a(n-1)+a(n-3)+a(n-5)` -/
def P14801436113445741004.Spec : Prop :=
  ∀ n, (P14801436113445741004.a n : ℤ) = A109543 n

theorem P14801436113445741004.correct : P14801436113445741004.Spec := by
  intro n
  simp only [A109543]

end A109543

/-! ## A109543.P11222953693278152222

`∑[A271970(n+1)]-Δ[A060961(n)]`
-/

namespace A109543.P11222953693278152222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A109543.P11222953693278152222

namespace A109543

/-- `∑[A271970(n+1)]-Δ[A060961(n)]` -/
def P11222953693278152222.Spec : Prop :=
  ∀ n, P11222953693278152222.a n = A109543 n

end A109543

/-! ## A109543.P3341904607633189051

`A130823(A025048(n))+A000038(A084160(n))`
-/

namespace A109543.P3341904607633189051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A025048 n).toNat + A000038 (A084160 n).toNat

end

end A109543.P3341904607633189051

namespace A109543

/-- `A130823(A025048(n))+A000038(A084160(n))` -/
def P3341904607633189051.Spec : Prop :=
  ∀ n, P3341904607633189051.a n = A109543 n

end A109543

/-! ## A109543.P6223423960900310460

`or(1, A293137(A006196(n)))`
-/

namespace A109543.P6223423960900310460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293137 (A006196 n).toNat)

end

end A109543.P6223423960900310460

namespace A109543

/-- `or(1, A293137(A006196(n)))` -/
def P6223423960900310460.Spec : Prop :=
  ∀ n, P6223423960900310460.a n = A109543 n

end A109543

/-! ## A109543.P8852823253451560194

`A131507(A057353(Δ[A000055(n)]))`
-/

namespace A109543.P8852823253451560194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A057353 (f1 (n + 1) - f1 n).toNat).toNat

end

end A109543.P8852823253451560194

namespace A109543

/-- `A131507(A057353(Δ[A000055(n)]))` -/
def P8852823253451560194.Spec : Prop :=
  ∀ n, P8852823253451560194.a n = A109543 n

end A109543

/-!
# A109544: Expansion of (1 + x - x^3 - 2*x^4)/(1 - x^2 - x^3 - x^4 - x^5).

The programs for A109544, the canonical program `A109544.P7689858322789359169` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109544 has offset 0).

The definition of A109544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^3-2x^4)/(1-x^2-x^3-x^4-x^5))` (program `A109544.P7689858322789359169`, by `A109544.P7689858322789359169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109544.P7689858322789359169

`ogf((1+x-x^3-2x^4)/(1-x^2-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109544

/-- `ogf((1+x-x^3-2x^4)/(1-x^2-x^3-x^4-x^5))` -/
def P7689858322789359169.Spec : Prop :=
  ∀ n, P7689858322789359169.a n = A109544 n

theorem P7689858322789359169.correct : P7689858322789359169.Spec := by
  intro n
  simp only [A109544]

end A109544

/-! ## A109544.P17835666080953785125

`a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A109544.P17835666080953785125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)

end

end A109544.P17835666080953785125

namespace A109544

/-- `a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P17835666080953785125.Spec : Prop :=
  ∀ n, (P17835666080953785125.a n : ℤ) = A109544 n

end A109544

/-!
# A109545: a(n) = 2*a(n-1) + a(n-2) + a(n-3).

The programs for A109545, the canonical program `A109545.P4826830447184762229` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109545 has offset 0).

The definition of A109545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+a(n-3)` (program `A109545.P4826830447184762229`, by `A109545.P4826830447184762229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109545.P4826830447184762229

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109545

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P4826830447184762229.Spec : Prop :=
  ∀ n, (P4826830447184762229.a n : ℤ) = A109545 n

theorem P4826830447184762229.correct : P4826830447184762229.Spec := by
  intro n
  simp only [A109545]

end A109545

/-! ## A109545.P8463622437410188154

`ogf((-1+x+x^2)/(-1+2x+x^2+x^3))`
-/

namespace A109545.P8463622437410188154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -1, -1] n

end

end A109545.P8463622437410188154

namespace A109545

/-- `ogf((-1+x+x^2)/(-1+2x+x^2+x^3))` -/
def P8463622437410188154.Spec : Prop :=
  ∀ n, P8463622437410188154.a n = A109545 n

end A109545

/-! ## A109545.P7570920680749598087

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A109545.P7570920680749598087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A109545.P7570920680749598087

namespace A109545

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P7570920680749598087.Spec : Prop :=
  ∀ n, (P7570920680749598087.a n : ℤ) = A109545 n

theorem P7570920680749598087.correct : P7570920680749598087.Spec := by
  intro n
  simp only [A109545, Nat.add_sub_cancel, A109545.P7570920680749598087.a, A109545.P4826830447184762229.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109545

/-! ## A109545.P3557436825756638514

`A099206(3*(n+1))`
-/

namespace A109545.P3557436825756638514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099206 (3 * (n + 1))

end

end A109545.P3557436825756638514

namespace A109545

/-- `A099206(3*(n+1))` -/
def P3557436825756638514.Spec : Prop :=
  ∀ n, P3557436825756638514.a n = A109545 n

end A109545

/-! ## A109545.P5133123939071141744

`floor(record[A099206(n+1)+acot(n)])`
-/

namespace A109545.P5133123939071141744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A099206 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A109545.P5133123939071141744

namespace A109545

/-- `floor(record[A099206(n+1)+acot(n)])` -/
def P5133123939071141744.Spec : Prop :=
  ∀ n, P5133123939071141744.a n = A109545 n

end A109545

/-! ## A109545.P4663100096779150693

`A116413(n)-Δ[A077997(n)]`
-/

namespace A109545.P4663100096779150693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116413 n - (f1 (n + 1) - f1 n)

end

end A109545.P4663100096779150693

namespace A109545

/-- `A116413(n)-Δ[A077997(n)]` -/
def P4663100096779150693.Spec : Prop :=
  ∀ n, P4663100096779150693.a n = A109545 n

end A109545

/-! ## A109545.P4208439936521169593

`A077939(n)+A077939(n)-A077997(n+1)`
-/

namespace A109545.P4208439936521169593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n + (A077939 n - A077997 (n + 1))

end

end A109545.P4208439936521169593

namespace A109545

/-- `A077939(n)+A077939(n)-A077997(n+1)` -/
def P4208439936521169593.Spec : Prop :=
  ∀ n, P4208439936521169593.a n = A109545 n

end A109545

/-! ## A109545.P18309489723303233724

`A077997(n)+A116413(n)-A077997(n+1)`
-/

namespace A109545.P18309489723303233724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n + (A116413 n - A077997 (n + 1))

end

end A109545.P18309489723303233724

namespace A109545

/-- `A077997(n)+A116413(n)-A077997(n+1)` -/
def P18309489723303233724.Spec : Prop :=
  ∀ n, P18309489723303233724.a n = A109545 n

end A109545

/-! ## A109545.P14025767152807754373

`abs(A078058(n))-Δ[A077997(n)]`
-/

namespace A109545.P14025767152807754373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078058 n| - (f1 (n + 1) - f1 n)

end

end A109545.P14025767152807754373

namespace A109545

/-- `abs(A078058(n))-Δ[A077997(n)]` -/
def P14025767152807754373.Spec : Prop :=
  ∀ n, P14025767152807754373.a n = A109545 n

end A109545

/-! ## A109545.P14735968171870139427

`Δ[Δ[A077997(n)]]-A077939(n)`
-/

namespace A109545.P14735968171870139427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077939 n

end

end A109545.P14735968171870139427

namespace A109545

/-- `Δ[Δ[A077997(n)]]-A077939(n)` -/
def P14735968171870139427.Spec : Prop :=
  ∀ n, P14735968171870139427.a n = A109545 n

end A109545

/-!
# A109546: a(n) = (4^(n+1)-(-1)^n 9 )/5.

The programs for A109546, the canonical program `A109546.P14947446309158356636` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109546 has offset 1).

The definition of A109546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109546.P14947446309158356636

`4*a(n-1)-(-1)^(n+1)*9` with `a(0)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109546

/-- `4*a(n-1)-(-1)^(n+1)*9` -/
def P14947446309158356636.Spec : Prop :=
  ∀ n, P14947446309158356636.a n = A109546 (n + 1)

theorem P14947446309158356636.correct : P14947446309158356636.Spec := by
  intro n
  simp only [A109546, Nat.add_sub_cancel]

end A109546

/-! ## A109546.P1637259757681469889

`(4^(n+2)-(-1)^(n+1)*9)/5`
-/

namespace A109546.P1637259757681469889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 2) : ℤ) - (-1) ^ (n + 1) * 9 : ℚ) / 5

end

end A109546.P1637259757681469889

namespace A109546

/-- `(4^(n+2)-(-1)^(n+1)*9)/5` -/
def P1637259757681469889.Spec : Prop :=
  ∀ n, P1637259757681469889.a n = (A109546 (n + 1) : ℚ)

theorem P1637259757681469889.correct : P1637259757681469889.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A109546, Nat.add_sub_cancel, A109546.P1637259757681469889.a, A109546.P14947446309158356636.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A109546, Nat.add_sub_cancel, A109546.P1637259757681469889.a, A109546.P14947446309158356636.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A109546

/-! ## A109546.P8329782920285056181

`ogf((-5+4x)/(-1+3x+4x^2))`
-/

namespace A109546.P8329782920285056181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4] [1, -3, -4] n

end

end A109546.P8329782920285056181

namespace A109546

/-- `ogf((-5+4x)/(-1+3x+4x^2))` -/
def P8329782920285056181.Spec : Prop :=
  ∀ n, P8329782920285056181.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P870081416078368729

`4^(n+1)-a(n-1)` with `a(0)=5`
-/

namespace A109546.P870081416078368729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (4 ^ (n + 1) : ℤ) - a (n - 1)

end

end A109546.P870081416078368729

namespace A109546

/-- `4^(n+1)-a(n-1)` -/
def P870081416078368729.Spec : Prop :=
  ∀ n, P870081416078368729.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P13181254617549496378

`floor(4*4^n-a(n-1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A109546.P13181254617549496378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (4 * 4 ^ n : ℤ) - a (n - 1)

end

end A109546.P13181254617549496378

namespace A109546

/-- `floor(4*4^n-a(n-1))` -/
def P13181254617549496378.Spec : Prop :=
  ∀ n, P13181254617549496378.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P226121952434898611

`a(n-2)-Δ[-4^n]` with `a(0)=5, a(1)=11`
-/

namespace A109546.P226121952434898611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 11] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A109546.P226121952434898611

namespace A109546

/-- `a(n-2)-Δ[-4^n]` -/
def P226121952434898611.Spec : Prop :=
  ∀ n, P226121952434898611.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P16555330952319835814

`4*(4^n-a(n-1)/4)` with `a(0)=5`
-/

namespace A109546.P16555330952319835814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * ((4 ^ n : ℚ) - a (n - 1) / 4)

end

end A109546.P16555330952319835814

namespace A109546

/-- `4*(4^n-a(n-1)/4)` -/
def P16555330952319835814.Spec : Prop :=
  ∀ n, P16555330952319835814.a n = (A109546 (n + 1) : ℚ)

end A109546

/-! ## A109546.P14256930177697787619

`record[4^(n-2)-a(n-1)]` with `a(0)=5, a(1)=2`
-/

namespace A109546.P14256930177697787619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109546.P14256930177697787619

namespace A109546

/-- `record[4^(n-2)-a(n-1)]` -/
def P14256930177697787619.Spec : Prop :=
  ∀ n, P14256930177697787619.a n = (A109546 (n + 1) : ℚ)

end A109546

/-! ## A109546.P16576661138670078447

`xor(2, A115164(n+1))`
-/

namespace A109546.P16576661138670078447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A115164 (n + 1))

end

end A109546.P16576661138670078447

namespace A109546

/-- `xor(2, A115164(n+1))` -/
def P16576661138670078447.Spec : Prop :=
  ∀ n, P16576661138670078447.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P15167042011710749790

`xor(6, A015521(n+2))`
-/

namespace A109546.P15167042011710749790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A015521 (n + 2))

end

end A109546.P15167042011710749790

namespace A109546

/-- `xor(6, A015521(n+2))` -/
def P15167042011710749790.Spec : Prop :=
  ∀ n, P15167042011710749790.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P785133391757760334

`xor(7, A115243(n+1))`
-/

namespace A109546.P785133391757760334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A115243 (n + 1))

end

end A109546.P785133391757760334

namespace A109546

/-- `xor(7, A115243(n+1))` -/
def P785133391757760334.Spec : Prop :=
  ∀ n, P785133391757760334.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P16152847372575309535

`xor(a(n-1), A134067(2*n))` with `a(0)=5`
-/

namespace A109546.P16152847372575309535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor (a (n - 1)) (A134067 (2 * n))

end

end A109546.P16152847372575309535

namespace A109546

/-- `xor(a(n-1), A134067(2*n))` -/
def P16152847372575309535.Spec : Prop :=
  ∀ n, P16152847372575309535.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P7953626613002294254

`A000225(2*(n+1))-(lcm(2, a(n-1)+1)-2)` with `a(0)=5`
-/

namespace A109546.P7953626613002294254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000225 (2 * (n + 1)) - ((Int.lcm 2 (a (n - 1) + 1) : ℤ) - 2)

end

end A109546.P7953626613002294254

namespace A109546

/-- `A000225(2*(n+1))-(lcm(2, a(n-1)+1)-2)` -/
def P7953626613002294254.Spec : Prop :=
  ∀ n, P7953626613002294254.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P3195389427065974247

`A015521(n)+Δ[A247281(n)]`
-/

namespace A109546.P3195389427065974247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n + (f1 (n + 1) - f1 n)

end

end A109546.P3195389427065974247

namespace A109546

/-- `A015521(n)+Δ[A247281(n)]` -/
def P3195389427065974247.Spec : Prop :=
  ∀ n, P3195389427065974247.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P5970579990832219973

`A109499(n+2)+A033999(n)`
-/

namespace A109546.P5970579990832219973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 (n + 2) + A033999 n

end

end A109546.P5970579990832219973

namespace A109546

/-- `A109499(n+2)+A033999(n)` -/
def P5970579990832219973.Spec : Prop :=
  ∀ n, P5970579990832219973.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P2209009422988805725

`A115113(n+1)-A033999(n)`
-/

namespace A109546.P2209009422988805725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115113 (n + 1) - A033999 n

end

end A109546.P2209009422988805725

namespace A109546

/-- `A115113(n+1)-A033999(n)` -/
def P2209009422988805725.Spec : Prop :=
  ∀ n, P2209009422988805725.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P3384367102089182951

`A108981(n)+2*A201455(n)`
-/

namespace A109546.P3384367102089182951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108981 n + 2 * A201455 n

end

end A109546.P3384367102089182951

namespace A109546

/-- `A108981(n)+2*A201455(n)` -/
def P3384367102089182951.Spec : Prop :=
  ∀ n, P3384367102089182951.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P17128229564396724837

`xor(A010723(n), A043291(n+1))`
-/

namespace A109546.P17128229564396724837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010723 n) (A043291 (n + 1))

end

end A109546.P17128229564396724837

namespace A109546

/-- `xor(A010723(n), A043291(n+1))` -/
def P17128229564396724837.Spec : Prop :=
  ∀ n, P17128229564396724837.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P10951149562523040690

`A168361(n+1)+A043291(n+1)`
-/

namespace A109546.P10951149562523040690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) + A043291 (n + 1)

end

end A109546.P10951149562523040690

namespace A109546

/-- `A168361(n+1)+A043291(n+1)` -/
def P10951149562523040690.Spec : Prop :=
  ∀ n, P10951149562523040690.a n = A109546 (n + 1)

end A109546

/-! ## A109546.P11099210320584567251

`A115113(n+1)+A105812(n+2)`
-/

namespace A109546.P11099210320584567251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115113 (n + 1) + A105812 (n + 2)

end

end A109546.P11099210320584567251

namespace A109546

/-- `A115113(n+1)+A105812(n+2)` -/
def P11099210320584567251.Spec : Prop :=
  ∀ n, P11099210320584567251.a n = A109546 (n + 1)

end A109546

/-!
# A109547: Admirable oblong numbers.

The programs for A109547, there is no canonical definition to state claims against.
-/

/-! ## A109547.P7478027694411027268

`∩[A111592(n+1), n²+n]`
-/

namespace A109547.P7478027694411027268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A109547.P7478027694411027268

/-! ## A109547.P7296986084733421329

`∩[A002378(n), A111592(n+1)]`
-/

namespace A109547.P7296986084733421329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109547.P7296986084733421329

/-! ## A109547.P482098045812773597

`∩[A060798(n+1), A111592(n+1)]`
-/

namespace A109547.P482098045812773597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109547.P482098045812773597

/-! ## A109547.P17925199818268243738

`∩[A087811(n+1), A111592(n+1)]`
-/

namespace A109547.P17925199818268243738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109547.P17925199818268243738

/-! ## A109547.P3128188861010636496

`∩[A124672(n+1), A111592(n+1)]`
-/

namespace A109547.P3128188861010636496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109547.P3128188861010636496

/-!
# A109548: Primes of the form aaaa...aa1 where a is 1, 2, 3, 4 or 5.

The programs for A109548, there is no canonical definition to state claims against.
-/

/-! ## A109548.P11101033452517817037

`p?[5*A010785(n)+1]`
-/

namespace A109548.P11101033452517817037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A010785 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109548.P11101033452517817037

/-! ## A109548.P18093163995927871138

`p?[(5*n+1)*A043562(n)]`
-/

namespace A109548.P18093163995927871138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A043562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109548.P18093163995927871138

/-! ## A109548.P4542666329006842673

`p?[A016873((n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9)-1]`
-/

namespace A109548.P4542666329006842673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (SequenceMachineLib.roundAway (((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109548.P4542666329006842673

/-! ## A109548.P18161974372981011267

`p?[A016861(A010785(n))]`
-/

namespace A109548.P18161974372981011267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A010785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109548.P18161974372981011267

/-!
# A109549: Primes of the form aaaa...aa1 where a is 6, 7, 8 or 9.

The programs for A109549, there is no canonical definition to state claims against.
-/

/-! ## A109549.P6073998204736469644

`∩[A167994(n+1), A325934(n+1)]`
-/

namespace A109549.P6073998204736469644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109549.P6073998204736469644

/-! ## A109549.P5444308100407529324

`∩[A168006(n+1), A325934(n+1)]`
-/

namespace A109549.P5444308100407529324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109549.P5444308100407529324

/-!
# A109550: Primes of the form aaaa...aa1 where a is 3, 4, 5, 6 or 7.

The programs for A109550, there is no canonical definition to state claims against.
-/

/-! ## A109550.P7541436104428725311

`A089347(A001096(n)+2)`
-/

namespace A109550.P7541436104428725311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089347 (A001096 n + 2).toNat

end

end A109550.P7541436104428725311

/-! ## A109550.P13404646300125628975

`A266646(A089347(n+2))`
-/

namespace A109550.P13404646300125628975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A089347 (n + 2)).toNat

end

end A109550.P13404646300125628975

/-!
# A109551: Primes which are a substring of (1234554321)*.

The programs for A109551, there is no canonical definition to state claims against.
-/

/-! ## A109551.P7672380429083355860

`p?[∑[A192422(A029142(n))]]`
-/

namespace A109551.P7672380429083355860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192422 (A029142 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109551.P7672380429083355860

/-! ## A109551.P17589547226588506935

`A228062(record[A238160(n)+1])`
-/

namespace A109551.P17589547226588506935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228062 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109551.P17589547226588506935

/-! ## A109551.P10802336204979717237

`∩[A057459(n+1), A191877(n+1)]`
-/

namespace A109551.P10802336204979717237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109551.P10802336204979717237

/-!
# A109552: a(n) = floor(4076/(10-n)^2).

The programs for A109552, there is no canonical definition to state claims against.
-/

/-! ## A109552.P9384756370617993213

`A346561(A346558(n+1))+37`
-/

namespace A109552.P9384756370617993213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346561 (A346558 (n + 1)).toNat + 37

end

end A109552.P9384756370617993213

/-!
# A109554: pi(n)[prime(n+1)-prime(n)], where pi(n) is the number of prime numbers less than or equal to n and prime(k) is the k-th prime.

The programs for A109554, the canonical program `A109554.P5451691980402463312` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109554 has offset 1).

The definition of A109554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109554.P17794763464814339205

`∑[∑{p}[n+1, val(#, n+1)]]*A001223(n+1)`
-/

namespace A109554.P17794763464814339205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001223 (n + 1)

end

end A109554.P17794763464814339205

namespace A109554

/-- `∑[∑{p}[n+1, val(#, n+1)]]*A001223(n+1)` -/
def P17794763464814339205.Spec : Prop :=
  ∀ n, P17794763464814339205.a n = A109554 (n + 1)

theorem P17794763464814339205.correct : P17794763464814339205.Spec := by
  intro n
  simp only [A109554, Nat.add_sub_cancel, A109554.P17794763464814339205.f2, A109554.P17794763464814339205.f1, A109554.P17794763464814339205.a, A109554.P5451691980402463312.f2, A109554.P5451691980402463312.f1, A109554.P5451691980402463312.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109554

/-! ## A109554.P5451691980402463312

`(A046933(n+1)+1)*∑[∑{p}[n+1, val(#, n+1)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109554

/-- `(A046933(n+1)+1)*∑[∑{p}[n+1, val(#, n+1)]]` -/
def P5451691980402463312.Spec : Prop :=
  ∀ n, P5451691980402463312.a n = A109554 (n + 1)

theorem P5451691980402463312.correct : P5451691980402463312.Spec := by
  intro n
  simp only [A109554, Nat.add_sub_cancel]

end A109554

/-! ## A109554.P2041390311490868592

`A141042(n+1)/(n+1)*∑[C(n, ∏{e}[n+1, n*#])]`
-/

namespace A109554.P2041390311490868592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A109554.P2041390311490868592

namespace A109554

/-- `A141042(n+1)/(n+1)*∑[C(n, ∏{e}[n+1, n*#])]` -/
def P2041390311490868592.Spec : Prop :=
  ∀ n, P2041390311490868592.a n = (A109554 (n + 1) : ℚ)

end A109554

/-! ## A109554.P3646678068478234397

`A000720(n+1)*A001223(n+1)`
-/

namespace A109554.P3646678068478234397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A001223 (n + 1)

end

end A109554.P3646678068478234397

namespace A109554

/-- `A000720(n+1)*A001223(n+1)` -/
def P3646678068478234397.Spec : Prop :=
  ∀ n, P3646678068478234397.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P8568305299843788331

`∑[A010051(n+1)]*A001223(n+1)`
-/

namespace A109554.P8568305299843788331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001223 (n + 1)

end

end A109554.P8568305299843788331

namespace A109554

/-- `∑[A010051(n+1)]*A001223(n+1)` -/
def P8568305299843788331.Spec : Prop :=
  ∀ n, P8568305299843788331.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P8909468816367938283

`(A046933(n+1)+1)*A000720(n+1)`
-/

namespace A109554.P8909468816367938283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 1) + 1) * A000720 (n + 1)

end

end A109554.P8909468816367938283

namespace A109554

/-- `(A046933(n+1)+1)*A000720(n+1)` -/
def P8909468816367938283.Spec : Prop :=
  ∀ n, P8909468816367938283.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P5102310999329503414

`A000720(n+1)*A000720(A082910(n+1))`
-/

namespace A109554.P5102310999329503414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A000720 (A082910 (n + 1)).toNat

end

end A109554.P5102310999329503414

namespace A109554

/-- `A000720(n+1)*A000720(A082910(n+1))` -/
def P5102310999329503414.Spec : Prop :=
  ∀ n, P5102310999329503414.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P15685146172689929738

`(A007504(n)-A166448(n+1))*A000720(n+1)`
-/

namespace A109554.P15685146172689929738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 n - A166448 (n + 1)) * A000720 (n + 1)

end

end A109554.P15685146172689929738

namespace A109554

/-- `(A007504(n)-A166448(n+1))*A000720(n+1)` -/
def P15685146172689929738.Spec : Prop :=
  ∀ n, P15685146172689929738.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P14191720169870026032

`(A065091(n+1)-A000040(n+1))*A000720(n+1)`
-/

namespace A109554.P14191720169870026032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - A000040 (n + 1)) * A000720 (n + 1)

end

end A109554.P14191720169870026032

namespace A109554

/-- `(A065091(n+1)-A000040(n+1))*A000720(n+1)` -/
def P14191720169870026032.Spec : Prop :=
  ∀ n, P14191720169870026032.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P17064440577021276043

`(A055670(n+2)-A055670(n+1))*A000720(n+1)`
-/

namespace A109554.P17064440577021276043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055670 (n + 2) - A055670 (n + 1)) * A000720 (n + 1)

end

end A109554.P17064440577021276043

namespace A109554

/-- `(A055670(n+2)-A055670(n+1))*A000720(n+1)` -/
def P17064440577021276043.Spec : Prop :=
  ∀ n, P17064440577021276043.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P12027664429843621457

`A000720(n+1)*A075526(n+1)`
-/

namespace A109554.P12027664429843621457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A075526 (n + 1)

end

end A109554.P12027664429843621457

namespace A109554

/-- `A000720(n+1)*A075526(n+1)` -/
def P12027664429843621457.Spec : Prop :=
  ∀ n, P12027664429843621457.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P8219915461090547117

`A001223(n+1)*A230980(n+1)`
-/

namespace A109554.P8219915461090547117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A230980 (n + 1)

end

end A109554.P8219915461090547117

namespace A109554

/-- `A001223(n+1)*A230980(n+1)` -/
def P8219915461090547117.Spec : Prop :=
  ∀ n, P8219915461090547117.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P10177393434630825767

`A000720(n+1)*A054541(n+2)`
-/

namespace A109554.P10177393434630825767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A054541 (n + 2)

end

end A109554.P10177393434630825767

namespace A109554

/-- `A000720(n+1)*A054541(n+2)` -/
def P10177393434630825767.Spec : Prop :=
  ∀ n, P10177393434630825767.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P10096725018510963986

`A000720(n+1)*A125266(n+2)`
-/

namespace A109554.P10096725018510963986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A125266 (n + 2)

end

end A109554.P10096725018510963986

namespace A109554

/-- `A000720(n+1)*A125266(n+2)` -/
def P10096725018510963986.Spec : Prop :=
  ∀ n, P10096725018510963986.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P3158094881294236716

`A054541(n+2)*A230980(n+1)`
-/

namespace A109554.P3158094881294236716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) * A230980 (n + 1)

end

end A109554.P3158094881294236716

namespace A109554

/-- `A054541(n+2)*A230980(n+1)` -/
def P3158094881294236716.Spec : Prop :=
  ∀ n, P3158094881294236716.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P17991177662972709680

`A125266(n+2)*A230980(n+1)`
-/

namespace A109554.P17991177662972709680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2) * A230980 (n + 1)

end

end A109554.P17991177662972709680

namespace A109554

/-- `A125266(n+2)*A230980(n+1)` -/
def P17991177662972709680.Spec : Prop :=
  ∀ n, P17991177662972709680.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P18252945171713184029

`Δ[Δ[A007504(n)]]*A000720(n+1)`
-/

namespace A109554.P18252945171713184029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000720 (n + 1)

end

end A109554.P18252945171713184029

namespace A109554

/-- `Δ[Δ[A007504(n)]]*A000720(n+1)` -/
def P18252945171713184029.Spec : Prop :=
  ∀ n, P18252945171713184029.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P17591804495647916342

`Δ[A000040(n+1)]*A000720(n+1)`
-/

namespace A109554.P17591804495647916342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000720 (n + 1)

end

end A109554.P17591804495647916342

namespace A109554

/-- `Δ[A000040(n+1)]*A000720(n+1)` -/
def P17591804495647916342.Spec : Prop :=
  ∀ n, P17591804495647916342.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P15885141001810217505

`Δ[A006093(n+1)]*A000720(n+1)`
-/

namespace A109554.P15885141001810217505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000720 (n + 1)

end

end A109554.P15885141001810217505

namespace A109554

/-- `Δ[A006093(n+1)]*A000720(n+1)` -/
def P15885141001810217505.Spec : Prop :=
  ∀ n, P15885141001810217505.a n = A109554 (n + 1)

end A109554

/-! ## A109554.P1025103090466393256

`Δ[A008864(n+1)]*A000720(n+1)`
-/

namespace A109554.P1025103090466393256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000720 (n + 1)

end

end A109554.P1025103090466393256

namespace A109554

/-- `Δ[A008864(n+1)]*A000720(n+1)` -/
def P1025103090466393256.Spec : Prop :=
  ∀ n, P1025103090466393256.a n = A109554 (n + 1)

end A109554

/-!
# A109555: prime(k) for those k where floor(2*(((prime(k + 1) - prime(k))*PrimePi(k)) mod (8*k)) / k) = m with m = 0.

The programs for A109555, the canonical program `A109555.P16983294411619929337` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109555 has offset 1).

The definition of A109555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109555.P16983294411619929337

`p?[A006005(n+1)-A255270(A003056(n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109555

/-- `p?[A006005(n+1)-A255270(A003056(n))]` -/
def P16983294411619929337.Spec : Prop :=
  ∀ n, P16983294411619929337.a n = A109555 (n + 1)

theorem P16983294411619929337.correct : P16983294411619929337.Spec := by
  intro n
  simp only [A109555, Nat.add_sub_cancel]

end A109555

/-! ## A109555.P16271225057703051573

`p?[A045319(n+1)-A255270(A002024(n+1))]`
-/

namespace A109555.P16271225057703051573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) - A255270 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109555.P16271225057703051573

namespace A109555

/-- `p?[A045319(n+1)-A255270(A002024(n+1))]` -/
def P16271225057703051573.Spec : Prop :=
  ∀ n, P16271225057703051573.a n = A109555 (n + 1)

end A109555

/-! ## A109555.P10373254016685754412

`p?[A065091(n+1)-A255270(A002024(n+1))]`
-/

namespace A109555.P10373254016685754412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A255270 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109555.P10373254016685754412

namespace A109555

/-- `p?[A065091(n+1)-A255270(A002024(n+1))]` -/
def P10373254016685754412.Spec : Prop :=
  ∀ n, P10373254016685754412.a n = A109555 (n + 1)

end A109555

/-! ## A109555.P2700146750577088014

`p?[A000040(n+2)-A255270(A002024(n+1))]`
-/

namespace A109555.P2700146750577088014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A255270 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109555.P2700146750577088014

namespace A109555

/-- `p?[A000040(n+2)-A255270(A002024(n+1))]` -/
def P2700146750577088014.Spec : Prop :=
  ∀ n, P2700146750577088014.a n = A109555 (n + 1)

end A109555

/-! ## A109555.P9921893440295226368

`p?[A276542(n+1)-A161477(n)]`
-/

namespace A109555.P9921893440295226368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276542 (n + 1) - A161477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109555.P9921893440295226368

namespace A109555

/-- `p?[A276542(n+1)-A161477(n)]` -/
def P9921893440295226368.Spec : Prop :=
  ∀ n, P9921893440295226368.a n = A109555 (n + 1)

end A109555

/-!
# A109556: prime(k) for those k where floor((2*(prime(k+1)-prime(k))*PrimePi(k) mod (8*k))/k) = m with m = 2.

The programs for A109556, there is no canonical definition to state claims against.
-/

/-! ## A109556.P18171747592505922739

`∩[A089743(n+1), A155990(n+1)]`
-/

namespace A109556.P18171747592505922739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109556.P18171747592505922739

/-! ## A109556.P11393375609811242489

`∩[A155990(n+1), A210450(n+1)]`
-/

namespace A109556.P11393375609811242489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109556.P11393375609811242489

/-! ## A109556.P13288100437906879814

`∩[A155990(n+1), A371123(n+1)]`
-/

namespace A109556.P13288100437906879814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109556.P13288100437906879814

/-!
# A109558: prime(k) for those k where floor((2*(prime(k+1)-prime(k))*PrimePi(k) mod (8*k))/k) = m with m = 4.

The programs for A109558, there is no canonical definition to state claims against.
-/

/-! ## A109558.P12861117850611573454

`A192175(A329683(n)+A152947(n+3))`
-/

namespace A109558.P12861117850611573454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (A329683 n + A152947 (n + 3)).toNat

end

end A109558.P12861117850611573454

/-!
# A109560: prime(k) for those k where floor((2*(prime(k+1)-prime(k))*PrimePi(k) mod (8*k))/k) = m with m = 6.

The programs for A109560, there is no canonical definition to state claims against.
-/

/-! ## A109560.P12571448337292177095

`A109276(A109328(n+1)+A109295(3*(n+1)))`
-/

namespace A109560.P12571448337292177095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109276 (A109328 (n + 1) + A109295 (3 * (n + 1))).toNat

end

end A109560.P12571448337292177095

/-!
# A109569: prime(k) for those k where floor((2*(prime(k+1)-prime(k))*PrimePi(k) mod (8*k))/k) = m with m = 15.

The programs for A109569, there is no canonical definition to state claims against.
-/

/-! ## A109569.P12296686995680599125

`A082890(lt[A073910(n+1), A117612(n)])`
-/

namespace A109569.P12296686995680599125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082890 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109569.P12296686995680599125

/-!
# A109570: E.g.f.: x/(1-sinh(x)).

The programs for A109570, there is no canonical definition to state claims against.
-/

/-! ## A109570.P10494097136719203140

`n*A006154(abs(1-n))`
-/

namespace A109570.P10494097136719203140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006154 |1 - (n : ℤ)|.toNat

end

end A109570.P10494097136719203140

/-! ## A109570.P13576306895444426775

`A070098(n*∑[n*a(n-1)]+1)` with `a(0)=1`
-/

namespace A109570.P13576306895444426775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A109570.P13576306895444426775

/-! ## A109570.P11321006560054296942

`Δ[A057354(∑[A020110(n)])]`
-/

namespace A109570.P11321006560054296942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109570.P11321006560054296942

/-!
# A109572: E.g.f.: x/[1-tan(x)].

The programs for A109572, there is no canonical definition to state claims against.
-/

/-! ## A109572.P3168339322566600468

`n*A000828(abs(1-n))`
-/

namespace A109572.P3168339322566600468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000828 |1 - (n : ℤ)|.toNat

end

end A109572.P3168339322566600468

/-! ## A109572.P1164584470286990629

`A008281(A000124(n))*A057711(n)`
-/

namespace A109572.P1164584470286990629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000124 n).toNat * A057711 n

end

end A109572.P1164584470286990629

/-! ## A109572.P10436112907223655660

`A008281(A000124(n))*A129952(n)`
-/

namespace A109572.P10436112907223655660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000124 n).toNat * A129952 n

end

end A109572.P10436112907223655660

/-! ## A109572.P2949948755575934005

`A109449(A000124(n))*A166444(n)`
-/

namespace A109572.P2949948755575934005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat * A166444 n

end

end A109572.P2949948755575934005

/-! ## A109572.P9921497454044151403

`A057711(n)*A109449(A161680(n))`
-/

namespace A109572.P9921497454044151403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n * A109449 (A161680 n).toNat

end

end A109572.P9921497454044151403

/-!
# A109573: E.g.f.: 2*x/(1+exp(-2*x)).

The programs for A109573, there is no canonical definition to state claims against.
-/

/-! ## A109573.P3796796720691193175

`n*A155585(abs(1-n))`
-/

namespace A109573.P3796796720691193175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A155585 |1 - (n : ℤ)|.toNat

end

end A109573.P3796796720691193175

/-! ## A109573.P10314734723155316601

`A154589(n)*A226158(n)`
-/

namespace A109573.P10314734723155316601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 n * A226158 n

end

end A109573.P10314734723155316601

/-! ## A109573.P5557031454725980973

`A157823(n)*A226158(n)`
-/

namespace A109573.P5557031454725980973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 n * A226158 n

end

end A109573.P5557031454725980973

/-! ## A109573.P7730783356156877831

`-(A011782(n)*A226158(n))`
-/

namespace A109573.P7730783356156877831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A011782 n * A226158 n)

end

end A109573.P7730783356156877831

/-! ## A109573.P17875049216273689374

`-(A131577(n)*A226158(n))`
-/

namespace A109573.P17875049216273689374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A131577 n * A226158 n)

end

end A109573.P17875049216273689374

/-! ## A109573.P9728473146595387387

`(1-A094373(n))*A226158(n)`
-/

namespace A109573.P9728473146595387387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A094373 n) * A226158 n

end

end A109573.P9728473146595387387

/-! ## A109573.P5673329533020792011

`(A011782(n)-A000079(n))*A226158(n)`
-/

namespace A109573.P5673329533020792011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n - A000079 n) * A226158 n

end

end A109573.P5673329533020792011

/-!
# A109574: Chen primes p such that p is palindromic.

The programs for A109574, there is no canonical definition to state claims against.
-/

/-! ## A109574.P17156017654687655169

`∩[A002113(n+1), A118725(n+1)]`
-/

namespace A109574.P17156017654687655169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P17156017654687655169

/-! ## A109574.P16789606165117960297

`∩[A002385(n+1), A118725(n+1)]`
-/

namespace A109574.P16789606165117960297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P16789606165117960297

/-! ## A109574.P15195074515350670035

`∩[A062687(n+1), A118725(n+1)]`
-/

namespace A109574.P15195074515350670035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P15195074515350670035

/-! ## A109574.P18081976793209672259

`∩[A069217(n+1), A118725(n+1)]`
-/

namespace A109574.P18081976793209672259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P18081976793209672259

/-! ## A109574.P10655224584059412946

`∩[A071251(n+1), A118725(n+1)]`
-/

namespace A109574.P10655224584059412946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P10655224584059412946

/-! ## A109574.P16898386121268953272

`∩[A072299(n+1), A118725(n+1)]`
-/

namespace A109574.P16898386121268953272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P16898386121268953272

/-! ## A109574.P7599168583029235309

`∩[A075800(n+1), A118725(n+1)]`
-/

namespace A109574.P7599168583029235309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P7599168583029235309

/-! ## A109574.P3140989048820632193

`∩[A080716(n+1), A118725(n+1)]`
-/

namespace A109574.P3140989048820632193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P3140989048820632193

/-! ## A109574.P14285941169236041306

`∩[A083136(n+1), A118725(n+1)]`
-/

namespace A109574.P14285941169236041306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P14285941169236041306

/-! ## A109574.P3526253024433499873

`∩[A083137(n+1), A118725(n+1)]`
-/

namespace A109574.P3526253024433499873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P3526253024433499873

/-! ## A109574.P12165408707863238886

`∩[A084092(n+1), A118725(n+1)]`
-/

namespace A109574.P12165408707863238886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P12165408707863238886

/-! ## A109574.P10850270294112385696

`∩[A098897(n+1), A118725(n+1)]`
-/

namespace A109574.P10850270294112385696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P10850270294112385696

/-! ## A109574.P12319246393904955953

`∩[A118725(n+1), A169829(n+1)]`
-/

namespace A109574.P12319246393904955953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P12319246393904955953

/-! ## A109574.P4887718963438648368

`∩[A118725(n+1), A188650(n+1)]`
-/

namespace A109574.P4887718963438648368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P4887718963438648368

/-! ## A109574.P11820302137376334481

`∩[A118725(n+1), A192139(n+1)]`
-/

namespace A109574.P11820302137376334481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P11820302137376334481

/-! ## A109574.P1068214602698899773

`∩[A118725(n+1), A226732(n+1)]`
-/

namespace A109574.P1068214602698899773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P1068214602698899773

/-! ## A109574.P15019384019918617715

`∩[A118725(n+1), A265641(n+1)]`
-/

namespace A109574.P15019384019918617715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P15019384019918617715

/-! ## A109574.P8909640719278934774

`∩[A118725(n+1), A306273(n+1)]`
-/

namespace A109574.P8909640719278934774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P8909640719278934774

/-! ## A109574.P17580925590111206061

`∩[A118725(n+1), A324988(n+1)]`
-/

namespace A109574.P17580925590111206061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P17580925590111206061

/-! ## A109574.P7921848410109740211

`∩[A118725(n+1), A324989(n+1)]`
-/

namespace A109574.P7921848410109740211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109574.P7921848410109740211

/-!
# A109576: E.g.f.: x/(1+3x-4x^3)=x/[1-T(3,x)], where T(3,x) is a Chebyshev polynomial.

The programs for A109576, there is no canonical definition to state claims against.
-/

/-! ## A109576.P5749452900196337423

`-(A045883(n)*A133942(n))`
-/

namespace A109576.P5749452900196337423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A045883 n * A133942 n)

end

end A109576.P5749452900196337423

/-! ## A109576.P13694179365741153313

`∏[-A028310(n)]*A045883(n)`
-/

namespace A109576.P13694179365741153313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A045883 n

end

end A109576.P13694179365741153313

/-! ## A109576.P989986009097586865

`(A000038(n)-A133942(n))*A045883(n)`
-/

namespace A109576.P989986009097586865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - A133942 n) * A045883 n

end

end A109576.P989986009097586865

/-! ## A109576.P11648782328467937475

`A000161(A002145(n+1))-A045883(n)*A133942(n)`
-/

namespace A109576.P11648782328467937475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A002145 (n + 1)).toNat - A045883 n * A133942 n

end

end A109576.P11648782328467937475

/-! ## A109576.P168371214106924134

`A132292(A004737(n+1))-A045883(n)*A133942(n)`
-/

namespace A109576.P168371214106924134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A004737 (n + 1)).toNat - A045883 n * A133942 n

end

end A109576.P168371214106924134

/-! ## A109576.P7104983770742100515

`A008683(A230362(n+1))*A045883(n)*A133942(n)`
-/

namespace A109576.P7104983770742100515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A230362 (n + 1)).toNat * A045883 n * A133942 n

end

end A109576.P7104983770742100515

/-!
# A109578: a(n) = (pi(n+1)-pi(n)) * (prime(n+1)-prime(n)), where pi(k) is the number of prime numbers less than or equal to k (= A000720(k)) and prime(k) is the k-th prime number (= A000040(k)).

The programs for A109578, the canonical program `A109578.P13973728524548716716` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109578 has offset 1).

The definition of A109578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109578.P13973728524548716716

`A010051(n+2)*A001223(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109578

/-- `A010051(n+2)*A001223(n+1)` -/
def P13973728524548716716.Spec : Prop :=
  ∀ n, P13973728524548716716.a n = A109578 (n + 1)

theorem P13973728524548716716.correct : P13973728524548716716.Spec := by
  intro n
  simp only [A109578, Nat.add_sub_cancel]

end A109578

/-! ## A109578.P18282416108100000634

`C(A001223(n+1), A318506(n+2)²)`
-/

namespace A109578.P18282416108100000634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001223 (n + 1)).toNat (A318506 (n + 2) ^ 2).toNat

end

end A109578.P18282416108100000634

namespace A109578

/-- `C(A001223(n+1), A318506(n+2)²)` -/
def P18282416108100000634.Spec : Prop :=
  ∀ n, (P18282416108100000634.a n : ℤ) = A109578 (n + 1)

end A109578

/-! ## A109578.P14958340253465868336

`Δ[A000720(n+1)]*A001223(n+1)`
-/

namespace A109578.P14958340253465868336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001223 (n + 1)

end

end A109578.P14958340253465868336

namespace A109578

/-- `Δ[A000720(n+1)]*A001223(n+1)` -/
def P14958340253465868336.Spec : Prop :=
  ∀ n, P14958340253465868336.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P11955132793994265417

`char[A040976(n+1)]*A001223(n+1)`
-/

namespace A109578.P11955132793994265417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001223 (n + 1)

end

end A109578.P11955132793994265417

namespace A109578

/-- `char[A040976(n+1)]*A001223(n+1)` -/
def P11955132793994265417.Spec : Prop :=
  ∀ n, P11955132793994265417.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P2231361830801441784

`Δ[A001749(n+1)/4]*A010051(n+2)`
-/

namespace A109578.P2231361830801441784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A010051 (n + 2) : ℚ)

end

end A109578.P2231361830801441784

namespace A109578

/-- `Δ[A001749(n+1)/4]*A010051(n+2)` -/
def P2231361830801441784.Spec : Prop :=
  ∀ n, P2231361830801441784.a n = (A109578 (n + 1) : ℚ)

end A109578

/-! ## A109578.P7470627143689793998

`char[A000040(n+1)-2]*A001223(n+1)`
-/

namespace A109578.P7470627143689793998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001223 (n + 1)

end

end A109578.P7470627143689793998

namespace A109578

/-- `char[A000040(n+1)-2]*A001223(n+1)` -/
def P7470627143689793998.Spec : Prop :=
  ∀ n, P7470627143689793998.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P9930600526622613437

`A006093(A010051(n+2)+n+1)-A006093(n+1)`
-/

namespace A109578.P9930600526622613437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A010051 (n + 2) + (n : ℤ) + 1).toNat - A006093 (n + 1)

end

end A109578.P9930600526622613437

namespace A109578

/-- `A006093(A010051(n+2)+n+1)-A006093(n+1)` -/
def P9930600526622613437.Spec : Prop :=
  ∀ n, P9930600526622613437.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P10792742158068196143

`(A000720(n+2)-A000720(n+1))*A001223(n+1)`
-/

namespace A109578.P10792742158068196143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) - A000720 (n + 1)) * A001223 (n + 1)

end

end A109578.P10792742158068196143

namespace A109578

/-- `(A000720(n+2)-A000720(n+1))*A001223(n+1)` -/
def P10792742158068196143.Spec : Prop :=
  ∀ n, P10792742158068196143.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P2725876653884009510

`A001223(n+1)-A001223(n+1)*A005171(n+2)`
-/

namespace A109578.P2725876653884009510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A001223 (n + 1) * A005171 (n + 2)

end

end A109578.P2725876653884009510

namespace A109578

/-- `A001223(n+1)-A001223(n+1)*A005171(n+2)` -/
def P2725876653884009510.Spec : Prop :=
  ∀ n, P2725876653884009510.a n = A109578 (n + 1)

theorem P2725876653884009510.correct : P2725876653884009510.Spec := by
  intro n
  simp only [A109578, Nat.add_sub_cancel, A109578.P2725876653884009510.a, A109578.P13973728524548716716.a, A001223, A001223.P5083310856331133973.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P15078252821583414300.a, A046933, A046933.P9479947770746769512.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A109578

/-! ## A109578.P13285218095323298427

`(A046933(n+1)+A010051(n+2))*A010051(n+2)`
-/

namespace A109578.P13285218095323298427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 1) + A010051 (n + 2)) * A010051 (n + 2)

end

end A109578.P13285218095323298427

namespace A109578

/-- `(A046933(n+1)+A010051(n+2))*A010051(n+2)` -/
def P13285218095323298427.Spec : Prop :=
  ∀ n, P13285218095323298427.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P7938205898714842745

`(A065091(n+1)-A000040(n+1))*A010051(n+2)`
-/

namespace A109578.P7938205898714842745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - A000040 (n + 1)) * A010051 (n + 2)

end

end A109578.P7938205898714842745

namespace A109578

/-- `(A065091(n+1)-A000040(n+1))*A010051(n+2)` -/
def P7938205898714842745.Spec : Prop :=
  ∀ n, P7938205898714842745.a n = A109578 (n + 1)

theorem P7938205898714842745.correct : P7938205898714842745.Spec := by
  intro n
  simp only [A109578, Nat.add_sub_cancel, A109578.P7938205898714842745.a, A109578.P13973728524548716716.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A010051, A010051.P15078252821583414300.a, A065091, A065091.P6971844946592549357.a, A046933, A046933.P9479947770746769512.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A109578

/-! ## A109578.P6240169716640441178

`(A085342(n+2)-A074398(n+2))*A001223(n+1)`
-/

namespace A109578.P6240169716640441178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085342 (n + 2) - A074398 (n + 2)) * A001223 (n + 1)

end

end A109578.P6240169716640441178

namespace A109578

/-- `(A085342(n+2)-A074398(n+2))*A001223(n+1)` -/
def P6240169716640441178.Spec : Prop :=
  ∀ n, P6240169716640441178.a n = A109578 (n + 1)

theorem P6240169716640441178.correct : P6240169716640441178.Spec := by
  intro n
  simp only [A109578, Nat.add_sub_cancel, A109578.P6240169716640441178.a, A109578.P13973728524548716716.a, A001223, A001223.P5083310856331133973.a, A010051, A010051.P15078252821583414300.a, A074398, A074398.P12832320423602718158.a, A085342, A085342.P7672575335003737733.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A046933, A046933.P9479947770746769512.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A109578

/-! ## A109578.P2338218879475513962

`(A082460(n+2)-A084360(n+2))*A001223(n+1)`
-/

namespace A109578.P2338218879475513962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082460 (n + 2) - A084360 (n + 2)) * A001223 (n + 1)

end

end A109578.P2338218879475513962

namespace A109578

/-- `(A082460(n+2)-A084360(n+2))*A001223(n+1)` -/
def P2338218879475513962.Spec : Prop :=
  ∀ n, P2338218879475513962.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P1599009550689831872

`A001223(n+1)*A129950(n+2)*A129950(n+2)`
-/

namespace A109578.P1599009550689831872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A129950 (n + 2) * A129950 (n + 2)

end

end A109578.P1599009550689831872

namespace A109578

/-- `A001223(n+1)*A129950(n+2)*A129950(n+2)` -/
def P1599009550689831872.Spec : Prop :=
  ∀ n, P1599009550689831872.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P926977971382613232

`A010051(n+2)*A075526(n+1)`
-/

namespace A109578.P926977971382613232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) * A075526 (n + 1)

end

end A109578.P926977971382613232

namespace A109578

/-- `A010051(n+2)*A075526(n+1)` -/
def P926977971382613232.Spec : Prop :=
  ∀ n, P926977971382613232.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P15094605761090875268

`A010051(n+2)*A054541(n+2)`
-/

namespace A109578.P15094605761090875268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) * A054541 (n + 2)

end

end A109578.P15094605761090875268

namespace A109578

/-- `A010051(n+2)*A054541(n+2)` -/
def P15094605761090875268.Spec : Prop :=
  ∀ n, P15094605761090875268.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P16362302347647803275

`C(2, A000005(n+2))*A054541(n+2)`
-/

namespace A109578.P16362302347647803275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000005 (n + 2)).toNat : ℤ) * A054541 (n + 2)

end

end A109578.P16362302347647803275

namespace A109578

/-- `C(2, A000005(n+2))*A054541(n+2)` -/
def P16362302347647803275.Spec : Prop :=
  ∀ n, P16362302347647803275.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P13990384662706311841

`Δ[A000040(n+1)]*Δ[A000720(n+1)]`
-/

namespace A109578.P13990384662706311841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A109578.P13990384662706311841

namespace A109578

/-- `Δ[A000040(n+1)]*Δ[A000720(n+1)]` -/
def P13990384662706311841.Spec : Prop :=
  ∀ n, P13990384662706311841.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P14191478589060078773

`Δ[A000720(n+1)]*Δ[A006093(n+1)]`
-/

namespace A109578.P14191478589060078773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A109578.P14191478589060078773

namespace A109578

/-- `Δ[A000720(n+1)]*Δ[A006093(n+1)]` -/
def P14191478589060078773.Spec : Prop :=
  ∀ n, P14191478589060078773.a n = A109578 (n + 1)

end A109578

/-! ## A109578.P6463371548372528914

`Δ[A000720(n+1)]*Δ[A008864(n+1)]`
-/

namespace A109578.P6463371548372528914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A109578.P6463371548372528914

namespace A109578

/-- `Δ[A000720(n+1)]*Δ[A008864(n+1)]` -/
def P6463371548372528914.Spec : Prop :=
  ∀ n, P6463371548372528914.a n = A109578 (n + 1)

end A109578

/-!
# A109579: Sum([pi(j+1)-pi(j)][prime(j+1)-prime(j)],j=1..n), where pi(k) is the number of prime numbers less than or equal to k and prime(k) is the k-th prime.

The programs for A109579, the canonical program `A109579.P11529250460295610906` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109579 has offset 1).

The definition of A109579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109579.P11529250460295610906

`∑[A109578(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109579

/-- `∑[A109578(n+1)]` -/
def P11529250460295610906.Spec : Prop :=
  ∀ n, P11529250460295610906.a n = A109579 (n + 1)

theorem P11529250460295610906.correct : P11529250460295610906.Spec := by
  intro n
  simp only [A109579, Nat.add_sub_cancel]

end A109579

/-! ## A109579.P6498889923370381566

`A109578(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A109579.P6498889923370381566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109578 (n + 1) + a (A023443 n).toNat

end

end A109579.P6498889923370381566

namespace A109579

/-- `A109578(n+1)+a(A023443(n))` -/
def P6498889923370381566.Spec : Prop :=
  ∀ n, P6498889923370381566.a n = A109579 (n + 1)

end A109579

/-! ## A109579.P4393323823249891537

`∑[A001223(n+1)*A010051(n+2)]`
-/

namespace A109579.P4393323823249891537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P4393323823249891537

namespace A109579

/-- `∑[A001223(n+1)*A010051(n+2)]` -/
def P4393323823249891537.Spec : Prop :=
  ∀ n, P4393323823249891537.a n = A109579 (n + 1)

end A109579

/-! ## A109579.P15853512799457331336

`∑[C(A001223(n+1), A347130(n+2))]`
-/

namespace A109579.P15853512799457331336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001223 (n + 1)).toNat (A347130 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P15853512799457331336

namespace A109579

/-- `∑[C(A001223(n+1), A347130(n+2))]` -/
def P15853512799457331336.Spec : Prop :=
  ∀ n, (P15853512799457331336.a n : ℤ) = A109579 (n + 1)

end A109579

/-! ## A109579.P18207666296728614591

`∑[C(A001223(n+1), A349905(n+2))]`
-/

namespace A109579.P18207666296728614591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001223 (n + 1)).toNat (A349905 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P18207666296728614591

namespace A109579

/-- `∑[C(A001223(n+1), A349905(n+2))]` -/
def P18207666296728614591.Spec : Prop :=
  ∀ n, (P18207666296728614591.a n : ℤ) = A109579 (n + 1)

end A109579

/-! ## A109579.P16627240587889885422

`∑[Δ[A000720(n+1)]*A001223(n+1)]`
-/

namespace A109579.P16627240587889885422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P16627240587889885422

namespace A109579

/-- `∑[Δ[A000720(n+1)]*A001223(n+1)]` -/
def P16627240587889885422.Spec : Prop :=
  ∀ n, P16627240587889885422.a n = A109579 (n + 1)

end A109579

/-! ## A109579.P7198724694130987751

`∑[C(A001223(n+1), A003415(n+2))]`
-/

namespace A109579.P7198724694130987751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001223 (n + 1)).toNat (A003415 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P7198724694130987751

namespace A109579

/-- `∑[C(A001223(n+1), A003415(n+2))]` -/
def P7198724694130987751.Spec : Prop :=
  ∀ n, (P7198724694130987751.a n : ℤ) = A109579 (n + 1)

end A109579

/-! ## A109579.P11837943846580597138

`∑[C(A001223(n+1), A351247(n+2))]`
-/

namespace A109579.P11837943846580597138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001223 (n + 1)).toNat (A351247 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P11837943846580597138

namespace A109579

/-- `∑[C(A001223(n+1), A351247(n+2))]` -/
def P11837943846580597138.Spec : Prop :=
  ∀ n, (P11837943846580597138.a n : ℤ) = A109579 (n + 1)

end A109579

/-! ## A109579.P8236433333034916061

`∑[Δ[A000040(n+1)]*A010051(n+2)]`
-/

namespace A109579.P8236433333034916061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P8236433333034916061

namespace A109579

/-- `∑[Δ[A000040(n+1)]*A010051(n+2)]` -/
def P8236433333034916061.Spec : Prop :=
  ∀ n, P8236433333034916061.a n = A109579 (n + 1)

end A109579

/-! ## A109579.P14927918377597774729

`∑[A096501(A064988(n+2))]`
-/

namespace A109579.P14927918377597774729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A064988 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109579.P14927918377597774729

namespace A109579

/-- `∑[A096501(A064988(n+2))]` -/
def P14927918377597774729.Spec : Prop :=
  ∀ n, P14927918377597774729.a n = A109579 (n + 1)

end A109579

/-!
# A109580: Primes in A109579.

The programs for A109580, the canonical program `A109580.P250940823031439561` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109580 has offset 1).

The definition of A109580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109580.P250940823031439561

`p?[A109579(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109580

/-- `p?[A109579(n+1)]` -/
def P250940823031439561.Spec : Prop :=
  ∀ n, P250940823031439561.a n = A109580 (n + 1)

theorem P250940823031439561.correct : P250940823031439561.Spec := by
  intro n
  simp only [A109580, Nat.add_sub_cancel]

end A109580

/-! ## A109580.P8151977507055565427

`p?[∑[A109578(n+1)]]`
-/

namespace A109580.P8151977507055565427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109580.P8151977507055565427

namespace A109580

/-- `p?[∑[A109578(n+1)]]` -/
def P8151977507055565427.Spec : Prop :=
  ∀ n, P8151977507055565427.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P1369016222271094187

`filter[A109579(n+1), A010051(#)]`
-/

namespace A109580.P1369016222271094187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A109580.P1369016222271094187

namespace A109580

/-- `filter[A109579(n+1), A010051(#)]` -/
def P1369016222271094187.Spec : Prop :=
  ∀ n, P1369016222271094187.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P14446305089149527708

`filter[A109579(n+1), A323153(#)]`
-/

namespace A109580.P14446305089149527708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A109580.P14446305089149527708

namespace A109580

/-- `filter[A109579(n+1), A323153(#)]` -/
def P14446305089149527708.Spec : Prop :=
  ∀ n, P14446305089149527708.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P15255224778881422612

`filter[A109579(n+1), A353670(#)]`
-/

namespace A109580.P15255224778881422612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A109580.P15255224778881422612

namespace A109580

/-- `filter[A109579(n+1), A353670(#)]` -/
def P15255224778881422612.Spec : Prop :=
  ∀ n, P15255224778881422612.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P15222328817165730107

`filter[A109579(n+2), A323152(#)]`
-/

namespace A109580.P15222328817165730107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A109580.P15222328817165730107

namespace A109580

/-- `filter[A109579(n+2), A323152(#)]` -/
def P15222328817165730107.Spec : Prop :=
  ∀ n, P15222328817165730107.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P3847511326392194969

`filter[A109579(n+2), A340371(#)]`
-/

namespace A109580.P3847511326392194969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A109580.P3847511326392194969

namespace A109580

/-- `filter[A109579(n+2), A340371(#)]` -/
def P3847511326392194969.Spec : Prop :=
  ∀ n, P3847511326392194969.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P14839498703977337555

`filter[A109579(n+2), A351957(#)]`
-/

namespace A109580.P14839498703977337555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A109580.P14839498703977337555

namespace A109580

/-- `filter[A109579(n+2), A351957(#)]` -/
def P14839498703977337555.Spec : Prop :=
  ∀ n, P14839498703977337555.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P13855383362883569074

`p?[∑[A001223(n+1)*A010051(n+2)]]`
-/

namespace A109580.P13855383362883569074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A010051 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109580.P13855383362883569074

namespace A109580

/-- `p?[∑[A001223(n+1)*A010051(n+2)]]` -/
def P13855383362883569074.Spec : Prop :=
  ∀ n, P13855383362883569074.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P10784370982227795044

`p?[∑[A001223(n+1)*A080339(n+2)]]`
-/

namespace A109580.P10784370982227795044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A080339 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109580.P10784370982227795044

namespace A109580

/-- `p?[∑[A001223(n+1)*A080339(n+2)]]` -/
def P10784370982227795044.Spec : Prop :=
  ∀ n, P10784370982227795044.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P912665548561618398

`filter[A109579(n+2), A080339(#)]`
-/

namespace A109580.P912665548561618398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A109580.P912665548561618398

namespace A109580

/-- `filter[A109579(n+2), A080339(#)]` -/
def P912665548561618398.Spec : Prop :=
  ∀ n, P912665548561618398.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P1398404571124622780

`filter[A109579(n+2), A080545(#)]`
-/

namespace A109580.P1398404571124622780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A109580.P1398404571124622780

namespace A109580

/-- `filter[A109579(n+2), A080545(#)]` -/
def P1398404571124622780.Spec : Prop :=
  ∀ n, P1398404571124622780.a n = A109580 (n + 1)

end A109580

/-! ## A109580.P2330832455488872709

`p?[∑[A096501(A064988(n+1))]]`
-/

namespace A109580.P2330832455488872709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A064988 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109580.P2330832455488872709

namespace A109580

/-- `p?[∑[A096501(A064988(n+1))]]` -/
def P2330832455488872709.Spec : Prop :=
  ∀ n, P2330832455488872709.a n = A109580 (n + 1)

end A109580

/-!
# A109581: E.g.f.: x/(1+x-x^3).

The programs for A109581, there is no canonical definition to state claims against.
-/

/-! ## A109581.P554916756557291492

`-(n!*A104769(n))`
-/

namespace A109581.P554916756557291492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial n : ℤ) * A104769 n)

end

end A109581.P554916756557291492

/-! ## A109581.P14652008542300734677

`n!*A176971(n+2)`
-/

namespace A109581.P14652008542300734677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A176971 (n + 2)

end

end A109581.P14652008542300734677

/-! ## A109581.P3005102805169067811

`n!*∑[A104769(n+4)]`
-/

namespace A109581.P3005102805169067811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109581.P3005102805169067811

/-! ## A109581.P1408639107070207230

`-(A000142(n)*A104769(n))`
-/

namespace A109581.P1408639107070207230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000142 n * A104769 n)

end

end A109581.P1408639107070207230

/-! ## A109581.P10530159187775633918

`record[A084938(n+1)]*A176971(n+2)`
-/

namespace A109581.P10530159187775633918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A176971 (n + 2)

end

end A109581.P10530159187775633918

/-!
# A109582: Expansion of e.g.f.: -1/(1+x-x^3).

The programs for A109582, the canonical program `A109582.P6850575601531674303` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109582 has offset 0).

The definition of A109582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109582.P6850575601531674303

`n!*A104769(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109582

/-- `n!*A104769(n+1)` -/
def P6850575601531674303.Spec : Prop :=
  ∀ n, P6850575601531674303.a n = A109582 n

theorem P6850575601531674303.correct : P6850575601531674303.Spec := by
  intro n
  simp only [A109582]

end A109582

/-! ## A109582.P8960324157291228181

`-(n!*A247917(n))`
-/

namespace A109582.P8960324157291228181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial n : ℤ) * A247917 n)

end

end A109582.P8960324157291228181

namespace A109582

/-- `-(n!*A247917(n))` -/
def P8960324157291228181.Spec : Prop :=
  ∀ n, P8960324157291228181.a n = A109582 n

end A109582

/-! ## A109582.P7674687558022851609

`-(A000142(n)*A247917(n))`
-/

namespace A109582.P7674687558022851609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000142 n * A247917 n)

end

end A109582.P7674687558022851609

namespace A109582

/-- `-(A000142(n)*A247917(n))` -/
def P7674687558022851609.Spec : Prop :=
  ∀ n, P7674687558022851609.a n = A109582 n

end A109582

/-! ## A109582.P17927253594955655900

`A000142(n)*A104769(n+1)`
-/

namespace A109582.P17927253594955655900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A104769 (n + 1)

end

end A109582.P17927253594955655900

namespace A109582

/-- `A000142(n)*A104769(n+1)` -/
def P17927253594955655900.Spec : Prop :=
  ∀ n, P17927253594955655900.a n = A109582 n

end A109582

/-! ## A109582.P12771643802315563780

`A025455(63*n+11)-n!*A247917(n)`
-/

namespace A109582.P12771643802315563780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (63 * n + 11) - (Nat.factorial n : ℤ) * A247917 n

end

end A109582.P12771643802315563780

namespace A109582

/-- `A025455(63*n+11)-n!*A247917(n)` -/
def P12771643802315563780.Spec : Prop :=
  ∀ n, P12771643802315563780.a n = A109582 n

end A109582

/-! ## A109582.P870822954073931089

`A000007(n+1)-A000142(n)*A247917(n)`
-/

namespace A109582.P870822954073931089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A000142 n * A247917 n

end

end A109582.P870822954073931089

namespace A109582

/-- `A000007(n+1)-A000142(n)*A247917(n)` -/
def P870822954073931089.Spec : Prop :=
  ∀ n, P870822954073931089.a n = A109582 n

end A109582

/-!
# A109583: Let x^3/(-1-x+x^3)=Sum[b[n]*x^n/n1,{n,0,Infinity}]; a(n) = Abs[b[n]].

The programs for A109583, there is no canonical definition to state claims against.
-/

/-! ## A109583.P18206730275686193700

`abs(A176971(floor(acot(n)+n))*n!)`
-/

namespace A109583.P18206730275686193700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176971 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat * (Nat.factorial n : ℤ)|

end

end A109583.P18206730275686193700

/-! ## A109583.P17479816149372207399

`abs((A176971(n)-floor(acot(n)))*n!)`
-/

namespace A109583.P17479816149372207399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A176971 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋) * (Nat.factorial n : ℤ)|

end

end A109583.P17479816149372207399

/-! ## A109583.P8004712772464980195

`A000142(n)*A373241(A000244(n))`
-/

namespace A109583.P8004712772464980195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A373241 (A000244 n).toNat

end

end A109583.P8004712772464980195

/-! ## A109583.P10234448452517011078

`A000142(n)*A037833(A180652(3*n+1))`
-/

namespace A109583.P10234448452517011078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A037833 (A180652 (3 * n + 1)).toNat

end

end A109583.P10234448452517011078

/-! ## A109583.P11940097133723033980

`n!*A062977(A227478(n+1))`
-/

namespace A109583.P11940097133723033980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A062977 (A227478 (n + 1)).toNat

end

end A109583.P11940097133723033980

/-!
# A109584: a(n) = (prime(n+1) - prime(n))^pi(n).

The programs for A109584, the canonical program `A109584.P2007252456060764204` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109584 has offset 1).

The definition of A109584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109584.P1695795711297814544

`Δ[p?[xor(1, n)+1]]^A000720(n+1)`
-/

namespace A109584.P1695795711297814544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A109584.P1695795711297814544

namespace A109584

/-- `Δ[p?[xor(1, n)+1]]^A000720(n+1)` -/
def P1695795711297814544.Spec : Prop :=
  ∀ n, P1695795711297814544.a n = (A109584 (n + 1) : ℚ)

end A109584

/-! ## A109584.P2007252456060764204

`A001223(n+1)^∑[∑{p}[n+1, val(#, n+1)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109584

/-- `A001223(n+1)^∑[∑{p}[n+1, val(#, n+1)]]` -/
def P2007252456060764204.Spec : Prop :=
  ∀ n, P2007252456060764204.a n = A109584 (n + 1)

theorem P2007252456060764204.correct : P2007252456060764204.Spec := by
  intro n
  simp only [A109584, Nat.add_sub_cancel]

end A109584

/-! ## A109584.P13095803625113074628

`(A123128(n+1)-(n+1))^∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A109584.P13095803625113074628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123128 (n + 1) - (n + 1 : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109584.P13095803625113074628

namespace A109584

/-- `(A123128(n+1)-(n+1))^∑[∑{p}[n+1, val(#, n+1)]]` -/
def P13095803625113074628.Spec : Prop :=
  ∀ n, P13095803625113074628.a n = A109584 (n + 1)

theorem P13095803625113074628.correct : P13095803625113074628.Spec := by
  intro n
  simp only [A109584, Nat.add_sub_cancel, A109584.P13095803625113074628.f2, A109584.P13095803625113074628.f1, A109584.P13095803625113074628.a, A109584.P2007252456060764204.f2, A109584.P2007252456060764204.f1, A109584.P2007252456060764204.a, A001223, A001223.P5083310856331133973.a, A123128, A123128.P14620295915267660605.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109584

/-! ## A109584.P4194891095902337364

`A001223(n+1)^A000720(n+1)`
-/

namespace A109584.P4194891095902337364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A109584.P4194891095902337364

namespace A109584

/-- `A001223(n+1)^A000720(n+1)` -/
def P4194891095902337364.Spec : Prop :=
  ∀ n, P4194891095902337364.a n = (A109584 (n + 1) : ℚ)

end A109584

/-! ## A109584.P10070060894721667287

`A075526(n+1)^A000720(n+1)`
-/

namespace A109584.P10070060894721667287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075526 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A109584.P10070060894721667287

namespace A109584

/-- `A075526(n+1)^A000720(n+1)` -/
def P10070060894721667287.Spec : Prop :=
  ∀ n, P10070060894721667287.a n = (A109584 (n + 1) : ℚ)

end A109584

/-!
# A109585: a(n) = ( prime(n+1) - prime(n) )^(n+1).

The programs for A109585, the canonical program `A109585.P14301731113117806331` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109585 has offset 1).

The definition of A109585 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109585.P14301731113117806331

`A001223(n+1)^(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109585

/-- `A001223(n+1)^(n+2)` -/
def P14301731113117806331.Spec : Prop :=
  ∀ n, P14301731113117806331.a n = A109585 (n + 1)

theorem P14301731113117806331.correct : P14301731113117806331.Spec := by
  intro n
  simp only [A109585, Nat.add_sub_cancel]

end A109585

/-! ## A109585.P5064465514724615067

`A075526(n+1)^(n+2)`
-/

namespace A109585.P5064465514724615067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) ^ (n + 2)

end

end A109585.P5064465514724615067

namespace A109585

/-- `A075526(n+1)^(n+2)` -/
def P5064465514724615067.Spec : Prop :=
  ∀ n, P5064465514724615067.a n = A109585 (n + 1)

end A109585

/-! ## A109585.P11220686633127429454

`A054541(n+2)^(n+2)`
-/

namespace A109585.P11220686633127429454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) ^ (n + 2)

end

end A109585.P11220686633127429454

namespace A109585

/-- `A054541(n+2)^(n+2)` -/
def P11220686633127429454.Spec : Prop :=
  ∀ n, P11220686633127429454.a n = A109585 (n + 1)

end A109585

/-! ## A109585.P11778133289997721935

`A125266(n+2)^(n+2)`
-/

namespace A109585.P11778133289997721935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2) ^ (n + 2)

end

end A109585.P11778133289997721935

namespace A109585

/-- `A125266(n+2)^(n+2)` -/
def P11778133289997721935.Spec : Prop :=
  ∀ n, P11778133289997721935.a n = A109585 (n + 1)

end A109585

/-! ## A109585.P2520796118145376561

`Δ[A000040(n+1)]^(n+2)`
-/

namespace A109585.P2520796118145376561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 2)

end

end A109585.P2520796118145376561

namespace A109585

/-- `Δ[A000040(n+1)]^(n+2)` -/
def P2520796118145376561.Spec : Prop :=
  ∀ n, P2520796118145376561.a n = A109585 (n + 1)

theorem P2520796118145376561.correct : P2520796118145376561.Spec := by
  intro n
  simp only [A109585, Nat.add_sub_cancel, A109585.P2520796118145376561.f1, A109585.P2520796118145376561.a, A109585.P14301731113117806331.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109585

/-! ## A109585.P6126808206379650280

`A219606(2*n+1)^(n+2)`
-/

namespace A109585.P6126808206379650280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * n + 1) ^ (n + 2)

end

end A109585.P6126808206379650280

namespace A109585

/-- `A219606(2*n+1)^(n+2)` -/
def P6126808206379650280.Spec : Prop :=
  ∀ n, P6126808206379650280.a n = A109585 (n + 1)

end A109585

/-! ## A109585.P8438758092952994059

`A262138(2*n+1)^(n+2)`
-/

namespace A109585.P8438758092952994059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262138 (2 * n + 1) ^ (n + 2)

end

end A109585.P8438758092952994059

namespace A109585

/-- `A262138(2*n+1)^(n+2)` -/
def P8438758092952994059.Spec : Prop :=
  ∀ n, P8438758092952994059.a n = A109585 (n + 1)

end A109585

/-! ## A109585.P2775783455103474616

`Δ[record[A000010(n+1)]]^(n+2)`
-/

namespace A109585.P2775783455103474616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 2)

end

end A109585.P2775783455103474616

namespace A109585

/-- `Δ[record[A000010(n+1)]]^(n+2)` -/
def P2775783455103474616.Spec : Prop :=
  ∀ n, P2775783455103474616.a n = A109585 (n + 1)

end A109585

/-! ## A109585.P13905198466640197024

`Δ[record[A006530(n+2)]]^(n+2)`
-/

namespace A109585.P13905198466640197024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 2)

end

end A109585.P13905198466640197024

namespace A109585

/-- `Δ[record[A006530(n+2)]]^(n+2)` -/
def P13905198466640197024.Spec : Prop :=
  ∀ n, P13905198466640197024.a n = A109585 (n + 1)

end A109585

/-! ## A109585.P13298434084322636699

`Δ[record[A020639(n+2)]]^(n+2)`
-/

namespace A109585.P13298434084322636699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 2)

end

end A109585.P13298434084322636699

namespace A109585

/-- `Δ[record[A020639(n+2)]]^(n+2)` -/
def P13298434084322636699.Spec : Prop :=
  ∀ n, P13298434084322636699.a n = A109585 (n + 1)

end A109585

/-!
# A109586: a(n)=prime(n)^b(n), where b(n) is the Hofstadter Q-sequence: b(1)= b(2)= 1; b(n)=b(n-b(n-1))+b(n-b(n-2)) for n > 2 (A005185).

The programs for A109586, there is no canonical definition to state claims against.
-/

/-! ## A109586.P16167629662307145255

`Δ[A007504(n)]^A005185(n+1)`
-/

namespace A109586.P16167629662307145255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A005185 (n + 1) : ℤ)

end

end A109586.P16167629662307145255

/-! ## A109586.P1228731290427722949

`p?[A001057(n)]^A005185(n+1)`
-/

namespace A109586.P1228731290427722949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A005185 (n + 1) : ℤ)

end

end A109586.P1228731290427722949

/-! ## A109586.P7415744502284343713

`p?[A004274(n)]^A005185(n+1)`
-/

namespace A109586.P7415744502284343713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A005185 (n + 1) : ℤ)

end

end A109586.P7415744502284343713

/-! ## A109586.P11581917337525866636

`A000040(n+1)^A005185(n+1)`
-/

namespace A109586.P11581917337525866636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A005185 (n + 1) : ℤ)

end

end A109586.P11581917337525866636

/-! ## A109586.P3497461881845478650

`record[A006530(n+2)]^A005185(n+1)`
-/

namespace A109586.P3497461881845478650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A005185 (n + 1) : ℤ)

end

end A109586.P3497461881845478650

/-!
# A109587: a(n)=[prime(n+2)-2*prime(n+1)-prime(n)]^(n+1), where prime(k) is the k-th prime.

The programs for A109587, there is no canonical definition to state claims against.
-/

/-! ## A109587.P2044641730844127401

`(A036263(n+1)-A100484(n+1))^(n+2)`
-/

namespace A109587.P2044641730844127401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 1) - A100484 (n + 1)) ^ (n + 2)

end

end A109587.P2044641730844127401

/-!
# A109588: n followed by n^2 followed by n^3.

The programs for A109588, the canonical program `A109588.P2336709640375961659` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109588 has offset 1).

The definition of A109588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109588.P2336709640375961659

`ceil((n+1)/3)^(dr(3*(n+1))/3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109588

/-- `ceil((n+1)/3)^(dr(3*(n+1))/3)` -/
def P2336709640375961659.Spec : Prop :=
  ∀ n, P2336709640375961659.a n = (A109588 (n + 1) : ℝ)

end A109588

/-! ## A109588.P4518524969337191691

`A109594(A064429(n)+1)`
-/

namespace A109588.P4518524969337191691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A064429 n + 1).toNat

end

end A109588.P4518524969337191691

namespace A109588

/-- `A109594(A064429(n)+1)` -/
def P4518524969337191691.Spec : Prop :=
  ∀ n, P4518524969337191691.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P11403543835643824081

`A109594(A080782(n+1))`
-/

namespace A109588.P11403543835643824081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A080782 (n + 1)).toNat

end

end A109588.P11403543835643824081

namespace A109588

/-- `A109594(A080782(n+1))` -/
def P11403543835643824081.Spec : Prop :=
  ∀ n, P11403543835643824081.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P9889267155665458483

`(A002264(n)+1)^A010882(n)`
-/

namespace A109588.P9889267155665458483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 n + 1 : ℚ) ^ (A010882 n : ℤ)

end

end A109588.P9889267155665458483

namespace A109588

/-- `(A002264(n)+1)^A010882(n)` -/
def P9889267155665458483.Spec : Prop :=
  ∀ n, P9889267155665458483.a n = (A109588 (n + 1) : ℚ)

end A109588

/-! ## A109588.P13761802740021175805

`A109594(n+1-A057078(n+1))`
-/

namespace A109588.P13761802740021175805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 ((n + 1 : ℤ) - A057078 (n + 1)).toNat

end

end A109588.P13761802740021175805

namespace A109588

/-- `A109594(n+1-A057078(n+1))` -/
def P13761802740021175805.Spec : Prop :=
  ∀ n, P13761802740021175805.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P5218694346902161539

`A008620(n)²²/A109595(n+1)`
-/

namespace A109588.P5218694346902161539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008620 n ^ 2) ^ 2 : ℚ) / (A109595 (n + 1) : ℚ)

end

end A109588.P5218694346902161539

namespace A109588

/-- `A008620(n)²²/A109595(n+1)` -/
def P5218694346902161539.Spec : Prop :=
  ∀ n, P5218694346902161539.a n = (A109588 (n + 1) : ℚ)

end A109588

/-! ## A109588.P13729135580615117402

`A109816(A064429(n+1))`
-/

namespace A109588.P13729135580615117402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A064429 (n + 1)).toNat

end

end A109588.P13729135580615117402

namespace A109588

/-- `A109816(A064429(n+1))` -/
def P13729135580615117402.Spec : Prop :=
  ∀ n, P13729135580615117402.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P9682305326015315990

`A109595(A113655(n+1))`
-/

namespace A109588.P9682305326015315990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A113655 (n + 1)).toNat

end

end A109588.P9682305326015315990

namespace A109588

/-- `A109595(A113655(n+1))` -/
def P9682305326015315990.Spec : Prop :=
  ∀ n, P9682305326015315990.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P9559581318479560357

`A109614(A130508(n+1))`
-/

namespace A109588.P9559581318479560357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A130508 (n + 1)).toNat

end

end A109588.P9559581318479560357

namespace A109588

/-- `A109614(A130508(n+1))` -/
def P9559581318479560357.Spec : Prop :=
  ∀ n, P9559581318479560357.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P4071960195747081044

`A109815(A130509(n+1))`
-/

namespace A109588.P4071960195747081044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A130509 (n + 1)).toNat

end

end A109588.P4071960195747081044

namespace A109588

/-- `A109815(A130509(n+1))` -/
def P4071960195747081044.Spec : Prop :=
  ∀ n, P4071960195747081044.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P15572626945655111023

`A109816(A236348(n)+1)`
-/

namespace A109588.P15572626945655111023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A236348 n + 1).toNat

end

end A109588.P15572626945655111023

namespace A109588

/-- `A109816(A236348(n)+1)` -/
def P15572626945655111023.Spec : Prop :=
  ∀ n, P15572626945655111023.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P13315533719190439250

`A109816(A080782(n+2)-1)`
-/

namespace A109588.P13315533719190439250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A080782 (n + 2) - 1).toNat

end

end A109588.P13315533719190439250

namespace A109588

/-- `A109816(A080782(n+2)-1)` -/
def P13315533719190439250.Spec : Prop :=
  ∀ n, P13315533719190439250.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P8497627795124943526

`A109594(A010872(n+1)+n)`
-/

namespace A109588.P8497627795124943526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A010872 (n + 1) + (n : ℤ)).toNat

end

end A109588.P8497627795124943526

namespace A109588

/-- `A109594(A010872(n+1)+n)` -/
def P8497627795124943526.Spec : Prop :=
  ∀ n, P8497627795124943526.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P3803457070163736849

`A109816(A010872(n+2)+n)`
-/

namespace A109588.P3803457070163736849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A010872 (n + 2) + (n : ℤ)).toNat

end

end A109588.P3803457070163736849

namespace A109588

/-- `A109816(A010872(n+2)+n)` -/
def P3803457070163736849.Spec : Prop :=
  ∀ n, P3803457070163736849.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P17086635849972181783

`A110001(comp[4*n])`
-/

namespace A109588.P17086635849972181783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A109588.P17086635849972181783

namespace A109588

/-- `A110001(comp[4*n])` -/
def P17086635849972181783.Spec : Prop :=
  ∀ n, P17086635849972181783.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P9643942779910987684

`A110009(record[A116966(n)])`
-/

namespace A109588.P9643942779910987684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109588.P9643942779910987684

namespace A109588

/-- `A110009(record[A116966(n)])` -/
def P9643942779910987684.Spec : Prop :=
  ∀ n, P9643942779910987684.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P1774383130027360127

`A110005(A004773(n+1))`
-/

namespace A109588.P1774383130027360127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A004773 (n + 1)).toNat

end

end A109588.P1774383130027360127

namespace A109588

/-- `A110005(A004773(n+1))` -/
def P1774383130027360127.Spec : Prop :=
  ∀ n, P1774383130027360127.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P18151058661874466018

`A110485(A131452(n+1))`
-/

namespace A109588.P18151058661874466018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A131452 (n + 1)).toNat

end

end A109588.P18151058661874466018

namespace A109588

/-- `A110485(A131452(n+1))` -/
def P18151058661874466018.Spec : Prop :=
  ∀ n, P18151058661874466018.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P1645317213091441013

`A110009(A042965(n+2))`
-/

namespace A109588.P1645317213091441013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A042965 (n + 2)).toNat

end

end A109588.P1645317213091441013

namespace A109588

/-- `A110009(A042965(n+2))` -/
def P1645317213091441013.Spec : Prop :=
  ∀ n, P1645317213091441013.a n = A109588 (n + 1)

end A109588

/-! ## A109588.P16224215523699105814

`A110009(record[A056699(n+1)])`
-/

namespace A109588.P16224215523699105814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109588.P16224215523699105814

namespace A109588

/-- `A110009(record[A056699(n+1)])` -/
def P16224215523699105814.Spec : Prop :=
  ∀ n, P16224215523699105814.a n = A109588 (n + 1)

end A109588

/-!
# A109592: Sequence and first differences include all even numbers exactly once and no odd numbers.

The programs for A109592, there is no canonical definition to state claims against.
-/

/-! ## A109592.P4464247957662031284

`2*A005228(n+1)`
-/

namespace A109592.P4464247957662031284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005228 (n + 1)

end

end A109592.P4464247957662031284

/-! ## A109592.P17584714515411386427

`2*(A081689(n)+1)`
-/

namespace A109592.P17584714515411386427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081689 n + 1)

end

end A109592.P17584714515411386427

/-! ## A109592.P11804195672871873211

`∑[2*(A081688(n)+1)]`
-/

namespace A109592.P11804195672871873211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081688 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109592.P11804195672871873211

/-! ## A109592.P17365781298061569648

`a(n-1)+2*A030124(n)` with `a(0)=2`
-/

namespace A109592.P17365781298061569648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A030124 n

end

end A109592.P17365781298061569648

/-! ## A109592.P14624599875140368295

`2*(A065130(n+1)+∑[n+1])`
-/

namespace A109592.P14624599875140368295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A065130 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A109592.P14624599875140368295

/-! ## A109592.P182878175777865490

`2*(A294397(n)+A157928(n))`
-/

namespace A109592.P182878175777865490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294397 n + A157928 n)

end

end A109592.P182878175777865490

/-! ## A109592.P4294030625127077565

`A005228(n+1)+A081689(n)+1`
-/

namespace A109592.P4294030625127077565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + (A081689 n + 1)

end

end A109592.P4294030625127077565

/-! ## A109592.P4100860714644802558

`2*(A061577(n+1)-A000007(n))`
-/

namespace A109592.P4100860714644802558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061577 (n + 1) - A000007 n)

end

end A109592.P4100860714644802558

/-! ## A109592.P1156488596939056495

`2*A061577(n+1)/A054977(n)`
-/

namespace A109592.P1156488596939056495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A061577 (n + 1) : ℚ) / (A054977 n : ℚ))

end

end A109592.P1156488596939056495

/-! ## A109592.P14129244771543650177

`A005228(A000027(n+1))+A005228(n+1)`
-/

namespace A109592.P14129244771543650177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (A000027 (n + 1)).toNat + A005228 (n + 1)

end

end A109592.P14129244771543650177

/-! ## A109592.P16919581454497524820

`A005228(n+1)+A005228(A023443(n)+2)`
-/

namespace A109592.P16919581454497524820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + A005228 (A023443 n + 2).toNat

end

end A109592.P16919581454497524820

/-! ## A109592.P8702838518666430960

`A000217(n+1)+A065130(n+1)+A005228(n+1)`
-/

namespace A109592.P8702838518666430960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A065130 (n + 1) + A005228 (n + 1))

end

end A109592.P8702838518666430960

/-! ## A109592.P3046829093904734234

`A022953(n+1)+A061577(n+1)-A061578(n+1)`
-/

namespace A109592.P3046829093904734234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022953 (n + 1) + (A061577 (n + 1) - A061578 (n + 1))

end

end A109592.P3046829093904734234

/-! ## A109592.P6319816549417296509

`A005228(n+1)+A005228(n+2)-A030124(n+1)`
-/

namespace A109592.P6319816549417296509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + (A005228 (n + 2) - A030124 (n + 1))

end

end A109592.P6319816549417296509

/-! ## A109592.P16967371064296636176

`2*A167151(Δ[n²])`
-/

namespace A109592.P16967371064296636176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167151 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A109592.P16967371064296636176

/-! ## A109592.P5895080929439411450

`2*(A167151(2*n+1)+(2*n)%2)`
-/

namespace A109592.P5895080929439411450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A167151 (2 * n + 1) + ((2 * n % 2 : ℕ) : ℤ))

end

end A109592.P5895080929439411450

/-! ## A109592.P3137827643688209965

`2*A167151(2*n+1)*A247004(2*n+1)`
-/

namespace A109592.P3137827643688209965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A167151 (2 * n + 1) * A247004 (2 * n + 1))

end

end A109592.P3137827643688209965

/-! ## A109592.P12179926405273029048

`2*gcd(A167151(2*n+1), A167166(2*(n+2)))`
-/

namespace A109592.P12179926405273029048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A167151 (2 * n + 1)) (A167166 (2 * (n + 2)))

end

end A109592.P12179926405273029048

/-! ## A109592.P17178550801649264089

`record[Δ[2*A167151(n)]]`
-/

namespace A109592.P17178550801649264089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109592.P17178550801649264089

/-!
# A109593: Sequence and first differences include all odd numbers exactly once.

The programs for A109593, there is no canonical definition to state claims against.
-/

/-! ## A109593.P11700037619264926580

`∑[record[or(1, n%A182165(n+1))]]`
-/

namespace A109593.P11700037619264926580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod (n : ℤ) (A182165 (n + 1)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109593.P11700037619264926580

/-! ## A109593.P4161209578115226377

`∑[record[A000265(n+1)%A192984(n+1)]]`
-/

namespace A109593.P4161209578115226377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A192984 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109593.P4161209578115226377

/-! ## A109593.P151002799425612031

`∑[∑[A074473(A054901(n+1))]]`
-/

namespace A109593.P151002799425612031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A054901 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109593.P151002799425612031

/-! ## A109593.P6928438419231705136

`∑[∑[A001176(A000384(3*n+1))]]`
-/

namespace A109593.P6928438419231705136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A000384 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109593.P6928438419231705136

/-! ## A109593.P5383008666558057633

`∑[lt[A130753(2*n+3), A090088(n+1)]]`
-/

namespace A109593.P5383008666558057633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130753 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109593.P5383008666558057633

/-!
# A109594: n followed by n^3 followed by n^2.

The programs for A109594, the canonical program `A109594.P12159731967704815742` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109594 has offset 1).

The definition of A109594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109594.P12159731967704815742

`A109588(A064429(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109594

/-- `A109588(A064429(n)+1)` -/
def P12159731967704815742.Spec : Prop :=
  ∀ n, P12159731967704815742.a n = A109594 (n + 1)

theorem P12159731967704815742.correct : P12159731967704815742.Spec := by
  intro n
  simp only [A109594, Nat.add_sub_cancel]

end A109594

/-! ## A109594.P11816869735883741361

`A109588(A080782(n+1))`
-/

namespace A109594.P11816869735883741361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A080782 (n + 1)).toNat

end

end A109594.P11816869735883741361

namespace A109594

/-- `A109588(A080782(n+1))` -/
def P11816869735883741361.Spec : Prop :=
  ∀ n, P11816869735883741361.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P17579615536901540313

`A008620(n)^A130784(n)`
-/

namespace A109594.P17579615536901540313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) ^ (A130784 n : ℤ)

end

end A109594.P17579615536901540313

namespace A109594

/-- `A008620(n)^A130784(n)` -/
def P17579615536901540313.Spec : Prop :=
  ∀ n, P17579615536901540313.a n = (A109594 (n + 1) : ℚ)

end A109594

/-! ## A109594.P1479791543464345341

`A109614(A064429(n+1))`
-/

namespace A109594.P1479791543464345341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A064429 (n + 1)).toNat

end

end A109594.P1479791543464345341

namespace A109594

/-- `A109614(A064429(n+1))` -/
def P1479791543464345341.Spec : Prop :=
  ∀ n, P1479791543464345341.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P6940265474061385249

`A109815(A113655(n+1))`
-/

namespace A109594.P6940265474061385249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A113655 (n + 1)).toNat

end

end A109594.P6940265474061385249

namespace A109594

/-- `A109815(A113655(n+1))` -/
def P6940265474061385249.Spec : Prop :=
  ∀ n, P6940265474061385249.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P6154982685205354740

`A109595(A130509(n+1))`
-/

namespace A109594.P6154982685205354740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A130509 (n + 1)).toNat

end

end A109594.P6154982685205354740

namespace A109594

/-- `A109595(A130509(n+1))` -/
def P6154982685205354740.Spec : Prop :=
  ∀ n, P6154982685205354740.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P17701867260942921753

`A109816(A130508(n+1))`
-/

namespace A109594.P17701867260942921753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A130508 (n + 1)).toNat

end

end A109594.P17701867260942921753

namespace A109594

/-- `A109816(A130508(n+1))` -/
def P17701867260942921753.Spec : Prop :=
  ∀ n, P17701867260942921753.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P9400598939533157552

`A109614(A080782(n+2)-1)`
-/

namespace A109594.P9400598939533157552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A080782 (n + 2) - 1).toNat

end

end A109594.P9400598939533157552

namespace A109594

/-- `A109614(A080782(n+2)-1)` -/
def P9400598939533157552.Spec : Prop :=
  ∀ n, P9400598939533157552.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P9389115246102695306

`A109588(A010872(n+1)+n)`
-/

namespace A109594.P9389115246102695306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A010872 (n + 1) + (n : ℤ)).toNat

end

end A109594.P9389115246102695306

namespace A109594

/-- `A109588(A010872(n+1)+n)` -/
def P9389115246102695306.Spec : Prop :=
  ∀ n, P9389115246102695306.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P7444987241852722940

`A109614(3-A130784(n)+n)`
-/

namespace A109594.P7444987241852722940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (3 - A130784 n + (n : ℤ)).toNat

end

end A109594.P7444987241852722940

namespace A109594

/-- `A109614(3-A130784(n)+n)` -/
def P7444987241852722940.Spec : Prop :=
  ∀ n, P7444987241852722940.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P2709791124259339728

`A109614(A010872(n+2)+n)`
-/

namespace A109594.P2709791124259339728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A010872 (n + 2) + (n : ℤ)).toNat

end

end A109594.P2709791124259339728

namespace A109594

/-- `A109614(A010872(n+2)+n)` -/
def P2709791124259339728.Spec : Prop :=
  ∀ n, P2709791124259339728.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P14137889646940508259

`A110004(A004773(n+1))`
-/

namespace A109594.P14137889646940508259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A004773 (n + 1)).toNat

end

end A109594.P14137889646940508259

namespace A109594

/-- `A110004(A004773(n+1))` -/
def P14137889646940508259.Spec : Prop :=
  ∀ n, P14137889646940508259.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P14875780423592871053

`A110003(A042968(n+1))`
-/

namespace A109594.P14875780423592871053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A042968 (n + 1)).toNat

end

end A109594.P14875780423592871053

namespace A109594

/-- `A110003(A042968(n+1))` -/
def P14875780423592871053.Spec : Prop :=
  ∀ n, P14875780423592871053.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P9526377022769874830

`A110008(A042965(n+2))`
-/

namespace A109594.P9526377022769874830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A042965 (n + 2)).toNat

end

end A109594.P9526377022769874830

namespace A109594

/-- `A110008(A042965(n+2))` -/
def P9526377022769874830.Spec : Prop :=
  ∀ n, P9526377022769874830.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P7505590546713339655

`A110004(A042965(n+1)+1)`
-/

namespace A109594.P7505590546713339655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A042965 (n + 1) + 1).toNat

end

end A109594.P7505590546713339655

namespace A109594

/-- `A110004(A042965(n+1)+1)` -/
def P7505590546713339655.Spec : Prop :=
  ∀ n, P7505590546713339655.a n = A109594 (n + 1)

end A109594

/-! ## A109594.P18037775210516760650

`A109588(A113655(2*(n+1))/2)`
-/

namespace A109594.P18037775210516760650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (SequenceMachineLib.roundAway ((A113655 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A109594.P18037775210516760650

namespace A109594

/-- `A109588(A113655(2*(n+1))/2)` -/
def P18037775210516760650.Spec : Prop :=
  ∀ n, P18037775210516760650.a n = A109594 (n + 1)

end A109594

/-!
# A109595: n^3 followed by n^2 followed by n.

The programs for A109595, the canonical program `A109595.P8129904845890612139` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109595 has offset 1).

The definition of A109595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109595.P14703844559248998081

`A109614(A064429(n)+1)`
-/

namespace A109595.P14703844559248998081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A064429 n + 1).toNat

end

end A109595.P14703844559248998081

namespace A109595

/-- `A109614(A064429(n)+1)` -/
def P14703844559248998081.Spec : Prop :=
  ∀ n, P14703844559248998081.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P14026476828233503148

`A109614(A080782(n+1))`
-/

namespace A109595.P14026476828233503148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A080782 (n + 1)).toNat

end

end A109595.P14026476828233503148

namespace A109595

/-- `A109614(A080782(n+1))` -/
def P14026476828233503148.Spec : Prop :=
  ∀ n, P14026476828233503148.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P8129904845890612139

`gcd(A087508(n)², A006501(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109595

/-- `gcd(A087508(n)², A006501(n))` -/
def P8129904845890612139.Spec : Prop :=
  ∀ n, (P8129904845890612139.a n : ℤ) = A109595 (n + 1)

theorem P8129904845890612139.correct : P8129904845890612139.Spec := by
  intro n
  simp only [A109595, Nat.add_sub_cancel]

end A109595

/-! ## A109595.P17089788946886679152

`A008620(n)^(3-A010872(n))`
-/

namespace A109595.P17089788946886679152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) ^ (3 - A010872 n : ℤ)

end

end A109595.P17089788946886679152

namespace A109595

/-- `A008620(n)^(3-A010872(n))` -/
def P17089788946886679152.Spec : Prop :=
  ∀ n, P17089788946886679152.a n = (A109595 (n + 1) : ℚ)

end A109595

/-! ## A109595.P4737529619455104425

`A008619(A004396(n))^(3-n%3)`
-/

namespace A109595.P4737529619455104425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A004396 n).toNat : ℚ) ^ (3 - ((n % 3 : ℕ) : ℤ) : ℤ)

end

end A109595.P4737529619455104425

namespace A109595

/-- `A008619(A004396(n))^(3-n%3)` -/
def P4737529619455104425.Spec : Prop :=
  ∀ n, P4737529619455104425.a n = (A109595 (n + 1) : ℚ)

end A109595

/-! ## A109595.P344960682130048167

`A109594(n+1)/A109588(n+1)*A109614(n+1)`
-/

namespace A109595.P344960682130048167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109594 (n + 1) : ℚ) / (A109588 (n + 1) : ℚ) * (A109614 (n + 1) : ℚ)

end

end A109595.P344960682130048167

namespace A109595

/-- `A109594(n+1)/A109588(n+1)*A109614(n+1)` -/
def P344960682130048167.Spec : Prop :=
  ∀ n, P344960682130048167.a n = (A109595 (n + 1) : ℚ)

end A109595

/-! ## A109595.P1582810950981757281

`A109594(A004482(n)+1)`
-/

namespace A109595.P1582810950981757281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A004482 n + 1).toNat

end

end A109595.P1582810950981757281

namespace A109595

/-- `A109594(A004482(n)+1)` -/
def P1582810950981757281.Spec : Prop :=
  ∀ n, P1582810950981757281.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P11647072814112829448

`A109816(A004483(n)+1)`
-/

namespace A109595.P11647072814112829448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A004483 n + 1).toNat

end

end A109595.P11647072814112829448

namespace A109595

/-- `A109816(A004483(n)+1)` -/
def P11647072814112829448.Spec : Prop :=
  ∀ n, P11647072814112829448.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P8380763132375286340

`A109815(A064429(n+1))`
-/

namespace A109595.P8380763132375286340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A064429 (n + 1)).toNat

end

end A109595.P8380763132375286340

namespace A109595

/-- `A109815(A064429(n+1))` -/
def P8380763132375286340.Spec : Prop :=
  ∀ n, P8380763132375286340.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P6203091664430180485

`A109588(A113655(n+1))`
-/

namespace A109595.P6203091664430180485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A113655 (n + 1)).toNat

end

end A109595.P6203091664430180485

namespace A109595

/-- `A109588(A113655(n+1))` -/
def P6203091664430180485.Spec : Prop :=
  ∀ n, P6203091664430180485.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P2432598781441173924

`A109594(A130508(n+1))`
-/

namespace A109595.P2432598781441173924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A130508 (n + 1)).toNat

end

end A109595.P2432598781441173924

namespace A109595

/-- `A109594(A130508(n+1))` -/
def P2432598781441173924.Spec : Prop :=
  ∀ n, P2432598781441173924.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P16340027144069664747

`A109816(A130509(n+1))`
-/

namespace A109595.P16340027144069664747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A130509 (n + 1)).toNat

end

end A109595.P16340027144069664747

namespace A109595

/-- `A109816(A130509(n+1))` -/
def P16340027144069664747.Spec : Prop :=
  ∀ n, P16340027144069664747.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P12152454851806401575

`A109815(A080782(n+2)-1)`
-/

namespace A109595.P12152454851806401575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A080782 (n + 2) - 1).toNat

end

end A109595.P12152454851806401575

namespace A109595

/-- `A109815(A080782(n+2)-1)` -/
def P12152454851806401575.Spec : Prop :=
  ∀ n, P12152454851806401575.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P8798074718768009892

`A109614(A010872(n+1)+n)`
-/

namespace A109595.P8798074718768009892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A010872 (n + 1) + (n : ℤ)).toNat

end

end A109595.P8798074718768009892

namespace A109595

/-- `A109614(A010872(n+1)+n)` -/
def P8798074718768009892.Spec : Prop :=
  ∀ n, P8798074718768009892.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P9513404037322312663

`A109815(2-A080425(n)+n)`
-/

namespace A109595.P9513404037322312663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (2 - A080425 n + (n : ℤ)).toNat

end

end A109595.P9513404037322312663

namespace A109595

/-- `A109815(2-A080425(n)+n)` -/
def P9513404037322312663.Spec : Prop :=
  ∀ n, P9513404037322312663.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P9830683160858642945

`A109815(2-(A080425(n)-n))`
-/

namespace A109595.P9830683160858642945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (2 - (A080425 n - (n : ℤ))).toNat

end

end A109595.P9830683160858642945

namespace A109595

/-- `A109815(2-(A080425(n)-n))` -/
def P9830683160858642945.Spec : Prop :=
  ∀ n, P9830683160858642945.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P7996047944833817176

`A008620(n)^Δ[A047271(n+1)]`
-/

namespace A109595.P7996047944833817176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A109595.P7996047944833817176

namespace A109595

/-- `A008620(n)^Δ[A047271(n+1)]` -/
def P7996047944833817176.Spec : Prop :=
  ∀ n, P7996047944833817176.a n = (A109595 (n + 1) : ℚ)

end A109595

/-! ## A109595.P14857774922630999704

`A109815(A010872(n+2)+n)`
-/

namespace A109595.P14857774922630999704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A010872 (n + 2) + (n : ℤ)).toNat

end

end A109595.P14857774922630999704

namespace A109595

/-- `A109815(A010872(n+2)+n)` -/
def P14857774922630999704.Spec : Prop :=
  ∀ n, P14857774922630999704.a n = A109595 (n + 1)

end A109595

/-! ## A109595.P18407745605474089876

`A008620(n)^Δ[A047268(n+2)]`
-/

namespace A109595.P18407745605474089876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A109595.P18407745605474089876

namespace A109595

/-- `A008620(n)^Δ[A047268(n+2)]` -/
def P18407745605474089876.Spec : Prop :=
  ∀ n, P18407745605474089876.a n = (A109595 (n + 1) : ℚ)

end A109595

/-! ## A109595.P17687172747213810214

`A109614(n+3-A130784(n+2))`
-/

namespace A109595.P17687172747213810214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 ((n + 3 : ℤ) - A130784 (n + 2)).toNat

end

end A109595.P17687172747213810214

namespace A109595

/-- `A109614(n+3-A130784(n+2))` -/
def P17687172747213810214.Spec : Prop :=
  ∀ n, P17687172747213810214.a n = A109595 (n + 1)

end A109595

/-!
# A109597: Concatenation of Harshad k and its 10's complement is a Harshad number.

The programs for A109597, there is no canonical definition to state claims against.
-/

/-! ## A109597.P16994065127682042386

`record[∑[10-A174615(n)]]`
-/

namespace A109597.P16994065127682042386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A174615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109597.P16994065127682042386

/-! ## A109597.P7451452861552129971

`record[∑[10-A179959(n+2)]]`
-/

namespace A109597.P7451452861552129971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A179959 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109597.P7451452861552129971

/-! ## A109597.P11619578796396778582

`A096092(A033621(n+1))`
-/

namespace A109597.P11619578796396778582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (A033621 (n + 1)).toNat

end

end A109597.P11619578796396778582

/-! ## A109597.P15391161172320702762

`A096092(A249157(n+2))`
-/

namespace A109597.P15391161172320702762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (A249157 (n + 2)).toNat

end

end A109597.P15391161172320702762

/-! ## A109597.P2306862996421092147

`∩[A096092(n+1), A330067(n+1)]`
-/

namespace A109597.P2306862996421092147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109597.P2306862996421092147

/-!
# A109598: n is in this sequence if for all m > 0, n+m is not divisible by 6m-1, 6m+1, 8m-1 or 8m+1.

The programs for A109598, there is no canonical definition to state claims against.
-/

/-! ## A109598.P12488498946910928933

`A002822(∑[A000055(A322020(n+1))])`
-/

namespace A109598.P12488498946910928933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A322020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109598.P12488498946910928933

/-! ## A109598.P17155152034600263759

`A002822(A187226(n+1)%A350441(n+1))`
-/

namespace A109598.P17155152034600263759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (Int.tmod (A187226 (n + 1)) (A350441 (n + 1))).toNat

end

end A109598.P17155152034600263759

/-! ## A109598.P17774630403766880296

`A002822(lt[A008279(3*(n+1)), A089302(3*n+2)])`
-/

namespace A109598.P17774630403766880296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089302 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109598.P17774630403766880296

/-!
# A109599: a(n) = A070864(n+7) - 4.

The programs for A109599, the canonical program `A109599.P16556361062463559405` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109599 has offset 1).

The definition of A109599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070864(n+8)-4` (program `A109599.P16556361062463559405`, by `A109599.P16556361062463559405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109599.P16556361062463559405

`A070864(n+8)-4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109599

/-- `A070864(n+8)-4` -/
def P16556361062463559405.Spec : Prop :=
  ∀ n, P16556361062463559405.a n = A109599 (n + 1)

theorem P16556361062463559405.correct : P16556361062463559405.Spec := by
  intro n
  simp only [A109599, Nat.add_sub_cancel]

end A109599

/-! ## A109599.P1207794289922469426

`2*A340134(n+8)-3`
-/

namespace A109599.P1207794289922469426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340134 (n + 8) - 3

end

end A109599.P1207794289922469426

namespace A109599

/-- `2*A340134(n+8)-3` -/
def P1207794289922469426.Spec : Prop :=
  ∀ n, P1207794289922469426.a n = A109599 (n + 1)

end A109599

/-! ## A109599.P9668197207811452522

`A256244(n+6)+A256244(n+8)-7`
-/

namespace A109599.P9668197207811452522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (n + 6) + (A256244 (n + 8) - 7)

end

end A109599.P9668197207811452522

namespace A109599

/-- `A256244(n+6)+A256244(n+8)-7` -/
def P9668197207811452522.Spec : Prop :=
  ∀ n, P9668197207811452522.a n = A109599 (n + 1)

end A109599

/-! ## A109599.P10452031740239119307

`A174971(2*n+1)+2*A340134(n+8)`
-/

namespace A109599.P10452031740239119307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (2 * n + 1) + 2 * A340134 (n + 8)

end

end A109599.P10452031740239119307

namespace A109599

/-- `A174971(2*n+1)+2*A340134(n+8)` -/
def P10452031740239119307.Spec : Prop :=
  ∀ n, P10452031740239119307.a n = A109599 (n + 1)

end A109599

/-! ## A109599.P6089073706682458184

`A257564(n+6)+A257564(n+8)-3`
-/

namespace A109599.P6089073706682458184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (n + 6) + (A257564 (n + 8) - 3)

end

end A109599.P6089073706682458184

namespace A109599

/-- `A257564(n+6)+A257564(n+8)-3` -/
def P6089073706682458184.Spec : Prop :=
  ∀ n, P6089073706682458184.a n = A109599 (n + 1)

end A109599

