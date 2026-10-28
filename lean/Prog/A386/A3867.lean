import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A386700: a(n) = Sum_{k=0..n} (-3)^(n-k) * binomial(3*n,k).

The programs for A386700, the canonical program `A386700.P14231295329623289748` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386700 has offset 0).

The definition of A386700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386700.P14231295329623289748

`∑{#}[n, (-3)^(n-#)*C(3*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386700

/-- `∑{#}[n, (-3)^(n-#)*C(3*n, #)]` -/
def P14231295329623289748.Spec : Prop :=
  ∀ n, P14231295329623289748.a n = (A386700 n : ℚ)

end A386700

/-!
# A386701: a(n) = Sum_{k=0..n} (-3)^(n-k) * binomial(4*n,k).

The programs for A386701, the canonical program `A386701.P16388411988880927896` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386701 has offset 0).

The definition of A386701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386701.P16388411988880927896

`∑{#}[n, (-3)^(n-#)*C(4*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386701

/-- `∑{#}[n, (-3)^(n-#)*C(4*n, #)]` -/
def P16388411988880927896.Spec : Prop :=
  ∀ n, P16388411988880927896.a n = (A386701 n : ℚ)

end A386701

/-!
# A386702: a(n) = Sum_{k=0..n} (-3)^(n-k) * binomial(5*n,k).

The programs for A386702, the canonical program `A386702.P3244050639509487455` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386702 has offset 0).

The definition of A386702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386702.P3244050639509487455

`∑{#}[n, (-3)^(n-#)*C(5*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386702

/-- `∑{#}[n, (-3)^(n-#)*C(5*n, #)]` -/
def P3244050639509487455.Spec : Prop :=
  ∀ n, P3244050639509487455.a n = (A386702 n : ℚ)

end A386702

/-!
# A386705: a(n) = sum of the 2^(n-1) even positive integers having bit length 2*n and in which, when written in binary, each run of 0's is of exactly the same length as the run of 1's immediately before it.

The programs for A386705, there is no canonical definition to state claims against.
-/

/-! ## A386705.P10686335062307464501

`or(2*a(n-1), 8^n)+lcm(2^n, ∑[4^n])` with `a(0)=2`
-/

namespace A386705.P10686335062307464501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (2 * a (n - 1)) (8 ^ n) + Nat.lcm (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386705.P10686335062307464501

/-! ## A386705.P7312853045875688020

`12*a(n-1)-36*a(n-2)+32*a(n-3)` with `a(0)=2, a(1)=22, a(2)=192`
-/

namespace A386705.P7312853045875688020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 22, 192] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2) + 32 * a (n - 3)

end

end A386705.P7312853045875688020

/-! ## A386705.P1130525715657098689

`A016131(n)+or(2*a(n-1), 8^n)` with `a(0)=2`
-/

namespace A386705.P1130525715657098689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A016131 n + Int.lor (2 * a (n - 1)) (8 ^ n : ℤ)

end

end A386705.P1130525715657098689

/-! ## A386705.P5451067419110621615

`∑[A206374(n)]*A000079(n)`
-/

namespace A386705.P5451067419110621615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A386705.P5451067419110621615

/-! ## A386705.P15182793669973039238

`∑[A062092(2*n)]*A000079(n)`
-/

namespace A386705.P15182793669973039238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A386705.P15182793669973039238

/-!
# A386706: Expansion of ((Product_{k>=1} (1 - x^k)^2/(1 - 4*x^k + x^(2k))) - 1)/2.

The programs for A386706, there is no canonical definition to state claims against.
-/

/-! ## A386706.P11988966883312453309

`A330558(A273623(n+1))`
-/

namespace A386706.P11988966883312453309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A273623 (n + 1)).toNat

end

end A386706.P11988966883312453309

/-! ## A386706.P14657897816587161446

`A286294(A007717(n))-A017989(n)`
-/

namespace A386706.P14657897816587161446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 (A007717 n).toNat - A017989 n

end

end A386706.P14657897816587161446

/-!
# A386707: a(n) = Lucas(n) + 6.

The programs for A386707, the canonical program `A386707.P16068764112324631990` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386707 has offset 1).

The definition of A386707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)+6` (program `A386707.P16068764112324631990`, by `A386707.P16068764112324631990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386707.P3231723637858300633

`ogf((7-5x-8x^2)/(1-2x+x^3))`
-/

namespace A386707.P3231723637858300633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5, -8] [1, -2, 0, 1] n

end

end A386707.P3231723637858300633

namespace A386707

/-- `ogf((7-5x-8x^2)/(1-2x+x^3))` -/
def P3231723637858300633.Spec : Prop :=
  ∀ n, P3231723637858300633.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P7578032606459412388

`2*a(n-1)-a(n-3)` with `a(0)=7, a(1)=9, a(2)=10`
-/

namespace A386707.P7578032606459412388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 9, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A386707.P7578032606459412388

namespace A386707

/-- `2*a(n-1)-a(n-3)` -/
def P7578032606459412388.Spec : Prop :=
  ∀ n, P7578032606459412388.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P16068764112324631990

`A000032(n+1)+6`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386707

/-- `A000032(n+1)+6` -/
def P16068764112324631990.Spec : Prop :=
  ∀ n, P16068764112324631990.a n = A386707 (n + 1)

theorem P16068764112324631990.correct : P16068764112324631990.Spec := by
  intro n
  simp only [A386707, Nat.add_sub_cancel]

end A386707

/-! ## A386707.P14115284372152833889

`∑[ogf((-7+5x+8x^2)/(-1+x+x^2))]`
-/

namespace A386707.P14115284372152833889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5, -8] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386707.P14115284372152833889

namespace A386707

/-- `∑[ogf((-7+5x+8x^2)/(-1+x+x^2))]` -/
def P14115284372152833889.Spec : Prop :=
  ∀ n, P14115284372152833889.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P8764597221154925235

`a(n-1)+a(n-2)-6` with `a(0)=7, a(1)=9`
-/

namespace A386707.P8764597221154925235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 9] fun n a =>
  a (n - 1) + (a (n - 2) - 6)

end

end A386707.P8764597221154925235

namespace A386707

/-- `a(n-1)+a(n-2)-6` -/
def P8764597221154925235.Spec : Prop :=
  ∀ n, P8764597221154925235.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P10205199912911400172

`a(n-1)-(6-a(n-2))` with `a(0)=7, a(1)=9`
-/

namespace A386707.P10205199912911400172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 9] fun n a =>
  a (n - 1) - (6 - a (n - 2))

end

end A386707.P10205199912911400172

namespace A386707

/-- `a(n-1)-(6-a(n-2))` -/
def P10205199912911400172.Spec : Prop :=
  ∀ n, P10205199912911400172.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P9319534203312234641

`A001610(n)+7`
-/

namespace A386707.P9319534203312234641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + 7

end

end A386707.P9319534203312234641

namespace A386707

/-- `A001610(n)+7` -/
def P9319534203312234641.Spec : Prop :=
  ∀ n, P9319534203312234641.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P7259199304310502375

`A366506(n+1)+3`
-/

namespace A386707.P7259199304310502375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366506 (n + 1) + 3

end

end A386707.P7259199304310502375

namespace A386707

/-- `A366506(n+1)+3` -/
def P7259199304310502375.Spec : Prop :=
  ∀ n, P7259199304310502375.a n = A386707 (n + 1)

theorem P7259199304310502375.correct : P7259199304310502375.Spec := by
  intro n
  simp only [A386707, Nat.add_sub_cancel, A386707.P7259199304310502375.a, A386707.P16068764112324631990.a, A000032, A000032.P8352177345629330861.a, A366506, A366506.P1712958148800648278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386707

/-! ## A386707.P7492200291881951132

`A000211(n+1)+4`
-/

namespace A386707.P7492200291881951132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1) + 4

end

end A386707.P7492200291881951132

namespace A386707

/-- `A000211(n+1)+4` -/
def P7492200291881951132.Spec : Prop :=
  ∀ n, P7492200291881951132.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P12270004848782650903

`A001612(n+1)+5`
-/

namespace A386707.P12270004848782650903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) + 5

end

end A386707.P12270004848782650903

namespace A386707

/-- `A001612(n+1)+5` -/
def P12270004848782650903.Spec : Prop :=
  ∀ n, P12270004848782650903.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P9525657361081611907

`A000204(n+1)+6`
-/

namespace A386707.P9525657361081611907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + 6

end

end A386707.P9525657361081611907

namespace A386707

/-- `A000204(n+1)+6` -/
def P9525657361081611907.Spec : Prop :=
  ∀ n, P9525657361081611907.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P11095702083069661530

`A329723(n+3)+6`
-/

namespace A386707.P11095702083069661530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 3) + 6

end

end A386707.P11095702083069661530

namespace A386707

/-- `A329723(n+3)+6` -/
def P11095702083069661530.Spec : Prop :=
  ∀ n, P11095702083069661530.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P4327004922807675829

`A090244(2*n)+6`
-/

namespace A386707.P4327004922807675829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) + 6

end

end A386707.P4327004922807675829

namespace A386707

/-- `A090244(2*n)+6` -/
def P4327004922807675829.Spec : Prop :=
  ∀ n, P4327004922807675829.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P14203387162637991324

`A339572(2*n+1)+7`
-/

namespace A386707.P14203387162637991324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n + 1) + 7

end

end A386707.P14203387162637991324

namespace A386707

/-- `A339572(2*n+1)+7` -/
def P14203387162637991324.Spec : Prop :=
  ∀ n, P14203387162637991324.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P940587544758335725

`A074392(n)+A010719(n)`
-/

namespace A386707.P940587544758335725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 n + A010719 n

end

end A386707.P940587544758335725

namespace A386707

/-- `A074392(n)+A010719(n)` -/
def P940587544758335725.Spec : Prop :=
  ∀ n, P940587544758335725.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P3062224963851222570

`A301653(n)+A010728(n)`
-/

namespace A386707.P3062224963851222570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 n + A010728 n

end

end A386707.P3062224963851222570

namespace A386707

/-- `A301653(n)+A010728(n)` -/
def P3062224963851222570.Spec : Prop :=
  ∀ n, P3062224963851222570.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P7683305924093492172

`A226294(n)+A068397(n+1)`
-/

namespace A386707.P7683305924093492172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226294 n + A068397 (n + 1)

end

end A386707.P7683305924093492172

namespace A386707

/-- `A226294(n)+A068397(n+1)` -/
def P7683305924093492172.Spec : Prop :=
  ∀ n, P7683305924093492172.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P12286832185896312950

`A295730(n)+A209724(n+1)`
-/

namespace A386707.P12286832185896312950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + A209724 (n + 1)

end

end A386707.P12286832185896312950

namespace A386707

/-- `A295730(n)+A209724(n+1)` -/
def P12286832185896312950.Spec : Prop :=
  ∀ n, P12286832185896312950.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P6889390062141647348

`A157729(n+2)+A001611(n)`
-/

namespace A386707.P6889390062141647348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 (n + 2) + A001611 n

end

end A386707.P6889390062141647348

namespace A386707

/-- `A157729(n+2)+A001611(n)` -/
def P6889390062141647348.Spec : Prop :=
  ∀ n, P6889390062141647348.a n = A386707 (n + 1)

end A386707

/-! ## A386707.P8624697904331648336

`A187179(n+2)+A000045(n)`
-/

namespace A386707.P8624697904331648336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (n + 2) + A000045 n

end

end A386707.P8624697904331648336

namespace A386707

/-- `A187179(n+2)+A000045(n)` -/
def P8624697904331648336.Spec : Prop :=
  ∀ n, P8624697904331648336.a n = A386707 (n + 1)

end A386707

/-!
# A386708: Coefficients in level 20 Ramanujan-Sato series for 1/Pi.

The programs for A386708, there is no canonical definition to state claims against.
-/

/-! ## A386708.P5543514238959427727

`A246322(A153535(n+1))`
-/

namespace A386708.P5543514238959427727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246322 (A153535 (n + 1)).toNat

end

end A386708.P5543514238959427727

/-!
# A386709: Number of length n binary palindromic words which are not all zero in which 1's occur in blocks of at least 4.

The programs for A386709, the canonical program `A386709.P1298591843888637398` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386709 has offset 1).

The definition of A386709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386709.P1298591843888637398

