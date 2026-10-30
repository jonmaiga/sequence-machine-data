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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A143000: a(0) = 0, a(1) = 1, a(n+1) = 3*(2*n+1)*a(n) + n^4*a(n-1).

The programs for A143000, the canonical program `A143000.P12115554806673953454` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143000 has offset 0).

The definition of A143000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143000.P12115554806673953454

`(6*n-3)*a(n-1)+(n-1)^4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143000

/-- `(6*n-3)*a(n-1)+(n-1)^4*a(n-2)` -/
def P12115554806673953454.Spec : Prop :=
  ∀ n, P12115554806673953454.a n = A143000 n

theorem P12115554806673953454.correct : P12115554806673953454.Spec := by
  intro n
  simp only [A143000]

end A143000

/-!
# A143007: Square array, read by antidiagonals, where row n equals the crystal ball sequence for the 2*n-dimensional lattice A_n x A_n.

The programs for A143007, there is no canonical definition to state claims against.
-/

/-! ## A143007.P10207161972005497755

`A151991(A347971(n))`
-/

namespace A143007.P10207161972005497755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (A347971 n).toNat

end

end A143007.P10207161972005497755

/-! ## A143007.P14049115325380826727

`or(1, A087815(A174117(n)))`
-/

namespace A143007.P14049115325380826727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A087815 (A174117 n).toNat)

end

end A143007.P14049115325380826727

/-! ## A143007.P16057966008824262391

`A076274(A008288(n)%A355630(n+2))`
-/

namespace A143007.P16057966008824262391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (Int.tmod (A008288 n) (A355630 (n + 2))).toNat

end

end A143007.P16057966008824262391

/-! ## A143007.P4200413426170833533

`A076274(A302997(n)%A355630(n+2))`
-/

namespace A143007.P4200413426170833533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (Int.tmod (A302997 n) (A355630 (n + 2))).toNat

end

end A143007.P4200413426170833533

/-! ## A143007.P8292609967320954239

`A076274(A008288(n))%A092816(n+3)`
-/

namespace A143007.P8292609967320954239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076274 (A008288 n).toNat) (A092816 (n + 3))

end

end A143007.P8292609967320954239

/-!
# A143008: Crystal ball sequence for the A2 x A2 lattice.

The programs for A143008, the canonical program `A143008.P13091787350660927345` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143008 has offset 0).

The definition of A143008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143008.P11212551940297906373

`ogf((1+8x+18x^2+8x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A143008.P11212551940297906373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 18, 8, 1] [1, -5, 10, -10, 5, -1] n

end

end A143008.P11212551940297906373

namespace A143008

/-- `ogf((1+8x+18x^2+8x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11212551940297906373.Spec : Prop :=
  ∀ n, P11212551940297906373.a n = A143008 n

end A143008

/-! ## A143008.P4345161014499073368

`(3*n^4+6*n^3+9*n²+6*n+2)/2`
-/

namespace A143008.P4345161014499073368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 4 + 6 * n ^ 3 + 9 * n ^ 2 + 6 * n + 2 : ℚ) / 2

end

end A143008.P4345161014499073368

namespace A143008

/-- `(3*n^4+6*n^3+9*n²+6*n+2)/2` -/
def P4345161014499073368.Spec : Prop :=
  ∀ n, P4345161014499073368.a n = (A143008 n : ℚ)

theorem P4345161014499073368.correct : P4345161014499073368.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A143008, Nat.add_sub_cancel, A143008.P4345161014499073368.a, A143008.P13091787350660927345.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A143008, Nat.add_sub_cancel, A143008.P4345161014499073368.a, A143008.P13091787350660927345.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A143008

/-! ## A143008.P13091787350660927345

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=73, a(3)=253, a(4)=661`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143008

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13091787350660927345.Spec : Prop :=
  ∀ n, P13091787350660927345.a n = A143008 n

theorem P13091787350660927345.correct : P13091787350660927345.Spec := by
  intro n
  simp only [A143008]

end A143008

/-! ## A143008.P16778128707040906820

`∑[floor(6/acot(n)^3)]`
-/

namespace A143008.P16778128707040906820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143008.P16778128707040906820

namespace A143008

/-- `∑[floor(6/acot(n)^3)]` -/
def P16778128707040906820.Spec : Prop :=
  ∀ n, P16778128707040906820.a n = A143008 n

end A143008

/-! ## A143008.P9160815029272980353

`∑[floor(6*acot(n)^-3)]`
-/

namespace A143008.P9160815029272980353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143008.P9160815029272980353

namespace A143008

/-- `∑[floor(6*acot(n)^-3)]` -/
def P9160815029272980353.Spec : Prop :=
  ∀ n, P9160815029272980353.a n = A143008 n

end A143008

/-! ## A143008.P12363163381557276341

`12*C(∑[n]+1, 2)+1`
-/

namespace A143008.P12363163381557276341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 + 1

end

end A143008.P12363163381557276341

namespace A143008

/-- `12*C(∑[n]+1, 2)+1` -/
def P12363163381557276341.Spec : Prop :=
  ∀ n, (P12363163381557276341.a n : ℤ) = A143008 n

end A143008

/-! ## A143008.P8999537601233975017

`or(1, 6*(∑[n]+∑[n]²))`
-/

namespace A143008.P8999537601233975017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2))

end

end A143008.P8999537601233975017

namespace A143008

/-- `or(1, 6*(∑[n]+∑[n]²))` -/
def P8999537601233975017.Spec : Prop :=
  ∀ n, (P8999537601233975017.a n : ℤ) = A143008 n

end A143008

/-! ## A143008.P7269269380301585222

`xor(1, 6*(∑[n]+∑[n]²))`
-/

namespace A143008.P7269269380301585222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2))

end

end A143008.P7269269380301585222

namespace A143008

/-- `xor(1, 6*(∑[n]+∑[n]²))` -/
def P7269269380301585222.Spec : Prop :=
  ∀ n, (P7269269380301585222.a n : ℤ) = A143008 n

end A143008

/-! ## A143008.P1800357439955091348

`∑[A008530(n)]`
-/

namespace A143008.P1800357439955091348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143008.P1800357439955091348

namespace A143008

/-- `∑[A008530(n)]` -/
def P1800357439955091348.Spec : Prop :=
  ∀ n, P1800357439955091348.a n = A143008 n

end A143008

/-! ## A143008.P17496321224556773686

`A380353(n+1)+∑[n]²`
-/

namespace A143008.P17496321224556773686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380353 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A143008.P17496321224556773686

namespace A143008

/-- `A380353(n+1)+∑[n]²` -/
def P17496321224556773686.Spec : Prop :=
  ∀ n, P17496321224556773686.a n = A143008 n

end A143008

/-! ## A143008.P13949396758540883740

`A060886(n)+A033486(n)`
-/

namespace A143008.P13949396758540883740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n + A033486 n

end

end A143008.P13949396758540883740

namespace A143008

/-- `A060886(n)+A033486(n)` -/
def P13949396758540883740.Spec : Prop :=
  ∀ n, P13949396758540883740.a n = A143008 n

end A143008

/-! ## A143008.P5754484405413457137

`A222408(n)+A001621(n)`
-/

namespace A143008.P5754484405413457137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222408 n + A001621 n

end

end A143008.P5754484405413457137

namespace A143008

/-- `A222408(n)+A001621(n)` -/
def P5754484405413457137.Spec : Prop :=
  ∀ n, P5754484405413457137.a n = A143008 n

end A143008

/-! ## A143008.P12715512188269598519

`A163102(n)+A072025(n)`
-/

namespace A143008.P12715512188269598519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + A072025 n

end

end A143008.P12715512188269598519

namespace A143008

/-- `A163102(n)+A072025(n)` -/
def P12715512188269598519.Spec : Prop :=
  ∀ n, P12715512188269598519.a n = A143008 n

end A143008

/-! ## A143008.P11608544897964544410

`A160747(n)-A001621(n)`
-/

namespace A143008.P11608544897964544410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n - A001621 n

end

end A143008.P11608544897964544410

namespace A143008

/-- `A160747(n)-A001621(n)` -/
def P11608544897964544410.Spec : Prop :=
  ∀ n, P11608544897964544410.a n = A143008 n

end A143008

/-! ## A143008.P5831611017335717590

`A160765(n)-A219086(n)`
-/

namespace A143008.P5831611017335717590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 n - A219086 n

end

end A143008.P5831611017335717590

namespace A143008

/-- `A160765(n)-A219086(n)` -/
def P5831611017335717590.Spec : Prop :=
  ∀ n, P5831611017335717590.a n = A143008 n

end A143008

/-! ## A143008.P5674490436669233261

`A294433(n)-A110450(n)`
-/

namespace A143008.P5674490436669233261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n - A110450 n

end

end A143008.P5674490436669233261

namespace A143008

/-- `A294433(n)-A110450(n)` -/
def P5674490436669233261.Spec : Prop :=
  ∀ n, P5674490436669233261.a n = A143008 n

end A143008

/-! ## A143008.P2958414051283664461

`A162673(n+1)+A016754(n)`
-/

namespace A143008.P2958414051283664461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162673 (n + 1) + A016754 n

end

end A143008.P2958414051283664461

namespace A143008

/-- `A162673(n+1)+A016754(n)` -/
def P2958414051283664461.Spec : Prop :=
  ∀ n, P2958414051283664461.a n = A143008 n

end A143008

/-! ## A143008.P13816581219447774347

`A237516(n+1)-A163102(n)`
-/

namespace A143008.P13816581219447774347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1) - A163102 n

end

end A143008.P13816581219447774347

namespace A143008

/-- `A237516(n+1)-A163102(n)` -/
def P13816581219447774347.Spec : Prop :=
  ∀ n, P13816581219447774347.a n = A143008 n

end A143008

/-! ## A143008.P12178431466468527919

`A286437(n+3)+A082044(n)`
-/

namespace A143008.P12178431466468527919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286437 (n + 3) + A082044 n

end

end A143008.P12178431466468527919

namespace A143008

/-- `A286437(n+3)+A082044(n)` -/
def P12178431466468527919.Spec : Prop :=
  ∀ n, P12178431466468527919.a n = A143008 n

end A143008

/-! ## A143008.P10708880843140974508

`A383834(n)+A384566(n)/A001844(n)`
-/

namespace A143008.P10708880843140974508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383834 n : ℚ) + (A384566 n : ℚ) / (A001844 n : ℚ)

end

end A143008.P10708880843140974508

namespace A143008

/-- `A383834(n)+A384566(n)/A001844(n)` -/
def P10708880843140974508.Spec : Prop :=
  ∀ n, P10708880843140974508.a n = (A143008 n : ℚ)

end A143008

/-!
# A143009: Crystal ball sequence for the A3 x A3 lattice.

The programs for A143009, the canonical program `A143009.P12892106457880419598` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143009 has offset 0).

The definition of A143009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143009.P15854035006854426212

`ogf((1+18x+99x^2+164x^3+99x^4+18x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A143009.P15854035006854426212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 18, 99, 164, 99, 18, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A143009.P15854035006854426212

namespace A143009

/-- `ogf((1+18x+99x^2+164x^3+99x^4+18x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P15854035006854426212.Spec : Prop :=
  ∀ n, P15854035006854426212.a n = A143009 n

end A143009

/-! ## A143009.P12892106457880419598

`n*(n+1)*(5*n*(n+1)*(2*n*(n+1)+11)+66)/18+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143009

/-- `n*(n+1)*(5*n*(n+1)*(2*n*(n+1)+11)+66)/18+1` -/
def P12892106457880419598.Spec : Prop :=
  ∀ n, P12892106457880419598.a n = (A143009 n : ℚ)

end A143009

/-! ## A143009.P1633734459804136658

`A143007(A167614(n+2))`
-/

namespace A143009.P1633734459804136658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A167614 (n + 2)).toNat

end

end A143009.P1633734459804136658

namespace A143009

/-- `A143007(A167614(n+2))` -/
def P1633734459804136658.Spec : Prop :=
  ∀ n, P1633734459804136658.a n = A143009 n

end A143009

/-! ## A143009.P15022247758130455309

`record[A143007(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A143009.P15022247758130455309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143009.P15022247758130455309

namespace A143009

/-- `record[A143007(A167614(C(comp[∑[n]]-n, 2)-n))]` -/
def P15022247758130455309.Spec : Prop :=
  ∀ n, P15022247758130455309.a n = A143009 n

end A143009

/-! ## A143009.P18040602838596672565

`A143007(∑[n+3]+n+3)`
-/

namespace A143009.P18040602838596672565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A143009.P18040602838596672565

namespace A143009

/-- `A143007(∑[n+3]+n+3)` -/
def P18040602838596672565.Spec : Prop :=
  ∀ n, P18040602838596672565.a n = A143009 n

end A143009

/-! ## A143009.P12897013848440155014

`record[gcd(A143007(n), A185782(n+4))]`
-/

namespace A143009.P12897013848440155014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143007 n) (A185782 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143009.P12897013848440155014

namespace A143009

/-- `record[gcd(A143007(n), A185782(n+4))]` -/
def P12897013848440155014.Spec : Prop :=
  ∀ n, (P12897013848440155014.a n : ℤ) = A143009 n

end A143009

/-!
# A143010: Crystal ball sequence for the A4 x A4 lattice.

The programs for A143010, there is no canonical definition to state claims against.
-/

/-! ## A143010.P17863181324984014044

`A143007(A000217(n+4)+4)`
-/

namespace A143010.P17863181324984014044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A000217 (n + 4) + 4).toNat

end

end A143010.P17863181324984014044

/-! ## A143010.P10308363215322223059

`A143007(A052905(n+2))`
-/

namespace A143010.P10308363215322223059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A052905 (n + 2)).toNat

end

end A143010.P10308363215322223059

/-! ## A143010.P1985431792760407727

`A143007(A056115(n)+10)`
-/

namespace A143010.P1985431792760407727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A056115 n + 10).toNat

end

end A143010.P1985431792760407727

/-! ## A143010.P10475001940910919064

`A143007(A055999(n+2)+1)`
-/

namespace A143010.P10475001940910919064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A055999 (n + 2) + 1).toNat

end

end A143010.P10475001940910919064

/-! ## A143010.P2599866019446665390

`A143007(A046691(n+3)-1)`
-/

namespace A143010.P2599866019446665390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A046691 (n + 3) - 1).toNat

end

end A143010.P2599866019446665390

/-!
# A143011: Crystal ball sequence for the A_5 x A_5 lattice.

The programs for A143011, there is no canonical definition to state claims against.
-/

/-! ## A143011.P13875483759561762792

`A143007(A056115(n)+20)`
-/

namespace A143011.P13875483759561762792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A056115 n + 20).toNat

end

end A143011.P13875483759561762792

/-! ## A143011.P8303703329834880813

`A143007(A055999(n+3))`
-/

namespace A143011.P8303703329834880813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A055999 (n + 3)).toNat

end

end A143011.P8303703329834880813

/-! ## A143011.P7082913387997485339

`A143007(A056119(n)+15)`
-/

namespace A143011.P7082913387997485339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A056119 n + 15).toNat

end

end A143011.P7082913387997485339

/-! ## A143011.P10386955929975742464

`A143007(Δ[A023551(n+1)])`
-/

namespace A143011.P10386955929975742464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (f1 (n + 1) - f1 n).toNat

end

end A143011.P10386955929975742464

/-! ## A143011.P16937214436425991946

`A143007(Δ[A026054(n+3)])`
-/

namespace A143011.P16937214436425991946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (f1 (n + 1) - f1 n).toNat

end

end A143011.P16937214436425991946

/-!
# A143012: Numbers of the form (4^p + 2^p + 1)/7, where p > 3 is prime.

The programs for A143012, there is no canonical definition to state claims against.
-/

/-! ## A143012.P12072594684496864050

`A001576(A215848(n+1))/7`
-/

namespace A143012.P12072594684496864050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001576 (A215848 (n + 1)).toNat : ℚ) / 7

end

end A143012.P12072594684496864050

/-! ## A143012.P16444961414421578799

`A064085(A127329(n+1))`
-/

namespace A143012.P16444961414421578799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (A127329 (n + 1)).toNat

end

end A143012.P16444961414421578799

/-! ## A143012.P5161538502775675323

`A064085(A391332(n+2))`
-/

namespace A143012.P5161538502775675323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (A391332 (n + 2)).toNat

end

end A143012.P5161538502775675323

/-! ## A143012.P2976828644908566587

`A064085(A001748(n+3))`
-/

namespace A143012.P2976828644908566587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (A001748 (n + 3)).toNat

end

end A143012.P2976828644908566587

/-! ## A143012.P4858827890799517468

`A064085(3*A000040(n+3))`
-/

namespace A143012.P4858827890799517468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (3 * A000040 (n + 3)).toNat

end

end A143012.P4858827890799517468

/-!
# A143013: Number of Motzkin n-paths with two kinds of level steps one of which is a final step.

The programs for A143013, there is no canonical definition to state claims against.
-/

/-! ## A143013.P14919991174519821421

`A071359(n+1)+A071359(n)`
-/

namespace A143013.P14919991174519821421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071359 (n + 1) + A071359 n

end

end A143013.P14919991174519821421

/-! ## A143013.P9894095858282860307

`abs(Δ[A033999(n)*A071359(n)])`
-/

namespace A143013.P9894095858282860307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A071359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A143013.P9894095858282860307

/-! ## A143013.P16502281194201876362

`A190252(∑[n])+A071359(n)`
-/

namespace A143013.P16502281194201876362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 (∑ j ∈ Finset.range (n + 1), f1 j) + A071359 n

end

end A143013.P16502281194201876362

/-! ## A143013.P5895643123224780831

`A001462(A392976(n)+A001045(n))`
-/

namespace A143013.P5895643123224780831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A392976 n + A001045 n).toNat

end

end A143013.P5895643123224780831

/-!
# A143014: a(1) = 1. a(n) = the smallest multiple of a(n-1), a(n) > a(n-1), such that a(n) in binary is a palindrome.

The programs for A143014, there is no canonical definition to state claims against.
-/

/-! ## A143014.P15264637693459319028

`∏[A143015(n+1)]`
-/

namespace A143014.P15264637693459319028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A143014.P15264637693459319028

/-! ## A143014.P15090584310176944029

`a(n-A057427(n))*A143015(n+1)` with `a(0)=1`
-/

namespace A143014.P15090584310176944029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A057427 n).toNat * A143015 (n + 1)

end

end A143014.P15090584310176944029

/-! ## A143014.P9862456566386440316

`∏[A131209(A064319(n+1))]`
-/

namespace A143014.P9862456566386440316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A064319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A143014.P9862456566386440316

/-! ## A143014.P899883313671798128

`∏[A325339(A166994(n+1)²)]`
-/

namespace A143014.P899883313671798128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325339 (A166994 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A143014.P899883313671798128

/-!
# A143015: a(1) = 1. a(n) = the smallest integer >=2 such that (product{k=1 to n} a(k)) in binary is a palindrome.

The programs for A143015, there is no canonical definition to state claims against.
-/

/-! ## A143015.P9987683589998398369

`ratio[A143014(A028310(n))]`
-/

namespace A143015.P9987683589998398369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143014 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A143015.P9987683589998398369

/-! ## A143015.P11188893611975595978

`A143014(n+1)/A143014(round(sqrt(n²+1)))`
-/

namespace A143015.P11188893611975595978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143014 (n + 1) : ℚ) / (A143014 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A143015.P11188893611975595978

/-!
# A143016: a(n) = A143014(n) written in binary.

The programs for A143016, there is no canonical definition to state claims against.
-/

/-! ## A143016.P11751383476664277155

`A007088(A143014(n+1))`
-/

namespace A143016.P11751383476664277155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A143014 (n + 1)).toNat

end

end A143016.P11751383476664277155

/-! ## A143016.P10670613455449865323

`A007088(∏[A143015(n+1)])`
-/

namespace A143016.P10670613455449865323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143016.P10670613455449865323

/-!
# A143017: Number of {2-1-3, 2'^e-31}-avoiding permutations of size n (see definition in the Elizalde paper).

The programs for A143017, there is no canonical definition to state claims against.
-/

/-! ## A143017.P3955269850781029841

`A113337(n+2)+A101785(n+1)`
-/

namespace A143017.P3955269850781029841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113337 (n + 2) + A101785 (n + 1)

end

end A143017.P3955269850781029841

/-! ## A143017.P14737464744992310170

`A008676(3*A364210(n+3))`
-/

namespace A143017.P14737464744992310170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (3 * A364210 (n + 3)).toNat

end

end A143017.P14737464744992310170

/-! ## A143017.P16554036126299761391

`∑[A318229(n+1)]-A000579(n)`
-/

namespace A143017.P16554036126299761391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000579 n

end

end A143017.P16554036126299761391

/-! ## A143017.P7605549126162064399

`A326973(A001678(n))+A001906(n)`
-/

namespace A143017.P7605549126162064399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326973 (A001678 n).toNat + A001906 n

end

end A143017.P7605549126162064399

/-!
# A143018: Triangle read by rows: T(n,k) (n >= 2, k >= 1) is the number of non-crossing connected graphs on n nodes on a circle such that the distance from a fixed node (root) to the next node is k. Rows are indexed 2,3,4,...; columns are indexed 1,2,3, ... .

The programs for A143018, there is no canonical definition to state claims against.
-/

/-! ## A143018.P16172809814086802547

`A182728(A062190(n+1))`
-/

namespace A143018.P16172809814086802547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182728 (A062190 (n + 1)).toNat

end

end A143018.P16172809814086802547

/-! ## A143018.P11138383095930371526

`A212721(A042843(n+1))`
-/

namespace A143018.P11138383095930371526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212721 (A042843 (n + 1)).toNat

end

end A143018.P11138383095930371526

/-! ## A143018.P13556421331125271250

`A382301(A187857(n+1))`
-/

namespace A143018.P13556421331125271250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382301 (A187857 (n + 1)).toNat

end

end A143018.P13556421331125271250

/-!
# A143019: Infinite square array read by antidiagonals: a(q,n) is the coefficient of z^n in the series expansion of C(z)^q/(1-4z)^(3/2), where C(z) = (1-sqrt(1-4z))/(2z) is the Catalan function (q,n = 0,1,2,...).

The programs for A143019, there is no canonical definition to state claims against.
-/

/-! ## A143019.P17856708391264810345

`A072089(A337369(n))`
-/

namespace A143019.P17856708391264810345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A337369 n).toNat

end

end A143019.P17856708391264810345

/-! ## A143019.P9747953312018546115

`xor(A327031(A010750(n)), A337369(n))`
-/

namespace A143019.P9747953312018546115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A327031 (A010750 n).toNat) (A337369 n)

end

end A143019.P9747953312018546115

/-! ## A143019.P11517372825548916732

`A000196(A133819(n+1)*A153270(n))`
-/

namespace A143019.P11517372825548916732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A133819 (n + 1) * A153270 n).toNat

end

end A143019.P11517372825548916732

/-!
# A143020: Sum of the distances from a fixed node (root) to the next node in all non-crossing graphs on n nodes on a circle.

The programs for A143020, the canonical program `A143020.P11505867970033686106` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143020 has offset 2).

The definition of A143020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143020.P11505867970033686106

`A089436(n+3)-A263843(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143020

/-- `A089436(n+3)-A263843(n+1)` -/
def P11505867970033686106.Spec : Prop :=
  ∀ n, P11505867970033686106.a n = A143020 (n + 2)

theorem P11505867970033686106.correct : P11505867970033686106.Spec := by
  intro n
  simp only [A143020, Nat.add_sub_cancel]

end A143020

/-! ## A143020.P4979710371026052827

`A089436(n+3)-A007297(n+2)`
-/

namespace A143020.P4979710371026052827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089436 (n + 3) - A007297 (n + 2)

end

end A143020.P4979710371026052827

namespace A143020

/-- `A089436(n+3)-A007297(n+2)` -/
def P4979710371026052827.Spec : Prop :=
  ∀ n, P4979710371026052827.a n = A143020 (n + 2)

end A143020

/-! ## A143020.P14499704326337777870

`A143022(A152950(n+2))/2`
-/

namespace A143020.P14499704326337777870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143022 (A152950 (n + 2)).toNat : ℚ) / 2

end

end A143020.P14499704326337777870

namespace A143020

/-- `A143022(A152950(n+2))/2` -/
def P14499704326337777870.Spec : Prop :=
  ∀ n, P14499704326337777870.a n = (A143020 (n + 2) : ℚ)

end A143020

/-! ## A143020.P17887931526371712079

`A143022(A134869(n+1)+2)/2`
-/

namespace A143020.P17887931526371712079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143022 (A134869 (n + 1) + 2).toNat : ℚ) / 2

end

end A143020.P17887931526371712079

namespace A143020

/-- `A143022(A134869(n+1)+2)/2` -/
def P17887931526371712079.Spec : Prop :=
  ∀ n, P17887931526371712079.a n = (A143020 (n + 2) : ℚ)

end A143020

/-!
# A143021: Number of vertices of degree 1 in all non-crossing connected graphs on n points on a circle.

The programs for A143021, the canonical program `A143021.P697131988222940395` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143021 has offset 2).

The definition of A143021 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089436, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143021.P697131988222940395

`(n+2)*A089436(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143021

/-- `(n+2)*A089436(n+2)` -/
def P697131988222940395.Spec : Prop :=
  ∀ n, P697131988222940395.a n = A143021 (n + 2)

theorem P697131988222940395.correct : P697131988222940395.Spec := by
  intro n
  simp only [A143021, Nat.add_sub_cancel]

end A143021

/-! ## A143021.P7340655463668451135

`(n+2)*(A085614(n+1)+A085614(n+1)-A007297(n+2))`
-/

namespace A143021.P7340655463668451135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A085614 (n + 1) + (A085614 (n + 1) - A007297 (n + 2)))

end

end A143021.P7340655463668451135

namespace A143021

/-- `(n+2)*(A085614(n+1)+A085614(n+1)-A007297(n+2))` -/
def P7340655463668451135.Spec : Prop :=
  ∀ n, P7340655463668451135.a n = A143021 (n + 2)

end A143021

/-! ## A143021.P10868741650629163948

`(n+2)*A143022(∑[n]+2)`
-/

namespace A143021.P10868741650629163948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A143022 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A143021.P10868741650629163948

