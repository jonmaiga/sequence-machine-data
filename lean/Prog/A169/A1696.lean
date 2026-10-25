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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B004.C002
import Seq.B004.C003
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
# A169600: Numbers that are congruent to {4, 25} mod 31.

The programs for A169600, the canonical program `A169600.P9442727120419948484` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169600 has offset 1).

The definition of A169600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169600.P9442727120419948484

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=25, a(2)=35`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169600

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P9442727120419948484.Spec : Prop :=
  ∀ n, P9442727120419948484.a n = A169600 (n + 1)

theorem P9442727120419948484.correct : P9442727120419948484.Spec := by
  intro n
  simp only [A169600, Nat.add_sub_cancel]

end A169600

/-! ## A169600.P654167549066032086

`(62*(n+1)+11*(-1)^(n+1)-35)/4`
-/

namespace A169600.P654167549066032086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((62 * (n + 1) : ℤ) + 11 * (-1) ^ (n + 1) - 35 : ℚ) / 4

end

end A169600.P654167549066032086

namespace A169600

/-- `(62*(n+1)+11*(-1)^(n+1)-35)/4` -/
def P654167549066032086.Spec : Prop :=
  ∀ n, P654167549066032086.a n = (A169600 (n + 1) : ℚ)

theorem P654167549066032086.correct : P654167549066032086.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169600, Nat.add_sub_cancel, A169600.P654167549066032086.a, A169600.P9442727120419948484.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169600, Nat.add_sub_cancel, A169600.P654167549066032086.a, A169600.P9442727120419948484.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A169600

/-! ## A169600.P5211600854732342773

`a(n-2)+31` with `a(0)=4, a(1)=25`
-/

namespace A169600.P5211600854732342773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 25] fun n a =>
  a (n - 2) + 31

end

end A169600.P5211600854732342773

namespace A169600

/-- `a(n-2)+31` -/
def P5211600854732342773.Spec : Prop :=
  ∀ n, (P5211600854732342773.a n : ℤ) = A169600 (n + 1)

end A169600

/-! ## A169600.P9852365622988746472

`∑[31-a(n-1)]` with `a(0)=4, a(1)=21`
-/

namespace A169600.P9852365622988746472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 21] fun n f1 =>
  31 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169600.P9852365622988746472

namespace A169600

/-- `∑[31-a(n-1)]` -/
def P9852365622988746472.Spec : Prop :=
  ∀ n, P9852365622988746472.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P15313011282266773605

`31*n-2-a(n-1)` with `a(0)=4`
-/

namespace A169600.P15313011282266773605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (31 * n : ℤ) - 2 - a (n - 1)

end

end A169600.P15313011282266773605

namespace A169600

/-- `31*n-2-a(n-1)` -/
def P15313011282266773605.Spec : Prop :=
  ∀ n, P15313011282266773605.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P9281818256080522678

`A175887(n+1)+A017101(n)`
-/

namespace A169600.P9281818256080522678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + A017101 n

end

end A169600.P9281818256080522678

namespace A169600

/-- `A175887(n+1)+A017101(n)` -/
def P9281818256080522678.Spec : Prop :=
  ∀ n, P9281818256080522678.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P18249725367313039265

`A175887(n+1)+A017089(n)+1`
-/

namespace A169600.P18249725367313039265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + (A017089 n + 1)

end

end A169600.P18249725367313039265

namespace A169600

/-- `A175887(n+1)+A017089(n)+1` -/
def P18249725367313039265.Spec : Prop :=
  ∀ n, P18249725367313039265.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P18275228371848319703

`A169598(n+1)+A047522(n+1)`
-/

namespace A169600.P18275228371848319703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (n + 1) + A047522 (n + 1)

end

end A169600.P18275228371848319703

namespace A169600

/-- `A169598(n+1)+A047522(n+1)` -/
def P18275228371848319703.Spec : Prop :=
  ∀ n, P18275228371848319703.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P10871969037644069145

`A169597(n+1)+A091999(n+1)`
-/

namespace A169600.P10871969037644069145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169597 (n + 1) + A091999 (n + 1)

end

end A169600.P10871969037644069145

namespace A169600

/-- `A169597(n+1)+A091999(n+1)` -/
def P10871969037644069145.Spec : Prop :=
  ∀ n, P10871969037644069145.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P8654650323987654805

`A168672(n+1)+A113802(n+1)`
-/

namespace A169600.P8654650323987654805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168672 (n + 1) + A113802 (n + 1)

end

end A169600.P8654650323987654805

namespace A169600

/-- `A168672(n+1)+A113802(n+1)` -/
def P8654650323987654805.Spec : Prop :=
  ∀ n, P8654650323987654805.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P3209667205754078624

`A259755(n+1)+A047382(n+1)`
-/

namespace A169600.P3209667205754078624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259755 (n + 1) + A047382 (n + 1)

end

end A169600.P3209667205754078624

namespace A169600

/-- `A259755(n+1)+A047382(n+1)` -/
def P3209667205754078624.Spec : Prop :=
  ∀ n, P3209667205754078624.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P9675757688777736047

`A306285(n+1)+A047208(n+1)`
-/

namespace A169600.P9675757688777736047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + A047208 (n + 1)

end

end A169600.P9675757688777736047

namespace A169600

/-- `A306285(n+1)+A047208(n+1)` -/
def P9675757688777736047.Spec : Prop :=
  ∀ n, P9675757688777736047.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P17476143006714580873

`A306771(n+1)+A168671(n+1)`
-/

namespace A169600.P17476143006714580873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (n + 1) + A168671 (n + 1)

end

end A169600.P17476143006714580873

namespace A169600

/-- `A306771(n+1)+A168671(n+1)` -/
def P17476143006714580873.Spec : Prop :=
  ∀ n, P17476143006714580873.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P4637704915770433296

`A322489(n+1)+A168465(n+1)`
-/

namespace A169600.P4637704915770433296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322489 (n + 1) + A168465 (n + 1)

end

end A169600.P4637704915770433296

namespace A169600

/-- `A322489(n+1)+A168465(n+1)` -/
def P4637704915770433296.Spec : Prop :=
  ∀ n, P4637704915770433296.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P13259898043888201702

`A322490(n+1)+A168670(n+1)`
-/

namespace A169600.P13259898043888201702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322490 (n + 1) + A168670 (n + 1)

end

end A169600.P13259898043888201702

namespace A169600

/-- `A322490(n+1)+A168670(n+1)` -/
def P13259898043888201702.Spec : Prop :=
  ∀ n, P13259898043888201702.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P7330565513583282870

`A306279(n+1)+A301451(n+1)`
-/

namespace A169600.P7330565513583282870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306279 (n + 1) + A301451 (n + 1)

end

end A169600.P7330565513583282870

namespace A169600

/-- `A306279(n+1)+A301451(n+1)` -/
def P7330565513583282870.Spec : Prop :=
  ∀ n, P7330565513583282870.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P1632676669008788564

`A169610(n+1)-A007310(n+1)`
-/

namespace A169600.P1632676669008788564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) - A007310 (n + 1)

end

end A169600.P1632676669008788564

namespace A169600

/-- `A169610(n+1)-A007310(n+1)` -/
def P1632676669008788564.Spec : Prop :=
  ∀ n, P1632676669008788564.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P13761175635605263066

`A175887(n+1)+A017077(n)+2`
-/

namespace A169600.P13761175635605263066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + (A017077 n + 2)

end

end A169600.P13761175635605263066

namespace A169600

/-- `A175887(n+1)+A017077(n)+2` -/
def P13761175635605263066.Spec : Prop :=
  ∀ n, P13761175635605263066.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P13846191855029403890

`A171141(n+1)-A090772(n+1)`
-/

namespace A169600.P13846191855029403890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) - A090772 (n + 1)

end

end A169600.P13846191855029403890

namespace A169600

/-- `A171141(n+1)-A090772(n+1)` -/
def P13846191855029403890.Spec : Prop :=
  ∀ n, P13846191855029403890.a n = A169600 (n + 1)

end A169600

/-! ## A169600.P1345499908669767771

`A306331(n+1)-A047276(n+1)`
-/

namespace A169600.P1345499908669767771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) - A047276 (n + 1)

end

end A169600.P1345499908669767771

namespace A169600

/-- `A306331(n+1)-A047276(n+1)` -/
def P1345499908669767771.Spec : Prop :=
  ∀ n, P1345499908669767771.a n = A169600 (n + 1)

end A169600

/-!
# A169601: a(n) = (10^n - 1)^2 + 2.

The programs for A169601, the canonical program `A169601.P1521264319206864252` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169601 has offset 0).

The definition of A169601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n-1)²+2` (program `A169601.P1521264319206864252`, by `A169601.P1521264319206864252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169601.P1521264319206864252

`(10^n-1)²+2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169601

/-- `(10^n-1)²+2` -/
def P1521264319206864252.Spec : Prop :=
  ∀ n, P1521264319206864252.a n = A169601 n

theorem P1521264319206864252.correct : P1521264319206864252.Spec := by
  intro n
  simp only [A169601]

end A169601

/-! ## A169601.P6745832132057597676

`or(2, (1-10^n)²)`
-/

namespace A169601.P6745832132057597676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((1 - (10 ^ n : ℤ)) ^ 2)

end

end A169601.P6745832132057597676

namespace A169601

/-- `or(2, (1-10^n)²)` -/
def P6745832132057597676.Spec : Prop :=
  ∀ n, P6745832132057597676.a n = A169601 n

end A169601

/-! ## A169601.P4497612039477124095

`xor(2, (1-10^n)²)`
-/

namespace A169601.P4497612039477124095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((1 - (10 ^ n : ℤ)) ^ 2)

end

end A169601.P4497612039477124095

namespace A169601

/-- `xor(2, (1-10^n)²)` -/
def P4497612039477124095.Spec : Prop :=
  ∀ n, P4497612039477124095.a n = A169601 n

end A169601

/-! ## A169601.P9550137558027899675

`abs((10^n-1)^(floor(acot(n))+2)+2)`
-/

namespace A169601.P9550137558027899675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((10 ^ n : ℤ) - 1 : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2 : ℤ) + 2|

end

end A169601.P9550137558027899675

namespace A169601

/-- `abs((10^n-1)^(floor(acot(n))+2)+2)` -/
def P9550137558027899675.Spec : Prop :=
  ∀ n, P9550137558027899675.a n = (A169601 n : ℚ)

end A169601

/-! ## A169601.P15922980085789234842

`abs((10^n-1)^(gcd(n, n+1)+1)+2)`
-/

namespace A169601.P15922980085789234842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((10 ^ n : ℤ) - 1) ^ (Nat.gcd n (n + 1) + 1) + 2|

end

end A169601.P15922980085789234842

namespace A169601

/-- `abs((10^n-1)^(gcd(n, n+1)+1)+2)` -/
def P15922980085789234842.Spec : Prop :=
  ∀ n, P15922980085789234842.a n = A169601 n

end A169601

/-! ## A169601.P9812934679322602989

`abs(A168624(n)-10^n+2)`
-/

namespace A169601.P9812934679322602989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168624 n - (10 ^ n : ℤ) + 2|

end

end A169601.P9812934679322602989

namespace A169601

/-- `abs(A168624(n)-10^n+2)` -/
def P9812934679322602989.Spec : Prop :=
  ∀ n, P9812934679322602989.a n = A169601 n

end A169601

/-! ## A169601.P15998392264161647516

`abs((1-10^n)^(A178334(n)+1)+2)`
-/

namespace A169601.P15998392264161647516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(1 - (10 ^ n : ℤ) : ℚ) ^ (A178334 n + 1 : ℤ) + 2|

end

end A169601.P15998392264161647516

namespace A169601

/-- `abs((1-10^n)^(A178334(n)+1)+2)` -/
def P15998392264161647516.Spec : Prop :=
  ∀ n, P15998392264161647516.a n = (A169601 n : ℚ)

end A169601

/-! ## A169601.P7586886189710297666

`abs((1-10^n)^(A000038(n)+2)+2)`
-/

namespace A169601.P7586886189710297666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(1 - (10 ^ n : ℤ) : ℚ) ^ (A000038 n + 2 : ℤ) + 2|

end

end A169601.P7586886189710297666

namespace A169601

/-- `abs((1-10^n)^(A000038(n)+2)+2)` -/
def P7586886189710297666.Spec : Prop :=
  ∀ n, P7586886189710297666.a n = (A169601 n : ℚ)

end A169601

/-! ## A169601.P16446598388320178553

`abs((10^n-1)^A020639(2*(n+1))+2)`
-/

namespace A169601.P16446598388320178553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((10 ^ n : ℤ) - 1 : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) + 2|

end

end A169601.P16446598388320178553

namespace A169601

/-- `abs((10^n-1)^A020639(2*(n+1))+2)` -/
def P16446598388320178553.Spec : Prop :=
  ∀ n, P16446598388320178553.a n = (A169601 n : ℚ)

end A169601

/-! ## A169601.P7551796141896864968

`abs((10^n-1)^A001222(A001358(n+1))+2)`
-/

namespace A169601.P7551796141896864968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((10 ^ n : ℤ) - 1 : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ) + 2|

end

end A169601.P7551796141896864968

namespace A169601

/-- `abs((10^n-1)^A001222(A001358(n+1))+2)` -/
def P7551796141896864968.Spec : Prop :=
  ∀ n, P7551796141896864968.a n = (A169601 n : ℚ)

end A169601

/-!
# A169602: Numbers k such that (10^k-1)^2 + 2 is prime.

The programs for A169602, there is no canonical definition to state claims against.
-/

/-! ## A169602.P12946224601753174799

`record[A125978(∑[A069906(n)])]`
-/

namespace A169602.P12946224601753174799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125978 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169602.P12946224601753174799

/-! ## A169602.P12836798345208388382

`eq[A333737(n), A333748(A008597(2*n+3))]`
-/

namespace A169602.P12836798345208388382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333748 (A008597 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169602.P12836798345208388382

/-!
# A169603: Triangle T(n,k) = k*(4*n+k+2), read by rows.

The programs for A169603, the canonical program `A169603.P12042940519301463722` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169603 has offset 0).

The definition of A169603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169603.P12042940519301463722

`A134483(n+1)²-A131507(n)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A169603

/-- `A134483(n+1)²-A131507(n)²` -/
def P12042940519301463722.Spec : Prop :=
  ∀ n, P12042940519301463722.a n = A169603 n

theorem P12042940519301463722.correct : P12042940519301463722.Spec := by
  intro n
  simp only [A169603]

end A169603

/-! ## A169603.P13705603410015423187

`A002262(n)*A182815(A292564(n))`
-/

namespace A169603.P13705603410015423187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A182815 (A292564 n).toNat

end

end A169603.P13705603410015423187

namespace A169603

/-- `A002262(n)*A182815(A292564(n))` -/
def P13705603410015423187.Spec : Prop :=
  ∀ n, P13705603410015423187.a n = A169603 n

end A169603

/-! ## A169603.P2362742544672681354

`(A002260(n+1)-1)*A182815(A292564(n))`
-/

namespace A169603.P2362742544672681354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A182815 (A292564 n).toNat

end

end A169603.P2362742544672681354

namespace A169603

/-- `(A002260(n+1)-1)*A182815(A292564(n))` -/
def P2362742544672681354.Spec : Prop :=
  ∀ n, P2362742544672681354.a n = A169603 n

end A169603

/-! ## A169603.P1579204652432688180

`A001222(A059268(n))*A182815(A292564(n))`
-/

namespace A169603.P1579204652432688180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059268 n).toNat * A182815 (A292564 n).toNat

end

end A169603.P1579204652432688180

namespace A169603

/-- `A001222(A059268(n))*A182815(A292564(n))` -/
def P1579204652432688180.Spec : Prop :=
  ∀ n, P1579204652432688180.a n = A169603 n

end A169603

/-! ## A169603.P2934308925050738033

`A002262(n)*A332061(A008574(n))`
-/

namespace A169603.P2934308925050738033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A332061 (A008574 n).toNat

end

end A169603.P2934308925050738033

namespace A169603

/-- `A002262(n)*A332061(A008574(n))` -/
def P2934308925050738033.Spec : Prop :=
  ∀ n, P2934308925050738033.a n = A169603 n

end A169603

/-!
# A169604: a(n) = 3*6^n.

The programs for A169604, the canonical program `A169604.P2454332461179498099` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169604 has offset 0).

The definition of A169604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*6^n` (program `A169604.P2454332461179498099`, by `A169604.P2454332461179498099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169604.P2454332461179498099

`3*6^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169604

/-- `3*6^n` -/
def P2454332461179498099.Spec : Prop :=
  ∀ n, (P2454332461179498099.a n : ℤ) = A169604 n

theorem P2454332461179498099.correct : P2454332461179498099.Spec := by
  intro n
  simp only [A169604]

end A169604

/-!
# A169605: Numbers x of the form x = 2*y - 3 = 3*z - 2 where y and z are primes.

The programs for A169605, there is no canonical definition to state claims against.
-/

/-! ## A169605.P4061965968020721513

`A276626(n+1)-3`
-/

namespace A169605.P4061965968020721513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276626 (n + 1) - 3

end

end A169605.P4061965968020721513

/-! ## A169605.P6587515308985463672

`2*A162336(n+1)-3`
-/

namespace A169605.P6587515308985463672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162336 (n + 1) - 3

end

end A169605.P6587515308985463672

/-! ## A169605.P17283890461292918981

`3*A158709(n+2)-2`
-/

namespace A169605.P17283890461292918981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A158709 (n + 2) - 2

end

end A169605.P17283890461292918981

/-! ## A169605.P8324479530502726316

`3*p?[A034934(n+1)]-2`
-/

namespace A169605.P8324479530502726316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A169605.P8324479530502726316

/-! ## A169605.P15580350911981322778

`A004274(A162336(n+1))`
-/

namespace A169605.P15580350911981322778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A162336 (n + 1)).toNat

end

end A169605.P15580350911981322778

/-!
# A169606: a(2n-1) = prime(n+2)-3, a(2n) = prime(n+2)-2.

The programs for A169606, the canonical program `A169606.P1555157006490763150` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169606 has offset 1).

The definition of A169606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169606.P1555157006490763150

`A093515(n+4)-3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A169606

/-- `A093515(n+4)-3` -/
def P1555157006490763150.Spec : Prop :=
  ∀ n, P1555157006490763150.a n = A169606 (n + 1)

theorem P1555157006490763150.correct : P1555157006490763150.Spec := by
  intro n
  simp only [A169606, Nat.add_sub_cancel]

end A169606

/-! ## A169606.P3505261735890617889

`eq[2, A151800(n+1)%or(1, n)]`
-/

namespace A169606.P3505261735890617889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (n + 1)) (Nat.lor 1 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169606.P3505261735890617889

namespace A169606

/-- `eq[2, A151800(n+1)%or(1, n)]` -/
def P3505261735890617889.Spec : Prop :=
  ∀ n, (P3505261735890617889.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P2102176858591285775

`A111688(n+3)-3`
-/

namespace A169606.P2102176858591285775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 3) - 3

end

end A169606.P2102176858591285775

namespace A169606

/-- `A111688(n+3)-3` -/
def P2102176858591285775.Spec : Prop :=
  ∀ n, P2102176858591285775.a n = A169606 (n + 1)

end A169606

/-! ## A169606.P9300026528264239476

`∑[A211005(n+3)]+1`
-/

namespace A169606.P9300026528264239476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A169606.P9300026528264239476

namespace A169606

/-- `∑[A211005(n+3)]+1` -/
def P9300026528264239476.Spec : Prop :=
  ∀ n, P9300026528264239476.a n = A169606 (n + 1)

end A169606

/-! ## A169606.P5298878884690024656

`A119257(a(n-1)+3)-2` with `a(0)=2`
-/

namespace A169606.P5298878884690024656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A119257 (a (n - 1) + 3).toNat - 2

end

end A169606.P5298878884690024656

namespace A169606

/-- `A119257(a(n-1)+3)-2` -/
def P5298878884690024656.Spec : Prop :=
  ∀ n, P5298878884690024656.a n = A169606 (n + 1)

end A169606

/-! ## A169606.P12141010232651158570

`eq[3, A020483(floor(n/2))]`
-/

namespace A169606.P12141010232651158570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169606.P12141010232651158570

namespace A169606

/-- `eq[3, A020483(floor(n/2))]` -/
def P12141010232651158570.Spec : Prop :=
  ∀ n, (P12141010232651158570.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P1623042804346066775

`lt[2, A175624(n+1)]`
-/

namespace A169606.P1623042804346066775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169606.P1623042804346066775

namespace A169606

/-- `lt[2, A175624(n+1)]` -/
def P1623042804346066775.Spec : Prop :=
  ∀ n, (P1623042804346066775.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P2943025869663569076

`lt[2, A226718(n+1)]`
-/

namespace A169606.P2943025869663569076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169606.P2943025869663569076

namespace A169606

/-- `lt[2, A226718(n+1)]` -/
def P2943025869663569076.Spec : Prop :=
  ∀ n, (P2943025869663569076.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P9569573643466976855

`lt[3, A110560(n+1)]`
-/

namespace A169606.P9569573643466976855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169606.P9569573643466976855

namespace A169606

/-- `lt[3, A110560(n+1)]` -/
def P9569573643466976855.Spec : Prop :=
  ∀ n, (P9569573643466976855.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P8708938020661612745

`lt[n+1, Δ[A014963(n+2)]²]`
-/

namespace A169606.P8708938020661612745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169606.P8708938020661612745

namespace A169606

/-- `lt[n+1, Δ[A014963(n+2)]²]` -/
def P8708938020661612745.Spec : Prop :=
  ∀ n, (P8708938020661612745.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P17782490046396431846

`lt[n+1, Δ[A020639(n+2)]²]`
-/

namespace A169606.P17782490046396431846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169606.P17782490046396431846

namespace A169606

/-- `lt[n+1, Δ[A020639(n+2)]²]` -/
def P17782490046396431846.Spec : Prop :=
  ∀ n, (P17782490046396431846.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P2741228982132339896

`lt[2, A110560(A109613(n))/2]`
-/

namespace A169606.P2741228982132339896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110560 (A109613 n).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A169606.P2741228982132339896

namespace A169606

/-- `lt[2, A110560(A109613(n))/2]` -/
def P2741228982132339896.Spec : Prop :=
  ∀ n, (P2741228982132339896.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P6415448870684810417

`eq[A060576(n), A090405(n+1)]`
-/

namespace A169606.P6415448870684810417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169606.P6415448870684810417

namespace A169606

/-- `eq[A060576(n), A090405(n+1)]` -/
def P6415448870684810417.Spec : Prop :=
  ∀ n, (P6415448870684810417.a n : ℤ) = A169606 (n + 1)

end A169606

/-! ## A169606.P3669702404425270905

`eq[A090405(n+1), A157928(n)]`
-/

namespace A169606.P3669702404425270905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169606.P3669702404425270905

namespace A169606

/-- `eq[A090405(n+1), A157928(n)]` -/
def P3669702404425270905.Spec : Prop :=
  ∀ n, (P3669702404425270905.a n : ℤ) = A169606 (n + 1)

end A169606

/-!
# A169607: a(n) = 7*A000330(n).

The programs for A169607, the canonical program `A169607.P7800631698044335545` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169607 has offset 0).

The definition of A169607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*A000330(n)` (program `A169607.P7800631698044335545`, by `A169607.P7800631698044335545.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169607.P12973889906297725687

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=35, a(3)=98`
-/

namespace A169607.P12973889906297725687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 35, 98] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A169607.P12973889906297725687

namespace A169607

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12973889906297725687.Spec : Prop :=
  ∀ n, P12973889906297725687.a n = A169607 n

end A169607

/-! ## A169607.P7800631698044335545

`7*A000330(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A169607

/-- `7*A000330(n)` -/
def P7800631698044335545.Spec : Prop :=
  ∀ n, P7800631698044335545.a n = A169607 n

theorem P7800631698044335545.correct : P7800631698044335545.Spec := by
  intro n
  simp only [A169607]

end A169607

/-! ## A169607.P16733316372875380038

`∑[7*n²]`
-/

namespace A169607.P16733316372875380038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169607.P16733316372875380038

namespace A169607

/-- `∑[7*n²]` -/
def P16733316372875380038.Spec : Prop :=
  ∀ n, (P16733316372875380038.a n : ℤ) = A169607 n

end A169607

/-! ## A169607.P15146085626735392733

`7*Δ[C(n², 2)/6]`
-/

namespace A169607.P15146085626735392733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (f1 (n + 1) - f1 n)

end

end A169607.P15146085626735392733

namespace A169607

/-- `7*Δ[C(n², 2)/6]` -/
def P15146085626735392733.Spec : Prop :=
  ∀ n, P15146085626735392733.a n = (A169607 n : ℚ)

end A169607

/-! ## A169607.P14187055657396835277

`Δ[C(n², 2)]+∑[n²]`
-/

namespace A169607.P14187055657396835277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A169607.P14187055657396835277

namespace A169607

/-- `Δ[C(n², 2)]+∑[n²]` -/
def P14187055657396835277.Spec : Prop :=
  ∀ n, P14187055657396835277.a n = A169607 n

end A169607

/-! ## A169607.P145186135574081235

`a(n-1)+7*n²` with `a(0)=0`
-/

namespace A169607.P145186135574081235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 7 * n ^ 2

end

end A169607.P145186135574081235

namespace A169607

/-- `a(n-1)+7*n²` -/
def P145186135574081235.Spec : Prop :=
  ∀ n, (P145186135574081235.a n : ℤ) = A169607 n

end A169607

/-! ## A169607.P2379035377989826421

`round(∑[∑[a(n-1)+14]])` with `a(0)=0, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A169607.P2379035377989826421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169607.P2379035377989826421

namespace A169607

