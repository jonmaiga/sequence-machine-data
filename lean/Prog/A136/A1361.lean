import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A136100: Square each term in the sequence counting standard Young tableaux; cf. A117506.

The programs for A136100, there is no canonical definition to state claims against.
-/

/-! ## A136100.P13060210639558278540

`A117506(n)*A117506(n)`
-/

namespace A136100.P13060210639558278540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117506 n * A117506 n

end

end A136100.P13060210639558278540

/-! ## A136100.P15250349097504043822

`A117506(n)²`
-/

namespace A136100.P15250349097504043822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117506 n ^ 2

end

end A136100.P15250349097504043822

/-! ## A136100.P12686726902779240172

`A117506(round(acot(n)+n))^2`
-/

namespace A136100.P12686726902779240172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117506 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat ^ 2

end

end A136100.P12686726902779240172

/-! ## A136100.P14489213458339367899

`A153452(A185974(n))²`
-/

namespace A136100.P14489213458339367899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A185974 n).toNat ^ 2

end

end A136100.P14489213458339367899

/-! ## A136100.P16338361048736879440

`A153452(A334434(n))²`
-/

namespace A136100.P16338361048736879440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A334434 n).toNat ^ 2

end

end A136100.P16338361048736879440

/-! ## A136100.P12527689215621725952

`A153452(A334438(n))²`
-/

namespace A136100.P12527689215621725952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A334438 n).toNat ^ 2

end

end A136100.P12527689215621725952

/-! ## A136100.P3421672857766139926

`A117506(n)^A000032(C(2, n))`
-/

namespace A136100.P3421672857766139926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117506 n : ℚ) ^ (A000032 (Nat.choose 2 n) : ℤ)

end

end A136100.P3421672857766139926

/-! ## A136100.P1203632195399638226

`A117506(n)^(2%A000040(n+1))`
-/

namespace A136100.P1203632195399638226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117506 n : ℚ) ^ (Int.tmod 2 (A000040 (n + 1)) : ℤ)

end

end A136100.P1203632195399638226

/-! ## A136100.P3793824020099459390

`(A117506(n)^2)%A000045(n+3)`
-/

namespace A136100.P3793824020099459390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117506 n ^ 2) (A000045 (n + 3))

end

end A136100.P3793824020099459390

/-! ## A136100.P3177576638452816208

`A117506(n)^(A000041(C(2, n))+1)`
-/

namespace A136100.P3177576638452816208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117506 n : ℚ) ^ (A000041 (Nat.choose 2 n) + 1 : ℤ)

end

end A136100.P3177576638452816208

/-!
# A136101: Resort sequence A025487 by source partition as described by A053445 and A126442.

The programs for A136101, there is no canonical definition to state claims against.
-/

/-! ## A136101.P8763811910704270625

`A036035(record[A137579(n)])`
-/

namespace A136101.P8763811910704270625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136101.P8763811910704270625

/-! ## A136101.P5542726450804915889

`filter[A036035(n), A103842(#)]`
-/

namespace A136101.P5542726450804915889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A136101.P5542726450804915889

/-! ## A136101.P550514111995922177

`filter[A059901(n), A103842(#)]`
-/

namespace A136101.P550514111995922177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A136101.P550514111995922177

/-! ## A136101.P12786472110951324885

`filter[A063008(n), A103842(#)]`
-/

namespace A136101.P12786472110951324885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A136101.P12786472110951324885

/-! ## A136101.P182056900558298057

`filter[A087443(n), A103842(#)]`
-/

namespace A136101.P182056900558298057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A136101.P182056900558298057

/-!
# A136103: A Catalan shaped array (A000245) of least prime signatures (A025487) based on staircase Ferrers boards; cf. A136102.

The programs for A136103, there is no canonical definition to state claims against.
-/

/-! ## A136103.P8695912911952073125

`A181819(n+1)*A181819(A352701(n))`
-/

namespace A136103.P8695912911952073125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1) * A181819 (A352701 n).toNat

end

end A136103.P8695912911952073125

/-! ## A136103.P10907850754001500768

`gcd(A111580(A000124(n)), A179713(n+7))`
-/

namespace A136103.P10907850754001500768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111580 (A000124 n).toNat) (A179713 (n + 7))

end

end A136103.P10907850754001500768

/-! ## A136103.P11590214131030714751

`A293442(A000217(n+1)*A002846(n+1))`
-/

namespace A136103.P11590214131030714751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A000217 (n + 1) * A002846 (n + 1)).toNat

end

end A136103.P11590214131030714751

/-! ## A136103.P3691483512880468241

`A329382(A045891(n+1)*A240219(n+1))`
-/

namespace A136103.P3691483512880468241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A045891 (n + 1) * A240219 (n + 1)).toNat

end

end A136103.P3691483512880468241

/-! ## A136103.P8807697837767463034

`A062821(A055502(2*n+1)-A227877(3*n+2))`
-/

namespace A136103.P8807697837767463034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A055502 (2 * n + 1) - A227877 (3 * n + 2)).toNat

end

end A136103.P8807697837767463034

/-!
# A136104: A007318 * A002110; a(n) = Sum_{k=0..n} binomial(n,k)*A002110(k).

The programs for A136104, the canonical program `A136104.P7743254892234438870` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136104 has offset 0).

The definition of A136104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*A002110(#)]` (program `A136104.P7743254892234438870`, by `A136104.P7743254892234438870.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136104.P7743254892234438870

`∑{#}[n, C(n, #)*A002110(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136104

/-- `∑{#}[n, C(n, #)*A002110(#)]` -/
def P7743254892234438870.Spec : Prop :=
  ∀ n, P7743254892234438870.a n = A136104 n

theorem P7743254892234438870.correct : P7743254892234438870.Spec := by
  intro n
  simp only [A136104]

end A136104

/-! ## A136104.P2676511401232160046

`A276586(∑[n]+n)`
-/

namespace A136104.P2676511401232160046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276586 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A136104.P2676511401232160046

namespace A136104

/-- `A276586(∑[n]+n)` -/
def P2676511401232160046.Spec : Prop :=
  ∀ n, P2676511401232160046.a n = A136104 n

end A136104

/-! ## A136104.P8606626090133432946

`record[A276586(A061579(n))]`
-/

namespace A136104.P8606626090133432946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276586 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136104.P8606626090133432946

namespace A136104

/-- `record[A276586(A061579(n))]` -/
def P8606626090133432946.Spec : Prop :=
  ∀ n, P8606626090133432946.a n = A136104 n

end A136104

/-! ## A136104.P10210172468127073108

`or(1, A276586(A000096(n)))`
-/

namespace A136104.P10210172468127073108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276586 (A000096 n).toNat)

end

end A136104.P10210172468127073108

namespace A136104

/-- `or(1, A276586(A000096(n)))` -/
def P10210172468127073108.Spec : Prop :=
  ∀ n, P10210172468127073108.a n = A136104 n

end A136104

/-! ## A136104.P7112924292546709032

`record[A167374(n)*A276586(n)]`
-/

namespace A136104.P7112924292546709032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A276586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136104.P7112924292546709032

namespace A136104

/-- `record[A167374(n)*A276586(n)]` -/
def P7112924292546709032.Spec : Prop :=
  ∀ n, P7112924292546709032.a n = A136104 n

end A136104

/-!
# A136105: Partial sums of A051941.

The programs for A136105, the canonical program `A136105.P9905164449839269026` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136105 has offset 8).

The definition of A136105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136105.P17081866365233546848

`ogf((6-3x-2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A136105.P17081866365233546848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -2] [1, -5, 10, -10, 5, -1] n

end

end A136105.P17081866365233546848

namespace A136105

/-- `ogf((6-3x-2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P17081866365233546848.Spec : Prop :=
  ∀ n, P17081866365233546848.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P4956390483090060246

`(n+2)*(n+1)*((n+8)²+19*(n+8)-144)/24`
-/

namespace A136105.P4956390483090060246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (n + 1) : ℤ) * (((n + 8) ^ 2 + 19 * (n + 8) : ℤ) - 144) : ℚ) / 24

end

end A136105.P4956390483090060246

namespace A136105

/-- `(n+2)*(n+1)*((n+8)²+19*(n+8)-144)/24` -/
def P4956390483090060246.Spec : Prop :=
  ∀ n, P4956390483090060246.a n = (A136105 (n + 8) : ℚ)

theorem P4956390483090060246.correct : P4956390483090060246.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A136105, Nat.add_sub_cancel, A136105.P4956390483090060246.a, A136105.P9905164449839269026.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A136105, Nat.add_sub_cancel, A136105.P4956390483090060246.a, A136105.P9905164449839269026.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A136105

/-! ## A136105.P9905164449839269026

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=6, a(1)=27, a(2)=73, a(3)=155, a(4)=285`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136105

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9905164449839269026.Spec : Prop :=
  ∀ n, P9905164449839269026.a n = A136105 (n + 8)

theorem P9905164449839269026.correct : P9905164449839269026.Spec := by
  intro n
  simp only [A136105, Nat.add_sub_cancel]

end A136105

/-! ## A136105.P3334549828311964517

`∑[∑[∑[n+6]]]+2*C(n+2, 3)`
-/

namespace A136105.P3334549828311964517
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * Nat.choose (n + 2) 3

end

end A136105.P3334549828311964517

namespace A136105

/-- `∑[∑[∑[n+6]]]+2*C(n+2, 3)` -/
def P3334549828311964517.Spec : Prop :=
  ∀ n, (P3334549828311964517.a n : ℤ) = A136105 (n + 8)

end A136105

/-! ## A136105.P18090928027280281672

`A096958(n)+∑[∑[2*n]]`
-/

namespace A136105.P18090928027280281672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096958 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A136105.P18090928027280281672

namespace A136105

/-- `A096958(n)+∑[∑[2*n]]` -/
def P18090928027280281672.Spec : Prop :=
  ∀ n, P18090928027280281672.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P13049843954616770018

`A101854(n+1)+A027480(n)`
-/

namespace A136105.P13049843954616770018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) + A027480 n

end

end A136105.P13049843954616770018

namespace A136105

/-- `A101854(n+1)+A027480(n)` -/
def P13049843954616770018.Spec : Prop :=
  ∀ n, P13049843954616770018.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P7677243134702116280

`A096942(n)+∑[A000326(n+1)]`
-/

namespace A136105.P7677243134702116280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136105.P7677243134702116280

namespace A136105

/-- `A096942(n)+∑[A000326(n+1)]` -/
def P7677243134702116280.Spec : Prop :=
  ∀ n, P7677243134702116280.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P1251503239648528575

`A006504(n+1)+A002412(n+1)`
-/

namespace A136105.P1251503239648528575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + A002412 (n + 1)

end

end A136105.P1251503239648528575

namespace A136105

/-- `A006504(n+1)+A002412(n+1)` -/
def P1251503239648528575.Spec : Prop :=
  ∀ n, P1251503239648528575.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P10863965706496710215

`A027482(n+2)-A213549(n+1)`
-/

namespace A136105.P10863965706496710215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2) - A213549 (n + 1)

end

end A136105.P10863965706496710215

namespace A136105

/-- `A027482(n+2)-A213549(n+1)` -/
def P10863965706496710215.Spec : Prop :=
  ∀ n, P10863965706496710215.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P7119052561402571421

`A006504(n+1)+∑[A000217(2*n+1)]`
-/

namespace A136105.P7119052561402571421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136105.P7119052561402571421

namespace A136105

/-- `A006504(n+1)+∑[A000217(2*n+1)]` -/
def P7119052561402571421.Spec : Prop :=
  ∀ n, P7119052561402571421.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P8710516087730317442

`A000292(n)+A096958(n)+A000292(n)`
-/

namespace A136105.P8710516087730317442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A096958 n + A000292 n)

end

end A136105.P8710516087730317442

namespace A136105

/-- `A000292(n)+A096958(n)+A000292(n)` -/
def P8710516087730317442.Spec : Prop :=
  ∀ n, P8710516087730317442.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P12975646999414734802

`A004320(n+1)+A004320(n+1)-A338996(n)`
-/

namespace A136105.P12975646999414734802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 (n + 1) + (A004320 (n + 1) - A338996 n)

end

end A136105.P12975646999414734802

namespace A136105

/-- `A004320(n+1)+A004320(n+1)-A338996(n)` -/
def P12975646999414734802.Spec : Prop :=
  ∀ n, P12975646999414734802.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P5251577430118520776

`A096942(n)+A002411(n+1)`
-/

namespace A136105.P5251577430118520776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n + A002411 (n + 1)

end

end A136105.P5251577430118520776

namespace A136105

/-- `A096942(n)+A002411(n+1)` -/
def P5251577430118520776.Spec : Prop :=
  ∀ n, P5251577430118520776.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P10480490061775508092

`A024191(n+1)+Δ[A002418(n)]`
-/

namespace A136105.P10480490061775508092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + (f1 (n + 1) - f1 n)

end

end A136105.P10480490061775508092

namespace A136105

/-- `A024191(n+1)+Δ[A002418(n)]` -/
def P10480490061775508092.Spec : Prop :=
  ∀ n, P10480490061775508092.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P16593148831884370117

`A024191(n+1)+A002413(n+1)`
-/

namespace A136105.P16593148831884370117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + A002413 (n + 1)

end

end A136105.P16593148831884370117

namespace A136105

/-- `A024191(n+1)+A002413(n+1)` -/
def P16593148831884370117.Spec : Prop :=
  ∀ n, P16593148831884370117.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P2779944949477156889

`A008779(n+1)-A110427(n+2)`
-/

namespace A136105.P2779944949477156889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 (n + 1) - A110427 (n + 2)

end

end A136105.P2779944949477156889

namespace A136105

/-- `A008779(n+1)-A110427(n+2)` -/
def P2779944949477156889.Spec : Prop :=
  ∀ n, P2779944949477156889.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P5643745895415682361

`A051744(n+2)-2*A110427(n+2)`
-/

namespace A136105.P5643745895415682361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 2) - 2 * A110427 (n + 2)

end

end A136105.P5643745895415682361

namespace A136105

/-- `A051744(n+2)-2*A110427(n+2)` -/
def P5643745895415682361.Spec : Prop :=
  ∀ n, P5643745895415682361.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P12280807402328458447

`A085788(n+1)+A000332(n+2)`
-/

namespace A136105.P12280807402328458447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1) + A000332 (n + 2)

end

end A136105.P12280807402328458447

namespace A136105

/-- `A085788(n+1)+A000332(n+2)` -/
def P12280807402328458447.Spec : Prop :=
  ∀ n, P12280807402328458447.a n = A136105 (n + 8)

end A136105

/-! ## A136105.P12323060883345693018

`A051925(n+2)+∑[A051939(n+6)]`
-/

namespace A136105.P12323060883345693018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051939 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136105.P12323060883345693018

namespace A136105

/-- `A051925(n+2)+∑[A051939(n+6)]` -/
def P12323060883345693018.Spec : Prop :=
  ∀ n, P12323060883345693018.a n = A136105 (n + 8)

end A136105

/-!
# A136107: Number of representations of n as the difference of two positive triangular numbers.

The programs for A136107, the canonical program `A136107.P13068712617901272684` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136107 has offset 1).

The definition of A136107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136107.P13068712617901272684

`A001227(n+1)-A010054(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136107

/-- `A001227(n+1)-A010054(n+1)` -/
def P13068712617901272684.Spec : Prop :=
  ∀ n, P13068712617901272684.a n = A136107 (n + 1)

theorem P13068712617901272684.correct : P13068712617901272684.Spec := by
  intro n
  simp only [A136107, Nat.add_sub_cancel]

end A136107

/-! ## A136107.P16154936884605737030

`∑{d}[n+1, #%2]-char[∑[n-1]]`
-/

namespace A136107.P16154936884605737030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136107.P16154936884605737030

namespace A136107

/-- `∑{d}[n+1, #%2]-char[∑[n-1]]` -/
def P16154936884605737030.Spec : Prop :=
  ∀ n, P16154936884605737030.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P9007453742994848478

`floor(A335616(n+1)/2)`
-/

namespace A136107.P9007453742994848478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A335616 (n + 1) : ℚ) / 2⌋

end

end A136107.P9007453742994848478

namespace A136107

/-- `floor(A335616(n+1)/2)` -/
def P9007453742994848478.Spec : Prop :=
  ∀ n, P9007453742994848478.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P17315297864495070524

`∑[char[∑[n+1]]]-A238005(n+1)`
-/

namespace A136107.P17315297864495070524
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A238005 (n + 1)

end

end A136107.P17315297864495070524

namespace A136107

/-- `∑[char[∑[n+1]]]-A238005(n+1)` -/
def P17315297864495070524.Spec : Prop :=
  ∀ n, P17315297864495070524.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P17633301610585424489

`A000005((n+1)/2^val(n+1, 2))-char[∑[n-1]]`
-/

namespace A136107.P17633301610585424489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136107.P17633301610585424489

namespace A136107

/-- `A000005((n+1)/2^val(n+1, 2))-char[∑[n-1]]` -/
def P17633301610585424489.Spec : Prop :=
  ∀ n, P17633301610585424489.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P8164512225552436135

`A004526(A335616(n+1))`
-/

namespace A136107.P8164512225552436135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A335616 (n + 1)).toNat

end

end A136107.P8164512225552436135

namespace A136107

/-- `A004526(A335616(n+1))` -/
def P8164512225552436135.Spec : Prop :=
  ∀ n, P8164512225552436135.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P6153023953011269917

`A001227(n+1)-A023531(n)`
-/

namespace A136107.P6153023953011269917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A023531 n

end

end A136107.P6153023953011269917

namespace A136107

/-- `A001227(n+1)-A023531(n)` -/
def P6153023953011269917.Spec : Prop :=
  ∀ n, P6153023953011269917.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P54733212028061155

`A054844(n+1)-A054843(n+1)`
-/

namespace A136107.P54733212028061155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A054843 (n + 1)

end

end A136107.P54733212028061155

namespace A136107

/-- `A054844(n+1)-A054843(n+1)` -/
def P54733212028061155.Spec : Prop :=
  ∀ n, P54733212028061155.a n = A136107 (n + 1)