namespace A143021

/-- `(n+2)*A143022(∑[n]+2)` -/
def P10868741650629163948.Spec : Prop :=
  ∀ n, P10868741650629163948.a n = A143021 (n + 2)

end A143021

/-! ## A143021.P4901523180328315688

`(n+2)*record[A143022(n+2)/A007318(n)]`
-/

namespace A143021.P4901523180328315688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143022 (n + 2) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143021.P4901523180328315688

namespace A143021

/-- `(n+2)*record[A143022(n+2)/A007318(n)]` -/
def P4901523180328315688.Spec : Prop :=
  ∀ n, P4901523180328315688.a n = (A143021 (n + 2) : ℚ)

end A143021

/-!
# A143023: Sum of the root degrees over all non-crossing connected graphs on n nodes on a circle (by root we mean a distinguished node).

The programs for A143023, the canonical program `A143023.P14212091565924185343` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143023 has offset 2).

The definition of A143023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143023.P7551931933973330709

`A143018(∑[n+1]+3)`
-/

namespace A143023.P7551931933973330709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143018 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A143023.P7551931933973330709

namespace A143023

/-- `A143018(∑[n+1]+3)` -/
def P7551931933973330709.Spec : Prop :=
  ∀ n, P7551931933973330709.a n = A143023 (n + 2)

end A143023

/-! ## A143023.P14821354660027244278

`A078531(n+1)-A007297(n+2)`
-/

namespace A143023.P14821354660027244278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078531 (n + 1) - A007297 (n + 2)

end

end A143023.P14821354660027244278

namespace A143023

/-- `A078531(n+1)-A007297(n+2)` -/
def P14821354660027244278.Spec : Prop :=
  ∀ n, P14821354660027244278.a n = A143023 (n + 2)

theorem P14821354660027244278.correct : P14821354660027244278.Spec := by
  intro n
  simp only [A143023, Nat.add_sub_cancel, A143023.P14821354660027244278.a, A143023.P14212091565924185343.a, A007297, A007297.P10347937270819587121.a, A078531, A078531.P10334834455419406886.a, A085614, A085614.P914625469054946526.a, A091527, A091527.P16700300424327959789.f1, A091527.P16700300424327959789.a, A244038, A244038.P3492826377890953382.f1, A244038.P3492826377890953382.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143023

/-! ## A143023.P14212091565924185343

`A085614(n+2)-A078531(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143023

/-- `A085614(n+2)-A078531(n+1)` -/
def P14212091565924185343.Spec : Prop :=
  ∀ n, P14212091565924185343.a n = A143023 (n + 2)

theorem P14212091565924185343.correct : P14212091565924185343.Spec := by
  intro n
  simp only [A143023, Nat.add_sub_cancel]

end A143023

/-! ## A143023.P9905255859088623024

`(A085614(n+2)-A263843(n+1))/2`
-/

namespace A143023.P9905255859088623024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085614 (n + 2) - A263843 (n + 1) : ℚ) / 2

end

end A143023.P9905255859088623024

namespace A143023

/-- `(A085614(n+2)-A263843(n+1))/2` -/
def P9905255859088623024.Spec : Prop :=
  ∀ n, P9905255859088623024.a n = (A143023 (n + 2) : ℚ)

end A143023

/-! ## A143023.P6363405244322199180

`(A085614(n+2)-A007297(n+2))/2`
-/

namespace A143023.P6363405244322199180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085614 (n + 2) - A007297 (n + 2) : ℚ) / 2

end

end A143023.P6363405244322199180

namespace A143023

/-- `(A085614(n+2)-A007297(n+2))/2` -/
def P6363405244322199180.Spec : Prop :=
  ∀ n, P6363405244322199180.a n = (A143023 (n + 2) : ℚ)

theorem P6363405244322199180.correct : P6363405244322199180.Spec := by
  intro n
  simp only [A143023, Nat.add_sub_cancel, A143023.P6363405244322199180.a, A143023.P14212091565924185343.a, A007297, A007297.P10347937270819587121.a, A078531, A078531.P10334834455419406886.a, A085614, A085614.P914625469054946526.a, A091527, A091527.P16700300424327959789.f1, A091527.P16700300424327959789.a, A244038, A244038.P3492826377890953382.f1, A244038.P3492826377890953382.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143023

/-! ## A143023.P10833995641393950847

`2/(n+2)*A045741(n+2)`
-/

namespace A143023.P10833995641393950847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A045741 (n + 2) : ℚ)

end

end A143023.P10833995641393950847

namespace A143023

/-- `2/(n+2)*A045741(n+2)` -/
def P10833995641393950847.Spec : Prop :=
  ∀ n, P10833995641393950847.a n = (A143023 (n + 2) : ℚ)

end A143023

/-!
# A143025: Period length 4: repeat [1, 8, 2, 8].

The programs for A143025, the canonical program `A143025.P5325923522107089256` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143025 has offset 0).

The definition of A143025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143025.P5325923522107089256

`ogf((1+8x+2x^2+8x^3)/(1-x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143025

/-- `ogf((1+8x+2x^2+8x^3)/(1-x^4))` -/
def P5325923522107089256.Spec : Prop :=
  ∀ n, P5325923522107089256.a n = A143025 n

theorem P5325923522107089256.correct : P5325923522107089256.Spec := by
  intro n
  simp only [A143025]

end A143025

/-!
# A143027: Sturdy prime numbers: p such that in binary notation k*p has at least as many 1-bits as p for all k > 0.

The programs for A143027, there is no canonical definition to state claims against.
-/

/-! ## A143027.P13375022802614995390

`p?[A125121(n+1)]`
-/

namespace A143027.P13375022802614995390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143027.P13375022802614995390

/-! ## A143027.P4936564997361769103

`record[A006530(A125121(n+2))]`
-/

namespace A143027.P4936564997361769103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A125121 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143027.P4936564997361769103

/-! ## A143027.P17832070344394042368

`filter[A125121(n+1), A010051(#)]`
-/

namespace A143027.P17832070344394042368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A143027.P17832070344394042368

/-! ## A143027.P5822628150170051556

`filter[A125121(n+2), A080339(#)]`
-/

namespace A143027.P5822628150170051556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A143027.P5822628150170051556

/-! ## A143027.P17598619260421131879

`∩[A125121(n+1), A042988(n)]`
-/

namespace A143027.P17598619260421131879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143027.P17598619260421131879

/-!
# A143028: A sequence of asymptotic density zeta(2) - 1, where zeta is the Riemann zeta function.

The programs for A143028, there is no canonical definition to state claims against.
-/

/-! ## A143028.P17979182177073357878

`eq[2, A161189(n+1)]+1`
-/

namespace A143028.P17979182177073357878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143028.P17979182177073357878

/-! ## A143028.P9941652243037125909

`record[A317440(n+1)/A161189(n+1)]`
-/

namespace A143028.P9941652243037125909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317440 (n + 1) : ℚ) / (A161189 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143028.P9941652243037125909

/-! ## A143028.P4052978276895617789

`record[A000027(n+1)/(A161189(n+1)-1)]`
-/

namespace A143028.P4052978276895617789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A161189 (n + 1) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143028.P4052978276895617789

/-! ## A143028.P15178144843114735336

`record[A000027(n+1)-A161197(A161189(n+1))]`
-/

namespace A143028.P15178144843114735336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A161197 (A161189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143028.P15178144843114735336

/-! ## A143028.P221860981343724125

`record[(A005843(n)+2)/A161189(n+1)]`
-/

namespace A143028.P221860981343724125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n + 2 : ℚ) / (A161189 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143028.P221860981343724125

/-! ## A143028.P14218094154130612263

`record[A005843(n+1)/A161189(n+1)]`
-/

namespace A143028.P14218094154130612263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A161189 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143028.P14218094154130612263

/-! ## A143028.P4655129963207300854

`record[(A267872(n)+1)/A161189(n+1)]`
-/

namespace A143028.P4655129963207300854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267872 n + 1 : ℚ) / (A161189 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143028.P4655129963207300854

/-! ## A143028.P11713689377374311093

`eq[A040000(n), A161189(A028310(n))]`
-/

namespace A143028.P11713689377374311093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143028.P11713689377374311093

/-! ## A143028.P8047713117933532187

`eq[A000122(n²), A161189(A028310(n))]`
-/

namespace A143028.P8047713117933532187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143028.P8047713117933532187

/-!
# A143029: A sequence of asymptotic density zeta(3) - 1, where zeta is the Riemann zeta function.

The programs for A143029, there is no canonical definition to state claims against.
-/

/-! ## A143029.P5376309521228720771

`eq[3, A161189(n+1)]+1`
-/

namespace A143029.P5376309521228720771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143029.P5376309521228720771

/-! ## A143029.P1535743142207940068

`eq[3, A161189(A028310(n))]`
-/

namespace A143029.P1535743142207940068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143029.P1535743142207940068

/-! ## A143029.P12964418940445989614

`A020725(eq[3, A161189(n+1)])`
-/

namespace A143029.P12964418940445989614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143029.P12964418940445989614

/-! ## A143029.P9692810119089388852

`eq[3, A161189(A123108(2*n))]`
-/

namespace A143029.P9692810119089388852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143029.P9692810119089388852

/-! ## A143029.P3768522486654789284

`eq[3, A161189(A233583(n+1))]`
-/

namespace A143029.P3768522486654789284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143029.P3768522486654789284

/-!
# A143030: A sequence of asymptotic density zeta(4) - 1, where zeta is the Riemann zeta function.

The programs for A143030, there is no canonical definition to state claims against.
-/

/-! ## A143030.P8763727274285486111

`eq[4, A161189(n+1)]+1`
-/

namespace A143030.P8763727274285486111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143030.P8763727274285486111

/-! ## A143030.P7777478957215524579

`eq[4, A161189(A028310(n))]`
-/

namespace A143030.P7777478957215524579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143030.P7777478957215524579

/-! ## A143030.P1370206156589503141

`A020725(eq[4, A161189(n+1)])`
-/

namespace A143030.P1370206156589503141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143030.P1370206156589503141

/-! ## A143030.P6803395325439940638

`eq[4, A161189(A000007(n)+n)]`
-/

namespace A143030.P6803395325439940638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143030.P6803395325439940638

/-! ## A143030.P3299832019542943861

`eq[4, A161189(A060000(n+1))]`
-/

namespace A143030.P3299832019542943861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143030.P3299832019542943861

/-! ## A143030.P10190985284324313799

`eq[4, A161189(A123108(2*n))]`
-/

namespace A143030.P10190985284324313799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143030.P10190985284324313799

/-! ## A143030.P13520886015311673308

`eq[4, A161189(A233583(n+1))]`
-/

namespace A143030.P13520886015311673308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143030.P13520886015311673308

/-!
# A143031: A sequence of asymptotic density zeta(5) - 1, where zeta is the Riemann zeta function.

The programs for A143031, there is no canonical definition to state claims against.
-/

/-! ## A143031.P15913188531317260429

`eq[5, A161189(n+1)]+1`
-/

namespace A143031.P15913188531317260429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143031.P15913188531317260429

/-! ## A143031.P18147329662911596094

`eq[5, A161189(A028310(n))]`
-/

namespace A143031.P18147329662911596094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143031.P18147329662911596094

/-! ## A143031.P9099656478497307511

`A020725(eq[5, A161189(n+1)])`
-/

namespace A143031.P9099656478497307511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143031.P9099656478497307511

/-! ## A143031.P5205142798978319483

`A065475(eq[5, A161189(n+1)])`
-/

namespace A143031.P5205142798978319483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143031.P5205142798978319483

/-! ## A143031.P10970698046516077370

`eq[5, A161189(A123108(2*n))]`
-/

namespace A143031.P10970698046516077370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143031.P10970698046516077370

/-!
# A143032: A sequence of asymptotic density zeta(6) - 1, where zeta is the Riemann zeta function.

The programs for A143032, there is no canonical definition to state claims against.
-/

/-! ## A143032.P4040990262502593900

`eq[6, A161189(A028310(n))]`
-/

namespace A143032.P4040990262502593900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143032.P4040990262502593900

/-! ## A143032.P15652869474217853373

`A153152(eq[6, A161189(n+1)])`
-/

namespace A143032.P15652869474217853373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143032.P15652869474217853373

/-! ## A143032.P18022101355520139143

`eq[6, A161189(A233583(n+1))]`
-/

namespace A143032.P18022101355520139143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143032.P18022101355520139143

/-!
# A143033: A sequence of asymptotic density zeta(7) - 1, where zeta is the Riemann zeta function.

The programs for A143033, there is no canonical definition to state claims against.
-/

/-! ## A143033.P4526855566327591278

`eq[7, A161189(A028310(n))]`
-/

namespace A143033.P4526855566327591278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143033.P4526855566327591278

/-!
# A143037: Triangle read by rows, A000012 * A127773 * A000012. A000012 is an infinite lower triangular matrix with all 1's, A127773 = (1; 0,3; 0,0,6; 0,0,0,10; ...).

The programs for A143037, the canonical program `A143037.P245684199888480199` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143037 has offset 1).

The definition of A143037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143037.P18259063830299599051

`T(n-1,k-1)+C(2+row(n), 2)` with `a(0)=1`
-/

namespace A143037.P18259063830299599051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + Nat.choose (2 + SequenceMachineLib.triRow n) 2

end

end A143037.P18259063830299599051

namespace A143037

/-- `T(n-1,k-1)+C(2+row(n), 2)` -/
def P18259063830299599051.Spec : Prop :=
  ∀ n, (P18259063830299599051.a n : ℤ) = A143037 (n + 1)

end A143037

/-! ## A143037.P6428299521306598099

`1+T(n-1,k-1)+row(n)-col(n)+n` with `a(0)=1`
-/

namespace A143037.P6428299521306598099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + (SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) + (n : ℤ)

end

end A143037.P6428299521306598099

namespace A143037

/-- `1+T(n-1,k-1)+row(n)-col(n)+n` -/
def P6428299521306598099.Spec : Prop :=
  ∀ n, P6428299521306598099.a n = A143037 (n + 1)

end A143037

/-! ## A143037.P14742598029015736682

`∑{#}[row(n), #+2]-(∑[abs(T(n-1,k))]-T(n-1,k-1))` with `a(0)=1`
-/

namespace A143037.P14742598029015736682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.triUp f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ k ∈ Finset.range (f1 n + 1), (k + 2) : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - SequenceMachineLib.triUpLeft a n)

end

end A143037.P14742598029015736682

namespace A143037

/-- `∑{#}[row(n), #+2]-(∑[abs(T(n-1,k))]-T(n-1,k-1))` -/
def P14742598029015736682.Spec : Prop :=
  ∀ n, P14742598029015736682.a n = A143037 (n + 1)

end A143037

/-! ## A143037.P9864113574091674363

`A127739(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A143037.P9864113574091674363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127739 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A143037.P9864113574091674363

namespace A143037

/-- `A127739(n+1)+T(n-1,k-1)` -/
def P9864113574091674363.Spec : Prop :=
  ∀ n, P9864113574091674363.a n = A143037 (n + 1)

end A143037

/-! ## A143037.P245684199888480199

`∑[A004736(n+1)]-C(A004736(n+1), 3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143037

/-- `∑[A004736(n+1)]-C(A004736(n+1), 3)` -/
def P245684199888480199.Spec : Prop :=
  ∀ n, P245684199888480199.a n = A143037 (n + 1)

theorem P245684199888480199.correct : P245684199888480199.Spec := by
  intro n
  simp only [A143037, Nat.add_sub_cancel]

end A143037

/-! ## A143037.P1503698243999569545

`A107985(n)+A000292(A002262(n))`
-/

namespace A143037.P1503698243999569545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n + A000292 (A002262 n).toNat

end

end A143037.P1503698243999569545

namespace A143037

/-- `A107985(n)+A000292(A002262(n))` -/
def P1503698243999569545.Spec : Prop :=
  ∀ n, P1503698243999569545.a n = A143037 (n + 1)

end A143037

/-! ## A143037.P16688647098076887590

`A000292(A002024(n+1))-A000292(A025581(n))`
-/

namespace A143037.P16688647098076887590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002024 (n + 1)).toNat - A000292 (A025581 n).toNat

end

end A143037.P16688647098076887590

namespace A143037

/-- `A000292(A002024(n+1))-A000292(A025581(n))` -/
def P16688647098076887590.Spec : Prop :=
  ∀ n, P16688647098076887590.a n = A143037 (n + 1)

end A143037

/-! ## A143037.P11384183406480997351

`A177877(n)+A062707(A014132(n+1))`
-/

namespace A143037.P11384183406480997351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 n + A062707 (A014132 (n + 1)).toNat

end

end A143037.P11384183406480997351

namespace A143037

/-- `A177877(n)+A062707(A014132(n+1))` -/
def P11384183406480997351.Spec : Prop :=
  ∀ n, P11384183406480997351.a n = A143037 (n + 1)

end A143037

/-! ## A143037.P5889332787014815649

`A185915(A245300(n)+1)`
-/

namespace A143037.P5889332787014815649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185915 (A245300 n + 1).toNat

end

end A143037.P5889332787014815649

namespace A143037

/-- `A185915(A245300(n)+1)` -/
def P5889332787014815649.Spec : Prop :=
  ∀ n, P5889332787014815649.a n = A143037 (n + 1)

end A143037

/-!
# A143038: Triangle read by rows, A000012 * A134309 * A000012, where A134309 = an infinite lower triangular matrix with (1, 1, 2, 4, 8, 16, ...) in the main diagonal and the rest zeros.

The programs for A143038, the canonical program `A143038.P2553649687180786865` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143038 has offset 0).

The definition of A143038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143038.P6752245646459731432

`T(row(n)-1, row(n)-1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A143038.P6752245646459731432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triRow n : ℤ) - 1) + SequenceMachineLib.triUpLeft a n

end

end A143038.P6752245646459731432

namespace A143038

/-- `T(row(n)-1, row(n)-1)+T(n-1,k-1)` -/
def P6752245646459731432.Spec : Prop :=
  ∀ n, (P6752245646459731432.a n : ℤ) = A143038 n

end A143038

/-! ## A143038.P2553649687180786865

`or(floor((a(n-1)-1)/2), a(n-2))+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143038

/-- `or(floor((a(n-1)-1)/2), a(n-2))+1` -/
def P2553649687180786865.Spec : Prop :=
  ∀ n, P2553649687180786865.a n = A143038 n

theorem P2553649687180786865.correct : P2553649687180786865.Spec := by
  intro n
  simp only [A143038]

end A143038

/-! ## A143038.P6299655195613554633

`a(n-2)-or(floor(a(n-1)/2-a(n-1)), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A143038.P6299655195613554633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - Int.lor ⌊(a (n - 1) : ℚ) / 2 - (a (n - 1) : ℚ)⌋ (a (n - 2))

end

end A143038.P6299655195613554633

namespace A143038

/-- `a(n-2)-or(floor(a(n-1)/2-a(n-1)), a(n-2))` -/
def P6299655195613554633.Spec : Prop :=
  ∀ n, P6299655195613554633.a n = A143038 n

end A143038

/-! ## A143038.P4130348728531832484

`∑[ceil(A166065(n)/2)]`
-/

namespace A143038.P4130348728531832484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166065 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143038.P4130348728531832484

namespace A143038

/-- `∑[ceil(A166065(n)/2)]` -/
def P4130348728531832484.Spec : Prop :=
  ∀ n, P4130348728531832484.a n = A143038 n

end A143038

/-! ## A143038.P12995279944407941549

`floor(A089633(n)/2)+1`
-/

namespace A143038.P12995279944407941549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089633 n : ℚ) / 2⌋ + 1

end

end A143038.P12995279944407941549

namespace A143038

/-- `floor(A089633(n)/2)+1` -/
def P12995279944407941549.Spec : Prop :=
  ∀ n, P12995279944407941549.a n = A143038 n

end A143038

/-! ## A143038.P2578177845994741944

`ceil(A043569(n+1)/4)`
-/

namespace A143038.P2578177845994741944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043569 (n + 1) : ℚ) / 4⌉

end

end A143038.P2578177845994741944

namespace A143038

/-- `ceil(A043569(n+1)/4)` -/
def P2578177845994741944.Spec : Prop :=
  ∀ n, P2578177845994741944.a n = A143038 n

end A143038

/-! ## A143038.P18111268117538802010

`ceil(A081118(n+1)/4)`
-/

namespace A143038.P18111268117538802010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081118 (n + 1) : ℚ) / 4⌉

end

end A143038.P18111268117538802010

namespace A143038

/-- `ceil(A081118(n+1)/4)` -/
def P18111268117538802010.Spec : Prop :=
  ∀ n, P18111268117538802010.a n = A143038 n

end A143038

/-! ## A143038.P1947744110718254111

`round(A224195(n+1)/4)`
-/

namespace A143038.P1947744110718254111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A224195 (n + 1) : ℚ) / 4)

end

end A143038.P1947744110718254111

namespace A143038

/-- `round(A224195(n+1)/4)` -/
def P1947744110718254111.Spec : Prop :=
  ∀ n, P1947744110718254111.a n = A143038 n

end A143038

/-! ## A143038.P11022485042811441460

`round(A224380(n+1)/16)`
-/

namespace A143038.P11022485042811441460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A224380 (n + 1) : ℚ) / 16)

end

end A143038.P11022485042811441460

namespace A143038

/-- `round(A224380(n+1)/16)` -/
def P11022485042811441460.Spec : Prop :=
  ∀ n, P11022485042811441460.a n = A143038 n

end A143038

/-! ## A143038.P7885686553135576945

`ceil(∑[A057728(n+1)/2])`
-/

namespace A143038.P7885686553135576945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057728 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A143038.P7885686553135576945

namespace A143038

/-- `ceil(∑[A057728(n+1)/2])` -/
def P7885686553135576945.Spec : Prop :=
  ∀ n, P7885686553135576945.a n = A143038 n

end A143038

/-! ## A143038.P11641387484099095386

`floor(A030130(n+1)/4)+1`
-/

namespace A143038.P11641387484099095386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030130 (n + 1) : ℚ) / 4⌋ + 1

end

end A143038.P11641387484099095386

namespace A143038

/-- `floor(A030130(n+1)/4)+1` -/
def P11641387484099095386.Spec : Prop :=
  ∀ n, P11641387484099095386.a n = A143038 n

end A143038

/-! ## A143038.P9005608789251723177

`A023758(n+3-∑[char[∑[n]]])`
-/

namespace A143038.P9005608789251723177
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143038.P9005608789251723177

namespace A143038

/-- `A023758(n+3-∑[char[∑[n]]])` -/
def P9005608789251723177.Spec : Prop :=
  ∀ n, P9005608789251723177.a n = A143038 n

end A143038

/-! ## A143038.P2124127613553313123

`A089633(n-∑[char[∑[n+1]]])+1`
-/

namespace A143038.P2124127613553313123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A143038.P2124127613553313123

namespace A143038

/-- `A089633(n-∑[char[∑[n+1]]])+1` -/
def P2124127613553313123.Spec : Prop :=
  ∀ n, P2124127613553313123.a n = A143038 n

end A143038

/-! ## A143038.P9871262222792512284

`A264802(n+1)-A130452(n+1)`
-/

namespace A143038.P9871262222792512284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A130452 (n + 1)

end

end A143038.P9871262222792512284

namespace A143038

/-- `A264802(n+1)-A130452(n+1)` -/
def P9871262222792512284.Spec : Prop :=
  ∀ n, P9871262222792512284.a n = A143038 n

end A143038

/-! ## A143038.P12247800889835459130

`(∑[A057728(n+1)+Δ[A035214(n)]]+1)/2`
-/

namespace A143038.P12247800889835459130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A143038.P12247800889835459130

namespace A143038

/-- `(∑[A057728(n+1)+Δ[A035214(n)]]+1)/2` -/
def P12247800889835459130.Spec : Prop :=
  ∀ n, P12247800889835459130.a n = (A143038 n : ℚ)

end A143038

/-! ## A143038.P11378379307603791979

`A271709(n+1)+A173787(n)-A271709(n)`
-/

namespace A143038.P11378379307603791979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 (n + 1) + (A173787 n - A271709 n)

end

end A143038.P11378379307603791979

namespace A143038

/-- `A271709(n+1)+A173787(n)-A271709(n)` -/
def P11378379307603791979.Spec : Prop :=
  ∀ n, P11378379307603791979.a n = A143038 n

end A143038

/-! ## A143038.P16486844075552849721

`ceil(A023758(n+2)/2)`
-/

namespace A143038.P16486844075552849721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023758 (n + 2) : ℚ) / 2⌉

end

end A143038.P16486844075552849721

namespace A143038

/-- `ceil(A023758(n+2)/2)` -/
def P16486844075552849721.Spec : Prop :=
  ∀ n, P16486844075552849721.a n = A143038 n

end A143038

/-! ## A143038.P12987351629737871549

`A131816(n+1)+A173787(n)-A131816(n)`
-/

namespace A143038.P12987351629737871549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 (n + 1) + (A173787 n - A131816 n)

end

end A143038.P12987351629737871549

namespace A143038

/-- `A131816(n+1)+A173787(n)-A131816(n)` -/
def P12987351629737871549.Spec : Prop :=
  ∀ n, P12987351629737871549.a n = A143038 n

end A143038

/-! ## A143038.P3657781619181425096

`A059893(A134310(n+1))`
-/

namespace A143038.P3657781619181425096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A134310 (n + 1)).toNat

end

end A143038.P3657781619181425096

namespace A143038

/-- `A059893(A134310(n+1))` -/
def P3657781619181425096.Spec : Prop :=
  ∀ n, P3657781619181425096.a n = A143038 n

end A143038

/-! ## A143038.P3262268559480594449

`A163380(a(n-1)+1-char[∑[n+1]])` with `a(0)=1`
-/

namespace A143038.P3262268559480594449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163380 (a (n - 1) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A143038.P3262268559480594449

namespace A143038

/-- `A163380(a(n-1)+1-char[∑[n+1]])` -/
def P3262268559480594449.Spec : Prop :=
  ∀ n, P3262268559480594449.a n = A143038 n

end A143038

/-!
# A143051: Smallest number not occurring earlier and smaller than the largest square so far, the next square if no such number exists.

The programs for A143051, the canonical program `A143051.P11266558245887559525` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143051 has offset 0).

The definition of A143051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143051.P11266558245887559525

`Δ[A068527(abs(1-n))]+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143051

/-- `Δ[A068527(abs(1-n))]+n` -/
def P11266558245887559525.Spec : Prop :=
  ∀ n, P11266558245887559525.a n = A143051 n

theorem P11266558245887559525.correct : P11266558245887559525.Spec := by
  intro n
  simp only [A143051]

end A143051

/-! ## A143051.P11919267627085007919

`A048761(n)-A068527(abs(1-n))`
-/

namespace A143051.P11919267627085007919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 n - A068527 |1 - (n : ℤ)|.toNat

end

end A143051.P11919267627085007919

namespace A143051

/-- `A048761(n)-A068527(abs(1-n))` -/
def P11919267627085007919.Spec : Prop :=
  ∀ n, P11919267627085007919.a n = A143051 n

end A143051

/-! ## A143051.P11751364033611926839

`Δ[A068527(abs(1-n))-A080956(n)]`
-/

namespace A143051.P11751364033611926839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 |1 - (n : ℤ)|.toNat - A080956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143051.P11751364033611926839

namespace A143051

/-- `Δ[A068527(abs(1-n))-A080956(n)]` -/
def P11751364033611926839.Spec : Prop :=
  ∀ n, P11751364033611926839.a n = A143051 n

theorem P11751364033611926839.correct : P11751364033611926839.Spec := by
  intro n
  simp only [A143051, Nat.add_sub_cancel, A143051.P11751364033611926839.f1, A143051.P11751364033611926839.a, A143051.P11266558245887559525.f1, A143051.P11266558245887559525.a, A068527, A068527.P16594543609173014161.a, A080956, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143051

/-! ## A143051.P10732913325449228867

`A259361(A002522(n))+A245552(A028392(n))`
-/

namespace A143051.P10732913325449228867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A002522 n).toNat + A245552 (A028392 n).toNat

end

end A143051.P10732913325449228867

namespace A143051

/-- `A259361(A002522(n))+A245552(A028392(n))` -/
def P10732913325449228867.Spec : Prop :=
  ∀ n, P10732913325449228867.a n = A143051 n

end A143051

/-! ## A143051.P17309108556993369316

`A083479(A048761(n))+A053186(A143053(n))`
-/

namespace A143051.P17309108556993369316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A048761 n).toNat + A053186 (A143053 n).toNat