/-- `round(∑[∑[a(n-1)+14]])` -/
def P2379035377989826421.Spec : Prop :=
  ∀ n, (P2379035377989826421.a n : ℤ) = A169607 n

end A169607

/-! ## A169607.P2067091096236439212

`7*∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=1`
-/

namespace A169607.P2067091096236439212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A169607.P2067091096236439212

namespace A169607

/-- `7*∑[∑[a(n-1)+2]]` -/
def P2067091096236439212.Spec : Prop :=
  ∀ n, (P2067091096236439212.a n : ℤ) = A169607 n

end A169607

/-! ## A169607.P17759856028616837496

`floor(a(n-1)+n*7*n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A169607.P17759856028616837496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (7 * n)

end

end A169607.P17759856028616837496

namespace A169607

/-- `floor(a(n-1)+n*7*n)` -/
def P17759856028616837496.Spec : Prop :=
  ∀ n, (P17759856028616837496.a n : ℤ) = A169607 n

end A169607

/-! ## A169607.P5741300391294340317

`∑[A144555(n)]/2`
-/

namespace A169607.P5741300391294340317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A169607.P5741300391294340317

namespace A169607

/-- `∑[A144555(n)]/2` -/
def P5741300391294340317.Spec : Prop :=
  ∀ n, P5741300391294340317.a n = (A169607 n : ℚ)

end A169607

/-! ## A169607.P17245332720733678622

`∑[A064762(n)]/3`
-/

namespace A169607.P17245332720733678622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064762 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A169607.P17245332720733678622

namespace A169607

/-- `∑[A064762(n)]/3` -/
def P17245332720733678622.Spec : Prop :=
  ∀ n, P17245332720733678622.a n = (A169607 n : ℚ)

end A169607

/-! ## A169607.P13466524961014340085

`∑[A064763(n)]/4`
-/

namespace A169607.P13466524961014340085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064763 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A169607.P13466524961014340085

namespace A169607

/-- `∑[A064763(n)]/4` -/
def P13466524961014340085.Spec : Prop :=
  ∀ n, P13466524961014340085.a n = (A169607 n : ℚ)

end A169607

/-! ## A169607.P5640001707067876032

`7*(A153056(n)-2)`
-/

namespace A169607.P5640001707067876032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A153056 n - 2)

end

end A169607.P5640001707067876032

namespace A169607

/-- `7*(A153056(n)-2)` -/
def P5640001707067876032.Spec : Prop :=
  ∀ n, P5640001707067876032.a n = A169607 n

end A169607

/-! ## A169607.P12703074394184254160

`7/3*A059270(n)`
-/

namespace A169607.P12703074394184254160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 3 * (A059270 n : ℚ)

end

end A169607.P12703074394184254160

namespace A169607

/-- `7/3*A059270(n)` -/
def P12703074394184254160.Spec : Prop :=
  ∀ n, P12703074394184254160.a n = (A169607 n : ℚ)

end A169607

/-! ## A169607.P18019492855022881111

`A055112(n)+∑[n²]`
-/

namespace A169607.P18019492855022881111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A169607.P18019492855022881111

namespace A169607

/-- `A055112(n)+∑[n²]` -/
def P18019492855022881111.Spec : Prop :=
  ∀ n, P18019492855022881111.a n = A169607 n

end A169607

/-! ## A169607.P11576875367950390935

`∑[A005919(n)-2]+1`
-/

namespace A169607.P11576875367950390935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A169607.P11576875367950390935

namespace A169607

/-- `∑[A005919(n)-2]+1` -/
def P11576875367950390935.Spec : Prop :=
  ∀ n, P11576875367950390935.a n = A169607 n

end A169607

/-! ## A169607.P47630823802092082

`∑[A247541(n)]-(n+1)`
-/

namespace A169607.P47630823802092082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A169607.P47630823802092082

namespace A169607

/-- `∑[A247541(n)]-(n+1)` -/
def P47630823802092082.Spec : Prop :=
  ∀ n, P47630823802092082.a n = A169607 n

end A169607

/-! ## A169607.P17038414324658796689

`A050409(n)+∑[2*n]`
-/

namespace A169607.P17038414324658796689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A169607.P17038414324658796689

namespace A169607

/-- `A050409(n)+∑[2*n]` -/
def P17038414324658796689.Spec : Prop :=
  ∀ n, P17038414324658796689.a n = A169607 n

end A169607

/-! ## A169607.P16867681034703009257

`∑[n]+2*A255211(n)`
-/

namespace A169607.P16867681034703009257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A255211 n

end

end A169607.P16867681034703009257

namespace A169607

/-- `∑[n]+2*A255211(n)` -/
def P16867681034703009257.Spec : Prop :=
  ∀ n, P16867681034703009257.a n = A169607 n

end A169607

/-! ## A169607.P18140316434752628961

`A220084(n)-(n+1)^3`
-/

namespace A169607.P18140316434752628961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - ((n + 1) ^ 3 : ℤ)

end

end A169607.P18140316434752628961

namespace A169607

/-- `A220084(n)-(n+1)^3` -/
def P18140316434752628961.Spec : Prop :=
  ∀ n, P18140316434752628961.a n = A169607 n

end A169607

/-!
# A169609: Period 3: repeat [1, 3, 3].

The programs for A169609, the canonical program `A169609.P8986089567113568057` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169609 has offset 0).

The definition of A169609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169609.P8986089567113568057

`3/gcd(n, 3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169609

/-- `3/gcd(n, 3)` -/
def P8986089567113568057.Spec : Prop :=
  ∀ n, P8986089567113568057.a n = (A169609 n : ℚ)

end A169609

/-!
# A169610: Numbers that are congruent to {5, 30} mod 37.

The programs for A169610, the canonical program `A169610.P17524070400479794654` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169610 has offset 1).

The definition of A169610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169610.P17524070400479794654

`(74*(n+1)+13*(-1)^(n+1)-41)/4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169610

/-- `(74*(n+1)+13*(-1)^(n+1)-41)/4` -/
def P17524070400479794654.Spec : Prop :=
  ∀ n, P17524070400479794654.a n = (A169610 (n + 1) : ℚ)

end A169610

/-! ## A169610.P6812373923595059204

`a(n-2)+37` with `a(0)=5, a(1)=30`
-/

namespace A169610.P6812373923595059204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 30] fun n a =>
  a (n - 2) + 37

end

end A169610.P6812373923595059204

namespace A169610

/-- `a(n-2)+37` -/
def P6812373923595059204.Spec : Prop :=
  ∀ n, (P6812373923595059204.a n : ℤ) = A169610 (n + 1)

end A169610

/-! ## A169610.P3272905840633864928

`∑[floor(a(n-2))]` with `a(0)=5, a(1)=25, a(2)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A169610.P3272905840633864928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 25, 12] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169610.P3272905840633864928

namespace A169610

/-- `∑[floor(a(n-2))]` -/
def P3272905840633864928.Spec : Prop :=
  ∀ n, (P3272905840633864928.a n : ℤ) = A169610 (n + 1)

end A169610

/-! ## A169610.P452059951296342134

`∑[37-a(n-1)]` with `a(0)=5, a(1)=25`
-/

namespace A169610.P452059951296342134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 25] fun n f1 =>
  37 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169610.P452059951296342134

namespace A169610

/-- `∑[37-a(n-1)]` -/
def P452059951296342134.Spec : Prop :=
  ∀ n, P452059951296342134.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P12175132750986884474

`37*n-2-a(n-1)` with `a(0)=5`
-/

namespace A169610.P12175132750986884474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (37 * n : ℤ) - 2 - a (n - 1)

end

end A169610.P12175132750986884474

namespace A169610

/-- `37*n-2-a(n-1)` -/
def P12175132750986884474.Spec : Prop :=
  ∀ n, P12175132750986884474.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P15558333337292091365

`A155097(n+1)-1`
-/

namespace A169610.P15558333337292091365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) - 1

end

end A169610.P15558333337292091365

namespace A169610

/-- `A155097(n+1)-1` -/
def P15558333337292091365.Spec : Prop :=
  ∀ n, P15558333337292091365.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P5615397155499979275

`A171141(n+1)-Δ[n²]`
-/

namespace A169610.P5615397155499979275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A169610.P5615397155499979275

namespace A169610

/-- `A171141(n+1)-Δ[n²]` -/
def P5615397155499979275.Spec : Prop :=
  ∀ n, P5615397155499979275.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P3847369755033150603

`A306331(n+1)-∑[char[2*n]]`
-/

namespace A169610.P3847369755033150603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A169610.P3847369755033150603

namespace A169610

/-- `A306331(n+1)-∑[char[2*n]]` -/
def P3847369755033150603.Spec : Prop :=
  ∀ n, P3847369755033150603.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P10577939504218232799

`A084967(n+1)+A047382(n+1)`
-/

namespace A169610.P10577939504218232799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 1) + A047382 (n + 1)

end

end A169610.P10577939504218232799

namespace A169610

/-- `A084967(n+1)+A047382(n+1)` -/
def P10577939504218232799.Spec : Prop :=
  ∀ n, P10577939504218232799.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P15574738062278633274

`A169600(n+1)+A007310(n+1)`
-/

namespace A169610.P15574738062278633274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (n + 1) + A007310 (n + 1)

end

end A169610.P15574738062278633274

namespace A169610

/-- `A169600(n+1)+A007310(n+1)` -/
def P15574738062278633274.Spec : Prop :=
  ∀ n, P15574738062278633274.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P8201624820325783019

`A169599(n+1)+A047522(n+1)`
-/

namespace A169610.P8201624820325783019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (n + 1) + A047522 (n + 1)

end

end A169610.P8201624820325783019

namespace A169610

/-- `A169599(n+1)+A047522(n+1)` -/
def P8201624820325783019.Spec : Prop :=
  ∀ n, P8201624820325783019.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P4422800536823407429

`A169598(n+1)+A113802(n+1)`
-/

namespace A169610.P4422800536823407429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (n + 1) + A113802 (n + 1)

end

end A169610.P4422800536823407429

namespace A169610

/-- `A169598(n+1)+A113802(n+1)` -/
def P4422800536823407429.Spec : Prop :=
  ∀ n, P4422800536823407429.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P8390875084110250537

`A259755(n+1)+A168671(n+1)`
-/

namespace A169610.P8390875084110250537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259755 (n + 1) + A168671 (n + 1)

end

end A169610.P8390875084110250537

namespace A169610

/-- `A259755(n+1)+A168671(n+1)` -/
def P8390875084110250537.Spec : Prop :=
  ∀ n, P8390875084110250537.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P7415152700219491169

`A306771(n+1)+A169597(n+1)`
-/

namespace A169610.P7415152700219491169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (n + 1) + A169597 (n + 1)

end

end A169610.P7415152700219491169

namespace A169610

/-- `A306771(n+1)+A169597(n+1)` -/
def P7415152700219491169.Spec : Prop :=
  ∀ n, P7415152700219491169.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P119458510666403274

`A322490(n+1)+A168672(n+1)`
-/

namespace A169610.P119458510666403274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322490 (n + 1) + A168672 (n + 1)

end

end A169610.P119458510666403274

namespace A169610

/-- `A322490(n+1)+A168672(n+1)` -/
def P119458510666403274.Spec : Prop :=
  ∀ n, P119458510666403274.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P10539385814019208604

`A206526(n+1)-(A053742(n)+1)`
-/

namespace A169610.P10539385814019208604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206526 (n + 1) - (A053742 n + 1)

end

end A169610.P10539385814019208604

namespace A169610

/-- `A206526(n+1)-(A053742(n)+1)` -/
def P10539385814019208604.Spec : Prop :=
  ∀ n, P10539385814019208604.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P3835650158549538310

`A155098(n+1)-(A166519(n)+1)`
-/

namespace A169610.P3835650158549538310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (n + 1) - (A166519 n + 1)

end

end A169610.P3835650158549538310

namespace A169610

/-- `A155098(n+1)-(A166519(n)+1)` -/
def P3835650158549538310.Spec : Prop :=
  ∀ n, P3835650158549538310.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P14765489637176527077

`A305074(n+1)-A147677(n+1)`
-/

namespace A169610.P14765489637176527077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1) - A147677 (n + 1)

end

end A169610.P14765489637176527077

namespace A169610

/-- `A305074(n+1)-A147677(n+1)` -/
def P14765489637176527077.Spec : Prop :=
  ∀ n, P14765489637176527077.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P9043076995196657579

`A047336(n+1)+A084967(n+1)-1`
-/

namespace A169610.P9043076995196657579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) + (A084967 (n + 1) - 1)

end

end A169610.P9043076995196657579

namespace A169610

/-- `A047336(n+1)+A084967(n+1)-1` -/
def P9043076995196657579.Spec : Prop :=
  ∀ n, P9043076995196657579.a n = A169610 (n + 1)

end A169610

/-! ## A169610.P14970619331592027201

`A156674(n+1)-(A092259(n+1)+1)`
-/

namespace A169610.P14970619331592027201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - (A092259 (n + 1) + 1)

end

end A169610.P14970619331592027201

namespace A169610

/-- `A156674(n+1)-(A092259(n+1)+1)` -/
def P14970619331592027201.Spec : Prop :=
  ∀ n, P14970619331592027201.a n = A169610 (n + 1)

end A169610

/-!
# A169611: Number of prime divisors of n that are not greater than 3, counted with multiplicity.

The programs for A169611, the canonical program `A169611.P2401651306699804100` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169611 has offset 1).

The definition of A169611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169611.P17178981848608128660

`val(n+1, 2)+val(n+1, 3)`
-/

namespace A169611.P17178981848608128660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + SequenceMachineLib.valuation (n + 1) 3

end

end A169611.P17178981848608128660

namespace A169611

/-- `val(n+1, 2)+val(n+1, 3)` -/
def P17178981848608128660.Spec : Prop :=
  ∀ n, (P17178981848608128660.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P1659592434220451108

`A001222(A065331(n+1))`
-/

namespace A169611.P1659592434220451108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065331 (n + 1)).toNat

end

end A169611.P1659592434220451108

namespace A169611

/-- `A001222(A065331(n+1))` -/
def P1659592434220451108.Spec : Prop :=
  ∀ n, P1659592434220451108.a n = A169611 (n + 1)

end A169611

/-! ## A169611.P2401651306699804100

`A007814(n+1)+A007949(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A169611

/-- `A007814(n+1)+A007949(n+1)` -/
def P2401651306699804100.Spec : Prop :=
  ∀ n, P2401651306699804100.a n = A169611 (n + 1)

theorem P2401651306699804100.correct : P2401651306699804100.Spec := by
  intro n
  simp only [A169611, Nat.add_sub_cancel]

end A169611

/-! ## A169611.P9249055431262299457

`A001222(n+1)-A106799(n+1)`
-/

namespace A169611.P9249055431262299457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A106799 (n + 1)

end

end A169611.P9249055431262299457

namespace A169611

/-- `A001222(n+1)-A106799(n+1)` -/
def P9249055431262299457.Spec : Prop :=
  ∀ n, P9249055431262299457.a n = A169611 (n + 1)

theorem P9249055431262299457.correct : P9249055431262299457.Spec := by
  intro n
  simp only [A169611, Nat.add_sub_cancel, A169611.P9249055431262299457.a, A169611.P2401651306699804100.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A106799, A106799.P9008647857558368840.a, A001511, A001511.P17146462531039486101.a, A061395, A061395.P8431317036300486107.a, A087436, A087436.P13287701826401831056.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169611

/-! ## A169611.P5528607381404805070

`∑{p}[n+7, val(n+1, #)]`
-/

namespace A169611.P5528607381404805070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p

end

end A169611.P5528607381404805070

namespace A169611

/-- `∑{p}[n+7, val(n+1, #)]` -/
def P5528607381404805070.Spec : Prop :=
  ∀ n, (P5528607381404805070.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P15766779515690610604

`val(A079707(n+1), 2)`
-/

namespace A169611.P15766779515690610604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079707 (n + 1)).toNat 2

end

end A169611.P15766779515690610604

namespace A169611

/-- `val(A079707(n+1), 2)` -/
def P15766779515690610604.Spec : Prop :=
  ∀ n, (P15766779515690610604.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P7580388983021111078

`val(A200746(n+1), 2)`
-/

namespace A169611.P7580388983021111078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A200746 (n + 1)).toNat 2

end

end A169611.P7580388983021111078

namespace A169611

/-- `val(A200746(n+1), 2)` -/
def P7580388983021111078.Spec : Prop :=
  ∀ n, (P7580388983021111078.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P1091823513088509941

`val(A191002(n+1), 3)`
-/

namespace A169611.P1091823513088509941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A191002 (n + 1)).toNat 3

end

end A169611.P1091823513088509941

namespace A169611

/-- `val(A191002(n+1), 3)` -/
def P1091823513088509941.Spec : Prop :=
  ∀ n, (P1091823513088509941.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P6822004756576080931

`val(A394497(n+1), 3)`
-/

namespace A169611.P6822004756576080931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A394497 (n + 1)).toNat 3

end

end A169611.P6822004756576080931

namespace A169611

/-- `val(A394497(n+1), 3)` -/
def P6822004756576080931.Spec : Prop :=
  ∀ n, (P6822004756576080931.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P10119482971983093808

`val(A045969(n+1), 5)`
-/

namespace A169611.P10119482971983093808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045969 (n + 1)).toNat 5

end

end A169611.P10119482971983093808

namespace A169611

/-- `val(A045969(n+1), 5)` -/
def P10119482971983093808.Spec : Prop :=
  ∀ n, (P10119482971983093808.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P17626287699595219516

`val((n+1)*A064989(n+1), 2)`
-/

namespace A169611.P17626287699595219516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A064989 (n + 1)).toNat 2

end

end A169611.P17626287699595219516

namespace A169611

/-- `val((n+1)*A064989(n+1), 2)` -/
def P17626287699595219516.Spec : Prop :=
  ∀ n, (P17626287699595219516.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P15532567020079334435

`val((n+1)*A003961(n+1), 3)`
-/

namespace A169611.P15532567020079334435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A003961 (n + 1)).toNat 3

end

end A169611.P15532567020079334435

namespace A169611

/-- `val((n+1)*A003961(n+1), 3)` -/
def P15532567020079334435.Spec : Prop :=
  ∀ n, (P15532567020079334435.a n : ℤ) = A169611 (n + 1)

end A169611

/-! ## A169611.P5558767251147842218

`A007814(A079707(n+1))`
-/

namespace A169611.P5558767251147842218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A079707 (n + 1)).toNat

end

end A169611.P5558767251147842218

namespace A169611

/-- `A007814(A079707(n+1))` -/
def P5558767251147842218.Spec : Prop :=
  ∀ n, P5558767251147842218.a n = A169611 (n + 1)

end A169611

/-! ## A169611.P267474510804951864

`A069352(A322026(n+1))`
-/

namespace A169611.P267474510804951864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (A322026 (n + 1)).toNat

end

end A169611.P267474510804951864

namespace A169611

/-- `A069352(A322026(n+1))` -/
def P267474510804951864.Spec : Prop :=
  ∀ n, P267474510804951864.a n = A169611 (n + 1)

end A169611

/-! ## A169611.P14530751116696455694

`A356006(A072438(n+1))`
-/

namespace A169611.P14530751116696455694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A072438 (n + 1)).toNat

end

end A169611.P14530751116696455694

namespace A169611

/-- `A356006(A072438(n+1))` -/
def P14530751116696455694.Spec : Prop :=
  ∀ n, P14530751116696455694.a n = A169611 (n + 1)

end A169611

/-! ## A169611.P1092480327969329944

`A356006(A132739(n+1))`
-/

namespace A169611.P1092480327969329944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A132739 (n + 1)).toNat

end

end A169611.P1092480327969329944

namespace A169611

/-- `A356006(A132739(n+1))` -/
def P1092480327969329944.Spec : Prop :=
  ∀ n, P1092480327969329944.a n = A169611 (n + 1)

end A169611

/-! ## A169611.P6049222053933980612

`A378879(A355582(n+1))`
-/

namespace A169611.P6049222053933980612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378879 (A355582 (n + 1)).toNat

end

end A169611.P6049222053933980612

namespace A169611

/-- `A378879(A355582(n+1))` -/
def P6049222053933980612.Spec : Prop :=
  ∀ n, P6049222053933980612.a n = A169611 (n + 1)

end A169611

/-! ## A169611.P4727957126345811567

`A244417(n+1)+A122841(n+1)`
-/

namespace A169611.P4727957126345811567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (n + 1) + A122841 (n + 1)

end

end A169611.P4727957126345811567

namespace A169611

/-- `A244417(n+1)+A122841(n+1)` -/
def P4727957126345811567.Spec : Prop :=
  ∀ n, P4727957126345811567.a n = A169611 (n + 1)

end A169611

/-! ## A169611.P3731546978655285953

`A356006(n+1)-A112765(n+1)`
-/

namespace A169611.P3731546978655285953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (n + 1) - A112765 (n + 1)

end

end A169611.P3731546978655285953

namespace A169611

/-- `A356006(n+1)-A112765(n+1)` -/
def P3731546978655285953.Spec : Prop :=
  ∀ n, P3731546978655285953.a n = A169611 (n + 1)

theorem P3731546978655285953.correct : P3731546978655285953.Spec := by
  intro n
  simp only [A169611, Nat.add_sub_cancel, A169611.P3731546978655285953.a, A169611.P2401651306699804100.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A112765, A112765.P4892120039852414895.a, A356006, A356006.P9495163879456603929.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169611

/-! ## A169611.P9191266709755177016

`A001222((n+1)/A065330(n+1))`
-/

namespace A169611.P9191266709755177016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A169611.P9191266709755177016

namespace A169611

/-- `A001222((n+1)/A065330(n+1))` -/
def P9191266709755177016.Spec : Prop :=
  ∀ n, P9191266709755177016.a n = A169611 (n + 1)

end A169611

/-!
# A169612: Powers of 2 added sequentially to an initial value of 1 in producing A168612, which is a greedy listing of numbers all relatively prime to each other in binary.

The programs for A169612, there is no canonical definition to state claims against.
-/

/-! ## A169612.P13974503833124047824

`floor(log2(A168612(n+2)))`
-/

namespace A169612.P13974503833124047824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A168612 (n + 2)).toNat

end

end A169612.P13974503833124047824

/-! ## A169612.P3447005506157528596

`log2(Δ[A168612(n+1)])`
-/

namespace A169612.P3447005506157528596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168612 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A169612.P3447005506157528596

/-! ## A169612.P8545952893958641634

`log2(A168612(n+2)-A168612(n+1))`
-/

namespace A169612.P8545952893958641634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A168612 (n + 2) - A168612 (n + 1) : ℝ)

end

end A169612.P8545952893958641634

/-! ## A169612.P7048587061702616654

`val(Δ[A168612(n+1)], A020639(2*(n+1)))`
-/

namespace A169612.P7048587061702616654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A020639 (2 * (n + 1))).toNat

end

end A169612.P7048587061702616654

/-!
# A169613: Triangular array: T(n,k)=floor(F(n)/F(n-k)), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

The programs for A169613, the canonical program `A169613.P2033703515470004183` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169613 has offset 3).

The definition of A169613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169613.P7110701074661547809

`A169615(∑[char[∑[n]]]²-n)`
-/

namespace A169613.P7110701074661547809
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A169613.P7110701074661547809

namespace A169613

/-- `A169615(∑[char[∑[n]]]²-n)` -/
def P7110701074661547809.Spec : Prop :=
  ∀ n, P7110701074661547809.a n = A169613 (n + 3)

end A169613

/-! ## A169613.P15096431920132310161

`A169615(A038722(n+1))/gcd(n, A003215(n))`
-/

namespace A169613.P15096431920132310161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169615 (A038722 (n + 1)).toNat : ℚ) / (Int.gcd (n : ℤ) (A003215 n) : ℚ)

end

end A169613.P15096431920132310161

namespace A169613

/-- `A169615(A038722(n+1))/gcd(n, A003215(n))` -/
def P15096431920132310161.Spec : Prop :=
  ∀ n, P15096431920132310161.a n = (A169613 (n + 3) : ℚ)

end A169613

/-! ## A169613.P2033703515470004183