`ogf(x^3/(1-x-x^2+x^3-x^5+x^6))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386709

/-- `ogf(x^3/(1-x-x^2+x^3-x^5+x^6))` -/
def P1298591843888637398.Spec : Prop :=
  ∀ n, P1298591843888637398.a n = A386709 (n + 1)

theorem P1298591843888637398.correct : P1298591843888637398.Spec := by
  intro n
  simp only [A386709, Nat.add_sub_cancel]

end A386709

/-! ## A386709.P1736714991201598067

`∑[a(n-2)+a(n-5)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A386709.P1736714991201598067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386709.P1736714991201598067

namespace A386709

/-- `∑[a(n-2)+a(n-5)]` -/
def P1736714991201598067.Spec : Prop :=
  ∀ n, (P1736714991201598067.a n : ℤ) = A386709 (n + 1)

end A386709

/-! ## A386709.P16939986538845228521

`a(n-2)+a(n-5)+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A386709.P16939986538845228521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n a =>
  a (n - 2) + (a (n - 5) + 1)

end

end A386709.P16939986538845228521

namespace A386709

/-- `a(n-2)+a(n-5)+1` -/
def P16939986538845228521.Spec : Prop :=
  ∀ n, (P16939986538845228521.a n : ℤ) = A386709 (n + 1)

end A386709

/-! ## A386709.P1865404745853883322

`A005686(n+3)-1`
-/

namespace A386709.P1865404745853883322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (n + 3) - 1

end

end A386709.P1865404745853883322

namespace A386709

/-- `A005686(n+3)-1` -/
def P1865404745853883322.Spec : Prop :=
  ∀ n, P1865404745853883322.a n = A386709 (n + 1)

end A386709

/-! ## A386709.P7172734672490026321

`A023671(A119262(n+1))`
-/

namespace A386709.P7172734672490026321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023671 (A119262 (n + 1)).toNat

end

end A386709.P7172734672490026321

namespace A386709

/-- `A023671(A119262(n+1))` -/
def P7172734672490026321.Spec : Prop :=
  ∀ n, P7172734672490026321.a n = A386709 (n + 1)

end A386709

/-!
# A386719: a(n) = Sum_{k=0..n} 2^k * binomial(4*n,k) * binomial(4*n-k-1,n-k).

The programs for A386719, the canonical program `A386719.P14323962082270025190` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386719 has offset 0).

The definition of A386719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386719.P14323962082270025190

`∑{#}[n, 3^#*(-1)^(n-#)*C(4*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386719

/-- `∑{#}[n, 3^#*(-1)^(n-#)*C(4*n, #)]` -/
def P14323962082270025190.Spec : Prop :=
  ∀ n, P14323962082270025190.a n = (A386719 n : ℚ)

end A386719

/-! ## A386719.P2583323917104983903

`A193856(A139274(n))`
-/

namespace A386719.P2583323917104983903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A139274 n).toNat

end

end A386719.P2583323917104983903

namespace A386719

/-- `A193856(A139274(n))` -/
def P2583323917104983903.Spec : Prop :=
  ∀ n, P2583323917104983903.a n = A386719 n

end A386719

/-!
# A386720: a(n) = [x^n] G(x)^n, where G(x) = Product_{k >= 1} 1/(1 - x^k)^(k^3) is the g.f. of A023872.

The programs for A386720, there is no canonical definition to state claims against.
-/

/-! ## A386720.P17603747765166934833

`A008578(A143293(n*A032311(n)))`
-/

namespace A386720.P17603747765166934833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A143293 ((n : ℤ) * A032311 n).toNat).toNat

end

end A386720.P17603747765166934833

/-!
# A386721: Expansion of e.g.f. exp(x/(1 - 9*x^3)^(1/3)).

The programs for A386721, there is no canonical definition to state claims against.
-/

/-! ## A386721.P11524086012907836308

`A001651(A373680(n))`
-/

namespace A386721.P11524086012907836308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A373680 n).toNat

end

end A386721.P11524086012907836308

/-! ## A386721.P10457027804818747073

`A004526(3*A373707(n))`
-/

namespace A386721.P10457027804818747073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A373707 n).toNat

end

end A386721.P10457027804818747073

/-! ## A386721.P14694505674808511291

`A028242(3*A373707(n))`
-/

namespace A386721.P14694505674808511291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (3 * A373707 n).toNat

end

end A386721.P14694505674808511291

/-!
# A386722: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / (1+2*x)^3 ).

The programs for A386722, the canonical program `A386722.P5070832409589335607` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386722 has offset 0).

The definition of A386722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386722.P5070832409589335607

`1/(n+1)*∑{#}[n, 2^#*C(3*(n+1), #)*C(3*n-#+1, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386722

/-- `1/(n+1)*∑{#}[n, 2^#*C(3*(n+1), #)*C(3*n-#+1, n-#)]` -/
def P5070832409589335607.Spec : Prop :=
  ∀ n, P5070832409589335607.a n = (A386722 n : ℚ)

end A386722

/-!
# A386723: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / (1+2*x)^4 ).

The programs for A386723, the canonical program `A386723.P9234726101896669458` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386723 has offset 0).

The definition of A386723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386723.P9234726101896669458

`1/(n+1)*∑{#}[n, 2^#*C(4*(n+1), #)*C(4*n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386723

/-- `1/(n+1)*∑{#}[n, 2^#*C(4*(n+1), #)*C(4*n-#+2, n-#)]` -/
def P9234726101896669458.Spec : Prop :=
  ∀ n, P9234726101896669458.a n = (A386723 n : ℚ)

end A386723

/-!
# A386724: Twin primes p such that 6p+1, 6p-1 is a twin prime pair.

The programs for A386724, the canonical program `A386724.P5852504740196687615` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386724 has offset 1).

The definition of A386724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386724.P3591579265827542271

`∩[A001097(n+1), A060212(n+1)]`
-/

namespace A386724.P3591579265827542271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386724.P3591579265827542271

namespace A386724

/-- `∩[A001097(n+1), A060212(n+1)]` -/
def P3591579265827542271.Spec : Prop :=
  ∀ n, (P3591579265827542271.a n : ℤ) = A386724 (n + 1)

end A386724

/-! ## A386724.P5852504740196687615

`∩[A001097(n+1), A283809(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A386724

/-- `∩[A001097(n+1), A283809(n+1)]` -/
def P5852504740196687615.Spec : Prop :=
  ∀ n, (P5852504740196687615.a n : ℤ) = A386724 (n + 1)

theorem P5852504740196687615.correct : P5852504740196687615.Spec := by
  intro n
  simp only [A386724, Nat.add_sub_cancel]

end A386724

/-! ## A386724.P2722356654047317140

`∩[A001097(n+1), A182521(n+1)]`
-/

namespace A386724.P2722356654047317140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386724.P2722356654047317140

namespace A386724

/-- `∩[A001097(n+1), A182521(n+1)]` -/
def P2722356654047317140.Spec : Prop :=
  ∀ n, (P2722356654047317140.a n : ℤ) = A386724 (n + 1)

end A386724

/-! ## A386724.P387442067451564421

`∩[A001097(n+1), A002822(n+1)]`
-/

namespace A386724.P387442067451564421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386724.P387442067451564421

namespace A386724

/-- `∩[A001097(n+1), A002822(n+1)]` -/
def P387442067451564421.Spec : Prop :=
  ∀ n, (P387442067451564421.a n : ℤ) = A386724 (n + 1)

end A386724

/-! ## A386724.P5825652686144573110

`∩[A060212(n+1), A334141(n+1)]`
-/

namespace A386724.P5825652686144573110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386724.P5825652686144573110

namespace A386724

/-- `∩[A060212(n+1), A334141(n+1)]` -/
def P5825652686144573110.Spec : Prop :=
  ∀ n, (P5825652686144573110.a n : ℤ) = A386724 (n + 1)

end A386724

/-!
# A386725: a(n) is the nearest integer to n/log_10(Pi).

The programs for A386725, there is no canonical definition to state claims against.
-/

/-! ## A386725.P8115787302394640462

`A003056(A260124(n)+A001105(n))`
-/

namespace A386725.P8115787302394640462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A260124 n + A001105 n).toNat

end

end A386725.P8115787302394640462

/-! ## A386725.P8250965121786478100

`A188294(A339054(n+1))+2*n`
-/

namespace A386725.P8250965121786478100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188294 (A339054 (n + 1)).toNat + (2 * n : ℤ)

end

end A386725.P8250965121786478100

/-! ## A386725.P4671014461430624114

`A316345(A339826(n+1))+2*n`
-/

namespace A386725.P4671014461430624114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A339826 (n + 1)).toNat + (2 * n : ℤ)

end

end A386725.P4671014461430624114

/-! ## A386725.P7704642641786276853

`∑[C(A067255(A325039(n+3)), 3)]+n+n`
-/

namespace A386725.P7704642641786276853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067255 (A325039 (n + 3)).toNat).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n + n

end

end A386725.P7704642641786276853

/-! ## A386725.P3568999313338933346

`A105356(n+1)-1`
-/

namespace A386725.P3568999313338933346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (n + 1) - 1

end

end A386725.P3568999313338933346

/-! ## A386725.P8033514193184955010

`A023443(A105356(n+1))`
-/

namespace A386725.P8033514193184955010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105356 (n + 1)).toNat

end

end A386725.P8033514193184955010

/-! ## A386725.P5458273626950664805

`A082108(n)%A105356(n+1)`
-/

namespace A386725.P5458273626950664805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082108 n) (A105356 (n + 1))

end

end A386725.P5458273626950664805

/-!
# A386730: a(n) is the 3-adic valuation of A027856(n).

The programs for A386730, there is no canonical definition to state claims against.
-/

/-! ## A386730.P5784207727112218627

`A386731(n+1)-A385433(n+1)`
-/

namespace A386730.P5784207727112218627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386731 (n + 1) - A385433 (n + 1)

end

end A386730.P5784207727112218627

/-! ## A386730.P13091191059631404325

`val(A027856(n+1), 3)`
-/

namespace A386730.P13091191059631404325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027856 (n + 1)).toNat 3

end

end A386730.P13091191059631404325

/-! ## A386730.P18217000535409219610

`val(A078883(n+1)+1, 3)`
-/

namespace A386730.P18217000535409219610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078883 (n + 1) + 1).toNat 3

end

end A386730.P18217000535409219610

/-!
# A386731: a(n) = A385433(n) + A386730(n).

The programs for A386731, there is no canonical definition to state claims against.
-/

/-! ## A386731.P7452915457850915912

`A385433(n+1)+A386730(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386731.P7452915457850915912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385433 (n + 1) + A386730 (n + 1)

end

end A386731.P7452915457850915912

/-! ## A386731.P2413116750326928991

`A385433(n+1)+val(A027856(n+1), 3)`
-/

namespace A386731.P2413116750326928991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385433 (n + 1) + (SequenceMachineLib.valuation (A027856 (n + 1)).toNat 3 : ℤ)

end

end A386731.P2413116750326928991

/-!
# A386743: For n >= 0, a(n) is the least Fibonacci number F(i) such that F(i) = (2*n + 1)*(n + k) for some k >= 0.

The programs for A386743, there is no canonical definition to state claims against.
-/

/-! ## A386743.P4396460741648521758

`A386277(2*n)`
-/

namespace A386743.P4396460741648521758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386277 (2 * n)

end

end A386743.P4396460741648521758

/-!
# A386745: a(n) = n^2*sigma_2(n).

The programs for A386745, the canonical program `A386745.P17448882685446905493` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386745 has offset 0).

The definition of A386745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386745.P17448882685446905493

`∑{d}[n, (n*#)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386745

/-- `∑{d}[n, (n*#)²]` -/
def P17448882685446905493.Spec : Prop :=
  ∀ n, (P17448882685446905493.a n : ℤ) = A386745 n

theorem P17448882685446905493.correct : P17448882685446905493.Spec := by
  intro n
  simp only [A386745]

end A386745

/-! ## A386745.P483134973605041824

`floor(∑{d}[n, (n²/#)²])`
-/

namespace A386745.P483134973605041824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), ((n ^ 2 : ℚ) / (d : ℚ)) ^ 2⌋

end

end A386745.P483134973605041824

namespace A386745

/-- `floor(∑{d}[n, (n²/#)²])` -/
def P483134973605041824.Spec : Prop :=
  ∀ n, P483134973605041824.a n = A386745 n

end A386745

/-! ## A386745.P9421276056397134539

`ceil(∑{d}[n, (n²/#)²])`
-/

namespace A386745.P9421276056397134539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), ((n ^ 2 : ℚ) / (d : ℚ)) ^ 2⌉

end

end A386745.P9421276056397134539

namespace A386745

/-- `ceil(∑{d}[n, (n²/#)²])` -/
def P9421276056397134539.Spec : Prop :=
  ∀ n, P9421276056397134539.a n = A386745 n

end A386745

/-! ## A386745.P1905288377472153511

`round(∑{d}[n, (n²/#)²])`
-/

namespace A386745.P1905288377472153511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((n ^ 2 : ℚ) / (d : ℚ)) ^ 2)

end

end A386745.P1905288377472153511

namespace A386745

/-- `round(∑{d}[n, (n²/#)²])` -/
def P1905288377472153511.Spec : Prop :=
  ∀ n, P1905288377472153511.a n = A386745 n

end A386745

/-! ## A386745.P16560751830492306917

`A386746(n)/A028310(n)`
-/

namespace A386745.P16560751830492306917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386746 n : ℚ) / (A028310 n : ℚ)