end

end A143051.P17309108556993369316

namespace A143051

/-- `A083479(A048761(n))+A053186(A143053(n))` -/
def P17309108556993369316.Spec : Prop :=
  ∀ n, P17309108556993369316.a n = A143051 n

end A143051

/-! ## A143051.P5014686754712927559

`A143053(A143052(n))`
-/

namespace A143051.P5014686754712927559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143053 (A143052 n).toNat

end

end A143051.P5014686754712927559

namespace A143051

/-- `A143053(A143052(n))` -/
def P5014686754712927559.Spec : Prop :=
  ∀ n, P5014686754712927559.a n = A143051 n

end A143051

/-!
# A143052: Inverse permutation to A143051.

The programs for A143052, there is no canonical definition to state claims against.
-/

/-! ## A143052.P12189679247994341184

`Δ[A053186(abs(1-n))]+n`
-/

namespace A143052.P12189679247994341184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143052.P12189679247994341184

/-! ## A143052.P3502228045479130905

`Δ[A071797(floor(acot(n)+n))]+n`
-/

namespace A143052.P3502228045479130905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143052.P3502228045479130905

/-! ## A143052.P6395195191670469929

`Δ[A071797(round(acot(n)+n))]+n`
-/

namespace A143052.P6395195191670469929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143052.P6395195191670469929

/-! ## A143052.P2721147457368216623

`Δ[A071797(n^floor(atan(n)))]+n`
-/

namespace A143052.P2721147457368216623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143052.P2721147457368216623

/-! ## A143052.P13481009338583196368

`Δ[A071797(abs(1-n)+1)]+n`
-/

namespace A143052.P13481009338583196368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143052.P13481009338583196368

/-! ## A143052.P12101339723612227486

`A143051(A143054(n))`
-/

namespace A143052.P12101339723612227486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A143054 n).toNat

end

end A143052.P12101339723612227486

/-! ## A143052.P282544260597496961

`abs(Δ[A071797(A028310(n))]+n)`
-/

namespace A143052.P282544260597496961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A143052.P282544260597496961

/-! ## A143052.P1534755480129327579

`1-Δ[A083479(A048761(n))]+n`
-/

namespace A143052.P1534755480129327579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A048761 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A143052.P1534755480129327579

/-! ## A143052.P10767855205911207695

`(A185669(n)-A056926(4*n))%(2*n+1)`
-/

namespace A143052.P10767855205911207695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185669 n - A056926 (4 * n)) (2 * n + 1 : ℤ)

end

end A143052.P10767855205911207695

/-! ## A143052.P1799475581285547685

`A083479(A048761(n))+A053186(n)`
-/

namespace A143052.P1799475581285547685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A048761 n).toNat + A053186 n

end

end A143052.P1799475581285547685

/-!
# A143053: a(n) = A143051(A143051(n)).

The programs for A143053, the canonical program `A143053.P16641876007468896160` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143053 has offset 0).

The definition of A143053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143053.P16641876007468896160

`A143051(A143051(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143053

/-- `A143051(A143051(n))` -/
def P16641876007468896160.Spec : Prop :=
  ∀ n, P16641876007468896160.a n = A143053 n

theorem P16641876007468896160.correct : P16641876007468896160.Spec := by
  intro n
  simp only [A143053]

end A143053

/-!
# A143054: A143052(A143052(n)).

The programs for A143054, there is no canonical definition to state claims against.
-/

/-! ## A143054.P11535022044721166913

`A143052(A143052(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143054.P11535022044721166913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143052 (A143052 n).toNat

end

end A143054.P11535022044721166913

/-! ## A143054.P3159919061640104604

`A094761((A185669(n)-A056926(4*n))%(2*n+1))-A053186(n)`
-/

namespace A143054.P3159919061640104604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094761 (Int.tmod (A185669 n - A056926 (4 * n)) (2 * n + 1 : ℤ)).toNat - A053186 n

end

end A143054.P3159919061640104604

/-!
# A143055: The real part of complex sequence: a(n) = a(n-1) + (1+i)*a(n-2).

The programs for A143055, the canonical program `A143055.P17435612322469794173` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143055 has offset 1).

The definition of A143055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143055.P5563156422919120944

`ogf((x-x^2-x^3)/(1-2x-x^2+2x^3+2x^4))`
-/

namespace A143055.P5563156422919120944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, -2, -1, 2, 2] n

end

end A143055.P5563156422919120944

namespace A143055

/-- `ogf((x-x^2-x^3)/(1-2x-x^2+2x^3+2x^4))` -/
def P5563156422919120944.Spec : Prop :=
  ∀ n, P5563156422919120944.a n = A143055 (n + 1)

end A143055

/-! ## A143055.P17435612322469794173

`2*a(n-1)+a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143055

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P17435612322469794173.Spec : Prop :=
  ∀ n, P17435612322469794173.a n = A143055 (n + 1)

theorem P17435612322469794173.correct : P17435612322469794173.Spec := by
  intro n
  simp only [A143055, Nat.add_sub_cancel]

end A143055

/-!
# A143056: a(n) = Re(b(n)) where b(n)=(1+i)*b(n-1)+b(n-2), with b(1)=0, b(2)=1.

The programs for A143056, the canonical program `A143056.P18209776613735790959` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143056 has offset 1).

The definition of A143056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143056.P3186110922093830067

`ogf((x-x^2-x^3)/(1-2x+2x^3+x^4))`
-/

namespace A143056.P3186110922093830067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, -2, 0, 2, 1] n

end

end A143056.P3186110922093830067

namespace A143056

/-- `ogf((x-x^2-x^3)/(1-2x+2x^3+x^4))` -/
def P3186110922093830067.Spec : Prop :=
  ∀ n, P3186110922093830067.a n = A143056 (n + 1)

end A143056

/-! ## A143056.P18209776613735790959

`2*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143056

/-- `2*a(n-1)-2*a(n-3)-a(n-4)` -/
def P18209776613735790959.Spec : Prop :=
  ∀ n, P18209776613735790959.a n = A143056 (n + 1)

theorem P18209776613735790959.correct : P18209776613735790959.Spec := by
  intro n
  simp only [A143056, Nat.add_sub_cancel]

end A143056

/-! ## A143056.P15357111061932772225

`2*(a(n-1)-a(n-3))-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A143056.P15357111061932772225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 * (a (n - 1) - a (n - 3)) - a (n - 4)

end

end A143056.P15357111061932772225

namespace A143056

/-- `2*(a(n-1)-a(n-3))-a(n-4)` -/
def P15357111061932772225.Spec : Prop :=
  ∀ n, P15357111061932772225.a n = A143056 (n + 1)

theorem P15357111061932772225.correct : P15357111061932772225.Spec := by
  intro n
  simp only [A143056, Nat.add_sub_cancel, A143056.P15357111061932772225.a, A143056.P18209776613735790959.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143056

/-! ## A143056.P5287417309207897592

`Δ[A272665(n+1)]-A272665(A028310(n))`
-/

namespace A143056.P5287417309207897592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272665 (A028310 n).toNat

end

end A143056.P5287417309207897592

namespace A143056

/-- `Δ[A272665(n+1)]-A272665(A028310(n))` -/
def P5287417309207897592.Spec : Prop :=
  ∀ n, P5287417309207897592.a n = A143056 (n + 1)

end A143056

/-! ## A143056.P1426847524946862539

`A272665(n+1)+Δ[Δ[A272665(n+2)]]`
-/

namespace A143056.P1426847524946862539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272665 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272665 (n + 1) + (f1 (n + 1) - f1 n)

end

end A143056.P1426847524946862539

namespace A143056

/-- `A272665(n+1)+Δ[Δ[A272665(n+2)]]` -/
def P1426847524946862539.Spec : Prop :=
  ∀ n, P1426847524946862539.a n = A143056 (n + 1)

end A143056

/-!
# A143058: a(n) = (n^3 + 18*n^2 + 17*n + 6)/6.

The programs for A143058, the canonical program `A143058.P8632874899625830400` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143058 has offset 0).

The definition of A143058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143058.P8632874899625830400

`ogf((1+3x-2x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143058

/-- `ogf((1+3x-2x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P8632874899625830400.Spec : Prop :=
  ∀ n, P8632874899625830400.a n = A143058 n

theorem P8632874899625830400.correct : P8632874899625830400.Spec := by
  intro n
  simp only [A143058]

end A143058

/-! ## A143058.P11057379865175382754

`n*(n+1)*(n+17)/6+1`
-/

namespace A143058.P11057379865175382754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 17) : ℚ) / 6 + 1

end

end A143058.P11057379865175382754

namespace A143058

/-- `n*(n+1)*(n+17)/6+1` -/
def P11057379865175382754.Spec : Prop :=
  ∀ n, P11057379865175382754.a n = (A143058 n : ℚ)

end A143058

/-! ## A143058.P104028888969140328

`(n^3+18*n²+17*n+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143058.P104028888969140328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 18 * n ^ 2 + 17 * n + 6 : ℚ) / 6

end

end A143058.P104028888969140328

namespace A143058

/-- `(n^3+18*n²+17*n+6)/6` -/
def P104028888969140328.Spec : Prop :=
  ∀ n, P104028888969140328.a n = (A143058 n : ℚ)

end A143058

/-! ## A143058.P13780776795549950618

`Δ[n^3]+C(n+1, 3)`
-/

namespace A143058.P13780776795549950618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (n + 1) 3 : ℤ)

end

end A143058.P13780776795549950618

namespace A143058

/-- `Δ[n^3]+C(n+1, 3)` -/
def P13780776795549950618.Spec : Prop :=
  ∀ n, P13780776795549950618.a n = A143058 n

end A143058

/-! ## A143058.P11164104151806774670

`∑[round(1/acot(∑[n]))+5*n]`
-/

namespace A143058.P11164104151806774670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)) + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143058.P11164104151806774670

namespace A143058

/-- `∑[round(1/acot(∑[n]))+5*n]` -/
def P11164104151806774670.Spec : Prop :=
  ∀ n, P11164104151806774670.a n = A143058 n

end A143058

/-! ## A143058.P3033862538979442799

`∑[record[a(n-1)-(7-n)]]` with `a(0)=1, a(1)=0`
-/

namespace A143058.P3033862538979442799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - (7 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143058.P3033862538979442799

namespace A143058

/-- `∑[record[a(n-1)-(7-n)]]` -/
def P3033862538979442799.Spec : Prop :=
  ∀ n, P3033862538979442799.a n = A143058 n

end A143058

/-! ## A143058.P1478845612070165341

`∑[∑[n+3-C(2, n+1)]+2*n]`
-/

namespace A143058.P1478845612070165341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.choose 2 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143058.P1478845612070165341

namespace A143058

/-- `∑[∑[n+3-C(2, n+1)]+2*n]` -/
def P1478845612070165341.Spec : Prop :=
  ∀ n, P1478845612070165341.a n = A143058 n

end A143058

/-! ## A143058.P2348364365855795128

`∑[A008706(n)+∑[n]]`
-/

namespace A143058.P2348364365855795128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143058.P2348364365855795128

namespace A143058

/-- `∑[A008706(n)+∑[n]]` -/
def P2348364365855795128.Spec : Prop :=
  ∀ n, P2348364365855795128.a n = A143058 n

end A143058

/-! ## A143058.P17516640203593365169

`∑[∑[A074764(n+1)]+n]`
-/

namespace A143058.P17516640203593365169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143058.P17516640203593365169

namespace A143058

/-- `∑[∑[A074764(n+1)]+n]` -/
def P17516640203593365169.Spec : Prop :=
  ∀ n, P17516640203593365169.a n = A143058 n

end A143058

/-! ## A143058.P16365896552298559946

`∑[A134227(n+1)+2*n]`
-/

namespace A143058.P16365896552298559946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134227 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143058.P16365896552298559946

namespace A143058

/-- `∑[A134227(n+1)+2*n]` -/
def P16365896552298559946.Spec : Prop :=
  ∀ n, P16365896552298559946.a n = A143058 n

end A143058

/-!
# A143059: a(n) = (n^4 + 46*n^3 - 169*n^2 + 146*n + 24)/24.

The programs for A143059, the canonical program `A143059.P18305518706827547223` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143059 has offset 0).

The definition of A143059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143059.P18305518706827547223

`1+10*n+25*C(n, 2)+15*C(n, 3)+C(n, 4)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143059

/-- `1+10*n+25*C(n, 2)+15*C(n, 3)+C(n, 4)` -/
def P18305518706827547223.Spec : Prop :=
  ∀ n, (P18305518706827547223.a n : ℤ) = A143059 n

theorem P18305518706827547223.correct : P18305518706827547223.Spec := by
  intro n
  simp only [A143059]

end A143059

/-! ## A143059.P13274686900401018737

`A030440(n)+∑[A264443(n)]`
-/

namespace A143059.P13274686900401018737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030440 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143059.P13274686900401018737

namespace A143059

/-- `A030440(n)+∑[A264443(n)]` -/
def P13274686900401018737.Spec : Prop :=
  ∀ n, P13274686900401018737.a n = A143059 n

end A143059

/-! ## A143059.P3278741264281345970

`A145126(n)+A163815(n)-n`
-/

namespace A143059.P3278741264281345970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + (A163815 n - (n : ℤ))

end

end A143059.P3278741264281345970

namespace A143059

/-- `A145126(n)+A163815(n)-n` -/
def P3278741264281345970.Spec : Prop :=
  ∀ n, P3278741264281345970.a n = A143059 n

theorem P3278741264281345970.correct : P3278741264281345970.Spec := by
  intro n
  simp only [A143059, Nat.add_sub_cancel, A143059.P3278741264281345970.a, A143059.P18305518706827547223.a, A145126, A145126.P13807080772124324529.a, A163815, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143059

/-! ## A143059.P18334562704798519295

`A008779(n)+∑[A187297(n+1)]`
-/

namespace A143059.P18334562704798519295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143059.P18334562704798519295

namespace A143059

/-- `A008779(n)+∑[A187297(n+1)]` -/
def P18334562704798519295.Spec : Prop :=
  ∀ n, P18334562704798519295.a n = A143059 n

end A143059

/-! ## A143059.P13547734673896593660

`A006564(n+1)+A000332(n)-n`
-/

namespace A143059.P13547734673896593660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (n + 1) + (A000332 n - (n : ℤ))

end

end A143059.P13547734673896593660

namespace A143059

/-- `A006564(n+1)+A000332(n)-n` -/
def P13547734673896593660.Spec : Prop :=
  ∀ n, P13547734673896593660.a n = A143059 n

end A143059

/-! ## A143059.P6172276828632402905

`A008779(n)+∑[A028552(A004273(n))]`
-/

namespace A143059.P6172276828632402905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143059.P6172276828632402905

namespace A143059

/-- `A008779(n)+∑[A028552(A004273(n))]` -/
def P6172276828632402905.Spec : Prop :=
  ∀ n, P6172276828632402905.a n = A143059 n

end A143059

/-! ## A143059.P3050959842724524219

`A000124(A055999(n))-A034827(n)`
-/

namespace A143059.P3050959842724524219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A055999 n).toNat - A034827 n

end

end A143059.P3050959842724524219

namespace A143059

/-- `A000124(A055999(n))-A034827(n)` -/
def P3050959842724524219.Spec : Prop :=
  ∀ n, P3050959842724524219.a n = A143059 n

end A143059

/-!
# A143060: a(n) = (n^5 + 145*n^4 + 905*n^3 + 155*n^2 + 594*n + 120)/120.

The programs for A143060, the canonical program `A143060.P1630745169513415070` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143060 has offset 0).

The definition of A143060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143060.P1630745169513415070

`ogf((1+10x+15x^2-25x^3-9x^4+9x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143060

/-- `ogf((1+10x+15x^2-25x^3-9x^4+9x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P1630745169513415070.Spec : Prop :=
  ∀ n, P1630745169513415070.a n = A143060 n

theorem P1630745169513415070.correct : P1630745169513415070.Spec := by
  intro n
  simp only [A143060]

end A143060

/-! ## A143060.P11102992570885481782

`n*(n*(n*(n*(n+145)+905)+155)+594)/120+1`
-/

namespace A143060.P11102992570885481782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n * (n * (n * (n + 145) + 905) + 155) + 594) : ℚ) / 120 + 1

end

end A143060.P11102992570885481782

namespace A143060

/-- `n*(n*(n*(n*(n+145)+905)+155)+594)/120+1` -/
def P11102992570885481782.Spec : Prop :=
  ∀ n, P11102992570885481782.a n = (A143060 n : ℚ)

end A143060

/-! ## A143060.P6092103595353595680

`(n^5+145*n^4+905*n^3+155*n²+594*n+120)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143060.P6092103595353595680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 + 145 * n ^ 4 + 905 * n ^ 3 + 155 * n ^ 2 + 594 * n + 120 : ℚ) / 120

end

end A143060.P6092103595353595680

namespace A143060

/-- `(n^5+145*n^4+905*n^3+155*n²+594*n+120)/120` -/
def P6092103595353595680.Spec : Prop :=
  ∀ n, P6092103595353595680.a n = (A143060 n : ℚ)

end A143060

/-!
# A143061: Triangle read by rows, A000012 * A127647 * A000012.

The programs for A143061, the canonical program `A143061.P1419351624953876157` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143061 has offset 1).

The definition of A143061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143061.P1419351624953876157

`T(row(n)-1, 1)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143061

/-- `T(row(n)-1, 1)+T(n-1,k-1)` -/
def P1419351624953876157.Spec : Prop :=
  ∀ n, (P1419351624953876157.a n : ℤ) = A143061 (n + 1)

theorem P1419351624953876157.correct : P1419351624953876157.Spec := by
  intro n
  simp only [A143061, Nat.add_sub_cancel]

end A143061

/-! ## A143061.P3683800631072779900

`round(A094585(1+n)/ϕ)`
-/

namespace A143061.P3683800631072779900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094585 (1 + n) : ℝ) / Real.goldenRatio)

end

end A143061.P3683800631072779900

namespace A143061

/-- `round(A094585(1+n)/ϕ)` -/
def P3683800631072779900.Spec : Prop :=
  ∀ n, P3683800631072779900.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P7449281500040228042

`A131410(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A143061.P7449281500040228042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131410 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A143061.P7449281500040228042

namespace A143061

/-- `A131410(n+1)+T(n-1,k-1)` -/
def P7449281500040228042.Spec : Prop :=
  ∀ n, P7449281500040228042.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P4044700432068961194

`A171729(n+1+round(sqrt(2*(n+1))))`
-/

namespace A143061.P4044700432068961194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 ((n + 1 : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A143061.P4044700432068961194

namespace A143061

/-- `A171729(n+1+round(sqrt(2*(n+1))))` -/
def P4044700432068961194.Spec : Prop :=
  ∀ n, P4044700432068961194.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P5861762911609543316

`A204922((row(n)+1)²-n)`
-/

namespace A143061.P5861762911609543316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 ((SequenceMachineLib.triRow n + 1) ^ 2 - n)

end

end A143061.P5861762911609543316

namespace A143061

/-- `A204922((row(n)+1)²-n)` -/
def P5861762911609543316.Spec : Prop :=
  ∀ n, P5861762911609543316.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P3947528101485753553

`A204922(row(n)*(row(n)+3)/2-col(n)+1)`
-/

namespace A143061.P3947528101485753553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ) + 1)).toNat

end

end A143061.P3947528101485753553

namespace A143061

/-- `A204922(row(n)*(row(n)+3)/2-col(n)+1)` -/
def P3947528101485753553.Spec : Prop :=
  ∀ n, P3947528101485753553.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P16259411812045925013

`A204922(A038722(n+1))`
-/

namespace A143061.P16259411812045925013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A038722 (n + 1)).toNat

end

end A143061.P16259411812045925013

namespace A143061

/-- `A204922(A038722(n+1))` -/
def P16259411812045925013.Spec : Prop :=
  ∀ n, P16259411812045925013.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P3519068633291646534

`A204922(A061579(n)+1)`
-/

namespace A143061.P3519068633291646534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A061579 n + 1).toNat

end

end A143061.P3519068633291646534

namespace A143061

/-- `A204922(A061579(n)+1)` -/
def P3519068633291646534.Spec : Prop :=
  ∀ n, P3519068633291646534.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P16433745316777300136

`A204922(A114327(n)+1+n)`
-/

namespace A143061.P16433745316777300136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A114327 n + 1 + (n : ℤ)).toNat

end

end A143061.P16433745316777300136

namespace A143061

/-- `A204922(A114327(n)+1+n)` -/
def P16433745316777300136.Spec : Prop :=
  ∀ n, P16433745316777300136.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P9424767503078909103

`A204922(A093995(n+1)-n)`
-/

namespace A143061.P9424767503078909103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A143061.P9424767503078909103

namespace A143061

/-- `A204922(A093995(n+1)-n)` -/
def P9424767503078909103.Spec : Prop :=
  ∀ n, P9424767503078909103.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P5567032687520788883

`A204922(A002024(n+1)²-n)`
-/

namespace A143061.P5567032687520788883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A143061.P5567032687520788883

namespace A143061

/-- `A204922(A002024(n+1)²-n)` -/
def P5567032687520788883.Spec : Prop :=
  ∀ n, P5567032687520788883.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P16261686748628759393

`A193922(A038722(n+1)+A002024(n+1))`
-/

namespace A143061.P16261686748628759393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A143061.P16261686748628759393

namespace A143061

/-- `A193922(A038722(n+1)+A002024(n+1))` -/
def P16261686748628759393.Spec : Prop :=
  ∀ n, P16261686748628759393.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P13446628238129123977

`A005206(A094585(n+1))`
-/

namespace A143061.P13446628238129123977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A094585 (n + 1)).toNat

end

end A143061.P13446628238129123977

namespace A143061

/-- `A005206(A094585(n+1))` -/
def P13446628238129123977.Spec : Prop :=
  ∀ n, P13446628238129123977.a n = A143061 (n + 1)

end A143061

/-! ## A143061.P12645586978530034618

`A005378(A094585(n+1)+1)-1`
-/

namespace A143061.P12645586978530034618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A094585 (n + 1) + 1).toNat - 1

end

end A143061.P12645586978530034618

namespace A143061

/-- `A005378(A094585(n+1)+1)-1` -/
def P12645586978530034618.Spec : Prop :=
  ∀ n, P12645586978530034618.a n = A143061 (n + 1)

end A143061

/-!
# A143062: Expansion of false theta series variation of Euler's pentagonal number series in powers of x.

The programs for A143062, the canonical program `A143062.P17484546011609023543` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143062 has offset 0).

The definition of A143062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143062.P7055744507436204299

`A080332(n)%2`
-/

namespace A143062.P7055744507436204299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080332 n) 2

end

end A143062.P7055744507436204299

namespace A143062

/-- `A080332(n)%2` -/
def P7055744507436204299.Spec : Prop :=
  ∀ n, P7055744507436204299.a n = A143062 n

end A143062

/-! ## A143062.P14145047361542299236

`Δ[A096765(n)%2]`
-/

namespace A143062.P14145047361542299236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096765 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143062.P14145047361542299236

namespace A143062

/-- `Δ[A096765(n)%2]` -/
def P14145047361542299236.Spec : Prop :=
  ∀ n, P14145047361542299236.a n = A143062 n

end A143062

/-! ## A143062.P11238585416634963132

`A113277(8*n)%2`
-/

namespace A143062.P11238585416634963132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113277 (8 * n)) 2

end

end A143062.P11238585416634963132

namespace A143062

/-- `A113277(8*n)%2` -/
def P11238585416634963132.Spec : Prop :=
  ∀ n, P11238585416634963132.a n = A143062 n

end A143062

/-! ## A143062.P18006026814558426318

`(-1)^n*A199918(n)`
-/

namespace A143062.P18006026814558426318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A199918 n

end

end A143062.P18006026814558426318

namespace A143062

/-- `(-1)^n*A199918(n)` -/
def P18006026814558426318.Spec : Prop :=
  ∀ n, P18006026814558426318.a n = A143062 n

end A143062