`A169615(A038722(n+1))+C(n, A008486(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A169613

/-- `A169615(A038722(n+1))+C(n, A008486(n))` -/
def P2033703515470004183.Spec : Prop :=
  ∀ n, P2033703515470004183.a n = A169613 (n + 3)

theorem P2033703515470004183.correct : P2033703515470004183.Spec := by
  intro n
  simp only [A169613, Nat.add_sub_cancel]

end A169613

/-! ## A169613.P7346320657758005063

`A169615(A038722(n+1))+C(n, A047602(2*n+5))`
-/

namespace A169613.P7346320657758005063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 (A038722 (n + 1)).toNat + (Nat.choose n (A047602 (2 * n + 5)).toNat : ℤ)

end

end A169613.P7346320657758005063

namespace A169613

/-- `A169615(A038722(n+1))+C(n, A047602(2*n+5))` -/
def P7346320657758005063.Spec : Prop :=
  ∀ n, P7346320657758005063.a n = A169613 (n + 3)

end A169613

/-! ## A169613.P6688176620519747089

`A169615(A038722(n+1))+C(n, A139272(3*n+1))`
-/

namespace A169613.P6688176620519747089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 (A038722 (n + 1)).toNat + (Nat.choose n (A139272 (3 * n + 1)).toNat : ℤ)

end

end A169613.P6688176620519747089

namespace A169613

/-- `A169615(A038722(n+1))+C(n, A139272(3*n+1))` -/
def P6688176620519747089.Spec : Prop :=
  ∀ n, P6688176620519747089.a n = A169613 (n + 3)

end A169613

/-! ## A169613.P659923066231775835

`A169615(A038722(n+1))+A053188(n²)`
-/

namespace A169613.P659923066231775835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 (A038722 (n + 1)).toNat + A053188 (n ^ 2)

end

end A169613.P659923066231775835

namespace A169613

/-- `A169615(A038722(n+1))+A053188(n²)` -/
def P659923066231775835.Spec : Prop :=
  ∀ n, P659923066231775835.a n = A169613 (n + 3)

end A169613

/-! ## A169613.P1566818221805495623

`A169615(A038722(n+1))+C(n, A140790(n+1))`
-/

namespace A169613.P1566818221805495623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 (A038722 (n + 1)).toNat + (Nat.choose n (A140790 (n + 1)).toNat : ℤ)

end

end A169613.P1566818221805495623

namespace A169613

/-- `A169615(A038722(n+1))+C(n, A140790(n+1))` -/
def P1566818221805495623.Spec : Prop :=
  ∀ n, P1566818221805495623.a n = A169613 (n + 3)

end A169613

/-!
# A169614: Triangular array: T(n,k)=integer nearest F(n)/F(n-k), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

The programs for A169614, there is no canonical definition to state claims against.
-/

/-! ## A169614.P3796785845716639460

`A169616(∑[char[∑[n]]]²-n)`
-/

namespace A169614.P3796785845716639460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169616 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A169614.P3796785845716639460

/-! ## A169614.P11993748161369821045

`A362970(A143461(n))`
-/

namespace A169614.P11993748161369821045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362970 (A143461 n).toNat

end

end A169614.P11993748161369821045

/-! ## A169614.P3141458656239494441

`A072660(A372816(n+1)+1)`
-/

namespace A169614.P3141458656239494441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (A372816 (n + 1) + 1).toNat

end

end A169614.P3141458656239494441

/-! ## A169614.P9706176759141144755

`A360476(A129116(n+1))+1`
-/

namespace A169614.P9706176759141144755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360476 (A129116 (n + 1)).toNat + 1

end

end A169614.P9706176759141144755

/-! ## A169614.P11532779845200920834

`A097004(A209766(n+1))`
-/

namespace A169614.P11532779845200920834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097004 (A209766 (n + 1)).toNat

end

end A169614.P11532779845200920834

/-!
# A169615: Triangular array: T(n,k)=floor(F(n+k)/F(k)), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

The programs for A169615, the canonical program `A169615.P2865630802981082709` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169615 has offset 1).

The definition of A169615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169615.P8758726267584353293

`A169613(∑[char[∑[n]]]²-n+2)`
-/

namespace A169615.P8758726267584353293
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169613 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A169615.P8758726267584353293

namespace A169615

/-- `A169613(∑[char[∑[n]]]²-n+2)` -/
def P8758726267584353293.Spec : Prop :=
  ∀ n, P8758726267584353293.a n = A169615 (n + 1)

end A169615

/-! ## A169615.P13627455785805684636

`or(char[1], A169613(A061579(n)+3))`
-/

namespace A169615.P13627455785805684636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A169613 (A061579 n + 3).toNat)

end

end A169615.P13627455785805684636

namespace A169615

/-- `or(char[1], A169613(A061579(n)+3))` -/
def P13627455785805684636.Spec : Prop :=
  ∀ n, P13627455785805684636.a n = A169615 (n + 1)

end A169615

/-! ## A169615.P9939923964972371491

`A169613(A061579(n)+3)+A000007(n+1)`
-/

namespace A169615.P9939923964972371491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169613 (A061579 n + 3).toNat + A000007 (n + 1)

end

end A169615.P9939923964972371491

namespace A169615

/-- `A169613(A061579(n)+3)+A000007(n+1)` -/
def P9939923964972371491.Spec : Prop :=
  ∀ n, P9939923964972371491.a n = A169615 (n + 1)

end A169615

/-! ## A169615.P16307825902342425002

`A169613(A061579(n)+3)+C(n, A154323(n))`
-/

namespace A169615.P16307825902342425002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169613 (A061579 n + 3).toNat + (Nat.choose n (A154323 n).toNat : ℤ)

end

end A169615.P16307825902342425002

namespace A169615

/-- `A169613(A061579(n)+3)+C(n, A154323(n))` -/
def P16307825902342425002.Spec : Prop :=
  ∀ n, P16307825902342425002.a n = A169615 (n + 1)

end A169615

/-! ## A169615.P2865630802981082709

`A357814(lt[1, A104763(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A169615

/-- `A357814(lt[1, A104763(n+1)])` -/
def P2865630802981082709.Spec : Prop :=
  ∀ n, P2865630802981082709.a n = A169615 (n + 1)

theorem P2865630802981082709.correct : P2865630802981082709.Spec := by
  intro n
  simp only [A169615, Nat.add_sub_cancel]

end A169615

/-! ## A169615.P493807042711928538

`A357814(lt[A357814(n+1), A131410(n+1)])`
-/

namespace A169615.P493807042711928538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A169615.P493807042711928538

namespace A169615

/-- `A357814(lt[A357814(n+1), A131410(n+1)])` -/
def P493807042711928538.Spec : Prop :=
  ∀ n, P493807042711928538.a n = A169615 (n + 1)

end A169615

/-! ## A169615.P1431661315523355453

`A357814(lt[2, A268956(n+1)])`
-/

namespace A169615.P1431661315523355453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169615.P1431661315523355453

namespace A169615

/-- `A357814(lt[2, A268956(n+1)])` -/
def P1431661315523355453.Spec : Prop :=
  ∀ n, P1431661315523355453.a n = A169615 (n + 1)

end A169615

/-! ## A169615.P5731939578788019262

`A357814(lt[1, A357824(n)])`
-/

namespace A169615.P5731939578788019262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169615.P5731939578788019262

namespace A169615

/-- `A357814(lt[1, A357824(n)])` -/
def P5731939578788019262.Spec : Prop :=
  ∀ n, P5731939578788019262.a n = A169615 (n + 1)

end A169615

/-!
# A169616: Triangular array: T(n,k)=integer nearest F(n+k)/F(k), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

The programs for A169616, there is no canonical definition to state claims against.
-/

/-! ## A169616.P9937910928039795127

`A169614(∑[char[∑[n]]]²-n)`
-/

namespace A169616.P9937910928039795127
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A169616.P9937910928039795127

/-! ## A169616.P12828652033033331568

`A169614(A038722(n+1))+C(2, A031898(n+1))`
-/

namespace A169616.P12828652033033331568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + (Nat.choose 2 (A031898 (n + 1)).toNat : ℤ)

end

end A169616.P12828652033033331568

/-! ## A169616.P853232558360709771

`A169614(A038722(n+1))+C(2, A191483(n+1))`
-/

namespace A169616.P853232558360709771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + (Nat.choose 2 (A191483 (n + 1)).toNat : ℤ)

end

end A169616.P853232558360709771

/-! ## A169616.P15371708941824969412

`A169614(A038722(n+1))+C(2, A295299(n+1))`
-/

namespace A169616.P15371708941824969412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + (Nat.choose 2 (A295299 (n + 1)).toNat : ℤ)

end

end A169616.P15371708941824969412

/-! ## A169616.P4854136772011361238

`A169614(A038722(n+1))+C(2, A365446(n+1))`
-/

namespace A169616.P4854136772011361238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + (Nat.choose 2 (A365446 (n + 1)).toNat : ℤ)

end

end A169616.P4854136772011361238

/-! ## A169616.P16923151977791467282

`A169614(A038722(n+1))+A024155(2*n+5)`
-/

namespace A169616.P16923151977791467282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + A024155 (2 * n + 5)

end

end A169616.P16923151977791467282

/-! ## A169616.P4212319665577692643

`A169614(A038722(n+1))+A000007(3*n+2)`
-/

namespace A169616.P4212319665577692643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A169616.P4212319665577692643

/-! ## A169616.P4766529415178961446

`A169614(A038722(n+1))+C(2, A074938(3*n+4))`
-/

namespace A169616.P4766529415178961446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + (Nat.choose 2 (A074938 (3 * n + 4)).toNat : ℤ)

end

end A169616.P4766529415178961446

/-! ## A169616.P3307053613922108266

`A169614(A038722(n+1))+C(2, A110819(n+1))`
-/

namespace A169616.P3307053613922108266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169614 (A038722 (n + 1)).toNat + (Nat.choose 2 (A110819 (n + 1)).toNat : ℤ)

end

end A169616.P3307053613922108266

/-!
# A169617: List of numbers k such that k=6*m-1=r*j, r>=j and n>=q where r=6*n-1 or r=6*n+1 and j=6*q-1 or j=6*q+1.

The programs for A169617, there is no canonical definition to state claims against.
-/

/-! ## A169617.P11724068853346423444

`A174130(n+1)+A105700(n^3)`
-/

namespace A169617.P11724068853346423444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174130 (n + 1) + A105700 (n ^ 3)

end

end A169617.P11724068853346423444

/-! ## A169617.P12693006321496281462

`A174130(n+1)%A087294(n+1)`
-/

namespace A169617.P12693006321496281462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174130 (n + 1)) (A087294 (n + 1))

end

end A169617.P12693006321496281462

/-! ## A169617.P2366722742126322283

`lcm(A008836(A007368(n)), A174130(n+1))`
-/

namespace A169617.P2366722742126322283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (A007368 n).toNat) (A174130 (n + 1))

end

end A169617.P2366722742126322283

/-! ## A169617.P9627295933870632814

`or(A008683(A337353(n)), A174130(n+1))`
-/

namespace A169617.P9627295933870632814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A337353 n).toNat) (A174130 (n + 1))

end

end A169617.P9627295933870632814

/-!
# A169619: Hankel transform of quartic (or 4-fold) factorial numbers A007696.

The programs for A169619, there is no canonical definition to state claims against.
-/

/-! ## A169619.P9665671478169375473

`∏[4^n*n!*A007696(n)]`
-/

namespace A169619.P9665671478169375473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial n : ℤ) * A007696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169619.P9665671478169375473

/-! ## A169619.P12825186695835867373

`∏[∏[A008574(A001107(n))]]`
-/

namespace A169619.P12825186695835867373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A001107 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169619.P12825186695835867373

/-! ## A169619.P17976773204795787702

`∏[∏[A004277(A139271(n))]]`
-/

namespace A169619.P17976773204795787702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A139271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169619.P17976773204795787702

/-! ## A169619.P4336424144391338183

`∏[A007696(n)*A047053(n)]`
-/

namespace A169619.P4336424144391338183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007696 n * A047053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169619.P4336424144391338183

/-!
# A169620: Hankel transform of quintuple factorial numbers A008548.

The programs for A169620, there is no canonical definition to state claims against.
-/

/-! ## A169620.P3459384533404686971

`∏[5^n*n!*A008548(n)]`
-/

namespace A169620.P3459384533404686971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n * Nat.factorial n : ℤ) * A008548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169620.P3459384533404686971

/-! ## A169620.P11578219004783285110

`∏[∏[A008706(A051624(n))]]`
-/

namespace A169620.P11578219004783285110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A051624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169620.P11578219004783285110

/-! ## A169620.P8187459110400562713

`∏[A008548(n)*A052562(n)]`
-/

namespace A169620.P8187459110400562713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008548 n * A052562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169620.P8187459110400562713

/-!
# A169621: 

The programs for A169621, there is no canonical definition to state claims against.
-/

/-! ## A169621.P741155315610771195

`∏[5^n*n!*A047055(n)]`
-/

namespace A169621.P741155315610771195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n * Nat.factorial n : ℤ) * A047055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169621.P741155315610771195

/-! ## A169621.P646819635883952299

`∏[A047055(n)*A052562(n)]`
-/

namespace A169621.P646819635883952299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047055 n * A052562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169621.P646819635883952299

/-!
# A169622: a(n) = a(n-1) + Fibonacci(n), a(1)=5.

The programs for A169622, the canonical program `A169622.P6290212887941856126` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169622 has offset 1).

The definition of A169622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169622.P7864292929188694322

`3+A000045(n+3)`
-/

namespace A169622.P7864292929188694322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A000045 (n + 3)

end

end A169622.P7864292929188694322

namespace A169622

/-- `3+A000045(n+3)` -/
def P7864292929188694322.Spec : Prop :=
  ∀ n, P7864292929188694322.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P6290212887941856126

`2*a(n-1)-a(n-3)` with `a(0)=5, a(1)=6, a(2)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169622

/-- `2*a(n-1)-a(n-3)` -/
def P6290212887941856126.Spec : Prop :=
  ∀ n, P6290212887941856126.a n = A169622 (n + 1)

theorem P6290212887941856126.correct : P6290212887941856126.Spec := by
  intro n
  simp only [A169622, Nat.add_sub_cancel]

end A169622

/-! ## A169622.P12612864196550461709

`5+A168193(n)/2`
-/

namespace A169622.P12612864196550461709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 + (A168193 n : ℚ) / 2

end

end A169622.P12612864196550461709

namespace A169622

/-- `5+A168193(n)/2` -/
def P12612864196550461709.Spec : Prop :=
  ∀ n, P12612864196550461709.a n = (A169622 (n + 1) : ℚ)

end A169622

/-! ## A169622.P11065353518226459304

`∑[ogf((-5+4x+4x^2)/(-1+x+x^2))]`
-/

namespace A169622.P11065353518226459304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, -4] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169622.P11065353518226459304

namespace A169622

/-- `∑[ogf((-5+4x+4x^2)/(-1+x+x^2))]` -/
def P11065353518226459304.Spec : Prop :=
  ∀ n, P11065353518226459304.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P3183759287572955847

`ogf((5-4x-4x^2)/(1-2x+x^3))`
-/

namespace A169622.P3183759287572955847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, -4] [1, -2, 0, 1] n

end

end A169622.P3183759287572955847

namespace A169622

/-- `ogf((5-4x-4x^2)/(1-2x+x^3))` -/
def P3183759287572955847.Spec : Prop :=
  ∀ n, P3183759287572955847.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P2145272622087535617

`floor(ϕ*(a(n-1)-1))` with `a(0)=5`
-/

namespace A169622.P2145272622087535617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) - 1 : ℝ)⌋

end

end A169622.P2145272622087535617

namespace A169622

/-- `floor(ϕ*(a(n-1)-1))` -/
def P2145272622087535617.Spec : Prop :=
  ∀ n, P2145272622087535617.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P11957288699195558525

`round(ϕ*(a(n-1)-1))` with `a(0)=5`
-/

namespace A169622.P11957288699195558525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) - 1 : ℝ))

end

end A169622.P11957288699195558525

namespace A169622

/-- `round(ϕ*(a(n-1)-1))` -/
def P11957288699195558525.Spec : Prop :=
  ∀ n, P11957288699195558525.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P6784302547263339557

`ceil(ϕ*(a(n-1)-ϕ))` with `a(0)=5`
-/

namespace A169622.P6784302547263339557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈Real.goldenRatio * ((a (n - 1) : ℝ) - Real.goldenRatio)⌉

end

end A169622.P6784302547263339557

namespace A169622

/-- `ceil(ϕ*(a(n-1)-ϕ))` -/
def P6784302547263339557.Spec : Prop :=
  ∀ n, P6784302547263339557.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P171214821572137859

`a(n-1)+a(n-2)-3` with `a(0)=5, a(1)=6`
-/

namespace A169622.P171214821572137859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 1) + (a (n - 2) - 3)

end

end A169622.P171214821572137859

namespace A169622

/-- `a(n-1)+a(n-2)-3` -/
def P171214821572137859.Spec : Prop :=
  ∀ n, P171214821572137859.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P11803880196440596813

`a(n-1)-(3-a(n-2))` with `a(0)=5, a(1)=6`
-/

namespace A169622.P11803880196440596813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 1) - (3 - a (n - 2))

end

end A169622.P11803880196440596813

namespace A169622

/-- `a(n-1)-(3-a(n-2))` -/
def P11803880196440596813.Spec : Prop :=
  ∀ n, P11803880196440596813.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P6574691031601938056

`A018910(n)+1`
-/

namespace A169622.P6574691031601938056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n + 1

end

end A169622.P6574691031601938056

namespace A169622

/-- `A018910(n)+1` -/
def P6574691031601938056.Spec : Prop :=
  ∀ n, P6574691031601938056.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P1044135241170930386

`A048577(n)+2`
-/

namespace A169622.P1044135241170930386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + 2

end

end A169622.P1044135241170930386

namespace A169622

/-- `A048577(n)+2` -/
def P1044135241170930386.Spec : Prop :=
  ∀ n, P1044135241170930386.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P2348738704361939919

`A020695(n)+3`
-/

namespace A169622.P2348738704361939919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + 3

end

end A169622.P2348738704361939919

namespace A169622

/-- `A020695(n)+3` -/
def P2348738704361939919.Spec : Prop :=
  ∀ n, P2348738704361939919.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P16819459729955107331

`A157726(n+3)`
-/

namespace A169622.P16819459729955107331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 3)

end

end A169622.P16819459729955107331

namespace A169622

/-- `A157726(n+3)` -/
def P16819459729955107331.Spec : Prop :=
  ∀ n, P16819459729955107331.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P1285449085284180780

`A001911(n)+5`
-/

namespace A169622.P1285449085284180780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + 5

end

end A169622.P1285449085284180780

namespace A169622

/-- `A001911(n)+5` -/
def P1285449085284180780.Spec : Prop :=
  ∀ n, P1285449085284180780.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P15982068029181728278

`A157725(n+3)+1`
-/

namespace A169622.P15982068029181728278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 3) + 1

end

end A169622.P15982068029181728278

namespace A169622

/-- `A157725(n+3)+1` -/
def P15982068029181728278.Spec : Prop :=
  ∀ n, P15982068029181728278.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P7231946492628259452

`A001611(n+3)+2`
-/

namespace A169622.P7231946492628259452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 3) + 2

end

end A169622.P7231946492628259452

namespace A169622

/-- `A001611(n+3)+2` -/
def P7231946492628259452.Spec : Prop :=
  ∀ n, P7231946492628259452.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P4713176329860377800

`A157727(n+3)-1`
-/

namespace A169622.P4713176329860377800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (n + 3) - 1

end

end A169622.P4713176329860377800

namespace A169622

/-- `A157727(n+3)-1` -/
def P4713176329860377800.Spec : Prop :=
  ∀ n, P4713176329860377800.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P6612016615069041205

`A157729(n+3)-2`
-/

namespace A169622.P6612016615069041205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 (n + 3) - 2

end

end A169622.P6612016615069041205

namespace A169622

/-- `A157729(n+3)-2` -/
def P6612016615069041205.Spec : Prop :=
  ∀ n, P6612016615069041205.a n = A169622 (n + 1)

end A169622

/-! ## A169622.P641887794608215596

`A000071(n+3)+4`
-/

namespace A169622.P641887794608215596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + 4

end

end A169622.P641887794608215596

namespace A169622

/-- `A000071(n+3)+4` -/
def P641887794608215596.Spec : Prop :=
  ∀ n, P641887794608215596.a n = A169622 (n + 1)

end A169622

/-!
# A169623: Generalized Pascal triangle read by rows: T(n,0) = T(0,n) = 1 for n >= 0, T(n,k) = 0 for k < 0 or k > n; otherwise T(n,k) = T(n-2,k-2) + T(n-2,k-1) + T(n-2,k) for 1 <= k <= n-1.

The programs for A169623, there is no canonical definition to state claims against.
-/

/-! ## A169623.P2817379708066688765

`A123149(A007401(n+1))`
-/

namespace A169623.P2817379708066688765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (A007401 (n + 1)).toNat

end

end A169623.P2817379708066688765

/-! ## A169623.P11871621960191445787

`A123149(A002024(n+1)+n)`
-/

namespace A169623.P11871621960191445787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A169623.P11871621960191445787

/-! ## A169623.P7310702110332426471

`A123149(A003056(n)+1+n)`
-/

namespace A169623.P7310702110332426471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (A003056 n + 1 + (n : ℤ)).toNat

end

end A169623.P7310702110332426471

/-! ## A169623.P11484735804243882209

`A123149(lt[A123149(n+2), A039599(n)])`
-/

namespace A169623.P11484735804243882209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A169623.P11484735804243882209

/-! ## A169623.P11839944009970962887

`A123149(A099375(n)+n)`
-/

namespace A169623.P11839944009970962887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (A099375 n + (n : ℤ)).toNat

end

end A169623.P11839944009970962887

/-! ## A169623.P16364190379884938701

`A123149(lt[n, A039599(n)²])`
-/

namespace A169623.P16364190379884938701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169623.P16364190379884938701

/-! ## A169623.P1760607021085330508

`A123149(A380649(n+1))`
-/

namespace A169623.P1760607021085330508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (A380649 (n + 1)).toNat

end

end A169623.P1760607021085330508

/-!
# A169628: Semi-sums (average) of two (not necessarily distinct) Mersenne primes (A000668).

The programs for A169628, there is no canonical definition to state claims against.
-/

/-! ## A169628.P11564153369441395672

`1/2*A171251(n+1)`
-/

namespace A169628.P11564153369441395672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A171251 (n + 1) : ℚ)

end

end A169628.P11564153369441395672

/-! ## A169628.P5395755453907982396

`∪[A171253(n+1), A171254(n+1)]`
-/

namespace A169628.P5395755453907982396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A169628.P5395755453907982396

/-! ## A169628.P13785612220402419576

`A171251(n+1)/2`
-/

namespace A169628.P13785612220402419576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171251 (n + 1) : ℚ) / 2

end

end A169628.P13785612220402419576

/-! ## A169628.P14392719765233605550

`A000265(A171251(n+1))`
-/

namespace A169628.P14392719765233605550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A171251 (n + 1)).toNat

end

end A169628.P14392719765233605550

/-! ## A169628.P16478263002289436246

`A392699(A066847(n))`
-/

namespace A169628.P16478263002289436246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392699 (A066847 n).toNat

end

end A169628.P16478263002289436246

/-!
# A169630: a(n) = n times the square of Fibonacci(n).

The programs for A169630, the canonical program `A169630.P113445014588492800` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169630 has offset 0).

The definition of A169630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169630.P113445014588492800

`n*A007598(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A169630

/-- `n*A007598(n)` -/
def P113445014588492800.Spec : Prop :=
  ∀ n, P113445014588492800.a n = A169630 n

theorem P113445014588492800.correct : P113445014588492800.Spec := by
  intro n
  simp only [A169630]

end A169630

/-! ## A169630.P15675579464916380789

`n*A000045(n)²`
-/

namespace A169630.P15675579464916380789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n ^ 2

end

end A169630.P15675579464916380789

namespace A169630

/-- `n*A000045(n)²` -/
def P15675579464916380789.Spec : Prop :=
  ∀ n, P15675579464916380789.a n = A169630 n

end A169630

/-! ## A169630.P3412096722737485266

`A045925(n)*A000045(n)`
-/

namespace A169630.P3412096722737485266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n * A000045 n

end

end A169630.P3412096722737485266

namespace A169630

/-- `A045925(n)*A000045(n)` -/
def P3412096722737485266.Spec : Prop :=
  ∀ n, P3412096722737485266.a n = A169630 n

end A169630

/-! ## A169630.P42352647605430981

`4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=12, a(4)=36, a(5)=125`
-/

namespace A169630.P42352647605430981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 12, 36, 125] fun n a =>
  4 * a (n - 1) - 10 * a (n - 3) + 4 * a (n - 5) - a (n - 6)

end

end A169630.P42352647605430981

namespace A169630

/-- `4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` -/
def P42352647605430981.Spec : Prop :=
  ∀ n, P42352647605430981.a n = A169630 n

end A169630

/-! ## A169630.P11693699979691110628

`n*(((3+sqrt(5))/2)^n+((3-sqrt(5))/2)^n-2*(-1)^n)/5`
-/

namespace A169630.P11693699979691110628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (((3 + Real.sqrt (5 : ℝ)) / 2) ^ n + ((3 - Real.sqrt (5 : ℝ)) / 2) ^ n - (2 * (-1) ^ n : ℝ)) / 5

end

end A169630.P11693699979691110628

namespace A169630

/-- `n*(((3+sqrt(5))/2)^n+((3-sqrt(5))/2)^n-2*(-1)^n)/5` -/
def P11693699979691110628.Spec : Prop :=
  ∀ n, P11693699979691110628.a n = (A169630 n : ℝ)

end A169630

/-! ## A169630.P7429410500115234047

`n*Δ[a(n-1)+a(n-2)]²` with `a(0)=1, a(1)=1`
-/

namespace A169630.P7429410500115234047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A169630.P7429410500115234047

namespace A169630

/-- `n*Δ[a(n-1)+a(n-2)]²` -/
def P7429410500115234047.Spec : Prop :=
  ∀ n, P7429410500115234047.a n = A169630 n

end A169630

/-! ## A169630.P12725913652981986751