end

end A386745.P16560751830492306917

namespace A386745

/-- `A386746(n)/A028310(n)` -/
def P16560751830492306917.Spec : Prop :=
  ∀ n, P16560751830492306917.a n = (A386745 n : ℚ)

end A386745

/-! ## A386745.P5526665612316396880

`A386783(n)/A253909(n)`
-/

namespace A386745.P5526665612316396880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386783 n : ℚ) / (A253909 n : ℚ)

end

end A386745.P5526665612316396880

namespace A386745

/-- `A386783(n)/A253909(n)` -/
def P5526665612316396880.Spec : Prop :=
  ∀ n, P5526665612316396880.a n = (A386745 n : ℚ)

end A386745

/-!
# A386746: a(n) = n^3*sigma_2(n).

The programs for A386746, the canonical program `A386746.P7829302292468683500` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386746 has offset 0).

The definition of A386746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386746.P7829302292468683500

`n^3*∑{d}[n, #²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386746

/-- `n^3*∑{d}[n, #²]` -/
def P7829302292468683500.Spec : Prop :=
  ∀ n, (P7829302292468683500.a n : ℤ) = A386746 n

theorem P7829302292468683500.correct : P7829302292468683500.Spec := by
  intro n
  simp only [A386746]

end A386746

/-! ## A386746.P9804086746531515471

`∑{d}[n, n^5/#²]`
-/

namespace A386746.P9804086746531515471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n ^ 5 : ℚ) / (d ^ 2 : ℚ)

end

end A386746.P9804086746531515471

namespace A386746

/-- `∑{d}[n, n^5/#²]` -/
def P9804086746531515471.Spec : Prop :=
  ∀ n, P9804086746531515471.a n = (A386746 n : ℚ)

end A386746

/-! ## A386746.P13140788829573561509

`n*A386745(n)`
-/

namespace A386746.P13140788829573561509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386745 n

end

end A386746.P13140788829573561509

namespace A386746

/-- `n*A386745(n)` -/
def P13140788829573561509.Spec : Prop :=
  ∀ n, P13140788829573561509.a n = A386746 n

end A386746

/-! ## A386746.P2802149556579358931

`∑{d}[n, #²]*A000578(n)`
-/

namespace A386746.P2802149556579358931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) * A000578 n

end

end A386746.P2802149556579358931

namespace A386746

/-- `∑{d}[n, #²]*A000578(n)` -/
def P2802149556579358931.Spec : Prop :=
  ∀ n, P2802149556579358931.a n = A386746 n

theorem P2802149556579358931.correct : P2802149556579358931.Spec := by
  intro n
  simp only [A386746, Nat.add_sub_cancel, A386746.P2802149556579358931.f1, A386746.P2802149556579358931.a, A386746.P7829302292468683500.f1, A386746.P7829302292468683500.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386746

/-! ## A386746.P17312429732810524297

`A386783(n)/A028310(n)`
-/

namespace A386746.P17312429732810524297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386783 n : ℚ) / (A028310 n : ℚ)

end

end A386746.P17312429732810524297

namespace A386746

/-- `A386783(n)/A028310(n)` -/
def P17312429732810524297.Spec : Prop :=
  ∀ n, P17312429732810524297.a n = (A386746 n : ℚ)

end A386746

/-!
# A386747: a(n) = n^2*sigma_4(n).

The programs for A386747, the canonical program `A386747.P1365684270962356850` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386747 has offset 0).

The definition of A386747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386747.P1365684270962356850

`∑{d}[n, (n*#²)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386747

/-- `∑{d}[n, (n*#²)²]` -/
def P1365684270962356850.Spec : Prop :=
  ∀ n, (P1365684270962356850.a n : ℤ) = A386747 n

theorem P1365684270962356850.correct : P1365684270962356850.Spec := by
  intro n
  simp only [A386747]

end A386747

/-! ## A386747.P11432892888427137451

`n*∑{d}[n, n*#^4]`
-/

namespace A386747.P11432892888427137451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n * d ^ 4)

end

end A386747.P11432892888427137451

namespace A386747

/-- `n*∑{d}[n, n*#^4]` -/
def P11432892888427137451.Spec : Prop :=
  ∀ n, (P11432892888427137451.a n : ℤ) = A386747 n

end A386747

/-! ## A386747.P4315988520244469949

`n*A386749(n)`
-/

namespace A386747.P4315988520244469949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386749 n

end

end A386747.P4315988520244469949

namespace A386747

/-- `n*A386749(n)` -/
def P4315988520244469949.Spec : Prop :=
  ∀ n, P4315988520244469949.a n = A386747 n

end A386747

/-! ## A386747.P17031420679104097566

`A386748(n)/A028310(n)`
-/

namespace A386747.P17031420679104097566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386748 n : ℚ) / (A028310 n : ℚ)

end

end A386747.P17031420679104097566

namespace A386747

/-- `A386748(n)/A028310(n)` -/
def P17031420679104097566.Spec : Prop :=
  ∀ n, P17031420679104097566.a n = (A386747 n : ℚ)

end A386747

/-! ## A386747.P3428455060080306466

`A386784(n)/A253909(n)`
-/

namespace A386747.P3428455060080306466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386784 n : ℚ) / (A253909 n : ℚ)

end

end A386747.P3428455060080306466

namespace A386747

/-- `A386784(n)/A253909(n)` -/
def P3428455060080306466.Spec : Prop :=
  ∀ n, P3428455060080306466.a n = (A386747 n : ℚ)

end A386747

/-!
# A386748: a(n) = n^3*sigma_4(n).

The programs for A386748, the canonical program `A386748.P7993596691927966895` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386748 has offset 0).

The definition of A386748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386748.P7993596691927966895

`n*∑{d}[n, (n*#²)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386748

/-- `n*∑{d}[n, (n*#²)²]` -/
def P7993596691927966895.Spec : Prop :=
  ∀ n, (P7993596691927966895.a n : ℤ) = A386748 n

theorem P7993596691927966895.correct : P7993596691927966895.Spec := by
  intro n
  simp only [A386748]

end A386748

/-! ## A386748.P2430252379958830385

`n*A386747(n)`
-/

namespace A386748.P2430252379958830385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386747 n

end

end A386748.P2430252379958830385

namespace A386748

/-- `n*A386747(n)` -/
def P2430252379958830385.Spec : Prop :=
  ∀ n, P2430252379958830385.a n = A386748 n

theorem P2430252379958830385.correct : P2430252379958830385.Spec := by
  intro n
  simp only [A386748, Nat.add_sub_cancel, A386748.P2430252379958830385.a, A386748.P7993596691927966895.f1, A386748.P7993596691927966895.a, A386747, A386747.P1365684270962356850.f1, A386747.P1365684270962356850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386748

/-! ## A386748.P9949637320946343981

`n²*A386749(n)`
-/

namespace A386748.P9949637320946343981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A386749 n

end

end A386748.P9949637320946343981

namespace A386748

/-- `n²*A386749(n)` -/
def P9949637320946343981.Spec : Prop :=
  ∀ n, P9949637320946343981.a n = A386748 n

end A386748

/-! ## A386748.P6617951895921603772

`∑{d}[n, n*#^4]*A000290(n)`
-/

namespace A386748.P6617951895921603772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), n * d ^ 4 : ℕ) : ℤ) * A000290 n

end

end A386748.P6617951895921603772

namespace A386748

/-- `∑{d}[n, n*#^4]*A000290(n)` -/
def P6617951895921603772.Spec : Prop :=
  ∀ n, P6617951895921603772.a n = A386748 n

end A386748

/-! ## A386748.P17748416470070138805

`A386784(n)/A028310(n)`
-/

namespace A386748.P17748416470070138805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386784 n : ℚ) / (A028310 n : ℚ)

end

end A386748.P17748416470070138805

namespace A386748

/-- `A386784(n)/A028310(n)` -/
def P17748416470070138805.Spec : Prop :=
  ∀ n, P17748416470070138805.a n = (A386748 n : ℚ)

end A386748

/-!
# A386749: a(n) = n*sigma_4(n).

The programs for A386749, the canonical program `A386749.P4661943499512016437` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386749 has offset 0).

The definition of A386749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386749.P4661943499512016437

`∑{d}[n, n*#^4]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386749

/-- `∑{d}[n, n*#^4]` -/
def P4661943499512016437.Spec : Prop :=
  ∀ n, (P4661943499512016437.a n : ℤ) = A386749 n

theorem P4661943499512016437.correct : P4661943499512016437.Spec := by
  intro n
  simp only [A386749]

end A386749

/-! ## A386749.P9270112848671061142

`n*∑{d}[n, #²²]`
-/

namespace A386749.P9270112848671061142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), (d ^ 2) ^ 2)

end

end A386749.P9270112848671061142

namespace A386749

/-- `n*∑{d}[n, #²²]` -/
def P9270112848671061142.Spec : Prop :=
  ∀ n, (P9270112848671061142.a n : ℤ) = A386749 n

end A386749

/-! ## A386749.P14315403343889065678

`A386747(n)/A028310(n)`
-/

namespace A386749.P14315403343889065678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386747 n : ℚ) / (A028310 n : ℚ)

end

end A386749.P14315403343889065678

namespace A386749

/-- `A386747(n)/A028310(n)` -/
def P14315403343889065678.Spec : Prop :=
  ∀ n, P14315403343889065678.a n = (A386749 n : ℚ)

end A386749

/-! ## A386749.P11339255953969283345

`A386748(n)/A253909(n)`
-/

namespace A386749.P11339255953969283345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386748 n : ℚ) / (A253909 n : ℚ)

end

end A386749.P11339255953969283345

namespace A386749

/-- `A386748(n)/A253909(n)` -/
def P11339255953969283345.Spec : Prop :=
  ∀ n, P11339255953969283345.a n = (A386749 n : ℚ)

end A386749

/-! ## A386749.P523639299377859394

`A386748(n)/A028310(n)²`
-/

namespace A386749.P523639299377859394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386748 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A386749.P523639299377859394

namespace A386749

/-- `A386748(n)/A028310(n)²` -/
def P523639299377859394.Spec : Prop :=
  ∀ n, P523639299377859394.a n = (A386749 n : ℚ)

end A386749

/-! ## A386749.P3678742154716251633

`A386748(n)/A028310(n²)`
-/

namespace A386749.P3678742154716251633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386748 n : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A386749.P3678742154716251633

namespace A386749

/-- `A386748(n)/A028310(n²)` -/
def P3678742154716251633.Spec : Prop :=
  ∀ n, P3678742154716251633.a n = (A386749 n : ℚ)

end A386749

/-!
# A386750: a(n) = n*sigma_6(n).

The programs for A386750, the canonical program `A386750.P8209237796018943525` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386750 has offset 0).

The definition of A386750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386750.P8209237796018943525

`∑{d}[n, n*#^6]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386750

/-- `∑{d}[n, n*#^6]` -/
def P8209237796018943525.Spec : Prop :=
  ∀ n, (P8209237796018943525.a n : ℤ) = A386750 n

theorem P8209237796018943525.correct : P8209237796018943525.Spec := by
  intro n
  simp only [A386750]

end A386750

/-! ## A386750.P15696912425189933062

`n*∑{d}[n, root(#, 1/6)]`
-/

namespace A386750.P15696912425189933062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ)))

end

end A386750.P15696912425189933062

namespace A386750

/-- `n*∑{d}[n, root(#, 1/6)]` -/
def P15696912425189933062.Spec : Prop :=
  ∀ n, P15696912425189933062.a n = (A386750 n : ℝ)

end A386750

/-! ## A386750.P2551306120625048000

`A386777(n)/A028310(n)`
-/

namespace A386750.P2551306120625048000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386777 n : ℚ) / (A028310 n : ℚ)

end

end A386750.P2551306120625048000

namespace A386750

/-- `A386777(n)/A028310(n)` -/
def P2551306120625048000.Spec : Prop :=
  ∀ n, P2551306120625048000.a n = (A386750 n : ℚ)

end A386750

/-! ## A386750.P8946216909742699482

`A386780(n)/A253909(n)`
-/

namespace A386750.P8946216909742699482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386780 n : ℚ) / (A253909 n : ℚ)

end

end A386750.P8946216909742699482

namespace A386750

/-- `A386780(n)/A253909(n)` -/
def P8946216909742699482.Spec : Prop :=
  ∀ n, P8946216909742699482.a n = (A386750 n : ℚ)

end A386750

/-! ## A386750.P4270845253179927852

`A386780(n)/(abs(A028310(n)-1)+1)²`
-/

namespace A386750.P4270845253179927852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386780 n : ℚ) / ((|A028310 n - 1| + 1) ^ 2 : ℚ)

end

end A386750.P4270845253179927852

namespace A386750

/-- `A386780(n)/(abs(A028310(n)-1)+1)²` -/
def P4270845253179927852.Spec : Prop :=
  ∀ n, P4270845253179927852.a n = (A386750 n : ℚ)