/-! ## A143062.P8174976206024316942

`-A203568(abs(1-n)+1)`
-/

namespace A143062.P8174976206024316942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A203568 (|1 - (n : ℤ)| + 1).toNat

end

end A143062.P8174976206024316942

namespace A143062

/-- `-A203568(abs(1-n)+1)` -/
def P8174976206024316942.Spec : Prop :=
  ∀ n, P8174976206024316942.a n = A143062 n

end A143062

/-! ## A143062.P17484546011609023543

`Δ[A084176(3*(n+1))%2]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143062

/-- `Δ[A084176(3*(n+1))%2]` -/
def P17484546011609023543.Spec : Prop :=
  ∀ n, P17484546011609023543.a n = A143062 n

theorem P17484546011609023543.correct : P17484546011609023543.Spec := by
  intro n
  simp only [A143062]

end A143062

/-! ## A143062.P17925247586253639160

`A134667(abs(A080332(n)))`
-/

namespace A143062.P17925247586253639160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 |A080332 n|.toNat

end

end A143062.P17925247586253639160

namespace A143062

/-- `A134667(abs(A080332(n)))` -/
def P17925247586253639160.Spec : Prop :=
  ∀ n, P17925247586253639160.a n = A143062 n

end A143062

/-! ## A143062.P13639892813153494883

`A000007(n)-A203568(n)`
-/

namespace A143062.P13639892813153494883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A203568 n

end

end A143062.P13639892813153494883

namespace A143062

/-- `A000007(n)-A203568(n)` -/
def P13639892813153494883.Spec : Prop :=
  ∀ n, P13639892813153494883.a n = A143062 n

end A143062

/-! ## A143062.P9648575543519152045

`A010815(n)*A078616(9*n)`
-/

namespace A143062.P9648575543519152045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A078616 (9 * n)

end

end A143062.P9648575543519152045

namespace A143062

/-- `A010815(n)*A078616(9*n)` -/
def P9648575543519152045.Spec : Prop :=
  ∀ n, P9648575543519152045.a n = A143062 n

end A143062

/-! ## A143062.P12396269686164199144

`A028310(n)-(A203568(n)+n)`
-/

namespace A143062.P12396269686164199144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (A203568 n + (n : ℤ))

end

end A143062.P12396269686164199144

namespace A143062

/-- `A028310(n)-(A203568(n)+n)` -/
def P12396269686164199144.Spec : Prop :=
  ∀ n, P12396269686164199144.a n = A143062 n

end A143062

/-! ## A143062.P6916692963886380773

`Δ[(A010815(n)-A078616(n))²]`
-/

namespace A143062.P6916692963886380773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010815 n - A078616 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143062.P6916692963886380773

namespace A143062

/-- `Δ[(A010815(n)-A078616(n))²]` -/
def P6916692963886380773.Spec : Prop :=
  ∀ n, P6916692963886380773.a n = A143062 n

end A143062

/-! ## A143062.P18151956489779620622

`Δ[(A238208(n)-A238215(n))²]`
-/

namespace A143062.P18151956489779620622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238208 n - A238215 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143062.P18151956489779620622

namespace A143062

/-- `Δ[(A238208(n)-A238215(n))²]` -/
def P18151956489779620622.Spec : Prop :=
  ∀ n, P18151956489779620622.a n = A143062 n

end A143062

/-! ## A143062.P5043714237681453126

`A185916(comp[A185868(n+1)]+1)`
-/

namespace A143062.P5043714237681453126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185868 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A143062.P5043714237681453126

namespace A143062

/-- `A185916(comp[A185868(n+1)]+1)` -/
def P5043714237681453126.Spec : Prop :=
  ∀ n, P5043714237681453126.a n = A143062 n

end A143062

/-! ## A143062.P6571749613976143834

`char[A001318(2*n)]-char[A001318(2*n+1)]`
-/

namespace A143062.P6571749613976143834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A143062.P6571749613976143834

namespace A143062

/-- `char[A001318(2*n)]-char[A001318(2*n+1)]` -/
def P6571749613976143834.Spec : Prop :=
  ∀ n, P6571749613976143834.a n = A143062 n

end A143062

/-! ## A143062.P8361015508602394365

`A010815(n)*A057077(A235963(n))`
-/

namespace A143062.P8361015508602394365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A057077 (A235963 n).toNat

end

end A143062.P8361015508602394365

namespace A143062

/-- `A010815(n)*A057077(A235963(n))` -/
def P8361015508602394365.Spec : Prop :=
  ∀ n, P8361015508602394365.a n = A143062 n

end A143062

/-! ## A143062.P6346192134973949831

`(A007706(n)-1)*A057077(A235963(n))`
-/

namespace A143062.P6346192134973949831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007706 n - 1) * A057077 (A235963 n).toNat

end

end A143062.P6346192134973949831

namespace A143062

/-- `(A007706(n)-1)*A057077(A235963(n))` -/
def P6346192134973949831.Spec : Prop :=
  ∀ n, P6346192134973949831.a n = A143062 n

end A143062

/-! ## A143062.P7801219873395389047

`A134756(n)%2/A057077(A235963(n))`
-/

namespace A143062.P7801219873395389047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A134756 n) 2 : ℚ) / (A057077 (A235963 n).toNat : ℚ)

end

end A143062.P7801219873395389047

namespace A143062

/-- `A134756(n)%2/A057077(A235963(n))` -/
def P7801219873395389047.Spec : Prop :=
  ∀ n, P7801219873395389047.a n = (A143062 n : ℚ)

end A143062

/-! ## A143062.P18215703284334064667

`A255849(A255849(n)+n)-A203568(n)`
-/

namespace A143062.P18215703284334064667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (A255849 n + (n : ℤ)).toNat - A203568 n

end

end A143062.P18215703284334064667

namespace A143062

/-- `A255849(A255849(n)+n)-A203568(n)` -/
def P18215703284334064667.Spec : Prop :=
  ∀ n, P18215703284334064667.a n = A143062 n

end A143062

/-! ## A143062.P3370895382973859992

`A203568(A028310(n)-n)-A203568(n)`
-/

namespace A143062.P3370895382973859992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203568 (A028310 n - (n : ℤ)).toNat - A203568 n

end

end A143062.P3370895382973859992

namespace A143062

/-- `A203568(A028310(n)-n)-A203568(n)` -/
def P3370895382973859992.Spec : Prop :=
  ∀ n, P3370895382973859992.a n = A143062 n

end A143062

/-! ## A143062.P13835502525752663254

`A199918(n)/A062157(A199918(n)+n)`
-/

namespace A143062.P13835502525752663254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199918 n : ℚ) / (A062157 (A199918 n + (n : ℤ)).toNat : ℚ)

end

end A143062.P13835502525752663254

namespace A143062

/-- `A199918(n)/A062157(A199918(n)+n)` -/
def P13835502525752663254.Spec : Prop :=
  ∀ n, P13835502525752663254.a n = (A143062 n : ℚ)

end A143062

/-!
# A143063: Expansion of the product of a false theta function and a Ramanujan theta function in powers of x.

The programs for A143063, there is no canonical definition to state claims against.
-/

/-! ## A143063.P10361811823383291991

`A040000(n)*A341675(A115387(n+1))`
-/

namespace A143063.P10361811823383291991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A341675 (A115387 (n + 1)).toNat

end

end A143063.P10361811823383291991

/-! ## A143063.P4267667942963471886

`A035152(A260461(3*n+1)-A003814(n+2))`
-/

namespace A143063.P4267667942963471886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035152 (A260461 (3 * n + 1) - A003814 (n + 2)).toNat

end

end A143063.P4267667942963471886

/-! ## A143063.P1353105154087906677

`A000086(or(A188311(n+1), A272920(n)))`
-/

namespace A143063.P1353105154087906677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (Int.lor (A188311 (n + 1)) (A272920 n)).toNat

end

end A143063.P1353105154087906677

/-! ## A143063.P2146708077879461452

`and(A326140(A199342(n+1)), A358371(n+1))`
-/

namespace A143063.P2146708077879461452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326140 (A199342 (n + 1)).toNat) (A358371 (n + 1))

end

end A143063.P2146708077879461452

/-! ## A143063.P18323188412452686476

`and(A025581(A130479(n)), A057467(3*n+1))`
-/

namespace A143063.P18323188412452686476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 (A130479 n).toNat) (A057467 (3 * n + 1))

end

end A143063.P18323188412452686476

/-!
# A143064: Expansion of a Ramanujan false theta series variation of A089801 in powers of x.

The programs for A143064, the canonical program `A143064.P13024267726719583527` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143064 has offset 0).

The definition of A143064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143064.P13024267726719583527

`-A290739(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143064

/-- `-A290739(n)` -/
def P13024267726719583527.Spec : Prop :=
  ∀ n, P13024267726719583527.a n = A143064 n

theorem P13024267726719583527.correct : P13024267726719583527.Spec := by
  intro n
  simp only [A143064]

end A143064

/-! ## A143064.P12409494903027612677

`A113277(n)/A278814(n)`
-/

namespace A143064.P12409494903027612677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (A278814 n : ℚ)

end

end A143064.P12409494903027612677

namespace A143064

/-- `A113277(n)/A278814(n)` -/
def P12409494903027612677.Spec : Prop :=
  ∀ n, P12409494903027612677.a n = (A143064 n : ℚ)

end A143064

/-! ## A143064.P708070745047768260

`A000007(n+1)-A290739(n)`
-/

namespace A143064.P708070745047768260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A290739 n

end

end A143064.P708070745047768260

namespace A143064

/-- `A000007(n+1)-A290739(n)` -/
def P708070745047768260.Spec : Prop :=
  ∀ n, P708070745047768260.a n = A143064 n

theorem P708070745047768260.correct : P708070745047768260.Spec := by
  intro n
  simp only [A143064, Nat.add_sub_cancel, A143064.P708070745047768260.a, A143064.P13024267726719583527.a, A000007, A000007.P6599383543502402472.a, A290739, A290739.P10153310189044843911.f1, A290739.P10153310189044843911.a, A089802, A089802.P8029284349685483497.a, A089801, A089801.P7513188891248060037.a, A033684, A033684.P12387515410583376305.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143064

/-! ## A143064.P10976408880226687191

`A113277(n)/A216256(n+1)`
-/

namespace A143064.P10976408880226687191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (A216256 (n + 1) : ℚ)

end

end A143064.P10976408880226687191

namespace A143064

/-- `A113277(n)/A216256(n+1)` -/
def P10976408880226687191.Spec : Prop :=
  ∀ n, P10976408880226687191.a n = (A143064 n : ℚ)

end A143064

/-! ## A143064.P468260142778786410

`A113277(n)/A300154(n+1)`
-/

namespace A143064.P468260142778786410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (A300154 (n + 1) : ℚ)

end

end A143064.P468260142778786410

namespace A143064

/-- `A113277(n)/A300154(n+1)` -/
def P468260142778786410.Spec : Prop :=
  ∀ n, P468260142778786410.a n = (A143064 n : ℚ)

end A143064

/-! ## A143064.P16479092674120430941

`A028310(n-A290739(n))-n`
-/

namespace A143064.P16479092674120430941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A290739 n).toNat - (n : ℤ)

end

end A143064.P16479092674120430941

namespace A143064

/-- `A028310(n-A290739(n))-n` -/
def P16479092674120430941.Spec : Prop :=
  ∀ n, P16479092674120430941.a n = A143064 n

end A143064

/-! ## A143064.P16510476373345214246

`n*A000007(n)-A290739(n)`
-/

namespace A143064.P16510476373345214246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A290739 n

end

end A143064.P16510476373345214246

namespace A143064

/-- `n*A000007(n)-A290739(n)` -/
def P16510476373345214246.Spec : Prop :=
  ∀ n, P16510476373345214246.a n = A143064 n

end A143064

/-! ## A143064.P9072875295191331724

`A002264(a(n-1)+1)-A290739(n)` with `a(0)=1`
-/

namespace A143064.P9072875295191331724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002264 (a (n - 1) + 1).toNat - A290739 n

end

end A143064.P9072875295191331724

namespace A143064

/-- `A002264(a(n-1)+1)-A290739(n)` -/
def P9072875295191331724.Spec : Prop :=
  ∀ n, P9072875295191331724.a n = A143064 n

end A143064

/-! ## A143064.P4562438618605428334

`A002264(1-a(n-1))-A290739(n)` with `a(0)=1`
-/

namespace A143064.P4562438618605428334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002264 (1 - a (n - 1)).toNat - A290739 n

end

end A143064.P4562438618605428334

namespace A143064

/-- `A002264(1-a(n-1))-A290739(n)` -/
def P4562438618605428334.Spec : Prop :=
  ∀ n, P4562438618605428334.a n = A143064 n

end A143064

/-! ## A143064.P10087614322958305092

`A290739(A004013(n+1))*A290739(n)`
-/

namespace A143064.P10087614322958305092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (A004013 (n + 1)).toNat * A290739 n

end

end A143064.P10087614322958305092

namespace A143064

/-- `A290739(A004013(n+1))*A290739(n)` -/
def P10087614322958305092.Spec : Prop :=
  ∀ n, P10087614322958305092.a n = A143064 n

end A143064

/-! ## A143064.P15077604094413261156

`A008683(A290751(n+1))*A290739(n)`
-/

namespace A143064.P15077604094413261156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A290751 (n + 1)).toNat * A290739 n

end

end A143064.P15077604094413261156

namespace A143064

/-- `A008683(A290751(n+1))*A290739(n)` -/
def P15077604094413261156.Spec : Prop :=
  ∀ n, P15077604094413261156.a n = A143064 n

end A143064

/-! ## A143064.P4354389363272811353

`A290739(n)/A008683(A290751(n+5))`
-/

namespace A143064.P4354389363272811353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290739 n : ℚ) / (A008683 (A290751 (n + 5)).toNat : ℚ)

end

end A143064.P4354389363272811353

namespace A143064

/-- `A290739(n)/A008683(A290751(n+5))` -/
def P4354389363272811353.Spec : Prop :=
  ∀ n, P4354389363272811353.a n = (A143064 n : ℚ)

end A143064

/-! ## A143064.P10150221757635602533

`1-(A290739(n)+A001222(A277098(n+1)))`
-/

namespace A143064.P10150221757635602533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A290739 n + A001222 (A277098 (n + 1)).toNat)

end

end A143064.P10150221757635602533

namespace A143064

/-- `1-(A290739(n)+A001222(A277098(n+1)))` -/
def P10150221757635602533.Spec : Prop :=
  ∀ n, P10150221757635602533.a n = A143064 n

end A143064

/-! ## A143064.P13366594789585644847

`A290739(A322923(n+1))-A290739(n)`
-/

namespace A143064.P13366594789585644847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (A322923 (n + 1)).toNat - A290739 n

end

end A143064.P13366594789585644847

namespace A143064

/-- `A290739(A322923(n+1))-A290739(n)` -/
def P13366594789585644847.Spec : Prop :=
  ∀ n, P13366594789585644847.a n = A143064 n

end A143064

/-! ## A143064.P4913818539457841599

`A113277(n)/A046693(n)`
-/

namespace A143064.P4913818539457841599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (A046693 n : ℚ)

end

end A143064.P4913818539457841599

namespace A143064

/-- `A113277(n)/A046693(n)` -/
def P4913818539457841599.Spec : Prop :=
  ∀ n, P4913818539457841599.a n = (A143064 n : ℚ)

end A143064

/-! ## A143064.P4236812343739448880

`A185646(∑[n]+n)`
-/

namespace A143064.P4236812343739448880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143064.P4236812343739448880

namespace A143064

/-- `A185646(∑[n]+n)` -/
def P4236812343739448880.Spec : Prop :=
  ∀ n, P4236812343739448880.a n = A143064 n

end A143064

/-!
# A143065: Expansion of quotient of a Ramanujan false theta series by the theta series of triangular numbers in powers of x.

The programs for A143065, there is no canonical definition to state claims against.
-/

/-! ## A143065.P10859765242501264806

`A057077(A035598(n))*A351008(n)`
-/

namespace A143065.P10859765242501264806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A035598 n).toNat * A351008 n

end

end A143065.P10859765242501264806

/-! ## A143065.P11427903728465196887

`A033999(A118120(n))*A351008(n)`
-/

namespace A143065.P11427903728465196887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A118120 n).toNat * A351008 n

end

end A143065.P11427903728465196887

/-! ## A143065.P14829338424698509751

`A062157(A027054(n+3))*A351008(n)`
-/

namespace A143065.P14829338424698509751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A027054 (n + 3)).toNat * A351008 n

end

end A143065.P14829338424698509751

/-!
# A143066: Expansion of phi(x^3) / psi(x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A143066, there is no canonical definition to state claims against.
-/

/-! ## A143066.P8946768001146665693

`A262929(4*n)`
-/

namespace A143066.P8946768001146665693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (4 * n)

end

end A143066.P8946768001146665693

/-! ## A143066.P5312965613341493927

`A262929(A008574(n))+A000007(n)`
-/

namespace A143066.P5312965613341493927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008574 n).toNat + A000007 n

end

end A143066.P5312965613341493927

/-! ## A143066.P9615247248585917773

`A262929(A008574(n))+A005893(n)%2`
-/

namespace A143066.P9615247248585917773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008574 n).toNat + Int.tmod (A005893 n) 2

end

end A143066.P9615247248585917773

/-! ## A143066.P2850011936300699741

`A262929(A008486(n)+n)+A000007(n)`
-/

namespace A143066.P2850011936300699741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008486 n + (n : ℤ)).toNat + A000007 n

end

end A143066.P2850011936300699741

/-! ## A143066.P17070037529308083653

`or(A000007(n), A262929(A008585(n)+n))`
-/

namespace A143066.P17070037529308083653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262929 (A008585 n + (n : ℤ)).toNat)

end

end A143066.P17070037529308083653

/-! ## A143066.P5246642991094243447

`A262929(A008574(n))^A010816(C(2, n+1))`
-/

namespace A143066.P5246642991094243447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262929 (A008574 n).toNat : ℚ) ^ (A010816 (Nat.choose 2 (n + 1)) : ℤ)

end

end A143066.P5246642991094243447

/-! ## A143066.P4070532866005229657

`A262929(A005843(A005843(n)))%A226829(n+1)`
-/

namespace A143066.P4070532866005229657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262929 (A005843 (A005843 n).toNat).toNat) (A226829 (n + 1))

end

end A143066.P4070532866005229657

/-! ## A143066.P7748125149308100661

`A262929(A008486(n)+n)+A045840(A008864(n+1))`
-/

namespace A143066.P7748125149308100661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008486 n + (n : ℤ)).toNat + A045840 (A008864 (n + 1)).toNat

end

end A143066.P7748125149308100661

/-! ## A143066.P14265395990245251612

`A262929(A008574(n))+A000035(A167447(n²+1))`
-/

namespace A143066.P14265395990245251612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262929 (A008574 n).toNat + A000035 (A167447 (n ^ 2 + 1)).toNat

end

end A143066.P14265395990245251612

/-!
# A143067: Expansion of psi(-x^3) / f(-x^4) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A143067, there is no canonical definition to state claims against.
-/

/-! ## A143067.P2260081538631495170

`A001055(n+4)-A281007(A065387(3*n+1))`
-/

namespace A143067.P2260081538631495170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 4) - A281007 (A065387 (3 * n + 1)).toNat

end

end A143067.P2260081538631495170

/-! ## A143067.P6246390702108370244

`Δ[A176048(A176061(n+4))]`
-/

namespace A143067.P6246390702108370244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176048 (A176061 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143067.P6246390702108370244

/-! ## A143067.P13242231249645040260

`Δ[A215029(Δ[A253013(n+1)])]`
-/

namespace A143067.P13242231249645040260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143067.P13242231249645040260

/-! ## A143067.P14877780979660950342

`A164995(A107066(n))-A164995(n)`
-/

namespace A143067.P14877780979660950342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164995 (A107066 n).toNat - A164995 n

end

end A143067.P14877780979660950342

/-! ## A143067.P16365193794750208211

`A082647(A145550(n+1))-A000120(n)`
-/

namespace A143067.P16365193794750208211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A145550 (n + 1)).toNat - A000120 n

end

end A143067.P16365193794750208211

/-!
# A143068: Expansion of phi(q) / phi(-q^6) in powers of q where phi() is a Ramanujan theta function.

The programs for A143068, there is no canonical definition to state claims against.
-/

/-! ## A143068.P17146078666850038538

`abs(A262938(n))`
-/

namespace A143068.P17146078666850038538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262938 n|

end

end A143068.P17146078666850038538

/-! ## A143068.P6384844048908256669

`A033999(n)*A262938(n)`
-/

namespace A143068.P6384844048908256669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A262938 n

end

end A143068.P6384844048908256669

/-! ## A143068.P9079529254524136694

`A131713(n)*A307757(n)`
-/

namespace A143068.P9079529254524136694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A307757 n

end

end A143068.P9079529254524136694

/-! ## A143068.P11012115803778548111

`gcd(A000038(n), A262938(n))`
-/

namespace A143068.P11012115803778548111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A262938 n)

end

end A143068.P11012115803778548111

/-! ## A143068.P14025137159680199374

`lcm(A000034(n), A262938(n))`
-/

namespace A143068.P14025137159680199374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A262938 n)

end

end A143068.P14025137159680199374

/-! ## A143068.P12419441742829716476

`A081729(3*n)*A262938(n)`
-/

namespace A143068.P12419441742829716476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (3 * n) * A262938 n

end

end A143068.P12419441742829716476

/-! ## A143068.P11587890196358645519

`(2-A057079(n)²)*A307757(n)`
-/

namespace A143068.P11587890196358645519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A307757 n

end

end A143068.P11587890196358645519

/-! ## A143068.P8055188216355706146

`(2-A132954(n)²)*A307757(n)`
-/

namespace A143068.P8055188216355706146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A307757 n

end

end A143068.P8055188216355706146

/-! ## A143068.P3866938321701825925

`A132217(n)/A262160(n)*A262938(n)`
-/

namespace A143068.P3866938321701825925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132217 n : ℚ) / (A262160 n : ℚ) * (A262938 n : ℚ)

end

end A143068.P3866938321701825925

/-! ## A143068.P8809529755462099448

`A057079(n+2)*A262938(n)`
-/

namespace A143068.P8809529755462099448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A262938 n

end

end A143068.P8809529755462099448

/-! ## A143068.P4095393142451853347

`sqrt(A262938(n)*A262938(n%(n+1)))`
-/

namespace A143068.P4095393142451853347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262938 n * A262938 (n % (n + 1)) : ℝ)

end

end A143068.P4095393142451853347

/-! ## A143068.P10419636273496880704

`A057079(4*n)*A307757(n)`
-/

namespace A143068.P10419636273496880704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A307757 n

end

end A143068.P10419636273496880704

/-!
# A143069: Least number k such that n*k has the fewest possible ones in its binary expansion.

The programs for A143069, there is no canonical definition to state claims against.
-/

/-! ## A143069.P3409118556454576287

`A028310(A143073(n+1)%A304719(n))`
-/

namespace A143069.P3409118556454576287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A143073 (n + 1)) (A304719 n)).toNat

end

end A143069.P3409118556454576287

/-! ## A143069.P12661409852269021849

`or(A000188(A051642(n)), A143073(n+1))`
-/

namespace A143069.P12661409852269021849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000188 (A051642 n).toNat) (A143073 (n + 1))

end

end A143069.P12661409852269021849

/-! ## A143069.P8978751940281832414

`or(A143073(n+1), A167966(A009766(n)))`
-/

namespace A143069.P8978751940281832414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143073 (n + 1)) (A167966 (A009766 n).toNat)

end

end A143069.P8978751940281832414

/-! ## A143069.P8917958770202567573

`or(A050320(A001605(n+1)), A143073(n+1))`
-/

namespace A143069.P8917958770202567573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050320 (A001605 (n + 1)).toNat) (A143073 (n + 1))

end

end A143069.P8917958770202567573

/-! ## A143069.P3933483372581729047

`or(A143073(n+1), A167964(A065091(n+1)))`
-/

namespace A143069.P3933483372581729047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143073 (n + 1)) (A167964 (A065091 (n + 1)).toNat)

end

end A143069.P3933483372581729047

/-!
# A143070: A positive integer n is included if the number of 0's in the binary representation of n is a power of 2 (including being possibly 1).

The programs for A143070, the canonical program `A143070.P1854669171373980450` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143070 has offset 1).

The definition of A143070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143070.P1854669171373980450