`n*∑[a(n-1)+a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A169630.P12725913652981986751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169630.P12725913652981986751

namespace A169630

/-- `n*∑[a(n-1)+a(n-2)]²` -/
def P12725913652981986751.Spec : Prop :=
  ∀ n, (P12725913652981986751.a n : ℤ) = A169630 n

end A169630

/-! ## A169630.P15486810926076514507

`n*A236191(n)²`
-/

namespace A169630.P15486810926076514507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A236191 n ^ 2

end

end A169630.P15486810926076514507

namespace A169630

/-- `n*A236191(n)²` -/
def P15486810926076514507.Spec : Prop :=
  ∀ n, P15486810926076514507.a n = A169630 n

end A169630

/-! ## A169630.P16780969084545516952

`n*A333378(n)²`
-/

namespace A169630.P16780969084545516952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A333378 n ^ 2

end

end A169630.P16780969084545516952

namespace A169630

/-- `n*A333378(n)²` -/
def P16780969084545516952.Spec : Prop :=
  ∀ n, P16780969084545516952.a n = A169630 n

end A169630

/-! ## A169630.P5788894233443305705

`n*(A245306(n)-1)`
-/

namespace A169630.P5788894233443305705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A245306 n - 1)

end

end A169630.P5788894233443305705

namespace A169630

/-- `n*(A245306(n)-1)` -/
def P5788894233443305705.Spec : Prop :=
  ∀ n, P5788894233443305705.a n = A169630 n

theorem P5788894233443305705.correct : P5788894233443305705.Spec := by
  intro n
  simp only [A169630, Nat.add_sub_cancel, A169630.P5788894233443305705.a, A169630.P113445014588492800.a, A007598, A007598.P9940810952435345628.a, A245306, A245306.P10234298044598893059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169630

/-! ## A169630.P9216138153909645795

`n*A152192(2*n)`
-/

namespace A169630.P9216138153909645795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152192 (2 * n)

end

end A169630.P9216138153909645795

namespace A169630

/-- `n*A152192(2*n)` -/
def P9216138153909645795.Spec : Prop :=
  ∀ n, P9216138153909645795.a n = A169630 n

end A169630

/-! ## A169630.P6804331474449092609

`n/2*A175395(n)`
-/

namespace A169630.P6804331474449092609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A175395 n : ℚ)

end

end A169630.P6804331474449092609

namespace A169630

/-- `n/2*A175395(n)` -/
def P6804331474449092609.Spec : Prop :=
  ∀ n, P6804331474449092609.a n = (A169630 n : ℚ)

theorem P6804331474449092609.correct : P6804331474449092609.Spec := by
  intro n
  simp only [A169630, Nat.add_sub_cancel, A169630.P6804331474449092609.a, A169630.P113445014588492800.a, A007598, A007598.P9940810952435345628.a, A175395, A175395.P17598903217825691316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169630

/-! ## A169630.P5138143567107844457

`A390581(n)-A059929(n)`
-/

namespace A169630.P5138143567107844457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390581 n - A059929 n

end

end A169630.P5138143567107844457

namespace A169630

/-- `A390581(n)-A059929(n)` -/
def P5138143567107844457.Spec : Prop :=
  ∀ n, P5138143567107844457.a n = A169630 n

end A169630

/-! ## A169630.P8077853670725200796

`(A099920(n)-A000045(n))*A000045(n)`
-/

namespace A169630.P8077853670725200796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099920 n - A000045 n) * A000045 n

end

end A169630.P8077853670725200796

namespace A169630

/-- `(A099920(n)-A000045(n))*A000045(n)` -/
def P8077853670725200796.Spec : Prop :=
  ∀ n, P8077853670725200796.a n = A169630 n

end A169630

/-! ## A169630.P3707159056657995768

`(A099920(n)-A045925(n))*A045925(n)`
-/

namespace A169630.P3707159056657995768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099920 n - A045925 n) * A045925 n

end

end A169630.P3707159056657995768

namespace A169630

/-- `(A099920(n)-A045925(n))*A045925(n)` -/
def P3707159056657995768.Spec : Prop :=
  ∀ n, P3707159056657995768.a n = A169630 n

end A169630

/-! ## A169630.P11646562850480979230

`(A190062(n)-A122491(n))*A045925(n)`
-/

namespace A169630.P11646562850480979230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190062 n - A122491 n) * A045925 n

end

end A169630.P11646562850480979230

namespace A169630

/-- `(A190062(n)-A122491(n))*A045925(n)` -/
def P11646562850480979230.Spec : Prop :=
  ∀ n, P11646562850480979230.a n = A169630 n

end A169630

/-! ## A169630.P13879852040641003435

`(A178521(n)-A264147(n))*A000045(n)`
-/

namespace A169630.P13879852040641003435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178521 n - A264147 n) * A000045 n

end

end A169630.P13879852040641003435

namespace A169630

/-- `(A178521(n)-A264147(n))*A000045(n)` -/
def P13879852040641003435.Spec : Prop :=
  ∀ n, P13879852040641003435.a n = A169630 n

end A169630

/-! ## A169630.P13422496095229652860

`(A354044(n)-A094588(n))*A000045(n)`
-/

namespace A169630.P13422496095229652860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354044 n - A094588 n) * A000045 n

end

end A169630.P13422496095229652860

namespace A169630

/-- `(A354044(n)-A094588(n))*A000045(n)` -/
def P13422496095229652860.Spec : Prop :=
  ∀ n, P13422496095229652860.a n = A169630 n

end A169630

/-! ## A169630.P14384475506828224922

`(A088209(n)-A045925(n+1))*A045925(n)`
-/

namespace A169630.P14384475506828224922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088209 n - A045925 (n + 1)) * A045925 n

end

end A169630.P14384475506828224922

namespace A169630

/-- `(A088209(n)-A045925(n+1))*A045925(n)` -/
def P14384475506828224922.Spec : Prop :=
  ∀ n, P14384475506828224922.a n = A169630 n

end A169630

/-!
# A169631: Recamán's sequence (A005132) written in binary.

The programs for A169631, there is no canonical definition to state claims against.
-/

/-! ## A169631.P11148629637705918439

`A007088(A005132(n))`
-/

namespace A169631.P11148629637705918439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005132 n).toNat

end

end A169631.P11148629637705918439

/-! ## A169631.P4627855686458306347

`A007088(A209386(n)/2)`
-/

namespace A169631.P4627855686458306347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A209386 n : ℚ) / 2)).toNat

end

end A169631.P4627855686458306347

/-! ## A169631.P6101017653393710205

`A007088(∑[n*A160357(n)])`
-/

namespace A169631.P6101017653393710205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169631.P6101017653393710205

/-! ## A169631.P14533986366207320007

`A007088(∑[n/A160357(n)])`
-/

namespace A169631.P14533986366207320007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A160357 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A169631.P14533986366207320007

/-! ## A169631.P9488053932847468183

`A007088(A063733(n+1)-1)`
-/

namespace A169631.P9488053932847468183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A063733 (n + 1) - 1).toNat

end

end A169631.P9488053932847468183

/-! ## A169631.P4345347237537065164

`A007088(A334951(n+1)+n+1)`
-/

namespace A169631.P4345347237537065164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A334951 (n + 1) + (n : ℤ) + 1).toNat

end

end A169631.P4345347237537065164

/-! ## A169631.P15822236941496744117

`A185544(A209386(n))`
-/

namespace A169631.P15822236941496744117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A209386 n).toNat

end

end A169631.P15822236941496744117

/-! ## A169631.P8904941530154113725

`A185544(2*A005132(n))`
-/

namespace A169631.P8904941530154113725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A005132 n).toNat

end

end A169631.P8904941530154113725

/-!
# A169632: The even terms in Recamán's sequence (A005132).

The programs for A169632, there is no canonical definition to state claims against.
-/

/-! ## A169632.P6886198722312759733

`A005132(comp[or(2, n)-1])`
-/

namespace A169632.P6886198722312759733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A169632.P6886198722312759733

/-! ## A169632.P7684435190059168161

`A005132(n%2+2*n)`
-/

namespace A169632.P7684435190059168161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (n % 2 + 2 * n)

end

end A169632.P7684435190059168161

/-! ## A169632.P17110839290452538177

`A005132(and(1, n)+2*n)`
-/

namespace A169632.P17110839290452538177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Nat.land 1 n + 2 * n)

end

end A169632.P17110839290452538177

/-! ## A169632.P18367089395541016771

`A005132(xor(1, or(1, n)+n))`
-/

namespace A169632.P18367089395541016771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Nat.xor 1 (Nat.lor 1 n + n))

end

end A169632.P18367089395541016771

/-! ## A169632.P9263592292594232829

`A005132(or(2*n, and(1, n)))`
-/

namespace A169632.P9263592292594232829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Nat.lor (2 * n) (Nat.land 1 n))

end

end A169632.P9263592292594232829

/-! ## A169632.P9521314398304380202

`A005132(xor(2*n, and(1, n)))`
-/

namespace A169632.P9521314398304380202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Nat.xor (2 * n) (Nat.land 1 n))

end

end A169632.P9521314398304380202

/-! ## A169632.P17554855750283361337

`A005132(∑[abs(a(n-2))])` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A169632.P17554855750283361337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A169632.P17554855750283361337

/-! ## A169632.P795397528470741520

`A005132(2*(n+1)-gcd(2, n))`
-/

namespace A169632.P795397528470741520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * (n + 1) - Nat.gcd 2 n)

end

end A169632.P795397528470741520

/-! ## A169632.P16643944170768003110

`A005132(or(1, n+1)+n-1)`
-/

namespace A169632.P16643944170768003110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((Nat.lor 1 (n + 1) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A169632.P16643944170768003110

/-! ## A169632.P11198659645555993302

`A005132(A014601(n))`
-/

namespace A169632.P11198659645555993302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A014601 n).toNat

end

end A169632.P11198659645555993302

/-!
# A169633: The odd terms in Recamán's sequence (A005132).

The programs for A169633, there is no canonical definition to state claims against.
-/

/-! ## A169633.P13624787269155494853

`A005132(or(1, n)+n)`
-/

namespace A169633.P13624787269155494853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Nat.lor 1 n + n)

end

end A169633.P13624787269155494853

/-! ## A169633.P2668620951737661578

`A005132(record[or(2, n)-1])`
-/

namespace A169633.P2668620951737661578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A169633.P2668620951737661578

/-! ## A169633.P1820633462510779246

`A209386(or(1, n)+n)/2`
-/

namespace A169633.P1820633462510779246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (Nat.lor 1 n + n) : ℚ) / 2

end

end A169633.P1820633462510779246

/-! ## A169633.P4141271090083633383

`A005132(and(62, n)+n+1)`
-/

namespace A169633.P4141271090083633383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Nat.land 62 n + (n + 1))

end

end A169633.P4141271090083633383

/-! ## A169633.P16836917822700932106

`A005132(Δ[n²]-n%2)`
-/

namespace A169633.P16836917822700932106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A169633.P16836917822700932106

/-! ## A169633.P9498709289487431137

`A005132(xor(1, comp[or(2, n)-1]))`
-/

namespace A169633.P9498709289487431137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A169633.P9498709289487431137

/-! ## A169633.P14883980063821820938

`A005132(log2(gcd(2, n))+2*n)`
-/

namespace A169633.P14883980063821820938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 * n : ℝ))).toNat

end

end A169633.P14883980063821820938

/-! ## A169633.P2467877031167032159

`A005132(char[2*n]+2*n)`
-/

namespace A169633.P2467877031167032159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)

end

end A169633.P2467877031167032159

/-! ## A169633.P17565971007697654831

`A209386(or(2*n, ∑[or(1, n)]%4))/2`
-/

namespace A169633.P17565971007697654831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (Nat.lor (2 * n) ((∑ j ∈ Finset.range (n + 1), f1 j) % 4)) : ℚ) / 2

end

end A169633.P17565971007697654831

/-! ## A169633.P15340571922757181574

`A382128(A047621(n+1))`
-/

namespace A169633.P15340571922757181574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382128 (A047621 (n + 1)).toNat

end

end A169633.P15340571922757181574

/-!
# A169634: a(n) = 3*7^n.

The programs for A169634, the canonical program `A169634.P5176651036239165802` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169634 has offset 0).

The definition of A169634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*7^n` (program `A169634.P5176651036239165802`, by `A169634.P5176651036239165802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169634.P5176651036239165802

`3*7^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169634

/-- `3*7^n` -/
def P5176651036239165802.Spec : Prop :=
  ∀ n, (P5176651036239165802.a n : ℤ) = A169634 n

theorem P5176651036239165802.correct : P5176651036239165802.Spec := by
  intro n
  simp only [A169634]

end A169634

/-!
# A169636: a(n) is the number of permutations of the first n terms of the Hofstadter-Conway $10000 sequence (A004001).

The programs for A169636, there is no canonical definition to state claims against.
-/

/-! ## A169636.P700769347948502782

`A093594(A132302(n+1))`
-/

namespace A169636.P700769347948502782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093594 (A132302 (n + 1)).toNat

end

end A169636.P700769347948502782

/-! ## A169636.P12300019861868410828

`∩[A093687(n+1), A239943(n+1)]`
-/

namespace A169636.P12300019861868410828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169636.P12300019861868410828

/-! ## A169636.P14054884061011584639

`A000142(n+1)/A084966(A000142(n))`
-/

namespace A169636.P14054884061011584639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A084966 (A000142 n).toNat : ℚ)

end

end A169636.P14054884061011584639

/-!
# A169637: The number of permutations of the first n elements of the Hofstaedter Q-sequence (A005185), augmented by Q(0)=1.

The programs for A169637, there is no canonical definition to state claims against.
-/

/-! ## A169637.P3861062966588492159

`A169638(n)/A026492(A015440(n))`
-/

namespace A169637.P3861062966588492159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169638 n : ℚ) / (A026492 (A015440 n).toNat : ℚ)

end

end A169637.P3861062966588492159

/-! ## A169637.P6987695293702932988

`A169638(n)/A306841(A306852(n))`
-/

namespace A169637.P6987695293702932988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169638 n : ℚ) / (A306841 (A306852 n).toNat : ℚ)

end

end A169637.P6987695293702932988

/-! ## A169637.P1049058556365625601

`A000027(A169638(n)/A242784(n+4))`
-/

namespace A169637.P1049058556365625601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A169638 n : ℚ) / (A242784 (n + 4) : ℚ))).toNat

end

end A169637.P1049058556365625601

/-! ## A169637.P1837148252967018216

`A169638(n)/A043280(A045912(3*n+1))`
-/

namespace A169637.P1837148252967018216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169638 n : ℚ) / (A043280 (A045912 (3 * n + 1)).toNat : ℚ)

end

end A169637.P1837148252967018216

/-! ## A169637.P14701074578026358157

`A000027(A169638(n))/A296816(A087825(n+1))`
-/

namespace A169637.P14701074578026358157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A169638 n).toNat : ℚ) / (A296816 (A087825 (n + 1)).toNat : ℚ)

end

end A169637.P14701074578026358157

/-!
# A169638: Number of multiset permutations of the n initial elements of A005229 with additional element A005229(0)=1.

The programs for A169638, there is no canonical definition to state claims against.
-/

/-! ## A169638.P6508144640594728893

`A169637(n)*A306841(A306852(n))`
-/

namespace A169638.P6508144640594728893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169637 n * A306841 (A306852 n).toNat

end

end A169638.P6508144640594728893

/-! ## A169638.P13839937867438124757

`A169637(n)*A184170(A080524(n+1))`
-/

namespace A169638.P13839937867438124757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169637 n * A184170 (A080524 (n + 1)).toNat

end

end A169638.P13839937867438124757

/-! ## A169638.P10965814370930918973

`A000027(lcm(A169637(n), A169658(n+1)))`
-/

namespace A169638.P10965814370930918973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A169637 n) (A169658 (n + 1)))

end

end A169638.P10965814370930918973

/-! ## A169638.P11675737650701400182

`A043288(A147021(2*(n+1)))*A169637(n)`
-/

namespace A169638.P11675737650701400182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A147021 (2 * (n + 1))).toNat * A169637 n

end

end A169638.P11675737650701400182

/-! ## A169638.P3997513028641709143

`A169637(n)*A335452(A047874(3*n+1))`
-/

namespace A169638.P3997513028641709143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169637 n * A335452 (A047874 (3 * n + 1)).toNat

end

end A169638.P3997513028641709143

/-!
# A169640: Numbers k such that sum of digits of the k-th prime = the sum of digits of the k-th semiprime.

The programs for A169640, the canonical program `A169640.P6065947106366125092` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169640 has offset 1).

The definition of A169640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169640.P6065947106366125092

`eq[A007605(n+1), A175013(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A169640

/-- `eq[A007605(n+1), A175013(n+1)]+1` -/
def P6065947106366125092.Spec : Prop :=
  ∀ n, (P6065947106366125092.a n : ℤ) = A169640 (n + 1)

theorem P6065947106366125092.correct : P6065947106366125092.Spec := by
  intro n
  simp only [A169640, Nat.add_sub_cancel]

end A169640

/-!
# A169641: Start with n, apply the map k -> A169639(k) until trajectory converges; sequence give full list of the 20 possible limit points.

The programs for A169641, there is no canonical definition to state claims against.
-/

/-! ## A169641.P17990101719659179307

`A344013(n+12)`
-/

namespace A169641.P17990101719659179307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344013 (n + 12)

end

end A169641.P17990101719659179307

/-!
# A169642: a(n) = A005408(n) * A022998(n).

The programs for A169642, the canonical program `A169642.P13748874128716676200` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169642 has offset 0).

The definition of A169642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005408(n)*A022998(n)` (program `A169642.P13748874128716676200`, by `A169642.P13748874128716676200.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169642.P6179739558824180697

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=20, a(3)=21, a(4)=72, a(5)=55`
-/

namespace A169642.P6179739558824180697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 20, 21, 72, 55] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A169642.P6179739558824180697

namespace A169642

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P6179739558824180697.Spec : Prop :=
  ∀ n, P6179739558824180697.a n = A169642 n

end A169642

/-! ## A169642.P13748874128716676200

`A005408(n)*A022998(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A169642

/-- `A005408(n)*A022998(n)` -/
def P13748874128716676200.Spec : Prop :=
  ∀ n, P13748874128716676200.a n = A169642 n

theorem P13748874128716676200.correct : P13748874128716676200.Spec := by
  intro n
  simp only [A169642]

end A169642

/-! ## A169642.P6719381380029759101

`gcd(2, n)*C(Δ[n²], 2)`
-/

namespace A169642.P6719381380029759101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2

end

end A169642.P6719381380029759101

namespace A169642

/-- `gcd(2, n)*C(Δ[n²], 2)` -/
def P6719381380029759101.Spec : Prop :=
  ∀ n, (P6719381380029759101.a n : ℤ) = A169642 n

end A169642

/-! ## A169642.P5245269312703905785

`gcd(2*n, n²)*Δ[n²]`
-/

namespace A169642.P5245269312703905785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (n ^ 2) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A169642.P5245269312703905785

namespace A169642

/-- `gcd(2*n, n²)*Δ[n²]` -/
def P5245269312703905785.Spec : Prop :=
  ∀ n, P5245269312703905785.a n = A169642 n

end A169642

/-! ## A169642.P7863607663108678021

`lcm(2*n+1, n*or(n, -2))`
-/

namespace A169642.P7863607663108678021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((n : ℤ) * Int.lor (n : ℤ) (-2))

end

end A169642.P7863607663108678021

namespace A169642

/-- `lcm(2*n+1, n*or(n, -2))` -/
def P7863607663108678021.Spec : Prop :=
  ∀ n, (P7863607663108678021.a n : ℤ) = A169642 n

end A169642

/-! ## A169642.P1931991001508583595

`(2-and(1, n))*C(2*n+1, 2)`
-/

namespace A169642.P1931991001508583595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * (Nat.choose (2 * n + 1) 2 : ℤ)

end

end A169642.P1931991001508583595

namespace A169642

/-- `(2-and(1, n))*C(2*n+1, 2)` -/
def P1931991001508583595.Spec : Prop :=
  ∀ n, P1931991001508583595.a n = A169642 n

end A169642

/-! ## A169642.P862372416849711984

`(2*n+1)*n*(2-n%2)`
-/

namespace A169642.P862372416849711984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)))

end

end A169642.P862372416849711984

namespace A169642

/-- `(2*n+1)*n*(2-n%2)` -/
def P862372416849711984.Spec : Prop :=
  ∀ n, P862372416849711984.a n = A169642 n

end A169642

/-! ## A169642.P11489484490665428535

`(2-and(1, n))*n*(2*n+1)`
-/

namespace A169642.P11489484490665428535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * (n * (2 * n + 1) : ℤ)

end

end A169642.P11489484490665428535

namespace A169642

/-- `(2-and(1, n))*n*(2*n+1)` -/
def P11489484490665428535.Spec : Prop :=
  ∀ n, P11489484490665428535.a n = A169642 n

end A169642

/-! ## A169642.P6347707306843394804

`lcm(2*n, Δ[C(n², 2)])/(n+1)`
-/

namespace A169642.P6347707306843394804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / (n + 1 : ℚ)

end

end A169642.P6347707306843394804

namespace A169642

/-- `lcm(2*n, Δ[C(n², 2)])/(n+1)` -/
def P6347707306843394804.Spec : Prop :=
  ∀ n, P6347707306843394804.a n = (A169642 n : ℚ)

end A169642

/-! ## A169642.P7116368863059797239

`n*(∑[∑[ogf((3+4x+5x^2)/(1+2x+x^2))]]-1)`
-/

namespace A169642.P7116368863059797239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 5] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A169642.P7116368863059797239

namespace A169642

/-- `n*(∑[∑[ogf((3+4x+5x^2)/(1+2x+x^2))]]-1)` -/
def P7116368863059797239.Spec : Prop :=
  ∀ n, P7116368863059797239.a n = A169642 n

end A169642

/-! ## A169642.P17161748139357839346

`(and(1, n+1)+1)*C(2*n+1, 2)`
-/

namespace A169642.P17161748139357839346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * Nat.choose (2 * n + 1) 2

end

end A169642.P17161748139357839346

namespace A169642

/-- `(and(1, n+1)+1)*C(2*n+1, 2)` -/
def P17161748139357839346.Spec : Prop :=
  ∀ n, (P17161748139357839346.a n : ℤ) = A169642 n

end A169642

/-! ## A169642.P14330289996970515870

`(and(1, n+1)+1)*n*(2*n+1)`
-/

namespace A169642.P14330289996970515870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * (n * (2 * n + 1))

end

end A169642.P14330289996970515870

namespace A169642

/-- `(and(1, n+1)+1)*n*(2*n+1)` -/
def P14330289996970515870.Spec : Prop :=
  ∀ n, (P14330289996970515870.a n : ℤ) = A169642 n

end A169642

/-! ## A169642.P10002895571849140080

`(2*n+1)*(2*n-lcm(2, n)+n)`
-/

namespace A169642.P10002895571849140080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((2 * n : ℤ) - (Nat.lcm 2 n : ℤ) + (n : ℤ))

end

end A169642.P10002895571849140080

namespace A169642

/-- `(2*n+1)*(2*n-lcm(2, n)+n)` -/
def P10002895571849140080.Spec : Prop :=
  ∀ n, P10002895571849140080.a n = A169642 n

end A169642

/-! ## A169642.P5606758790981689291

`lcm(n+1, 2*n*Δ[n²])/(n+1)`
-/

namespace A169642.P5606758790981689291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) ((2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) : ℚ) / (n + 1 : ℚ)

end

end A169642.P5606758790981689291

namespace A169642

/-- `lcm(n+1, 2*n*Δ[n²])/(n+1)` -/
def P5606758790981689291.Spec : Prop :=
  ∀ n, P5606758790981689291.a n = (A169642 n : ℚ)

end A169642

/-! ## A169642.P16355585378176612170

`(2-char[2*n+1])*n*(2*n+1)`
-/

namespace A169642.P16355585378176612170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (n * (2 * n + 1) : ℤ)

end

end A169642.P16355585378176612170

namespace A169642

/-- `(2-char[2*n+1])*n*(2*n+1)` -/
def P16355585378176612170.Spec : Prop :=
  ∀ n, P16355585378176612170.a n = A169642 n

end A169642

/-! ## A169642.P6742368761516741603

`((2*n)²+2*n)/gcd(n+1, n-1)`
-/

namespace A169642.P6742368761516741603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 2 * n : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ)

end

end A169642.P6742368761516741603

namespace A169642

/-- `((2*n)²+2*n)/gcd(n+1, n-1)` -/
def P6742368761516741603.Spec : Prop :=
  ∀ n, P6742368761516741603.a n = (A169642 n : ℚ)

end A169642

/-! ## A169642.P15840351009706792337

`gcd((2*n+1)*2*n, (2*n+1)*n²)`
-/

namespace A169642.P15840351009706792337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((2 * n + 1) * (2 * n)) ((2 * n + 1) * n ^ 2)

end

end A169642.P15840351009706792337

namespace A169642

/-- `gcd((2*n+1)*2*n, (2*n+1)*n²)` -/
def P15840351009706792337.Spec : Prop :=
  ∀ n, (P15840351009706792337.a n : ℤ) = A169642 n

end A169642

/-! ## A169642.P8845256320171108925

`floor(lcm((2*n+1)*2*n, ∑[2*n])/(n+1))`
-/

namespace A169642.P8845256320171108925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm ((2 * n + 1) * (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A169642.P8845256320171108925

namespace A169642

/-- `floor(lcm((2*n+1)*2*n, ∑[2*n])/(n+1))` -/
def P8845256320171108925.Spec : Prop :=
  ∀ n, P8845256320171108925.a n = A169642 n

end A169642

/-! ## A169642.P19058094148096860

`A002943(n)/A000034(n)`
-/

namespace A169642.P19058094148096860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A000034 n : ℚ)

end

end A169642.P19058094148096860

namespace A169642

/-- `A002943(n)/A000034(n)` -/
def P19058094148096860.Spec : Prop :=
  ∀ n, P19058094148096860.a n = (A169642 n : ℚ)

end A169642

/-! ## A169642.P10305573257325321937

`A033586(n)/A010694(n)`
-/

namespace A169642.P10305573257325321937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033586 n : ℚ) / (A010694 n : ℚ)

end

end A169642.P10305573257325321937

namespace A169642

/-- `A033586(n)/A010694(n)` -/
def P10305573257325321937.Spec : Prop :=
  ∀ n, P10305573257325321937.a n = (A169642 n : ℚ)

end A169642

/-!
# A169643: Numbers k such that neither composite(k)+-1 is composite.

The programs for A169643, the canonical program `A169643.P16723077689636949144` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169643 has offset 1).

The definition of A169643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A066246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169643.P16723077689636949144

`A066246(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A169643

/-- `A066246(A014574(n+1))` -/
def P16723077689636949144.Spec : Prop :=
  ∀ n, P16723077689636949144.a n = A169643 (n + 1)

theorem P16723077689636949144.correct : P16723077689636949144.Spec := by
  intro n
  simp only [A169643, Nat.add_sub_cancel]

end A169643

/-! ## A169643.P1861005962595585470

`A001359(n+1)-A029707(n+1)`
-/

namespace A169643.P1861005962595585470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A029707 (n + 1)

end

end A169643.P1861005962595585470

namespace A169643

/-- `A001359(n+1)-A029707(n+1)` -/
def P1861005962595585470.Spec : Prop :=
  ∀ n, P1861005962595585470.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P4279332238452853689

`A014574(n+1)-A107770(n+1)`
-/

namespace A169643.P4279332238452853689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A107770 (n + 1)

end

end A169643.P4279332238452853689

namespace A169643

/-- `A014574(n+1)-A107770(n+1)` -/
def P4279332238452853689.Spec : Prop :=
  ∀ n, P4279332238452853689.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P7669946196476657218

`A144834(n+1)-A155752(n+1)`
-/

namespace A169643.P7669946196476657218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) - A155752 (n + 1)