theorem P54733212028061155.correct : P54733212028061155.Spec := by
  intro n
  simp only [A136107, Nat.add_sub_cancel, A136107.P54733212028061155.a, A136107.P13068712617901272684.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A010054, A010054.P18347828677204923252.a, A054843, A054843.P5783791251269044681.f1, A054843.P5783791251269044681.a, A054844, A054844.P10228147231781804913.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136107

/-! ## A136107.P17174605750828153356

`A335616(n+1)-A001227(n+1)`
-/

namespace A136107.P17174605750828153356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (n + 1) - A001227 (n + 1)

end

end A136107.P17174605750828153356

namespace A136107

/-- `A335616(n+1)-A001227(n+1)` -/
def P17174605750828153356.Spec : Prop :=
  ∀ n, P17174605750828153356.a n = A136107 (n + 1)

theorem P17174605750828153356.correct : P17174605750828153356.Spec := by
  intro n
  simp only [A136107, Nat.add_sub_cancel, A136107.P17174605750828153356.a, A136107.P13068712617901272684.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A010054, A010054.P18347828677204923252.a, A335616, A335616.P11269408438136298047.a, A005369, A005369.P10796159359873341658.a, A054844, A054844.P10228147231781804913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136107

/-! ## A136107.P753509769102900760

`A054844(n+1)/2-A023531(n)`
-/

namespace A136107.P753509769102900760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2 - (A023531 n : ℚ)

end

end A136107.P753509769102900760

namespace A136107

/-- `A054844(n+1)/2-A023531(n)` -/
def P753509769102900760.Spec : Prop :=
  ∀ n, P753509769102900760.a n = (A136107 (n + 1) : ℚ)

theorem P753509769102900760.correct : P753509769102900760.Spec := by
  intro n
  simp only [A136107, Nat.add_sub_cancel, A136107.P753509769102900760.a, A136107.P13068712617901272684.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A010054, A010054.P18347828677204923252.a, A023531, A023531.P13036811505051547859.a, A054844, A054844.P10228147231781804913.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136107

/-! ## A136107.P12206060204546066705

`(A335616(n+1)-A023531(n))/2`
-/

namespace A136107.P12206060204546066705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335616 (n + 1) - A023531 n : ℚ) / 2

end

end A136107.P12206060204546066705

namespace A136107

/-- `(A335616(n+1)-A023531(n))/2` -/
def P12206060204546066705.Spec : Prop :=
  ∀ n, P12206060204546066705.a n = (A136107 (n + 1) : ℚ)

theorem P12206060204546066705.correct : P12206060204546066705.Spec := by
  intro n
  simp only [A136107, Nat.add_sub_cancel, A136107.P12206060204546066705.a, A136107.P13068712617901272684.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A010054, A010054.P18347828677204923252.a, A023531, A023531.P13036811505051547859.a, A335616, A335616.P11269408438136298047.a, A005369, A005369.P10796159359873341658.a, A054844, A054844.P10228147231781804913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136107

/-! ## A136107.P6658525460661826277

`A054844(n+1)/2-∑[A103452(n)]`
-/

namespace A136107.P6658525460661826277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A136107.P6658525460661826277

namespace A136107

/-- `A054844(n+1)/2-∑[A103452(n)]` -/
def P6658525460661826277.Spec : Prop :=
  ∀ n, P6658525460661826277.a n = (A136107 (n + 1) : ℚ)

end A136107

/-! ## A136107.P12613245783984100329

`A054844(n+1)/2-Δ[A003056(n)]`
-/

namespace A136107.P12613245783984100329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2 - (f1 (n + 1) - f1 n : ℚ)

end

end A136107.P12613245783984100329

namespace A136107

/-- `A054844(n+1)/2-Δ[A003056(n)]` -/
def P12613245783984100329.Spec : Prop :=
  ∀ n, P12613245783984100329.a n = (A136107 (n + 1) : ℚ)

end A136107

/-! ## A136107.P7802654556972454463

`A054844(n+1)/2-char[A000096(n)]`
-/

namespace A136107.P7802654556972454463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A136107.P7802654556972454463

namespace A136107

/-- `A054844(n+1)/2-char[A000096(n)]` -/
def P7802654556972454463.Spec : Prop :=
  ∀ n, P7802654556972454463.a n = (A136107 (n + 1) : ℚ)

end A136107

/-! ## A136107.P14920644040256529241

`A069283(n+1)+1-A010054(n+1)`
-/

namespace A136107.P14920644040256529241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + (1 - A010054 (n + 1))

end

end A136107.P14920644040256529241

namespace A136107

/-- `A069283(n+1)+1-A010054(n+1)` -/
def P14920644040256529241.Spec : Prop :=
  ∀ n, P14920644040256529241.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P8553777898418541276

`A069283(n+1)+1-A073424(n+1)`
-/

namespace A136107.P8553777898418541276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + (1 - A073424 (n + 1))

end

end A136107.P8553777898418541276

namespace A136107

/-- `A069283(n+1)+1-A073424(n+1)` -/
def P8553777898418541276.Spec : Prop :=
  ∀ n, P8553777898418541276.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P12580283488742306679

`A069283(n+1)+2-A035214(n+1)`
-/

namespace A136107.P12580283488742306679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + (2 - A035214 (n + 1))

end

end A136107.P12580283488742306679

namespace A136107

/-- `A069283(n+1)+2-A035214(n+1)` -/
def P12580283488742306679.Spec : Prop :=
  ∀ n, P12580283488742306679.a n = A136107 (n + 1)

end A136107

/-! ## A136107.P7695628452540485297

`2*A001227(n+1)-A054843(n+1)`
-/

namespace A136107.P7695628452540485297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001227 (n + 1) - A054843 (n + 1)

end

end A136107.P7695628452540485297

namespace A136107

/-- `2*A001227(n+1)-A054843(n+1)` -/
def P7695628452540485297.Spec : Prop :=
  ∀ n, P7695628452540485297.a n = A136107 (n + 1)

theorem P7695628452540485297.correct : P7695628452540485297.Spec := by
  intro n
  simp only [A136107, Nat.add_sub_cancel, A136107.P7695628452540485297.a, A136107.P13068712617901272684.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A010054, A010054.P18347828677204923252.a, A054843, A054843.P5783791251269044681.f1, A054843.P5783791251269044681.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136107

/-! ## A136107.P3902829364867248259

`A054843(n+1)-2*A010054(n+1)`
-/

namespace A136107.P3902829364867248259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054843 (n + 1) - 2 * A010054 (n + 1)

end

end A136107.P3902829364867248259

namespace A136107

/-- `A054843(n+1)-2*A010054(n+1)` -/
def P3902829364867248259.Spec : Prop :=
  ∀ n, P3902829364867248259.a n = A136107 (n + 1)

theorem P3902829364867248259.correct : P3902829364867248259.Spec := by
  intro n
  simp only [A136107, Nat.add_sub_cancel, A136107.P3902829364867248259.a, A136107.P13068712617901272684.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A010054, A010054.P18347828677204923252.a, A054843, A054843.P5783791251269044681.f1, A054843.P5783791251269044681.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A136107

/-! ## A136107.P16448311456484340777

`A000005(A336158(n+1))-char[∑[n-1]]`
-/

namespace A136107.P16448311456484340777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136107.P16448311456484340777

namespace A136107

/-- `A000005(A336158(n+1))-char[∑[n-1]]` -/
def P16448311456484340777.Spec : Prop :=
  ∀ n, P16448311456484340777.a n = A136107 (n + 1)

end A136107

/-!
# A136108: The least number k such that there are n different representations of k as the difference of two positive triangular numbers.

The programs for A136108, there is no canonical definition to state claims against.
-/

/-! ## A136108.P6939602558141194123

`∏{e}[A000351(n), A334077(#)]`
-/

namespace A136108.P6939602558141194123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A334077 (Nat.factorization (f1 n).natAbs p)

end

end A136108.P6939602558141194123

/-!
# A136109: a(1) = 1. After the initial 1, follow with runs of integers; the n-th run of p(a(n)) terms is (1,2,3,4,....,p(a(n))), where p(m) is the m-th prime.

The programs for A136109, there is no canonical definition to state claims against.
-/

/-! ## A136109.P355317437522733711

`A350139(A350122(n+1))+A080237(n+1)`
-/

namespace A136109.P355317437522733711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A350122 (n + 1)).toNat + A080237 (n + 1)

end

end A136109.P355317437522733711

/-!
# A136110: Limiting sequence when we start with the positive integers (A000027) and delete in step n >= 1 the term at position n + tau(a(n)), where tau(k) is the number of divisors of k.

The programs for A136110, there is no canonical definition to state claims against.
-/

/-! ## A136110.P10492283006692865329

`∑[A328614(Δ[A101400(n)])]`
-/

namespace A136110.P10492283006692865329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136110.P10492283006692865329

/-! ## A136110.P11163219834506531555

`∑[gcd(A096202(n+1), A188524(3*(n+1)))]`
-/

namespace A136110.P11163219834506531555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096202 (n + 1)) (A188524 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136110.P11163219834506531555

/-! ## A136110.P14493800991372627124

`lt[A246128(2*n+1), A107503(A256709(3*(n+1)))]`
-/

namespace A136110.P14493800991372627124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246128 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107503 (A256709 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136110.P14493800991372627124

/-! ## A136110.P15964690490801237607

`lt[A000041(n+3), A061395(A002622(2*(n+2)))]`
-/

namespace A136110.P15964690490801237607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A002622 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136110.P15964690490801237607

/-!
# A136112: Indices of pentagonal numbers > 0 which are not the difference of two larger pentagonal numbers.

The programs for A136112, there is no canonical definition to state claims against.
-/

/-! ## A136112.P4631002345710490272

`∪[A135768(n+1), A135771(n+1)]`
-/

namespace A136112.P4631002345710490272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136112.P4631002345710490272

/-! ## A136112.P4213691596354808994

`A083277(A136113(n+1))`
-/

namespace A136112.P4213691596354808994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A136113 (n + 1)).toNat

end

end A136112.P4213691596354808994

/-! ## A136112.P14849622189345441741

`eq[0, A136115(n+1)]+1`
-/

namespace A136112.P14849622189345441741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136112.P14849622189345441741

/-! ## A136112.P8461433291410581515

`lt[A136115(round(acot(n)+n)), n]`
-/

namespace A136112.P8461433291410581515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136115 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136112.P8461433291410581515

/-! ## A136112.P13042797919071823435

`lt[A136115(A028310(n)), n]`
-/

namespace A136112.P13042797919071823435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136115 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136112.P13042797919071823435

/-!
# A136113: Pentagonal numbers > 0 which are not the difference of two larger pentagonal numbers.

The programs for A136113, there is no canonical definition to state claims against.
-/

/-! ## A136113.P9976711942516343889

`A000326(A136112(n+1))`
-/

namespace A136113.P9976711942516343889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A136112 (n + 1)).toNat

end

end A136113.P9976711942516343889

/-! ## A136113.P3201762250880537910

`A000217(A136112(n+1)-1)+A136112(n+1)²`
-/

namespace A136113.P3201762250880537910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A136112 (n + 1) - 1).toNat + A136112 (n + 1) ^ 2

end

end A136113.P3201762250880537910

/-! ## A136113.P5797131567002089375

`A143689(A136112(Δ[n²]-n))-1`
-/

namespace A136113.P5797131567002089375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (A136112 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A136113.P5797131567002089375

/-! ## A136113.P17895448962594046497

`(A143689(A136112(2*n+1-n))^(1/2))²-1`
-/

namespace A136113.P17895448962594046497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A143689 (A136112 (2 * n + 1 - n)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2 - 1

end

end A136113.P17895448962594046497

/-! ## A136113.P18194354821720928077

`A115067(A136112(n+1))-A057428(n+1)`
-/

namespace A136113.P18194354821720928077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (A136112 (n + 1)).toNat - A057428 (n + 1)

end

end A136113.P18194354821720928077

/-! ## A136113.P4040377412630640362

`floor(A143689(A136112(n+1))-1/A000005(n+1))`
-/

namespace A136113.P4040377412630640362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143689 (A136112 (n + 1)).toNat : ℚ) - 1 / (A000005 (n + 1) : ℚ)⌋

end

end A136113.P4040377412630640362

/-!
# A136114: Least pentagonal number P(m) > P(n) such that P(m)+P(n) is again a pentagonal number, 0 if no such m exists.

The programs for A136114, there is no canonical definition to state claims against.
-/

/-! ## A136114.P2278594812912014921

`A000326(A136115(n+1))`
-/

namespace A136114.P2278594812912014921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A136115 (n + 1)).toNat

end

end A136114.P2278594812912014921

/-! ## A136114.P9299768978187890385

`A245288(2*A136115(n+1))`
-/

namespace A136114.P9299768978187890385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (2 * A136115 (n + 1)).toNat

end

end A136114.P9299768978187890385

/-! ## A136114.P873792057175359959

`A309685(6*A136115(n+1))`
-/

namespace A136114.P873792057175359959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 (6 * A136115 (n + 1)).toNat

end

end A136114.P873792057175359959

/-! ## A136114.P9543353526759465884

`A143689(A136115(n+1))-A007318(∑[n])`
-/

namespace A136114.P9543353526759465884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (A136115 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136114.P9543353526759465884

/-!
# A136115: Index m of least pentagonal number P(m) > P(n) such that P(m)+P(n) is again a pentagonal number, 0 if no such m exists.

The programs for A136115, there is no canonical definition to state claims against.
-/

/-! ## A136115.P8208925929114776760

`A008472(A000984(n))*A079978(n)`
-/

namespace A136115.P8208925929114776760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000984 n).toNat * A079978 n

end

end A136115.P8208925929114776760

/-! ## A136115.P10939642649499776478

`A211647(n*A014577(A276225(n)))`
-/

namespace A136115.P10939642649499776478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 ((n : ℤ) * A014577 (A276225 n).toNat).toNat

end

end A136115.P10939642649499776478

/-! ## A136115.P9374138909097635202

`A211647(n*A058342(A291698(n)))`
-/

namespace A136115.P9374138909097635202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 ((n : ℤ) * A058342 (A291698 n).toNat).toNat

end

end A136115.P9374138909097635202

/-! ## A136115.P8653477360490679448

`A211647(n*A164057(A250120(n)))`
-/

namespace A136115.P8653477360490679448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 ((n : ℤ) * A164057 (A250120 n).toNat).toNat

end

end A136115.P8653477360490679448

/-! ## A136115.P17670404179813198377

`A008472(A000984(n))*A024692(n+1)`
-/

namespace A136115.P17670404179813198377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000984 n).toNat * A024692 (n + 1)

end

end A136115.P17670404179813198377

/-!
# A136116: Indices of pentagonal numbers (A000326) which are the sum of 2 other positive pentagonal numbers.

The programs for A136116, there is no canonical definition to state claims against.
-/

/-! ## A136116.P11544834639048530280

`A083277(A136117(n+1))`
-/

namespace A136116.P11544834639048530280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A136117 (n + 1)).toNat

end

end A136116.P11544834639048530280

/-!
# A136117: Pentagonal numbers (A000326) which are the sum of 2 other positive pentagonal numbers.

The programs for A136117, there is no canonical definition to state claims against.
-/

/-! ## A136117.P12786663195530246865

`A000326(A136116(n+1))`
-/

namespace A136117.P12786663195530246865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A136116 (n + 1)).toNat

end

end A136117.P12786663195530246865

/-! ## A136117.P5064233833238982699

`A245288(2*A136116(n+1))`
-/

namespace A136117.P5064233833238982699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (2 * A136116 (n + 1)).toNat

end

end A136117.P5064233833238982699

/-! ## A136117.P4739195190185905668

`filter[A332987(n+1), A255849(#)]`
-/

namespace A136117.P4739195190185905668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255849 (f1 j).toNat = 1) n)

end

end A136117.P4739195190185905668

/-! ## A136117.P16327761019276236496

`A143689(A136116(n+1))+A057428(n+1)`
-/

namespace A136117.P16327761019276236496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (A136116 (n + 1)).toNat + A057428 (n + 1)

end

end A136117.P16327761019276236496

/-!
# A136119: Limiting sequence when we start with the positive integers (A000027) and delete in step n >= 1 the term at position n + a(n).

The programs for A136119, the canonical program `A136119.P6318789131419214792` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136119 has offset 1).

The definition of A136119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136119.P6318789131419214792

`ceil((n+1-1/2)*sqrt(2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136119

/-- `ceil((n+1-1/2)*sqrt(2))` -/
def P6318789131419214792.Spec : Prop :=
  ∀ n, P6318789131419214792.a n = A136119 (n + 1)

theorem P6318789131419214792.correct : P6318789131419214792.Spec := by
  intro n
  simp only [A136119, Nat.add_sub_cancel]

end A136119

/-! ## A136119.P13509564118810763282

`A000196((n+1)*n*2)+1`
-/

namespace A136119.P13509564118810763282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1) * n * 2) + 1

end

end A136119.P13509564118810763282

namespace A136119

/-- `A000196((n+1)*n*2)+1` -/
def P13509564118810763282.Spec : Prop :=
  ∀ n, P13509564118810763282.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P11129036767498557138

`ceil(sqrt(cot(Δ[atan(2*n)])))`
-/

namespace A136119.P11129036767498557138
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.cot (f1 (n + 1) - f1 n))⌉

end

end A136119.P11129036767498557138

namespace A136119

/-- `ceil(sqrt(cot(Δ[atan(2*n)])))` -/
def P11129036767498557138.Spec : Prop :=
  ∀ n, P11129036767498557138.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P14978776061764724074

`-xor(floor(2*sqrt(∑[n])), -1)`
-/

namespace A136119.P14978776061764724074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ (-1)

end

end A136119.P14978776061764724074

namespace A136119

/-- `-xor(floor(2*sqrt(∑[n])), -1)` -/
def P14978776061764724074.Spec : Prop :=
  ∀ n, P14978776061764724074.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P5059677957442623537

`A001953(n)+1`
-/

namespace A136119.P5059677957442623537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n + 1

end

end A136119.P5059677957442623537

namespace A136119

/-- `A001953(n)+1` -/
def P5059677957442623537.Spec : Prop :=
  ∀ n, P5059677957442623537.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P14760603191151852738

`comp[A001954(n)]+1`
-/

namespace A136119.P14760603191151852738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136119.P14760603191151852738

namespace A136119

/-- `comp[A001954(n)]+1` -/
def P14760603191151852738.Spec : Prop :=
  ∀ n, (P14760603191151852738.a n : ℤ) = A136119 (n + 1)

end A136119

/-! ## A136119.P10549511913702646944

`A086377(n+1)-n`
-/

namespace A136119.P10549511913702646944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) - (n : ℤ)

end

end A136119.P10549511913702646944

namespace A136119

/-- `A086377(n+1)-n` -/
def P10549511913702646944.Spec : Prop :=
  ∀ n, P10549511913702646944.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P17949950100694871832

`floor(sqrt(A046092(n)))+1`
-/

namespace A136119.P17949950100694871832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A046092 n) + 1

end

end A136119.P17949950100694871832

namespace A136119

/-- `floor(sqrt(A046092(n)))+1` -/
def P17949950100694871832.Spec : Prop :=
  ∀ n, P17949950100694871832.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P4045389078019118484

`∑[A189572(n+1)+1]`
-/

namespace A136119.P4045389078019118484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136119.P4045389078019118484

namespace A136119

/-- `∑[A189572(n+1)+1]` -/
def P4045389078019118484.Spec : Prop :=
  ∀ n, P4045389078019118484.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P13401234354225600420

`A189574(n+1)+1+n`
-/

namespace A136119.P13401234354225600420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (n + 1) + 1 + (n : ℤ)

end

end A136119.P13401234354225600420

namespace A136119

/-- `A189574(n+1)+1+n` -/
def P13401234354225600420.Spec : Prop :=
  ∀ n, P13401234354225600420.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P12091303480945260519

`A080652(n+1)-(n+1)`
-/

namespace A136119.P12091303480945260519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) - (n + 1 : ℤ)

end

end A136119.P12091303480945260519

namespace A136119

/-- `A080652(n+1)-(n+1)` -/
def P12091303480945260519.Spec : Prop :=
  ∀ n, P12091303480945260519.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P2869691873923049977

`A001030(n)+a(n-1)` with `a(0)=1`
-/

namespace A136119.P2869691873923049977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001030 n + a (n - 1)

end

end A136119.P2869691873923049977

namespace A136119

/-- `A001030(n)+a(n-1)` -/
def P2869691873923049977.Spec : Prop :=
  ∀ n, P2869691873923049977.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P7099810102643239797

`comp[comp[A081477(n+1)]+n]`
-/

namespace A136119.P7099810102643239797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A136119.P7099810102643239797

namespace A136119

/-- `comp[comp[A081477(n+1)]+n]` -/
def P7099810102643239797.Spec : Prop :=
  ∀ n, (P7099810102643239797.a n : ℤ) = A136119 (n + 1)

end A136119

/-! ## A136119.P8891659931146536230

`A001954(n)-A005843(n)`
-/

namespace A136119.P8891659931146536230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n - A005843 n

end

end A136119.P8891659931146536230

namespace A136119

/-- `A001954(n)-A005843(n)` -/
def P8891659931146536230.Spec : Prop :=
  ∀ n, P8891659931146536230.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P5009428323680242230

`∪[A080754(n+1), A083051(n)]`
-/

namespace A136119.P5009428323680242230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136119.P5009428323680242230

namespace A136119

/-- `∪[A080754(n+1), A083051(n)]` -/
def P5009428323680242230.Spec : Prop :=
  ∀ n, (P5009428323680242230.a n : ℤ) = A136119 (n + 1)

end A136119

/-! ## A136119.P1881605371665056369

`A059648(n+1)+A001951(n+1)`
-/

namespace A136119.P1881605371665056369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 (n + 1) + A001951 (n + 1)

end

end A136119.P1881605371665056369

namespace A136119

/-- `A059648(n+1)+A001951(n+1)` -/
def P1881605371665056369.Spec : Prop :=
  ∀ n, P1881605371665056369.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P7148222904016653660

`A363406(n+1)%A184119(n+1)`
-/

namespace A136119.P7148222904016653660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363406 (n + 1)) (A184119 (n + 1))

end

end A136119.P7148222904016653660

namespace A136119

/-- `A363406(n+1)%A184119(n+1)` -/
def P7148222904016653660.Spec : Prop :=
  ∀ n, P7148222904016653660.a n = A136119 (n + 1)

end A136119

/-! ## A136119.P14024763706616739988

`∪[A080754(n+1), A120753(n+1)]`
-/

namespace A136119.P14024763706616739988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136119.P14024763706616739988

namespace A136119

/-- `∪[A080754(n+1), A120753(n+1)]` -/
def P14024763706616739988.Spec : Prop :=
  ∀ n, (P14024763706616739988.a n : ℤ) = A136119 (n + 1)

end A136119

/-!
# A136120: Limiting sequence when we start with the positive integers (A000027) and at step n >= 1 delete the a(n) terms at positions n+a(n) to n-1+2*a(n).

The programs for A136120, there is no canonical definition to state claims against.
-/

/-! ## A136120.P8578238294424218130

`∑[A139420(n+1)]-n`
-/

namespace A136120.P8578238294424218130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A136120.P8578238294424218130

/-! ## A136120.P9944443157787461395

`∑[A139420(n+1)+A057428(n)]`
-/

namespace A136120.P9944443157787461395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139420 (n + 1) + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136120.P9944443157787461395

/-! ## A136120.P4285982773476505572

`Δ[A139419(n+1)]-A139420(n+1)`
-/

namespace A136120.P4285982773476505572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139420 (n + 1)

end

end A136120.P4285982773476505572

/-! ## A136120.P5364899886005359816

`A139419(n+2)-(A139420(n+1)+A139419(n+1))`
-/

namespace A136120.P5364899886005359816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139419 (n + 2) - (A139420 (n + 1) + A139419 (n + 1))

end

end A136120.P5364899886005359816

/-! ## A136120.P1538185919322214252

`record[A139420(n+2)-2]`
-/

namespace A136120.P1538185919322214252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139420 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136120.P1538185919322214252

/-!
# A136122: Integer log of (numerator of convergent to E / denominator of convergent to E) = A001414(A007676/A007677) = A001414(A007676)-A001414(A007677).

The programs for A136122, there is no canonical definition to state claims against.
-/

/-! ## A136122.P12007475210395257261

`A001414(A007676(n))-A001414(A007677(n))`
-/

namespace A136122.P12007475210395257261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007676 n).toNat - A001414 (A007677 n).toNat

end

end A136122.P12007475210395257261

/-! ## A136122.P3580417044217747862

`A141487(n)+A131818(A141477(n))`
-/

namespace A136122.P3580417044217747862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141487 n + A131818 (A141477 n).toNat

end

end A136122.P3580417044217747862

/-!
# A136124: Triangle read by rows: T(n,k) = (-1)^(n+k)*Sum_{j=1..k} s(n,j), where s(n,j) are the signed Stirling numbers of the first kind (n >= 2; 1 <= k <= n-1; s(n,j) = A008275(n,j)).

The programs for A136124, the canonical program `A136124.P13496521046208496963` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136124 has offset 2).

The definition of A136124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136124.P13496521046208496963

`T(n-1,k-1)+(row(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136124

/-- `T(n-1,k-1)+(row(n)+1)*T(n-1,k)` -/
def P13496521046208496963.Spec : Prop :=
  ∀ n, (P13496521046208496963.a n : ℤ) = A136124 (n + 2)

theorem P13496521046208496963.correct : P13496521046208496963.Spec := by
  intro n
  simp only [A136124, Nat.add_sub_cancel]

end A136124

/-! ## A136124.P14823059010415919469

`abs(A049444(n))`
-/

namespace A136124.P14823059010415919469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049444 n|

end

end A136124.P14823059010415919469

namespace A136124

/-- `abs(A049444(n))` -/
def P14823059010415919469.Spec : Prop :=
  ∀ n, P14823059010415919469.a n = A136124 (n + 2)

end A136124

/-! ## A136124.P5754365752960706955

`A145324(A038722(n+1))`
-/

namespace A136124.P5754365752960706955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A038722 (n + 1)).toNat

end

end A136124.P5754365752960706955

namespace A136124

/-- `A145324(A038722(n+1))` -/
def P5754365752960706955.Spec : Prop :=
  ∀ n, P5754365752960706955.a n = A136124 (n + 2)

end A136124

/-! ## A136124.P7839089828707981411

`A145324(A061579(n)+1)`
-/

namespace A136124.P7839089828707981411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A061579 n + 1).toNat