`eq[1, A000120(A080791(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143070

/-- `eq[1, A000120(A080791(n))]` -/
def P1854669171373980450.Spec : Prop :=
  ∀ n, (P1854669171373980450.a n : ℤ) = A143070 (n + 1)

theorem P1854669171373980450.correct : P1854669171373980450.Spec := by
  intro n
  simp only [A143070, Nat.add_sub_cancel]

end A143070

/-! ## A143070.P16148600569795590851

`eq[2, A076982(A080100(n))]`
-/

namespace A143070.P16148600569795590851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A080100 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P16148600569795590851

namespace A143070

/-- `eq[2, A076982(A080100(n))]` -/
def P16148600569795590851.Spec : Prop :=
  ∀ n, (P16148600569795590851.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P17267351452393894601

`eq[1, A000120(log2(A080100(n)))]`
-/

namespace A143070.P17267351452393894601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (Real.logb 2 (A080100 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P17267351452393894601

namespace A143070

/-- `eq[1, A000120(log2(A080100(n)))]` -/
def P17267351452393894601.Spec : Prop :=
  ∀ n, (P17267351452393894601.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P6303601255775582212

`eq[2, A063787(A080791(n)+1)]`
-/

namespace A143070.P6303601255775582212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A080791 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P6303601255775582212

namespace A143070

/-- `eq[2, A063787(A080791(n)+1)]` -/
def P6303601255775582212.Spec : Prop :=
  ∀ n, (P6303601255775582212.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P9503868533137932088

`eq[2, A048896(2*A080791(n))]`
-/

namespace A143070.P9503868533137932088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P9503868533137932088

namespace A143070

/-- `eq[2, A048896(2*A080791(n))]` -/
def P9503868533137932088.Spec : Prop :=
  ∀ n, (P9503868533137932088.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P15647936664387551632

`eq[1, A317624(4*A080791(n))]`
-/

namespace A143070.P15647936664387551632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 (4 * A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P15647936664387551632

namespace A143070

/-- `eq[1, A317624(4*A080791(n))]` -/
def P15647936664387551632.Spec : Prop :=
  ∀ n, (P15647936664387551632.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P16377753958102065692

`eq[1, A008687(A008687(n+1)-1)]`
-/

namespace A143070.P16377753958102065692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A008687 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P16377753958102065692

namespace A143070

/-- `eq[1, A008687(A008687(n+1)-1)]` -/
def P16377753958102065692.Spec : Prop :=
  ∀ n, (P16377753958102065692.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P15942573267098331233

`eq[A000120(A023416(n)), A057427(n)]`
-/

namespace A143070.P15942573267098331233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143070.P15942573267098331233

namespace A143070

/-- `eq[A000120(A023416(n)), A057427(n)]` -/
def P15942573267098331233.Spec : Prop :=
  ∀ n, (P15942573267098331233.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P9006099489310279733

`eq[A080791(n), A302436(A023416(n))]`
-/

namespace A143070.P9006099489310279733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143070.P9006099489310279733

namespace A143070

/-- `eq[A080791(n), A302436(A023416(n))]` -/
def P9006099489310279733.Spec : Prop :=
  ∀ n, (P9006099489310279733.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P7856596983147702576

`eq[A036987(n)+1, A000120(A023416(n))]`
-/

namespace A143070.P7856596983147702576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143070.P7856596983147702576

namespace A143070

/-- `eq[A036987(n)+1, A000120(A023416(n))]` -/
def P7856596983147702576.Spec : Prop :=
  ∀ n, (P7856596983147702576.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P9416180924320479483

`eq[1, A000120(A029837(n+1)-A000120(n))]`
-/

namespace A143070.P9416180924320479483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A029837 (n + 1) - A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P9416180924320479483

namespace A143070

/-- `eq[1, A000120(A029837(n+1)-A000120(n))]` -/
def P9416180924320479483.Spec : Prop :=
  ∀ n, (P9416180924320479483.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P9391792584566168762

`eq[1, A000120(A023416(n)%A000069(n+1))]`
-/

namespace A143070.P9391792584566168762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A023416 n) (A000069 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P9391792584566168762

namespace A143070

/-- `eq[1, A000120(A023416(n)%A000069(n+1))]` -/
def P9391792584566168762.Spec : Prop :=
  ∀ n, (P9391792584566168762.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P10751281261841174518

`eq[1, A137156(A023416(2*n))]`
-/

namespace A143070.P10751281261841174518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137156 (A023416 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P10751281261841174518

namespace A143070

/-- `eq[1, A137156(A023416(2*n))]` -/
def P10751281261841174518.Spec : Prop :=
  ∀ n, (P10751281261841174518.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P185898906770101385

`eq[A023416(2*n), A092391(A023416(n))]`
-/

namespace A143070.P185898906770101385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143070.P185898906770101385

namespace A143070

/-- `eq[A023416(2*n), A092391(A023416(n))]` -/
def P185898906770101385.Spec : Prop :=
  ∀ n, (P185898906770101385.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P17158210642580897969

`eq[1, A000120(A023416(Δ[n²]))]`
-/

namespace A143070.P17158210642580897969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023416 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P17158210642580897969

namespace A143070

/-- `eq[1, A000120(A023416(Δ[n²]))]` -/
def P17158210642580897969.Spec : Prop :=
  ∀ n, (P17158210642580897969.a n : ℤ) = A143070 (n + 1)

end A143070

/-! ## A143070.P3753274967192004980

`eq[A035327(A086784(2*n+1)), A086784(n+1)]`
-/

namespace A143070.P3753274967192004980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A086784 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143070.P3753274967192004980

namespace A143070

/-- `eq[A035327(A086784(2*n+1)), A086784(n+1)]` -/
def P3753274967192004980.Spec : Prop :=
  ∀ n, (P3753274967192004980.a n : ℤ) = A143070 (n + 1)

end A143070

/-!
# A143071: A positive integer n is included if the number of 1's in the binary representation of n is a power of 2 (including being possibly 1).

The programs for A143071, the canonical program `A143071.P10370426072631450913` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143071 has offset 1).

The definition of A143071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143071.P4858080469932217830

`eq[1, A064547(A001316(n))]`
-/

namespace A143071.P4858080469932217830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P4858080469932217830

namespace A143071

/-- `eq[1, A064547(A001316(n))]` -/
def P4858080469932217830.Spec : Prop :=
  ∀ n, (P4858080469932217830.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P10370426072631450913

`eq[1, A000120(log2(A001316(n)))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143071

/-- `eq[1, A000120(log2(A001316(n)))]` -/
def P10370426072631450913.Spec : Prop :=
  ∀ n, (P10370426072631450913.a n : ℤ) = A143071 (n + 1)

theorem P10370426072631450913.correct : P10370426072631450913.Spec := by
  intro n
  simp only [A143071, Nat.add_sub_cancel]

end A143071

/-! ## A143071.P6978877850136722674

`eq[1, A006257(log2(A001316(n)))]`
-/

namespace A143071.P6978877850136722674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P6978877850136722674

namespace A143071

/-- `eq[1, A006257(log2(A001316(n)))]` -/
def P6978877850136722674.Spec : Prop :=
  ∀ n, (P6978877850136722674.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P17414374399789819338

`eq[1, A008687(log2(A001316(n)))]`
-/

namespace A143071.P17414374399789819338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P17414374399789819338

namespace A143071

/-- `eq[1, A008687(log2(A001316(n)))]` -/
def P17414374399789819338.Spec : Prop :=
  ∀ n, (P17414374399789819338.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P9339406665573543415

`eq[1, A281392(log2(A001316(n)))]`
-/

namespace A143071.P9339406665573543415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P9339406665573543415

namespace A143071

/-- `eq[1, A281392(log2(A001316(n)))]` -/
def P9339406665573543415.Spec : Prop :=
  ∀ n, (P9339406665573543415.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P17822389265034330450

`eq[2, A001316(log2(A001316(n)))]`
-/

namespace A143071.P17822389265034330450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P17822389265034330450

namespace A143071

/-- `eq[2, A001316(log2(A001316(n)))]` -/
def P17822389265034330450.Spec : Prop :=
  ∀ n, (P17822389265034330450.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P411061709296961844

`eq[1, A286574(A001316(n)-1)]`
-/

namespace A143071.P411061709296961844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A001316 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P411061709296961844

namespace A143071

/-- `eq[1, A286574(A001316(n)-1)]` -/
def P411061709296961844.Spec : Prop :=
  ∀ n, (P411061709296961844.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P3935595341732861252

`lt[A001222(A001316(n+1)+1), 2]+1`
-/

namespace A143071.P3935595341732861252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A143071.P3935595341732861252

namespace A143071

/-- `lt[A001222(A001316(n+1)+1), 2]+1` -/
def P3935595341732861252.Spec : Prop :=
  ∀ n, (P3935595341732861252.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P15728404049034643024

`eq[2, A000005(A000265(A001316(n)+1))]`
-/

namespace A143071.P15728404049034643024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (A001316 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P15728404049034643024

namespace A143071

/-- `eq[2, A000005(A000265(A001316(n)+1))]` -/
def P15728404049034643024.Spec : Prop :=
  ∀ n, (P15728404049034643024.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P1846489520552154619

`eq[2, A033666(A001316(n)+1)]`
-/

namespace A143071.P1846489520552154619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033666 (A001316 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P1846489520552154619

namespace A143071

/-- `eq[2, A033666(A001316(n)+1)]` -/
def P1846489520552154619.Spec : Prop :=
  ∀ n, (P1846489520552154619.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P15584517415161139021

`eq[1, A000120(2*n-A005187(n))]`
-/

namespace A143071.P15584517415161139021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P15584517415161139021

namespace A143071

/-- `eq[1, A000120(2*n-A005187(n))]` -/
def P15584517415161139021.Spec : Prop :=
  ∀ n, (P15584517415161139021.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P14744424924789946542

`eq[1, A002487(2*n-A005187(n))]`
-/

namespace A143071.P14744424924789946542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P14744424924789946542

namespace A143071

/-- `eq[1, A002487(2*n-A005187(n))]` -/
def P14744424924789946542.Spec : Prop :=
  ∀ n, (P14744424924789946542.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P5908123993046621729

`eq[2, A278222(2*n-A005187(n))]`
-/

namespace A143071.P5908123993046621729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P5908123993046621729

namespace A143071

/-- `eq[2, A278222(2*n-A005187(n))]` -/
def P5908123993046621729.Spec : Prop :=
  ∀ n, (P5908123993046621729.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P16030261101930742586

`eq[1, A000120(n-A005187(n)+n)]`
-/

namespace A143071.P16030261101930742586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P16030261101930742586

namespace A143071

/-- `eq[1, A000120(n-A005187(n)+n)]` -/
def P16030261101930742586.Spec : Prop :=
  ∀ n, (P16030261101930742586.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P8701748480470834286

`eq[1, A002487(n-A005187(n)+n)]`
-/

namespace A143071.P8701748480470834286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P8701748480470834286

namespace A143071

/-- `eq[1, A002487(n-A005187(n)+n)]` -/
def P8701748480470834286.Spec : Prop :=
  ∀ n, (P8701748480470834286.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P6736213533160125224

`eq[2, A278222(n-A005187(n)+n)]`
-/

namespace A143071.P6736213533160125224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P6736213533160125224

namespace A143071

/-- `eq[2, A278222(n-A005187(n)+n)]` -/
def P6736213533160125224.Spec : Prop :=
  ∀ n, (P6736213533160125224.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P17738144444904956954

`eq[2*n-A005187(n), A302436(2*n-A005187(n))]`
-/

namespace A143071.P17738144444904956954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143071.P17738144444904956954

namespace A143071

/-- `eq[2*n-A005187(n), A302436(2*n-A005187(n))]` -/
def P17738144444904956954.Spec : Prop :=
  ∀ n, (P17738144444904956954.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P3694060506434191465

`eq[n-A005187(n)+n, A302436(n-A005187(n)+n)]`
-/

namespace A143071.P3694060506434191465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143071.P3694060506434191465

namespace A143071

/-- `eq[n-A005187(n)+n, A302436(n-A005187(n)+n)]` -/
def P3694060506434191465.Spec : Prop :=
  ∀ n, (P3694060506434191465.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P17619899378076668028

`eq[2, A109925(A001316(n)+2)]`
-/

namespace A143071.P17619899378076668028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A001316 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P17619899378076668028

namespace A143071

/-- `eq[2, A109925(A001316(n)+2)]` -/
def P17619899378076668028.Spec : Prop :=
  ∀ n, (P17619899378076668028.a n : ℤ) = A143071 (n + 1)

end A143071

/-! ## A143071.P14874573295194890243

`record[(n+1)/A052126(A001316(n+1)+1)]`
-/

namespace A143071.P14874573295194890243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (A001316 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143071.P14874573295194890243

namespace A143071

/-- `record[(n+1)/A052126(A001316(n+1)+1)]` -/
def P14874573295194890243.Spec : Prop :=
  ∀ n, P14874573295194890243.a n = (A143071 (n + 1) : ℚ)

end A143071

/-!
# A143072: A positive integer n is included if both the number of 0's and the number of 1's in the binary representation of n are powers of 2 (including being possibly 1).

The programs for A143072, the canonical program `A143072.P10725626790880993755` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143072 has offset 1).

The definition of A143072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143072.P10725626790880993755

`∩[A143070(n+1), A143071(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143072

/-- `∩[A143070(n+1), A143071(n+1)]` -/
def P10725626790880993755.Spec : Prop :=
  ∀ n, (P10725626790880993755.a n : ℤ) = A143072 (n + 1)

theorem P10725626790880993755.correct : P10725626790880993755.Spec := by
  intro n
  simp only [A143072, Nat.add_sub_cancel]

end A143072

/-! ## A143072.P2186789344179488717

`eq[32, lcm(32, A071295(n))]`
-/

namespace A143072.P2186789344179488717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 32 (A071295 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143072.P2186789344179488717

namespace A143072

/-- `eq[32, lcm(32, A071295(n))]` -/
def P2186789344179488717.Spec : Prop :=
  ∀ n, (P2186789344179488717.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P14032255893272930742

`eq[0, A182256(A071295(n))]`
-/

namespace A143072.P14032255893272930742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182256 (A071295 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143072.P14032255893272930742

namespace A143072

/-- `eq[0, A182256(A071295(n))]` -/
def P14032255893272930742.Spec : Prop :=
  ∀ n, (P14032255893272930742.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P8906659331849163511

`eq[1, A007302(A071295(n)²)]`
-/

namespace A143072.P8906659331849163511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A071295 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143072.P8906659331849163511

namespace A143072

/-- `eq[1, A007302(A071295(n)²)]` -/
def P8906659331849163511.Spec : Prop :=
  ∀ n, (P8906659331849163511.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P13893429021473588788

`eq[2, A001316(A071295(n)²)]`
-/

namespace A143072.P13893429021473588788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A071295 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143072.P13893429021473588788

namespace A143072

/-- `eq[2, A001316(A071295(n)²)]` -/
def P13893429021473588788.Spec : Prop :=
  ∀ n, (P13893429021473588788.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P12717908970286926515

`eq[1, A007302(2*A071295(n))]`
-/

namespace A143072.P12717908970286926515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (2 * A071295 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143072.P12717908970286926515

namespace A143072

/-- `eq[1, A007302(2*A071295(n))]` -/
def P12717908970286926515.Spec : Prop :=
  ∀ n, (P12717908970286926515.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P8318234106167113674

`eq[2, A001316(2*A071295(n))]`
-/

namespace A143072.P8318234106167113674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * A071295 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143072.P8318234106167113674

namespace A143072

/-- `eq[2, A001316(2*A071295(n))]` -/
def P8318234106167113674.Spec : Prop :=
  ∀ n, (P8318234106167113674.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P2746756594648580015

`eq[A000120(A023416(n))², A054868(n)]`
-/

namespace A143072.P2746756594648580015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023416 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143072.P2746756594648580015

namespace A143072

/-- `eq[A000120(A023416(n))², A054868(n)]` -/
def P2746756594648580015.Spec : Prop :=
  ∀ n, (P2746756594648580015.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P8191191735538038802

`eq[1, A000120(A000120(n)*A023416(n))]`
-/

namespace A143072.P8191191735538038802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n * A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143072.P8191191735538038802

namespace A143072

/-- `eq[1, A000120(A000120(n)*A023416(n))]` -/
def P8191191735538038802.Spec : Prop :=
  ∀ n, (P8191191735538038802.a n : ℤ) = A143072 (n + 1)

end A143072

/-! ## A143072.P1068768452255157115

`eq[1, A000120(A000120(n)*A080791(n))]`
-/

namespace A143072.P1068768452255157115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n * A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143072.P1068768452255157115

namespace A143072

/-- `eq[1, A000120(A000120(n)*A080791(n))]` -/
def P1068768452255157115.Spec : Prop :=
  ∀ n, (P1068768452255157115.a n : ℤ) = A143072 (n + 1)

end A143072

/-!
# A143073: Least number k such that the binary expansion of n*k has fewer ones than n, or 0 if no such k exists.

The programs for A143073, there is no canonical definition to state claims against.
-/

/-! ## A143073.P1673228572892317759

`A143069(n+1)%A328697(A143069(n+1))`
-/

namespace A143073.P1673228572892317759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143069 (n + 1)) (A328697 (A143069 (n + 1)).toNat)

end

end A143073.P1673228572892317759

/-! ## A143073.P13757107913696408994

`A087156(A143069(n+1))%A304719(n)`
-/

namespace A143073.P13757107913696408994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (A143069 (n + 1)).toNat) (A304719 n)

end

end A143073.P13757107913696408994

/-! ## A143073.P3026992669525653373

`A087156(A143069(n+1)^A051064(n+1))`
-/

namespace A143073.P3026992669525653373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (SequenceMachineLib.roundAway ((A143069 (n + 1) : ℚ) ^ (A051064 (n + 1) : ℤ))).toNat

end

end A143073.P3026992669525653373

/-!
# A143074: Numerator of Euler(n,2).

The programs for A143074, there is no canonical definition to state claims against.
-/

/-! ## A143074.P11685505553362677742

`ratio[A046161(n)]-A198631(n)`
-/

namespace A143074.P11685505553362677742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A198631 n : ℚ)

end

end A143074.P11685505553362677742

/-! ## A143074.P13086814838224724386

`A171977(1+n)-A198631(n)`
-/

namespace A143074.P13086814838224724386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (1 + n) - A198631 n

end

end A143074.P13086814838224724386

/-! ## A143074.P9488691813227722814

`A006519(2*(n+1))-A198631(n)`
-/

namespace A143074.P9488691813227722814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * (n + 1)) - A198631 n

end

end A143074.P9488691813227722814

/-! ## A143074.P7503326885001149347

`A062383(2^val(n+1, 2))-A198631(n)`
-/

namespace A143074.P7503326885001149347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 ^ SequenceMachineLib.valuation (n + 1) 2) - A198631 n

end

end A143074.P7503326885001149347

/-! ## A143074.P6740038800131628118

`A062383(or(n, n+1)-n)-A198631(n)`
-/

namespace A143074.P6740038800131628118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (Nat.lor n (n + 1) - n) - A198631 n

end

end A143074.P6740038800131628118

/-! ## A143074.P17631869078116320343

`A062383(and(n+1, -(n+1)))-A198631(n)`
-/

namespace A143074.P17631869078116320343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat - A198631 n

end

end A143074.P17631869078116320343

/-! ## A143074.P11216342328839760870

`A062383(ceil(xor(n, n+1)/2))-A198631(n)`
-/

namespace A143074.P11216342328839760870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 ⌈(Nat.xor n (n + 1) : ℚ) / 2⌉.toNat - A198631 n

end

end A143074.P11216342328839760870

/-! ## A143074.P1213503974507593331

`A000079(A001511(n+1))-A198631(n)`
-/

namespace A143074.P1213503974507593331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001511 (n + 1)).toNat - A198631 n

end

end A143074.P1213503974507593331

/-! ## A143074.P17814440898248999377

`A004277(A006519(n+1))-A198631(n)`
-/

namespace A143074.P17814440898248999377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006519 (n + 1)).toNat - A198631 n

end

end A143074.P17814440898248999377

/-! ## A143074.P5539270621264209693

`A062383(A000010(xor(n, n+1)+1))-A198631(n)`
-/

namespace A143074.P5539270621264209693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A000010 (Nat.xor n (n + 1) + 1)).toNat - A198631 n

end

end A143074.P5539270621264209693

/-!
# A143075: Polynomial expansion sequence: p(x)=1/(1 - 4x + 5x^2 - 6x^4 + 6x^5 - x^6 - 2x^7 + x^8).

The programs for A143075, the canonical program `A143075.P1012112356552670888` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143075 has offset 0).

The definition of A143075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143075.P399678614685233973

`∑[ceil(∑[ceil(ϕ*a(n-1))]/2)]` with `a(0)=2`
-/

namespace A143075.P399678614685233973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  ⌈Real.goldenRatio * (f2 (n - 1) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143075.P399678614685233973

namespace A143075

/-- `∑[ceil(∑[ceil(ϕ*a(n-1))]/2)]` -/
def P399678614685233973.Spec : Prop :=
  ∀ n, P399678614685233973.a n = A143075 n

end A143075

/-! ## A143075.P1012112356552670888

`∑[∑[A173434(n+4)]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143075

/-- `∑[∑[A173434(n+4)]]` -/
def P1012112356552670888.Spec : Prop :=
  ∀ n, P1012112356552670888.a n = A143075 n

theorem P1012112356552670888.correct : P1012112356552670888.Spec := by
  intro n
  simp only [A143075]

end A143075

/-! ## A143075.P10212580390206621836

`∑[∑[∑[A293014(n+4)]]]`
-/

namespace A143075.P10212580390206621836
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143075.P10212580390206621836

namespace A143075

/-- `∑[∑[∑[A293014(n+4)]]]` -/
def P10212580390206621836.Spec : Prop :=
  ∀ n, P10212580390206621836.a n = A143075 n

end A143075

/-! ## A143075.P5117059834731085769

`∑[floor(A079921(n+1)/2)]`
-/

namespace A143075.P5117059834731085769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079921 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143075.P5117059834731085769

namespace A143075

/-- `∑[floor(A079921(n+1)/2)]` -/
def P5117059834731085769.Spec : Prop :=
  ∀ n, P5117059834731085769.a n = A143075 n

end A143075

/-! ## A143075.P18208841696871884653

`∑[floor(A001924(n+2)/2)]`
-/

namespace A143075.P18208841696871884653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001924 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143075.P18208841696871884653

namespace A143075

/-- `∑[floor(A001924(n+2)/2)]` -/
def P18208841696871884653.Spec : Prop :=
  ∀ n, P18208841696871884653.a n = A143075 n

end A143075

/-!
# A143077: a(n) is the n-th term of a pseudo-Fibonacci sequence created by applying the function fib(1,...,n) to itself n times.

The programs for A143077, there is no canonical definition to state claims against.
-/

/-! ## A143077.P1892623226109115795

`A308007(n!²)`
-/

namespace A143077.P1892623226109115795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308007 (Nat.factorial n ^ 2)

end

end A143077.P1892623226109115795

/-!
# A143078: Triangle read by rows: row n (n >= 2) has length pi(n) (see A000720) and the k-th term gives the exponent of prime(k) in the prime factorization of n.

The programs for A143078, there is no canonical definition to state claims against.
-/

/-! ## A143078.P15915762478802831140

`val(A249728(n+2), p?[A002262(n)])`
-/

namespace A143078.P15915762478802831140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249728 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143078.P15915762478802831140

/-! ## A143078.P9450287488914652508

`val(A249728(n+2), p?[A002260(n+1)])`
-/

namespace A143078.P9450287488914652508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249728 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143078.P9450287488914652508

/-! ## A143078.P17384539750765244631

`val(A249728(n+2), p?[A144328(n+1)])`
-/

namespace A143078.P17384539750765244631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249728 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143078.P17384539750765244631

/-! ## A143078.P3834916159761640758

`val(A249728(n+2), A000040(A249727(n+2)))`
-/

namespace A143078.P3834916159761640758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249728 (n + 2)).toNat (A000040 (A249727 (n + 2)).toNat).toNat

end

end A143078.P3834916159761640758

/-! ## A143078.P16288449081287805455

`A070471(A328969(n+2)^A003963(n+1))`
-/

namespace A143078.P16288449081287805455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070471 (SequenceMachineLib.roundAway ((A328969 (n + 2) : ℚ) ^ (A003963 (n + 1) : ℤ))).toNat

end

end A143078.P16288449081287805455

/-!
# A143079: a(n) = ((9+sqrt(9))^n + (9-sqrt(9))^n)/2.

The programs for A143079, the canonical program `A143079.P10941601985697999514` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143079 has offset 0).

The definition of A143079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((9+sqrt(9))^n+(9-sqrt(9))^n)/2` (program `A143079.P17669506420192904025`, by `A143079.P17669506420192904025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143079.P3969043678681753815

`ogf((1-9x)/(1-18x+72x^2))`
-/

namespace A143079.P3969043678681753815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -18, 72] n

end

end A143079.P3969043678681753815

namespace A143079

/-- `ogf((1-9x)/(1-18x+72x^2))` -/
def P3969043678681753815.Spec : Prop :=
  ∀ n, P3969043678681753815.a n = A143079 n

end A143079

/-! ## A143079.P10418077240703831414

`(6^n+12^n)/2`
-/

namespace A143079.P10418077240703831414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n + 12 ^ n : ℚ) / 2

end

end A143079.P10418077240703831414

namespace A143079

/-- `(6^n+12^n)/2` -/
def P10418077240703831414.Spec : Prop :=
  ∀ n, P10418077240703831414.a n = (A143079 n : ℚ)

theorem P10418077240703831414.correct : P10418077240703831414.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A143079, Nat.add_sub_cancel, A143079.P10418077240703831414.a, A143079.P10941601985697999514.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A143079, Nat.add_sub_cancel, A143079.P10418077240703831414.a, A143079.P10941601985697999514.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A143079

/-! ## A143079.P10941601985697999514

`18*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143079

/-- `18*a(n-1)-72*a(n-2)` -/
def P10941601985697999514.Spec : Prop :=
  ∀ n, P10941601985697999514.a n = A143079 n

theorem P10941601985697999514.correct : P10941601985697999514.Spec := by
  intro n
  simp only [A143079]

end A143079

/-! ## A143079.P17669506420192904025

`((9+sqrt(9))^n+(9-sqrt(9))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143079.P17669506420192904025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (9 : ℝ)) ^ n + (9 - Real.sqrt (9 : ℝ)) ^ n) / 2

end

end A143079.P17669506420192904025

namespace A143079

/-- `((9+sqrt(9))^n+(9-sqrt(9))^n)/2` -/
def P17669506420192904025.Spec : Prop :=
  ∀ n, P17669506420192904025.a n = (A143079 n : ℝ)

theorem P17669506420192904025.correct : P17669506420192904025.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A143079, Nat.add_sub_cancel, A143079.P17669506420192904025.a, A143079.P10941601985697999514.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A143079, Nat.add_sub_cancel, A143079.P17669506420192904025.a, A143079.P10941601985697999514.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A143079

/-! ## A143079.P14633629033752582766

`3^n*A007582(n)`
-/

namespace A143079.P14633629033752582766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A007582 n

end

end A143079.P14633629033752582766

namespace A143079

/-- `3^n*A007582(n)` -/
def P14633629033752582766.Spec : Prop :=
  ∀ n, P14633629033752582766.a n = A143079 n

end A143079

/-! ## A143079.P18289810353147539035

`∑{#}[n, A098158(C(n+1, 2)+#)*9^#]`
-/

namespace A143079.P18289810353147539035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A098158 (Nat.choose (n + 1) 2 + k) * (9 ^ k : ℤ)

end

end A143079.P18289810353147539035

namespace A143079

/-- `∑{#}[n, A098158(C(n+1, 2)+#)*9^#]` -/
def P18289810353147539035.Spec : Prop :=
  ∀ n, P18289810353147539035.a n = A143079 n

end A143079

/-! ## A143079.P4576112516471787441

`A000244(n)*A005418(2*n+1)`
-/

namespace A143079.P4576112516471787441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A005418 (2 * n + 1)

end

end A143079.P4576112516471787441

namespace A143079

/-- `A000244(n)*A005418(2*n+1)` -/
def P4576112516471787441.Spec : Prop :=
  ∀ n, P4576112516471787441.a n = A143079 n

end A143079

/-! ## A143079.P2519349919369849020

`A007582(n)+A007582(n)*A024023(n)`
-/

namespace A143079.P2519349919369849020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A007582 n * A024023 n

end

end A143079.P2519349919369849020

namespace A143079

/-- `A007582(n)+A007582(n)*A024023(n)` -/
def P2519349919369849020.Spec : Prop :=
  ∀ n, P2519349919369849020.a n = A143079 n

end A143079

/-! ## A143079.P12534690956260762327

`A007051(n)*A161168(n)-A007582(n)`
-/

namespace A143079.P12534690956260762327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A161168 n - A007582 n

end

end A143079.P12534690956260762327

namespace A143079

/-- `A007051(n)*A161168(n)-A007582(n)` -/
def P12534690956260762327.Spec : Prop :=
  ∀ n, P12534690956260762327.a n = A143079 n

end A143079

/-!
# A143080: Triangular sequence of coefficients from an exponential based polynomial: p(x,n)=If[n == 0, 1, -(2*n - 1)!*x^(2*n)*(Sum[x^i/(i + 2*n)!, {i, 0, Infinity}] - Exp[x]/x^(2*n))].

The programs for A143080, there is no canonical definition to state claims against.
-/

/-! ## A143080.P12060357200237619103

`A094587(round(sqrt(n+1))²+n-1)`
-/

namespace A143080.P12060357200237619103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + ((n : ℤ) - 1)).toNat

end

end A143080.P12060357200237619103

/-! ## A143080.P17761956303289526300

`A008279(A038722(A007607(n+1)))`
-/

namespace A143080.P17761956303289526300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A038722 (A007607 (n + 1)).toNat).toNat

end

end A143080.P17761956303289526300

/-! ## A143080.P1239494657176557235

`A126445(A029931(n)%A125949(n+1))`
-/

namespace A143080.P1239494657176557235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126445 (Int.tmod (A029931 n) (A125949 (n + 1))).toNat

end

end A143080.P1239494657176557235

/-! ## A143080.P17435704202260627345

`A075088(and(A000045(n), A349430(3*n)))`
-/

namespace A143080.P17435704202260627345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075088 (Int.land (A000045 n) (A349430 (3 * n))).toNat

end

end A143080.P17435704202260627345

/-!
# A143082: Longer side (k) of bordered rectangle described in A168339.

The programs for A143082, there is no canonical definition to state claims against.
-/

/-! ## A143082.P17343716818606268642

`A161357(n+1)+2`
-/

namespace A143082.P17343716818606268642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161357 (n + 1) + 2

end

end A143082.P17343716818606268642

/-! ## A143082.P10036456646073320148

`ceil(Δ[n²]/A161358(n+1))+2`
-/

namespace A143082.P10036456646073320148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A161358 (n + 1) : ℚ)⌉ + 2

end

end A143082.P10036456646073320148

/-! ## A143082.P6060447841468954001

`ceil(Δ[n²]/(A145288(n+1)-2))+2`
-/

namespace A143082.P6060447841468954001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A145288 (n + 1) - 2 : ℚ)⌉ + 2

end

end A143082.P6060447841468954001

/-! ## A143082.P10942680038949766661

`A009056(A161357(n+1))`
-/

namespace A143082.P10942680038949766661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A161357 (n + 1)).toNat

end

end A143082.P10942680038949766661

/-! ## A143082.P418002295588032636

`A162348(2*A386316(2*n+1))`
-/

namespace A143082.P418002295588032636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * A386316 (2 * n + 1)).toNat

end

end A143082.P418002295588032636

/-! ## A143082.P3262635992519476768

`A009056(ceil(Δ[n²]/A161358(n+1)))`
-/

namespace A143082.P3262635992519476768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A161358 (n + 1) : ℚ)⌉.toNat

end

end A143082.P3262635992519476768

/-! ## A143082.P12072505949035941034

`round(acot(A161358(n+1))*A103517(n))+2`
-/

namespace A143082.P12072505949035941034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A161358 (n + 1) : ℝ) * (A103517 n : ℝ)) + 2

end

end A143082.P12072505949035941034

/-! ## A143082.P9306150934120469858

`A008619(floor(A008574(n)/A161358(n+1)))+2`
-/

namespace A143082.P9306150934120469858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(A008574 n : ℚ) / (A161358 (n + 1) : ℚ)⌋.toNat + 2

end

end A143082.P9306150934120469858

/-! ## A143082.P3238643445783494584

`ceil(A005408(n)/A023444(A145288(n+1)))+2`
-/

namespace A143082.P3238643445783494584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005408 n : ℚ) / (A023444 (A145288 (n + 1)).toNat : ℚ)⌉ + 2

end

end A143082.P3238643445783494584

/-! ## A143082.P15434777501394723599

`ceil(A005408(n)/(A259752(2*(n+1))+A145288(n+1))%(3*n+2))+2`
-/

namespace A143082.P15434777501394723599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005408 n : ℚ) / (Int.tmod (A259752 (2 * (n + 1)) + A145288 (n + 1)) (3 * n + 2 : ℤ) : ℚ)⌉ + 2

end

end A143082.P15434777501394723599

/-!
# A143083: A triangle of coefficients: T(n,m) = (2*n + 2*m + 3)! / (2*(2*m + 1)!*(2*n + 1)!).

The programs for A143083, the canonical program `A143083.P15845879446645800979` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143083 has offset 1).

The definition of A143083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143083.P15845879446645800979

`(2*row(n)+2*col(n)+3)!/(2*(2*col(n)+1)!*(2*row(n)+1)!)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143083

/-- `(2*row(n)+2*col(n)+3)!/(2*(2*col(n)+1)!*(2*row(n)+1)!)` -/
def P15845879446645800979.Spec : Prop :=
  ∀ n, P15845879446645800979.a n = (A143083 (n + 1) : ℚ)

end A143083

/-! ## A143083.P17874878971374884764

`∑[A010054(n)]*A178300(A185870(n+1))`
-/

namespace A143083.P17874878971374884764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A178300 (A185870 (n + 1)).toNat

end

end A143083.P17874878971374884764

namespace A143083

/-- `∑[A010054(n)]*A178300(A185870(n+1))` -/
def P17874878971374884764.Spec : Prop :=
  ∀ n, P17874878971374884764.a n = A143083 (n + 1)

end A143083

/-! ## A143083.P10082536993612592635

`A002260(n+1)*A027555(A185871(n+1))`
-/

namespace A143083.P10082536993612592635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A027555 (A185871 (n + 1)).toNat

end

end A143083.P10082536993612592635

namespace A143083

/-- `A002260(n+1)*A027555(A185871(n+1))` -/
def P10082536993612592635.Spec : Prop :=
  ∀ n, P10082536993612592635.a n = A143083 (n + 1)

end A143083

/-! ## A143083.P15243768338207451803

`A002024(n+1)*A178300(A185870(n+1))`
-/

namespace A143083.P15243768338207451803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A178300 (A185870 (n + 1)).toNat

end

end A143083.P15243768338207451803

namespace A143083

/-- `A002024(n+1)*A178300(A185870(n+1))` -/
def P15243768338207451803.Spec : Prop :=
  ∀ n, P15243768338207451803.a n = A143083 (n + 1)

end A143083

/-! ## A143083.P16244223879396540421

`sqrt(A133819(n+1))*A027555(A185871(n+1))`
-/

namespace A143083.P16244223879396540421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A027555 (A185871 (n + 1)).toNat : ℝ)

end

end A143083.P16244223879396540421

namespace A143083

/-- `sqrt(A133819(n+1))*A027555(A185871(n+1))` -/
def P16244223879396540421.Spec : Prop :=
  ∀ n, P16244223879396540421.a n = (A143083 (n + 1) : ℝ)

end A143083

/-!
# A143084: Triangle read by rows: T(n,m) = (n + m)!.

The programs for A143084, the canonical program `A143084.P832692363427462180` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143084 has offset 0).

The definition of A143084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+col(n))!` (program `A143084.P832692363427462180`, by `A143084.P832692363427462180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143084.P832692363427462180

`(row(n)+col(n))!`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143084

/-- `(row(n)+col(n))!` -/
def P832692363427462180.Spec : Prop :=
  ∀ n, (P832692363427462180.a n : ℤ) = A143084 n

theorem P832692363427462180.correct : P832692363427462180.Spec := by
  intro n
  simp only [A143084]

end A143084

/-! ## A143084.P17177758883577337961

`(col(n)+row(n))!`
-/

namespace A143084.P17177758883577337961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n)

end

end A143084.P17177758883577337961

namespace A143084

/-- `(col(n)+row(n))!` -/
def P17177758883577337961.Spec : Prop :=
  ∀ n, (P17177758883577337961.a n : ℤ) = A143084 n

theorem P17177758883577337961.correct : P17177758883577337961.Spec := by
  intro n
  simp only [A143084, Nat.add_sub_cancel, A143084.P17177758883577337961.a, A143084.P832692363427462180.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143084

/-! ## A143084.P2013551498983457200

`(n-C(∑[char[∑[n+1]]], 2))!`
-/

namespace A143084.P2013551498983457200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat

end

end A143084.P2013551498983457200

namespace A143084

/-- `(n-C(∑[char[∑[n+1]]], 2))!` -/
def P2013551498983457200.Spec : Prop :=
  ∀ n, (P2013551498983457200.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P444061609285402599

`(2*row(n)-(row(n)-col(n)))!`
-/

namespace A143084.P444061609285402599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((2 * SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A143084.P444061609285402599

namespace A143084

/-- `(2*row(n)-(row(n)-col(n)))!` -/
def P444061609285402599.Spec : Prop :=
  ∀ n, (P444061609285402599.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P14392944641066899387

`row(n)*T(n-1,k)+(2*T(n,k-1)-T(n-1,k))*col(n)` with `a(0)=1`
-/

namespace A143084.P14392944641066899387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUp a n + (2 * SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A143084.P14392944641066899387

namespace A143084

/-- `row(n)*T(n-1,k)+(2*T(n,k-1)-T(n-1,k))*col(n)` -/
def P14392944641066899387.Spec : Prop :=
  ∀ n, P14392944641066899387.a n = A143084 n

end A143084

/-! ## A143084.P18380382126966332893

`row(n)*T(n-1,k)-(T(n-1,k)-2*T(n,k-1))*col(n)` with `a(0)=1`
-/

namespace A143084.P18380382126966332893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A143084.P18380382126966332893

namespace A143084

/-- `row(n)*T(n-1,k)-(T(n-1,k)-2*T(n,k-1))*col(n)` -/
def P18380382126966332893.Spec : Prop :=
  ∀ n, P18380382126966332893.a n = A143084 n

end A143084

/-! ## A143084.P17135700921009993612

`T(n-1,k+1)+(row(n)+col(n))*T(col(n), row(n)-1)` with `a(0)=1`
-/

namespace A143084.P17135700921009993612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpRight a n + (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triRow n : ℤ) - 1)

end

end A143084.P17135700921009993612

namespace A143084

/-- `T(n-1,k+1)+(row(n)+col(n))*T(col(n), row(n)-1)` -/
def P17135700921009993612.Spec : Prop :=
  ∀ n, (P17135700921009993612.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P17645620774275274829

`A051162(n)!`
-/

namespace A143084.P17645620774275274829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A051162 n).toNat

end

end A143084.P17645620774275274829

namespace A143084

/-- `A051162(n)!` -/
def P17645620774275274829.Spec : Prop :=
  ∀ n, (P17645620774275274829.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P6223651982741016677

`A134478(n)!`
-/

namespace A143084.P6223651982741016677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A134478 n).toNat

end

end A143084.P6223651982741016677

namespace A143084

/-- `A134478(n)!` -/
def P6223651982741016677.Spec : Prop :=
  ∀ n, (P6223651982741016677.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P5366876834549592109

`log2(A368043(n))!`
-/

namespace A143084.P5366876834549592109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A368043 n : ℝ))).toNat

end

end A143084.P5366876834549592109

namespace A143084

/-- `log2(A368043(n))!` -/
def P5366876834549592109.Spec : Prop :=
  ∀ n, (P5366876834549592109.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P2435710466570227580

`(A002262(n)+∑[char[∑[n+1]]])!`
-/

namespace A143084.P2435710466570227580
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A143084.P2435710466570227580

namespace A143084

/-- `(A002262(n)+∑[char[∑[n+1]]])!` -/
def P2435710466570227580.Spec : Prop :=
  ∀ n, (P2435710466570227580.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P14442534132416000409

`A053186(A061885(n))!`
-/

namespace A143084.P14442534132416000409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A053186 (A061885 n).toNat).toNat

end

end A143084.P14442534132416000409

namespace A143084

/-- `A053186(A061885(n))!` -/
def P14442534132416000409.Spec : Prop :=
  ∀ n, (P14442534132416000409.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P12790254383771614035

`A003056(A245300(n))!`
-/

namespace A143084.P12790254383771614035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A003056 (A245300 n).toNat).toNat

end

end A143084.P12790254383771614035

namespace A143084

/-- `A003056(A245300(n))!` -/
def P12790254383771614035.Spec : Prop :=
  ∀ n, (P12790254383771614035.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P3133712146309956598

`A294317(A061579(n))!`
-/

namespace A143084.P3133712146309956598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A294317 (A061579 n).toNat).toNat

end

end A143084.P3133712146309956598

namespace A143084

/-- `A294317(A061579(n))!` -/
def P3133712146309956598.Spec : Prop :=
  ∀ n, (P3133712146309956598.a n : ℤ) = A143084 n

end A143084

/-! ## A143084.P12048826703474308067

`A081123(A131421(n+1))`
-/

namespace A143084.P12048826703474308067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A131421 (n + 1)).toNat

end

end A143084.P12048826703474308067

namespace A143084

/-- `A081123(A131421(n+1))` -/
def P12048826703474308067.Spec : Prop :=
  ∀ n, P12048826703474308067.a n = A143084 n

end A143084

/-! ## A143084.P3658688410911315155

`A046899(n)*A143216(n)`
-/

namespace A143084.P3658688410911315155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A143216 n

end

end A143084.P3658688410911315155

namespace A143084

/-- `A046899(n)*A143216(n)` -/
def P3658688410911315155.Spec : Prop :=
  ∀ n, P3658688410911315155.a n = A143084 n

end A143084

/-! ## A143084.P9047049756802501824

`A098361(n)*A113025(n)`
-/

namespace A143084.P9047049756802501824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A113025 n

end

end A143084.P9047049756802501824

namespace A143084

/-- `A098361(n)*A113025(n)` -/
def P9047049756802501824.Spec : Prop :=
  ∀ n, P9047049756802501824.a n = A143084 n

end A143084

/-! ## A143084.P189625397934077115

`A008279(n)*A377660(n)`
-/

namespace A143084.P189625397934077115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A377660 n

end

end A143084.P189625397934077115

namespace A143084

/-- `A008279(n)*A377660(n)` -/
def P189625397934077115.Spec : Prop :=
  ∀ n, P189625397934077115.a n = A143084 n

end A143084

/-! ## A143084.P14946525248728518296

`A370418(n)/A119502(n)`
-/

namespace A143084.P14946525248728518296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370418 n : ℚ) / (A119502 n : ℚ)

end

end A143084.P14946525248728518296

namespace A143084

/-- `A370418(n)/A119502(n)` -/
def P14946525248728518296.Spec : Prop :=
  ∀ n, P14946525248728518296.a n = (A143084 n : ℚ)

end A143084

/-! ## A143084.P17429465246249486350

`(A003056(n)+A002262(n))!`
-/

namespace A143084.P17429465246249486350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A003056 n + A002262 n).toNat

end

end A143084.P17429465246249486350

namespace A143084

/-- `(A003056(n)+A002262(n))!` -/
def P17429465246249486350.Spec : Prop :=
  ∀ n, (P17429465246249486350.a n : ℤ) = A143084 n

end A143084

/-!
# A143085: Triangle read by rows: T(n,k) = (n + 1)*(n + k)!.

The programs for A143085, the canonical program `A143085.P14366794121963338250` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143085 has offset 0).

The definition of A143085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)*(row(n)+col(n))!` (program `A143085.P14366794121963338250`, by `A143085.P14366794121963338250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143085.P14366794121963338250

`(row(n)+1)*(row(n)+col(n))!`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143085

/-- `(row(n)+1)*(row(n)+col(n))!` -/
def P14366794121963338250.Spec : Prop :=
  ∀ n, (P14366794121963338250.a n : ℤ) = A143085 n

theorem P14366794121963338250.correct : P14366794121963338250.Spec := by
  intro n
  simp only [A143085]

end A143085

/-! ## A143085.P6806142786398765468

`(row(n)+1)*(col(n)+row(n))!`
-/

namespace A143085.P6806142786398765468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1) * Nat.factorial (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n)

end

end A143085.P6806142786398765468

namespace A143085

/-- `(row(n)+1)*(col(n)+row(n))!` -/
def P6806142786398765468.Spec : Prop :=
  ∀ n, (P6806142786398765468.a n : ℤ) = A143085 n

theorem P6806142786398765468.correct : P6806142786398765468.Spec := by
  intro n
  simp only [A143085, Nat.add_sub_cancel, A143085.P6806142786398765468.a, A143085.P14366794121963338250.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143085

/-! ## A143085.P9603329034444875828

`(n-C(∑[char[∑[n+1]]], 2))!*∑[char[∑[n]]]`
-/

namespace A143085.P9603329034444875828
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

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat * (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A143085.P9603329034444875828

namespace A143085

/-- `(n-C(∑[char[∑[n+1]]], 2))!*∑[char[∑[n]]]` -/
def P9603329034444875828.Spec : Prop :=
  ∀ n, (P9603329034444875828.a n : ℤ) = A143085 n

end A143085

/-! ## A143085.P12660079160124521236

`∑[char[∑[n]]]*A143084(n)`
-/

namespace A143085.P12660079160124521236
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A143084 n

end

end A143085.P12660079160124521236

namespace A143085

/-- `∑[char[∑[n]]]*A143084(n)` -/
def P12660079160124521236.Spec : Prop :=
  ∀ n, P12660079160124521236.a n = A143085 n

end A143085

/-! ## A143085.P8079856400175487911

`A051162(n)!*∑[char[∑[n]]]`
-/

namespace A143085.P8079856400175487911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A051162 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143085.P8079856400175487911

namespace A143085

/-- `A051162(n)!*∑[char[∑[n]]]` -/
def P8079856400175487911.Spec : Prop :=
  ∀ n, (P8079856400175487911.a n : ℤ) = A143085 n

end A143085

/-! ## A143085.P10305058479963851661

`A134478(n)!*∑[char[∑[n]]]`
-/

namespace A143085.P10305058479963851661
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A134478 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143085.P10305058479963851661

namespace A143085

/-- `A134478(n)!*∑[char[∑[n]]]` -/
def P10305058479963851661.Spec : Prop :=
  ∀ n, (P10305058479963851661.a n : ℤ) = A143085 n

end A143085

/-! ## A143085.P143473529718251881

`∑[char[∑[n]]]*A000142(n-C(∑[char[∑[n+1]]], 2))`
-/

namespace A143085.P143473529718251881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000142 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2)

end

end A143085.P143473529718251881

namespace A143085

/-- `∑[char[∑[n]]]*A000142(n-C(∑[char[∑[n+1]]], 2))` -/
def P143473529718251881.Spec : Prop :=
  ∀ n, P143473529718251881.a n = A143085 n

end A143085

/-! ## A143085.P7612276507453321770

`A068424(n+1)*A377660(n)`
-/

namespace A143085.P7612276507453321770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (n + 1) * A377660 n

end

end A143085.P7612276507453321770

namespace A143085

/-- `A068424(n+1)*A377660(n)` -/
def P7612276507453321770.Spec : Prop :=
  ∀ n, P7612276507453321770.a n = A143085 n

end A143085

/-!
# A143086: Triangle read by rows: T(n,k) = 2^(k + 1) - 1 if k < = floor(n/2), otherwise 2^(n - k + 1) - 1, for 0 <= k <= n.

The programs for A143086, the canonical program `A143086.P9163126404409703882` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143086 has offset 0).

The definition of A143086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143086.P5597222455193351769

`1+2*T(n-2,k-1)` with `a(0)=1`
-/

namespace A143086.P5597222455193351769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + 2 * SequenceMachineLib.triUp2Left a n

end

end A143086.P5597222455193351769

namespace A143086

/-- `1+2*T(n-2,k-1)` -/
def P5597222455193351769.Spec : Prop :=
  ∀ n, (P5597222455193351769.a n : ℤ) = A143086 n

end A143086

/-! ## A143086.P12452828640238637492

`or(1, 2*T(n-2,k-1))` with `a(0)=1`
-/

namespace A143086.P12452828640238637492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * SequenceMachineLib.triUp2Left a n)

end

end A143086.P12452828640238637492

namespace A143086

/-- `or(1, 2*T(n-2,k-1))` -/
def P12452828640238637492.Spec : Prop :=
  ∀ n, (P12452828640238637492.a n : ℤ) = A143086 n

end A143086

/-! ## A143086.P5797420712683627134

`xor(1, 2*T(n-2,k-1))` with `a(0)=1`
-/

namespace A143086.P5797420712683627134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * SequenceMachineLib.triUp2Left a n)

end

end A143086.P5797420712683627134

namespace A143086

/-- `xor(1, 2*T(n-2,k-1))` -/
def P5797420712683627134.Spec : Prop :=
  ∀ n, (P5797420712683627134.a n : ℤ) = A143086 n

end A143086

/-! ## A143086.P9332845869242717788

`1+T(n-2,k-1)+T(n-2,k-1)` with `a(0)=1`
-/

namespace A143086.P9332845869242717788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp2Left a n

end

end A143086.P9332845869242717788

namespace A143086

/-- `1+T(n-2,k-1)+T(n-2,k-1)` -/
def P9332845869242717788.Spec : Prop :=
  ∀ n, (P9332845869242717788.a n : ℤ) = A143086 n

end A143086

/-! ## A143086.P16676659627882088110

`1-2*(T(n-2,k-1)-2*T(n-2,k-1))` with `a(0)=1`
-/

namespace A143086.P16676659627882088110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * (SequenceMachineLib.triUp2Left a n - 2 * SequenceMachineLib.triUp2Left a n)

end

end A143086.P16676659627882088110

namespace A143086

/-- `1-2*(T(n-2,k-1)-2*T(n-2,k-1))` -/
def P16676659627882088110.Spec : Prop :=
  ∀ n, P16676659627882088110.a n = A143086 n

end A143086

/-! ## A143086.P11108451125740440151

`2*T(row(n)-2, col(n)-1)+1` with `a(0)=1`
-/

namespace A143086.P11108451125740440151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 1) + 1

end

end A143086.P11108451125740440151

namespace A143086

/-- `2*T(row(n)-2, col(n)-1)+1` -/
def P11108451125740440151.Spec : Prop :=
  ∀ n, (P11108451125740440151.a n : ℤ) = A143086 n

end A143086

/-! ## A143086.P12563882263414027380

`2*A144464(n)-1`
-/

namespace A143086.P12563882263414027380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144464 n - 1

end

end A143086.P12563882263414027380

namespace A143086

/-- `2*A144464(n)-1` -/
def P12563882263414027380.Spec : Prop :=
  ∀ n, P12563882263414027380.a n = A143086 n

end A143086

/-! ## A143086.P12789137984413210668

`2^A003983(n+1)-1`
-/

namespace A143086.P12789137984413210668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003983 (n + 1) : ℤ) - 1

end

end A143086.P12789137984413210668

namespace A143086

/-- `2^A003983(n+1)-1` -/
def P12789137984413210668.Spec : Prop :=
  ∀ n, P12789137984413210668.a n = (A143086 n : ℚ)

end A143086

/-! ## A143086.P7577859828211644145

`(2^(C(comp[∑[n]]-n, 2)-n)-1)%(2^A002260(n+1))`
-/

namespace A143086.P7577859828211644145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ)))

end

end A143086.P7577859828211644145

namespace A143086

/-- `(2^(C(comp[∑[n]]-n, 2)-n)-1)%(2^A002260(n+1))` -/
def P7577859828211644145.Spec : Prop :=
  ∀ n, P7577859828211644145.a n = A143086 n

end A143086

/-! ## A143086.P9163126404409703882

`A126646(A004197(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143086

/-- `A126646(A004197(n))` -/
def P9163126404409703882.Spec : Prop :=
  ∀ n, P9163126404409703882.a n = A143086 n

theorem P9163126404409703882.correct : P9163126404409703882.Spec := by
  intro n
  simp only [A143086]

end A143086

/-! ## A143086.P7653375388338850708

`A052551(A157458(n))`
-/

namespace A143086.P7653375388338850708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A157458 n).toNat

end

end A143086.P7653375388338850708

namespace A143086

/-- `A052551(A157458(n))` -/
def P7653375388338850708.Spec : Prop :=
  ∀ n, P7653375388338850708.a n = A143086 n

end A143086

/-! ## A143086.P11561408790675943280

`A000225(A003983(n+1))`
-/

namespace A143086.P11561408790675943280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A003983 (n + 1)).toNat

end

end A143086.P11561408790675943280

namespace A143086

/-- `A000225(A003983(n+1))` -/
def P11561408790675943280.Spec : Prop :=
  ∀ n, P11561408790675943280.a n = A143086 n

end A143086

/-! ## A143086.P13491970440708635119

`A078446(A106314(n+1))`
-/

namespace A143086.P13491970440708635119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (A106314 (n + 1)).toNat

end

end A143086.P13491970440708635119

namespace A143086

/-- `A078446(A106314(n+1))` -/
def P13491970440708635119.Spec : Prop :=
  ∀ n, P13491970440708635119.a n = A143086 n

end A143086

/-! ## A143086.P12176686128365866

`gcd(A115450(n), A143088(n))`
-/

namespace A143086.P12176686128365866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115450 n) (A143088 n)

end

end A143086.P12176686128365866

namespace A143086

/-- `gcd(A115450(n), A143088(n))` -/
def P12176686128365866.Spec : Prop :=
  ∀ n, (P12176686128365866.a n : ℤ) = A143086 n

end A143086

/-! ## A143086.P6161116689363866562

`xor(A131816(n), A271710(n))`
-/

namespace A143086.P6161116689363866562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131816 n) (A271710 n)

end

end A143086.P6161116689363866562

namespace A143086

/-- `xor(A131816(n), A271710(n))` -/
def P6161116689363866562.Spec : Prop :=
  ∀ n, P6161116689363866562.a n = A143086 n

end A143086

/-! ## A143086.P3623246172885443864

`A130330(n)%A059214(n+1)`
-/

namespace A143086.P3623246172885443864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130330 n) (A059214 (n + 1))

end

end A143086.P3623246172885443864

namespace A143086

/-- `A130330(n)%A059214(n+1)` -/
def P3623246172885443864.Spec : Prop :=
  ∀ n, P3623246172885443864.a n = A143086 n

end A143086

/-! ## A143086.P12344094260966056254

`xor(A271709(n)-1, A271710(n))`
-/

namespace A143086.P12344094260966056254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A271709 n - 1) (A271710 n)

end

end A143086.P12344094260966056254

namespace A143086

/-- `xor(A271709(n)-1, A271710(n))` -/
def P12344094260966056254.Spec : Prop :=
  ∀ n, P12344094260966056254.a n = A143086 n

end A143086

/-! ## A143086.P18110440875114637107

`A004070(A168281(n+1))`
-/

namespace A143086.P18110440875114637107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A168281 (n + 1)).toNat