end

end A169643.P7669946196476657218

namespace A169643

/-- `A144834(n+1)-A155752(n+1)` -/
def P7669946196476657218.Spec : Prop :=
  ∀ n, P7669946196476657218.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P11462783263782052139

`A014574(n+1)-(A029707(n+1)+1)`
-/

namespace A169643.P11462783263782052139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - (A029707 (n + 1) + 1)

end

end A169643.P11462783263782052139

namespace A169643

/-- `A014574(n+1)-(A029707(n+1)+1)` -/
def P11462783263782052139.Spec : Prop :=
  ∀ n, P11462783263782052139.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P10648148425047815673

`A001359(n+1)+1-A107770(n+1)`
-/

namespace A169643.P10648148425047815673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (1 - A107770 (n + 1))

end

end A169643.P10648148425047815673

namespace A169643

/-- `A001359(n+1)+1-A107770(n+1)` -/
def P10648148425047815673.Spec : Prop :=
  ∀ n, P10648148425047815673.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P13923520622707768477

`A006512(n+1)-(A107770(n+1)+1)`
-/

namespace A169643.P13923520622707768477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (A107770 (n + 1) + 1)

end

end A169643.P13923520622707768477

namespace A169643

/-- `A006512(n+1)-(A107770(n+1)+1)` -/
def P13923520622707768477.Spec : Prop :=
  ∀ n, P13923520622707768477.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P40095804001594467

`A144834(n+1)+1-A029707(n+1)`
-/

namespace A169643.P40095804001594467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + (1 - A029707 (n + 1))

end

end A169643.P40095804001594467

namespace A169643

/-- `A144834(n+1)+1-A029707(n+1)` -/
def P40095804001594467.Spec : Prop :=
  ∀ n, P40095804001594467.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P17838118079771185950

`A006512(n+1)-(A029707(n+1)+2)`
-/

namespace A169643.P17838118079771185950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (A029707 (n + 1) + 2)

end

end A169643.P17838118079771185950

namespace A169643

/-- `A006512(n+1)-(A029707(n+1)+2)` -/
def P17838118079771185950.Spec : Prop :=
  ∀ n, P17838118079771185950.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P17880611040324372849

`A077800(2*n+1)-A029707(n+1)`
-/

namespace A169643.P17880611040324372849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1) - A029707 (n + 1)

end

end A169643.P17880611040324372849

namespace A169643

/-- `A077800(2*n+1)-A029707(n+1)` -/
def P17880611040324372849.Spec : Prop :=
  ∀ n, P17880611040324372849.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P8921554749770012007

`A014689(A029707(n+1))`
-/

namespace A169643.P8921554749770012007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A029707 (n + 1)).toNat

end

end A169643.P8921554749770012007

namespace A169643

/-- `A014689(A029707(n+1))` -/
def P8921554749770012007.Spec : Prop :=
  ∀ n, P8921554749770012007.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P3093750395354172384

`A065890(A107770(n+1))`
-/

namespace A169643.P3093750395354172384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A107770 (n + 1)).toNat

end

end A169643.P3093750395354172384

namespace A169643

/-- `A065890(A107770(n+1))` -/
def P3093750395354172384.Spec : Prop :=
  ∀ n, P3093750395354172384.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P9780996092911559107

`A001359(n+1)-A000720(A014574(n+1))`
-/

namespace A169643.P9780996092911559107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A000720 (A014574 (n + 1)).toNat

end

end A169643.P9780996092911559107

namespace A169643

/-- `A001359(n+1)-A000720(A014574(n+1))` -/
def P9780996092911559107.Spec : Prop :=
  ∀ n, P9780996092911559107.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P8772017872679863694

`A014574(n+1)-A000720(A006512(n+1))`
-/

namespace A169643.P8772017872679863694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A000720 (A006512 (n + 1)).toNat

end

end A169643.P8772017872679863694

namespace A169643

/-- `A014574(n+1)-A000720(A006512(n+1))` -/
def P8772017872679863694.Spec : Prop :=
  ∀ n, P8772017872679863694.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P15587994170396729991

`A171821(2*n+1)-A000720(A171821(2*n+1))`
-/

namespace A169643.P15587994170396729991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (2 * n + 1) - A000720 (A171821 (2 * n + 1)).toNat

end

end A169643.P15587994170396729991

namespace A169643

/-- `A171821(2*n+1)-A000720(A171821(2*n+1))` -/
def P15587994170396729991.Spec : Prop :=
  ∀ n, P15587994170396729991.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P6862741402051392186

`A065855(A006512(n+1))`
-/

namespace A169643.P6862741402051392186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A006512 (n + 1)).toNat

end

end A169643.P6862741402051392186

namespace A169643

/-- `A065855(A006512(n+1))` -/
def P6862741402051392186.Spec : Prop :=
  ∀ n, P6862741402051392186.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P7254443685851770654

`A065896(A040040(n+1))`
-/

namespace A169643.P7254443685851770654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A040040 (n + 1)).toNat

end

end A169643.P7254443685851770654

namespace A169643

/-- `A065896(A040040(n+1))` -/
def P7254443685851770654.Spec : Prop :=
  ∀ n, P7254443685851770654.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P16592909395866679172

`A065896(A168497(n+2))`
-/

namespace A169643.P16592909395866679172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A168497 (n + 2)).toNat

end

end A169643.P16592909395866679172

namespace A169643

/-- `A065896(A168497(n+2))` -/
def P16592909395866679172.Spec : Prop :=
  ∀ n, P16592909395866679172.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P14110324026581351815

`A065855(A001359(n+1)+1)`
-/

namespace A169643.P14110324026581351815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A001359 (n + 1) + 1).toNat

end

end A169643.P14110324026581351815

namespace A169643

/-- `A065855(A001359(n+1)+1)` -/
def P14110324026581351815.Spec : Prop :=
  ∀ n, P14110324026581351815.a n = A169643 (n + 1)

end A169643

/-! ## A169643.P2051446128621489537

`A065855(A054735(n+1)/2)`
-/

namespace A169643.P2051446128621489537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A169643.P2051446128621489537

namespace A169643

/-- `A065855(A054735(n+1)/2)` -/
def P2051446128621489537.Spec : Prop :=
  ∀ n, P2051446128621489537.a n = A169643 (n + 1)

end A169643

/-!
# A169644: Numbers with two or more distinct factorizations m*k such that m <= k <= 2*m.

The programs for A169644, there is no canonical definition to state claims against.
-/

/-! ## A169644.P14444796756338534476

`lt[2, A067742(n+1)]+1`
-/

namespace A169644.P14444796756338534476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169644.P14444796756338534476

/-! ## A169644.P9839504877369518462

`lt[2, A067742(A028310(n))]`
-/

namespace A169644.P9839504877369518462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169644.P9839504877369518462

/-! ## A169644.P7239251487605599425

`A020725(lt[2, A067742(n+1)])`
-/

namespace A169644.P7239251487605599425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169644.P7239251487605599425

/-! ## A169644.P12040025275184722190

`A065475(lt[2, A067742(n+1)])`
-/

namespace A169644.P12040025275184722190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169644.P12040025275184722190

/-! ## A169644.P3224640966861158667

`A020725(lt[2, A000005(n+1)-A067743(n+1)])`
-/

namespace A169644.P3224640966861158667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A067743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169644.P3224640966861158667

/-!
# A169645: Primes p = prime(k) whose decimal expansion contains the string 13 and such that digsum(p) = disgum(k) where digsum = A007953 is the sum of digits function.

The programs for A169645, there is no canonical definition to state claims against.
-/

/-! ## A169645.P10749774878918237524

`∩[A033548(n+1), A166573(n+1)]`
-/

namespace A169645.P10749774878918237524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169645.P10749774878918237524

/-! ## A169645.P11246225472627472664

`∩[A166573(n+1), A343139(n+1)]`
-/

namespace A169645.P11246225472627472664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169645.P11246225472627472664

/-! ## A169645.P4744327534016242322

`∩[A033548(n+1), A293873(n+1)]`
-/

namespace A169645.P4744327534016242322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169645.P4744327534016242322

/-! ## A169645.P7765794620063034555

`∩[A000040(A033549(n+1)), A166573(n+1)]`
-/

namespace A169645.P7765794620063034555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033549 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169645.P7765794620063034555

/-! ## A169645.P4200645337250680801

`∩[A008578(A033549(n+1)+1), A166573(n+1)]`
-/

namespace A169645.P4200645337250680801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A033549 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169645.P4200645337250680801

/-!
# A169646: Number of squarefree numbers of form k*n, 1 <= k <= n.

The programs for A169646, there is no canonical definition to state claims against.
-/

/-! ## A169646.P15581321384775604615

`A008966(n+1)*A073311(n+1)`
-/

namespace A169646.P15581321384775604615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A073311 (n + 1)

end

end A169646.P15581321384775604615

/-! ## A169646.P16636627270135934550

`A008966(n+1)*A091813(n+1)`
-/

namespace A169646.P16636627270135934550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A091813 (n + 1)

end

end A169646.P16636627270135934550

/-! ## A169646.P1403717973528868584

`A008966(n+1)*A231117(n+1)`
-/

namespace A169646.P1403717973528868584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A231117 (n + 1)

end

end A169646.P1403717973528868584

/-! ## A169646.P11897361121667830088

`lcm(A008683(n+1), A073311(n+1))`
-/

namespace A169646.P11897361121667830088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A073311 (n + 1))

end

end A169646.P11897361121667830088

/-! ## A169646.P4439739096948475275

`lcm(A069158(n+1), A091813(n+1))`
-/

namespace A169646.P4439739096948475275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069158 (n + 1)) (A091813 (n + 1))

end

end A169646.P4439739096948475275

/-! ## A169646.P5103083775683664457

`lcm(A080323(n+1), A231117(n+1))`
-/

namespace A169646.P5103083775683664457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080323 (n + 1)) (A231117 (n + 1))

end

end A169646.P5103083775683664457

/-! ## A169646.P16288560669039343117

`A069158(n+1)²*A073311(n+1)`
-/

namespace A169646.P16288560669039343117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) ^ 2 * A073311 (n + 1)

end

end A169646.P16288560669039343117

/-! ## A169646.P4284666513394893526

`A080323(n+1)²*A091813(n+1)`
-/

namespace A169646.P4284666513394893526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n + 1) ^ 2 * A091813 (n + 1)

end

end A169646.P4284666513394893526

/-! ## A169646.P7715945901376283821

`A008683(n+1)²*A231117(n+1)`
-/

namespace A169646.P7715945901376283821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A231117 (n + 1)

end

end A169646.P7715945901376283821

/-! ## A169646.P9117102039265835965

`A157657(n+1)²*A091813(n+1)`
-/

namespace A169646.P9117102039265835965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1) ^ 2 * A091813 (n + 1)

end

end A169646.P9117102039265835965

/-! ## A169646.P9855299222539004706

`A157657(n+1)²*A231117(n+1)`
-/

namespace A169646.P9855299222539004706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1) ^ 2 * A231117 (n + 1)

end

end A169646.P9855299222539004706

/-! ## A169646.P11863814757107212590

`(1-A107078(n+1))*A073311(n+1)`
-/

namespace A169646.P11863814757107212590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A107078 (n + 1)) * A073311 (n + 1)

end

end A169646.P11863814757107212590

/-! ## A169646.P4294271409431671993

`(1-A107078(n+1))*A231117(n+1)`
-/

namespace A169646.P4294271409431671993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A107078 (n + 1)) * A231117 (n + 1)

end

end A169646.P4294271409431671993

/-! ## A169646.P14118576015832193619

`A231117(A385212(n+1))-A107078(n+1)`
-/

namespace A169646.P14118576015832193619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231117 (A385212 (n + 1)).toNat - A107078 (n + 1)

end

end A169646.P14118576015832193619

/-! ## A169646.P11443352654538556330

`(A000010(n+1)-A073312(n+1))*A008966(n+1)`
-/

namespace A169646.P11443352654538556330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A073312 (n + 1)) * A008966 (n + 1)

end

end A169646.P11443352654538556330

/-! ## A169646.P13921990022851457332

`(A013928(n+2)-A013928(n+1))*A073311(n+1)`
-/

namespace A169646.P13921990022851457332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013928 (n + 2) - A013928 (n + 1)) * A073311 (n + 1)

end

end A169646.P13921990022851457332

/-! ## A169646.P1534823246530925469

`(A107079(n+2)-A107079(n+1))*A073311(n+1)`
-/

namespace A169646.P1534823246530925469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107079 (n + 2) - A107079 (n + 1)) * A073311 (n + 1)

end

end A169646.P1534823246530925469

/-! ## A169646.P16846855606419615414

`(A107079(n+2)-A107079(n+1))*A231117(n+1)`
-/

namespace A169646.P16846855606419615414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107079 (n + 2) - A107079 (n + 1)) * A231117 (n + 1)

end

end A169646.P16846855606419615414

/-!
# A169647: Primes p such that (p-2)/3 is not a prime number.

The programs for A169647, the canonical program `A169647.P7129432361313558652` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169647 has offset 1).

The definition of A169647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169647.P14855933885827235722

`p?[comp[A001748(n+1)+2]]`
-/

namespace A169647.P14855933885827235722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P14855933885827235722

namespace A169647

/-- `p?[comp[A001748(n+1)+2]]` -/
def P14855933885827235722.Spec : Prop :=
  ∀ n, (P14855933885827235722.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P74400337242517906

`p?[comp[A253106(n+1)+2]]`
-/

namespace A169647.P74400337242517906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P74400337242517906

namespace A169647

/-- `p?[comp[A253106(n+1)+2]]` -/
def P74400337242517906.Spec : Prop :=
  ∀ n, (P74400337242517906.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P5938440378820202488

`p?[A072491(ceil(n/3))+n]`
-/

namespace A169647.P5938440378820202488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 ⌈(n : ℚ) / 3⌉.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169647.P5938440378820202488

namespace A169647

/-- `p?[A072491(ceil(n/3))+n]` -/
def P5938440378820202488.Spec : Prop :=
  ∀ n, P5938440378820202488.a n = A169647 (n + 1)

end A169647

/-! ## A169647.P1331423001211798047

`p?[comp[3*A000040(n+1)+2]]`
-/

namespace A169647.P1331423001211798047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P1331423001211798047

namespace A169647

/-- `p?[comp[3*A000040(n+1)+2]]` -/
def P1331423001211798047.Spec : Prop :=
  ∀ n, (P1331423001211798047.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P5926347844739509769

`p?[comp[3*A093074(n+1)+2]]`
-/

namespace A169647.P5926347844739509769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093074 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P5926347844739509769

namespace A169647

/-- `p?[comp[3*A093074(n+1)+2]]` -/
def P5926347844739509769.Spec : Prop :=
  ∀ n, (P5926347844739509769.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P17005370097813253015

`p?[comp[3*A262365(n+1)+2]]`
-/

namespace A169647.P17005370097813253015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A262365 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P17005370097813253015

namespace A169647

/-- `p?[comp[3*A262365(n+1)+2]]` -/
def P17005370097813253015.Spec : Prop :=
  ∀ n, (P17005370097813253015.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P17782459646463383843

`p?[comp[3*lt[n+1, A014963(n+1)²]+5]]`
-/

namespace A169647.P17782459646463383843
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P17782459646463383843

namespace A169647

/-- `p?[comp[3*lt[n+1, A014963(n+1)²]+5]]` -/
def P17782459646463383843.Spec : Prop :=
  ∀ n, (P17782459646463383843.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P7129432361313558652

`p?[A073855(A008620(n))+n]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A169647

/-- `p?[A073855(A008620(n))+n]` -/
def P7129432361313558652.Spec : Prop :=
  ∀ n, P7129432361313558652.a n = A169647 (n + 1)

theorem P7129432361313558652.correct : P7129432361313558652.Spec := by
  intro n
  simp only [A169647, Nat.add_sub_cancel]

end A169647

/-! ## A169647.P8356430702956412768

`p?[A107279(A103627(n))+n]`
-/

namespace A169647.P8356430702956412768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A103627 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169647.P8356430702956412768

namespace A169647

/-- `p?[A107279(A103627(n))+n]` -/
def P8356430702956412768.Spec : Prop :=
  ∀ n, P8356430702956412768.a n = A169647 (n + 1)

end A169647

/-! ## A169647.P13529752420843480499

`p?[comp[A016969(A005097(n+1))]]`
-/

namespace A169647.P13529752420843480499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A005097 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P13529752420843480499

namespace A169647

/-- `p?[comp[A016969(A005097(n+1))]]` -/
def P13529752420843480499.Spec : Prop :=
  ∀ n, (P13529752420843480499.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P11235967765928653487

`p?[comp[A016777(A000040(n+1))+1]]`
-/

namespace A169647.P11235967765928653487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A000040 (n + 1)).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P11235967765928653487

namespace A169647

/-- `p?[comp[A016777(A000040(n+1))+1]]` -/
def P11235967765928653487.Spec : Prop :=
  ∀ n, (P11235967765928653487.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P9919933420170618264

`record[A014963(comp[A253106(n+1)]+2)]`
-/

namespace A169647.P9919933420170618264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169647.P9919933420170618264

namespace A169647

/-- `record[A014963(comp[A253106(n+1)]+2)]` -/
def P9919933420170618264.Spec : Prop :=
  ∀ n, P9919933420170618264.a n = A169647 (n + 1)

end A169647

/-! ## A169647.P3950232477301836484

`p?[comp[A016777(A006530(n+2))+1]]`
-/

namespace A169647.P3950232477301836484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A006530 (n + 2)).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P3950232477301836484

namespace A169647

/-- `p?[comp[A016777(A006530(n+2))+1]]` -/
def P3950232477301836484.Spec : Prop :=
  ∀ n, (P3950232477301836484.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P5219389623922301491

`p?[comp[(A016777(n)+1)*A003415(n)]]`
-/

namespace A169647.P5219389623922301491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + 1) * A003415 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P5219389623922301491

namespace A169647

/-- `p?[comp[(A016777(n)+1)*A003415(n)]]` -/
def P5219389623922301491.Spec : Prop :=
  ∀ n, (P5219389623922301491.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P14734530964967997295

`p?[A066247(A002264(n)+1)+2+n]`
-/

namespace A169647.P14734530964967997295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A002264 n + 1).toNat + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169647.P14734530964967997295

namespace A169647

/-- `p?[A066247(A002264(n)+1)+2+n]` -/
def P14734530964967997295.Spec : Prop :=
  ∀ n, P14734530964967997295.a n = A169647 (n + 1)

end A169647

/-! ## A169647.P342953776934458582

`record[A006530(comp[3*A000040(n+1)]+2)]`
-/

namespace A169647.P342953776934458582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169647.P342953776934458582

namespace A169647

/-- `record[A006530(comp[3*A000040(n+1)]+2)]` -/
def P342953776934458582.Spec : Prop :=
  ∀ n, P342953776934458582.a n = A169647 (n + 1)

end A169647

/-! ## A169647.P5299142212013639989

`record[A014963(comp[3*A000040(n+1)]+2)]`
-/

namespace A169647.P5299142212013639989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169647.P5299142212013639989

namespace A169647

/-- `record[A014963(comp[3*A000040(n+1)]+2)]` -/
def P5299142212013639989.Spec : Prop :=
  ∀ n, P5299142212013639989.a n = A169647 (n + 1)

end A169647

/-! ## A169647.P7294957625242916322

`p?[comp[A001222(2*n+1)*A016969(n)]]`
-/

namespace A169647.P7294957625242916322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) * A016969 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A169647.P7294957625242916322

namespace A169647

/-- `p?[comp[A001222(2*n+1)*A016969(n)]]` -/
def P7294957625242916322.Spec : Prop :=
  ∀ n, (P7294957625242916322.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P1169937326840706332

`eq[A051699(n), A107279(A103627(n))]`
-/

namespace A169647.P1169937326840706332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A103627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169647.P1169937326840706332

namespace A169647

/-- `eq[A051699(n), A107279(A103627(n))]` -/
def P1169937326840706332.Spec : Prop :=
  ∀ n, (P1169937326840706332.a n : ℤ) = A169647 (n + 1)

end A169647

/-! ## A169647.P14292535714644091366

`comp[2*A055672(n)+n]`
-/

namespace A169647.P14292535714644091366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055672 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169647.P14292535714644091366

namespace A169647

/-- `comp[2*A055672(n)+n]` -/
def P14292535714644091366.Spec : Prop :=
  ∀ n, (P14292535714644091366.a n : ℤ) = A169647 (n + 1)

end A169647

/-!
# A169649: Total number of cells that are ON at stage n in Wolfram's 2-D cellular automaton defined by Rule 942.

The programs for A169649, there is no canonical definition to state claims against.
-/

/-! ## A169649.P15832472510216480784

`A264768(abs(1-n))+A147562(n)`
-/

namespace A169649.P15832472510216480784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 |1 - (n : ℤ)|.toNat + A147562 n

end

end A169649.P15832472510216480784

/-! ## A169649.P4252848219528394212

`A147562(n)+A264768(n)-A264769(n)`
-/

namespace A169649.P4252848219528394212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n + (A264768 n - A264769 n)

end

end A169649.P4252848219528394212

/-!
# A169650: a(n) = 3*a(n-1) + 2^n - 6, with a(1) = 3.

The programs for A169650, the canonical program `A169650.P11358953874657138754` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169650 has offset 1).

The definition of A169650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2^(n+1)-6` (program `A169650.P11358953874657138754`, by `A169650.P11358953874657138754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169650.P1496250825331056917

`4*3^n-2^(n+2)+3`
-/

namespace A169650.P1496250825331056917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 3 ^ n : ℤ) - (2 ^ (n + 2) : ℤ) + 3

end

end A169650.P1496250825331056917

namespace A169650

/-- `4*3^n-2^(n+2)+3` -/
def P1496250825331056917.Spec : Prop :=
  ∀ n, P1496250825331056917.a n = A169650 (n + 1)

theorem P1496250825331056917.correct : P1496250825331056917.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A169650, Nat.add_sub_cancel, A169650.P1496250825331056917.a, A169650.P11358953874657138754.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A169650, Nat.add_sub_cancel, A169650.P1496250825331056917.a, A169650.P11358953874657138754.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A169650

/-! ## A169650.P11358953874657138754

`3*a(n-1)+2^(n+1)-6` with `a(0)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169650

/-- `3*a(n-1)+2^(n+1)-6` -/
def P11358953874657138754.Spec : Prop :=
  ∀ n, P11358953874657138754.a n = A169650 (n + 1)

theorem P11358953874657138754.correct : P11358953874657138754.Spec := by
  intro n
  simp only [A169650, Nat.add_sub_cancel]

end A169650

/-! ## A169650.P3027481104271089817

`or(3, 4*(3^n-2^n))`
-/

namespace A169650.P3027481104271089817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)))

end

end A169650.P3027481104271089817

namespace A169650

/-- `or(3, 4*(3^n-2^n))` -/
def P3027481104271089817.Spec : Prop :=
  ∀ n, P3027481104271089817.a n = A169650 (n + 1)

end A169650

/-! ## A169650.P14798388821611092866

`xor(3, 4*(3^n-2^n))`
-/

namespace A169650.P14798388821611092866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)))

end

end A169650.P14798388821611092866

namespace A169650

/-- `xor(3, 4*(3^n-2^n))` -/
def P14798388821611092866.Spec : Prop :=
  ∀ n, P14798388821611092866.a n = A169650 (n + 1)

end A169650

/-! ## A169650.P16946930836266617441

`Δ[A008776(n)-A109363(n)]`
-/

namespace A169650.P16946930836266617441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A109363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169650.P16946930836266617441

namespace A169650

/-- `Δ[A008776(n)-A109363(n)]` -/
def P16946930836266617441.Spec : Prop :=
  ∀ n, P16946930836266617441.a n = A169650 (n + 1)

theorem P16946930836266617441.correct : P16946930836266617441.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A169650, Nat.add_sub_cancel, A169650.P16946930836266617441.f1, A169650.P16946930836266617441.a, A169650.P11358953874657138754.a, A008776, A008776.P11088121667404015999.a, A109363, A109363.P398444148463414969.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A169650, Nat.add_sub_cancel, A169650.P16946930836266617441.f1, A169650.P16946930836266617441.a, A169650.P11358953874657138754.a, A008776, A008776.P11088121667404015999.a, A109363, A109363.P398444148463414969.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169650

/-! ## A169650.P17001686299242082574

`Δ[A048473(n)-A109363(n)]`
-/

namespace A169650.P17001686299242082574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n - A109363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169650.P17001686299242082574

namespace A169650

/-- `Δ[A048473(n)-A109363(n)]` -/
def P17001686299242082574.Spec : Prop :=
  ∀ n, P17001686299242082574.a n = A169650 (n + 1)

theorem P17001686299242082574.correct : P17001686299242082574.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A169650, Nat.add_sub_cancel, A169650.P17001686299242082574.f1, A169650.P17001686299242082574.a, A169650.P11358953874657138754.a, A048473, A048473.P18137977496735268190.a, A109363, A109363.P398444148463414969.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A169650, Nat.add_sub_cancel, A169650.P17001686299242082574.f1, A169650.P17001686299242082574.a, A169650.P11358953874657138754.a, A048473, A048473.P18137977496735268190.a, A109363, A109363.P398444148463414969.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169650

/-! ## A169650.P574065247745430735

`Δ[3*n+A027649(n)-A033484(n)]`
-/

namespace A169650.P574065247745430735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A027649 n - A033484 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169650.P574065247745430735

namespace A169650

/-- `Δ[3*n+A027649(n)-A033484(n)]` -/
def P574065247745430735.Spec : Prop :=
  ∀ n, P574065247745430735.a n = A169650 (n + 1)

theorem P574065247745430735.correct : P574065247745430735.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A169650, Nat.add_sub_cancel, A169650.P574065247745430735.f1, A169650.P574065247745430735.a, A169650.P11358953874657138754.a, A027649, A027649.P2434933350896167885.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A169650, Nat.add_sub_cancel, A169650.P574065247745430735.f1, A169650.P574065247745430735.a, A169650.P11358953874657138754.a, A027649, A027649.P2434933350896167885.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169650

/-! ## A169650.P10041029653902532198

`Δ[A290720(n)-A290718(n+1)]`
-/

namespace A169650.P10041029653902532198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290720 n - A290718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169650.P10041029653902532198

namespace A169650

/-- `Δ[A290720(n)-A290718(n+1)]` -/
def P10041029653902532198.Spec : Prop :=
  ∀ n, P10041029653902532198.a n = A169650 (n + 1)

theorem P10041029653902532198.correct : P10041029653902532198.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A169650, Nat.add_sub_cancel, A169650.P10041029653902532198.f1, A169650.P10041029653902532198.a, A169650.P11358953874657138754.a, A290718, A290718.P5793352813253617867.a, A290720, A290720.P3930899614742176784.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A169650, Nat.add_sub_cancel, A169650.P10041029653902532198.f1, A169650.P10041029653902532198.a, A169650.P11358953874657138754.a, A290718, A290718.P5793352813253617867.a, A290720, A290720.P3930899614742176784.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169650

/-! ## A169650.P16144479354529184958

`(A145563(n)+3)%A042032(n)`
-/

namespace A169650.P16144479354529184958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145563 n + 3) (A042032 n)