end

end A136124.P7839089828707981411

namespace A136124

/-- `A145324(A061579(n)+1)` -/
def P7839089828707981411.Spec : Prop :=
  ∀ n, P7839089828707981411.a n = A136124 (n + 2)

end A136124

/-! ## A136124.P4975871404950125653

`A049444(n)*A097807(n)`
-/

namespace A136124.P4975871404950125653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049444 n * A097807 n

end

end A136124.P4975871404950125653

namespace A136124

/-- `A049444(n)*A097807(n)` -/
def P4975871404950125653.Spec : Prop :=
  ∀ n, P4975871404950125653.a n = A136124 (n + 2)

end A136124

/-! ## A136124.P1031660967047639941

`gcd(A000038(n), A049444(n))`
-/

namespace A136124.P1031660967047639941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049444 n)

end

end A136124.P1031660967047639941

namespace A136124

/-- `gcd(A000038(n), A049444(n))` -/
def P1031660967047639941.Spec : Prop :=
  ∀ n, (P1031660967047639941.a n : ℤ) = A136124 (n + 2)

end A136124

/-! ## A136124.P11062511090944297716

`lcm(A020985(n), A049444(n))`
-/

namespace A136124.P11062511090944297716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049444 n)

end

end A136124.P11062511090944297716

namespace A136124

/-- `lcm(A020985(n), A049444(n))` -/
def P11062511090944297716.Spec : Prop :=
  ∀ n, (P11062511090944297716.a n : ℤ) = A136124 (n + 2)

end A136124

/-! ## A136124.P15524222382190710337

`A155755(n)-A145324(n+1)`
-/

namespace A136124.P15524222382190710337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155755 n - A145324 (n + 1)

end

end A136124.P15524222382190710337

namespace A136124

/-- `A155755(n)-A145324(n+1)` -/
def P15524222382190710337.Spec : Prop :=
  ∀ n, P15524222382190710337.a n = A136124 (n + 2)

theorem P15524222382190710337.correct : P15524222382190710337.Spec := by
  intro n
  simp only [A136124, Nat.add_sub_cancel, A136124.P15524222382190710337.a, A136124.P13496521046208496963.a, A145324, A145324.P16663090684557002436.a, A155755, A155755.P15617599271686111311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136124

/-!
# A136125: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which the size of the last cycle is k (the cycles are ordered by increasing smallest elements; 1 <= k <=n).

The programs for A136125, the canonical program `A136125.P2982316925870976645` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136125 has offset 1).

The definition of A136125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136125.P9557946253483981050

`A145888(A038722(n+1))`
-/

namespace A136125.P9557946253483981050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145888 (A038722 (n + 1)).toNat

end

end A136125.P9557946253483981050

namespace A136125

/-- `A145888(A038722(n+1))` -/
def P9557946253483981050.Spec : Prop :=
  ∀ n, P9557946253483981050.a n = A136125 (n + 1)

end A136125

/-! ## A136125.P18350692820053896721

`A094310(n+1)/A002260(n+2)`
-/

namespace A136125.P18350692820053896721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) : ℚ) / (A002260 (n + 2) : ℚ)

end

end A136125.P18350692820053896721

namespace A136125

/-- `A094310(n+1)/A002260(n+2)` -/
def P18350692820053896721.Spec : Prop :=
  ∀ n, P18350692820053896721.a n = (A136125 (n + 1) : ℚ)

end A136125

/-! ## A136125.P4429125561832148220

`A094310(n+1)/(A002262(n+1)+1)`
-/

namespace A136125.P4429125561832148220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) : ℚ) / (A002262 (n + 1) + 1 : ℚ)

end

end A136125.P4429125561832148220

namespace A136125

/-- `A094310(n+1)/(A002262(n+1)+1)` -/
def P4429125561832148220.Spec : Prop :=
  ∀ n, P4429125561832148220.a n = (A136125 (n + 1) : ℚ)

end A136125

/-! ## A136125.P8985252887032513821

`A094310(n+1)/(A048151(n+1)+1)`
-/

namespace A136125.P8985252887032513821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) : ℚ) / (A048151 (n + 1) + 1 : ℚ)

end

end A136125.P8985252887032513821

namespace A136125

/-- `A094310(n+1)/(A048151(n+1)+1)` -/
def P8985252887032513821.Spec : Prop :=
  ∀ n, P8985252887032513821.a n = (A136125 (n + 1) : ℚ)

end A136125

/-! ## A136125.P2982316925870976645

`gcd(Δ[A094310(n+1)], A136572(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136125

/-- `gcd(Δ[A094310(n+1)], A136572(n))` -/
def P2982316925870976645.Spec : Prop :=
  ∀ n, (P2982316925870976645.a n : ℤ) = A136125 (n + 1)

theorem P2982316925870976645.correct : P2982316925870976645.Spec := by
  intro n
  simp only [A136125, Nat.add_sub_cancel]

end A136125

/-! ## A136125.P5563882101751265348

`gcd(A094310(n+1), A094310(n+2))`
-/

namespace A136125.P5563882101751265348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094310 (n + 1)) (A094310 (n + 2))

end

end A136125.P5563882101751265348

namespace A136125

/-- `gcd(A094310(n+1), A094310(n+2))` -/
def P5563882101751265348.Spec : Prop :=
  ∀ n, (P5563882101751265348.a n : ℤ) = A136125 (n + 1)

end A136125

/-! ## A136125.P12553210102445784168

`Δ[A003422(A003057(n+2))-A094310(n+1)]`
-/

namespace A136125.P12553210102445784168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A003057 (n + 2)).toNat - A094310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136125.P12553210102445784168

namespace A136125

/-- `Δ[A003422(A003057(n+2))-A094310(n+1)]` -/
def P12553210102445784168.Spec : Prop :=
  ∀ n, P12553210102445784168.a n = A136125 (n + 1)

end A136125

/-! ## A136125.P17258416773556950264

`A094310(n+1)*A233543(n+1)/A166350(n+2)`
-/

namespace A136125.P17258416773556950264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) * A233543 (n + 1) : ℚ) / (A166350 (n + 2) : ℚ)

end

end A136125.P17258416773556950264

namespace A136125

/-- `A094310(n+1)*A233543(n+1)/A166350(n+2)` -/
def P17258416773556950264.Spec : Prop :=
  ∀ n, P17258416773556950264.a n = (A136125 (n + 1) : ℚ)

end A136125

/-! ## A136125.P4600873193504495922

`A130493(n+1)/A126615(n+1)`
-/

namespace A136125.P4600873193504495922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A126615 (n + 1) : ℚ)

end

end A136125.P4600873193504495922

namespace A136125

/-- `A130493(n+1)/A126615(n+1)` -/
def P4600873193504495922.Spec : Prop :=
  ∀ n, P4600873193504495922.a n = (A136125 (n + 1) : ℚ)

end A136125

/-! ## A136125.P4939410084066667312

`A002024(n+1)!/A126615(n+1)`
-/

namespace A136125.P4939410084066667312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002024 (n + 1)).toNat : ℚ) / (A126615 (n + 1) : ℚ)

end

end A136125.P4939410084066667312

namespace A136125

/-- `A002024(n+1)!/A126615(n+1)` -/
def P4939410084066667312.Spec : Prop :=
  ∀ n, P4939410084066667312.a n = (A136125 (n + 1) : ℚ)

end A136125

/-!
# A136126: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,k+n} having excedance set {1,2,...,k} (the empty set for k=0), 0 <= k <= n-1.

The programs for A136126, there is no canonical definition to state claims against.
-/

/-! ## A136126.P1077643378708368160

`A152884(A102363(n)*A123110(n))`
-/

namespace A136126.P1077643378708368160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152884 (A102363 n * A123110 n).toNat

end

end A136126.P1077643378708368160

/-! ## A136126.P6713516524130428173

`A152884(A102363(n))`
-/

namespace A136126.P6713516524130428173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152884 (A102363 n).toNat

end

end A136126.P6713516524130428173

/-! ## A136126.P12504077575772712909

`A360288(A099627(n))`
-/

namespace A136126.P12504077575772712909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A099627 n).toNat

end

end A136126.P12504077575772712909

/-! ## A136126.P10107528224545249677

`A329369(A137688(n)-A130321(n))`
-/

namespace A136126.P10107528224545249677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A137688 n - A130321 n).toNat

end

end A136126.P10107528224545249677

/-! ## A136126.P17569383988434003903

`A329369(A173787(n)%A022166(n))`
-/

namespace A136126.P17569383988434003903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (Int.tmod (A173787 n) (A022166 n)).toNat

end

end A136126.P17569383988434003903

/-! ## A136126.P7334672837369170677

`A329369(A137688(n)-A137688(n)/A059268(n))`
-/

namespace A136126.P7334672837369170677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (SequenceMachineLib.roundAway ((A137688 n : ℚ) - (A137688 n : ℚ) / (A059268 n : ℚ))).toNat

end

end A136126.P7334672837369170677

/-! ## A136126.P13419539367046940844

`A329369(A173787(n))`
-/

namespace A136126.P13419539367046940844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A173787 n).toNat

end

end A136126.P13419539367046940844

/-! ## A136126.P13416108412103934424

`A329369(A137688(n)-A059268(n))`
-/

namespace A136126.P13416108412103934424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A137688 n - A059268 n).toNat

end

end A136126.P13416108412103934424

/-! ## A136126.P17779252028730183512

`A329369(A004525(record[A073138(n)]))`
-/

namespace A136126.P17779252028730183512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A136126.P17779252028730183512

/-! ## A136126.P4005139608701004396

`A329369(or(1, record[A073138(n)]))`
-/

namespace A136126.P4005139608701004396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A136126.P4005139608701004396

/-!
# A136128: Number of components in all permutations of [1,2,...,n].

The programs for A136128, the canonical program `A136128.P4496303722994767783` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136128 has offset 1).

The definition of A136128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136128.P10875338777007331362

`∑{#}[n, #!*(n+1-#)!]`
-/

namespace A136128.P10875338777007331362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.factorial k * Nat.factorial ((n + 1 : ℤ) - (k : ℤ)).toNat

end

end A136128.P10875338777007331362

namespace A136128

/-- `∑{#}[n, #!*(n+1-#)!]` -/
def P10875338777007331362.Spec : Prop :=
  ∀ n, (P10875338777007331362.a n : ℤ) = A136128 (n + 1)

end A136128

/-! ## A136128.P16964246766335439588

`(a(n-1)+n!)*(n+2)/2` with `a(0)=1`
-/

namespace A136128.P16964246766335439588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (Nat.factorial n : ℚ)) * (n + 2 : ℚ) / 2

end

end A136128.P16964246766335439588

namespace A136128

/-- `(a(n-1)+n!)*(n+2)/2` -/
def P16964246766335439588.Spec : Prop :=
  ∀ n, P16964246766335439588.a n = (A136128 (n + 1) : ℚ)

end A136128

/-! ## A136128.P4496303722994767783

`A003149(n+1)-(n+1)!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136128

/-- `A003149(n+1)-(n+1)!` -/
def P4496303722994767783.Spec : Prop :=
  ∀ n, P4496303722994767783.a n = A136128 (n + 1)

theorem P4496303722994767783.correct : P4496303722994767783.Spec := by
  intro n
  simp only [A136128, Nat.add_sub_cancel]

end A136128

/-! ## A136128.P13311799940823696115

`(n+2)*A003149(n)/2`
-/

namespace A136128.P13311799940823696115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A003149 n : ℚ) / 2

end

end A136128.P13311799940823696115

namespace A136128

/-- `(n+2)*A003149(n)/2` -/
def P13311799940823696115.Spec : Prop :=
  ∀ n, P13311799940823696115.a n = (A136128 (n + 1) : ℚ)

end A136128

/-! ## A136128.P13653878875979549338

`A003149(n+1)-record[A084938(n)]`
-/

namespace A136128.P13653878875979549338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136128.P13653878875979549338

namespace A136128

/-- `A003149(n+1)-record[A084938(n)]` -/
def P13653878875979549338.Spec : Prop :=
  ∀ n, P13653878875979549338.a n = A136128 (n + 1)

end A136128

/-! ## A136128.P6926536597107414455

`A003149(n+1)-A000142(n+1)`
-/

namespace A136128.P6926536597107414455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 (n + 1) - A000142 (n + 1)

end

end A136128.P6926536597107414455

namespace A136128

/-- `A003149(n+1)-A000142(n+1)` -/
def P6926536597107414455.Spec : Prop :=
  ∀ n, P6926536597107414455.a n = A136128 (n + 1)

end A136128

/-! ## A136128.P1564827977216273515

`A003149(n+1)-A052849(n+1)/2`
-/

namespace A136128.P1564827977216273515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003149 (n + 1) : ℚ) - (A052849 (n + 1) : ℚ) / 2

end

end A136128.P1564827977216273515

namespace A136128

/-- `A003149(n+1)-A052849(n+1)/2` -/
def P1564827977216273515.Spec : Prop :=
  ∀ n, P1564827977216273515.a n = (A136128 (n + 1) : ℚ)

end A136128

/-! ## A136128.P13867694070145510205

`A001792(n)/A000079(n)*A003149(n)`
-/

namespace A136128.P13867694070145510205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001792 n : ℚ) / (A000079 n : ℚ) * (A003149 n : ℚ)

end

end A136128.P13867694070145510205

namespace A136128

/-- `A001792(n)/A000079(n)*A003149(n)` -/
def P13867694070145510205.Spec : Prop :=
  ∀ n, P13867694070145510205.a n = (A136128 (n + 1) : ℚ)

end A136128

/-! ## A136128.P12449667026148200041

`A003149(n+1)-A006882(n+1)*A006882(n)`
-/

namespace A136128.P12449667026148200041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 (n + 1) - A006882 (n + 1) * A006882 n

end

end A136128.P12449667026148200041

namespace A136128

/-- `A003149(n+1)-A006882(n+1)*A006882(n)` -/
def P12449667026148200041.Spec : Prop :=
  ∀ n, P12449667026148200041.a n = A136128 (n + 1)

end A136128

/-! ## A136128.P10678068009822880438

`A003149(n+1)-(A052186(n+1)+A006932(n+1))`
-/

namespace A136128.P10678068009822880438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 (n + 1) - (A052186 (n + 1) + A006932 (n + 1))

end

end A136128.P10678068009822880438

namespace A136128

/-- `A003149(n+1)-(A052186(n+1)+A006932(n+1))` -/
def P10678068009822880438.Spec : Prop :=
  ∀ n, P10678068009822880438.a n = A136128 (n + 1)

end A136128

/-!
# A136132: Integral values of (sigma(sigma(n))-phi(phi(n)))/n (the corresponding values of n are given in A136131).

The programs for A136132, there is no canonical definition to state claims against.
-/

/-! ## A136132.P676715303133646500

`A098219(A136131(n+1))%(3^n)`
-/

namespace A136132.P676715303133646500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098219 (A136131 (n + 1)).toNat) (3 ^ n : ℤ)

end

end A136132.P676715303133646500

/-! ## A136132.P6426801029342300110

`A098219(A136131(n+1))-A000007(n)`
-/

namespace A136132.P6426801029342300110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A136131 (n + 1)).toNat - A000007 n

end

end A136132.P6426801029342300110

/-! ## A136132.P10053038444539585659

`A098219(A136131(n+1))-A151811(n)`
-/

namespace A136132.P10053038444539585659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A136131 (n + 1)).toNat - A151811 n

end

end A136132.P10053038444539585659

/-! ## A136132.P15688626744711115386

`char[A007318(n)]*A098219(A136131(n+1))`
-/

namespace A136132.P15688626744711115386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A098219 (A136131 (n + 1)).toNat

end

end A136132.P15688626744711115386

/-! ## A136132.P5801061170738892868

`A000040(n+1)%2*A098219(A136131(n+1))`
-/

namespace A136132.P5801061170738892868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A098219 (A136131 (n + 1)).toNat

end

end A136132.P5801061170738892868

/-!
# A136133: Integer log of harmonic numbers.

The programs for A136133, there is no canonical definition to state claims against.
-/

/-! ## A136133.P6110733353905256477

`A001414(A001008(n+1))-A001414(A002805(n+1))`
-/

namespace A136133.P6110733353905256477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001008 (n + 1)).toNat - A001414 (A002805 (n + 1)).toNat

end

end A136133.P6110733353905256477

/-!
# A136134: Primes in A136133 (integer log of harmonic numbers sequence).

The programs for A136134, there is no canonical definition to state claims against.
-/

/-! ## A136134.P7626943082941321477

`A136133(A136166(2*n+1)+A030283(2*n+3))`
-/

namespace A136134.P7626943082941321477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136133 (A136166 (2 * n + 1) + A030283 (2 * n + 3)).toNat

end

end A136134.P7626943082941321477

/-!
# A136135: Sum of squares until integer log : sopfr(n). Or also, s(s+1)(2s+1)/6 where s=sopfr(n).

The programs for A136135, there is no canonical definition to state claims against.
-/

/-! ## A136135.P3895488054458652137

`A000330(∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A136135.P3895488054458652137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A136135.P3895488054458652137

/-! ## A136135.P7464832421903355195

`sqrt(A271535(∑{p}[n+1, #*val(n+1, #)]))`
-/

namespace A136135.P7464832421903355195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A271535 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) : ℝ)

end

end A136135.P7464832421903355195

/-! ## A136135.P8175861697575590616

`A056520(∑{p}[n+1, #*val(n+1, #)])-1`
-/

namespace A136135.P8175861697575590616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) - 1

end

end A136135.P8175861697575590616

/-! ## A136135.P3379898221444147429

`A153056(∑{p}[n+1, #*val(n+1, #)])-2`
-/

namespace A136135.P3379898221444147429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153056 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) - 2

end

end A136135.P3379898221444147429

/-! ## A136135.P7537237727947989556

`A153057(∑{p}[n+1, #*val(n+1, #)])-3`
-/

namespace A136135.P7537237727947989556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) - 3

end

end A136135.P7537237727947989556

/-!
# A136137: a(n+1)=sopfr(3a(n)+1), with sopfr=A001414. Finishes with 17 (fixed point).

The programs for A136137, there is no canonical definition to state claims against.
-/

/-! ## A136137.P14080148936136828381

`A001414(3*a(n-1)+1)` with `a(0)=1`
-/

namespace A136137.P14080148936136828381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001414 (3 * a (n - 1) + 1).toNat

end

end A136137.P14080148936136828381

/-! ## A136137.P13822870459659771911

`A001414(lcm(3, a(n-1))+1)` with `a(0)=1`
-/

namespace A136137.P13822870459659771911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001414 (Int.lcm 3 (a (n - 1)) + 1)

end

end A136137.P13822870459659771911

/-! ## A136137.P9284537746558122612

`sqrt(A074373(3*a(n-1)+1))` with `a(0)=1`
-/

namespace A136137.P9284537746558122612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A074373 (SequenceMachineLib.roundAway (3 * a (n - 1) + 1)).toNat : ℝ)

end

end A136137.P9284537746558122612

/-! ## A136137.P15359846293027824007

`A036288(3*a(n-1)+1)-1` with `a(0)=1`
-/

namespace A136137.P15359846293027824007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036288 (3 * a (n - 1) + 1).toNat - 1

end

end A136137.P15359846293027824007

/-! ## A136137.P10387152931335461378

`A001414(4-3*(1-a(n-1)))` with `a(0)=1`
-/

namespace A136137.P10387152931335461378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001414 (4 - 3 * (1 - a (n - 1))).toNat

end

end A136137.P10387152931335461378

/-!
# A136138: a(n+1)=sopfr(4a(n)+1), with sopfr=A001414. Finishes with the cycle (34, 137, 67, 269, 362, 36).

The programs for A136138, the canonical program `A136138.P12917044871717773093` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136138 has offset 0).

The definition of A136138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136138.P12917044871717773093

`A100005(2*a(n-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136138

/-- `A100005(2*a(n-1)+1)` -/
def P12917044871717773093.Spec : Prop :=
  ∀ n, P12917044871717773093.a n = A136138 n

theorem P12917044871717773093.correct : P12917044871717773093.Spec := by
  intro n
  simp only [A136138]

end A136138

/-!
# A136139: a(n+1)=sopfr(5a(n)+1), with sopfr=A001414. Finishes with a cycle with length 16.

The programs for A136139, the canonical program `A136139.P10237362881799138396` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136139 has offset 1).

The definition of A136139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136139.P10237362881799138396

`A001414(5*a(n-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A136139

/-- `A001414(5*a(n-1)+1)` -/
def P10237362881799138396.Spec : Prop :=
  ∀ n, P10237362881799138396.a n = A136139 (n + 1)

theorem P10237362881799138396.correct : P10237362881799138396.Spec := by
  intro n
  simp only [A136139, Nat.add_sub_cancel]

end A136139

/-!
# A136141: Decimal expansion of Sum_{p prime} 1/(p*(p-1)).

The programs for A136141, there is no canonical definition to state claims against.
-/

/-! ## A136141.P2541606767126011173

`9-A284748(n)`
-/

namespace A136141.P2541606767126011173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A284748 n

end

end A136141.P2541606767126011173

/-!
# A136143: First of six consecutive primes that are three sets of twin primes.

The programs for A136143, there is no canonical definition to state claims against.
-/

/-! ## A136143.P11626599805396234711

`A090953(n+1)`
-/

namespace A136143.P11626599805396234711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 (n + 1)

end

end A136143.P11626599805396234711

/-! ## A136143.P11234645688309379579

`record[A090953(abs(1-n))]`
-/

namespace A136143.P11234645688309379579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136143.P11234645688309379579

/-! ## A136143.P11229911447966464501

`ratio[A090953(n)]*A090953(n)`
-/

namespace A136143.P11229911447966464501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A090953 n : ℚ)

end

end A136143.P11229911447966464501

/-! ## A136143.P4278223855169472131

`or(1, A090953(A052938(2*n)))`
-/

namespace A136143.P4278223855169472131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A090953 (A052938 (2 * n)).toNat)