end A386750

/-!
# A386751: a(n) = n*sigma_8(n).

The programs for A386751, the canonical program `A386751.P5665838399217936275` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386751 has offset 0).

The definition of A386751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386751.P5665838399217936275

`∑{d}[n, n*#^8]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386751

/-- `∑{d}[n, n*#^8]` -/
def P5665838399217936275.Spec : Prop :=
  ∀ n, (P5665838399217936275.a n : ℤ) = A386751 n

theorem P5665838399217936275.correct : P5665838399217936275.Spec := by
  intro n
  simp only [A386751]

end A386751

/-! ## A386751.P10406817144502430012

`n*∑{d}[n, #²²²]`
-/

namespace A386751.P10406817144502430012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), ((d ^ 2) ^ 2) ^ 2)

end

end A386751.P10406817144502430012

namespace A386751

/-- `n*∑{d}[n, #²²²]` -/
def P10406817144502430012.Spec : Prop :=
  ∀ n, (P10406817144502430012.a n : ℤ) = A386751 n

end A386751

/-! ## A386751.P17914218687134088650

`A386778(n)/A028310(n)`
-/

namespace A386751.P17914218687134088650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386778 n : ℚ) / (A028310 n : ℚ)

end

end A386751.P17914218687134088650

namespace A386751

/-- `A386778(n)/A028310(n)` -/
def P17914218687134088650.Spec : Prop :=
  ∀ n, P17914218687134088650.a n = (A386751 n : ℚ)

end A386751

/-! ## A386751.P13611077835900236865

`A386782(n)/A253909(n)`
-/

namespace A386751.P13611077835900236865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386782 n : ℚ) / (A253909 n : ℚ)

end

end A386751.P13611077835900236865

namespace A386751

/-- `A386782(n)/A253909(n)` -/
def P13611077835900236865.Spec : Prop :=
  ∀ n, P13611077835900236865.a n = (A386751 n : ℚ)

end A386751

/-! ## A386751.P9723036864753156305

`A386778(n)/A137735(n²)`
-/

namespace A386751.P9723036864753156305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386778 n : ℚ) / (A137735 (n ^ 2) : ℚ)

end

end A386751.P9723036864753156305

namespace A386751

/-- `A386778(n)/A137735(n²)` -/
def P9723036864753156305.Spec : Prop :=
  ∀ n, P9723036864753156305.a n = (A386751 n : ℚ)

end A386751

/-!
# A386755: Triangle read by rows, where row terms are filled depending on divisibility of n. See comments.

The programs for A386755, there is no canonical definition to state claims against.
-/

/-! ## A386755.P9060021626985346139

`A326786(A366503(n+1))`
-/

namespace A386755.P9060021626985346139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (A366503 (n + 1)).toNat

end

end A386755.P9060021626985346139

/-! ## A386755.P8185507606443918033

`A211370(n+1)%A333257(A207997(n+1))`
-/

namespace A386755.P8185507606443918033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211370 (n + 1)) (A333257 (A207997 (n + 1)).toNat)

end

end A386755.P8185507606443918033

/-! ## A386755.P8255705786439094019

`and(A099305(A187100(n+1)), A368091(n))`
-/

namespace A386755.P8255705786439094019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099305 (A187100 (n + 1)).toNat) (A368091 n)

end

end A386755.P8255705786439094019

/-! ## A386755.P16234796824808379665

`A121444(A112333(n))*A275281(n)`
-/

namespace A386755.P16234796824808379665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (A112333 n).toNat * A275281 n

end

end A386755.P16234796824808379665

/-! ## A386755.P11745579503809080465

`A023416(A000040(n+1)%eq[1, A351014(n)])`
-/

namespace A386755.P11745579503809080465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.tmod (A000040 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A386755.P11745579503809080465

/-!
# A386756: a(n) is the number of sets of distinct four-cuboid combinations that fill an n X n X n cube excluding combinations that contain cube-shaped cuboids.

The programs for A386756, the canonical program `A386756.P11565520324240613349` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386756 has offset 1).

The definition of A386756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386756.P11565520324240613349

`A384311(n+1)-A052928(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386756

/-- `A384311(n+1)-A052928(n)` -/
def P11565520324240613349.Spec : Prop :=
  ∀ n, P11565520324240613349.a n = A386756 (n + 1)

theorem P11565520324240613349.correct : P11565520324240613349.Spec := by
  intro n
  simp only [A386756, Nat.add_sub_cancel]

end A386756

/-! ## A386756.P6047896309882479075

`A384311(n+1)-2*A004526(n)`
-/

namespace A386756.P6047896309882479075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384311 (n + 1) - 2 * A004526 n

end

end A386756.P6047896309882479075

namespace A386756

/-- `A384311(n+1)-2*A004526(n)` -/
def P6047896309882479075.Spec : Prop :=
  ∀ n, P6047896309882479075.a n = A386756 (n + 1)

end A386756

/-! ## A386756.P11632189440065046148

`A384311(n+1)+A387598(n+1)-A381847(n+1)`
-/

namespace A386756.P11632189440065046148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384311 (n + 1) + (A387598 (n + 1) - A381847 (n + 1))

end

end A386756.P11632189440065046148

namespace A386756

/-- `A384311(n+1)+A387598(n+1)-A381847(n+1)` -/
def P11632189440065046148.Spec : Prop :=
  ∀ n, P11632189440065046148.a n = A386756 (n + 1)

end A386756

/-! ## A386756.P12240853281403325955

`A386779(A141214(n+1))`
-/

namespace A386756.P12240853281403325955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386779 (A141214 (n + 1)).toNat

end

end A386756.P12240853281403325955

namespace A386756

/-- `A386779(A141214(n+1))` -/
def P12240853281403325955.Spec : Prop :=
  ∀ n, P12240853281403325955.a n = A386756 (n + 1)

end A386756

/-!
# A386757: a(n) is the number of sets of noncongruent five-cuboid combinations that fill an n X n X n cube excluding combinations that contain cube-shaped cuboids.

The programs for A386757, there is no canonical definition to state claims against.
-/

/-! ## A386757.P13871012231314129886

`A046812(A045630(n))`
-/

namespace A386757.P13871012231314129886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046812 (A045630 n).toNat

end

end A386757.P13871012231314129886

/-!
# A386758: Number of decimal digits in the n-th Lucas number.

The programs for A386758, the canonical program `A386758.P2105322873788982803` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386758 has offset 0).

The definition of A386758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386758.P2105322873788982803

`∑{digits}[A000032(n), A055642(#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A386758

/-- `∑{digits}[A000032(n), A055642(#)]` -/
def P2105322873788982803.Spec : Prop :=
  ∀ n, P2105322873788982803.a n = A386758 n

theorem P2105322873788982803.correct : P2105322873788982803.Spec := by
  intro n
  simp only [A386758]

end A386758

/-! ## A386758.P7057251244461877103

`∑{digits}[A014217(n), A179051(#)]`
-/

namespace A386758.P7057251244461877103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A179051 x).sum

end

end A386758.P7057251244461877103

namespace A386758

/-- `∑{digits}[A014217(n), A179051(#)]` -/
def P7057251244461877103.Spec : Prop :=
  ∀ n, P7057251244461877103.a n = A386758 n

end A386758

/-! ## A386758.P10056683202978061866

`∑{digits}[A000032(n), A260529(#)]`
-/

namespace A386758.P10056683202978061866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A260529 x).sum

end

end A386758.P10056683202978061866

namespace A386758

/-- `∑{digits}[A000032(n), A260529(#)]` -/
def P10056683202978061866.Spec : Prop :=
  ∀ n, P10056683202978061866.a n = A386758 n

end A386758

/-! ## A386758.P16606030741533554866

`∑{digits}[A001350(n), A303694(#)]`
-/

namespace A386758.P16606030741533554866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A303694 x).sum

end

end A386758.P16606030741533554866

namespace A386758

/-- `∑{digits}[A001350(n), A303694(#)]` -/
def P16606030741533554866.Spec : Prop :=
  ∀ n, P16606030741533554866.a n = A386758 n

end A386758

/-! ## A386758.P6793467283105379336

`∑{digits}[A061084(n+1), A053632(#)]`
-/

namespace A386758.P6793467283105379336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A053632 x).sum

end

end A386758.P6793467283105379336

namespace A386758

/-- `∑{digits}[A061084(n+1), A053632(#)]` -/
def P6793467283105379336.Spec : Prop :=
  ∀ n, P6793467283105379336.a n = A386758 n

end A386758

/-! ## A386758.P7042637838693508833

`∑{digits}[A303427(2*n), A152828(#)]`
-/

namespace A386758.P7042637838693508833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A152828 x).sum

end

end A386758.P7042637838693508833

namespace A386758

/-- `∑{digits}[A303427(2*n), A152828(#)]` -/
def P7042637838693508833.Spec : Prop :=
  ∀ n, P7042637838693508833.a n = A386758 n

end A386758

/-! ## A386758.P6767244055648702939

`A070939(A032739(n))`
-/

namespace A386758.P6767244055648702939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A032739 n).toNat

end

end A386758.P6767244055648702939

namespace A386758

/-- `A070939(A032739(n))` -/
def P6767244055648702939.Spec : Prop :=
  ∀ n, P6767244055648702939.a n = A386758 n

end A386758

/-!
# A386759: a(n) = 4^n * (4*n)! / (n! * (4!)^n).

The programs for A386759, the canonical program `A386759.P502578375539311596` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386759 has offset 0).

The definition of A386759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386759.P15341108238261514240

`4^n*A025036(n)`
-/

namespace A386759.P15341108238261514240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A025036 n

end

end A386759.P15341108238261514240

namespace A386759

/-- `4^n*A025036(n)` -/
def P15341108238261514240.Spec : Prop :=
  ∀ n, P15341108238261514240.a n = A386759 n

end A386759

/-! ## A386759.P502578375539311596

`4^n*(4*n)!/(n!*4!^n)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386759

/-- `4^n*(4*n)!/(n!*4!^n)` -/
def P502578375539311596.Spec : Prop :=
  ∀ n, P502578375539311596.a n = (A386759 n : ℚ)

end A386759

/-! ## A386759.P16692368061531478860

`A008977(n)/A006480(n)*A014606(n)`
-/

namespace A386759.P16692368061531478860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008977 n : ℚ) / (A006480 n : ℚ) * (A014606 n : ℚ)

end

end A386759.P16692368061531478860

namespace A386759

/-- `A008977(n)/A006480(n)*A014606(n)` -/
def P16692368061531478860.Spec : Prop :=
  ∀ n, P16692368061531478860.a n = (A386759 n : ℚ)

end A386759

/-!
# A386762: Perfect powers of nonsquarefree numbers k that are not squareful.

The programs for A386762, there is no canonical definition to state claims against.
-/

/-! ## A386762.P1463705002212424572

`∪[A388549(n+1), A389947(n+1)]`
-/

namespace A386762.P1463705002212424572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P1463705002212424572

/-! ## A386762.P6272099981578199471

`∪[A388549(n+1), A390379(n+1)]`
-/

namespace A386762.P6272099981578199471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P6272099981578199471

/-! ## A386762.P15204438951462553808

`∪[A389394(n+1), A389678(n+1)]`
-/

namespace A386762.P15204438951462553808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P15204438951462553808

/-! ## A386762.P9672514652717848000

`∪[A389394(n+1), A389695(n+1)]`
-/

namespace A386762.P9672514652717848000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P9672514652717848000

/-! ## A386762.P1192208483698229644

`∪[A389397(n+1), A389695(n+1)]`
-/

namespace A386762.P1192208483698229644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P1192208483698229644

/-! ## A386762.P4177714107010425650

`∪[A390379(n+1), A390381(n+1)]`
-/

namespace A386762.P4177714107010425650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P4177714107010425650

/-! ## A386762.P5199290817314780509

`∪[A389947(n+1), A392098(n+1)]`
-/

namespace A386762.P5199290817314780509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P5199290817314780509

/-! ## A386762.P16322455273202320537

`∪[A389678(n+1), A392424(n+1)]`
-/

namespace A386762.P16322455273202320537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P16322455273202320537

/-! ## A386762.P12493284601021288209

`∪[A389695(n+1), A392424(n+1)]`
-/

namespace A386762.P12493284601021288209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P12493284601021288209

/-! ## A386762.P1090814386388950666

`∪[A390379(n+1), A392098(n+1)]`
-/

namespace A386762.P1090814386388950666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P1090814386388950666

/-! ## A386762.P17866128369279089807

`∩[A389864(n+1), A390823(n+1)]`
-/

namespace A386762.P17866128369279089807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P17866128369279089807

/-! ## A386762.P2210068585782815588

`∩[A359280(n+1), A390823(n+1)]`
-/

namespace A386762.P2210068585782815588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P2210068585782815588

/-! ## A386762.P9343863905124298815

`∩[A389752(n+1), A390823(n+1)]`
-/

namespace A386762.P9343863905124298815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386762.P9343863905124298815

/-!
# A386763: a(n) = Sum_{k=0..n} 5^k * 3^(n-k) * binomial(n+k-1,k).

The programs for A386763, the canonical program `A386763.P15406492986978153670` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386763 has offset 0).

The definition of A386763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386763.P15406492986978153670

`∑{#}[n, 5^#*(-2)^(n-#)*C(2*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386763

/-- `∑{#}[n, 5^#*(-2)^(n-#)*C(2*n, #)]` -/
def P15406492986978153670.Spec : Prop :=
  ∀ n, P15406492986978153670.a n = (A386763 n : ℚ)

end A386763

/-!
# A386764: a(n) = Sum_{k=0..n} 5^k * 3^(n-k) * binomial(2*n+k-1,k).

The programs for A386764, the canonical program `A386764.P5449780681924263890` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386764 has offset 0).