end

end A143086.P18110440875114637107

namespace A143086

/-- `A004070(A168281(n+1))` -/
def P18110440875114637107.Spec : Prop :=
  ∀ n, P18110440875114637107.a n = A143086 n

end A143086

/-! ## A143086.P7283471049830674762

`A130330(A286150(n))`
-/

namespace A143086.P7283471049830674762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A286150 n).toNat

end

end A143086.P7283471049830674762

namespace A143086

/-- `A130330(A286150(n))` -/
def P7283471049830674762.Spec : Prop :=
  ∀ n, P7283471049830674762.a n = A143086 n

end A143086

/-! ## A143086.P3929081808849889906

`A143087(n)/A007318(n)`
-/

namespace A143086.P3929081808849889906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143087 n : ℚ) / (A007318 n : ℚ)

end

end A143086.P3929081808849889906

namespace A143086

/-- `A143087(n)/A007318(n)` -/
def P3929081808849889906.Spec : Prop :=
  ∀ n, P3929081808849889906.a n = (A143086 n : ℚ)

end A143086

/-!
# A143087: Triangle read by rows: T(n,k) = (2*2^min(k,n-k) - 1)*binomial(n,k).

The programs for A143087, the canonical program `A143087.P14732479182286257482` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143087 has offset 0).