end

end A136143.P4278223855169472131

/-! ## A136143.P9501398717421525705

`record[A090953(A057979(n))-A209229(n)]`
-/

namespace A136143.P9501398717421525705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 (A057979 n).toNat - A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136143.P9501398717421525705

/-! ## A136143.P11722027501526504871

`record[A090953(A110659(n))-A209229(n)]`
-/

namespace A136143.P11722027501526504871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 (A110659 n).toNat - A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136143.P11722027501526504871

/-! ## A136143.P458541499872139504

`∩[A090953(n)-A000038(n), A090953(n)]`
-/

namespace A136143.P458541499872139504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136143.P458541499872139504

/-! ## A136143.P8659428558116149275

`∩[A053778(n+1), A105412(n+1)]`
-/

namespace A136143.P8659428558116149275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136143.P8659428558116149275

/-! ## A136143.P2912240371859476695

`∩[A105412(n+1), A089628(n+3)]`
-/

namespace A136143.P2912240371859476695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136143.P2912240371859476695

/-! ## A136143.P5071654155455693668

`∩[A022889(n+1), A053778(n+1)]`
-/

namespace A136143.P5071654155455693668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136143.P5071654155455693668

/-! ## A136143.P5272460441758069140

`∩[A022889(n+1), A089628(n+3)]`
-/

namespace A136143.P5272460441758069140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136143.P5272460441758069140

/-! ## A136143.P16617678473066540611

`∩[A022885(n+1), A105412(n+1)]`
-/

namespace A136143.P16617678473066540611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136143.P16617678473066540611

/-!
# A136144: Six consecutive primes with three sets of twin primes.

The programs for A136144, there is no canonical definition to state claims against.
-/

/-! ## A136144.P1638152431187355515

`A069467(n+2)%A260086(n+1)`
-/

namespace A136144.P1638152431187355515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069467 (n + 2)) (A260086 (n + 1))

end

end A136144.P1638152431187355515

/-! ## A136144.P8598837366577673298

`A069467(n+2)+A000038(A008279(n))`
-/

namespace A136144.P8598837366577673298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069467 (n + 2) + A000038 (A008279 n).toNat

end

end A136144.P8598837366577673298

/-! ## A136144.P8744167268241164674

`A069467(n+2)*A093178(A351640(n))`
-/

namespace A136144.P8744167268241164674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069467 (n + 2) * A093178 (A351640 n).toNat

end

end A136144.P8744167268241164674

/-! ## A136144.P268620543871175706

`A069467(n+2)*A318454(A069457(n+1))`
-/

namespace A136144.P268620543871175706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069467 (n + 2) * A318454 (A069457 (n + 1)).toNat

end

end A136144.P268620543871175706

/-! ## A136144.P107972635110304289

`A069467(n+2)+A033665(A033865(n))`
-/

namespace A136144.P107972635110304289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069467 (n + 2) + A033665 (A033865 n).toNat

end

end A136144.P107972635110304289

/-!
# A136149: Values n such that the sequences a(k+1)=sopfr(n a(k)) finish with a fixed point. Here sopfr=A001414 and a(1)=1.

The programs for A136149, there is no canonical definition to state claims against.
-/

/-! ## A136149.P10463936798019823647

`eq[1, A136148(n)]+1`
-/

namespace A136149.P10463936798019823647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136149.P10463936798019823647

/-! ## A136149.P6091458480093961773

`A008611(3*eq[1, A136148(n)])`
-/

namespace A136149.P6091458480093961773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136149.P6091458480093961773

/-! ## A136149.P7593063825566671122

`A008612(6*eq[1, A136148(n)])`
-/

namespace A136149.P7593063825566671122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136149.P7593063825566671122

/-! ## A136149.P6267983260552109235

`record[A000027(n+1)/A136148(n)]`
-/

namespace A136149.P6267983260552109235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A136148 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136149.P6267983260552109235

/-! ## A136149.P7927927493342219749

`record[A028310(n+1)/A136148(n)]`
-/

namespace A136149.P7927927493342219749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A136148 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136149.P7927927493342219749

/-!
# A136151: Composites n with exactly two distinct prime divisors and of the form n=1+(any prime).

The programs for A136151, the canonical program `A136151.P15773181379420580496` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136151 has offset 1).

The definition of A136151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136151.P15773181379420580496