end

end A169650.P16144479354529184958

namespace A169650

/-- `(A145563(n)+3)%A042032(n)` -/
def P16144479354529184958.Spec : Prop :=
  ∀ n, P16144479354529184958.a n = A169650 (n + 1)

end A169650

/-!
# A169651: a(0)=a(1)=1, a(2)=2; thereafter a(n) = 3*a(n-1) + 3*2^(n-3) - 2.

The programs for A169651, the canonical program `A169651.P11547901777626279456` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169651 has offset 0).

The definition of A169651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169651.P11547901777626279456

`3*a(n-1)+3*2^(n-3)-2` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169651

/-- `3*a(n-1)+3*2^(n-3)-2` -/
def P11547901777626279456.Spec : Prop :=
  ∀ n, P11547901777626279456.a n = (A169651 n : ℚ)

end A169651

/-! ## A169651.P14308335989641361305

`∑[A118264(n)-Δ[A122391(n)]]`
-/

namespace A169651.P14308335989641361305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169651.P14308335989641361305

namespace A169651

/-- `∑[A118264(n)-Δ[A122391(n)]]` -/
def P14308335989641361305.Spec : Prop :=
  ∀ n, P14308335989641361305.a n = A169651 n

end A169651

/-! ## A169651.P6384740101235152261

`A134063(n)-A000392(abs(1-n))`
-/

namespace A169651.P6384740101235152261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n - A000392 |1 - (n : ℤ)|.toNat

end

end A169651.P6384740101235152261

namespace A169651

/-- `A134063(n)-A000392(abs(1-n))` -/
def P6384740101235152261.Spec : Prop :=
  ∀ n, P6384740101235152261.a n = A169651 n

end A169651

/-! ## A169651.P16175127687199344919

`A122695(n)+A007051(A289207(n))`
-/

namespace A169651.P16175127687199344919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122695 n + A007051 (A289207 n).toNat

end

end A169651.P16175127687199344919

namespace A169651

/-- `A122695(n)+A007051(A289207(n))` -/
def P16175127687199344919.Spec : Prop :=
  ∀ n, P16175127687199344919.a n = A169651 n

end A169651

/-! ## A169651.P1299517277902361507

`Δ[A245804(A289207(n))-A001489(n)]`
-/

namespace A169651.P1299517277902361507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 (A289207 n).toNat - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169651.P1299517277902361507

namespace A169651

/-- `Δ[A245804(A289207(n))-A001489(n)]` -/
def P1299517277902361507.Spec : Prop :=
  ∀ n, P1299517277902361507.a n = A169651 n

end A169651

/-! ## A169651.P11607602738222522431

`Δ[A245804(A289207(n))+A000027(n+1)]`
-/

namespace A169651.P11607602738222522431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 (A289207 n).toNat + A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169651.P11607602738222522431

namespace A169651

/-- `Δ[A245804(A289207(n))+A000027(n+1)]` -/
def P11607602738222522431.Spec : Prop :=
  ∀ n, P11607602738222522431.a n = A169651 n

end A169651

/-!
# A169652: a(1) = 5, a(n) = square of sum of previous terms.

The programs for A169652, there is no canonical definition to state claims against.
-/

/-! ## A169652.P8709584263785311595

`Δ[ceil((1/2-a(n-1))²)]` with `a(0)=1, a(1)=6`
-/

namespace A169652.P8709584263785311595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  ⌈((1 : ℚ) / 2 - (f1 (n - 1) : ℚ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169652.P8709584263785311595

/-! ## A169652.P8358453668186705151

`Δ[a(n-1)+a(n-1)²]` with `a(0)=0, a(1)=5`
-/

namespace A169652.P8358453668186705151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A169652.P8358453668186705151

/-! ## A169652.P9326900332746571877

`Δ[(a(n-1)+1)*a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A169652.P9326900332746571877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  (f1 (n - 1) + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A169652.P9326900332746571877

/-!
# A169653: Triangle T(n,k) = A008297(n,k) + A008297(n,n-k+1), read by rows.

The programs for A169653, the canonical program `A169653.P16133505498737097715` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169653 has offset 1).

The definition of A169653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169653.P16133505498737097715

`A008297(n+1)+A008297(A038722(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A169653

/-- `A008297(n+1)+A008297(A038722(n+1))` -/
def P16133505498737097715.Spec : Prop :=
  ∀ n, P16133505498737097715.a n = A169653 (n + 1)

theorem P16133505498737097715.correct : P16133505498737097715.Spec := by
  intro n
  simp only [A169653, Nat.add_sub_cancel]

end A169653

/-! ## A169653.P17416596724343808310

`A176022(n+1)/A088617(n)*A009766(n)`
-/

namespace A169653.P17416596724343808310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176022 (n + 1) : ℚ) / (A088617 n : ℚ) * (A009766 n : ℚ)

end

end A169653.P17416596724343808310

namespace A169653

/-- `A176022(n+1)/A088617(n)*A009766(n)` -/
def P17416596724343808310.Spec : Prop :=
  ∀ n, P17416596724343808310.a n = (A169653 (n + 1) : ℚ)

end A169653

/-! ## A169653.P7402849295298580755

`A176022(n+1)/A001263(n+1)*A007318(n)`
-/

namespace A169653.P7402849295298580755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176022 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A169653.P7402849295298580755

namespace A169653

/-- `A176022(n+1)/A001263(n+1)*A007318(n)` -/
def P7402849295298580755.Spec : Prop :=
  ∀ n, P7402849295298580755.a n = (A169653 (n + 1) : ℚ)

end A169653

/-! ## A169653.P5175640778831569003

`A004736(n+1)/A135278(n)*A176022(n+1)`
-/

namespace A169653.P5175640778831569003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A135278 n : ℚ) * (A176022 (n + 1) : ℚ)

end

end A169653.P5175640778831569003

namespace A169653

/-- `A004736(n+1)/A135278(n)*A176022(n+1)` -/
def P5175640778831569003.Spec : Prop :=
  ∀ n, P5175640778831569003.a n = (A169653 (n + 1) : ℚ)

end A169653

/-! ## A169653.P10496938792786713510

`A008297(n+1)/A176013(n+1)*A176022(n+1)`
-/

namespace A169653.P10496938792786713510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008297 (n + 1) : ℚ) / (A176013 (n + 1) : ℚ) * (A176022 (n + 1) : ℚ)

end

end A169653.P10496938792786713510

namespace A169653

/-- `A008297(n+1)/A176013(n+1)*A176022(n+1)` -/
def P10496938792786713510.Spec : Prop :=
  ∀ n, P10496938792786713510.a n = (A169653 (n + 1) : ℚ)

end A169653

/-!
# A169654: Triangle T(n, k) = A169643(n, k) - A169653(n, 1) + 1, read by rows.

The programs for A169654, there is no canonical definition to state claims against.
-/

/-! ## A169654.P17684030803199014771

`A169653(n+1)+A176021(n+1)-A176022(n+1)`
-/

namespace A169654.P17684030803199014771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169653 (n + 1) + (A176021 (n + 1) - A176022 (n + 1))

end

end A169654.P17684030803199014771

/-!
# A169655: Numbers k such that 2^k is in A054861.

The programs for A169655, there is no canonical definition to state claims against.
-/

/-! ## A169655.P248661898429889675

`comp[A182005(n+1)-1]`
-/

namespace A169655.P248661898429889675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182005 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169655.P248661898429889675

/-! ## A169655.P3693498865490827993

`comp[A023443(A182005(n+1))]`
-/

namespace A169655.P3693498865490827993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A182005 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169655.P3693498865490827993

/-! ## A169655.P5232855826784301142

`comp[A307428(A007917(n+2))+A182005(n+1)]`
-/

namespace A169655.P5232855826784301142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A007917 (n + 2)).toNat + A182005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169655.P5232855826784301142

/-! ## A169655.P4463182075053688155

`comp[A259361(A182005(n+1)²)]`
-/

namespace A169655.P4463182075053688155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A182005 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169655.P4463182075053688155

/-! ## A169655.P16076700664510782732

`lt[A327051(n), A001203(A305288(n+5))]`
-/

namespace A169655.P16076700664510782732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (A305288 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169655.P16076700664510782732

/-!
# A169656: Triangle, read by rows, T(n, k) = (-1)^n*(n!/k!)^2*binomial(n-1, k-1).

The programs for A169656, the canonical program `A169656.P394969500318583370` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169656 has offset 1).

The definition of A169656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 821 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169656.P394969500318583370