The definition of A386764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386764.P5449780681924263890

`∑{#}[n, 5^#*(-2)^(n-#)*C(3*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386764

/-- `∑{#}[n, 5^#*(-2)^(n-#)*C(3*n, #)]` -/
def P5449780681924263890.Spec : Prop :=
  ∀ n, P5449780681924263890.a n = (A386764 n : ℚ)

end A386764

/-!
# A386765: a(n) = Sum_{k=0..n} 5^k * 3^(n-k) * binomial(3*n+k-1,k).

The programs for A386765, the canonical program `A386765.P8837272321127604739` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386765 has offset 0).

The definition of A386765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386765.P8837272321127604739

`∑{#}[n, 5^#*(-2)^(n-#)*C(4*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386765

/-- `∑{#}[n, 5^#*(-2)^(n-#)*C(4*n, #)]` -/
def P8837272321127604739.Spec : Prop :=
  ∀ n, P8837272321127604739.a n = (A386765 n : ℚ)

end A386765

/-!
# A386766: a(n) = Sum_{k=0..n} 5^k * 2^(n-k) * binomial(n+k-1,k).

The programs for A386766, the canonical program `A386766.P2790892679889944943` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386766 has offset 0).

The definition of A386766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386766.P2790892679889944943

`∑{#}[n, 5^#*(-3)^(n-#)*C(2*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386766

/-- `∑{#}[n, 5^#*(-3)^(n-#)*C(2*n, #)]` -/
def P2790892679889944943.Spec : Prop :=
  ∀ n, P2790892679889944943.a n = (A386766 n : ℚ)

end A386766

/-!
# A386767: a(n) = Sum_{k=0..n} 5^k * 2^(n-k) * binomial(2*n+k-1,k).

The programs for A386767, the canonical program `A386767.P15427432603378977751` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386767 has offset 0).

The definition of A386767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386767.P15427432603378977751

`∑{#}[n, 5^#*(-3)^(n-#)*C(3*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386767

/-- `∑{#}[n, 5^#*(-3)^(n-#)*C(3*n, #)]` -/
def P15427432603378977751.Spec : Prop :=
  ∀ n, P15427432603378977751.a n = (A386767 n : ℚ)

end A386767

/-!
# A386768: a(n) = Sum_{k=0..n} 5^k * 2^(n-k) * binomial(3*n+k-1,k).

The programs for A386768, the canonical program `A386768.P8811341138068430456` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386768 has offset 0).

The definition of A386768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386768.P8811341138068430456

`∑{#}[n, 5^#*(-3)^(n-#)*C(4*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386768

/-- `∑{#}[n, 5^#*(-3)^(n-#)*C(4*n, #)]` -/
def P8811341138068430456.Spec : Prop :=
  ∀ n, P8811341138068430456.a n = (A386768 n : ℚ)

end A386768

/-!
# A386772: Expansion of (1/x) * Series_Reversion( x * (1-3*x) / (1+2*x)^2 ).

The programs for A386772, there is no canonical definition to state claims against.
-/

/-! ## A386772.P14790468576197565354

`A051580(n)-A026728(A260847(n+1))`
-/

namespace A386772.P14790468576197565354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051580 n - A026728 (A260847 (n + 1)).toNat

end

end A386772.P14790468576197565354

/-!
# A386776: Number of divisors d of n such that d^d == d^n (mod n).

The programs for A386776, there is no canonical definition to state claims against.
-/

/-! ## A386776.P17553429451142646557

`A237591(∏{e}[n+1, 2*#+1])%A078866(n+1)`
-/

namespace A386776.P17553429451142646557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237591 (∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1))) (A078866 (n + 1))

end

end A386776.P17553429451142646557

/-! ## A386776.P15561483560248049791

`A265690(A285573(n+1)%A229323(n+1))`
-/

namespace A386776.P15561483560248049791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265690 (Int.tmod (A285573 (n + 1)) (A229323 (n + 1))).toNat

end

end A386776.P15561483560248049791

/-! ## A386776.P5573269142958376237

`A358551(gcd(A046523(n+1), A358539(n+3)))`
-/

namespace A386776.P5573269142958376237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358551 (Int.gcd (A046523 (n + 1)) (A358539 (n + 3)))

end

end A386776.P5573269142958376237

/-! ## A386776.P1744242590428047334

`A237591(A048691(n+1)%A160427(2*(n+2)))`
-/

namespace A386776.P1744242590428047334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (Int.tmod (A048691 (n + 1)) (A160427 (2 * (n + 2)))).toNat

end

end A386776.P1744242590428047334

/-!
# A386777: a(n) = n^2*sigma_6(n).

The programs for A386777, the canonical program `A386777.P12656423041185433258` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386777 has offset 0).

The definition of A386777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386777.P12656423041185433258

`∑{d}[n, (n*#^3)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386777

/-- `∑{d}[n, (n*#^3)²]` -/
def P12656423041185433258.Spec : Prop :=
  ∀ n, (P12656423041185433258.a n : ℤ) = A386777 n

theorem P12656423041185433258.correct : P12656423041185433258.Spec := by
  intro n
  simp only [A386777]

end A386777

/-! ## A386777.P7332897252424131441

`n*∑{d}[n, n*#^6]`
-/

namespace A386777.P7332897252424131441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n * d ^ 6)

end

end A386777.P7332897252424131441

namespace A386777

/-- `n*∑{d}[n, n*#^6]` -/
def P7332897252424131441.Spec : Prop :=
  ∀ n, (P7332897252424131441.a n : ℤ) = A386777 n

end A386777

/-! ## A386777.P5629498750633008498

`n*A386750(n)`
-/

namespace A386777.P5629498750633008498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386750 n

end

end A386777.P5629498750633008498

namespace A386777

/-- `n*A386750(n)` -/
def P5629498750633008498.Spec : Prop :=
  ∀ n, P5629498750633008498.a n = A386777 n

end A386777

/-! ## A386777.P13489890125813675285

`A386780(n)/A028310(n)`
-/

namespace A386777.P13489890125813675285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386780 n : ℚ) / (A028310 n : ℚ)

end

end A386777.P13489890125813675285

namespace A386777

/-- `A386780(n)/A028310(n)` -/
def P13489890125813675285.Spec : Prop :=
  ∀ n, P13489890125813675285.a n = (A386777 n : ℚ)

end A386777

/-! ## A386777.P2767849794670137851

`A386786(n)/A253909(n)`
-/

namespace A386777.P2767849794670137851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386786 n : ℚ) / (A253909 n : ℚ)

end

end A386777.P2767849794670137851

namespace A386777

/-- `A386786(n)/A253909(n)` -/
def P2767849794670137851.Spec : Prop :=
  ∀ n, P2767849794670137851.a n = (A386777 n : ℚ)

end A386777

/-! ## A386777.P17706171611508120873

`A000290(n)*A013954(A028310(n))`
-/

namespace A386777.P17706171611508120873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A013954 (A028310 n).toNat

end

end A386777.P17706171611508120873

namespace A386777

/-- `A000290(n)*A013954(A028310(n))` -/
def P17706171611508120873.Spec : Prop :=
  ∀ n, P17706171611508120873.a n = A386777 n

end A386777

/-!
# A386778: a(n) = n^2*sigma_8(n).

The programs for A386778, the canonical program `A386778.P15489260822773192962` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386778 has offset 0).

The definition of A386778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386778.P15489260822773192962

`∑{d}[n, (n*#^4)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386778

/-- `∑{d}[n, (n*#^4)²]` -/
def P15489260822773192962.Spec : Prop :=
  ∀ n, (P15489260822773192962.a n : ℤ) = A386778 n

theorem P15489260822773192962.correct : P15489260822773192962.Spec := by
  intro n
  simp only [A386778]

end A386778

/-! ## A386778.P16439258223117989395

`n*∑{d}[n, n*#^8]`
-/

namespace A386778.P16439258223117989395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n * d ^ 8)

end

end A386778.P16439258223117989395

namespace A386778

/-- `n*∑{d}[n, n*#^8]` -/
def P16439258223117989395.Spec : Prop :=
  ∀ n, (P16439258223117989395.a n : ℤ) = A386778 n

end A386778

/-! ## A386778.P2734969799138523542

`n*A386751(n)`
-/

namespace A386778.P2734969799138523542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386751 n

end

end A386778.P2734969799138523542

namespace A386778

/-- `n*A386751(n)` -/
def P2734969799138523542.Spec : Prop :=
  ∀ n, P2734969799138523542.a n = A386778 n

end A386778

/-! ## A386778.P17649378463129192726

`A386782(n)/A028310(n)`
-/

namespace A386778.P17649378463129192726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386782 n : ℚ) / (A028310 n : ℚ)

end

end A386778.P17649378463129192726

namespace A386778

/-- `A386782(n)/A028310(n)` -/
def P17649378463129192726.Spec : Prop :=
  ∀ n, P17649378463129192726.a n = (A386778 n : ℚ)

end A386778

/-! ## A386778.P3065203311353441205

`A000290(n)*A013956(A028310(n))`
-/

namespace A386778.P3065203311353441205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A013956 (A028310 n).toNat

end

end A386778.P3065203311353441205

namespace A386778

/-- `A000290(n)*A013956(A028310(n))` -/
def P3065203311353441205.Spec : Prop :=
  ∀ n, P3065203311353441205.a n = A386778 n

end A386778

/-!
# A386779: Array read by descending antidiagonals: T(n,k) is the number of ways to partition an n X n X n cube into k noncongruent cuboids excluding cube-shaped parts.

The programs for A386779, there is no canonical definition to state claims against.
-/

/-! ## A386779.P7472444399901117550

`A053616(A053616(n)^A368869(n))`
-/

namespace A386779.P7472444399901117550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (SequenceMachineLib.roundAway ((A053616 n : ℚ) ^ (A368869 n : ℤ))).toNat

end

end A386779.P7472444399901117550

/-! ## A386779.P18068323046456706221

`A285097(A265656(n+1))`
-/

namespace A386779.P18068323046456706221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A265656 (n + 1)).toNat

end

end A386779.P18068323046456706221

/-! ## A386779.P11307691828251467865

`A334028(A121326(n+1)%A187783(n))`
-/

namespace A386779.P11307691828251467865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (Int.tmod (A121326 (n + 1)) (A187783 n)).toNat

end

end A386779.P11307691828251467865

/-! ## A386779.P12789050400374226302

`A099053(A335545(n+1))-A210540(A362648(n))`
-/

namespace A386779.P12789050400374226302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099053 (A335545 (n + 1)).toNat - A210540 (A362648 n).toNat

end

end A386779.P12789050400374226302

/-! ## A386779.P10437646908205561388

`A131810(A098542(n))`
-/

namespace A386779.P10437646908205561388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131810 (A098542 n).toNat

end

end A386779.P10437646908205561388

/-!
# A386780: a(n) = n^3*sigma_6(n).

The programs for A386780, the canonical program `A386780.P13078752620683526910` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386780 has offset 0).

The definition of A386780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386780.P13078752620683526910

`∑{d}[n, (n*#²)^3]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386780

/-- `∑{d}[n, (n*#²)^3]` -/
def P13078752620683526910.Spec : Prop :=
  ∀ n, (P13078752620683526910.a n : ℤ) = A386780 n

theorem P13078752620683526910.correct : P13078752620683526910.Spec := by
  intro n
  simp only [A386780]

end A386780

/-! ## A386780.P5622819783091025379

`n*A386777(n)`
-/

namespace A386780.P5622819783091025379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386777 n

end

end A386780.P5622819783091025379

namespace A386780

/-- `n*A386777(n)` -/
def P5622819783091025379.Spec : Prop :=
  ∀ n, P5622819783091025379.a n = A386780 n

end A386780

/-! ## A386780.P3719908037098624465

`n²*A386750(n)`
-/

namespace A386780.P3719908037098624465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A386750 n

end

end A386780.P3719908037098624465

namespace A386780

/-- `n²*A386750(n)` -/
def P3719908037098624465.Spec : Prop :=
  ∀ n, P3719908037098624465.a n = A386780 n

end A386780

/-! ## A386780.P18157380006136965378

`∑{d}[n, n*#^6]*A000290(n)`
-/

namespace A386780.P18157380006136965378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), n * d ^ 6 : ℕ) : ℤ) * A000290 n