`p?[A100367(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136151

/-- `p?[A100367(n+1)-1]+1` -/
def P15773181379420580496.Spec : Prop :=
  ∀ n, P15773181379420580496.a n = A136151 (n + 1)

theorem P15773181379420580496.correct : P15773181379420580496.Spec := by
  intro n
  simp only [A136151, Nat.add_sub_cancel]

end A136151

/-! ## A136151.P6618704587379644346

`filter[A055670(n+1), A340373(#)]`
-/

namespace A136151.P6618704587379644346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A136151.P6618704587379644346

namespace A136151

/-- `filter[A055670(n+1), A340373(#)]` -/
def P6618704587379644346.Spec : Prop :=
  ∀ n, P6618704587379644346.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P970858066708003670

`filter[A136155(n+1), A340363(#)]`
-/

namespace A136151.P970858066708003670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A136151.P970858066708003670

namespace A136151

/-- `filter[A136155(n+1), A340363(#)]` -/
def P970858066708003670.Spec : Prop :=
  ∀ n, P970858066708003670.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P14246672357372106530

`filter[A136155(n+1), A340373(#)]`
-/

namespace A136151.P14246672357372106530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A136151.P14246672357372106530

namespace A136151

/-- `filter[A136155(n+1), A340373(#)]` -/
def P14246672357372106530.Spec : Prop :=
  ∀ n, P14246672357372106530.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P17832720539916059954

`filter[A136155(n+1), A353672(#)]`
-/

namespace A136151.P17832720539916059954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A136151.P17832720539916059954

namespace A136151

/-- `filter[A136155(n+1), A353672(#)]` -/
def P17832720539916059954.Spec : Prop :=
  ∀ n, P17832720539916059954.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P14212388551966072195

`filter[A175216(n+1), A340373(#)]`
-/

namespace A136151.P14212388551966072195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A136151.P14212388551966072195

namespace A136151

/-- `filter[A175216(n+1), A340373(#)]` -/
def P14212388551966072195.Spec : Prop :=
  ∀ n, P14212388551966072195.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P15766093617390167604

`filter[A008864(n+2), A340373(#)]`
-/

namespace A136151.P15766093617390167604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A136151.P15766093617390167604

namespace A136151

/-- `filter[A008864(n+2), A340373(#)]` -/
def P15766093617390167604.Spec : Prop :=
  ∀ n, P15766093617390167604.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P14591639102922983907

`filter[A028815(n+2), A340373(#)]`
-/

namespace A136151.P14591639102922983907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A136151.P14591639102922983907

namespace A136151

/-- `filter[A028815(n+2), A340373(#)]` -/
def P14591639102922983907.Spec : Prop :=
  ∀ n, P14591639102922983907.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P13305434203223900528

`filter[A135731(n+2), A340373(#)]`
-/

namespace A136151.P13305434203223900528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A136151.P13305434203223900528

namespace A136151

/-- `filter[A135731(n+2), A340373(#)]` -/
def P13305434203223900528.Spec : Prop :=
  ∀ n, P13305434203223900528.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P3243240723775355381

`filter[A299763(n+3), A340373(#)]`
-/

namespace A136151.P3243240723775355381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A136151.P3243240723775355381

namespace A136151

/-- `filter[A299763(n+3), A340373(#)]` -/
def P3243240723775355381.Spec : Prop :=
  ∀ n, P3243240723775355381.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P7346464456216014133

`∩[A100367(n+1), A028815(n)]`
-/

namespace A136151.P7346464456216014133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P7346464456216014133

namespace A136151

/-- `∩[A100367(n+1), A028815(n)]` -/
def P7346464456216014133.Spec : Prop :=
  ∀ n, (P7346464456216014133.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P10946694533503718509

`A008864(eq[2, A008335(n+1)]+1)`
-/

namespace A136151.P10946694533503718509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136151.P10946694533503718509

namespace A136151

/-- `A008864(eq[2, A008335(n+1)]+1)` -/
def P10946694533503718509.Spec : Prop :=
  ∀ n, P10946694533503718509.a n = A136151 (n + 1)

end A136151

/-! ## A136151.P5953655265951416908

`∩[A008864(n+1), A100367(n+1)]`
-/

namespace A136151.P5953655265951416908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P5953655265951416908

namespace A136151

/-- `∩[A008864(n+1), A100367(n+1)]` -/
def P5953655265951416908.Spec : Prop :=
  ∀ n, (P5953655265951416908.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P11330249033790871927

`∩[A055670(n+1), A100367(n+1)]`
-/

namespace A136151.P11330249033790871927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P11330249033790871927

namespace A136151

/-- `∩[A055670(n+1), A100367(n+1)]` -/
def P11330249033790871927.Spec : Prop :=
  ∀ n, (P11330249033790871927.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P2351617669040885980

`∩[A093515(n+1), A100367(n+1)]`
-/

namespace A136151.P2351617669040885980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P2351617669040885980

namespace A136151

/-- `∩[A093515(n+1), A100367(n+1)]` -/
def P2351617669040885980.Spec : Prop :=
  ∀ n, (P2351617669040885980.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P944621301273241105

`∩[A100367(n+1), A135731(n+1)]`
-/

namespace A136151.P944621301273241105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P944621301273241105

namespace A136151

/-- `∩[A100367(n+1), A135731(n+1)]` -/
def P944621301273241105.Spec : Prop :=
  ∀ n, (P944621301273241105.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P66486207377614330

`∩[A100367(n+1), A136155(n+1)]`
-/

namespace A136151.P66486207377614330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P66486207377614330

namespace A136151

/-- `∩[A100367(n+1), A136155(n+1)]` -/
def P66486207377614330.Spec : Prop :=
  ∀ n, (P66486207377614330.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P7470046387247844563

`∩[A100367(n+1), A299763(n+1)]`
-/

namespace A136151.P7470046387247844563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P7470046387247844563

namespace A136151

/-- `∩[A100367(n+1), A299763(n+1)]` -/
def P7470046387247844563.Spec : Prop :=
  ∀ n, (P7470046387247844563.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P11493263025469827149

`∩[A136155(n+1), A321193(n+1)]`
-/

namespace A136151.P11493263025469827149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P11493263025469827149

namespace A136151

/-- `∩[A136155(n+1), A321193(n+1)]` -/
def P11493263025469827149.Spec : Prop :=
  ∀ n, (P11493263025469827149.a n : ℤ) = A136151 (n + 1)

end A136151

/-! ## A136151.P4747293687988539236

`∩[A000040(n+1)+1, A100367(n+1)]`
-/

namespace A136151.P4747293687988539236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136151.P4747293687988539236

namespace A136151

/-- `∩[A000040(n+1)+1, A100367(n+1)]` -/
def P4747293687988539236.Spec : Prop :=
  ∀ n, (P4747293687988539236.a n : ℤ) = A136151 (n + 1)

end A136151

/-!
# A136152: Composites one larger than a prime and with exactly three distinct prime factors.

The programs for A136152, the canonical program `A136152.P11235679942732111963` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136152 has offset 1).

The definition of A136152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136152.P11235679942732111963

`filter[A136155(n+1), A353674(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A136152

/-- `filter[A136155(n+1), A353674(#)]` -/
def P11235679942732111963.Spec : Prop :=
  ∀ n, P11235679942732111963.a n = A136152 (n + 1)

theorem P11235679942732111963.correct : P11235679942732111963.Spec := by
  intro n
  simp only [A136152, Nat.add_sub_cancel]

end A136152

/-! ## A136152.P1564888404856804632

`∩[A098904(n+1), A136155(n+1)]`
-/

namespace A136152.P1564888404856804632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P1564888404856804632

namespace A136152

/-- `∩[A098904(n+1), A136155(n+1)]` -/
def P1564888404856804632.Spec : Prop :=
  ∀ n, (P1564888404856804632.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P1658930454695715155

`∩[2*A070537(n+1), A136155(n+1)]`
-/

namespace A136152.P1658930454695715155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P1658930454695715155

namespace A136152

/-- `∩[2*A070537(n+1), A136155(n+1)]` -/
def P1658930454695715155.Spec : Prop :=
  ∀ n, (P1658930454695715155.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P9684905346269666938

`p?[A033992(n+1)-1]+1`
-/

namespace A136152.P9684905346269666938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136152.P9684905346269666938

namespace A136152

/-- `p?[A033992(n+1)-1]+1` -/
def P9684905346269666938.Spec : Prop :=
  ∀ n, P9684905346269666938.a n = A136152 (n + 1)

end A136152

/-! ## A136152.P16372287733305510408

`p?[A214195(n+1)-1]+1`
-/

namespace A136152.P16372287733305510408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136152.P16372287733305510408

namespace A136152

/-- `p?[A214195(n+1)-1]+1` -/
def P16372287733305510408.Spec : Prop :=
  ∀ n, P16372287733305510408.a n = A136152 (n + 1)

end A136152

/-! ## A136152.P17505843933478515815

`∩[A033992(n+1), A028815(n)]`
-/

namespace A136152.P17505843933478515815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P17505843933478515815

namespace A136152

/-- `∩[A033992(n+1), A028815(n)]` -/
def P17505843933478515815.Spec : Prop :=
  ∀ n, (P17505843933478515815.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P8238468403042157578

`∩[A214195(n+1), A028815(n)]`
-/

namespace A136152.P8238468403042157578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P8238468403042157578

namespace A136152

/-- `∩[A214195(n+1), A028815(n)]` -/
def P8238468403042157578.Spec : Prop :=
  ∀ n, (P8238468403042157578.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P8303614437786760374

`∩[A008864(n+1), A033992(n+1)]`
-/

namespace A136152.P8303614437786760374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P8303614437786760374

namespace A136152

/-- `∩[A008864(n+1), A033992(n+1)]` -/
def P8303614437786760374.Spec : Prop :=
  ∀ n, (P8303614437786760374.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P1442159161788291214

`∩[A033992(n+1), A055670(n+1)]`
-/

namespace A136152.P1442159161788291214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P1442159161788291214

namespace A136152

/-- `∩[A033992(n+1), A055670(n+1)]` -/
def P1442159161788291214.Spec : Prop :=
  ∀ n, (P1442159161788291214.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P5716011978666542096

`∩[A033992(n+1), A093515(n+1)]`
-/

namespace A136152.P5716011978666542096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P5716011978666542096

namespace A136152

/-- `∩[A033992(n+1), A093515(n+1)]` -/
def P5716011978666542096.Spec : Prop :=
  ∀ n, (P5716011978666542096.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P13172243875882761705

`∩[A033992(n+1), A111688(n+1)]`
-/

namespace A136152.P13172243875882761705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P13172243875882761705

namespace A136152

/-- `∩[A033992(n+1), A111688(n+1)]` -/
def P13172243875882761705.Spec : Prop :=
  ∀ n, (P13172243875882761705.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P1121848733816317011

`∩[A033992(n+1), A135731(n+1)]`
-/

namespace A136152.P1121848733816317011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P1121848733816317011

namespace A136152

/-- `∩[A033992(n+1), A135731(n+1)]` -/
def P1121848733816317011.Spec : Prop :=
  ∀ n, (P1121848733816317011.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P1795728013530139871

`∩[A033992(n+1), A136155(n+1)]`
-/

namespace A136152.P1795728013530139871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P1795728013530139871

namespace A136152

/-- `∩[A033992(n+1), A136155(n+1)]` -/
def P1795728013530139871.Spec : Prop :=
  ∀ n, (P1795728013530139871.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P14643674143045061641

`∩[A008864(n+1), A214195(n+1)]`
-/

namespace A136152.P14643674143045061641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P14643674143045061641

namespace A136152

/-- `∩[A008864(n+1), A214195(n+1)]` -/
def P14643674143045061641.Spec : Prop :=
  ∀ n, (P14643674143045061641.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P796431134823349907

`∩[A093515(n+1), A214195(n+1)]`
-/

namespace A136152.P796431134823349907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P796431134823349907

namespace A136152

/-- `∩[A093515(n+1), A214195(n+1)]` -/
def P796431134823349907.Spec : Prop :=
  ∀ n, (P796431134823349907.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P13785871674187014085

`∩[A111688(n+1), A214195(n+1)]`
-/

namespace A136152.P13785871674187014085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P13785871674187014085

namespace A136152

/-- `∩[A111688(n+1), A214195(n+1)]` -/
def P13785871674187014085.Spec : Prop :=
  ∀ n, (P13785871674187014085.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P4791011327773309477

`∩[A033992(n+1), A299763(n+1)]`
-/

namespace A136152.P4791011327773309477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P4791011327773309477

namespace A136152

/-- `∩[A033992(n+1), A299763(n+1)]` -/
def P4791011327773309477.Spec : Prop :=
  ∀ n, (P4791011327773309477.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P10207877393947854952

`∩[A135731(n+1), A214195(n+1)]`
-/

namespace A136152.P10207877393947854952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P10207877393947854952

namespace A136152

/-- `∩[A135731(n+1), A214195(n+1)]` -/
def P10207877393947854952.Spec : Prop :=
  ∀ n, (P10207877393947854952.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P3568388803445528273

`∩[A136155(n+1), A214195(n+1)]`
-/

namespace A136152.P3568388803445528273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P3568388803445528273

namespace A136152

/-- `∩[A136155(n+1), A214195(n+1)]` -/
def P3568388803445528273.Spec : Prop :=
  ∀ n, (P3568388803445528273.a n : ℤ) = A136152 (n + 1)

end A136152

/-! ## A136152.P15526838394398557664

`∩[A033992(n+1), A351863(n+1)]`
-/

namespace A136152.P15526838394398557664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136152.P15526838394398557664

namespace A136152

/-- `∩[A033992(n+1), A351863(n+1)]` -/
def P15526838394398557664.Spec : Prop :=
  ∀ n, (P15526838394398557664.a n : ℤ) = A136152 (n + 1)

end A136152

/-!
# A136153: Composites one larger than a prime, with exactly four distinct prime factors.

The programs for A136153, the canonical program `A136153.P235196325310988984` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136153 has offset 1).

The definition of A136153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136153.P235196325310988984

`A008864(eq[4, A008335(n+1)]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136153

/-- `A008864(eq[4, A008335(n+1)]+1)` -/
def P235196325310988984.Spec : Prop :=
  ∀ n, P235196325310988984.a n = A136153 (n + 1)

theorem P235196325310988984.correct : P235196325310988984.Spec := by
  intro n
  simp only [A136153, Nat.add_sub_cancel]

end A136153

/-! ## A136153.P7456899679923786580

`p?[A033993(n+1)-1]+1`
-/

namespace A136153.P7456899679923786580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136153.P7456899679923786580

namespace A136153

/-- `p?[A033993(n+1)-1]+1` -/
def P7456899679923786580.Spec : Prop :=
  ∀ n, P7456899679923786580.a n = A136153 (n + 1)

end A136153

/-! ## A136153.P14779733504610989927

`∩[A033993(n+1), A028815(n)]`
-/

namespace A136153.P14779733504610989927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P14779733504610989927

namespace A136153

/-- `∩[A033993(n+1), A028815(n)]` -/
def P14779733504610989927.Spec : Prop :=
  ∀ n, (P14779733504610989927.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P1612081329987980056

`∩[A008864(n+1), A033993(n+1)]`
-/

namespace A136153.P1612081329987980056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P1612081329987980056

namespace A136153

/-- `∩[A008864(n+1), A033993(n+1)]` -/
def P1612081329987980056.Spec : Prop :=
  ∀ n, (P1612081329987980056.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P5735002112051494678

`∩[A033993(n+1), A055670(n+1)]`
-/

namespace A136153.P5735002112051494678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P5735002112051494678

namespace A136153

/-- `∩[A033993(n+1), A055670(n+1)]` -/
def P5735002112051494678.Spec : Prop :=
  ∀ n, (P5735002112051494678.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P10552499905217078439

`∩[A033993(n+1), A093515(n+1)]`
-/

namespace A136153.P10552499905217078439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P10552499905217078439

namespace A136153

/-- `∩[A033993(n+1), A093515(n+1)]` -/
def P10552499905217078439.Spec : Prop :=
  ∀ n, (P10552499905217078439.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P7758820672988413604

`∩[A033993(n+1), A135731(n+1)]`
-/

namespace A136153.P7758820672988413604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P7758820672988413604

namespace A136153

/-- `∩[A033993(n+1), A135731(n+1)]` -/
def P7758820672988413604.Spec : Prop :=
  ∀ n, (P7758820672988413604.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P11791427062471113147

`∩[A033993(n+1), A299763(n+1)]`
-/

namespace A136153.P11791427062471113147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P11791427062471113147

namespace A136153

/-- `∩[A033993(n+1), A299763(n+1)]` -/
def P11791427062471113147.Spec : Prop :=
  ∀ n, (P11791427062471113147.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P4093764095118830091

`∩[A033993(n+1), A351863(n+1)]`
-/

namespace A136153.P4093764095118830091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P4093764095118830091

namespace A136153

/-- `∩[A033993(n+1), A351863(n+1)]` -/
def P4093764095118830091.Spec : Prop :=
  ∀ n, (P4093764095118830091.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P3816840604072195863

`∩[A386606(n+1), A028815(n)]`
-/

namespace A136153.P3816840604072195863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P3816840604072195863

namespace A136153

/-- `∩[A386606(n+1), A028815(n)]` -/
def P3816840604072195863.Spec : Prop :=
  ∀ n, (P3816840604072195863.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P8625775088964838104

`∩[A008864(n+1), A386606(n+1)]`
-/

namespace A136153.P8625775088964838104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P8625775088964838104

namespace A136153

/-- `∩[A008864(n+1), A386606(n+1)]` -/
def P8625775088964838104.Spec : Prop :=
  ∀ n, (P8625775088964838104.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P14074647576428496425

`∩[A055670(n+1), A386606(n+1)]`
-/

namespace A136153.P14074647576428496425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P14074647576428496425

namespace A136153

/-- `∩[A055670(n+1), A386606(n+1)]` -/
def P14074647576428496425.Spec : Prop :=
  ∀ n, (P14074647576428496425.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P13794508180393504730

`∩[A135731(n+1), A386606(n+1)]`
-/

namespace A136153.P13794508180393504730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P13794508180393504730

namespace A136153

/-- `∩[A135731(n+1), A386606(n+1)]` -/
def P13794508180393504730.Spec : Prop :=
  ∀ n, (P13794508180393504730.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P2725351132793784400

`∩[A187813(n+1), A386606(n+1)]`
-/

namespace A136153.P2725351132793784400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P2725351132793784400

namespace A136153

/-- `∩[A187813(n+1), A386606(n+1)]` -/
def P2725351132793784400.Spec : Prop :=
  ∀ n, (P2725351132793784400.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P5489465428087908302

`∩[A299763(n+1), A386606(n+1)]`
-/

namespace A136153.P5489465428087908302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P5489465428087908302

namespace A136153

/-- `∩[A299763(n+1), A386606(n+1)]` -/
def P5489465428087908302.Spec : Prop :=
  ∀ n, (P5489465428087908302.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P10879353231944910249

`∩[A351863(n+1), A386606(n+1)]`
-/

namespace A136153.P10879353231944910249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136153.P10879353231944910249

namespace A136153

/-- `∩[A351863(n+1), A386606(n+1)]` -/
def P10879353231944910249.Spec : Prop :=
  ∀ n, (P10879353231944910249.a n : ℤ) = A136153 (n + 1)

end A136153

/-! ## A136153.P8210977930653611910

`A343226(p?[A033993(n+1)-1])`
-/

namespace A136153.P8210977930653611910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343226 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136153.P8210977930653611910

namespace A136153

/-- `A343226(p?[A033993(n+1)-1])` -/
def P8210977930653611910.Spec : Prop :=
  ∀ n, P8210977930653611910.a n = A136153 (n + 1)

end A136153

/-! ## A136153.P17857036085795934613

`A001615(p?[A033993(n+1)-1])`
-/

namespace A136153.P17857036085795934613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136153.P17857036085795934613

namespace A136153

/-- `A001615(p?[A033993(n+1)-1])` -/
def P17857036085795934613.Spec : Prop :=
  ∀ n, P17857036085795934613.a n = A136153 (n + 1)

end A136153

/-! ## A136153.P9319295044676080230

`A036288(p?[A033993(n+1)-1])`
-/

namespace A136153.P9319295044676080230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136153.P9319295044676080230

namespace A136153

/-- `A036288(p?[A033993(n+1)-1])` -/
def P9319295044676080230.Spec : Prop :=
  ∀ n, P9319295044676080230.a n = A136153 (n + 1)

end A136153

/-!
# A136154: Composites one larger than a prime, with exactly five distinct prime factors.

The programs for A136154, there is no canonical definition to state claims against.
-/

/-! ## A136154.P18172988072594751457

`p?[A051270(n+1)-1]+1`
-/

namespace A136154.P18172988072594751457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136154.P18172988072594751457

/-! ## A136154.P12055625528688675904

`∩[A000040(n+1)+1, A051270(n+1)]`
-/

namespace A136154.P12055625528688675904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136154.P12055625528688675904

/-! ## A136154.P2689475037782403893

`∩[A051270(n+1), A048974(n+1)-1]`
-/

namespace A136154.P2689475037782403893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136154.P2689475037782403893

/-! ## A136154.P11306199804857465782

`record[A006530(A051270(n+1)-1)]+1`
-/

namespace A136154.P11306199804857465782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051270 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A136154.P11306199804857465782

/-!
# A136155: Composites one larger than a prime and with exactly two or three distinct prime factors.

The programs for A136155, the canonical program `A136155.P11023071781153490285` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136155 has offset 1).

The definition of A136155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136155.P11023071781153490285

`p?[n*A001222(A259936(n+1))]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A136155

/-- `p?[n*A001222(A259936(n+1))]+1` -/
def P11023071781153490285.Spec : Prop :=
  ∀ n, P11023071781153490285.a n = A136155 (n + 1)

theorem P11023071781153490285.correct : P11023071781153490285.Spec := by
  intro n
  simp only [A136155, Nat.add_sub_cancel]

end A136155

/-! ## A136155.P10491172898207057878

`p?[n*A050370(A007947(n+1))]+1`
-/

namespace A136155.P10491172898207057878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050370 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136155.P10491172898207057878

namespace A136155

/-- `p?[n*A050370(A007947(n+1))]+1` -/
def P10491172898207057878.Spec : Prop :=
  ∀ n, P10491172898207057878.a n = A136155 (n + 1)

end A136155

/-! ## A136155.P16591162199147767459

`p?[n*A276729(A034444(n+1))]+1`
-/

namespace A136155.P16591162199147767459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276729 (A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136155.P16591162199147767459

namespace A136155

/-- `p?[n*A276729(A034444(n+1))]+1` -/
def P16591162199147767459.Spec : Prop :=
  ∀ n, P16591162199147767459.a n = A136155 (n + 1)

end A136155

/-! ## A136155.P6938235868316041895

`p?[n*A301652(A105561(n+1))]+1`
-/

namespace A136155.P6938235868316041895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A301652 (A105561 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136155.P6938235868316041895

namespace A136155

/-- `p?[n*A301652(A105561(n+1))]+1` -/
def P6938235868316041895.Spec : Prop :=
  ∀ n, P6938235868316041895.a n = A136155 (n + 1)

end A136155

/-! ## A136155.P13690972087833341981

`A138837(n+2)+A036262(A000217(2*(n+2)))`
-/

namespace A136155.P13690972087833341981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 2) + A036262 (A000217 (2 * (n + 2))).toNat

end

end A136155.P13690972087833341981

namespace A136155

/-- `A138837(n+2)+A036262(A000217(2*(n+2)))` -/
def P13690972087833341981.Spec : Prop :=
  ∀ n, P13690972087833341981.a n = A136155 (n + 1)

end A136155

/-! ## A136155.P8252854382557187764

`A138837(n+2)+A006519(A125830(2*(n+2)))`
-/

namespace A136155.P8252854382557187764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 2) + A006519 (A125830 (2 * (n + 2))).toNat

end

end A136155.P8252854382557187764

namespace A136155

/-- `A138837(n+2)+A006519(A125830(2*(n+2)))` -/
def P8252854382557187764.Spec : Prop :=
  ∀ n, P8252854382557187764.a n = A136155 (n + 1)

end A136155

/-! ## A136155.P13632860853852760551

`A100976(A138837(n+2))`
-/

namespace A136155.P13632860853852760551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100976 (A138837 (n + 2)).toNat

end

end A136155.P13632860853852760551

namespace A136155

/-- `A100976(A138837(n+2))` -/
def P13632860853852760551.Spec : Prop :=
  ∀ n, P13632860853852760551.a n = A136155 (n + 1)

end A136155

/-! ## A136155.P1141479229910057964

`A056045(A138837(n+2))`
-/

namespace A136155.P1141479229910057964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056045 (A138837 (n + 2)).toNat

end

end A136155.P1141479229910057964

namespace A136155

/-- `A056045(A138837(n+2))` -/
def P1141479229910057964.Spec : Prop :=
  ∀ n, P1141479229910057964.a n = A136155 (n + 1)

end A136155

/-! ## A136155.P4839054532208426168

`filter[A087743(n+1), A143731(#)]`
-/

namespace A136155.P4839054532208426168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A136155.P4839054532208426168

namespace A136155

/-- `filter[A087743(n+1), A143731(#)]` -/
def P4839054532208426168.Spec : Prop :=
  ∀ n, P4839054532208426168.a n = A136155 (n + 1)

end A136155

/-!
# A136156: Quotients p!/n arising in A139171.

The programs for A136156, there is no canonical definition to state claims against.
-/

/-! ## A136156.P4578885629516405987

`A139171(n+1)!/(n+1)`
-/

namespace A136156.P4578885629516405987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A139171 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A136156.P4578885629516405987

/-! ## A136156.P4245753905692549524

`A000040(A139169(n+1))!/(n+1)`
-/

namespace A136156.P4245753905692549524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (A139169 (n + 1)).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A136156.P4245753905692549524

/-! ## A136156.P16010412760161311781

`A139170(n+1)-1`
-/

namespace A136156.P16010412760161311781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139170 (n + 1) - 1

end

end A136156.P16010412760161311781

/-! ## A136156.P2846800972535487820

`A139209(A034545(n+1))+A139170(n+1)`
-/

namespace A136156.P2846800972535487820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139209 (A034545 (n + 1)).toNat + A139170 (n + 1)

end

end A136156.P2846800972535487820

/-!
# A136157: Triangle by columns, (3, 1, 0, 0, 0, ...) in every column.

The programs for A136157, the canonical program `A136157.P7779191601585148338` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136157 has offset 0).

The definition of A136157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136157.P9541996703020202809

`T(n-1,k-1)` with `a(0)=3, a(1)=1`
-/

namespace A136157.P9541996703020202809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n

end

end A136157.P9541996703020202809

namespace A136157

/-- `T(n-1,k-1)` -/
def P9541996703020202809.Spec : Prop :=
  ∀ n, (P9541996703020202809.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P4502066363864875096

`C(3, row(n)+2-col(n))`
-/

namespace A136157.P4502066363864875096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((SequenceMachineLib.triRow n + 2 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A136157.P4502066363864875096

namespace A136157

/-- `C(3, row(n)+2-col(n))` -/
def P4502066363864875096.Spec : Prop :=
  ∀ n, (P4502066363864875096.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P805626251040640685

`C(3, 3^(row(n)-col(n)))`
-/

namespace A136157.P805626251040640685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))).toNat

end

end A136157.P805626251040640685

namespace A136157

/-- `C(3, 3^(row(n)-col(n)))` -/
def P805626251040640685.Spec : Prop :=
  ∀ n, (P805626251040640685.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P2938028883833667323

`a(n-round(sqrt(2*n)))` with `a(0)=3, a(1)=1, a(2)=3, a(3)=0`
-/

namespace A136157.P2938028883833667323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 3, 0] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A136157.P2938028883833667323

namespace A136157

/-- `a(n-round(sqrt(2*n)))` -/
def P2938028883833667323.Spec : Prop :=
  ∀ n, (P2938028883833667323.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P16805591976878355466

`C(3, C(comp[∑[n]]-n, 2)+1-n)`
-/

namespace A136157.P16805591976878355466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + (1 - (n : ℤ))).toNat

end

end A136157.P16805591976878355466

namespace A136157

/-- `C(3, C(comp[∑[n]]-n, 2)+1-n)` -/
def P16805591976878355466.Spec : Prop :=
  ∀ n, (P16805591976878355466.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P13168228177225351345

`round(3/(n-C(comp[∑[n]]-n, 2))²)`
-/

namespace A136157.P13168228177225351345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (((n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 : ℚ))

end

end A136157.P13168228177225351345

namespace A136157

/-- `round(3/(n-C(comp[∑[n]]-n, 2))²)` -/
def P13168228177225351345.Spec : Prop :=
  ∀ n, P13168228177225351345.a n = A136157 n

end A136157

/-! ## A136157.P10943043963621866292

`round(3/(C(comp[C(n, 2)]-n, 2)-n)²)`
-/

namespace A136157.P10943043963621866292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℚ))

end

end A136157.P10943043963621866292

namespace A136157

/-- `round(3/(C(comp[C(n, 2)]-n, 2)-n)²)` -/
def P10943043963621866292.Spec : Prop :=
  ∀ n, P10943043963621866292.a n = A136157 n

end A136157

/-! ## A136157.P7779191601585148338

`C(3, A099375(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136157

/-- `C(3, A099375(n))` -/
def P7779191601585148338.Spec : Prop :=
  ∀ n, (P7779191601585148338.a n : ℤ) = A136157 n

theorem P7779191601585148338.correct : P7779191601585148338.Spec := by
  intro n
  simp only [A136157]

end A136157

/-! ## A136157.P6254942736686399784

`C(3, A104568(n))`
-/

namespace A136157.P6254942736686399784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A104568 n).toNat

end

end A136157.P6254942736686399784

namespace A136157

/-- `C(3, A104568(n))` -/
def P6254942736686399784.Spec : Prop :=
  ∀ n, (P6254942736686399784.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P4223092880927666102

`C(3, A126953(n))`
-/

namespace A136157.P4223092880927666102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A126953 n).toNat

end

end A136157.P4223092880927666102

namespace A136157

/-- `C(3, A126953(n))` -/
def P4223092880927666102.Spec : Prop :=
  ∀ n, (P4223092880927666102.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P7772853500815997498

`C(3, A130330(n))`
-/

namespace A136157.P7772853500815997498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A130330 n).toNat

end

end A136157.P7772853500815997498

namespace A136157

/-- `C(3, A130330(n))` -/
def P7772853500815997498.Spec : Prop :=
  ∀ n, (P7772853500815997498.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P17341298501005564541

`C(3, A140303(n))`
-/

namespace A136157.P17341298501005564541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A140303 n).toNat

end

end A136157.P17341298501005564541

namespace A136157

/-- `C(3, A140303(n))` -/
def P17341298501005564541.Spec : Prop :=
  ∀ n, (P17341298501005564541.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P7226434231578850405

`round(exp(A055137(n)))`
-/

namespace A136157.P7226434231578850405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (A055137 n : ℝ))

end

end A136157.P7226434231578850405

namespace A136157

/-- `round(exp(A055137(n)))` -/
def P7226434231578850405.Spec : Prop :=
  ∀ n, P7226434231578850405.a n = A136157 n

end A136157

/-! ## A136157.P1231567529136589787

`round(exp(A113680(n)))`
-/

namespace A136157.P1231567529136589787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (A113680 n : ℝ))

end

end A136157.P1231567529136589787

namespace A136157

/-- `round(exp(A113680(n)))` -/
def P1231567529136589787.Spec : Prop :=
  ∀ n, P1231567529136589787.a n = A136157 n

end A136157

/-! ## A136157.P17245695255655286947

`C(3, A029600(n+1))`
-/

namespace A136157.P17245695255655286947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A029600 (n + 1)).toNat

end

end A136157.P17245695255655286947

namespace A136157

/-- `C(3, A029600(n+1))` -/
def P17245695255655286947.Spec : Prop :=
  ∀ n, (P17245695255655286947.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P15533836834388322237

`C(3, A039805(n+1))`
-/

namespace A136157.P15533836834388322237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A039805 (n + 1)).toNat

end

end A136157.P15533836834388322237

namespace A136157

/-- `C(3, A039805(n+1))` -/
def P15533836834388322237.Spec : Prop :=
  ∀ n, (P15533836834388322237.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P5350203248201113216

`C(3, A049805(n+1))`
-/

namespace A136157.P5350203248201113216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A049805 (n + 1)).toNat

end

end A136157.P5350203248201113216

namespace A136157

/-- `C(3, A049805(n+1))` -/
def P5350203248201113216.Spec : Prop :=
  ∀ n, (P5350203248201113216.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P9128365628371832297

`C(3, A050227(n+1))`
-/

namespace A136157.P9128365628371832297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A050227 (n + 1)).toNat

end

end A136157.P9128365628371832297

namespace A136157

/-- `C(3, A050227(n+1))` -/
def P9128365628371832297.Spec : Prop :=
  ∀ n, (P9128365628371832297.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P4440750348679113697

`C(3, A095660(n+1))`
-/

namespace A136157.P4440750348679113697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A095660 (n + 1)).toNat

end

end A136157.P4440750348679113697

namespace A136157

/-- `C(3, A095660(n+1))` -/
def P4440750348679113697.Spec : Prop :=
  ∀ n, (P4440750348679113697.a n : ℤ) = A136157 n

end A136157

/-! ## A136157.P9668587414119465299

`C(3, A104764(n+1))`
-/

namespace A136157.P9668587414119465299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A104764 (n + 1)).toNat

end

end A136157.P9668587414119465299

namespace A136157

/-- `C(3, A104764(n+1))` -/
def P9668587414119465299.Spec : Prop :=
  ∀ n, (P9668587414119465299.a n : ℤ) = A136157 n

end A136157

/-!
# A136158: Triangle whose rows are generated by A136157^n * [1, 1, 0, 0, 0, ...].

The programs for A136158, the canonical program `A136158.P10965866674544898765` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136158 has offset 0).

The definition of A136158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136158.P10965866674544898765

`3*T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136158

/-- `3*T(n-1,k)+T(n-1,k-1)` -/
def P10965866674544898765.Spec : Prop :=
  ∀ n, (P10965866674544898765.a n : ℤ) = A136158 n

theorem P10965866674544898765.correct : P10965866674544898765.Spec := by
  intro n
  simp only [A136158]

end A136158

/-! ## A136158.P11161147104322467589

`T(n-1,k-1)-3*(T(n-1,k)-2*T(n-1,k))` with `a(0)=1, a(1)=1`
-/

namespace A136158.P11161147104322467589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 3 * (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n)

end

end A136158.P11161147104322467589

namespace A136158

/-- `T(n-1,k-1)-3*(T(n-1,k)-2*T(n-1,k))` -/
def P11161147104322467589.Spec : Prop :=
  ∀ n, P11161147104322467589.a n = A136158 n

end A136158

/-! ## A136158.P3777875126268206317

`abs(A164948(n))`
-/

namespace A136158.P3777875126268206317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164948 n|

end

end A136158.P3777875126268206317

namespace A136158

/-- `abs(A164948(n))` -/
def P3777875126268206317.Spec : Prop :=
  ∀ n, P3777875126268206317.a n = A136158 n

end A136158

/-! ## A136158.P15708293073428255681

`A193731(n)/A059268(n)`
-/

namespace A136158.P15708293073428255681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193731 n : ℚ) / (A059268 n : ℚ)

end

end A136158.P15708293073428255681

namespace A136158

/-- `A193731(n)/A059268(n)` -/
def P15708293073428255681.Spec : Prop :=
  ∀ n, P15708293073428255681.a n = (A136158 n : ℚ)

end A136158

/-! ## A136158.P9635535751792217759

`gcd(A000038(n), A164948(n))`
-/

namespace A136158.P9635535751792217759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A164948 n)

end

end A136158.P9635535751792217759

namespace A136158

/-- `gcd(A000038(n), A164948(n))` -/
def P9635535751792217759.Spec : Prop :=
  ∀ n, (P9635535751792217759.a n : ℤ) = A136158 n

end A136158

/-! ## A136158.P7362234903255596019

`lcm(A020985(n), A164948(n))`
-/

namespace A136158.P7362234903255596019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A164948 n)

end

end A136158.P7362234903255596019

namespace A136158

/-- `lcm(A020985(n), A164948(n))` -/
def P7362234903255596019.Spec : Prop :=
  ∀ n, (P7362234903255596019.a n : ℤ) = A136158 n

end A136158

/-! ## A136158.P17748284297530297678

`A097807(A061579(n))*A164948(n)`
-/

namespace A136158.P17748284297530297678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A164948 n

end

end A136158.P17748284297530297678

namespace A136158

/-- `A097807(A061579(n))*A164948(n)` -/
def P17748284297530297678.Spec : Prop :=
  ∀ n, P17748284297530297678.a n = A136158 n

end A136158

/-! ## A136158.P16991278504797532150

`A027465(n)/A164942(n)*A164948(n)`
-/

namespace A136158.P16991278504797532150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A164942 n : ℚ) * (A164948 n : ℚ)

end

end A136158.P16991278504797532150

namespace A136158

/-- `A027465(n)/A164942(n)*A164948(n)` -/
def P16991278504797532150.Spec : Prop :=
  ∀ n, P16991278504797532150.a n = (A136158 n : ℚ)

end A136158

/-! ## A136158.P6861272135790800512

`A038763(∑[char[∑[n]]]²-(n+1))`
-/

namespace A136158.P6861272135790800512
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A136158.P6861272135790800512

namespace A136158

/-- `A038763(∑[char[∑[n]]]²-(n+1))` -/
def P6861272135790800512.Spec : Prop :=
  ∀ n, P6861272135790800512.a n = A136158 n

end A136158

/-! ## A136158.P5455149863746829621

`∑{d}[A164948(n), A000010(#)]`
-/

namespace A136158.P5455149863746829621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A136158.P5455149863746829621

namespace A136158

/-- `∑{d}[A164948(n), A000010(#)]` -/
def P5455149863746829621.Spec : Prop :=
  ∀ n, P5455149863746829621.a n = A136158 n

end A136158

/-!
# A136159: A Chebyshev polynomial triangle of the first kind defined by T(n+1,x) = 3x*T(n,x) - T(n-1,x).

The programs for A136159, there is no canonical definition to state claims against.
-/

/-! ## A136159.P4294922971724786531

`A164948(A091018(n))`
-/

namespace A136159.P4294922971724786531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164948 (A091018 n).toNat

end

end A136159.P4294922971724786531

/-! ## A136159.P12559195386657959235

`A164948(A056536(n+1)-1)`
-/

namespace A136159.P12559195386657959235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164948 (A056536 (n + 1) - 1).toNat

end

end A136159.P12559195386657959235

/-!
# A136160: Triangle T(n,k) = k*A053120(n,k).

The programs for A136160, the canonical program `A136160.P16715669744293891579` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136160 has offset 1).

The definition of A136160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136160.P481674263061564416

`∑[char[∑[n]]]*A053117(n)`
-/

namespace A136160.P481674263061564416
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A053117 n

end

end A136160.P481674263061564416

namespace A136160

/-- `∑[char[∑[n]]]*A053117(n)` -/
def P481674263061564416.Spec : Prop :=
  ∀ n, P481674263061564416.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P16715669744293891579

`A053117(n)*A128222(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A136160

/-- `A053117(n)*A128222(n+1)` -/
def P16715669744293891579.Spec : Prop :=
  ∀ n, P16715669744293891579.a n = A136160 (n + 1)

theorem P16715669744293891579.correct : P16715669744293891579.Spec := by
  intro n
  simp only [A136160, Nat.add_sub_cancel]

end A136160

/-! ## A136160.P6128878315007046932

`A053117(n)*A128621(n+1)`
-/

namespace A136160.P6128878315007046932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A128621 (n + 1)

end

end A136160.P6128878315007046932

namespace A136160

/-- `A053117(n)*A128621(n+1)` -/
def P6128878315007046932.Spec : Prop :=
  ∀ n, P6128878315007046932.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P3582665299187135829

`A053117(n)*A123578(n+1)`
-/

namespace A136160.P3582665299187135829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A123578 (n + 1)

end

end A136160.P3582665299187135829

namespace A136160

/-- `A053117(n)*A123578(n+1)` -/
def P3582665299187135829.Spec : Prop :=
  ∀ n, P3582665299187135829.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P11092201401741338369

`∑[char[∑[n]]]*A053118(∑[2*n]%comp[∑[n]])`
-/

namespace A136160.P11092201401741338369
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A053118 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A136160.P11092201401741338369

namespace A136160

/-- `∑[char[∑[n]]]*A053118(∑[2*n]%comp[∑[n]])` -/
def P11092201401741338369.Spec : Prop :=
  ∀ n, P11092201401741338369.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P9381197477279117718

`A002260(n+1)*A053120(comp[∑[n]])`
-/

namespace A136160.P9381197477279117718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A053120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A136160.P9381197477279117718

namespace A136160

/-- `A002260(n+1)*A053120(comp[∑[n]])` -/
def P9381197477279117718.Spec : Prop :=
  ∀ n, P9381197477279117718.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P16461026069356551168

`(A002262(n)+1)*A053120(comp[∑[n]])`
-/

namespace A136160.P16461026069356551168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A053120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A136160.P16461026069356551168

namespace A136160

/-- `(A002262(n)+1)*A053120(comp[∑[n]])` -/
def P16461026069356551168.Spec : Prop :=
  ∀ n, P16461026069356551168.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P7015946886743457124

`A053117(n)*A128622(n+1)`
-/

namespace A136160.P7015946886743457124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A128622 (n + 1)

end

end A136160.P7015946886743457124

namespace A136160

/-- `A053117(n)*A128622(n+1)` -/
def P7015946886743457124.Spec : Prop :=
  ∀ n, P7015946886743457124.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P4811431746736732844

`A049310(n)*A059268(n)*A268726(A137688(n))`
-/

namespace A136160.P4811431746736732844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A059268 n * A268726 (A137688 n).toNat

end

end A136160.P4811431746736732844

namespace A136160

/-- `A049310(n)*A059268(n)*A268726(A137688(n))` -/
def P4811431746736732844.Spec : Prop :=
  ∀ n, P4811431746736732844.a n = A136160 (n + 1)

end A136160

/-! ## A136160.P1201864610871093392

`A053117(n)*A130822(n+1)`
-/

namespace A136160.P1201864610871093392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A130822 (n + 1)

end

end A136160.P1201864610871093392

namespace A136160

/-- `A053117(n)*A130822(n+1)` -/
def P1201864610871093392.Spec : Prop :=
  ∀ n, P1201864610871093392.a n = A136160 (n + 1)

end A136160

/-!
# A136161: a(n) = 2*a(n-3) - a(n-6), starting a(0..5) = 0, 5, 2, 1, 3, 1.

The programs for A136161, the canonical program `A136161.P2717566309068437826` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136161 has offset 0).

The definition of A136161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-3)-a(n-6)` (program `A136161.P2717566309068437826`, by `A136161.P2717566309068437826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136161.P11948128332691442913

`ogf((5x+2x^2+x^3-7x^4-3x^5)/(1-2x^3+x^6))`
-/

namespace A136161.P11948128332691442913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2, 1, -7, -3] [1, 0, 0, -2, 0, 0, 1] n

end

end A136161.P11948128332691442913

namespace A136161

/-- `ogf((5x+2x^2+x^3-7x^4-3x^5)/(1-2x^3+x^6))` -/
def P11948128332691442913.Spec : Prop :=
  ∀ n, P11948128332691442913.a n = A136161 n

end A136161

/-! ## A136161.P2717566309068437826

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=5, a(2)=2, a(3)=1, a(4)=3, a(5)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136161

/-- `2*a(n-3)-a(n-6)` -/
def P2717566309068437826.Spec : Prop :=
  ∀ n, P2717566309068437826.a n = A136161 n

theorem P2717566309068437826.correct : P2717566309068437826.Spec := by
  intro n
  simp only [A136161]

end A136161

/-!
# A136162: List of prime quadruplets {p, p+2, p+6, p+8}.

The programs for A136162, there is no canonical definition to state claims against.
-/

/-! ## A136162.P15198460682386415193

`A174839(n+5)`
-/

namespace A136162.P15198460682386415193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174839 (n + 5)

end

end A136162.P15198460682386415193

/-! ## A136162.P9636141970137419273

`lcm(A087960(n), A174839(5-A001489(n)))`
-/

namespace A136162.P9636141970137419273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A174839 (5 - A001489 n).toNat)

end

end A136162.P9636141970137419273

/-! ## A136162.P4618666758406898871

`or(A000007(n), A174839(5-A001489(n)))`
-/

namespace A136162.P4618666758406898871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A174839 (5 - A001489 n).toNat)

end

end A136162.P4618666758406898871

/-! ## A136162.P1098543054492227449

`abs(A033999(n)*A174839(5-A001489(n)))`
-/

namespace A136162.P1098543054492227449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A174839 (5 - A001489 n).toNat|

end

end A136162.P1098543054492227449

/-! ## A136162.P5980719934500292340

`A174839(5-A001489(n))%A017186(n)²`
-/

namespace A136162.P5980719934500292340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174839 (5 - A001489 n).toNat) (A017186 n ^ 2)

end

end A136162.P5980719934500292340

/-! ## A136162.P2733414967840643566

`or(A000038(n)², A174839(5-A001489(n)))`
-/

namespace A136162.P2733414967840643566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A174839 (5 - A001489 n).toNat)

end

end A136162.P2733414967840643566

/-! ## A136162.P5399633897362983306

`or(A015600(n)², A174839(5-A001489(n)))`
-/

namespace A136162.P5399633897362983306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015600 n ^ 2) (A174839 (5 - A001489 n).toNat)

end

end A136162.P5399633897362983306

/-! ## A136162.P7776987777556481125

`A001221(a(n-1))*A174839(5-A001489(n))` with `a(0)=5`
-/

namespace A136162.P7776987777556481125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A001221 (a (n - 1)).toNat * A174839 (5 - A001489 n).toNat

end

end A136162.P7776987777556481125

/-! ## A136162.P17116903744302175648

`A033273(a(n-1))*A174839(5-A001489(n))` with `a(0)=5`
-/

namespace A136162.P17116903744302175648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A033273 (a (n - 1)).toNat * A174839 (5 - A001489 n).toNat

end

end A136162.P17116903744302175648

/-!
# A136164: a(n) is the number of divisors of n that are each coprime to the previous or the following divisor of n.

The programs for A136164, there is no canonical definition to state claims against.
-/

/-! ## A136164.P8102168868416360165

`Δ[A006218(n)]-A136167(n+1)`
-/

namespace A136164.P8102168868416360165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136167 (n + 1)

end

end A136164.P8102168868416360165

/-! ## A136164.P511875171566419164

`A000005(n+1)-A136167(n+1)`
-/

namespace A136164.P511875171566419164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A136167 (n + 1)

end

end A136164.P511875171566419164

/-! ## A136164.P3328816331508204086

`A008619(A114003(n+1))-A136167(n+1)`
-/

namespace A136164.P3328816331508204086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A114003 (n + 1)).toNat - A136167 (n + 1)

end

end A136164.P3328816331508204086

/-! ## A136164.P363767035237371491

`A136165(n+1)+A136166(n+1)-A136167(n+1)`
-/

namespace A136164.P363767035237371491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136165 (n + 1) + (A136166 (n + 1) - A136167 (n + 1))

end

end A136164.P363767035237371491

/-!
# A136165: a(n) = the number of divisors of n that are each not noncoprime to either the previous or the following divisor of n.

The programs for A136165, there is no canonical definition to state claims against.
-/

/-! ## A136165.P11947371575151106906

`Δ[A006218(n)]-A136166(n+1)`
-/

namespace A136165.P11947371575151106906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136166 (n + 1)

end

end A136165.P11947371575151106906

/-! ## A136165.P6516841386577051538

`A000005(n+1)-A136166(n+1)`
-/

namespace A136165.P6516841386577051538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A136166 (n + 1)

end

end A136165.P6516841386577051538

/-! ## A136165.P604218596788614717

`∑{d}[n+1, A057427(#)]-A136166(n+1)`
-/

namespace A136165.P604218596788614717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A136166 (n + 1)

end

end A136165.P604218596788614717

/-! ## A136165.P17443717496103342422

`A136164(n+1)+A136167(n+1)-A136166(n+1)`
-/

namespace A136165.P17443717496103342422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136164 (n + 1) + (A136167 (n + 1) - A136166 (n + 1))

end

end A136165.P17443717496103342422

/-!
# A136166: a(n) = the number of divisors of n that are each not coprime to the previous or the following divisor of n.

The programs for A136166, there is no canonical definition to state claims against.
-/

/-! ## A136166.P2230378722778556283

`Δ[A006218(n)]-A136165(n+1)`
-/

namespace A136166.P2230378722778556283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136165 (n + 1)

end

end A136166.P2230378722778556283

/-! ## A136166.P8105317681210977118

`A000005(n+1)-A136165(n+1)`
-/

namespace A136166.P8105317681210977118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A136165 (n + 1)

end

end A136166.P8105317681210977118

/-! ## A136166.P4419337468077847139

`A136164(n+1)+A136167(n+1)-A136165(n+1)`
-/

namespace A136166.P4419337468077847139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136164 (n + 1) + (A136167 (n + 1) - A136165 (n + 1))

end

end A136166.P4419337468077847139

/-! ## A136166.P18279601215172986663

`A001227(n+1)*A001511(n+1)-A136165(n+1)`
-/

namespace A136166.P18279601215172986663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A136165 (n + 1)

end

end A136166.P18279601215172986663

/-!
# A136167: a(n) = the number of divisors of n that are each not coprime to any adjacent (previous or following) divisor of n.

The programs for A136167, there is no canonical definition to state claims against.
-/

/-! ## A136167.P10137084948059996132

`Δ[A054519(n)]-A136164(n+1)`
-/

namespace A136167.P10137084948059996132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136164 (n + 1)

end

end A136167.P10137084948059996132

/-! ## A136167.P9958788174397617105

`A000005(n+1)-A136164(n+1)`
-/

namespace A136167.P9958788174397617105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A136164 (n + 1)

end

end A136167.P9958788174397617105

/-! ## A136167.P15005827839073908354

`A136165(n+1)+A136166(n+1)-A136164(n+1)`
-/

namespace A136167.P15005827839073908354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136165 (n + 1) + (A136166 (n + 1) - A136164 (n + 1))

end

end A136167.P15005827839073908354

/-! ## A136167.P10308122363524289376

`A001227(n+1)*A001511(n+1)-A136164(n+1)`
-/

namespace A136167.P10308122363524289376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A136164 (n + 1)

end

end A136167.P10308122363524289376

/-!
# A136168: a(n) = (n-1)!*Sum_{i=1..n-1} (-1)^(i+1)*A027907(n-i+2,i+1)*a(n-i)/(n-i)! for n>0 with a(0)=1, where A027907 is the triangle of trinomial coefficients.

The programs for A136168, there is no canonical definition to state claims against.
-/

/-! ## A136168.P10964348569881074378

`A004526((4*n+3)*a(n-1))` with `a(0)=1`
-/

namespace A136168.P10964348569881074378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004526 ((4 * n + 3 : ℤ) * a (n - 1)).toNat

end

end A136168.P10964348569881074378

/-!
# A136169: a(n) = 2*a(n-1) - [(n+1)/3] for n>0 with a(0) = 1.

The programs for A136169, the canonical program `A136169.P5866073437746750826` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136169 has offset 0).

The definition of A136169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136169.P5866073437746750826

`ogf((1-x^2-3x^3-x^4+x^6)/(1-2x-2x^3+4x^4+x^6-2x^7))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136169

/-- `ogf((1-x^2-3x^3-x^4+x^6)/(1-2x-2x^3+4x^4+x^6-2x^7))` -/
def P5866073437746750826.Spec : Prop :=
  ∀ n, P5866073437746750826.a n = A136169 n

theorem P5866073437746750826.correct : P5866073437746750826.Spec := by
  intro n
  simp only [A136169]

end A136169

/-! ## A136169.P16125066731628806536

`round(2*a(n-1)-n/3)` with `a(0)=1`
-/

namespace A136169.P16125066731628806536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((2 * a (n - 1) : ℚ) - (n : ℚ) / 3)

end

end A136169.P16125066731628806536

namespace A136169

/-- `round(2*a(n-1)-n/3)` -/
def P16125066731628806536.Spec : Prop :=
  ∀ n, P16125066731628806536.a n = A136169 n

end A136169

/-! ## A136169.P14102900798379595510

`floor((1-n)/3+2*a(n-1))` with `a(0)=1`
-/

namespace A136169.P14102900798379595510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 - (n : ℤ) : ℚ) / 3 + (2 * a (n - 1) : ℚ)⌋

end

end A136169.P14102900798379595510

namespace A136169

/-- `floor((1-n)/3+2*a(n-1))` -/
def P14102900798379595510.Spec : Prop :=
  ∀ n, P14102900798379595510.a n = A136169 n

end A136169

/-! ## A136169.P5264436579630038258

`ceil(2*a(n-1)-(n+1)/3)` with `a(0)=1`
-/

namespace A136169.P5264436579630038258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(2 * a (n - 1) : ℚ) - (n + 1 : ℚ) / 3⌉

end

end A136169.P5264436579630038258

namespace A136169

/-- `ceil(2*a(n-1)-(n+1)/3)` -/
def P5264436579630038258.Spec : Prop :=
  ∀ n, P5264436579630038258.a n = A136169 n

end A136169

/-! ## A136169.P11649353082192250709

`floor(2*a(n-1)-(n-1)/3)` with `a(0)=1`
-/

namespace A136169.P11649353082192250709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * a (n - 1) : ℚ) - ((n : ℤ) - 1 : ℚ) / 3⌋

end

end A136169.P11649353082192250709

namespace A136169

/-- `floor(2*a(n-1)-(n-1)/3)` -/
def P11649353082192250709.Spec : Prop :=
  ∀ n, P11649353082192250709.a n = A136169 n

end A136169

/-! ## A136169.P6024082060696425555

`2*a(n-1)-ceil((n-1)/3)` with `a(0)=1`
-/

namespace A136169.P6024082060696425555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ⌈((n : ℤ) - 1 : ℚ) / 3⌉

end

end A136169.P6024082060696425555

namespace A136169

/-- `2*a(n-1)-ceil((n-1)/3)` -/
def P6024082060696425555.Spec : Prop :=
  ∀ n, P6024082060696425555.a n = A136169 n

end A136169

/-! ## A136169.P9618801632068295109

`floor(a(n-1)+a(n-1)+(1-n)/3)` with `a(0)=1`
-/

namespace A136169.P9618801632068295109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (1 - (n : ℤ) : ℚ) / 3)⌋

end

end A136169.P9618801632068295109

namespace A136169

/-- `floor(a(n-1)+a(n-1)+(1-n)/3)` -/
def P9618801632068295109.Spec : Prop :=
  ∀ n, P9618801632068295109.a n = A136169 n

end A136169

/-! ## A136169.P2146908246804237014

`floor(a(n-1)-((n-1)/3-a(n-1)))` with `a(0)=1`
-/

namespace A136169.P2146908246804237014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - (((n : ℤ) - 1 : ℚ) / 3 - (a (n - 1) : ℚ))⌋

end

end A136169.P2146908246804237014

namespace A136169

/-- `floor(a(n-1)-((n-1)/3-a(n-1)))` -/
def P2146908246804237014.Spec : Prop :=
  ∀ n, P2146908246804237014.a n = A136169 n

end A136169

/-! ## A136169.P16446473691458796097

`A057744(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A136169.P16446473691458796097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A057744 (n - 2) + a (n - 1)

end

end A136169.P16446473691458796097

namespace A136169

/-- `A057744(n-2)+a(n-1)` -/
def P16446473691458796097.Spec : Prop :=
  ∀ n, P16446473691458796097.a n = A136169 n

end A136169

/-! ## A136169.P14902859405317558565

`A294627(n)+A008620(n)`
-/

namespace A136169.P14902859405317558565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n + A008620 n

end

end A136169.P14902859405317558565

namespace A136169

/-- `A294627(n)+A008620(n)` -/
def P14902859405317558565.Spec : Prop :=
  ∀ n, P14902859405317558565.a n = A136169 n

end A136169

/-! ## A136169.P7977269430581797

`A294627(n)+A103221(2*n)`
-/

namespace A136169.P7977269430581797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n + A103221 (2 * n)

end

end A136169.P7977269430581797

namespace A136169

/-- `A294627(n)+A103221(2*n)` -/
def P7977269430581797.Spec : Prop :=
  ∀ n, P7977269430581797.a n = A136169 n

end A136169

/-! ## A136169.P13936097339938175673

`∑[A011782(n)-A155803(n+1)]`
-/

namespace A136169.P13936097339938175673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A155803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136169.P13936097339938175673

namespace A136169

/-- `∑[A011782(n)-A155803(n+1)]` -/
def P13936097339938175673.Spec : Prop :=
  ∀ n, P13936097339938175673.a n = A136169 n

end A136169

/-! ## A136169.P5545347801134642607

`2^n-A178455(n+1)`
-/

namespace A136169.P5545347801134642607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A178455 (n + 1)

end

end A136169.P5545347801134642607

namespace A136169

/-- `2^n-A178455(n+1)` -/
def P5545347801134642607.Spec : Prop :=
  ∀ n, P5545347801134642607.a n = A136169 n

end A136169

/-! ## A136169.P8242240150024829167

`A033138(n+1)-(A178455(n+1)+A155803(n))`
-/

namespace A136169.P8242240150024829167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (n + 1) - (A178455 (n + 1) + A155803 n)

end

end A136169.P8242240150024829167

namespace A136169

/-- `A033138(n+1)-(A178455(n+1)+A155803(n))` -/
def P8242240150024829167.Spec : Prop :=
  ∀ n, P8242240150024829167.a n = A136169 n

end A136169

/-! ## A136169.P4581314658760164372

`∑[A057744(n+1)-A003945(n)]`
-/

namespace A136169.P4581314658760164372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 (n + 1) - A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136169.P4581314658760164372

namespace A136169

/-- `∑[A057744(n+1)-A003945(n)]` -/
def P4581314658760164372.Spec : Prop :=
  ∀ n, P4581314658760164372.a n = A136169 n

end A136169

/-!
# A136171: Column 0 of triangle A136170.

The programs for A136171, there is no canonical definition to state claims against.
-/

/-! ## A136171.P8585445796203576096

`A136170(∑[n+1])`
-/

namespace A136171.P8585445796203576096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136171.P8585445796203576096

/-! ## A136171.P5354324159248388613

`A136170(A253145(n))+A102683(n)`
-/

namespace A136171.P5354324159248388613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 (A253145 n).toNat + A102683 n

end

end A136171.P5354324159248388613

/-! ## A136171.P11599055966287594190

`A136170(A253145(n))^A178334(n)`
-/

namespace A136171.P11599055966287594190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136170 (A253145 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A136171.P11599055966287594190

/-! ## A136171.P8367187238833611505

`lcm(A020985(n), A136170(A253145(n)))`
-/

namespace A136171.P8367187238833611505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A136170 (A253145 n).toNat)

end

end A136171.P8367187238833611505

/-! ## A136171.P12620233770029621074

`A185203(n)+A136170(A000217(n+1))`
-/

namespace A136171.P12620233770029621074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 n + A136170 (A000217 (n + 1)).toNat

end

end A136171.P12620233770029621074

/-!
# A136172: Column 1 of triangle A136170.

The programs for A136172, there is no canonical definition to state claims against.
-/

/-! ## A136172.P5569581146453265368

`record[A136170(comp[∑[n]])]`
-/

namespace A136172.P5569581146453265368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136172.P5569581146453265368

/-! ## A136172.P3515640580143651365

`A136170(∑[n+2]+2)`
-/

namespace A136172.P3515640580143651365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A136172.P3515640580143651365

/-! ## A136172.P4505593322716282530

`record[A114219(n)*A136170(n)]`
-/

namespace A136172.P4505593322716282530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A136170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136172.P4505593322716282530

/-! ## A136172.P8432362756017414688

`record[A136170(n)^A067586(n)]`
-/

namespace A136172.P8432362756017414688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136170 n : ℚ) ^ (A067586 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136172.P8432362756017414688

/-!
# A136173: Column 2 of triangle A136170.

The programs for A136173, there is no canonical definition to state claims against.
-/

/-! ## A136173.P12108624305021533157

`A136170(∑[n+3]+5)`
-/

namespace A136173.P12108624305021533157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A136173.P12108624305021533157

/-! ## A136173.P15402298736651281951

`record[A136170(n)*A274537(n)]`
-/

namespace A136173.P15402298736651281951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 n * A274537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136173.P15402298736651281951

/-! ## A136173.P9971801287047919271

`record[A136170(comp[A134519(n+1)])]`
-/

namespace A136173.P9971801287047919271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136173.P9971801287047919271

/-!
# A136175: Tribonacci array, T(n,k).

The programs for A136175, there is no canonical definition to state claims against.
-/

/-! ## A136175.P9560281706350005838

`A191443(n+1)+A133010(A191447(n+1))`
-/

namespace A136175.P9560281706350005838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191443 (n + 1) + A133010 (A191447 (n + 1)).toNat

end

end A136175.P9560281706350005838

/-! ## A136175.P15061795386694191962

`or(A133010(A191731(n+1)), A191443(n+1))`
-/

namespace A136175.P15061795386694191962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133010 (A191731 (n + 1)).toNat) (A191443 (n + 1))

end

end A136175.P15061795386694191962

/-! ## A136175.P15599307784632101994

`A191734(n+1)+A179801(A016116(n))`
-/

namespace A136175.P15599307784632101994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191734 (n + 1) + A179801 (A016116 n).toNat

end

end A136175.P15599307784632101994

/-! ## A136175.P16812840257514602319

`A191734(n+1)+A070517(A255380(n))`
-/

namespace A136175.P16812840257514602319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191734 (n + 1) + A070517 (A255380 n).toNat

end

end A136175.P16812840257514602319

/-! ## A136175.P16410132647559373893

`A340998(A017911(n))+A191734(n+1)`
-/

namespace A136175.P16410132647559373893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A017911 n).toNat + 140) + A191734 (n + 1)

end

end A136175.P16410132647559373893

/-!
# A136176: Number of exponents in the prime factorization of n which divide n.

The programs for A136176, the canonical program `A136176.P216866095607552115` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136176 has offset 1).

The definition of A136176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136176.P216866095607552115

`∑{e}[n+1, floor(gcd(#, n+1)/#)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136176

/-- `∑{e}[n+1, floor(gcd(#, n+1)/#)]` -/
def P216866095607552115.Spec : Prop :=
  ∀ n, P216866095607552115.a n = A136176 (n + 1)

theorem P216866095607552115.correct : P216866095607552115.Spec := by
  intro n
  simp only [A136176, Nat.add_sub_cancel]

end A136176

/-! ## A136176.P13546992376195218491

`∑{e}[n+1, round(n/lcm(#, n+1))]`
-/

namespace A136176.P13546992376195218491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((n : ℚ) / (Nat.lcm (Nat.factorization (f1 n) p) (n + 1) : ℚ))

end

end A136176.P13546992376195218491

namespace A136176

/-- `∑{e}[n+1, round(n/lcm(#, n+1))]` -/
def P13546992376195218491.Spec : Prop :=
  ∀ n, P13546992376195218491.a n = A136176 (n + 1)

end A136176

/-! ## A136176.P3558635520306833329

`∑{e}[n+1, A023927((n+1)%#)]`
-/

namespace A136176.P3558635520306833329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A023927 ((n + 1) % Nat.factorization (f1 n) p)

end

end A136176.P3558635520306833329

namespace A136176

/-- `∑{e}[n+1, A023927((n+1)%#)]` -/
def P3558635520306833329.Spec : Prop :=
  ∀ n, P3558635520306833329.a n = A136176 (n + 1)

end A136176

/-! ## A136176.P3793005955243519769

`∑{e}[n+1, A106544(#-n%#)]`
-/

namespace A136176.P3793005955243519769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A106544 (Nat.factorization (f1 n) p - n % Nat.factorization (f1 n) p)

end

end A136176.P3793005955243519769

namespace A136176

/-- `∑{e}[n+1, A106544(#-n%#)]` -/
def P3793005955243519769.Spec : Prop :=
  ∀ n, P3793005955243519769.a n = A136176 (n + 1)

end A136176

/-! ## A136176.P6201441397153770313

`∑{e}[n+1, A055641((n+1+#)%#)]`
-/

namespace A136176.P6201441397153770313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A055641 ((n + 1 + Nat.factorization (f1 n) p) % Nat.factorization (f1 n) p)

end

end A136176.P6201441397153770313

namespace A136176

/-- `∑{e}[n+1, A055641((n+1+#)%#)]` -/
def P6201441397153770313.Spec : Prop :=
  ∀ n, P6201441397153770313.a n = A136176 (n + 1)

end A136176

/-!
# A136177: Number of exponents in the prime factorization of n that are coprime to n.

The programs for A136177, the canonical program `A136177.P13659901994410837369` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136177 has offset 1).

The definition of A136177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136177.P13659901994410837369

`∑{e}[n+1, floor(1/gcd(#, n+1))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136177

/-- `∑{e}[n+1, floor(1/gcd(#, n+1))]` -/
def P13659901994410837369.Spec : Prop :=
  ∀ n, P13659901994410837369.a n = A136177 (n + 1)

theorem P13659901994410837369.correct : P13659901994410837369.Spec := by
  intro n
  simp only [A136177, Nat.add_sub_cancel]

end A136177

/-! ## A136177.P9978640291496770337

`∑{e}[n+1, A008683(gcd((n+1)², #²))]`
-/

namespace A136177.P9978640291496770337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 (Nat.gcd ((n + 1) ^ 2) (Nat.factorization (f1 n) p ^ 2))

end

end A136177.P9978640291496770337

namespace A136177

/-- `∑{e}[n+1, A008683(gcd((n+1)², #²))]` -/
def P9978640291496770337.Spec : Prop :=
  ∀ n, P9978640291496770337.a n = A136177 (n + 1)

end A136177

/-! ## A136177.P3928367490240489890

`∑{e}[n+1, A320656(A000005(gcd(#, n+1)))]`
-/

namespace A136177.P3928367490240489890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A320656 (A000005 (Nat.gcd (Nat.factorization (f1 n) p) (n + 1))).toNat

end

end A136177.P3928367490240489890

namespace A136177

/-- `∑{e}[n+1, A320656(A000005(gcd(#, n+1)))]` -/
def P3928367490240489890.Spec : Prop :=
  ∀ n, P3928367490240489890.a n = A136177 (n + 1)

end A136177

/-! ## A136177.P8939853473380050944

`A162642(A279690(n+1)%A225387(n+1))`
-/

namespace A136177.P8939853473380050944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (Int.tmod (A279690 (n + 1)) (A225387 (n + 1))).toNat

end

end A136177.P8939853473380050944

namespace A136177

/-- `A162642(A279690(n+1)%A225387(n+1))` -/
def P8939853473380050944.Spec : Prop :=
  ∀ n, P8939853473380050944.a n = A136177 (n + 1)

end A136177

/-! ## A136177.P7571251319713510001

`∑{e}[A279690(n+1), A000035(A304410(#))]`
-/

namespace A136177.P7571251319713510001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 (A304410 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A136177.P7571251319713510001

namespace A136177

/-- `∑{e}[A279690(n+1), A000035(A304410(#))]` -/
def P7571251319713510001.Spec : Prop :=
  ∀ n, P7571251319713510001.a n = A136177 (n + 1)

end A136177

/-!
# A136178: Irregular array read by rows: row n contains the GCDs of each pair of consecutive positive divisors of n.

The programs for A136178, there is no canonical definition to state claims against.
-/

/-! ## A136178.P4522260679426394441

`gcd(A027751(n+2), A193829(n+2))`
-/

namespace A136178.P4522260679426394441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027751 (n + 2)) (A193829 (n + 2))

end

end A136178.P4522260679426394441

/-! ## A136178.P18111471216732979162

`gcd(A027749(n+1), A027749(n+2))`
-/

namespace A136178.P18111471216732979162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027749 (n + 1)) (A027749 (n + 2))

end

end A136178.P18111471216732979162

/-! ## A136178.P16325052068529263617

`gcd(Δ[A208460(n+2)], A136181(n+2))`
-/

namespace A136178.P16325052068529263617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208460 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A136181 (n + 2))

end

end A136178.P16325052068529263617

/-! ## A136178.P17851189503022923636

`A027749(n+2)*A027751(n+2)/A136181(n+2)`
-/

namespace A136178.P17851189503022923636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027749 (n + 2) * A027751 (n + 2) : ℚ) / (A136181 (n + 2) : ℚ)

end

end A136178.P17851189503022923636

/-! ## A136178.P11807400090324333496

`gcd(A136181(n+2), A136195(n+2))`
-/

namespace A136178.P11807400090324333496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136181 (n + 2)) (A136195 (n + 2))

end

end A136178.P11807400090324333496

/-! ## A136178.P18196214477623145893

`(A136195(n+2)-A027749(n+2))*A027749(n+2)/A136181(n+2)`
-/

namespace A136178.P18196214477623145893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A136195 (n + 2) - A027749 (n + 2)) * A027749 (n + 2) : ℚ) / (A136181 (n + 2) : ℚ)

end

end A136178.P18196214477623145893

/-! ## A136178.P10114991681414646522

`A136193(n+2)/A136181(n+2)`
-/

namespace A136178.P10114991681414646522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136193 (n + 2) : ℚ) / (A136181 (n + 2) : ℚ)

end

end A136178.P10114991681414646522

/-! ## A136178.P9270574993594393424

`gcd(A000027(A193829(n+2)), A136193(n+2))`
-/

namespace A136178.P9270574993594393424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A193829 (n + 2)).toNat) (A136193 (n + 2))

end

end A136178.P9270574993594393424

/-!
# A136179: a(n) = Product_{k=1..d(n)-1} gcd(b(k), b(k+1)), where b(k) is the k-th positive divisor of n and d(n) is the number of positive divisors of n.

The programs for A136179, there is no canonical definition to state claims against.
-/

/-! ## A136179.P17575371000841537680

`A052126(A057449(n+1)+A007956(n+1))`
-/

namespace A136179.P17575371000841537680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A057449 (n + 1) + A007956 (n + 1)).toNat

end

end A136179.P17575371000841537680

/-! ## A136179.P17880250369889151931

`A033676(A032742(n+1)^A070939(A032742(n+1)))`
-/

namespace A136179.P17880250369889151931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A070939 (A032742 (n + 1)).toNat : ℤ))).toNat

end

end A136179.P17880250369889151931

/-! ## A136179.P5659036169045006165

`A033676(A079880(n+1)^A304795(n+1))`
-/

namespace A136179.P5659036169045006165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((A079880 (n + 1) : ℚ) ^ (A304795 (n + 1) : ℤ))).toNat

end

end A136179.P5659036169045006165

/-! ## A136179.P16168286039608820797

`A033676(A280495(n+1)^A304795(n+1))`
-/

namespace A136179.P16168286039608820797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((A280495 (n + 1) : ℚ) ^ (A304795 (n + 1) : ℤ))).toNat

end

end A136179.P16168286039608820797

/-! ## A136179.P17573217980955833336

`A117888(A181859(n+1))`
-/

namespace A136179.P17573217980955833336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117888 (A181859 (n + 1)).toNat

end

end A136179.P17573217980955833336

/-!
# A136180: a(n) = Sum_{k=1..d(n)-1} gcd(b(k), b(k+1)), where b(k) is the k-th positive divisor of n and d(n) is the number of positive divisors of n.

The programs for A136180, there is no canonical definition to state claims against.
-/

/-! ## A136180.P2521041768693239601

`A143112(n+1)-A334924(A130064(n+1))`
-/

namespace A136180.P2521041768693239601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143112 (n + 1) - A334924 (A130064 (n + 1)).toNat

end

end A136180.P2521041768693239601

/-! ## A136180.P9461693598112406878

`A143112(n+1)-A007299(A091717(2*(n+2)))`
-/

namespace A136180.P9461693598112406878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143112 (n + 1) - A007299 (A091717 (2 * (n + 2))).toNat

end

end A136180.P9461693598112406878

/-! ## A136180.P13554575302662057835

`A143112(n+1)-A113711(A059481(n))`
-/

namespace A136180.P13554575302662057835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143112 (n + 1) - A113711 (A059481 n).toNat

end

end A136180.P13554575302662057835

/-! ## A136180.P5772277533684541583

`A328799(A147997(n))%A143112(n+1)`
-/

namespace A136180.P5772277533684541583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328799 (A147997 n).toNat) (A143112 (n + 1))

end

end A136180.P5772277533684541583

/-! ## A136180.P53633671512584427

`A143112(n+1)-A091090(A007956(3*n+2))`
-/

namespace A136180.P53633671512584427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143112 (n + 1) - A091090 (A007956 (3 * n + 2)).toNat

end

end A136180.P53633671512584427

/-!
# A136181: Irregular array read by rows: row n contains the LCMs of each pair of consecutive positive divisors of n.

The programs for A136181, there is no canonical definition to state claims against.
-/

/-! ## A136181.P13599492800076723923

`lcm(A027749(n+2), A027751(n+2))`
-/

namespace A136181.P13599492800076723923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027749 (n + 2)) (A027751 (n + 2))

end

end A136181.P13599492800076723923

/-! ## A136181.P10391242481800630875

`A027749(n+2)*A027751(n+2)/A136178(n+2)`
-/

namespace A136181.P10391242481800630875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027749 (n + 2) * A027751 (n + 2) : ℚ) / (A136178 (n + 2) : ℚ)

end

end A136181.P10391242481800630875

/-! ## A136181.P5063792332241966734

`(A136195(n+2)-A027749(n+2))*A027749(n+2)/A136178(n+2)`
-/

namespace A136181.P5063792332241966734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A136195 (n + 2) - A027749 (n + 2)) * A027749 (n + 2) : ℚ) / (A136178 (n + 2) : ℚ)

end

end A136181.P5063792332241966734

/-! ## A136181.P5694758780226048192

`(A136195(n+2)-A027751(n+2))*A027751(n+2)/A136178(n+2)`
-/

namespace A136181.P5694758780226048192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A136195 (n + 2) - A027751 (n + 2)) * A027751 (n + 2) : ℚ) / (A136178 (n + 2) : ℚ)

end

end A136181.P5694758780226048192

/-! ## A136181.P14673929478519964546

`A038388(A136193(n+2))`
-/

namespace A136181.P14673929478519964546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A136193 (n + 2)).toNat