`A008297(n+1)*A173333(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A169656

/-- `A008297(n+1)*A173333(n+1)` -/
def P394969500318583370.Spec : Prop :=
  ∀ n, P394969500318583370.a n = A169656 (n + 1)

theorem P394969500318583370.correct : P394969500318583370.Spec := by
  intro n
  simp only [A169656, Nat.add_sub_cancel]

end A169656

/-! ## A169656.P8069757283542484274

`A004736(n+1)!*A176013(n+1)`
-/

namespace A169656.P8069757283542484274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A176013 (n + 1)

end

end A169656.P8069757283542484274

namespace A169656

/-- `A004736(n+1)!*A176013(n+1)` -/
def P8069757283542484274.Spec : Prop :=
  ∀ n, P8069757283542484274.a n = A169656 (n + 1)

end A169656

/-! ## A169656.P5805989358807598049

`A008297(n+1)*A181511(A038722(n+1))`
-/

namespace A169656.P5805989358807598049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (n + 1) * A181511 (A038722 (n + 1)).toNat

end

end A169656.P5805989358807598049

namespace A169656

/-- `A008297(n+1)*A181511(A038722(n+1))` -/
def P5805989358807598049.Spec : Prop :=
  ∀ n, P5805989358807598049.a n = A169656 (n + 1)

end A169656

/-! ## A169656.P1767672916959975269

`A008297(n+1)/A038231(n)*A048786(n+1)`
-/

namespace A169656.P1767672916959975269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008297 (n + 1) : ℚ) / (A038231 n : ℚ) * (A048786 (n + 1) : ℚ)

end

end A169656.P1767672916959975269

namespace A169656

/-- `A008297(n+1)/A038231(n)*A048786(n+1)` -/
def P1767672916959975269.Spec : Prop :=
  ∀ n, P1767672916959975269.a n = (A169656 (n + 1) : ℚ)

end A169656

/-! ## A169656.P11693264064046527579

`A008297(n+1)/A007318(n)*A105278(n+1)`
-/

namespace A169656.P11693264064046527579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008297 (n + 1) : ℚ) / (A007318 n : ℚ) * (A105278 (n + 1) : ℚ)

end

end A169656.P11693264064046527579

namespace A169656

/-- `A008297(n+1)/A007318(n)*A105278(n+1)` -/
def P11693264064046527579.Spec : Prop :=
  ∀ n, P11693264064046527579.a n = (A169656 (n + 1) : ℚ)

end A169656

/-! ## A169656.P13067610879009151723

`A105278(n+1)/A001263(n+1)*A176013(n+1)`
-/

namespace A169656.P13067610879009151723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A176013 (n + 1) : ℚ)

end

end A169656.P13067610879009151723

namespace A169656

/-- `A105278(n+1)/A001263(n+1)*A176013(n+1)` -/
def P13067610879009151723.Spec : Prop :=
  ∀ n, P13067610879009151723.a n = (A169656 (n + 1) : ℚ)

end A169656

/-!
# A169657: 

The programs for A169657, there is no canonical definition to state claims against.
-/

/-! ## A169657.P16462254230749072988

`∏[(2*(n+2))!/2]`
-/

namespace A169657.P16462254230749072988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 2)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169657.P16462254230749072988

/-! ## A169657.P8541168647120260698

`∏[(n+2)*(2*n+3)!]`
-/

namespace A169657.P8541168647120260698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169657.P8541168647120260698

/-! ## A169657.P3441771266631662031

`∏[A002674(n+2)]`
-/

namespace A169657.P3441771266631662031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169657.P3441771266631662031

/-!
# A169658: Triangle, read by rows, defined by T(n, k) = b(n, k) + b(n, n-k+1) - (b(n,1) + b(n,n)) + 1, where b(n, k) = (-1)^n*(n!/k!)^2 *binomial(n-1, k-1).

The programs for A169658, there is no canonical definition to state claims against.
-/

/-! ## A169658.P10532706722218870320

`A045912(n)-A359990(A045912(n))`
-/

namespace A169658.P10532706722218870320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 n - A359990 (A045912 n).toNat

end

end A169658.P10532706722218870320

/-! ## A169658.P13353328957289220147

`A199333(n)-A321797(A178237(n+1))`
-/

namespace A169658.P13353328957289220147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199333 n - A321797 (A178237 (n + 1)).toNat

end

end A169658.P13353328957289220147

/-! ## A169658.P513405225506716432

`A021012(A174690(n*A174690(n+2)))`
-/

namespace A169658.P513405225506716432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021012 (A174690 ((n : ℤ) * A174690 (n + 2)).toNat).toNat

end

end A169658.P513405225506716432

/-! ## A169658.P11155838777480438691

`A007318(n)-A321538(∑[A062988(n+1)])`
-/

namespace A169658.P11155838777480438691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A321538 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169658.P11155838777480438691

/-! ## A169658.P12591177807916906166

`A021009(gcd(A020997(n+2), A021054(n+1)))`
-/

namespace A169658.P12591177807916906166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (Int.gcd (A020997 (n + 2)) (A021054 (n + 1)))

end

end A169658.P12591177807916906166

/-!
# A169660: Triangle, read by rows, T(n, k) = binomial(n-1,k-1)*n!/k! + binomial(n-1, n-k)* n!/(n-k+1)! - n!.

The programs for A169660, there is no canonical definition to state claims against.
-/

/-! ## A169660.P14940079264887709928

`A035033(A056940(n))`
-/

namespace A169660.P14940079264887709928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035033 (A056940 n).toNat

end

end A169660.P14940079264887709928

/-! ## A169660.P2002932489329742282

`A079811(A157221(n))`
-/

namespace A169660.P2002932489329742282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079811 (A157221 n).toNat

end

end A169660.P2002932489329742282

/-! ## A169660.P13927193893750146275

`A123050(A167034(n))`
-/

namespace A169660.P13927193893750146275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A167034 n).toNat

end

end A169660.P13927193893750146275

/-! ## A169660.P17821191636759424691

`A349269(A176560(n))`
-/

namespace A169660.P17821191636759424691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349269 (A176560 n).toNat

end

end A169660.P17821191636759424691

/-! ## A169660.P14468864568301089323

`A309836(A376935(n))`
-/

namespace A169660.P14468864568301089323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309836 (A376935 n).toNat

end

end A169660.P14468864568301089323

/-!
# A169661: Compact factorials of positive integers.

The programs for A169661, there is no canonical definition to state claims against.
-/

/-! ## A169661.P4316419194383419830

`A263881(n+1)!`
-/

namespace A169661.P4316419194383419830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A263881 (n + 1)).toNat

end

end A169661.P4316419194383419830

/-!
# A169662: Numbers divisible by the sum of their digits, and by the sum of their digits squared, by the sum of their digits cubed and by the sum of 4th powers of their digits.

The programs for A169662, there is no canonical definition to state claims against.
-/

/-! ## A169662.P16836392873994346404

`∩[A169664(n+1), A169665(n+1)]`
-/

namespace A169662.P16836392873994346404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169662.P16836392873994346404

/-!
# A169663: Numbers k divisible by the sum of the digits and the sum of the squares of digits of k (in base 10).

The programs for A169663, there is no canonical definition to state claims against.
-/

/-! ## A169663.P7474036050970841030

`∩[A005349(n+1), A034087(n+1)]`
-/

namespace A169663.P7474036050970841030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169663.P7474036050970841030

/-! ## A169663.P15628484744884088230

`∩[A005349(n+1), A117562(n+1)]`
-/

namespace A169663.P15628484744884088230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169663.P15628484744884088230

/-! ## A169663.P8853679097015253700

`∩[A034087(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A169663.P8853679097015253700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169663.P8853679097015253700

/-! ## A169663.P12763857448709530700

`∩[A034087(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A169663.P12763857448709530700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169663.P12763857448709530700

/-! ## A169663.P5515458919571028119

`∩[A113315(n+1)*A325454(n+1), A117562(n+1)]`
-/

namespace A169663.P5515458919571028119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169663.P5515458919571028119

/-! ## A169663.P3355800014726548419

`filter[A034087(n+1), A188641(#)]`
-/

namespace A169663.P3355800014726548419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A169663.P3355800014726548419

/-! ## A169663.P1593163259326829861

`filter[A117562(n+2), A188641(#)]`
-/

namespace A169663.P1593163259326829861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A169663.P1593163259326829861

/-!
# A169664: Numbers k divisible respectively by the sum of digits, the sum of the squares and the sum of the cubes of digits in base 10 of k.

The programs for A169664, there is no canonical definition to state claims against.
-/

/-! ## A169664.P7741526286245523973

`∩[A034088(n+1), A169663(n+1)]`
-/

namespace A169664.P7741526286245523973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169664.P7741526286245523973

/-! ## A169664.P7442727167575856669

`∩[A034088(n+1), A113586(n+1)]`
-/

namespace A169664.P7442727167575856669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169664.P7442727167575856669

/-! ## A169664.P11676494993685677230

`∩[A034088(n+1), A342650(n+1)]`
-/

namespace A169664.P11676494993685677230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169664.P11676494993685677230

/-!
# A169665: Numbers divisible by the sum of 4th powers of their digits.

The programs for A169665, there is no canonical definition to state claims against.
-/

/-! ## A169665.P5391362002740092841

`record[A057077(n)*A327689(A044916(n+1))]`
-/

namespace A169665.P5391362002740092841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A327689 (A044916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169665.P5391362002740092841

/-!
# A169666: Numbers divisible by the sum of 5th powers of their digits.

The programs for A169666, there is no canonical definition to state claims against.
-/

/-! ## A169666.P10208594867607680188

`eq[A003132(n)², A189510(n)]`
-/

namespace A169666.P10208594867607680188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169666.P10208594867607680188

/-! ## A169666.P12015148672848563700

`filter[A169662(n+1), A307430(#)]`
-/

namespace A169666.P12015148672848563700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A169666.P12015148672848563700

/-! ## A169666.P696575436781150094

`filter[A169662(n+1), A370598(#)]`
-/

namespace A169666.P696575436781150094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A169666.P696575436781150094

/-! ## A169666.P11419040304629960988

`filter[A169662(n+1), A380510(#)]`
-/

namespace A169666.P11419040304629960988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380510 (f1 j).toNat = 1) n)

end

end A169666.P11419040304629960988

/-! ## A169666.P4522012128210407614

`∩[A060702(n+1), A007088(n)]`
-/

namespace A169666.P4522012128210407614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169666.P4522012128210407614

/-!
# A169668: 

The programs for A169668, there is no canonical definition to state claims against.
-/

/-! ## A169668.P14302695997643572022

`∏[(2*n+3)!]`
-/

namespace A169668.P14302695997643572022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169668.P14302695997643572022

/-! ## A169668.P17587765585552353860

`∏[record[xor(1, xor(1, n)+1)!]]`
-/

namespace A169668.P17587765585552353860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 (Nat.xor 1 n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169668.P17587765585552353860

/-! ## A169668.P15991492187274109209

`∏[∏[∑[a(n-1)+8]]]` with `a(0)=6`
-/

namespace A169668.P15991492187274109209
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A169668.P15991492187274109209

/-!
# A169669: (first digit of n) * (last digit of n) in decimal representation.

The programs for A169669, the canonical program `A169669.P11126607343254313567` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169669 has offset 0).

The definition of A169669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169669.P11126607343254313567

`n%10*A000030(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A169669

/-- `n%10*A000030(n)` -/
def P11126607343254313567.Spec : Prop :=
  ∀ n, P11126607343254313567.a n = A169669 n

theorem P11126607343254313567.correct : P11126607343254313567.Spec := by
  intro n
  simp only [A169669]

end A169669

/-! ## A169669.P12293376004012059564

`A000030(n)*A010879(n)`
-/

namespace A169669.P12293376004012059564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A010879 n

end

end A169669.P12293376004012059564

namespace A169669

/-- `A000030(n)*A010879(n)` -/
def P12293376004012059564.Spec : Prop :=
  ∀ n, P12293376004012059564.a n = A169669 n

theorem P12293376004012059564.correct : P12293376004012059564.Spec := by
  intro n
  simp only [A169669, Nat.add_sub_cancel, A169669.P12293376004012059564.a, A169669.P11126607343254313567.a, A000030, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169669

/-! ## A169669.P10799132492754948529

`val(A054842(n), 2)*A000030(n)`
-/

namespace A169669.P10799132492754948529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A054842 n).toNat 2 : ℤ) * A000030 n

end

end A169669.P10799132492754948529

namespace A169669

/-- `val(A054842(n), 2)*A000030(n)` -/
def P10799132492754948529.Spec : Prop :=
  ∀ n, P10799132492754948529.a n = A169669 n

end A169669

/-! ## A169669.P14742518510217744173

`A032762(n)%10*A010879(n)`
-/

namespace A169669.P14742518510217744173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10 * A010879 n

end

end A169669.P14742518510217744173

namespace A169669

/-- `A032762(n)%10*A010879(n)` -/
def P14742518510217744173.Spec : Prop :=
  ∀ n, P14742518510217744173.a n = A169669 n

end A169669

/-! ## A169669.P13510733672101315648

`A056142(n)%10*A010879(n)`
-/

namespace A169669.P13510733672101315648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 n) 10 * A010879 n

end

end A169669.P13510733672101315648

namespace A169669

/-- `A056142(n)%10*A010879(n)` -/
def P13510733672101315648.Spec : Prop :=
  ∀ n, P13510733672101315648.a n = A169669 n

end A169669

/-! ## A169669.P17805511571910495759

`A082216(n)%10*A010879(n)`
-/

namespace A169669.P17805511571910495759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 n) 10 * A010879 n

end

end A169669.P17805511571910495759

namespace A169669

/-- `A082216(n)%10*A010879(n)` -/
def P17805511571910495759.Spec : Prop :=
  ∀ n, P17805511571910495759.a n = A169669 n

end A169669

/-! ## A169669.P18300205860484975119

`(n-A169932(n))*A000030(n)`
-/

namespace A169669.P18300205860484975119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A169932 n) * A000030 n

end

end A169669.P18300205860484975119

namespace A169669

/-- `(n-A169932(n))*A000030(n)` -/
def P18300205860484975119.Spec : Prop :=
  ∀ n, P18300205860484975119.a n = A169669 n

theorem P18300205860484975119.correct : P18300205860484975119.Spec := by
  intro n
  simp only [A169669, Nat.add_sub_cancel, A169669.P18300205860484975119.a, A169669.P11126607343254313567.a, A000030, A000030.P4990867543733972260.a, A169932, A169932.P13000639427075025417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169669

/-! ## A169669.P3330175128909949105

`(A182324(n)-n)*A010879(n)`
-/

namespace A169669.P3330175128909949105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182324 n - (n : ℤ)) * A010879 n

end

end A169669.P3330175128909949105

namespace A169669

/-- `(A182324(n)-n)*A010879(n)` -/
def P3330175128909949105.Spec : Prop :=
  ∀ n, P3330175128909949105.a n = A169669 n

theorem P3330175128909949105.correct : P3330175128909949105.Spec := by
  intro n
  simp only [A169669, Nat.add_sub_cancel, A169669.P3330175128909949105.a, A169669.P11126607343254313567.a, A000030, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, A182324, A182324.P68523715600839783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169669

/-! ## A169669.P6378065994570381290

`A010879(A004086(n))*A010879(n)`
-/

namespace A169669.P6378065994570381290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat * A010879 n

end

end A169669.P6378065994570381290

namespace A169669

/-- `A010879(A004086(n))*A010879(n)` -/
def P6378065994570381290.Spec : Prop :=
  ∀ n, P6378065994570381290.a n = A169669 n

end A169669

/-! ## A169669.P11900273079508164376

`A010879(n)*A010879(A032762(n))`
-/

namespace A169669.P11900273079508164376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n * A010879 (A032762 n).toNat

end

end A169669.P11900273079508164376

namespace A169669

/-- `A010879(n)*A010879(A032762(n))` -/
def P11900273079508164376.Spec : Prop :=
  ∀ n, P11900273079508164376.a n = A169669 n

end A169669

/-! ## A169669.P3674833974721068908

`A000030(n)*A007376(A065650(n))`
-/

namespace A169669.P3674833974721068908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A007376 (A065650 n).toNat

end

end A169669.P3674833974721068908

namespace A169669

/-- `A000030(n)*A007376(A065650(n))` -/
def P3674833974721068908.Spec : Prop :=
  ∀ n, P3674833974721068908.a n = A169669 n

end A169669

/-! ## A169669.P5410399116111545340

`A000030(n)*A033307(A261334(n))`
-/

namespace A169669.P5410399116111545340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A033307 (A261334 n).toNat

end

end A169669.P5410399116111545340

namespace A169669

/-- `A000030(n)*A033307(A261334(n))` -/
def P5410399116111545340.Spec : Prop :=
  ∀ n, P5410399116111545340.a n = A169669 n

end A169669

/-! ## A169669.P10389447418219653330

`A010879(n)*A054054(A355222(n))`
-/

namespace A169669.P10389447418219653330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n * A054054 (A355222 n).toNat

end

end A169669.P10389447418219653330

namespace A169669

/-- `A010879(n)*A054054(A355222(n))` -/
def P10389447418219653330.Spec : Prop :=
  ∀ n, P10389447418219653330.a n = A169669 n

end A169669

/-! ## A169669.P4674143455818420022

`A167998(2*n+1)%Δ[n²]*A010879(n)`
-/

namespace A169669.P4674143455818420022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167998 (2 * n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A010879 n

end

end A169669.P4674143455818420022

namespace A169669

/-- `A167998(2*n+1)%Δ[n²]*A010879(n)` -/
def P4674143455818420022.Spec : Prop :=
  ∀ n, P4674143455818420022.a n = A169669 n

end A169669

/-! ## A169669.P5699622176603562739

`A000030(n)*A008975(A000124(n))`
-/

namespace A169669.P5699622176603562739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A008975 (A000124 n).toNat

end

end A169669.P5699622176603562739

namespace A169669

/-- `A000030(n)*A008975(A000124(n))` -/
def P5699622176603562739.Spec : Prop :=
  ∀ n, P5699622176603562739.a n = A169669 n

end A169669

/-!
# A169671: Lexicographically earliest de Bruijn sequence for n = 6 and k = 2.

The programs for A169671, there is no canonical definition to state claims against.
-/

/-! ## A169671.P209231212787291633

`A058342(n+1)`
-/

namespace A169671.P209231212787291633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058342 (n + 1)

end

end A169671.P209231212787291633

/-!
# A169672: Lexicographically earliest de Bruijn sequence for n = 5 and k = 2.

The programs for A169672, there is no canonical definition to state claims against.
-/

/-! ## A169672.P5901970013386849833

`A022926(A061559(n+1))`
-/

namespace A169672.P5901970013386849833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022926 (A061559 (n + 1)).toNat

end

end A169672.P5901970013386849833

/-!
# A169673: Lexicographically earliest de Bruijn sequence for n = 7 and k = 2.

The programs for A169673, there is no canonical definition to state claims against.
-/

/-! ## A169673.P1211617698171846149

`A169674(lt[A169697(n+5), A169698(n+1)])`
-/

namespace A169673.P1211617698171846149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169697 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169674 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A169673.P1211617698171846149

/-!
# A169674: Lexicographically earliest de Bruijn sequence for n = 8 and k = 2.

The programs for A169674, there is no canonical definition to state claims against.
-/

/-! ## A169674.P11186261984157286451

`and(A127842(n+1), A152049(n+1))`
-/

namespace A169674.P11186261984157286451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127842 (n + 1)) (A152049 (n + 1))

end

end A169674.P11186261984157286451

/-!
# A169675: Lexicographically earliest de Bruijn sequence for n = 3 and k = 2.

The programs for A169675, the canonical program `A169675.P14887203187384603959` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169675 has offset 0).

The definition of A169675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169675.P14887203187384603959

`ceil(sin((n+4)%8))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169675

/-- `ceil(sin((n+4)%8))` -/
def P14887203187384603959.Spec : Prop :=
  ∀ n, P14887203187384603959.a n = A169675 n

theorem P14887203187384603959.correct : P14887203187384603959.Spec := by
  intro n
  simp only [A169675]

end A169675

/-!
# A169676: Lexicographically earliest de Bruijn sequence for n = 2 and k = 3.

The programs for A169676, the canonical program `A169676.P15170634035978208974` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169676 has offset 0).

The definition of A169676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169676.P15170634035978208974

`floor(sqrt(44%dr(n+1)))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169676

/-- `floor(sqrt(44%dr(n+1)))` -/
def P15170634035978208974.Spec : Prop :=
  ∀ n, (P15170634035978208974.a n : ℤ) = A169676 n

theorem P15170634035978208974.correct : P15170634035978208974.Spec := by
  intro n
  simp only [A169676]

end A169676

/-!
# A169677: The first of a pair of sequences A and B with property that all the differences |a_i - b_j| are distinct - for precise definition see Comments lines.

The programs for A169677, there is no canonical definition to state claims against.
-/

/-! ## A169677.P12757274145510521899

`A169679(A028310(n)+A004895(n+1))`
-/

namespace A169677.P12757274145510521899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (A028310 n + A004895 (n + 1)).toNat

end

end A169677.P12757274145510521899

/-! ## A169677.P5136238675333485170

`A169679(A004277(n)*A146591(n+1))`
-/

namespace A169677.P5136238675333485170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (A004277 n * A146591 (n + 1)).toNat

end

end A169677.P5136238675333485170

/-! ## A169677.P8909968914007700634

`A169679(A062399(A028310(n))+n)`
-/

namespace A169677.P8909968914007700634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (A062399 (A028310 n).toNat + (n : ℤ)).toNat

end

end A169677.P8909968914007700634

/-! ## A169677.P1272753661980567659

`A169679(A276463(n)+A000007(n))`
-/

namespace A169677.P1272753661980567659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (A276463 n + A000007 n).toNat

end

end A169677.P1272753661980567659

/-! ## A169677.P12501175718396966885

`A169679(or(A000007(n), A276463(n)))`
-/

namespace A169677.P12501175718396966885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (Int.lor (A000007 n) (A276463 n)).toNat

end

end A169677.P12501175718396966885

/-!
# A169678: The second of a pair of sequences A and B with property that all the differences |a_i - b_j| are distinct - for precise definition see Comments lines in A169677.

The programs for A169678, there is no canonical definition to state claims against.
-/

/-! ## A169678.P17088740431627414642

`A169679(A276463(n)+1)`
-/

namespace A169678.P17088740431627414642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (A276463 n + 1).toNat

end

end A169678.P17088740431627414642

/-! ## A169678.P6657963229231124619

`A169679(or(1, A276463(n)))`
-/

namespace A169678.P6657963229231124619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (Int.lor 1 (A276463 n)).toNat

end

end A169678.P6657963229231124619

/-! ## A169678.P1645703399209311101

`A169679(xor(1, A276463(n)))`
-/

namespace A169678.P1645703399209311101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (Int.xor 1 (A276463 n)).toNat

end

end A169678.P1645703399209311101

/-! ## A169678.P11066549809836138924

`A169679(Δ[A004186(n)²])`
-/

namespace A169678.P11066549809836138924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (f1 (n + 1) - f1 n).toNat

end

end A169678.P11066549809836138924

/-! ## A169678.P14489604970997949984

`A169679(Δ[A321474(n)²])`
-/

namespace A169678.P14489604970997949984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (f1 (n + 1) - f1 n).toNat

end

end A169678.P14489604970997949984

/-!
# A169679: A169677 union A169678.

The programs for A169679, there is no canonical definition to state claims against.
-/

/-! ## A169679.P17415317453822027841

`∪[A169677(n+1), A169678(n+1)]`
-/

namespace A169679.P17415317453822027841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A169679.P17415317453822027841

/-! ## A169679.P16566360162379464170

`A226464(A003018(n+1))+A122250(n)`
-/

namespace A169679.P16566360162379464170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A003018 (n + 1)).toNat + A122250 n

end

end A169679.P16566360162379464170

/-! ## A169679.P2172752897060655952

`A122250(n)+A010060(A178260(n+1))`
-/

namespace A169679.P2172752897060655952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122250 n + A010060 (A178260 (n + 1)).toNat

end

end A169679.P2172752897060655952

/-! ## A169679.P16625394270901798621

`A010060(A178260(n+1))+∑[A004128(n)]`
-/

namespace A169679.P16625394270901798621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A178260 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169679.P16625394270901798621

/-! ## A169679.P12384725781079527966

`∑[A257569(record[A049900(n+1)])]`
-/

namespace A169679.P12384725781079527966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049900 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257569 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169679.P12384725781079527966

/-!
# A169682: Golomb-type sequence over primes.

The programs for A169682, there is no canonical definition to state claims against.
-/

/-! ## A169682.P11105703798624313828

`p?[A130245(A000607(n))]`
-/

namespace A169682.P11105703798624313828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A000607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169682.P11105703798624313828

/-! ## A169682.P8545216122642249981

`p?[A332825(A213708(n+1))]`
-/

namespace A169682.P8545216122642249981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332825 (A213708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169682.P8545216122642249981

/-! ## A169682.P8575435213590865753

`p?[A025126(A123108((n+1)*(n+6)))]`
-/

namespace A169682.P8575435213590865753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A123108 ((n + 1) * (n + 6))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169682.P8575435213590865753

/-!
# A169683: The canonical skew-binary numbers.

The programs for A169683, the canonical program `A169683.P18438697268812114690` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169683 has offset 0).

The definition of A169683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169683.P2634526962397047665

`A007089(A354047(n))`
-/

namespace A169683.P2634526962397047665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A354047 n).toNat

end

end A169683.P2634526962397047665

namespace A169683

/-- `A007089(A354047(n))` -/
def P2634526962397047665.Spec : Prop :=
  ∀ n, P2634526962397047665.a n = A169683 n

end A169683

/-! ## A169683.P7892340124816161430

`A007089(lt[A006997(n), 2])`
-/

namespace A169683.P7892340124816161430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A169683.P7892340124816161430

namespace A169683

/-- `A007089(lt[A006997(n), 2])` -/
def P7892340124816161430.Spec : Prop :=
  ∀ n, P7892340124816161430.a n = A169683 n

end A169683

/-! ## A169683.P5541178839783762013

`A007089(eq[A006997(n)², A006997(n)])`
-/

namespace A169683.P5541178839783762013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A169683.P5541178839783762013

namespace A169683

/-- `A007089(eq[A006997(n)², A006997(n)])` -/
def P5541178839783762013.Spec : Prop :=
  ∀ n, P5541178839783762013.a n = A169683 n

end A169683

/-! ## A169683.P18274293846574431986

`A007089(eq[A006997(n), A189640(n+1)])`
-/

namespace A169683.P18274293846574431986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A169683.P18274293846574431986

namespace A169683

/-- `A007089(eq[A006997(n), A189640(n+1)])` -/
def P18274293846574431986.Spec : Prop :=
  ∀ n, P18274293846574431986.a n = A169683 n

end A169683

/-! ## A169683.P18438697268812114690

`A007089(eq[A081603(n), A189640(n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A169683

/-- `A007089(eq[A081603(n), A189640(n+1)])` -/
def P18438697268812114690.Spec : Prop :=
  ∀ n, P18438697268812114690.a n = A169683 n

theorem P18438697268812114690.correct : P18438697268812114690.Spec := by
  intro n
  simp only [A169683]

end A169683

/-! ## A169683.P3114414258691729290

`A007089(eq[n, A353824(n)])`
-/

namespace A169683.P3114414258691729290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169683.P3114414258691729290

namespace A169683

/-- `A007089(eq[n, A353824(n)])` -/
def P3114414258691729290.Spec : Prop :=
  ∀ n, P3114414258691729290.a n = A169683 n

end A169683

/-! ## A169683.P4789445271434082880

`A007089(eq[A100480(3*n+1), A100480(n+1)])`
-/

namespace A169683.P4789445271434082880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A169683.P4789445271434082880

namespace A169683

/-- `A007089(eq[A100480(3*n+1), A100480(n+1)])` -/
def P4789445271434082880.Spec : Prop :=
  ∀ n, P4789445271434082880.a n = A169683 n

end A169683

/-! ## A169683.P3424471132627303969

`record[A322000(n)]`
-/

namespace A169683.P3424471132627303969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169683.P3424471132627303969

namespace A169683

/-- `record[A322000(n)]` -/
def P3424471132627303969.Spec : Prop :=
  ∀ n, P3424471132627303969.a n = A169683 n

end A169683

/-!
# A169686: a(n) = sqrt(T(k-1)*T(k)*T(k+1)) as k runs through the terms of A072221 and T(i)=i*(i+1)/2.

The programs for A169686, there is no canonical definition to state claims against.
-/

/-! ## A169686.P430637662461688038

`A106328(n+1)*A164055(n+1)`
-/

namespace A169686.P430637662461688038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (n + 1) * A164055 (n + 1)

end

end A169686.P430637662461688038

/-! ## A169686.P697791779540373144

`3*A164055(n+1)*A001109(n)`
-/

namespace A169686.P697791779540373144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164055 (n + 1) * A001109 n

end

end A169686.P697791779540373144

/-! ## A169686.P16906909568226880220

`A164055(n+1)/2*A075848(n)`
-/

namespace A169686.P16906909568226880220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164055 (n + 1) : ℚ) / 2 * (A075848 n : ℚ)

end

end A169686.P16906909568226880220

/-! ## A169686.P4538970647657296826

`sqrt(A164080(n+1))*A164055(n+1)`
-/

namespace A169686.P4538970647657296826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164080 (n + 1) : ℝ) * (A164055 (n + 1) : ℝ)

end

end A169686.P4538970647657296826

/-! ## A169686.P1585785776516958392

`(A164080(n+1)+1)*A106328(n+1)`
-/

namespace A169686.P1585785776516958392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164080 (n + 1) + 1) * A106328 (n + 1)

end

end A169686.P1585785776516958392

/-!
# A169687: a(n) = 3^n - 3*2^(n-2).

The programs for A169687, the canonical program `A169687.P8489480232691167316` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169687 has offset 2).

The definition of A169687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+2)-3*2^n` (program `A169687.P8489480232691167316`, by `A169687.P8489480232691167316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169687.P8489480232691167316

`3^(n+2)-3*2^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A169687

/-- `3^(n+2)-3*2^n` -/
def P8489480232691167316.Spec : Prop :=
  ∀ n, P8489480232691167316.a n = A169687 (n + 2)

theorem P8489480232691167316.correct : P8489480232691167316.Spec := by
  intro n
  simp only [A169687, Nat.add_sub_cancel]

end A169687

/-! ## A169687.P3924950063349348646

`ogf((6-9x)/(1-5x+6x^2))`
-/

namespace A169687.P3924950063349348646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -9] [1, -5, 6] n

end

end A169687.P3924950063349348646

namespace A169687

/-- `ogf((6-9x)/(1-5x+6x^2))` -/
def P3924950063349348646.Spec : Prop :=
  ∀ n, P3924950063349348646.a n = A169687 (n + 2)

end A169687

/-! ## A169687.P17801562691338184068

`lcm(3, a(n-1)+2^(n-1))` with `a(0)=6`
-/

namespace A169687.P17801562691338184068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A169687.P17801562691338184068

namespace A169687

/-- `lcm(3, a(n-1)+2^(n-1))` -/
def P17801562691338184068.Spec : Prop :=
  ∀ n, (P17801562691338184068.a n : ℤ) = A169687 (n + 2)

end A169687

/-! ## A169687.P5591098066085073849

`3*A083313(n+1)`
-/

namespace A169687.P5591098066085073849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083313 (n + 1)

end

end A169687.P5591098066085073849

namespace A169687

/-- `3*A083313(n+1)` -/
def P5591098066085073849.Spec : Prop :=
  ∀ n, P5591098066085073849.a n = A169687 (n + 2)

end A169687

/-! ## A169687.P13637274389021338839

`3*A064686(n+2)`
-/

namespace A169687.P13637274389021338839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064686 (n + 2)

end

end A169687.P13637274389021338839

namespace A169687

/-- `3*A064686(n+2)` -/
def P13637274389021338839.Spec : Prop :=
  ∀ n, P13637274389021338839.a n = A169687 (n + 2)

end A169687

/-! ## A169687.P7163246796671292498

`Δ[3*A053152(n+1)]`
-/

namespace A169687.P7163246796671292498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169687.P7163246796671292498

namespace A169687

/-- `Δ[3*A053152(n+1)]` -/
def P7163246796671292498.Spec : Prop :=
  ∀ n, P7163246796671292498.a n = A169687 (n + 2)

end A169687

/-! ## A169687.P18046642190799446441

`Δ[3*A053156(n+1)]`
-/

namespace A169687.P18046642190799446441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169687.P18046642190799446441

namespace A169687

/-- `Δ[3*A053156(n+1)]` -/
def P18046642190799446441.Spec : Prop :=
  ∀ n, P18046642190799446441.a n = A169687 (n + 2)

end A169687

/-! ## A169687.P6489775520280479140

`3*(A304167(n+1)-2)`
-/

namespace A169687.P6489775520280479140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A304167 (n + 1) - 2)

end

end A169687.P6489775520280479140

namespace A169687

/-- `3*(A304167(n+1)-2)` -/
def P6489775520280479140.Spec : Prop :=
  ∀ n, P6489775520280479140.a n = A169687 (n + 2)

theorem P6489775520280479140.correct : P6489775520280479140.Spec := by
  intro n
  simp only [A169687, Nat.add_sub_cancel, A169687.P6489775520280479140.a, A169687.P8489480232691167316.a, A304167, A304167.P2106200455075284885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169687

/-! ## A169687.P13160621469872700294

`3/2*A027649(n+1)`
-/

namespace A169687.P13160621469872700294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A027649 (n + 1) : ℚ)

end

end A169687.P13160621469872700294

namespace A169687

/-- `3/2*A027649(n+1)` -/
def P13160621469872700294.Spec : Prop :=
  ∀ n, P13160621469872700294.a n = (A169687 (n + 2) : ℚ)

theorem P13160621469872700294.correct : P13160621469872700294.Spec := by
  intro n
  simp only [A169687, Nat.add_sub_cancel, A169687.P13160621469872700294.a, A169687.P8489480232691167316.a, A027649, A027649.P2434933350896167885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169687

/-! ## A169687.P577620984911363740

`Δ[A000392(n+3)+2^n]`
-/

namespace A169687.P577620984911363740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 3) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169687.P577620984911363740

namespace A169687

/-- `Δ[A000392(n+3)+2^n]` -/
def P577620984911363740.Spec : Prop :=
  ∀ n, P577620984911363740.a n = A169687 (n + 2)

end A169687

/-! ## A169687.P1677173675294949468

`A166060(n+2)/4`
-/

namespace A169687.P1677173675294949468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166060 (n + 2) : ℚ) / 4

end

end A169687.P1677173675294949468

namespace A169687

/-- `A166060(n+2)/4` -/
def P1677173675294949468.Spec : Prop :=
  ∀ n, P1677173675294949468.a n = (A169687 (n + 2) : ℚ)

theorem P1677173675294949468.correct : P1677173675294949468.Spec := by
  intro n
  simp only [A169687, Nat.add_sub_cancel, A169687.P1677173675294949468.a, A169687.P8489480232691167316.a, A166060, A166060.P1727466123413902011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169687

/-! ## A169687.P11090633540655944211

`Δ[A126644(n+1)/2]`
-/

namespace A169687.P11090633540655944211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126644 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169687.P11090633540655944211

namespace A169687

/-- `Δ[A126644(n+1)/2]` -/
def P11090633540655944211.Spec : Prop :=
  ∀ n, P11090633540655944211.a n = (A169687 (n + 2) : ℚ)

theorem P11090633540655944211.correct : P11090633540655944211.Spec := by
  intro n
  simp only [A169687, Nat.add_sub_cancel, A169687.P11090633540655944211.f1, A169687.P11090633540655944211.a, A169687.P8489480232691167316.a, A126644, A126644.P12124089507506933368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169687

/-! ## A169687.P16757125211073668524

`Δ[A210448(n+1)/2]`
-/

namespace A169687.P16757125211073668524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210448 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169687.P16757125211073668524

namespace A169687

/-- `Δ[A210448(n+1)/2]` -/
def P16757125211073668524.Spec : Prop :=
  ∀ n, P16757125211073668524.a n = (A169687 (n + 2) : ℚ)

theorem P16757125211073668524.correct : P16757125211073668524.Spec := by
  intro n
  simp only [A169687, Nat.add_sub_cancel, A169687.P16757125211073668524.f1, A169687.P16757125211073668524.a, A169687.P8489480232691167316.a, A210448, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169687

/-!
# A169688: A169648(4n+4) - A147582(4n+5).

The programs for A169688, there is no canonical definition to state claims against.
-/

/-! ## A169688.P17328680885012653935

`A264769(4*n)`
-/

namespace A169688.P17328680885012653935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 (4 * n)

end

end A169688.P17328680885012653935

/-! ## A169688.P9388456401741501373

`Δ[A264768(A113127(n))]`
-/

namespace A169688.P9388456401741501373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 (A113127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169688.P9388456401741501373

/-! ## A169688.P3660291438398085553

`Δ[A264768(A130824(n))]`
-/

namespace A169688.P3660291438398085553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 (A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169688.P3660291438398085553

/-! ## A169688.P16157582331743336780

`lcm(2, A264769(A008574(n)))`
-/

namespace A169688.P16157582331743336780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A264769 (A008574 n).toNat)

end

end A169688.P16157582331743336780

/-! ## A169688.P3038870668911790008

`Δ[A264768(A131098(n+1))]`
-/

namespace A169688.P3038870668911790008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 (A131098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169688.P3038870668911790008

/-! ## A169688.P16212801287737075681

`Δ[A264768(A004273(2*n))]`
-/

namespace A169688.P16212801287737075681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 (A004273 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169688.P16212801287737075681

/-! ## A169688.P3721843603870186508

`∑{d}[A264769(A008574(n)), A000010(#)]`
-/

namespace A169688.P3721843603870186508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A169688.P3721843603870186508

/-!
# A169689: (A169648(4n+4) - A147582(4n+5))/4.

The programs for A169689, there is no canonical definition to state claims against.
-/

/-! ## A169689.P3593046096374568352

`A264769(4*n)/4`
-/

namespace A169689.P3593046096374568352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264769 (4 * n) : ℚ) / 4

end

end A169689.P3593046096374568352

/-! ## A169689.P8900293177217978919

`floor(A264769(A008574(n))/4)`
-/

namespace A169689.P8900293177217978919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264769 (A008574 n).toNat : ℚ) / 4⌋

end

end A169689.P8900293177217978919

/-! ## A169689.P6357753384715265075

`Δ[A264768(A113127(n))/4]`
-/