end

end A386780.P18157380006136965378

namespace A386780

/-- `∑{d}[n, n*#^6]*A000290(n)` -/
def P18157380006136965378.Spec : Prop :=
  ∀ n, P18157380006136965378.a n = A386780 n

end A386780

/-! ## A386780.P17833751685353553198

`A386786(n)/A028310(n)`
-/

namespace A386780.P17833751685353553198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386786 n : ℚ) / (A028310 n : ℚ)

end

end A386780.P17833751685353553198

namespace A386780

/-- `A386786(n)/A028310(n)` -/
def P17833751685353553198.Spec : Prop :=
  ∀ n, P17833751685353553198.a n = (A386780 n : ℚ)

end A386780

/-! ## A386780.P17140643317660485650

`A386786(n)/(A000007(n)+n)`
-/

namespace A386780.P17140643317660485650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386786 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A386780.P17140643317660485650

namespace A386780

/-- `A386786(n)/(A000007(n)+n)` -/
def P17140643317660485650.Spec : Prop :=
  ∀ n, P17140643317660485650.a n = (A386780 n : ℚ)

end A386780

/-!
# A386781: a(n) = n^3*sigma_7(n).

The programs for A386781, the canonical program `A386781.P8985128467454895527` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386781 has offset 0).

The definition of A386781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386781.P8985128467454895527

`n*∑{d}[n, n²*#^7]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386781

/-- `n*∑{d}[n, n²*#^7]` -/
def P8985128467454895527.Spec : Prop :=
  ∀ n, (P8985128467454895527.a n : ℤ) = A386781 n

theorem P8985128467454895527.correct : P8985128467454895527.Spec := by
  intro n
  simp only [A386781]

end A386781

/-! ## A386781.P3353237640030094251

`n*A282753(n)`
-/

namespace A386781.P3353237640030094251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282753 n

end

end A386781.P3353237640030094251

namespace A386781

/-- `n*A282753(n)` -/
def P3353237640030094251.Spec : Prop :=
  ∀ n, P3353237640030094251.a n = A386781 n

theorem P3353237640030094251.correct : P3353237640030094251.Spec := by
  intro n
  simp only [A386781, Nat.add_sub_cancel, A386781.P3353237640030094251.a, A386781.P8985128467454895527.f1, A386781.P8985128467454895527.a, A282753, A282753.P2769917116323268698.f1, A282753.P2769917116323268698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386781

/-! ## A386781.P15272562555379515405

`n²*A282060(n)`
-/

namespace A386781.P15272562555379515405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A282060 n

end

end A386781.P15272562555379515405

namespace A386781

/-- `n²*A282060(n)` -/
def P15272562555379515405.Spec : Prop :=
  ∀ n, P15272562555379515405.a n = A386781 n

end A386781

/-! ## A386781.P445458648734983258

`∑{d}[n, n*#^7]*A000290(n)`
-/

namespace A386781.P445458648734983258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), n * d ^ 7 : ℕ) : ℤ) * A000290 n

end

end A386781.P445458648734983258

namespace A386781

/-- `∑{d}[n, n*#^7]*A000290(n)` -/
def P445458648734983258.Spec : Prop :=
  ∀ n, P445458648734983258.a n = A386781 n

end A386781

/-! ## A386781.P3990465048472823703

`A386787(n)/A028310(n)`
-/

namespace A386781.P3990465048472823703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386787 n : ℚ) / (A028310 n : ℚ)

end

end A386781.P3990465048472823703

namespace A386781

/-- `A386787(n)/A028310(n)` -/
def P3990465048472823703.Spec : Prop :=
  ∀ n, P3990465048472823703.a n = (A386781 n : ℚ)

end A386781

/-!
# A386782: a(n) = n^3*sigma_8(n).

The programs for A386782, the canonical program `A386782.P12551871518556311143` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386782 has offset 0).

The definition of A386782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386782.P12551871518556311143