end

end A136181.P14673929478519964546

/-! ## A136181.P2659582428109412212

`A136193(n+2)/A136178(n+2)`
-/

namespace A136181.P2659582428109412212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136193 (n + 2) : ℚ) / (A136178 (n + 2) : ℚ)

end

end A136181.P2659582428109412212

/-! ## A136181.P1016296769053768883

`A136193(n+2)/gcd(A027749(n+1), A027749(n+2))`
-/

namespace A136181.P1016296769053768883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136193 (n + 2) : ℚ) / (Int.gcd (A027749 (n + 1)) (A027749 (n + 2)) : ℚ)

end

end A136181.P1016296769053768883

/-! ## A136181.P10324536196303987599

`A136193(n+2)/gcd(A027751(n+2), A193829(n+2))`
-/

namespace A136181.P10324536196303987599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136193 (n + 2) : ℚ) / (Int.gcd (A027751 (n + 2)) (A193829 (n + 2)) : ℚ)

end

end A136181.P10324536196303987599

/-!
# A136182: a(n) = Product_{k=1..d(n)-1} lcm(b(k), b(k+1)), where b(k) is the k-th positive divisor of n and d(n) = the number of positive divisors of n.

The programs for A136182, there is no canonical definition to state claims against.
-/

/-! ## A136182.P12951156282799635417