The definition of A143087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143087.P14732479182286257482

`A007318(n)*A143086(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143087

/-- `A007318(n)*A143086(n)` -/
def P14732479182286257482.Spec : Prop :=
  ∀ n, P14732479182286257482.a n = A143087 n

theorem P14732479182286257482.correct : P14732479182286257482.Spec := by
  intro n
  simp only [A143087]

end A143087

/-! ## A143087.P3792849920321632286

`(2^A003983(n+1)-1)*A007318(n)`
-/

namespace A143087.P3792849920321632286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A003983 (n + 1) : ℤ) - 1) * (A007318 n : ℚ)

end

end A143087.P3792849920321632286

namespace A143087

/-- `(2^A003983(n+1)-1)*A007318(n)` -/
def P3792849920321632286.Spec : Prop :=
  ∀ n, P3792849920321632286.a n = (A143087 n : ℚ)

end A143087

/-! ## A143087.P9700195880587729749

`A007318(n)*A126646(A004197(n))`
-/

namespace A143087.P9700195880587729749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126646 (A004197 n).toNat

end

end A143087.P9700195880587729749

namespace A143087

/-- `A007318(n)*A126646(A004197(n))` -/
def P9700195880587729749.Spec : Prop :=
  ∀ n, P9700195880587729749.a n = A143087 n

end A143087

/-! ## A143087.P1754699130567066111

`A007318(n)*A000203(A144464(n))`
-/

namespace A143087.P1754699130567066111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000203 (A144464 n).toNat

end

end A143087.P1754699130567066111

namespace A143087

/-- `A007318(n)*A000203(A144464(n))` -/
def P1754699130567066111.Spec : Prop :=
  ∀ n, P1754699130567066111.a n = A143087 n

end A143087

/-! ## A143087.P4105817835195795327

`A007318(n)*A000203(sqrt(A152716(n)))`
-/

namespace A143087.P4105817835195795327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000203 (SequenceMachineLib.roundAway (Real.sqrt (A152716 n : ℝ))).toNat

end

end A143087.P4105817835195795327

namespace A143087

/-- `A007318(n)*A000203(sqrt(A152716(n)))` -/
def P4105817835195795327.Spec : Prop :=
  ∀ n, P4105817835195795327.a n = A143087 n

end A143087

/-! ## A143087.P7006354439263795479

`A007318(n)*A000203(2^A004197(n))`
-/

namespace A143087.P7006354439263795479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A143087.P7006354439263795479

namespace A143087

/-- `A007318(n)*A000203(2^A004197(n))` -/
def P7006354439263795479.Spec : Prop :=
  ∀ n, P7006354439263795479.a n = A143087 n

end A143087

/-! ## A143087.P537798575128859616

`A007318(n)*A006257(A131816(n))`
-/

namespace A143087.P537798575128859616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A006257 (A131816 n).toNat

end

end A143087.P537798575128859616

namespace A143087

/-- `A007318(n)*A006257(A131816(n))` -/
def P537798575128859616.Spec : Prop :=
  ∀ n, P537798575128859616.a n = A143087 n

end A143087

/-! ## A143087.P12997727384068857132

`2*A144463(n)-A007318(n)`
-/

namespace A143087.P12997727384068857132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144463 n - A007318 n

end

end A143087.P12997727384068857132

namespace A143087

/-- `2*A144463(n)-A007318(n)` -/
def P12997727384068857132.Spec : Prop :=
  ∀ n, P12997727384068857132.a n = A143087 n

end A143087

/-! ## A143087.P8733780127528040232

`A005843(A144463(n))-A007318(n)`
-/

namespace A143087.P8733780127528040232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A144463 n).toNat - A007318 n

end

end A143087.P8733780127528040232

namespace A143087

/-- `A005843(A144463(n))-A007318(n)` -/
def P8733780127528040232.Spec : Prop :=
  ∀ n, P8733780127528040232.a n = A143087 n

end A143087

/-! ## A143087.P1880330547754262250

`A007318(n)*A000203(A144463(n)/A007318(n))`
-/

namespace A143087.P1880330547754262250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000203 (SequenceMachineLib.roundAway ((A144463 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A143087.P1880330547754262250

namespace A143087

/-- `A007318(n)*A000203(A144463(n)/A007318(n))` -/
def P1880330547754262250.Spec : Prop :=
  ∀ n, P1880330547754262250.a n = A143087 n

end A143087

/-!
# A143088: Triangle T(n,m) = (2^(m+1) - 1) * (2^(n-m+1) - 1), read by rows, 0 <= m <= n.

The programs for A143088, the canonical program `A143088.P16386320517501294381` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143088 has offset 0).

The definition of A143088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143088.P16386320517501294381

`(2^(col(n)+1)-1)*(2^(row(n)-col(n)+1)-1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143088

/-- `(2^(col(n)+1)-1)*(2^(row(n)-col(n)+1)-1)` -/
def P16386320517501294381.Spec : Prop :=
  ∀ n, P16386320517501294381.a n = (A143088 n : ℚ)

end A143088

/-! ## A143088.P1317718033806576133

`2*(T(n,k-1)+T(n-1,k)-2*T(n-1,k-1))+1` with `a(0)=1`
-/

namespace A143088.P1317718033806576133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUpLeft a n) + 1

end

end A143088.P1317718033806576133

namespace A143088

/-- `2*(T(n,k-1)+T(n-1,k)-2*T(n-1,k-1))+1` -/
def P1317718033806576133.Spec : Prop :=
  ∀ n, P1317718033806576133.a n = A143088 n

end A143088

/-! ## A143088.P17741388131547802437

`2*(T(n-1,k-1)+T(n-1,k)-2*T(n-2,k-1))+1` with `a(0)=1`
-/

namespace A143088.P17741388131547802437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp2Left a n) + 1

end

end A143088.P17741388131547802437

namespace A143088

/-- `2*(T(n-1,k-1)+T(n-1,k)-2*T(n-2,k-1))+1` -/
def P17741388131547802437.Spec : Prop :=
  ∀ n, P17741388131547802437.a n = A143088 n

end A143088

/-! ## A143088.P15454153101929935569

`T(col(n), T(1, T(n-1,k+1)-1))+2*T(n-1,k)` with `a(0)=1`
-/

namespace A143088.P15454153101929935569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triAt a 1 (((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) - 1) : ℕ) : ℤ) + 2 * SequenceMachineLib.triUp a n

end

end A143088.P15454153101929935569

namespace A143088

/-- `T(col(n), T(1, T(n-1,k+1)-1))+2*T(n-1,k)` -/
def P15454153101929935569.Spec : Prop :=
  ∀ n, (P15454153101929935569.a n : ℤ) = A143088 n

end A143088

/-! ## A143088.P11624119878523545400

`T(col(n), T(1, T(n-1,k)+2))+2*T(n-1,k)` with `a(0)=1`
-/

namespace A143088.P11624119878523545400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUp a n + 2 : ℤ) : ℕ) : ℤ) + 2 * SequenceMachineLib.triUp a n

end

end A143088.P11624119878523545400

namespace A143088

/-- `T(col(n), T(1, T(n-1,k)+2))+2*T(n-1,k)` -/
def P11624119878523545400.Spec : Prop :=
  ∀ n, (P11624119878523545400.a n : ℤ) = A143088 n

end A143088

/-! ## A143088.P4683585698973377201

`T(n-1,k-1)+2^(row(n)+1)-2^col(n)` with `a(0)=1`
-/

namespace A143088.P4683585698973377201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) - (2 ^ SequenceMachineLib.triCol n : ℤ))

end

end A143088.P4683585698973377201

namespace A143088

/-- `T(n-1,k-1)+2^(row(n)+1)-2^col(n)` -/
def P4683585698973377201.Spec : Prop :=
  ∀ n, P4683585698973377201.a n = A143088 n

end A143088

/-! ## A143088.P6872292763853464646

`A130328(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A143088.P6872292763853464646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130328 n + SequenceMachineLib.triUpLeft a n

end

end A143088.P6872292763853464646

namespace A143088

/-- `A130328(n)+T(n-1,k-1)` -/
def P6872292763853464646.Spec : Prop :=
  ∀ n, P6872292763853464646.a n = A143088 n

end A143088

/-! ## A143088.P6054783085742983904

`A204985(n+1)-A130330(n)`
-/

namespace A143088.P6054783085742983904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204985 (n + 1) - A130330 n

end

end A143088.P6054783085742983904

namespace A143088

/-- `A204985(n+1)-A130330(n)` -/
def P6054783085742983904.Spec : Prop :=
  ∀ n, P6054783085742983904.a n = A143088 n

end A143088

/-! ## A143088.P7342567358618784049

`∑[A130328(n)-A023758(n+1)]`
-/

namespace A143088.P7342567358618784049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n - A023758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143088.P7342567358618784049

namespace A143088

/-- `∑[A130328(n)-A023758(n+1)]` -/
def P7342567358618784049.Spec : Prop :=
  ∀ n, P7342567358618784049.a n = A143088 n

end A143088

/-! ## A143088.P10381068236285559706

`2*(A130328(n)-A130321(n))+1`
-/

namespace A143088.P10381068236285559706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130328 n - A130321 n) + 1

end

end A143088.P10381068236285559706

namespace A143088

/-- `2*(A130328(n)-A130321(n))+1` -/
def P10381068236285559706.Spec : Prop :=
  ∀ n, P10381068236285559706.a n = A143088 n

end A143088

/-! ## A143088.P10905435905903530067

`A204985(n+1)+1-A090988(n+1)`
-/

namespace A143088.P10905435905903530067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204985 (n + 1) + (1 - A090988 (n + 1))

end

end A143088.P10905435905903530067

namespace A143088

/-- `A204985(n+1)+1-A090988(n+1)` -/
def P10905435905903530067.Spec : Prop :=
  ∀ n, P10905435905903530067.a n = A143088 n

end A143088

/-! ## A143088.P1376703919205582163

`A126646(A002262(n))*A130330(n)`
-/

namespace A143088.P1376703919205582163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A002262 n).toNat * A130330 n

end

end A143088.P1376703919205582163

namespace A143088

/-- `A126646(A002262(n))*A130330(n)` -/
def P1376703919205582163.Spec : Prop :=
  ∀ n, P1376703919205582163.a n = A143088 n

end A143088

/-! ## A143088.P6435511459513974931

`A130330(A061579(n))*A130330(n)`
-/

namespace A143088.P6435511459513974931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A061579 n).toNat * A130330 n

end

end A143088.P6435511459513974931

namespace A143088

/-- `A130330(A061579(n))*A130330(n)` -/
def P6435511459513974931.Spec : Prop :=
  ∀ n, P6435511459513974931.a n = A143088 n

end A143088

/-! ## A143088.P15689077762844044979

`A043569(n+1)-A130330(A061579(n))`
-/

namespace A143088.P15689077762844044979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - A130330 (A061579 n).toNat

end

end A143088.P15689077762844044979

namespace A143088

/-- `A043569(n+1)-A130330(A061579(n))` -/
def P15689077762844044979.Spec : Prop :=
  ∀ n, P15689077762844044979.a n = A143088 n

end A143088

/-! ## A143088.P17811251797190013399

`A000225(A002260(n+1))*A130330(n)`
-/

namespace A143088.P17811251797190013399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002260 (n + 1)).toNat * A130330 n

end

end A143088.P17811251797190013399

namespace A143088

/-- `A000225(A002260(n+1))*A130330(n)` -/
def P17811251797190013399.Spec : Prop :=
  ∀ n, P17811251797190013399.a n = A143088 n

end A143088

/-! ## A143088.P8126465258339880396

`A130330(A114327(n)+n)*A130330(n)`
-/

namespace A143088.P8126465258339880396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A114327 n + (n : ℤ)).toNat * A130330 n

end

end A143088.P8126465258339880396

namespace A143088

/-- `A130330(A114327(n)+n)*A130330(n)` -/
def P8126465258339880396.Spec : Prop :=
  ∀ n, P8126465258339880396.a n = A143088 n

end A143088

/-! ## A143088.P369561757881370488

`A043569(n+1)-A000225(A002260(n+1))`
-/

namespace A143088.P369561757881370488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - A000225 (A002260 (n + 1)).toNat

end

end A143088.P369561757881370488

namespace A143088

/-- `A043569(n+1)-A000225(A002260(n+1))` -/
def P369561757881370488.Spec : Prop :=
  ∀ n, P369561757881370488.a n = A143088 n

end A143088

/-! ## A143088.P16170126563033463648

`A126646(A002260(n+1)-1)*A130330(n)`
-/

namespace A143088.P16170126563033463648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A002260 (n + 1) - 1).toNat * A130330 n

end

end A143088.P16170126563033463648

namespace A143088

/-- `A126646(A002260(n+1)-1)*A130330(n)` -/
def P16170126563033463648.Spec : Prop :=
  ∀ n, P16170126563033463648.a n = A143088 n

end A143088

/-! ## A143088.P11514778192396398270

`A000225(A002260(n+1))*A000225(A004736(n+1))`
-/

namespace A143088.P11514778192396398270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002260 (n + 1)).toNat * A000225 (A004736 (n + 1)).toNat

end

end A143088.P11514778192396398270

namespace A143088

/-- `A000225(A002260(n+1))*A000225(A004736(n+1))` -/
def P11514778192396398270.Spec : Prop :=
  ∀ n, P11514778192396398270.a n = A143088 n

end A143088

/-! ## A143088.P15781741945966673443

`∑[A099627(A038722(n+1))-A099627(n)]`
-/

namespace A143088.P15781741945966673443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A038722 (n + 1)).toNat - A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143088.P15781741945966673443

namespace A143088

/-- `∑[A099627(A038722(n+1))-A099627(n)]` -/
def P15781741945966673443.Spec : Prop :=
  ∀ n, P15781741945966673443.a n = A143088 n

end A143088

/-!
# A143089: a(n) = a(n - a(n-1)) + a(floor(2*n/3)).

The programs for A143089, the canonical program `A143089.P7139269688086855013` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143089 has offset 0).

The definition of A143089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(floor(2*n/3))` (program `A143089.P7139269688086855013`, by `A143089.P7139269688086855013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143089.P7139269688086855013

`a(n-a(n-1))+a(floor(2*n/3))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143089

/-- `a(n-a(n-1))+a(floor(2*n/3))` -/
def P7139269688086855013.Spec : Prop :=
  ∀ n, (P7139269688086855013.a n : ℤ) = A143089 n

theorem P7139269688086855013.correct : P7139269688086855013.Spec := by
  intro n
  simp only [A143089]

end A143089

/-! ## A143089.P2194054232903627393

`A083894(n+1)+A014499(2^n-A074286(2^n))`
-/

namespace A143089.P2194054232903627393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (n + 1) + A014499 ((2 ^ n : ℤ) - A074286 (2 ^ n)).toNat

end

end A143089.P2194054232903627393

namespace A143089

/-- `A083894(n+1)+A014499(2^n-A074286(2^n))` -/
def P2194054232903627393.Spec : Prop :=
  ∀ n, P2194054232903627393.a n = A143089 n

end A143089

/-! ## A143089.P10727094419583831713

`A063725(A161217(n))+A004001(n+1)`
-/

namespace A143089.P10727094419583831713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A161217 n).toNat + A004001 (n + 1)

end

end A143089.P10727094419583831713

namespace A143089

/-- `A063725(A161217(n))+A004001(n+1)` -/
def P10727094419583831713.Spec : Prop :=
  ∀ n, P10727094419583831713.a n = A143089 n

end A143089

/-! ## A143089.P1628288397465013634

`A084558(A255170(n+1))+n%floor(sqrt(n+1))`
-/

namespace A143089.P1628288397465013634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A255170 (n + 1)).toNat + ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)

end

end A143089.P1628288397465013634

namespace A143089

/-- `A084558(A255170(n+1))+n%floor(sqrt(n+1))` -/
def P1628288397465013634.Spec : Prop :=
  ∀ n, P1628288397465013634.a n = A143089 n

end A143089

/-!
# A143090: Aliquot sequence starting at 12.

The programs for A143090, the canonical program `A143090.P16008400457537948654` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143090 has offset 0).

The definition of A143090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143090.P16008400457537948654

`A001065(A028310(a(n-1)))` with `a(0)=12`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143090

/-- `A001065(A028310(a(n-1)))` -/
def P16008400457537948654.Spec : Prop :=
  ∀ n, P16008400457537948654.a n = A143090 n

theorem P16008400457537948654.correct : P16008400457537948654.Spec := by
  intro n
  simp only [A143090]

end A143090

/-!
# A143091: a(n) = a(floor(2n/3)) + a(floor(n/3)) starting a(0)=a(1)=1.

The programs for A143091, the canonical program `A143091.P9583456665024342814` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143091 has offset 0).

The definition of A143091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(2*n/3))+a(floor(n/3))` (program `A143091.P9583456665024342814`, by `A143091.P9583456665024342814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143091.P9583456665024342814

`a(floor(2*n/3))+a(floor(n/3))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143091

/-- `a(floor(2*n/3))+a(floor(n/3))` -/
def P9583456665024342814.Spec : Prop :=
  ∀ n, (P9583456665024342814.a n : ℤ) = A143091 n

theorem P9583456665024342814.correct : P9583456665024342814.Spec := by
  intro n
  simp only [A143091]

end A143091

/-! ## A143091.P6585082720634746986

`A256502(A163867(n))`
-/

namespace A143091.P6585082720634746986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A163867 n).toNat

end

end A143091.P6585082720634746986

namespace A143091

/-- `A256502(A163867(n))` -/
def P6585082720634746986.Spec : Prop :=
  ∀ n, P6585082720634746986.a n = A143091 n

end A143091

/-! ## A143091.P11447210642240268652

`A163867(n)-A140473(n)`
-/

namespace A143091.P11447210642240268652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163867 n - A140473 n

end

end A143091.P11447210642240268652

namespace A143091

/-- `A163867(n)-A140473(n)` -/
def P11447210642240268652.Spec : Prop :=
  ∀ n, P11447210642240268652.a n = A143091 n

end A143091

/-! ## A143091.P1973538638621994399

`A177151(A163867(n))`
-/

namespace A143091.P1973538638621994399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A163867 n).toNat

end

end A143091.P1973538638621994399

namespace A143091

/-- `A177151(A163867(n))` -/
def P1973538638621994399.Spec : Prop :=
  ∀ n, P1973538638621994399.a n = A143091 n

end A143091

/-!
# A143092: a(n) = a(n - a(n - 1)) + a(a(floor(2*n/3))) with a(0)=a(1)=1.

The programs for A143092, the canonical program `A143092.P4663558955455058748` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143092 has offset 0).

The definition of A143092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(a(floor(2*n/3)))` (program `A143092.P4663558955455058748`, by `A143092.P4663558955455058748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143092.P4663558955455058748

`a(n-a(n-1))+a(a(floor(2*n/3)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143092

/-- `a(n-a(n-1))+a(a(floor(2*n/3)))` -/
def P4663558955455058748.Spec : Prop :=
  ∀ n, (P4663558955455058748.a n : ℤ) = A143092 n

theorem P4663558955455058748.correct : P4663558955455058748.Spec := by
  intro n
  simp only [A143092]

end A143092

/-! ## A143092.P10512578955712089797

`A000120(A162218(n)+A008998(n))`
-/

namespace A143092.P10512578955712089797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A162218 n + A008998 n).toNat

end

end A143092.P10512578955712089797

namespace A143092

/-- `A000120(A162218(n)+A008998(n))` -/
def P10512578955712089797.Spec : Prop :=
  ∀ n, P10512578955712089797.a n = A143092 n

end A143092

/-! ## A143092.P11440854992330810640

`A329697(A218051(n+1)-A099594(n))`
-/

namespace A143092.P11440854992330810640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A218051 (n + 1) - A099594 n).toNat

end

end A143092.P11440854992330810640

namespace A143092

/-- `A329697(A218051(n+1)-A099594(n))` -/
def P11440854992330810640.Spec : Prop :=
  ∀ n, P11440854992330810640.a n = A143092 n

end A143092

/-! ## A143092.P7478462751622607512

`A124762(A060187(n+1))+A122954(n+1)`
-/

namespace A143092.P7478462751622607512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A060187 (n + 1)).toNat + A122954 (n + 1)

end

end A143092.P7478462751622607512

namespace A143092

/-- `A124762(A060187(n+1))+A122954(n+1)` -/
def P7478462751622607512.Spec : Prop :=
  ∀ n, P7478462751622607512.a n = A143092 n

end A143092

/-!
# A143093: Arises in counting relative Milnor rings in K-theory.

The programs for A143093, there is no canonical definition to state claims against.
-/

/-! ## A143093.P2540061077499227776

`A151279(n)+A099495(n)`
-/

namespace A143093.P2540061077499227776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151279 n + A099495 n

end

end A143093.P2540061077499227776

/-! ## A143093.P13781934961141158456

`A212422(n)+A144904(n)`
-/

namespace A143093.P13781934961141158456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212422 n + A144904 n

end

end A143093.P13781934961141158456

/-! ## A143093.P16711495402401712864

`A232164(n)+A151279(n)`
-/

namespace A143093.P16711495402401712864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n + A151279 n

end

end A143093.P16711495402401712864

/-!
# A143094: Arises in counting relative Milnor rings in K-theory.

The programs for A143094, there is no canonical definition to state claims against.
-/

/-! ## A143094.P11283221264316652432

`xor(2*C(n, 3), ∑[A124528(n)])`
-/

namespace A143094.P11283221264316652432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * Nat.choose n 3 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143094.P11283221264316652432

/-! ## A143094.P2885215345998161544

`A286547(A116793(n+1))`
-/

namespace A143094.P2885215345998161544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286547 (A116793 (n + 1)).toNat

end

end A143094.P2885215345998161544

/-! ## A143094.P16333035726773929064

`A350348(A071726(n+1))`
-/

namespace A143094.P16333035726773929064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A071726 (n + 1)).toNat

end

end A143094.P16333035726773929064

/-!
# A143095: (1, 2, 4, 8, ...) interleaved with (4, 8, 16, 32, ...).

The programs for A143095, the canonical program `A143095.P12742843081317708221` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143095 has offset 0).

The definition of A143095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143095.P4913524867943748342

`ogf((1+4x)/(1-2x^2))`
-/

namespace A143095.P4913524867943748342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, -2] n

end

end A143095.P4913524867943748342

namespace A143095

/-- `ogf((1+4x)/(1-2x^2))` -/
def P4913524867943748342.Spec : Prop :=
  ∀ n, P4913524867943748342.a n = A143095 n

end A143095

/-! ## A143095.P12742843081317708221