namespace A169689.P6357753384715265075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264768 (A113127 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169689.P6357753384715265075

/-! ## A169689.P6242708788198166305

`Δ[A264768(A130824(n))/4]`
-/

namespace A169689.P6242708788198166305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264768 (A130824 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169689.P6242708788198166305

/-! ## A169689.P12969293859481911543

`Δ[A264768(A131098(n+1))/4]`
-/

namespace A169689.P12969293859481911543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264768 (A131098 (n + 1)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169689.P12969293859481911543

/-! ## A169689.P11896668824926965024

`Δ[A264768(A004273(2*n))/4]`
-/

namespace A169689.P11896668824926965024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264768 (A004273 (2 * n)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169689.P11896668824926965024

/-! ## A169689.P1108874145006200159

`A002265(A264769(4*n))`
-/

namespace A169689.P1108874145006200159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A264769 (4 * n)).toNat

end

end A169689.P1108874145006200159

/-!
# A169690: Let S be the sequence Fibonacci(2n), n>0 (cf. A001906); sequence lists the differences S(j)-S(i) for i

The programs for A169690, there is no canonical definition to state claims against.
-/

/-! ## A169690.P13921541176242956236

`record[A074049(2*(n+1))]`
-/

namespace A169690.P13921541176242956236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169690.P13921541176242956236

/-! ## A169690.P9264286207160837507

`ceil(ϕ*A169691(n+1))`
-/

namespace A169690.P9264286207160837507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A169691 (n + 1) : ℝ)⌉

end

end A169690.P9264286207160837507

/-! ## A169690.P4234628304345483792

`A205448(∑[char[∑[n]]]²-n)`
-/

namespace A169690.P4234628304345483792
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205448 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A169690.P4234628304345483792

/-! ## A169690.P2624616666153700545

`record[A048680(2*n+1)+1]`
-/

namespace A169690.P2624616666153700545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169690.P2624616666153700545

/-! ## A169690.P907971702997929189

`A062877(A043569(n+1))`
-/

namespace A169690.P907971702997929189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (A043569 (n + 1)).toNat

end

end A169690.P907971702997929189

/-! ## A169690.P18299716472691380506

`A062877(A043765(n+1))`
-/

namespace A169690.P18299716472691380506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (A043765 (n + 1)).toNat

end

end A169690.P18299716472691380506

/-! ## A169690.P2500824727723130704

`A143061(A185870(n+1))`
-/

namespace A169690.P2500824727723130704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A185870 (n + 1)).toNat

end

end A169690.P2500824727723130704

/-! ## A169690.P10015200185072147376

`A171729(A185871(n+1))`
-/

namespace A169690.P10015200185072147376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (A185871 (n + 1)).toNat

end

end A169690.P10015200185072147376

/-! ## A169690.P6646546198211791350

`A062879(A089633(n)+2)`
-/

namespace A169690.P6646546198211791350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (A089633 n + 2).toNat

end

end A169690.P6646546198211791350

/-! ## A169690.P10327412033233498582

`A001950(record[A048680(n)+1])`
-/

namespace A169690.P10327412033233498582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A169690.P10327412033233498582

/-!
# A169691: Let T be the sequence Fibonacci(2n+1), n>=0 (cf. A001519); sequence lists the differences T(j)-T(i) for i

The programs for A169691, there is no canonical definition to state claims against.
-/

/-! ## A169691.P4415028370181023839

`record[A074049(or(1, n))]`
-/

namespace A169691.P4415028370181023839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169691.P4415028370181023839

/-! ## A169691.P5435578240300759421

`record[A048680(2*n)+1]`
-/

namespace A169691.P5435578240300759421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169691.P5435578240300759421

/-! ## A169691.P2094645202431307219

`record[A074049(2*n+1)]`
-/

namespace A169691.P2094645202431307219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169691.P2094645202431307219

/-! ## A169691.P5058634482060057559

`A205371(∑[char[∑[n]]]²-n)`
-/

namespace A169691.P5058634482060057559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205371 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A169691.P5058634482060057559

/-! ## A169691.P14275149367963728680

`A054204(A089633(n)+1)`
-/

namespace A169691.P14275149367963728680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (A089633 n + 1).toNat

end

end A169691.P14275149367963728680

/-! ## A169691.P1895142825840092864

`A074049(A081118(n+1))`
-/

namespace A169691.P1895142825840092864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A081118 (n + 1)).toNat

end

end A169691.P1895142825840092864

/-! ## A169691.P11032538157853384957

`A054204(A023758(n+2))`
-/

namespace A169691.P11032538157853384957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (A023758 (n + 2)).toNat

end

end A169691.P11032538157853384957

/-! ## A169691.P16474970524344820626

`A000201(record[A048680(n)+1])`
-/

namespace A169691.P16474970524344820626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A169691.P16474970524344820626

/-! ## A169691.P11149977316787760697

`record[A005206(A048680(n+1))]`
-/

namespace A169691.P11149977316787760697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A048680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169691.P11149977316787760697

/-! ## A169691.P2408681612496378278

`A048680(A081118(n+1)-1)+1`
-/

namespace A169691.P2408681612496378278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A081118 (n + 1) - 1).toNat + 1

end

end A169691.P2408681612496378278

/-!
# A169692: Numbers that are in neither A169690 nor A169691.

The programs for A169692, there is no canonical definition to state claims against.
-/

/-! ## A169692.P17978617719069505364

`comp[record[A257961(n)]]`
-/

namespace A169692.P17978617719069505364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169692.P17978617719069505364

/-! ## A169692.P3956351594948013199

`comp[record[A257962(n)]]`
-/

namespace A169692.P3956351594948013199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169692.P3956351594948013199

/-! ## A169692.P13727383375578469996

`comp[record[A338698(n)]]`
-/

namespace A169692.P13727383375578469996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169692.P13727383375578469996

/-! ## A169692.P15508408755544673093

`lt[1, A212278(n)]+1`
-/

namespace A169692.P15508408755544673093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169692.P15508408755544673093

/-! ## A169692.P5507547906180187585

`lt[2, A200647(n+1)]`
-/

namespace A169692.P5507547906180187585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A169692.P5507547906180187585

/-! ## A169692.P18364577307485357559

`lt[2, A227355(n)]+1`
-/

namespace A169692.P18364577307485357559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169692.P18364577307485357559

/-! ## A169692.P3578670376487326865

`comp[∑[A242086(xor(1, n))]]`
-/

namespace A169692.P3578670376487326865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242086 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169692.P3578670376487326865

/-! ## A169692.P8773423389052888279

`comp[∑[A242086(n+1)]]+1`
-/

namespace A169692.P8773423389052888279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A169692.P8773423389052888279

/-! ## A169692.P17595363468870144859

`comp[A048680(A342410(n))]`
-/

namespace A169692.P17595363468870144859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A342410 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169692.P17595363468870144859

/-! ## A169692.P3262987031492838885

`eq[0, A340375(A048679(n))]`
-/

namespace A169692.P3262987031492838885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (A048679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169692.P3262987031492838885

/-!
# A169693: A169690 union A169691.

The programs for A169693, there is no canonical definition to state claims against.
-/

/-! ## A169693.P2099890036177820539

`record[A338698(n+1)]`
-/

namespace A169693.P2099890036177820539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169693.P2099890036177820539

/-! ## A169693.P14033620748234726539

`record[A257961(n+2)]`
-/

namespace A169693.P14033620748234726539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169693.P14033620748234726539

/-! ## A169693.P12253692491819418401

`record[A257962(n+2)]`
-/

namespace A169693.P12253692491819418401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257962 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169693.P12253692491819418401

/-! ## A169693.P9829396944089566879

`lt[A212278(n), 2]+1`
-/

namespace A169693.P9829396944089566879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212278 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A169693.P9829396944089566879

/-! ## A169693.P7492970283981850521

`A056017(a(n-1)+1)` with `a(0)=1`
-/

namespace A169693.P7492970283981850521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056017 (a (n - 1) + 1).toNat

end

end A169693.P7492970283981850521

/-! ## A169693.P2169216266732990276

`record[A028310(A257962(n))]`
-/

namespace A169693.P2169216266732990276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A257962 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169693.P2169216266732990276

/-! ## A169693.P12375970621349836456

`record[A028310(A338698(n))]`
-/

namespace A169693.P12375970621349836456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A338698 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169693.P12375970621349836456

/-! ## A169693.P3781772109493205365

`A143061(∑[A169695(n+1)])`
-/

namespace A169693.P3781772109493205365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169693.P3781772109493205365

/-! ## A169693.P13744381582462446976

`record[A379213(A379213(n))+n]`
-/

namespace A169693.P13744381582462446976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379213 (A379213 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169693.P13744381582462446976

/-! ## A169693.P13382465403388954811

`eq[A014675(n), A200647(n+1)]`
-/

namespace A169693.P13382465403388954811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169693.P13382465403388954811

/-!
# A169694: Numbers of the form Fibonacci(i) + Fibonacci(j), where i and j have opposite parity and |i-j| > 1.

The programs for A169694, there is no canonical definition to state claims against.
-/

/-! ## A169694.P13228036932031472849

`record[A317542(n)+A232560(A059893(n+2))]`
-/

namespace A169694.P13228036932031472849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317542 n + A232560 (A059893 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169694.P13228036932031472849

/-! ## A169694.P2477992567326891445

`A267708(n)+record[A255773(n+1)]`
-/

namespace A169694.P2477992567326891445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169694.P2477992567326891445

/-! ## A169694.P6900222677489296035

`record[A345253(n+1)+A036987(n+1)]`
-/

namespace A169694.P6900222677489296035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (n + 1) + A036987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169694.P6900222677489296035

/-! ## A169694.P14448852121995968529

`record[A345253(n+1)+Δ[A000523(n+1)]]`
-/

namespace A169694.P14448852121995968529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169694.P14448852121995968529

/-! ## A169694.P1012145840163068575

`record[A345253(n+1)+Δ[A113473(n+1)]]`
-/

namespace A169694.P1012145840163068575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169694.P1012145840163068575

/-!
# A169695: a(n) = 1 if n is a square, otherwise a(n) = 2.

The programs for A169695, the canonical program `A169695.P2980267079696158606` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169695 has offset 0).

The definition of A169695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A169695.P2980267079696158606

`2-A010052(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A169695

/-- `2-A010052(n)` -/
def P2980267079696158606.Spec : Prop :=
  ∀ n, P2980267079696158606.a n = A169695 n

theorem P2980267079696158606.correct : P2980267079696158606.Spec := by
  intro n
  simp only [A169695]

end A169695

/-! ## A169695.P892651598196192932

`2-char[n²]`
-/

namespace A169695.P892651598196192932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A169695.P892651598196192932

namespace A169695

/-- `2-char[n²]` -/
def P892651598196192932.Spec : Prop :=
  ∀ n, P892651598196192932.a n = A169695 n

end A169695

/-! ## A169695.P15539656063554772499

`ceil(acot(char[n²]))`
-/

namespace A169695.P15539656063554772499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A169695.P15539656063554772499

namespace A169695

/-- `ceil(acot(char[n²]))` -/
def P15539656063554772499.Spec : Prop :=
  ∀ n, P15539656063554772499.a n = A169695 n

end A169695

/-! ## A169695.P6918097734587360990

`round(acot(char[n²]))`
-/

namespace A169695.P6918097734587360990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A169695.P6918097734587360990

namespace A169695

/-- `round(acot(char[n²]))` -/
def P6918097734587360990.Spec : Prop :=
  ∀ n, P6918097734587360990.a n = A169695 n

end A169695

/-! ## A169695.P7647321620324780883

`gcd(2, Δ[ceil(sqrt(n))])`
-/

namespace A169695.P7647321620324780883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A169695.P7647321620324780883

namespace A169695

/-- `gcd(2, Δ[ceil(sqrt(n))])` -/
def P7647321620324780883.Spec : Prop :=
  ∀ n, (P7647321620324780883.a n : ℤ) = A169695 n

end A169695

/-! ## A169695.P5751693660361734779

`floor(exp(cos(char[n²])))`
-/

namespace A169695.P5751693660361734779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A169695.P5751693660361734779

namespace A169695

/-- `floor(exp(cos(char[n²])))` -/
def P5751693660361734779.Spec : Prop :=
  ∀ n, P5751693660361734779.a n = A169695 n

end A169695

/-! ## A169695.P5072009829308284258

`ceil(acos(char[n²]))!`
-/

namespace A169695.P5072009829308284258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉.toNat

end

end A169695.P5072009829308284258

namespace A169695

/-- `ceil(acos(char[n²]))!` -/
def P5072009829308284258.Spec : Prop :=
  ∀ n, (P5072009829308284258.a n : ℤ) = A169695 n

end A169695

/-! ## A169695.P11382663983006262983

`round(acos(char[n²]))!`
-/

namespace A169695.P11382663983006262983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))).toNat

end

end A169695.P11382663983006262983

namespace A169695

/-- `round(acos(char[n²]))!` -/
def P11382663983006262983.Spec : Prop :=
  ∀ n, (P11382663983006262983.a n : ℤ) = A169695 n

end A169695

/-! ## A169695.P9877989311773934104

`ceil(cosh(char[comp[n²]]))`
-/

namespace A169695.P9877989311773934104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A169695.P9877989311773934104

namespace A169695

/-- `ceil(cosh(char[comp[n²]]))` -/
def P9877989311773934104.Spec : Prop :=
  ∀ n, P9877989311773934104.a n = A169695 n

end A169695

/-! ## A169695.P9768443590594003810

`round(cosh(char[comp[n²]]))`
-/

namespace A169695.P9768443590594003810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A169695.P9768443590594003810

namespace A169695

/-- `round(cosh(char[comp[n²]]))` -/
def P9768443590594003810.Spec : Prop :=
  ∀ n, P9768443590594003810.a n = A169695 n

end A169695

/-! ## A169695.P6028623958783927611

`ceil(tan(cos(char[n²])))`
-/

namespace A169695.P6028623958783927611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A169695.P6028623958783927611

namespace A169695

/-- `ceil(tan(cos(char[n²])))` -/
def P6028623958783927611.Spec : Prop :=
  ∀ n, P6028623958783927611.a n = A169695 n

end A169695

/-! ## A169695.P10481609283730372949

`round(tan(cos(char[n²])))`
-/

namespace A169695.P10481609283730372949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A169695.P10481609283730372949

namespace A169695

/-- `round(tan(cos(char[n²])))` -/
def P10481609283730372949.Spec : Prop :=
  ∀ n, P10481609283730372949.a n = A169695 n

end A169695

/-! ## A169695.P736256691771423001

`ceil(asin(cos(char[n²])))`
-/

namespace A169695.P736256691771423001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A169695.P736256691771423001

namespace A169695

/-- `ceil(asin(cos(char[n²])))` -/
def P736256691771423001.Spec : Prop :=
  ∀ n, P736256691771423001.a n = A169695 n

end A169695

/-! ## A169695.P669467441234207773

`ceil(acos(sin(char[n²])))`
-/

namespace A169695.P669467441234207773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A169695.P669467441234207773

namespace A169695

/-- `ceil(acos(sin(char[n²])))` -/
def P669467441234207773.Spec : Prop :=
  ∀ n, P669467441234207773.a n = A169695 n

end A169695

/-! ## A169695.P12215908861040668955

`round(asin(cos(char[n²])))`
-/

namespace A169695.P12215908861040668955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A169695.P12215908861040668955

namespace A169695

/-- `round(asin(cos(char[n²])))` -/
def P12215908861040668955.Spec : Prop :=
  ∀ n, P12215908861040668955.a n = A169695 n

end A169695

/-! ## A169695.P1272446878649157265

`round(acos(sin(char[n²])))`
-/

namespace A169695.P1272446878649157265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A169695.P1272446878649157265

namespace A169695

/-- `round(acos(sin(char[n²])))` -/
def P1272446878649157265.Spec : Prop :=
  ∀ n, P1272446878649157265.a n = A169695 n

end A169695

/-! ## A169695.P2896672346960799557

`ceil(sinh(cos(char[n²])))`
-/

namespace A169695.P2896672346960799557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A169695.P2896672346960799557

namespace A169695

/-- `ceil(sinh(cos(char[n²])))` -/
def P2896672346960799557.Spec : Prop :=
  ∀ n, P2896672346960799557.a n = A169695 n

end A169695

/-! ## A169695.P5169568423850347876

`floor(cosh(acos(char[n²])))`
-/

namespace A169695.P5169568423850347876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A169695.P5169568423850347876

namespace A169695

/-- `floor(cosh(acos(char[n²])))` -/
def P5169568423850347876.Spec : Prop :=
  ∀ n, P5169568423850347876.a n = A169695 n

end A169695

/-! ## A169695.P12318458429327523832

`ceil(acos(atan(char[n²])))`
-/

namespace A169695.P12318458429327523832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A169695.P12318458429327523832

namespace A169695

/-- `ceil(acos(atan(char[n²])))` -/
def P12318458429327523832.Spec : Prop :=
  ∀ n, P12318458429327523832.a n = A169695 n

end A169695

/-! ## A169695.P14961567698698766051

`round(acos(atan(char[n²])))`
-/

namespace A169695.P14961567698698766051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A169695.P14961567698698766051

namespace A169695

/-- `round(acos(atan(char[n²])))` -/
def P14961567698698766051.Spec : Prop :=
  ∀ n, P14961567698698766051.a n = A169695 n

end A169695

/-!
# A169696: Number of undirected Knight's tours on a 3 X n board.

The programs for A169696, there is no canonical definition to state claims against.
-/

/-! ## A169696.P14257034188353065060

`A118067(n+1)/2`
-/

namespace A169696.P14257034188353065060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118067 (n + 1) : ℚ) / 2

end

end A169696.P14257034188353065060

/-! ## A169696.P9686038682887514097

`A389759(3*(n+1))`
-/

namespace A169696.P9686038682887514097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389759 (3 * (n + 1))

end

end A169696.P9686038682887514097

/-! ## A169696.P3591217085857725333

`A390833(A167614(n+1))`
-/

namespace A169696.P3591217085857725333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A167614 (n + 1)).toNat

end

end A169696.P3591217085857725333

/-! ## A169696.P5658782455988665126

`A390833(A373663(n+1))`
-/

namespace A169696.P5658782455988665126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A373663 (n + 1)).toNat

end

end A169696.P5658782455988665126

/-! ## A169696.P3919236907360118245

`A390833(A034856(n+2))`
-/

namespace A169696.P3919236907360118245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A034856 (n + 2)).toNat

end

end A169696.P3919236907360118245

/-!
# A169697: The rows of A169689 converge to 4 times this sequence.

The programs for A169697, there is no canonical definition to state claims against.
-/

/-! ## A169697.P732124031411824065

`A006046(2^(n-∑[val(n+1, 2)])*xor(n, n+1))`
-/

namespace A169697.P732124031411824065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * (Nat.xor n (n + 1) : ℚ))).toNat

end

end A169697.P732124031411824065

/-! ## A169697.P13797633196003444534

`A006046(A361145(n+1))`
-/

namespace A169697.P13797633196003444534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A361145 (n + 1)).toNat

end

end A169697.P13797633196003444534

/-! ## A169697.P2253274619389021254

`2*A048883(n)-Δ[A119733(n)]`
-/

namespace A169697.P2253274619389021254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048883 n - (f1 (n + 1) - f1 n)

end

end A169697.P2253274619389021254

/-! ## A169697.P9195553068788402942

`A006046(A117973(n)-2^(n-∑[val(n+1, 2)]))`
-/

namespace A169697.P9195553068788402942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (SequenceMachineLib.roundAway ((A117973 n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A169697.P9195553068788402942

/-! ## A169697.P8836768137587951643

`∑{d}[n+1, A048883(#-1)*A099894((n+1)/#-1)]`
-/

namespace A169697.P8836768137587951643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048883 (d - 1) * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A169697.P8836768137587951643

/-! ## A169697.P18403873402439630242

`A006046(A117973(n)-A048896(n))`
-/

namespace A169697.P18403873402439630242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A117973 n - A048896 n).toNat

end

end A169697.P18403873402439630242

/-! ## A169697.P550986466845770185

`A006046(Δ[A080978(n)]-A048896(n))`
-/

namespace A169697.P550986466845770185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (f1 (n + 1) - f1 n - A048896 n).toNat

end

end A169697.P550986466845770185

/-! ## A169697.P6710337303372332486

`A005843(A048883(n))-Δ[A119733(n)]`
-/

namespace A169697.P6710337303372332486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A048883 n).toNat - (f1 (n + 1) - f1 n)

end

end A169697.P6710337303372332486

/-! ## A169697.P14230580371618575720

`Δ[A119733(A062880(n))-A119733(n)]`
-/

namespace A169697.P14230580371618575720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A062880 n).toNat - A119733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169697.P14230580371618575720

/-! ## A169697.P17801013644875853988

`A006046(A038712(n+1)*A048896(n))`
-/

namespace A169697.P17801013644875853988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A038712 (n + 1) * A048896 n).toNat

end

end A169697.P17801013644875853988

/-!
# A169698: A bisection of A169697.

The programs for A169698, there is no canonical definition to state claims against.
-/

/-! ## A169698.P2867602504413221820

`A006046(A361145(2*(n+1)))`
-/

namespace A169698.P2867602504413221820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A361145 (2 * (n + 1))).toNat

end

end A169698.P2867602504413221820

/-! ## A169698.P4807248937381363946

`3*A048883(n)+2*A169697(n+1)`
-/

namespace A169698.P4807248937381363946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048883 n + 2 * A169697 (n + 1)

end

end A169698.P4807248937381363946

/-! ## A169698.P16068790757933290178

`A006046(A048896(n)*A088837(n+1))`
-/

namespace A169698.P16068790757933290178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A048896 n * A088837 (n + 1)).toNat

end

end A169698.P16068790757933290178

/-! ## A169698.P2369098583203113791

`A006046(2*A117973(n)-A048896(n))`
-/

namespace A169698.P2369098583203113791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (2 * A117973 n - A048896 n).toNat

end

end A169698.P2369098583203113791

/-! ## A169698.P5980160556309694042

`A006046(4*A001316(n)-A048896(n))`
-/

namespace A169698.P5980160556309694042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (4 * A001316 n - A048896 n).toNat

end

end A169698.P5980160556309694042

/-! ## A169698.P985231742820916422

`A006046(lcm(A048896(n), A088837(n+1)))`
-/

namespace A169698.P985231742820916422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (Int.lcm (A048896 n) (A088837 (n + 1)))

end

end A169698.P985231742820916422

/-! ## A169698.P18390731904312884521

`A008486(A048883(n))+2*A169697(n+1)`
-/

namespace A169698.P18390731904312884521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A048883 n).toNat + 2 * A169697 (n + 1)

end

end A169698.P18390731904312884521

/-! ## A169698.P1007789001978633195

`A048883(A016813(n))+2*A169697(n+1)`
-/

namespace A169698.P1007789001978633195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A016813 n).toNat + 2 * A169697 (n + 1)

end

end A169698.P1007789001978633195

/-! ## A169698.P16543583229358326689

`A006046(A038712(2*(n+1))*A048896(n))`
-/

namespace A169698.P16543583229358326689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A038712 (2 * (n + 1)) * A048896 n).toNat

end

end A169698.P16543583229358326689

/-! ## A169698.P1899407875748493706

`A008486(A048883(n))+A005843(A169697(n+1))`
-/

namespace A169698.P1899407875748493706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A048883 n).toNat + A005843 (A169697 (n + 1)).toNat

end

end A169698.P1899407875748493706

/-!
# A169699: Total number of ON cells at stage n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 510".

The programs for A169699, the canonical program `A169699.P12141138360793338882` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169699 has offset 0).

The definition of A169699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4689 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169699.P12141138360793338882

`A102376(n)*A267584(n)-A267447(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A169699

/-- `A102376(n)*A267584(n)-A267447(n)` -/
def P12141138360793338882.Spec : Prop :=
  ∀ n, P12141138360793338882.a n = A169699 n

theorem P12141138360793338882.correct : P12141138360793338882.Spec := by
  intro n
  simp only [A169699]

end A169699

/-! ## A169699.P4933978197558678903

`A169700(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A169699.P4933978197558678903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169700 (n - 1) + a (n - 1)

end

end A169699.P4933978197558678903

namespace A169699

/-- `A169700(n-1)+a(n-1)` -/
def P4933978197558678903.Spec : Prop :=
  ∀ n, P4933978197558678903.a n = A169699 n

end A169699

/-! ## A169699.P15482586984727985735

`Δ[A272700(n)]-A169700(n)`
-/

namespace A169699.P15482586984727985735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169700 n

end

end A169699.P15482586984727985735

namespace A169699

/-- `Δ[A272700(n)]-A169700(n)` -/
def P15482586984727985735.Spec : Prop :=
  ∀ n, P15482586984727985735.a n = A169699 n

end A169699

/-! ## A169699.P1107708105236600795

`A272700(n+1)-(A272700(n)+A169700(n))`
-/

namespace A169699.P1107708105236600795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272700 (n + 1) - (A272700 n + A169700 n)

end

end A169699.P1107708105236600795

namespace A169699

/-- `A272700(n+1)-(A272700(n)+A169700(n))` -/
def P1107708105236600795.Spec : Prop :=
  ∀ n, P1107708105236600795.a n = A169699 n

end A169699

/-! ## A169699.P15264534542869249288

`A000007(n)+A016754(n)-A272702(n)`
-/

namespace A169699.P15264534542869249288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272702 n)

end

end A169699.P15264534542869249288

namespace A169699

/-- `A000007(n)+A016754(n)-A272702(n)` -/
def P15264534542869249288.Spec : Prop :=
  ∀ n, P15264534542869249288.a n = A169699 n

theorem P15264534542869249288.correct : P15264534542869249288.Spec := by
  intro n
  simp only [A169699, Nat.add_sub_cancel, A169699.P15264534542869249288.a, A169699.P12141138360793338882.a, A000007, A000007.P6599383543502402472.a, A016754, A016754.P2987865549988322084.a, A102376, A102376.P15707539213794308439.a, A267447, A267447.P294490523274346836.f1, A267447.P294490523274346836.a, A267584, A267584.P3421928934168092371.a, A272702, A272702.P13388874115026706064.a, A000120, A000120.P2816527436160941581.a, A267445, A267445.P11359933755806335792.a, A004277, A004277.P16255821370285667660.a, A005187, A005187.P3874015513960485494.a, A071051, A071051.P15402444930345305541.a, A005843, A005843.P3167286115683555970.a, A036987, A036987.P1789601236562705309.a, A117973, A117973.P11230116199213534894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169699

/-! ## A169699.P10397653970580527233

`A181385(A016825(n))-A272702(n)`
-/

namespace A169699.P10397653970580527233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272702 n

end

end A169699.P10397653970580527233

namespace A169699

/-- `A181385(A016825(n))-A272702(n)` -/
def P10397653970580527233.Spec : Prop :=
  ∀ n, P10397653970580527233.a n = A169699 n

end A169699

/-! ## A169699.P17187851954001684704

`A269715(2*n)-A267447(n)`
-/

namespace A169699.P17187851954001684704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269715 (2 * n) - A267447 n

end

end A169699.P17187851954001684704

namespace A169699

/-- `A269715(2*n)-A267447(n)` -/
def P17187851954001684704.Spec : Prop :=
  ∀ n, P17187851954001684704.a n = A169699 n

end A169699

/-! ## A169699.P5046284747188941471

`A008740(A008458(n))-A272702(n)`
-/

namespace A169699.P5046284747188941471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272702 n

end

end A169699.P5046284747188941471

namespace A169699

/-- `A008740(A008458(n))-A272702(n)` -/
def P5046284747188941471.Spec : Prop :=
  ∀ n, P5046284747188941471.a n = A169699 n

end A169699