`A007955(n+1)*A007956(n+1)/A136179(n+1)`
-/

namespace A136182.P12951156282799635417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) * A007956 (n + 1) : ℚ) / (A136179 (n + 1) : ℚ)

end

end A136182.P12951156282799635417

/-! ## A136182.P17017507826329234549

`gcd(A000027(A243103(n+1)), A338576(n+1))`
-/

namespace A136182.P17017507826329234549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A243103 (n + 1)).toNat) (A338576 (n + 1))

end

end A136182.P17017507826329234549

/-! ## A136182.P4037148103557368821

`A229347(∏{d}[A085908(n+1), #])`
-/

namespace A136182.P4037148103557368821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229347 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A136182.P4037148103557368821

/-! ## A136182.P15618747186166160922

`A007955(n+1)*A056622(A136304(n))`
-/

namespace A136182.P15618747186166160922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A056622 (A136304 n).toNat

end

end A136182.P15618747186166160922

/-!
# A136184: Number of metacyclic groups of order 2^n.

The programs for A136184, the canonical program `A136184.P15010695486902474423` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136184 has offset 1).

The definition of A136184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136184.P15010695486902474423

`ogf((1+x+x^3-x^6+x^8-x^9-x^10)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136184

/-- `ogf((1+x+x^3-x^6+x^8-x^9-x^10)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` -/
def P15010695486902474423.Spec : Prop :=
  ∀ n, P15010695486902474423.a n = A136184 (n + 1)

theorem P15010695486902474423.correct : P15010695486902474423.Spec := by
  intro n
  simp only [A136184, Nat.add_sub_cancel]

end A136184

/-! ## A136184.P17894927106124410456

`A080513(n)+A007982(n+1)`
-/

namespace A136184.P17894927106124410456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A007982 (n + 1)

end

end A136184.P17894927106124410456

namespace A136184

/-- `A080513(n)+A007982(n+1)` -/
def P17894927106124410456.Spec : Prop :=
  ∀ n, P17894927106124410456.a n = A136184 (n + 1)

end A136184

/-! ## A136184.P7095808109358653014

`A008619(n+1)+A007982(n+1)`
-/

namespace A136184.P7095808109358653014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A007982 (n + 1)

end

end A136184.P7095808109358653014

namespace A136184

/-- `A008619(n+1)+A007982(n+1)` -/
def P7095808109358653014.Spec : Prop :=
  ∀ n, P7095808109358653014.a n = A136184 (n + 1)

end A136184

/-! ## A136184.P5473285274587046989

`A007982(n+1)+A110654(n)+1`
-/

namespace A136184.P5473285274587046989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007982 (n + 1) + (A110654 n + 1)

end

end A136184.P5473285274587046989

namespace A136184

/-- `A007982(n+1)+A110654(n)+1` -/
def P5473285274587046989.Spec : Prop :=
  ∀ n, P5473285274587046989.a n = A136184 (n + 1)

end A136184

/-! ## A136184.P2343269336076653606

`A007982(n+1)+∑[A135528(n+1)]`
-/

namespace A136184.P2343269336076653606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007982 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136184.P2343269336076653606

namespace A136184

/-- `A007982(n+1)+∑[A135528(n+1)]` -/
def P2343269336076653606.Spec : Prop :=
  ∀ n, P2343269336076653606.a n = A136184 (n + 1)

end A136184

/-! ## A136184.P4486093671792372648

`A007982(n+1)+A136185(n+1)-A007983(n+1)`
-/

namespace A136184.P4486093671792372648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007982 (n + 1) + (A136185 (n + 1) - A007983 (n + 1))

end

end A136184.P4486093671792372648

namespace A136184

/-- `A007982(n+1)+A136185(n+1)-A007983(n+1)` -/
def P4486093671792372648.Spec : Prop :=
  ∀ n, P4486093671792372648.a n = A136184 (n + 1)

end A136184

/-! ## A136184.P12042952811490660833

`A004526(n+1)+A007982(n+1)+1`
-/

namespace A136184.P12042952811490660833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A007982 (n + 1) + 1)

end

end A136184.P12042952811490660833

namespace A136184

/-- `A004526(n+1)+A007982(n+1)+1` -/
def P12042952811490660833.Spec : Prop :=
  ∀ n, P12042952811490660833.a n = A136184 (n + 1)

end A136184

/-! ## A136184.P15613524121869129508

`A008621(A284777(n+1))+A007982(n+1)`
-/

namespace A136184.P15613524121869129508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A284777 (n + 1)).toNat + A007982 (n + 1)

end

end A136184.P15613524121869129508

namespace A136184

/-- `A008621(A284777(n+1))+A007982(n+1)` -/
def P15613524121869129508.Spec : Prop :=
  ∀ n, P15613524121869129508.a n = A136184 (n + 1)

end A136184

/-!
# A136185: Number of metacyclic groups of order p^n, prime p >= 3.

The programs for A136185, the canonical program `A136185.P4987399812825390485` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136185 has offset 1).

The definition of A136185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136185.P4987399812825390485

`ogf((1+x-x^2-x^3+2x^5-x^7)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136185

/-- `ogf((1+x-x^2-x^3+2x^5-x^7)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` -/
def P4987399812825390485.Spec : Prop :=
  ∀ n, P4987399812825390485.a n = A136185 (n + 1)

theorem P4987399812825390485.correct : P4987399812825390485.Spec := by
  intro n
  simp only [A136185, Nat.add_sub_cancel]

end A136185

/-! ## A136185.P10286674294395953972

`∑[A103221(n+1)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A136185.P10286674294395953972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A136185.P10286674294395953972

namespace A136185

/-- `∑[A103221(n+1)]+a(n-2)` -/
def P10286674294395953972.Spec : Prop :=
  ∀ n, P10286674294395953972.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P1317737079691612317

`A000601(n+1)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A136185.P1317737079691612317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000601 (n + 1) - (a (n - 1) + (n : ℤ))

end

end A136185.P1317737079691612317

namespace A136185

/-- `A000601(n+1)-(a(n-1)+n)` -/
def P1317737079691612317.Spec : Prop :=
  ∀ n, P1317737079691612317.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P14971549343590418897

`A001399(n+1)+a(n-2)-1` with `a(0)=1, a(1)=2`
-/

namespace A136185.P14971549343590418897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001399 (n + 1) + (a (n - 2) - 1)

end

end A136185.P14971549343590418897

namespace A136185

/-- `A001399(n+1)+a(n-2)-1` -/
def P14971549343590418897.Spec : Prop :=
  ∀ n, P14971549343590418897.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P11052466761691612495

`A080513(n)+A007983(n+1)`
-/

namespace A136185.P11052466761691612495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A007983 (n + 1)

end

end A136185.P11052466761691612495

namespace A136185

/-- `A080513(n)+A007983(n+1)` -/
def P11052466761691612495.Spec : Prop :=
  ∀ n, P11052466761691612495.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P18065828299040404544

`∑[A001399(n)-A008742(n)]+1`
-/

namespace A136185.P18065828299040404544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A008742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A136185.P18065828299040404544

namespace A136185

/-- `∑[A001399(n)-A008742(n)]+1` -/
def P18065828299040404544.Spec : Prop :=
  ∀ n, P18065828299040404544.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P7731810926521623347

`A007983(n+1)+A136184(n+1)-A007982(n+1)`
-/

namespace A136185.P7731810926521623347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007983 (n + 1) + (A136184 (n + 1) - A007982 (n + 1))

end

end A136185.P7731810926521623347

namespace A136185

/-- `A007983(n+1)+A136184(n+1)-A007982(n+1)` -/
def P7731810926521623347.Spec : Prop :=
  ∀ n, P7731810926521623347.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P395715248661017568

`A266769(n+1)-∑[1-a(n-1)]` with `a(0)=0`
-/

namespace A136185.P395715248661017568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136185.P395715248661017568

namespace A136185

/-- `A266769(n+1)-∑[1-a(n-1)]` -/
def P395715248661017568.Spec : Prop :=
  ∀ n, P395715248661017568.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P5078176623401458207

`A065033(n+1)+A266769(n+1)-(n+1)`
-/

namespace A136185.P5078176623401458207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + (A266769 (n + 1) - (n + 1 : ℤ))

end

end A136185.P5078176623401458207

namespace A136185

/-- `A065033(n+1)+A266769(n+1)-(n+1)` -/
def P5078176623401458207.Spec : Prop :=
  ∀ n, P5078176623401458207.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P6275534709916545549

`A008731(2*n+1)+A008763(n+1)+1`
-/

namespace A136185.P6275534709916545549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (2 * n + 1) + (A008763 (n + 1) + 1)

end

end A136185.P6275534709916545549

namespace A136185

/-- `A008731(2*n+1)+A008763(n+1)+1` -/
def P6275534709916545549.Spec : Prop :=
  ∀ n, P6275534709916545549.a n = A136185 (n + 1)

end A136185

/-! ## A136185.P7070880436304815419

`A008763(n+1)+A008619(A001399(2*n))`
-/

namespace A136185.P7070880436304815419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + A008619 (A001399 (2 * n)).toNat

end

end A136185.P7070880436304815419

namespace A136185

/-- `A008763(n+1)+A008619(A001399(2*n))` -/
def P7070880436304815419.Spec : Prop :=
  ∀ n, P7070880436304815419.a n = A136185 (n + 1)

end A136185

/-!
# A136186: Primes whose decimal and binary reversal are both prime.

The programs for A136186, there is no canonical definition to state claims against.
-/

/-! ## A136186.P4309647477176082084

`∩[A007500(n+1), A074832(n+1)]`
-/

namespace A136186.P4309647477176082084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136186.P4309647477176082084

/-! ## A136186.P9930926002449869962

`∩[A074832(n+1), A085869(n+1)]`
-/

namespace A136186.P9930926002449869962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136186.P9930926002449869962

/-! ## A136186.P5389956903676416575

`∩[A074832(n+1), A095179(n+1)]`
-/

namespace A136186.P5389956903676416575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136186.P5389956903676416575

/-! ## A136186.P11422723436059394306

`∩[A062895(n+1), A074832(n+1)]`
-/

namespace A136186.P11422723436059394306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136186.P11422723436059394306

/-! ## A136186.P13574053791433225355

`∩[A007500(n+1), A057889(A143245(n+1))]`
-/

namespace A136186.P13574053791433225355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A143245 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136186.P13574053791433225355

/-! ## A136186.P14676232330400791456

`p?[A151764(A074832(n+1))]`
-/

namespace A136186.P14676232330400791456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (A074832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136186.P14676232330400791456

/-! ## A136186.P13522224172834138321

`A004086(p?[A004086(A074832(n+1))])`
-/

namespace A136186.P13522224172834138321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A074832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136186.P13522224172834138321

/-! ## A136186.P12480538350188251667

`A071786(p?[A071786(A074832(n+1))])`
-/

namespace A136186.P12480538350188251667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A074832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136186.P12480538350188251667

/-! ## A136186.P7732176304167851244

`∩[A007500(n+1), A204232(n+1)]`
-/

namespace A136186.P7732176304167851244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136186.P7732176304167851244

/-!
# A136187: Primes whose decimal, binary and binary-decimal reversals are all prime.

The programs for A136187, there is no canonical definition to state claims against.
-/

/-! ## A136187.P2698276353579515773

`A007500(lt[A199201(n+1), A115308(n+1)]+1)`
-/

namespace A136187.P2698276353579515773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A136187.P2698276353579515773

/-! ## A136187.P17475472861293890433

`p?[record[A281680(A000586(n))]]`
-/

namespace A136187.P17475472861293890433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A000586 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136187.P17475472861293890433

/-! ## A136187.P10850482899308191987

`filter[A321420(n+2), A248863(#)]`
-/

namespace A136187.P10850482899308191987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248863 (f1 j).toNat = 1) n)

end

end A136187.P10850482899308191987

/-! ## A136187.P14076349016066829405

`filter[A202264(n+3), A248863(#)]`
-/

namespace A136187.P14076349016066829405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202264 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248863 (f1 j).toNat = 1) n)