`2*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143095

/-- `2*a(n-2)` -/
def P12742843081317708221.Spec : Prop :=
  ∀ n, (P12742843081317708221.a n : ℤ) = A143095 n

theorem P12742843081317708221.correct : P12742843081317708221.Spec := by
  intro n
  simp only [A143095]

end A143095

/-! ## A143095.P2393432427849066586

`A135530(n+1)`
-/

namespace A143095.P2393432427849066586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1)

end

end A143095.P2393432427849066586

namespace A143095

/-- `A135530(n+1)` -/
def P2393432427849066586.Spec : Prop :=
  ∀ n, P2393432427849066586.a n = A143095 n

end A143095

/-! ## A143095.P3400856877693411922

`(5-3*(-1)^n)*2^((2*n-1+(-1)^n)/4)/2`
-/

namespace A143095.P3400856877693411922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 - 3 * (-1) ^ n : ℝ) * (2 : ℝ) ^ (((2 * n : ℤ) - 1 + (-1) ^ n : ℚ) / 4 : ℝ) / 2

end

end A143095.P3400856877693411922

namespace A143095

/-- `(5-3*(-1)^n)*2^((2*n-1+(-1)^n)/4)/2` -/
def P3400856877693411922.Spec : Prop :=
  ∀ n, P3400856877693411922.a n = (A143095 n : ℝ)

end A143095

/-! ## A143095.P9643971651683263692

`∏[2/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A143095.P9643971651683263692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A143095.P9643971651683263692

namespace A143095

/-- `∏[2/a(n-1)]` -/
def P9643971651683263692.Spec : Prop :=
  ∀ n, P9643971651683263692.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P4647978020196828984

`2^ceil(xor(1, n+1)/2)`
-/

namespace A143095.P4647978020196828984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(Nat.xor 1 (n + 1) : ℚ) / 2⌉ : ℤ)

end

end A143095.P4647978020196828984

namespace A143095

/-- `2^ceil(xor(1, n+1)/2)` -/
def P4647978020196828984.Spec : Prop :=
  ∀ n, P4647978020196828984.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P5920114321917127950

`2^round(xor(1, n+1)/2)`
-/

namespace A143095.P5920114321917127950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((Nat.xor 1 (n + 1) : ℚ) / 2) : ℤ)

end

end A143095.P5920114321917127950

namespace A143095

/-- `2^round(xor(1, n+1)/2)` -/
def P5920114321917127950.Spec : Prop :=
  ∀ n, P5920114321917127950.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P15824305003380370103

`2^(∑[3*n%2]-n)`
-/

namespace A143095.P15824305003380370103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ)

end

end A143095.P15824305003380370103

namespace A143095

/-- `2^(∑[3*n%2]-n)` -/
def P15824305003380370103.Spec : Prop :=
  ∀ n, P15824305003380370103.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P14242648973465249213

`a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=4`
-/

namespace A143095.P14242648973465249213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A143095.P14242648973465249213

namespace A143095

/-- `a(n-2)/sqrt(1/4)` -/
def P14242648973465249213.Spec : Prop :=
  ∀ n, P14242648973465249213.a n = (A143095 n : ℝ)

end A143095

/-! ## A143095.P1329381692430232261

`2^∑[1-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A143095.P1329381692430232261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A143095.P1329381692430232261

namespace A143095

/-- `2^∑[1-a(n-1)]` -/
def P1329381692430232261.Spec : Prop :=
  ∀ n, P1329381692430232261.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P1306393161655854568

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A143095.P1306393161655854568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A143095.P1306393161655854568

namespace A143095

/-- `a(n-2)+a(n-2)` -/
def P1306393161655854568.Spec : Prop :=
  ∀ n, (P1306393161655854568.a n : ℤ) = A143095 n

theorem P1306393161655854568.correct : P1306393161655854568.Spec := by
  intro n
  simp only [A143095, Nat.add_sub_cancel, A143095.P1306393161655854568.a, A143095.P12742843081317708221.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143095

/-! ## A143095.P4147653713317089808

`gcd(2, n+1)*∏[gcd(2, n+1)]`
-/

namespace A143095.P4147653713317089808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A143095.P4147653713317089808

namespace A143095

/-- `gcd(2, n+1)*∏[gcd(2, n+1)]` -/
def P4147653713317089808.Spec : Prop :=
  ∀ n, (P4147653713317089808.a n : ℤ) = A143095 n

end A143095

/-! ## A143095.P14028866886359761255

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A143095.P14028866886359761255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A143095.P14028866886359761255

namespace A143095

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P14028866886359761255.Spec : Prop :=
  ∀ n, P14028866886359761255.a n = A143095 n

end A143095

/-! ## A143095.P14108354647761805632

`A076736(n+5)`
-/

namespace A143095.P14108354647761805632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 5)

end

end A143095.P14108354647761805632

namespace A143095

/-- `A076736(n+5)` -/
def P14108354647761805632.Spec : Prop :=
  ∀ n, P14108354647761805632.a n = A143095 n

end A143095

/-! ## A143095.P7224091165645917430

`2^A030451(n)`
-/

namespace A143095.P7224091165645917430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A030451 n : ℤ)

end

end A143095.P7224091165645917430

namespace A143095

/-- `2^A030451(n)` -/
def P7224091165645917430.Spec : Prop :=
  ∀ n, P7224091165645917430.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P10859171135264809447

`abs(A137206(n+2))`
-/

namespace A143095.P10859171135264809447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137206 (n + 2)|

end

end A143095.P10859171135264809447

namespace A143095

/-- `abs(A137206(n+2))` -/
def P10859171135264809447.Spec : Prop :=
  ∀ n, P10859171135264809447.a n = A143095 n

end A143095

/-! ## A143095.P1201802720503327587

`A316742(n+1)+1`
-/

namespace A143095.P1201802720503327587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (n + 1) + 1

end

end A143095.P1201802720503327587

namespace A143095

/-- `A316742(n+1)+1` -/
def P1201802720503327587.Spec : Prop :=
  ∀ n, P1201802720503327587.a n = A143095 n

end A143095

/-! ## A143095.P12957919770315751938

`2^A028242(n+1)`
-/

namespace A143095.P12957919770315751938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A028242 (n + 1) : ℤ)

end

end A143095.P12957919770315751938

namespace A143095

/-- `2^A028242(n+1)` -/
def P12957919770315751938.Spec : Prop :=
  ∀ n, P12957919770315751938.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P10838828013215102390

`2^(A052938(n)-1)`
-/

namespace A143095.P10838828013215102390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A052938 n - 1 : ℤ)

end

end A143095.P10838828013215102390

namespace A143095

/-- `2^(A052938(n)-1)` -/
def P10838828013215102390.Spec : Prop :=
  ∀ n, P10838828013215102390.a n = (A143095 n : ℚ)

end A143095

/-! ## A143095.P270796688682536075

`2^A110657(2*n)`
-/

namespace A143095.P270796688682536075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A110657 (2 * n) : ℤ)

end

end A143095.P270796688682536075

namespace A143095

/-- `2^A110657(2*n)` -/
def P270796688682536075.Spec : Prop :=
  ∀ n, P270796688682536075.a n = (A143095 n : ℚ)

end A143095

/-!
# A143096: a(n) = 2*a(n-1)-1, with a(1)=1, a(2)=4, a(3)=5.

The programs for A143096, the canonical program `A143096.P18196558353757811506` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143096 has offset 1).

The definition of A143096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A143096.P18196558353757811506`, by `A143096.P18196558353757811506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143096.P16439679156113864261

`ogf((1+x-5x^2+2x^3)/(1-3x+2x^2))`
-/

namespace A143096.P16439679156113864261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -5, 2] [1, -3, 2] n

end

end A143096.P16439679156113864261

namespace A143096

/-- `ogf((1+x-5x^2+2x^3)/(1-3x+2x^2))` -/
def P16439679156113864261.Spec : Prop :=
  ∀ n, P16439679156113864261.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P18196558353757811506

`2*a(n-1)-1` with `a(0)=1, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143096

/-- `2*a(n-1)-1` -/
def P18196558353757811506.Spec : Prop :=
  ∀ n, P18196558353757811506.a n = A143096 (n + 1)

theorem P18196558353757811506.correct : P18196558353757811506.Spec := by
  intro n
  simp only [A143096, Nat.add_sub_cancel]

end A143096

/-! ## A143096.P12378955540221728681

`char[1]+or(1, 2^n)`
-/

namespace A143096.P12378955540221728681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.lor 1 (2 ^ n)

end

end A143096.P12378955540221728681

namespace A143096

/-- `char[1]+or(1, 2^n)` -/
def P12378955540221728681.Spec : Prop :=
  ∀ n, (P12378955540221728681.a n : ℤ) = A143096 (n + 1)

end A143096

/-! ## A143096.P17060924108775631200

`ceil(acot(n-1))+2^n`
-/

namespace A143096.P17060924108775631200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉ + (2 ^ n : ℤ)

end

end A143096.P17060924108775631200

namespace A143096

/-- `ceil(acot(n-1))+2^n` -/
def P17060924108775631200.Spec : Prop :=
  ∀ n, P17060924108775631200.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P17120346275898760336

`2^n+a(n%n)` with `a(0)=1, a(1)=4`
-/

namespace A143096.P17120346275898760336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 ^ n + a (n % n)

end

end A143096.P17120346275898760336

namespace A143096

/-- `2^n+a(n%n)` -/
def P17120346275898760336.Spec : Prop :=
  ∀ n, (P17120346275898760336.a n : ℤ) = A143096 (n + 1)

end A143096

/-! ## A143096.P2263948835064955593

`lcm(2, a(n-1))-1` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A143096.P2263948835064955593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  (Int.lcm 2 (a (n - 1)) : ℤ) - 1

end

end A143096.P2263948835064955593

namespace A143096

/-- `lcm(2, a(n-1))-1` -/
def P2263948835064955593.Spec : Prop :=
  ∀ n, P2263948835064955593.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P5094865446668805890

`gcd(7, a(n-1))+2^n` with `a(0)=1, a(1)=4`
-/

namespace A143096.P5094865446668805890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.gcd 7 (a (n - 1)) + 2 ^ n

end

end A143096.P5094865446668805890

namespace A143096

/-- `gcd(7, a(n-1))+2^n` -/
def P5094865446668805890.Spec : Prop :=
  ∀ n, (P5094865446668805890.a n : ℤ) = A143096 (n + 1)

end A143096

/-! ## A143096.P18079760622074992912

`a(n-1)+2^(n-1)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A143096.P18079760622074992912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A143096.P18079760622074992912

namespace A143096

/-- `a(n-1)+2^(n-1)` -/
def P18079760622074992912.Spec : Prop :=
  ∀ n, P18079760622074992912.a n = (A143096 (n + 1) : ℚ)

end A143096

/-! ## A143096.P9735552530414050644

`floor(a(n-1)+a(n-1)-1)` with `a(0)=1, a(1)=4, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A143096.P9735552530414050644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A143096.P9735552530414050644

namespace A143096

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P9735552530414050644.Spec : Prop :=
  ∀ n, P9735552530414050644.a n = A143096 (n + 1)

theorem P9735552530414050644.correct : P9735552530414050644.Spec := by
  intro n
  simp only [A143096, Nat.add_sub_cancel, A143096.P9735552530414050644.a, A143096.P18196558353757811506.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143096

/-! ## A143096.P6192024640876710125

`floor(a(n-1))-(1-a(n-1))` with `a(0)=1, a(1)=4, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A143096.P6192024640876710125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A143096.P6192024640876710125

namespace A143096

/-- `floor(a(n-1))-(1-a(n-1))` -/
def P6192024640876710125.Spec : Prop :=
  ∀ n, P6192024640876710125.a n = A143096 (n + 1)

theorem P6192024640876710125.correct : P6192024640876710125.Spec := by
  intro n
  simp only [A143096, Nat.add_sub_cancel, A143096.P6192024640876710125.a, A143096.P18196558353757811506.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143096

/-! ## A143096.P8714368205320257274

`2%n+a(n-1)+a(n-1)-3` with `a(0)=1, a(1)=4`
-/

namespace A143096.P8714368205320257274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((2 % n : ℕ) : ℤ) + (a (n - 1) + (a (n - 1) - 3))

end

end A143096.P8714368205320257274

namespace A143096

/-- `2%n+a(n-1)+a(n-1)-3` -/
def P8714368205320257274.Spec : Prop :=
  ∀ n, P8714368205320257274.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P12926908699083563915

`A083318(n)+char[1]`
-/

namespace A143096.P12926908699083563915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143096.P12926908699083563915

namespace A143096

/-- `A083318(n)+char[1]` -/
def P12926908699083563915.Spec : Prop :=
  ∀ n, P12926908699083563915.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P8266362974434966892

`A127904(n+1)+char[1]`
-/

namespace A143096.P8266362974434966892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143096.P8266362974434966892

namespace A143096

/-- `A127904(n+1)+char[1]` -/
def P8266362974434966892.Spec : Prop :=
  ∀ n, P8266362974434966892.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P16771743756183908842

`char[1]+A155559(n)+1`
-/

namespace A143096.P16771743756183908842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A155559 n + 1)

end

end A143096.P16771743756183908842

namespace A143096

/-- `char[1]+A155559(n)+1` -/
def P16771743756183908842.Spec : Prop :=
  ∀ n, P16771743756183908842.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P3491548452530962584

`(char[1]+2)*A131577(n)+1`
-/

namespace A143096.P3491548452530962584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℤ) * A131577 n + 1

end

end A143096.P3491548452530962584

namespace A143096

/-- `(char[1]+2)*A131577(n)+1` -/
def P3491548452530962584.Spec : Prop :=
  ∀ n, P3491548452530962584.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P12482785955289979640

`record[xor(1, A056469(n)+1)-1]`
-/

namespace A143096.P12482785955289979640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A056469 n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143096.P12482785955289979640

namespace A143096

/-- `record[xor(1, A056469(n)+1)-1]` -/
def P12482785955289979640.Spec : Prop :=
  ∀ n, P12482785955289979640.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P18164421526794649162

`A000051(n)+C(n, a(n-1))` with `a(0)=1`
-/

namespace A143096.P18164421526794649162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000051 n + (Nat.choose n (a (n - 1)).toNat : ℤ)

end

end A143096.P18164421526794649162

namespace A143096

/-- `A000051(n)+C(n, a(n-1))` -/
def P18164421526794649162.Spec : Prop :=
  ∀ n, P18164421526794649162.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P5727706734405668266

`A200947(A299763(n+1))`
-/

namespace A143096.P5727706734405668266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200947 (A299763 (n + 1)).toNat

end

end A143096.P5727706734405668266

namespace A143096

/-- `A200947(A299763(n+1))` -/
def P5727706734405668266.Spec : Prop :=
  ∀ n, P5727706734405668266.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P18301830817168884232

`A171449(n)+A141044(n)`
-/

namespace A143096.P18301830817168884232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 n + A141044 n

end

end A143096.P18301830817168884232

namespace A143096

/-- `A171449(n)+A141044(n)` -/
def P18301830817168884232.Spec : Prop :=
  ∀ n, P18301830817168884232.a n = A143096 (n + 1)

end A143096

/-! ## A143096.P13257540604245210837

`A254667(n)+A132045(n)`
-/

namespace A143096.P13257540604245210837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A132045 n

end

end A143096.P13257540604245210837

namespace A143096

/-- `A254667(n)+A132045(n)` -/
def P13257540604245210837.Spec : Prop :=
  ∀ n, P13257540604245210837.a n = A143096 (n + 1)

end A143096

/-!
# A143097: 3*k - 2 interleaved with 3*k - 1 and 3*k.

The programs for A143097, the canonical program `A143097.P13180012355103576824` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143097 has offset 1).

The definition of A143097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143097.P13180012355103576824

`ogf((1+x+2x^2-2x^3+x^4)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143097

/-- `ogf((1+x+2x^2-2x^3+x^4)/(1-x-x^3+x^4))` -/
def P13180012355103576824.Spec : Prop :=
  ∀ n, P13180012355103576824.a n = A143097 (n + 1)

theorem P13180012355103576824.correct : P13180012355103576824.Spec := by
  intro n
  simp only [A143097, Nat.add_sub_cancel]

end A143097

/-! ## A143097.P17040081613464972265

`ceil(abs(γ-n))%3+n`
-/

namespace A143097.P17040081613464972265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ 3 + (n : ℤ)

end

end A143097.P17040081613464972265

namespace A143097

/-- `ceil(abs(γ-n))%3+n` -/
def P17040081613464972265.Spec : Prop :=
  ∀ n, P17040081613464972265.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P7635849216233229455

`a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A143097.P7635849216233229455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  a (n - 3) + 3

end

end A143097.P7635849216233229455

namespace A143097

/-- `a(n-3)+3` -/
def P7635849216233229455.Spec : Prop :=
  ∀ n, (P7635849216233229455.a n : ℤ) = A143097 (n + 1)

end A143097

/-! ## A143097.P8548841988980004891

`round(sqrt(n²+1))+n%3`
-/

namespace A143097.P8548841988980004891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + ((n % 3 : ℕ) : ℤ)

end

end A143097.P8548841988980004891

namespace A143097

/-- `round(sqrt(n²+1))+n%3` -/
def P8548841988980004891.Spec : Prop :=
  ∀ n, P8548841988980004891.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P6268609468624372382

`Δ[char[3*(n+1)]+∑[n]]`
-/

namespace A143097.P6268609468624372382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143097.P6268609468624372382

namespace A143097

/-- `Δ[char[3*(n+1)]+∑[n]]` -/
def P6268609468624372382.Spec : Prop :=
  ∀ n, P6268609468624372382.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P12372308595832779679

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A143097.P12372308595832779679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143097.P12372308595832779679

namespace A143097

/-- `∑[floor(a(n-3))]` -/
def P12372308595832779679.Spec : Prop :=
  ∀ n, P12372308595832779679.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P10306400249044821252

`2-(a(n-2)%3-n)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A143097.P10306400249044821252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 - (Int.tmod (a (n - 2)) 3 - (n : ℤ))

end

end A143097.P10306400249044821252

namespace A143097

/-- `2-(a(n-2)%3-n)` -/
def P10306400249044821252.Spec : Prop :=
  ∀ n, P10306400249044821252.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P13628876085609197715

`∑[a(n-3)²-2]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1, a(4)=2`
-/

namespace A143097.P13628876085609197715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1, 2] fun n f1 =>
  f1 (n - 3) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143097.P13628876085609197715

namespace A143097

/-- `∑[a(n-3)²-2]` -/
def P13628876085609197715.Spec : Prop :=
  ∀ n, P13628876085609197715.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P8208776928718672752

`2*n-3*floor(a(n-1)/3)` with `a(0)=1`
-/

namespace A143097.P8208776928718672752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - 3 * ⌊(a (n - 1) : ℚ) / 3⌋

end

end A143097.P8208776928718672752

namespace A143097

/-- `2*n-3*floor(a(n-1)/3)` -/
def P8208776928718672752.Spec : Prop :=
  ∀ n, P8208776928718672752.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P14485112511476084887

`3*n-a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A143097.P14485112511476084887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (3 * n : ℤ) - a (n - 1) - a (n - 2)

end

end A143097.P14485112511476084887

namespace A143097

/-- `3*n-a(n-1)-a(n-2)` -/
def P14485112511476084887.Spec : Prop :=
  ∀ n, P14485112511476084887.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P9577153843251448339

`∑[3-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1`
-/

namespace A143097.P9577153843251448339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1] fun n f1 =>
  3 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143097.P9577153843251448339

namespace A143097

/-- `∑[3-a(n-1)-a(n-2)]` -/
def P9577153843251448339.Spec : Prop :=
  ∀ n, P9577153843251448339.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P12150538865810291535

`n-(a(a(n-1)-2)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A143097.P12150538865810291535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (n : ℤ) - (a (a (n - 1) - 2).toNat - a (n - 1))

end

end A143097.P12150538865810291535

namespace A143097

/-- `n-(a(a(n-1)-2)-a(n-1))` -/
def P12150538865810291535.Spec : Prop :=
  ∀ n, P12150538865810291535.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P9991416797834724099

`A143098(n)+a(n-1)` with `a(0)=1`
-/

namespace A143097.P9991416797834724099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143098 n + a (n - 1)

end

end A143097.P9991416797834724099

namespace A143097

/-- `A143098(n)+a(n-1)` -/
def P9991416797834724099.Spec : Prop :=
  ∀ n, P9991416797834724099.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P16072414226824412865

`A028310(A010872(n)+n)`
-/

namespace A143097.P16072414226824412865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A010872 n + (n : ℤ)).toNat

end

end A143097.P16072414226824412865

namespace A143097

/-- `A028310(A010872(n)+n)` -/
def P16072414226824412865.Spec : Prop :=
  ∀ n, P16072414226824412865.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P4328904339400999266

`A267208(n)+A130481(n)`
-/

namespace A143097.P4328904339400999266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 n + A130481 n

end

end A143097.P4328904339400999266

namespace A143097

/-- `A267208(n)+A130481(n)` -/
def P4328904339400999266.Spec : Prop :=
  ∀ n, P4328904339400999266.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P11631633693557272338

`A008706(n)-A319451(n)`
-/

namespace A143097.P11631633693557272338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A319451 n

end

end A143097.P11631633693557272338

namespace A143097

/-- `A008706(n)-A319451(n)` -/
def P11631633693557272338.Spec : Prop :=
  ∀ n, P11631633693557272338.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P15601530884696330735

`A063198(n+1)+A008620(n)`
-/

namespace A143097.P15601530884696330735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + A008620 n

end

end A143097.P15601530884696330735

namespace A143097

/-- `A063198(n+1)+A008620(n)` -/
def P15601530884696330735.Spec : Prop :=
  ∀ n, P15601530884696330735.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P3431959676087022616

`A008486(n)-A047240(n+1)`
-/

namespace A143097.P3431959676087022616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A047240 (n + 1)

end

end A143097.P3431959676087022616

namespace A143097

/-- `A008486(n)-A047240(n+1)` -/
def P3431959676087022616.Spec : Prop :=
  ∀ n, P3431959676087022616.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P12330827041455111262

`A063200(n+1)-A002264(n)`
-/

namespace A143097.P12330827041455111262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) - A002264 n

end

end A143097.P12330827041455111262

namespace A143097

/-- `A063200(n+1)-A002264(n)` -/
def P12330827041455111262.Spec : Prop :=
  ∀ n, P12330827041455111262.a n = A143097 (n + 1)

end A143097

/-! ## A143097.P13808663020475203949

`A298786(n)-A047357(n+1)`
-/

namespace A143097.P13808663020475203949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n - A047357 (n + 1)

end

end A143097.P13808663020475203949

namespace A143097

/-- `A298786(n)-A047357(n+1)` -/
def P13808663020475203949.Spec : Prop :=
  ∀ n, P13808663020475203949.a n = A143097 (n + 1)

end A143097

/-!
# A143098: First differences of A143097.

The programs for A143098, the canonical program `A143098.P2184536721792289814` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143098 has offset 1).

The definition of A143098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143098.P2184536721792289814

`ogf((1+2x-x^2+x^3)/(1-x^3))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143098

/-- `ogf((1+2x-x^2+x^3)/(1-x^3))` -/
def P2184536721792289814.Spec : Prop :=
  ∀ n, P2184536721792289814.a n = A143098 (n + 1)

theorem P2184536721792289814.correct : P2184536721792289814.Spec := by
  intro n
  simp only [A143098, Nat.add_sub_cancel]

end A143098

/-!
# A143099: A007318 * A143097.

The programs for A143099, the canonical program `A143099.P16262607495362422146` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143099 has offset 1).

The definition of A143099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143099.P16262607495362422146

`2*a(n-1)+A143100(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143099

/-- `2*a(n-1)+A143100(n)` -/
def P16262607495362422146.Spec : Prop :=
  ∀ n, P16262607495362422146.a n = A143099 (n + 1)

theorem P16262607495362422146.correct : P16262607495362422146.Spec := by
  intro n
  simp only [A143099, Nat.add_sub_cancel]

end A143099

/-! ## A143099.P16273102214390728897

`ogf((1-3x+5x^2-7x^3+5x^4)/(1-6x+14x^2-17x^3+12x^4-4x^5))`
-/

namespace A143099.P16273102214390728897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 5, -7, 5] [1, -6, 14, -17, 12, -4] n

end

end A143099.P16273102214390728897

namespace A143099

/-- `ogf((1-3x+5x^2-7x^3+5x^4)/(1-6x+14x^2-17x^3+12x^4-4x^5))` -/
def P16273102214390728897.Spec : Prop :=
  ∀ n, P16273102214390728897.a n = A143099 (n + 1)

end A143099

/-! ## A143099.P3926996839711983302

`A047859(n)-A282153(n)`
-/

namespace A143099.P3926996839711983302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n - A282153 n

end

end A143099.P3926996839711983302

namespace A143099

/-- `A047859(n)-A282153(n)` -/
def P3926996839711983302.Spec : Prop :=
  ∀ n, P3926996839711983302.a n = A143099 (n + 1)

end A143099

/-! ## A143099.P4578155269642563479

`A001792(n)+1-A010892(n)`
-/

namespace A143099.P4578155269642563479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (1 - A010892 n)

end

end A143099.P4578155269642563479

namespace A143099

/-- `A001792(n)+1-A010892(n)` -/
def P4578155269642563479.Spec : Prop :=
  ∀ n, P4578155269642563479.a n = A143099 (n + 1)

end A143099

/-! ## A143099.P14987404436086320057

`A130750(n)+∑[∑[A049610(n)]]`
-/

namespace A143099.P14987404436086320057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143099.P14987404436086320057

namespace A143099

/-- `A130750(n)+∑[∑[A049610(n)]]` -/
def P14987404436086320057.Spec : Prop :=
  ∀ n, P14987404436086320057.a n = A143099 (n + 1)

end A143099

/-! ## A143099.P6023073653830188171

`Δ[A282153(n+1)]+∑[A139756(n)]`
-/

namespace A143099.P6023073653830188171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A143099.P6023073653830188171

namespace A143099

/-- `Δ[A282153(n+1)]+∑[A139756(n)]` -/
def P6023073653830188171.Spec : Prop :=
  ∀ n, P6023073653830188171.a n = A143099 (n + 1)

end A143099

/-! ## A143099.P14738036967402021554

`A000051(n)+A001787(n)-A010892(n)`
-/

namespace A143099.P14738036967402021554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A001787 n - A010892 n)

end

end A143099.P14738036967402021554

namespace A143099

/-- `A000051(n)+A001787(n)-A010892(n)` -/
def P14738036967402021554.Spec : Prop :=
  ∀ n, P14738036967402021554.a n = A143099 (n + 1)

end A143099

/-! ## A143099.P4146190806409023921

`∑{#}[n, C(n, #)*A143097(#+1)]`
-/

namespace A143099.P4146190806409023921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A143097 (k + 1)

end

end A143099.P4146190806409023921

namespace A143099

/-- `∑{#}[n, C(n, #)*A143097(#+1)]` -/
def P4146190806409023921.Spec : Prop :=
  ∀ n, P4146190806409023921.a n = A143099 (n + 1)

end A143099