`n*∑{d}[n, (n*#^4)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386782

/-- `n*∑{d}[n, (n*#^4)²]` -/
def P12551871518556311143.Spec : Prop :=
  ∀ n, (P12551871518556311143.a n : ℤ) = A386782 n

theorem P12551871518556311143.correct : P12551871518556311143.Spec := by
  intro n
  simp only [A386782]

end A386782

/-! ## A386782.P745943840448368972

`n*A386778(n)`
-/

namespace A386782.P745943840448368972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386778 n

end

end A386782.P745943840448368972

namespace A386782

/-- `n*A386778(n)` -/
def P745943840448368972.Spec : Prop :=
  ∀ n, P745943840448368972.a n = A386782 n

theorem P745943840448368972.correct : P745943840448368972.Spec := by
  intro n
  simp only [A386782, Nat.add_sub_cancel, A386782.P745943840448368972.a, A386782.P12551871518556311143.f1, A386782.P12551871518556311143.a, A386778, A386778.P15489260822773192962.f1, A386778.P15489260822773192962.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386782

/-! ## A386782.P17220157060968327658

`n²*A386751(n)`
-/

namespace A386782.P17220157060968327658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A386751 n

end

end A386782.P17220157060968327658

namespace A386782

/-- `n²*A386751(n)` -/
def P17220157060968327658.Spec : Prop :=
  ∀ n, P17220157060968327658.a n = A386782 n

end A386782

/-! ## A386782.P1602037756743641540

`A386788(n)/A065033(2*n)`
-/

namespace A386782.P1602037756743641540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386788 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A386782.P1602037756743641540

namespace A386782

/-- `A386788(n)/A065033(2*n)` -/
def P1602037756743641540.Spec : Prop :=
  ∀ n, P1602037756743641540.a n = (A386782 n : ℚ)

end A386782

/-! ## A386782.P12109485967980820377

`A386788(n)/A123108(2*n)`
-/

namespace A386782.P12109485967980820377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386788 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A386782.P12109485967980820377

namespace A386782

/-- `A386788(n)/A123108(2*n)` -/
def P12109485967980820377.Spec : Prop :=
  ∀ n, P12109485967980820377.a n = (A386782 n : ℚ)

end A386782

/-!
# A386783: a(n) = n^4*sigma_2(n).

The programs for A386783, the canonical program `A386783.P827810172145761178` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386783 has offset 0).

The definition of A386783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386783.P827810172145761178

`∑{d}[n, (#*n²)²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386783

/-- `∑{d}[n, (#*n²)²]` -/
def P827810172145761178.Spec : Prop :=
  ∀ n, (P827810172145761178.a n : ℤ) = A386783 n

theorem P827810172145761178.correct : P827810172145761178.Spec := by
  intro n
  simp only [A386783]

end A386783

/-! ## A386783.P16616145091551961009

`n*A386746(n)`
-/

namespace A386783.P16616145091551961009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386746 n

end

end A386783.P16616145091551961009

namespace A386783

/-- `n*A386746(n)` -/
def P16616145091551961009.Spec : Prop :=
  ∀ n, P16616145091551961009.a n = A386783 n

end A386783

/-! ## A386783.P10401959189678126987

`n²*A386745(n)`
-/

namespace A386783.P10401959189678126987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A386745 n

end

end A386783.P10401959189678126987

namespace A386783

/-- `n²*A386745(n)` -/
def P10401959189678126987.Spec : Prop :=
  ∀ n, P10401959189678126987.a n = A386783 n

end A386783

/-! ## A386783.P6148670598603896986

`n²²*A001157(A028310(n))`
-/

namespace A386783.P6148670598603896986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A001157 (A028310 n).toNat

end

end A386783.P6148670598603896986

namespace A386783

/-- `n²²*A001157(A028310(n))` -/
def P6148670598603896986.Spec : Prop :=
  ∀ n, P6148670598603896986.a n = A386783 n

end A386783

/-! ## A386783.P11594019552796938838

`A000583(n)*A001157(A000007(n)+n)`
-/

namespace A386783.P11594019552796938838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n * A001157 (A000007 n + (n : ℤ)).toNat

end

end A386783.P11594019552796938838

namespace A386783

/-- `A000583(n)*A001157(A000007(n)+n)` -/
def P11594019552796938838.Spec : Prop :=
  ∀ n, P11594019552796938838.a n = A386783 n

end A386783

/-!
# A386784: a(n) = n^4*sigma_4(n).

The programs for A386784, the canonical program `A386784.P17494537975093454927` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386784 has offset 0).

The definition of A386784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386784.P17494537975093454927

`∑{d}[n, (n*#)^4]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386784

/-- `∑{d}[n, (n*#)^4]` -/
def P17494537975093454927.Spec : Prop :=
  ∀ n, (P17494537975093454927.a n : ℤ) = A386784 n

theorem P17494537975093454927.correct : P17494537975093454927.Spec := by
  intro n
  simp only [A386784]

end A386784

/-! ## A386784.P17561839528245404915

`n²*∑{d}[n, (n*#²)²]`
-/

namespace A386784.P17561839528245404915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ d ∈ Nat.divisors (f1 n), (n * d ^ 2) ^ 2)

end

end A386784.P17561839528245404915

namespace A386784

/-- `n²*∑{d}[n, (n*#²)²]` -/
def P17561839528245404915.Spec : Prop :=
  ∀ n, (P17561839528245404915.a n : ℤ) = A386784 n

end A386784

/-! ## A386784.P2163809708223078342

`n*A386748(n)`
-/

namespace A386784.P2163809708223078342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386748 n

end

end A386784.P2163809708223078342

namespace A386784

/-- `n*A386748(n)` -/
def P2163809708223078342.Spec : Prop :=
  ∀ n, P2163809708223078342.a n = A386784 n

end A386784

/-! ## A386784.P12444038057593949610

`n²*A386747(n)`
-/

namespace A386784.P12444038057593949610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A386747 n

end

end A386784.P12444038057593949610

namespace A386784

/-- `n²*A386747(n)` -/
def P12444038057593949610.Spec : Prop :=
  ∀ n, P12444038057593949610.a n = A386784 n

end A386784

/-! ## A386784.P11586750184290189464

`n^3*A386749(n)`
-/

namespace A386784.P11586750184290189464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A386749 n

end

end A386784.P11586750184290189464

namespace A386784

/-- `n^3*A386749(n)` -/
def P11586750184290189464.Spec : Prop :=
  ∀ n, P11586750184290189464.a n = A386784 n

end A386784

/-!
# A386785: a(n) = n^4*sigma_5(n).

The programs for A386785, the canonical program `A386785.P10566170912316061246` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386785 has offset 0).

The definition of A386785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386785.P10566170912316061246

`n²*∑{d}[n, n²*#^5]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386785

/-- `n²*∑{d}[n, n²*#^5]` -/
def P10566170912316061246.Spec : Prop :=
  ∀ n, (P10566170912316061246.a n : ℤ) = A386785 n

theorem P10566170912316061246.correct : P10566170912316061246.Spec := by
  intro n
  simp only [A386785]

end A386785

/-! ## A386785.P2158710867712981643

`n*A282781(n)`
-/

namespace A386785.P2158710867712981643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282781 n

end

end A386785.P2158710867712981643

namespace A386785

/-- `n*A282781(n)` -/
def P2158710867712981643.Spec : Prop :=
  ∀ n, P2158710867712981643.a n = A386785 n

theorem P2158710867712981643.correct : P2158710867712981643.Spec := by
  intro n
  simp only [A386785, Nat.add_sub_cancel, A386785.P2158710867712981643.a, A386785.P10566170912316061246.f1, A386785.P10566170912316061246.a, A282781, A282781.P11971029506536278337.f1, A282781.P11971029506536278337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386785

/-! ## A386785.P12874846185326366866

`n²*A282751(n)`
-/

namespace A386785.P12874846185326366866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A282751 n

end

end A386785.P12874846185326366866

namespace A386785

/-- `n²*A282751(n)` -/
def P12874846185326366866.Spec : Prop :=
  ∀ n, P12874846185326366866.a n = A386785 n

theorem P12874846185326366866.correct : P12874846185326366866.Spec := by
  intro n
  simp only [A386785, Nat.add_sub_cancel, A386785.P12874846185326366866.a, A386785.P10566170912316061246.f1, A386785.P10566170912316061246.a, A282751, A282751.P13496830146791819675.f1, A282751.P13496830146791819675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386785

/-! ## A386785.P11108997561224656927

`n^3*A282050(n)`
-/

namespace A386785.P11108997561224656927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A282050 n

end

end A386785.P11108997561224656927

namespace A386785

/-- `n^3*A282050(n)` -/
def P11108997561224656927.Spec : Prop :=
  ∀ n, P11108997561224656927.a n = A386785 n

end A386785

/-! ## A386785.P2377223645715630317

`A000583(n)*A001160(A028310(n))`
-/

namespace A386785.P2377223645715630317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n * A001160 (A028310 n).toNat

end

end A386785.P2377223645715630317

namespace A386785

/-- `A000583(n)*A001160(A028310(n))` -/
def P2377223645715630317.Spec : Prop :=
  ∀ n, P2377223645715630317.a n = A386785 n

end A386785

/-!
# A386786: a(n) = n^4*sigma_6(n).

The programs for A386786, the canonical program `A386786.P18419305462551058444` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386786 has offset 0).

The definition of A386786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386786.P18419305462551058444

`n*∑{d}[n, (n*#²)^3]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386786

/-- `n*∑{d}[n, (n*#²)^3]` -/
def P18419305462551058444.Spec : Prop :=
  ∀ n, (P18419305462551058444.a n : ℤ) = A386786 n

theorem P18419305462551058444.correct : P18419305462551058444.Spec := by
  intro n
  simp only [A386786]

end A386786

/-! ## A386786.P301932501222961891

`n*A386780(n)`
-/

namespace A386786.P301932501222961891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386780 n

end

end A386786.P301932501222961891

namespace A386786

/-- `n*A386780(n)` -/
def P301932501222961891.Spec : Prop :=
  ∀ n, P301932501222961891.a n = A386786 n

theorem P301932501222961891.correct : P301932501222961891.Spec := by
  intro n
  simp only [A386786, Nat.add_sub_cancel, A386786.P301932501222961891.a, A386786.P18419305462551058444.f1, A386786.P18419305462551058444.a, A386780, A386780.P13078752620683526910.f1, A386780.P13078752620683526910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386786

/-! ## A386786.P13142609643735554037

`n²*A386777(n)`
-/

namespace A386786.P13142609643735554037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A386777 n

end

end A386786.P13142609643735554037

namespace A386786

/-- `n²*A386777(n)` -/
def P13142609643735554037.Spec : Prop :=
  ∀ n, P13142609643735554037.a n = A386786 n

end A386786

/-! ## A386786.P3001292800379792061

`n^3*A386750(n)`
-/

namespace A386786.P3001292800379792061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A386750 n

end

end A386786.P3001292800379792061

namespace A386786

/-- `n^3*A386750(n)` -/
def P3001292800379792061.Spec : Prop :=
  ∀ n, P3001292800379792061.a n = A386786 n

end A386786

/-! ## A386786.P13294317300133890885

`n*A386750(n)*A028310(n)²`
-/

namespace A386786.P13294317300133890885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386750 n * A028310 n ^ 2

end

end A386786.P13294317300133890885

namespace A386786

/-- `n*A386750(n)*A028310(n)²` -/
def P13294317300133890885.Spec : Prop :=
  ∀ n, P13294317300133890885.a n = A386786 n

end A386786

/-! ## A386786.P6728992107637190157

`n*A386750(n)*A181983(n)²`
-/

namespace A386786.P6728992107637190157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386750 n * A181983 n ^ 2

end

end A386786.P6728992107637190157

namespace A386786

/-- `n*A386750(n)*A181983(n)²` -/
def P6728992107637190157.Spec : Prop :=
  ∀ n, P6728992107637190157.a n = A386786 n

end A386786

/-! ## A386786.P6710757201540543807

`A000290(n)*A013954(A028310(n))*n²`
-/

namespace A386786.P6710757201540543807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A013954 (A028310 n).toNat * (n ^ 2 : ℤ)

end

end A386786.P6710757201540543807

namespace A386786

/-- `A000290(n)*A013954(A028310(n))*n²` -/
def P6710757201540543807.Spec : Prop :=
  ∀ n, P6710757201540543807.a n = A386786 n

end A386786

/-! ## A386786.P17281580362903962716

`n*A386750(n)*A028310(n²)`
-/

namespace A386786.P17281580362903962716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386750 n * A028310 (n ^ 2)

end

end A386786.P17281580362903962716

namespace A386786

/-- `n*A386750(n)*A028310(n²)` -/
def P17281580362903962716.Spec : Prop :=
  ∀ n, P17281580362903962716.a n = A386786 n

end A386786

/-!
# A386787: a(n) = n^4*sigma_7(n).

The programs for A386787, the canonical program `A386787.P15333458997169148532` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386787 has offset 0).

The definition of A386787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386787.P15333458997169148532

`n²*∑{d}[n, n²*#^7]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386787

/-- `n²*∑{d}[n, n²*#^7]` -/
def P15333458997169148532.Spec : Prop :=
  ∀ n, (P15333458997169148532.a n : ℤ) = A386787 n

theorem P15333458997169148532.correct : P15333458997169148532.Spec := by
  intro n
  simp only [A386787]

end A386787

/-! ## A386787.P14988131589624600019

`n*A386781(n)`
-/

namespace A386787.P14988131589624600019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386781 n

end

end A386787.P14988131589624600019

namespace A386787

/-- `n*A386781(n)` -/
def P14988131589624600019.Spec : Prop :=
  ∀ n, P14988131589624600019.a n = A386787 n

theorem P14988131589624600019.correct : P14988131589624600019.Spec := by
  intro n
  simp only [A386787, Nat.add_sub_cancel, A386787.P14988131589624600019.a, A386787.P15333458997169148532.f1, A386787.P15333458997169148532.a, A386781, A386781.P8985128467454895527.f1, A386781.P8985128467454895527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386787

/-! ## A386787.P7069913862141785991

`n²*A282753(n)`
-/

namespace A386787.P7069913862141785991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A282753 n

end

end A386787.P7069913862141785991

namespace A386787

/-- `n²*A282753(n)` -/
def P7069913862141785991.Spec : Prop :=
  ∀ n, P7069913862141785991.a n = A386787 n

theorem P7069913862141785991.correct : P7069913862141785991.Spec := by
  intro n
  simp only [A386787, Nat.add_sub_cancel, A386787.P7069913862141785991.a, A386787.P15333458997169148532.f1, A386787.P15333458997169148532.a, A282753, A282753.P2769917116323268698.f1, A282753.P2769917116323268698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386787

/-! ## A386787.P11887501716475330783

`n^3*A282060(n)`
-/

namespace A386787.P11887501716475330783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A282060 n

end

end A386787.P11887501716475330783

namespace A386787

/-- `n^3*A282060(n)` -/
def P11887501716475330783.Spec : Prop :=
  ∀ n, P11887501716475330783.a n = A386787 n

end A386787

/-!
# A386788: a(n) = n^4*sigma_8(n).

The programs for A386788, the canonical program `A386788.P16067395032970393946` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386788 has offset 0).

The definition of A386788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386788.P16067395032970393946

`∑{d}[n, (n*#²)^4]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386788

/-- `∑{d}[n, (n*#²)^4]` -/
def P16067395032970393946.Spec : Prop :=
  ∀ n, (P16067395032970393946.a n : ℤ) = A386788 n

theorem P16067395032970393946.correct : P16067395032970393946.Spec := by
  intro n
  simp only [A386788]

end A386788

/-! ## A386788.P2192591366448812629

`n*A386782(n)`
-/

namespace A386788.P2192591366448812629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386782 n

end

end A386788.P2192591366448812629

namespace A386788

/-- `n*A386782(n)` -/
def P2192591366448812629.Spec : Prop :=
  ∀ n, P2192591366448812629.a n = A386788 n

end A386788

/-! ## A386788.P14532128814964938642

`n²*A386778(n)`
-/

namespace A386788.P14532128814964938642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A386778 n

end

end A386788.P14532128814964938642

namespace A386788

/-- `n²*A386778(n)` -/
def P14532128814964938642.Spec : Prop :=
  ∀ n, P14532128814964938642.a n = A386788 n

end A386788

/-! ## A386788.P16712767466789152436

`n^3*A386751(n)`
-/

namespace A386788.P16712767466789152436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A386751 n

end

end A386788.P16712767466789152436

namespace A386788

/-- `n^3*A386751(n)` -/
def P16712767466789152436.Spec : Prop :=
  ∀ n, P16712767466789152436.a n = A386788 n

end A386788

/-! ## A386788.P12193260925329450360

`n*A386751(n)*A028310(n)²`
-/

namespace A386788.P12193260925329450360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386751 n * A028310 n ^ 2

end

end A386788.P12193260925329450360

namespace A386788

/-- `n*A386751(n)*A028310(n)²` -/
def P12193260925329450360.Spec : Prop :=
  ∀ n, P12193260925329450360.a n = A386788 n

end A386788

/-! ## A386788.P16616185478737240963

`n*A386751(n)*A181983(n)²`
-/

namespace A386788.P16616185478737240963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386751 n * A181983 n ^ 2

end

end A386788.P16616185478737240963

namespace A386788

/-- `n*A386751(n)*A181983(n)²` -/
def P16616185478737240963.Spec : Prop :=
  ∀ n, P16616185478737240963.a n = A386788 n

end A386788

/-! ## A386788.P10093502056856962596

`A000290(n)*A013956(A028310(n))*n²`
-/

namespace A386788.P10093502056856962596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A013956 (A028310 n).toNat * (n ^ 2 : ℤ)

end

end A386788.P10093502056856962596

namespace A386788

/-- `A000290(n)*A013956(A028310(n))*n²` -/
def P10093502056856962596.Spec : Prop :=
  ∀ n, P10093502056856962596.a n = A386788 n

end A386788

/-! ## A386788.P13855892603307360918

`n*A386751(n)*A028310(n²)`
-/

namespace A386788.P13855892603307360918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386751 n * A028310 (n ^ 2)

end

end A386788.P13855892603307360918

namespace A386788

/-- `n*A386751(n)*A028310(n²)` -/
def P13855892603307360918.Spec : Prop :=
  ∀ n, P13855892603307360918.a n = A386788 n

end A386788

/-!
# A386789: Triangle read by rows: T(n, k) = binomial(n - 1, k - 1)*binomial(n + k, k).

The programs for A386789, the canonical program `A386789.P12804886181245952323` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386789 has offset 0).

The definition of A386789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386789.P12804886181245952323

`∑[char[∑[n]]]*A086810(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A386789

/-- `∑[char[∑[n]]]*A086810(n)` -/
def P12804886181245952323.Spec : Prop :=
  ∀ n, P12804886181245952323.a n = A386789 n

theorem P12804886181245952323.correct : P12804886181245952323.Spec := by
  intro n
  simp only [A386789]

end A386789

/-! ## A386789.P6370016824983296553

`A046899(n)*A097805(n)`
-/

namespace A386789.P6370016824983296553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A097805 n

end

end A386789.P6370016824983296553

namespace A386789

/-- `A046899(n)*A097805(n)` -/
def P6370016824983296553.Spec : Prop :=
  ∀ n, P6370016824983296553.a n = A386789 n

end A386789

/-! ## A386789.P13467962872954219826

`A086810(n)*A130822(n+1)`
-/

namespace A386789.P13467962872954219826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n * A130822 (n + 1)

end

end A386789.P13467962872954219826

namespace A386789

/-- `A086810(n)*A130822(n+1)` -/
def P13467962872954219826.Spec : Prop :=
  ∀ n, P13467962872954219826.a n = A386789 n

end A386789

/-!
# A386790: Triangle read by rows: T(n, k) = n/k if k divides n else 0 for k > 0, T(n, 0) = 0^n.

The programs for A386790, there is no canonical definition to state claims against.
-/

/-! ## A386790.P12466467265616611006

`A082905(n)*A113704(n)`
-/

namespace A386790.P12466467265616611006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082905 n * A113704 n

end

end A386790.P12466467265616611006

/-! ## A386790.P12474384375144870479

`A113704(n)*A141671(n)`
-/

namespace A386790.P12474384375144870479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 n * A141671 n

end

end A386790.P12474384375144870479

/-! ## A386790.P7714481258327415465

`A123110(n)*A141671(n)`
-/

namespace A386790.P7714481258327415465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A141671 n

end

end A386790.P7714481258327415465

/-! ## A386790.P14800662386897780329

`A141671(n)*A341150(n)`
-/

namespace A386790.P14800662386897780329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141671 n * A341150 n

end

end A386790.P14800662386897780329

/-! ## A386790.P7136782747637862178

`A141671(n)%A029635(n)`
-/

namespace A386790.P7136782747637862178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141671 n) (A029635 n)

end

end A386790.P7136782747637862178

/-! ## A386790.P17539440902692726810

`lcm(A110247(n), A141671(n))`
-/

namespace A386790.P17539440902692726810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110247 n) (A141671 n)

end

end A386790.P17539440902692726810

/-! ## A386790.P14260232234407878213

`A110570(n+1)*A113704(n)`
-/

namespace A386790.P14260232234407878213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110570 (n + 1) * A113704 n

end

end A386790.P14260232234407878213

/-!
# A386791: Triangle read by rows: T(n, k) = (n - k)/k if k divides n - k else 0 for k > 0, T(n, 0) = 0^n.

The programs for A386791, there is no canonical definition to state claims against.
-/

/-! ## A386791.P18346936053001411417

`A045847(n)%A102896(A318754(n+1))`
-/

namespace A386791.P18346936053001411417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 n) (A102896 (A318754 (n + 1)).toNat)

end

end A386791.P18346936053001411417

/-! ## A386791.P8812352115440459057

`A352514(A127640(n+1)+A008277(n+1))`
-/

namespace A386791.P8812352115440459057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A127640 (n + 1) + A008277 (n + 1)).toNat

end

end A386791.P8812352115440459057

/-! ## A386791.P2965934437230274382

`A000035(A069099(3*n+4))*A363952(n)`
-/

namespace A386791.P2965934437230274382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A069099 (3 * n + 4)).toNat * A363952 n

end

end A386791.P2965934437230274382

/-! ## A386791.P5024409188275821089

`A353434(n)%A180565(n+1)-A048993(A048993(n))`
-/

namespace A386791.P5024409188275821089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353434 n) (A180565 (n + 1)) - A048993 (A048993 n).toNat

end

end A386791.P5024409188275821089

/-!
# A386792: Antihydra, a BB(6) Turing machine (values of a).

The programs for A386792, the canonical program `A386792.P11342616478634595471` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386792 has offset 0).

The definition of A386792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386792.P11342616478634595471

`floor(3/2*a(n-1))` with `a(0)=8`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A386792

/-- `floor(3/2*a(n-1))` -/
def P11342616478634595471.Spec : Prop :=
  ∀ n, P11342616478634595471.a n = A386792 n

theorem P11342616478634595471.correct : P11342616478634595471.Spec := by
  intro n
  simp only [A386792]

end A386792

/-! ## A386792.P63462232392462483

`A302748(n)+2`
-/

namespace A386792.P63462232392462483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302748 n + 2

end

end A386792.P63462232392462483

namespace A386792

/-- `A302748(n)+2` -/
def P63462232392462483.Spec : Prop :=
  ∀ n, P63462232392462483.a n = A386792 n

end A386792

/-! ## A386792.P12027107253133142418

`A120134(n)+a(n-1)` with `a(0)=8`
-/

namespace A386792.P12027107253133142418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A120134 n + a (n - 1)

end

end A386792.P12027107253133142418

namespace A386792

/-- `A120134(n)+a(n-1)` -/
def P12027107253133142418.Spec : Prop :=
  ∀ n, P12027107253133142418.a n = A386792 n

end A386792

/-! ## A386792.P9166823613572625662

`∑[A120134(abs(1-n)+1)]+2`
-/

namespace A386792.P9166823613572625662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120134 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A386792.P9166823613572625662

namespace A386792

/-- `∑[A120134(abs(1-n)+1)]+2` -/
def P9166823613572625662.Spec : Prop :=
  ∀ n, P9166823613572625662.a n = A386792 n

end A386792

/-! ## A386792.P16368105513338179479

`and(3*a(n-1), -2)/2` with `a(0)=8`
-/

namespace A386792.P16368105513338179479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (Int.land (SequenceMachineLib.roundAway (3 * a (n - 1))) (-2) : ℚ) / 2

end

end A386792.P16368105513338179479

namespace A386792

/-- `and(3*a(n-1), -2)/2` -/
def P16368105513338179479.Spec : Prop :=
  ∀ n, P16368105513338179479.a n = (A386792 n : ℚ)

end A386792

/-!
# A386793: Coefficients in level 23 Ramanujan-Sato series for 1/Pi.

The programs for A386793, there is no canonical definition to state claims against.
-/

/-! ## A386793.P16744296546065851205

`A369896(a(n-1)+n)` with `a(0)=1, a(1)=4`
-/

namespace A386793.P16744296546065851205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A369896 (a (n - 1) + (n : ℤ)).toNat

end

end A386793.P16744296546065851205

/-!
# A386796: Numbers that have exactly one exponent in their prime factorization that is equal to 2.

The programs for A386796, the canonical program `A386796.P17260301346217221759` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386796 has offset 1).

The definition of A386796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386796.P17260301346217221759

`eq[2, A368885(n+1)]+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A386796

/-- `eq[2, A368885(n+1)]+1` -/
def P17260301346217221759.Spec : Prop :=
  ∀ n, (P17260301346217221759.a n : ℤ) = A386796 (n + 1)

theorem P17260301346217221759.correct : P17260301346217221759.Spec := by
  intro n
  simp only [A386796, Nat.add_sub_cancel]

end A386796

/-! ## A386796.P4574508806947908776

`eq[1, A369427(n+2)]+2`
-/

namespace A386796.P4574508806947908776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A386796.P4574508806947908776

namespace A386796

/-- `eq[1, A369427(n+2)]+2` -/
def P4574508806947908776.Spec : Prop :=
  ∀ n, (P4574508806947908776.a n : ℤ) = A386796 (n + 1)

end A386796

/-! ## A386796.P6753502560961287841

`eq[1, A369427(A028310(n))]`
-/

namespace A386796.P6753502560961287841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386796.P6753502560961287841

namespace A386796

/-- `eq[1, A369427(A028310(n))]` -/
def P6753502560961287841.Spec : Prop :=
  ∀ n, (P6753502560961287841.a n : ℤ) = A386796 (n + 1)

end A386796

/-! ## A386796.P3227263499600107341

`A020725(eq[1, A369427(n+1)])`
-/

namespace A386796.P3227263499600107341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A386796.P3227263499600107341

namespace A386796

/-- `A020725(eq[1, A369427(n+1)])` -/
def P3227263499600107341.Spec : Prop :=
  ∀ n, P3227263499600107341.a n = A386796 (n + 1)

end A386796

/-! ## A386796.P10043475659463454269

`eq[1, A350387(A256690(n+1))]+1`
-/

namespace A386796.P10043475659463454269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350387 (A256690 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386796.P10043475659463454269

namespace A386796

/-- `eq[1, A350387(A256690(n+1))]+1` -/
def P10043475659463454269.Spec : Prop :=
  ∀ n, (P10043475659463454269.a n : ℤ) = A386796 (n + 1)

end A386796

/-!
# A386797: Numbers that have exactly two exponents in their prime factorization that are equal to 2.

The programs for A386797, there is no canonical definition to state claims against.
-/

/-! ## A386797.P15723020297128301861

`A001222(A133962(n+1))*A375144(n+1)`
-/

namespace A386797.P15723020297128301861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133962 (n + 1)).toNat * A375144 (n + 1)

end

end A386797.P15723020297128301861

/-! ## A386797.P5830805997055683734

`A375144(n+1)+A000007(A020492(2*n+1))`
-/

namespace A386797.P5830805997055683734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1) + A000007 (A020492 (2 * n + 1)).toNat

end

end A386797.P5830805997055683734

/-! ## A386797.P14552776582070092267

`A375144(n+1)+A007814(A375125(2*n+1))`
-/

namespace A386797.P14552776582070092267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1) + A007814 (A375125 (2 * n + 1)).toNat

end

end A386797.P14552776582070092267

/-! ## A386797.P11735345876984742876

`A375144(n+1)%A375155(A359359(2*(n+1)))`
-/

namespace A386797.P11735345876984742876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375144 (n + 1)) (A375155 (A359359 (2 * (n + 1))).toNat)

end

end A386797.P11735345876984742876

/-! ## A386797.P2377987560880052255

`A375144(n+1)%A093472(n)`
-/

namespace A386797.P2377987560880052255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375144 (n + 1)) (A093472 n)

end

end A386797.P2377987560880052255

/-!
# A386798: Numbers that have exactly three exponents in their prime factorization that are equal to 2.

The programs for A386798, there is no canonical definition to state claims against.
-/

/-! ## A386798.P13991594854089106734

`A391427(A032555(n+1))`
-/

namespace A386798.P13991594854089106734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391427 (A032555 (n + 1)).toNat

end

end A386798.P13991594854089106734

/-! ## A386798.P1948152542223699620

`A391427(A032559(n+1))`
-/

namespace A386798.P1948152542223699620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391427 (A032559 (n + 1)).toNat

end

end A386798.P1948152542223699620

/-! ## A386798.P4615434058505041730

`A391427(A077739(n+1))`
-/

namespace A386798.P4615434058505041730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391427 (A077739 (n + 1)).toNat

end

end A386798.P4615434058505041730

/-! ## A386798.P5401390536861951617

`A391427(A078213(n+1))`
-/

namespace A386798.P5401390536861951617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391427 (A078213 (n + 1)).toNat

end

end A386798.P5401390536861951617

/-! ## A386798.P1045644555098862430

`A391427(A082217(n+1))`
-/

namespace A386798.P1045644555098862430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391427 (A082217 (n + 1)).toNat

end

end A386798.P1045644555098862430

/-!
# A386799: Numbers without an exponent 3 in their prime factorization.

The programs for A386799, the canonical program `A386799.P15179117450760273896` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386799 has offset 1).

The definition of A386799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386799.P15179117450760273896

`eq[0, A295883(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A386799

/-- `eq[0, A295883(n+1)]+1` -/
def P15179117450760273896.Spec : Prop :=
  ∀ n, (P15179117450760273896.a n : ℤ) = A386799 (n + 1)

theorem P15179117450760273896.correct : P15179117450760273896.Spec := by
  intro n
  simp only [A386799, Nat.add_sub_cancel]

end A386799

/-! ## A386799.P8750376861858919882

`comp[A176297(n+1)-1]+1`
-/

namespace A386799.P8750376861858919882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386799.P8750376861858919882

namespace A386799

/-- `comp[A176297(n+1)-1]+1` -/
def P8750376861858919882.Spec : Prop :=
  ∀ n, (P8750376861858919882.a n : ℤ) = A386799 (n + 1)

end A386799

/-! ## A386799.P18031713607292581451

`A336592(n+1)%A127402(A246655(n+1))`
-/

namespace A386799.P18031713607292581451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336592 (n + 1)) (A127402 (A246655 (n + 1)).toNat)

end

end A386799.P18031713607292581451

namespace A386799

/-- `A336592(n+1)%A127402(A246655(n+1))` -/
def P18031713607292581451.Spec : Prop :=
  ∀ n, P18031713607292581451.a n = A386799 (n + 1)

end A386799

/-! ## A386799.P11047935215688500546

`eq[1, A181118(A368167(n+1)+1)%2]+1`
-/

namespace A386799.P11047935215688500546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181118 (A368167 (n + 1) + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386799.P11047935215688500546

namespace A386799

/-- `eq[1, A181118(A368167(n+1)+1)%2]+1` -/
def P11047935215688500546.Spec : Prop :=
  ∀ n, (P11047935215688500546.a n : ℤ) = A386799 (n + 1)

end A386799

/-! ## A386799.P16191164626059447279

`and(A086827(n+1), A336592(n+1))`
-/

namespace A386799.P16191164626059447279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A336592 (n + 1))

end

end A386799.P16191164626059447279

namespace A386799

/-- `and(A086827(n+1), A336592(n+1))` -/
def P16191164626059447279.Spec : Prop :=
  ∀ n, P16191164626059447279.a n = A386799 (n + 1)

end A386799

/-! ## A386799.P16981973221865841305

`A372332(A084758(n+1))+A336592(n+1)`
-/

namespace A386799.P16981973221865841305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372332 (A084758 (n + 1)).toNat + A336592 (n + 1)

end

end A386799.P16981973221865841305

namespace A386799

/-- `A372332(A084758(n+1))+A336592(n+1)` -/
def P16981973221865841305.Spec : Prop :=
  ∀ n, P16981973221865841305.a n = A386799 (n + 1)

end A386799

/-! ## A386799.P4165203634768340700

`A336592(A000188((n+1)²))`
-/

namespace A386799.P4165203634768340700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (A000188 ((n + 1) ^ 2)).toNat

end

end A386799.P4165203634768340700

namespace A386799

/-- `A336592(A000188((n+1)²))` -/
def P4165203634768340700.Spec : Prop :=
  ∀ n, P4165203634768340700.a n = A386799 (n + 1)

end A386799

/-! ## A386799.P15551979091767578705

`A059592(A328621(n+1))*A336592(n+1)`
-/

namespace A386799.P15551979091767578705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 (A328621 (n + 1)).toNat * A336592 (n + 1)

end

end A386799.P15551979091767578705

namespace A386799

/-- `A059592(A328621(n+1))*A336592(n+1)` -/
def P15551979091767578705.Spec : Prop :=
  ∀ n, P15551979091767578705.a n = A386799 (n + 1)

end A386799

/-! ## A386799.P14001936582002956671

`A336592(n+1)+A000035(A132765(n))`
-/

namespace A386799.P14001936582002956671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1) + A000035 (A132765 n).toNat

end

end A386799.P14001936582002956671

namespace A386799

/-- `A336592(n+1)+A000035(A132765(n))` -/
def P14001936582002956671.Spec : Prop :=
  ∀ n, P14001936582002956671.a n = A386799 (n + 1)

end A386799