end

end A136187.P14076349016066829405

/-! ## A136187.P13042398247671587692

`∩[A120401(n), A136186(n+1)]`
-/

namespace A136187.P13042398247671587692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136187.P13042398247671587692

/-!
# A136188: Digital roots of the Fermat numbers in A000215(n).

The programs for A136188, the canonical program `A136188.P11423333827743558695` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136188 has offset 0).

The definition of A136188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136188.P11423333827743558695

`a(n-2)` with `a(0)=3, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A136188

/-- `a(n-2)` -/
def P11423333827743558695.Spec : Prop :=
  ∀ n, (P11423333827743558695.a n : ℤ) = A136188 n

theorem P11423333827743558695.correct : P11423333827743558695.Spec := by
  intro n
  simp only [A136188]

end A136188

/-!
# A136191: Primes p such that 2p-3 and 2p+3 are both prime (A092110), with last decimal being 3.

The programs for A136191, there is no canonical definition to state claims against.
-/

/-! ## A136191.P12233595280726524979

`p?[A284281(A092110(n+1))]`
-/

namespace A136191.P12233595280726524979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (A092110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136191.P12233595280726524979

/-! ## A136191.P15764197580389232312

`filter[A092110(n+1), A011658(#)]`
-/

namespace A136191.P15764197580389232312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A136191.P15764197580389232312

/-! ## A136191.P10747934430536472495

`filter[A092110(n+1), A144597(#)]`
-/

namespace A136191.P10747934430536472495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A136191.P10747934430536472495

/-! ## A136191.P5962950486276162770

`filter[A088763(n+1), A185706(#)]`
-/

namespace A136191.P5962950486276162770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A136191.P5962950486276162770

/-! ## A136191.P9320770327285760317

`filter[A092110(n+1), A185706(#)]`
-/

namespace A136191.P9320770327285760317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A136191.P9320770327285760317

/-!
# A136192: Primes p such that 2p-3 and 2p+3 are both prime (A092110), with last decimal of p being 7.

The programs for A136192, the canonical program `A136192.P16759247333533058441` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136192 has offset 1).

The definition of A136192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136192.P16759247333533058441

`∩[A030432(n+1), A092110(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A136192

/-- `∩[A030432(n+1), A092110(n+1)]` -/
def P16759247333533058441.Spec : Prop :=
  ∀ n, (P16759247333533058441.a n : ℤ) = A136192 (n + 1)

theorem P16759247333533058441.correct : P16759247333533058441.Spec := by
  intro n
  simp only [A136192, Nat.add_sub_cancel]

end A136192

/-! ## A136192.P17128534390530103349

`∩[A045380(n+1), A092110(n+1)]`
-/

namespace A136192.P17128534390530103349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P17128534390530103349

namespace A136192

/-- `∩[A045380(n+1), A092110(n+1)]` -/
def P17128534390530103349.Spec : Prop :=
  ∀ n, (P17128534390530103349.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P5846684372375117397

`∩[A090652(n+1), A092110(n+1)]`
-/

namespace A136192.P5846684372375117397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P5846684372375117397

namespace A136192

/-- `∩[A090652(n+1), A092110(n+1)]` -/
def P5846684372375117397.Spec : Prop :=
  ∀ n, (P5846684372375117397.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P2913518523153641973

`∩[A030432(n+1), A088763(n+1)]`
-/

namespace A136192.P2913518523153641973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P2913518523153641973

namespace A136192

/-- `∩[A030432(n+1), A088763(n+1)]` -/
def P2913518523153641973.Spec : Prop :=
  ∀ n, (P2913518523153641973.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P14923191964583991933

`∩[A045380(n+1), A088763(n+1)]`
-/

namespace A136192.P14923191964583991933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P14923191964583991933

namespace A136192

/-- `∩[A045380(n+1), A088763(n+1)]` -/
def P14923191964583991933.Spec : Prop :=
  ∀ n, (P14923191964583991933.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P6010024020749953785

`∩[A045372(n+1), A088763(n+1)]`
-/

namespace A136192.P6010024020749953785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P6010024020749953785

namespace A136192

/-- `∩[A045372(n+1), A088763(n+1)]` -/
def P6010024020749953785.Spec : Prop :=
  ∀ n, (P6010024020749953785.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P9130180707963318956

`∩[A045378(n+1), A088763(n+1)]`
-/

namespace A136192.P9130180707963318956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P9130180707963318956

namespace A136192

/-- `∩[A045378(n+1), A088763(n+1)]` -/
def P9130180707963318956.Spec : Prop :=
  ∀ n, (P9130180707963318956.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P8356425925561995475

`∩[A045372(n+1), A092110(n+1)]`
-/

namespace A136192.P8356425925561995475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P8356425925561995475

namespace A136192

/-- `∩[A045372(n+1), A092110(n+1)]` -/
def P8356425925561995475.Spec : Prop :=
  ∀ n, (P8356425925561995475.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P12096242000738341278

`∩[A045378(n+1), A092110(n+1)]`
-/

namespace A136192.P12096242000738341278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P12096242000738341278

namespace A136192

/-- `∩[A045378(n+1), A092110(n+1)]` -/
def P12096242000738341278.Spec : Prop :=
  ∀ n, (P12096242000738341278.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P11813551819494539964

`∩[A030432(n+1), A387935(n+1)]`
-/

namespace A136192.P11813551819494539964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P11813551819494539964

namespace A136192

/-- `∩[A030432(n+1), A387935(n+1)]` -/
def P11813551819494539964.Spec : Prop :=
  ∀ n, (P11813551819494539964.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P13280930604801771241

`∩[A045372(n+1), A387935(n+1)]`
-/

namespace A136192.P13280930604801771241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P13280930604801771241

namespace A136192

/-- `∩[A045372(n+1), A387935(n+1)]` -/
def P13280930604801771241.Spec : Prop :=
  ∀ n, (P13280930604801771241.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P12166046854127325543

`∩[A045378(n+1), A387935(n+1)]`
-/

namespace A136192.P12166046854127325543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P12166046854127325543

namespace A136192

/-- `∩[A045378(n+1), A387935(n+1)]` -/
def P12166046854127325543.Spec : Prop :=
  ∀ n, (P12166046854127325543.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P7387155211253690166

`∩[A045380(n+1), A387935(n+1)]`
-/

namespace A136192.P7387155211253690166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P7387155211253690166

namespace A136192

/-- `∩[A045380(n+1), A387935(n+1)]` -/
def P7387155211253690166.Spec : Prop :=
  ∀ n, (P7387155211253690166.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P8557660914520216322

`∩[A045371(n+1), A088763(n+1)]`
-/

namespace A136192.P8557660914520216322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P8557660914520216322

namespace A136192

/-- `∩[A045371(n+1), A088763(n+1)]` -/
def P8557660914520216322.Spec : Prop :=
  ∀ n, (P8557660914520216322.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P2981753229826496087

`∩[A045371(n+1), A092110(n+1)]`
-/

namespace A136192.P2981753229826496087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P2981753229826496087

namespace A136192

/-- `∩[A045371(n+1), A092110(n+1)]` -/
def P2981753229826496087.Spec : Prop :=
  ∀ n, (P2981753229826496087.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P10133968759658477457

`∩[A045371(n+1), A387935(n+1)]`
-/

namespace A136192.P10133968759658477457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P10133968759658477457

namespace A136192

/-- `∩[A045371(n+1), A387935(n+1)]` -/
def P10133968759658477457.Spec : Prop :=
  ∀ n, (P10133968759658477457.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P11662550928382676154

`∩[A004616(n+1), A092110(n+1)]`
-/

namespace A136192.P11662550928382676154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P11662550928382676154

namespace A136192

/-- `∩[A004616(n+1), A092110(n+1)]` -/
def P11662550928382676154.Spec : Prop :=
  ∀ n, (P11662550928382676154.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P16866989273277605244

`∩[A092110(n+1), A017353(n)]`
-/

namespace A136192.P16866989273277605244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P16866989273277605244

namespace A136192

/-- `∩[A092110(n+1), A017353(n)]` -/
def P16866989273277605244.Spec : Prop :=
  ∀ n, (P16866989273277605244.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P13288615844429366444

`∩[A092110(n+1), A160912(n+1)]`
-/

namespace A136192.P13288615844429366444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P13288615844429366444

namespace A136192

/-- `∩[A092110(n+1), A160912(n+1)]` -/
def P13288615844429366444.Spec : Prop :=
  ∀ n, (P13288615844429366444.a n : ℤ) = A136192 (n + 1)

end A136192

/-! ## A136192.P16467565834464973923

`∩[A092110(n+1), A277594(n+1)]`
-/

namespace A136192.P16467565834464973923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136192.P16467565834464973923

namespace A136192

/-- `∩[A092110(n+1), A277594(n+1)]` -/
def P16467565834464973923.Spec : Prop :=
  ∀ n, (P16467565834464973923.a n : ℤ) = A136192 (n + 1)

end A136192

/-!
# A136193: Irregular array read by rows: row n contains the products of each pair of consecutive positive divisors of n.

The programs for A136193, there is no canonical definition to state claims against.
-/

/-! ## A136193.P2841416911756463306

`A027749(n+2)*A027751(n+2)`
-/

namespace A136193.P2841416911756463306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (n + 2) * A027751 (n + 2)

end

end A136193.P2841416911756463306

/-! ## A136193.P10859888195714988043

`A136178(n+2)*A136181(n+2)`
-/

namespace A136193.P10859888195714988043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136178 (n + 2) * A136181 (n + 2)

end

end A136193.P10859888195714988043

/-! ## A136193.P3937843101756994221

`(A136195(n+2)-A027749(n+2))*A027749(n+2)`
-/

namespace A136193.P3937843101756994221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136195 (n + 2) - A027749 (n + 2)) * A027749 (n + 2)

end

end A136193.P3937843101756994221

/-! ## A136193.P7244883535947414671

`(A136195(n+2)-A027751(n+2))*A027751(n+2)`
-/

namespace A136193.P7244883535947414671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136195 (n + 2) - A027751 (n + 2)) * A027751 (n + 2)

end

end A136193.P7244883535947414671

/-! ## A136193.P12631001927816588040

`gcd(A027749(n+1), A027749(n+2))*A136181(n+2)`
-/

namespace A136193.P12631001927816588040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A027749 (n + 1)) (A027749 (n + 2)) : ℤ) * A136181 (n + 2)

end

end A136193.P12631001927816588040

/-! ## A136193.P11248971914093092257

`gcd(A027751(n+2), A193829(n+2))*A136181(n+2)`
-/

namespace A136193.P11248971914093092257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A027751 (n + 2)) (A193829 (n + 2)) : ℤ) * A136181 (n + 2)

end

end A136193.P11248971914093092257

/-! ## A136193.P7945656787856575855

`gcd(A136181(n+2), A136195(n+2))*A136181(n+2)`
-/

namespace A136193.P7945656787856575855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A136181 (n + 2)) (A136195 (n + 2)) : ℤ) * A136181 (n + 2)

end

end A136193.P7945656787856575855

/-!
# A136194: Prime coefficients of the zeta function in Euler sums with even weights.

The programs for A136194, there is no canonical definition to state claims against.
-/

/-! ## A136194.P14989716182983033645

`record[A282865(∑[3*(n+1)/2^val(n+1, 2)])]`
-/

namespace A136194.P14989716182983033645
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282865 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136194.P14989716182983033645

/-! ## A136194.P9296147209502835223

`A130006(A008033(n))`
-/

namespace A136194.P9296147209502835223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130006 (A008033 n).toNat

end

end A136194.P9296147209502835223

/-!
# A136195: Irregular array read by rows: row n contains the sums of each pair of consecutive positive divisors of n.

The programs for A136195, there is no canonical definition to state claims against.
-/

/-! ## A136195.P18229830358025830744

`A027751(n+2)+A027749(n+2)`
-/

namespace A136195.P18229830358025830744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (n + 2) + A027749 (n + 2)

end

end A136195.P18229830358025830744

/-! ## A136195.P15340621921647774598

`A193829(n+2)+A004277(A027751(n+2))`
-/

namespace A136195.P15340621921647774598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193829 (n + 2) + A004277 (A027751 (n + 2)).toNat

end

end A136195.P15340621921647774598

/-! ## A136195.P15725914508938517213

`A027749(n+2)+A136193(n+2)/A027749(n+2)`
-/

namespace A136195.P15725914508938517213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027749 (n + 2) : ℚ) + (A136193 (n + 2) : ℚ) / (A027749 (n + 2) : ℚ)

end

end A136195.P15725914508938517213

/-! ## A136195.P5223297343200824489

`A027751(n+2)+A136193(n+2)/A027751(n+2)`
-/

namespace A136195.P5223297343200824489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027751 (n + 2) : ℚ) + (A136193 (n + 2) : ℚ) / (A027751 (n + 2) : ℚ)

end

end A136195.P5223297343200824489

/-!
# A136196: Numbers n such that n and n+2 are consecutive semiprimes.

The programs for A136196, the canonical program `A136196.P4207111835813478000` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136196 has offset 1).

The definition of A136196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136196.P4207111835813478000

`A001358(eq[2, A065516(n+1)]+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A136196

/-- `A001358(eq[2, A065516(n+1)]+1)` -/
def P4207111835813478000.Spec : Prop :=
  ∀ n, P4207111835813478000.a n = A136196 (n + 1)

theorem P4207111835813478000.correct : P4207111835813478000.Spec := by
  intro n
  simp only [A136196, Nat.add_sub_cancel]

end A136196

/-! ## A136196.P9777577856568864628

`∩[A092207(n+1), A272309(n+1)]`
-/

namespace A136196.P9777577856568864628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136196.P9777577856568864628

namespace A136196

/-- `∩[A092207(n+1), A272309(n+1)]` -/
def P9777577856568864628.Spec : Prop :=
  ∀ n, (P9777577856568864628.a n : ℤ) = A136196 (n + 1)

end A136196

/-! ## A136196.P5629578888209340960

`A186621(eq[2, A065516(n+1)]+1)+1`
-/

namespace A136196.P5629578888209340960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A136196.P5629578888209340960

namespace A136196

/-- `A186621(eq[2, A065516(n+1)]+1)+1` -/
def P5629578888209340960.Spec : Prop :=
  ∀ n, P5629578888209340960.a n = A136196 (n + 1)

theorem P5629578888209340960.correct : P5629578888209340960.Spec := by
  intro n
  simp only [A136196, Nat.add_sub_cancel, A136196.P5629578888209340960.f1, A136196.P5629578888209340960.f2, A136196.P5629578888209340960.a, A136196.P4207111835813478000.f1, A136196.P4207111835813478000.f2, A136196.P4207111835813478000.a, A001358, A001358.P632087320844056370.a, A065516, A065516.P1921636422831940081.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136196

/-! ## A136196.P18089628556198375681

`record[A075818(n+1)/A133942(A065516(n+1))]`
-/

namespace A136196.P18089628556198375681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / (A133942 (A065516 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136196.P18089628556198375681

namespace A136196

/-- `record[A075818(n+1)/A133942(A065516(n+1))]` -/
def P18089628556198375681.Spec : Prop :=
  ∀ n, P18089628556198375681.a n = (A136196 (n + 1) : ℚ)

end A136196

/-! ## A136196.P9189102822703043551

`A001358(eq[2, A001358(n+2)-A001358(n+1)]+1)`
-/

namespace A136196.P9189102822703043551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2) - A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136196.P9189102822703043551

namespace A136196

/-- `A001358(eq[2, A001358(n+2)-A001358(n+1)]+1)` -/
def P9189102822703043551.Spec : Prop :=
  ∀ n, P9189102822703043551.a n = A136196 (n + 1)

end A136196

/-! ## A136196.P7574482769974546410

`A001358(eq[2, A001358(n+2)%A001358(n+1)]+1)`
-/

namespace A136196.P7574482769974546410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 2)) (A001358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136196.P7574482769974546410

namespace A136196

/-- `A001358(eq[2, A001358(n+2)%A001358(n+1)]+1)` -/
def P7574482769974546410.Spec : Prop :=
  ∀ n, P7574482769974546410.a n = A136196 (n + 1)

end A136196

/-! ## A136196.P5357845513914146783

`∩[A077656(n+1), A092207(n+1)]`
-/

namespace A136196.P5357845513914146783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136196.P5357845513914146783

namespace A136196

/-- `∩[A077656(n+1), A092207(n+1)]` -/
def P5357845513914146783.Spec : Prop :=
  ∀ n, (P5357845513914146783.a n : ℤ) = A136196 (n + 1)

end A136196

/-! ## A136196.P14568762450840197883

`eq[2, A200927(n+4)]+3`
-/

namespace A136196.P14568762450840197883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A136196.P14568762450840197883

namespace A136196

/-- `eq[2, A200927(n+4)]+3` -/
def P14568762450840197883.Spec : Prop :=
  ∀ n, (P14568762450840197883.a n : ℤ) = A136196 (n + 1)

end A136196

/-!
# A136199: Fixed points or cycle values for sequences of the form s(k+1)=sopfr(4s(k)+1), with sopfr=A001414 and any s(1).

The programs for A136199, there is no canonical definition to state claims against.
-/

/-! ## A136199.P8434546865882164454

`A288531(A288549(2*(n+2))+A258882(n+1))`
-/

namespace A136199.P8434546865882164454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288531 (A288549 (2 * (n + 2) + 10) + A258882 (n + 1)).toNat

end

end A136199.P8434546865882164454

