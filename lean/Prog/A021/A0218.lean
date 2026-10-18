import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.Opaque.C001
import Seq.Opaque.C006
import Seq.Opaque.C007

/-!
# A021804: Expansion of 1/((1-x)(1-4x)(1-6x)(1-7x)).

The programs for A021804, the canonical program `A021804.P1679742294013703888` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021804 has offset 0).

The definition of A021804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021804.P1679742294013703888

`∑[A019316(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021804

/-- `∑[A019316(n)]` -/
def P1679742294013703888.Spec : Prop :=
  ∀ n, P1679742294013703888.a n = A021804 n

theorem P1679742294013703888.correct : P1679742294013703888.Spec := by
  intro n
  simp only [A021804]

end A021804

/-! ## A021804.P1423333128806498390

`A016223(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A021804.P1423333128806498390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016223 n + 6 * a (n - 1)

end

end A021804.P1423333128806498390

namespace A021804

/-- `A016223(n)+6*a(n-1)` -/
def P1423333128806498390.Spec : Prop :=
  ∀ n, P1423333128806498390.a n = A021804 n

end A021804

/-! ## A021804.P7167236278972763755

`2*a(n-1)+A016222(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021804.P7167236278972763755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A016222 n + 5 * a (n - 1))

end

end A021804.P7167236278972763755

namespace A021804

/-- `2*a(n-1)+A016222(n)+5*a(n-1)` -/
def P7167236278972763755.Spec : Prop :=
  ∀ n, P7167236278972763755.a n = A021804 n

end A021804

/-! ## A021804.P1311219793103054859

`2*A021754(n)-A021744(n)`
-/

namespace A021804.P1311219793103054859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021754 n - A021744 n

end

end A021804.P1311219793103054859

namespace A021804

/-- `2*A021754(n)-A021744(n)` -/
def P1311219793103054859.Spec : Prop :=
  ∀ n, P1311219793103054859.a n = A021804 n

end A021804

/-! ## A021804.P4353859993045995486

`A019316(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021804.P4353859993045995486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019316 n + a (A023443 n).toNat

end

end A021804.P4353859993045995486

namespace A021804

/-- `A019316(n)+a(A023443(n))` -/
def P4353859993045995486.Spec : Prop :=
  ∀ n, P4353859993045995486.a n = A021804 n

end A021804

/-! ## A021804.P4808959640048394488

`2*A025965(n)-∑[A025965(n)]`
-/

namespace A021804.P4808959640048394488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025965 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021804.P4808959640048394488

namespace A021804

/-- `2*A025965(n)-∑[A025965(n)]` -/
def P4808959640048394488.Spec : Prop :=
  ∀ n, P4808959640048394488.a n = A021804 n

end A021804

/-! ## A021804.P11047478277381817923

`A016223(n+1)-A016222(n+1)`
-/

namespace A021804.P11047478277381817923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016223 (n + 1) - A016222 (n + 1)

end

end A021804.P11047478277381817923

namespace A021804

/-- `A016223(n+1)-A016222(n+1)` -/
def P11047478277381817923.Spec : Prop :=
  ∀ n, P11047478277381817923.a n = A021804 n

end A021804

/-! ## A021804.P3060964231926883911

`A019316(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A021804.P3060964231926883911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019316 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A021804.P3060964231926883911

namespace A021804

/-- `A019316(A000038(n)+n)+a(n-1)` -/
def P3060964231926883911.Spec : Prop :=
  ∀ n, P3060964231926883911.a n = A021804 n

end A021804

/-! ## A021804.P7797101570194159224

`A021364(n)+A021494(n)-A021354(n)`
-/

namespace A021804.P7797101570194159224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021364 n + (A021494 n - A021354 n)

end

end A021804.P7797101570194159224

namespace A021804

/-- `A021364(n)+A021494(n)-A021354(n)` -/
def P7797101570194159224.Spec : Prop :=
  ∀ n, P7797101570194159224.a n = A021804 n

end A021804

/-! ## A021804.P2313133016375901876

`2*A021814(n)-A021854(n)`
-/

namespace A021804.P2313133016375901876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021814 n - A021854 n

end

end A021804.P2313133016375901876

namespace A021804

/-- `2*A021814(n)-A021854(n)` -/
def P2313133016375901876.Spec : Prop :=
  ∀ n, P2313133016375901876.a n = A021804 n

end A021804

/-! ## A021804.P298161950772226907

`2*A021854(n)-A023949(n)`
-/

namespace A021804.P298161950772226907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021854 n - A023949 n

end

end A021804.P298161950772226907

namespace A021804

/-- `2*A021854(n)-A023949(n)` -/
def P298161950772226907.Spec : Prop :=
  ∀ n, P298161950772226907.a n = A021804 n

end A021804

/-! ## A021804.P8077531503998360396

`2*A021829(n)-A023951(n)`
-/

namespace A021804.P8077531503998360396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021829 n - A023951 n

end

end A021804.P8077531503998360396

namespace A021804

/-- `2*A021829(n)-A023951(n)` -/
def P8077531503998360396.Spec : Prop :=
  ∀ n, P8077531503998360396.a n = A021804 n

end A021804

/-!
# A021807: Decimal expansion of 1/803.

The programs for A021807, the canonical program `A021807.P14958655593182802055` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021807 has offset 0).

The definition of A021807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021807.P14958655593182802055

`A021077(n-1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021807

/-- `A021077(n-1)-a(n-1)` -/
def P14958655593182802055.Spec : Prop :=
  ∀ n, P14958655593182802055.a n = A021807 n

theorem P14958655593182802055.correct : P14958655593182802055.Spec := by
  intro n
  simp only [A021807]

end A021807

/-!
# A021812: Decimal expansion of 1/808.

The programs for A021812, the canonical program `A021812.P15659177985698028375` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021812 has offset 0).

The definition of A021812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021812.P15659177985698028375

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=7, a(6)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021812

/-- `a(n-4)` -/
def P15659177985698028375.Spec : Prop :=
  ∀ n, (P15659177985698028375.a n : ℤ) = A021812 n

theorem P15659177985698028375.correct : P15659177985698028375.Spec := by
  intro n
  simp only [A021812]

end A021812

/-!
# A021814: Expansion of 1/((1-x)(1-4x)(1-6x)(1-8x)).

The programs for A021814, the canonical program `A021814.P10926726484162862782` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021814 has offset 0).

The definition of A021814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021814.P10926726484162862782

`∑[A019333(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021814

/-- `∑[A019333(n)]` -/
def P10926726484162862782.Spec : Prop :=
  ∀ n, P10926726484162862782.a n = A021814 n

theorem P10926726484162862782.correct : P10926726484162862782.Spec := by
  intro n
  simp only [A021814]

end A021814

/-! ## A021814.P16714038121702820645

`∑[2^n*A016269(n)]`
-/

namespace A021814.P16714038121702820645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P16714038121702820645

namespace A021814

/-- `∑[2^n*A016269(n)]` -/
def P16714038121702820645.Spec : Prop :=
  ∀ n, P16714038121702820645.a n = A021814 n

end A021814

/-! ## A021814.P9201600212930262816

`∑[2^n*∑[A027650(n)]]`
-/

namespace A021814.P9201600212930262816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P9201600212930262816

namespace A021814

/-- `∑[2^n*∑[A027650(n)]]` -/
def P9201600212930262816.Spec : Prop :=
  ∀ n, P9201600212930262816.a n = A021814 n

end A021814

/-! ## A021814.P10174026647783103772

`∑[lcm(A000079(n), A016269(n))]`
-/

namespace A021814.P10174026647783103772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A016269 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P10174026647783103772

namespace A021814

/-- `∑[lcm(A000079(n), A016269(n))]` -/
def P10174026647783103772.Spec : Prop :=
  ∀ n, (P10174026647783103772.a n : ℤ) = A021814 n

end A021814

/-! ## A021814.P2663777325443537674

`(A021854(n)+A021804(n))/2`
-/

namespace A021814.P2663777325443537674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021854 n + A021804 n : ℚ) / 2

end

end A021814.P2663777325443537674

namespace A021814

/-- `(A021854(n)+A021804(n))/2` -/
def P2663777325443537674.Spec : Prop :=
  ∀ n, P2663777325443537674.a n = (A021814 n : ℚ)

end A021814

/-! ## A021814.P2773124410719753462

`∑[∑[A027650(n)]*A000079(n)]`
-/

namespace A021814.P2773124410719753462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P2773124410719753462

namespace A021814

/-- `∑[∑[A027650(n)]*A000079(n)]` -/
def P2773124410719753462.Spec : Prop :=
  ∀ n, P2773124410719753462.a n = A021814 n

end A021814

/-! ## A021814.P5392611591370645967

`∑[A016269(n)*A077957(2*n)]`
-/

namespace A021814.P5392611591370645967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n * A077957 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P5392611591370645967

namespace A021814

/-- `∑[A016269(n)*A077957(2*n)]` -/
def P5392611591370645967.Spec : Prop :=
  ∀ n, P5392611591370645967.a n = A021814 n

end A021814

/-! ## A021814.P9953810106586289835

`∑[A038721(n+1)/2*A000079(n)]`
-/

namespace A021814.P9953810106586289835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038721 (n + 1) : ℚ) / 2 * (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P9953810106586289835

namespace A021814

/-- `∑[A038721(n+1)/2*A000079(n)]` -/
def P9953810106586289835.Spec : Prop :=
  ∀ n, P9953810106586289835.a n = (A021814 n : ℚ)

end A021814

/-! ## A021814.P100831585316675557

`∑[Δ[A056473(2*(n+3))]*A000079(n)]`
-/

namespace A021814.P100831585316675557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P100831585316675557

namespace A021814

/-- `∑[Δ[A056473(2*(n+3))]*A000079(n)]` -/
def P100831585316675557.Spec : Prop :=
  ∀ n, P100831585316675557.a n = A021814 n

end A021814

/-! ## A021814.P9758967756500139206

`∑[(A126718(n+1)-A126643(n+1))*A000079(n)]`
-/

namespace A021814.P9758967756500139206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126718 (n + 1) - A126643 (n + 1)) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P9758967756500139206

namespace A021814

/-- `∑[(A126718(n+1)-A126643(n+1))*A000079(n)]` -/
def P9758967756500139206.Spec : Prop :=
  ∀ n, P9758967756500139206.a n = A021814 n

end A021814

/-! ## A021814.P6212181178758988050

`∑[(A016208(n)+A000453(n+4))/2*A000079(n)]`
-/

namespace A021814.P6212181178758988050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016208 n + A000453 (n + 4) : ℚ) / 2 * (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P6212181178758988050

namespace A021814

/-- `∑[(A016208(n)+A000453(n+4))/2*A000079(n)]` -/
def P6212181178758988050.Spec : Prop :=
  ∀ n, P6212181178758988050.a n = (A021814 n : ℚ)

end A021814

/-! ## A021814.P14376774211681673741

`2*A021829(n)-A021914(n)`
-/

namespace A021814.P14376774211681673741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021829 n - A021914 n

end

end A021814.P14376774211681673741

namespace A021814

/-- `2*A021829(n)-A021914(n)` -/
def P14376774211681673741.Spec : Prop :=
  ∀ n, P14376774211681673741.a n = A021814 n

end A021814

/-!
# A021817: Decimal expansion of 1/813.

The programs for A021817, the canonical program `A021817.P11668190947245385376` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021817 has offset 0).

The definition of A021817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021817.P11668190947245385376

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021817

/-- `a(n-5)` -/
def P11668190947245385376.Spec : Prop :=
  ∀ n, (P11668190947245385376.a n : ℤ) = A021817 n

theorem P11668190947245385376.correct : P11668190947245385376.Spec := by
  intro n
  simp only [A021817]

end A021817

/-!
# A021818: Decimal expansion of 1/814.

The programs for A021818, the canonical program `A021818.P6600692297043727996` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021818 has offset 0).

The definition of A021818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021818.P6600692297043727996

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=8, a(6)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021818

/-- `a(n-6)` -/
def P6600692297043727996.Spec : Prop :=
  ∀ n, (P6600692297043727996.a n : ℤ) = A021818 n

theorem P6600692297043727996.correct : P6600692297043727996.Spec := by
  intro n
  simp only [A021818]

end A021818

/-!
# A021823: Decimal expansion of 1/819.

The programs for A021823, the canonical program `A021823.P10784668450767047098` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021823 has offset 0).

The definition of A021823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021823.P10784668450767047098

`2-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021823

/-- `2-a(n-3)` -/
def P10784668450767047098.Spec : Prop :=
  ∀ n, P10784668450767047098.a n = A021823 n

theorem P10784668450767047098.correct : P10784668450767047098.Spec := by
  intro n
  simp only [A021823]

end A021823

/-!
# A021824: Expansion of 1/((1-x)(1-4x)(1-6x)(1-9x)).

The programs for A021824, the canonical program `A021824.P12247089824460013579` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021824 has offset 0).

The definition of A021824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021824.P12247089824460013579

`(9^(n+3)-4*6^(n+3)+4^(n+4)-1)/120`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021824

/-- `(9^(n+3)-4*6^(n+3)+4^(n+4)-1)/120` -/
def P12247089824460013579.Spec : Prop :=
  ∀ n, P12247089824460013579.a n = (A021824 n : ℚ)

end A021824

/-! ## A021824.P5876566849090822021

`∑[A019443(n)]`
-/

namespace A021824.P5876566849090822021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021824.P5876566849090822021

namespace A021824

/-- `∑[A019443(n)]` -/
def P5876566849090822021.Spec : Prop :=
  ∀ n, P5876566849090822021.a n = A021824 n

end A021824

/-! ## A021824.P14364661052288084835

`A016222(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A021824.P14364661052288084835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016222 n + 9 * a (n - 1)

end

end A021824.P14364661052288084835

namespace A021824

/-- `A016222(n)+9*a(n-1)` -/
def P14364661052288084835.Spec : Prop :=
  ∀ n, P14364661052288084835.a n = A021824 n

end A021824

/-! ## A021824.P1362431917403702110

`A019443(C(n, n-1))+a(n-1)` with `a(0)=1`
-/

namespace A021824.P1362431917403702110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019443 (Nat.choose n ((n : ℤ) - 1).toNat) + a (n - 1)

end

end A021824.P1362431917403702110

namespace A021824

/-- `A019443(C(n, n-1))+a(n-1)` -/
def P1362431917403702110.Spec : Prop :=
  ∀ n, P1362431917403702110.a n = A021824 n

end A021824

/-! ## A021824.P3488197174988255826

`2*A021194(n)-A021084(n)`
-/

namespace A021824.P3488197174988255826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021194 n - A021084 n

end

end A021824.P3488197174988255826

namespace A021824

/-- `2*A021194(n)-A021084(n)` -/
def P3488197174988255826.Spec : Prop :=
  ∀ n, P3488197174988255826.a n = A021824 n

end A021824

/-! ## A021824.P7730606099249066578

`2*A021379(n)-A021354(n)`
-/

namespace A021824.P7730606099249066578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021379 n - A021354 n

end

end A021824.P7730606099249066578

namespace A021824

/-- `2*A021379(n)-A021354(n)` -/
def P7730606099249066578.Spec : Prop :=
  ∀ n, P7730606099249066578.a n = A021824 n

end A021824

/-! ## A021824.P12852482460632058814

`∑[2*A016306(n)-A016291(n)]`
-/

namespace A021824.P12852482460632058814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016306 n - A016291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021824.P12852482460632058814

namespace A021824

/-- `∑[2*A016306(n)-A016291(n)]` -/
def P12852482460632058814.Spec : Prop :=
  ∀ n, P12852482460632058814.a n = A021824 n

end A021824

/-! ## A021824.P14457952401646797607

`a(n-1)+A019443(n)+A000035(A000035(n)+n)` with `a(0)=1`
-/

namespace A021824.P14457952401646797607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019443 n + A000035 (A000035 n + (n : ℤ)).toNat)

end

end A021824.P14457952401646797607

namespace A021824

/-- `a(n-1)+A019443(n)+A000035(A000035(n)+n)` -/
def P14457952401646797607.Spec : Prop :=
  ∀ n, P14457952401646797607.a n = A021824 n

end A021824

/-! ## A021824.P18186408364437986130

`2*A021844(n)-A021974(n)`
-/

namespace A021824.P18186408364437986130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021844 n - A021974 n

end

end A021824.P18186408364437986130

namespace A021824

/-- `2*A021844(n)-A021974(n)` -/
def P18186408364437986130.Spec : Prop :=
  ∀ n, P18186408364437986130.a n = A021824 n

end A021824

/-!
# A021826: Decimal expansion of 1/822.

The programs for A021826, the canonical program `A021826.P17882957255776520591` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021826 has offset 0).

The definition of A021826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021826.P17882957255776520591

`6-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021826

/-- `6-a(n-4)` -/
def P17882957255776520591.Spec : Prop :=
  ∀ n, P17882957255776520591.a n = A021826 n

theorem P17882957255776520591.correct : P17882957255776520591.Spec := by
  intro n
  simp only [A021826]

end A021826

/-!
# A021829: Expansion of 1/((1-x)(1-4x)(1-6x)(1-10x)).

The programs for A021829, the canonical program `A021829.P18005213265485724350` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021829 has offset 0).

The definition of A021829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021829.P18005213265485724350

`∑[A019483(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021829

/-- `∑[A019483(n)]` -/
def P18005213265485724350.Spec : Prop :=
  ∀ n, P18005213265485724350.a n = A021829 n

theorem P18005213265485724350.correct : P18005213265485724350.Spec := by
  intro n
  simp only [A021829]

end A021829

/-! ## A021829.P11794434352492087227

`∑[2^n*A016273(n)]`
-/

namespace A021829.P11794434352492087227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021829.P11794434352492087227

namespace A021829

/-- `∑[2^n*A016273(n)]` -/
def P11794434352492087227.Spec : Prop :=
  ∀ n, P11794434352492087227.a n = A021829 n

end A021829

/-! ## A021829.P14189072838241158969

`A019483((n-1)*(char[1]+1)²+1)+a(n-1)` with `a(0)=1`
-/

namespace A021829.P14189072838241158969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019483 (((n : ℤ) - 1) * ((((if ∃ j, f1 j = n then 1 else 0) + 1) ^ 2 : ℕ) : ℤ) + 1).toNat + a (n - 1)

end

end A021829.P14189072838241158969

namespace A021829

/-- `A019483((n-1)*(char[1]+1)²+1)+a(n-1)` -/
def P14189072838241158969.Spec : Prop :=
  ∀ n, P14189072838241158969.a n = A021829 n

end A021829

/-! ## A021829.P10101643692584767085

`(A021914(n)+A021814(n))/2`
-/

namespace A021829.P10101643692584767085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021914 n + A021814 n : ℚ) / 2

end

end A021829.P10101643692584767085

namespace A021829

/-- `(A021914(n)+A021814(n))/2` -/
def P10101643692584767085.Spec : Prop :=
  ∀ n, P10101643692584767085.a n = (A021829 n : ℚ)

end A021829

/-! ## A021829.P624408507314169859

`(A023951(n)+A021804(n))/2`
-/

namespace A021829.P624408507314169859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023951 n + A021804 n : ℚ) / 2

end

end A021829.P624408507314169859

namespace A021829

/-- `(A023951(n)+A021804(n))/2` -/
def P624408507314169859.Spec : Prop :=
  ∀ n, P624408507314169859.a n = (A021829 n : ℚ)

end A021829

/-! ## A021829.P8200188301555004348

`∑[A000079(n)*A124960(A167614(n+1))]`
-/

namespace A021829.P8200188301555004348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A124960 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021829.P8200188301555004348

namespace A021829

/-- `∑[A000079(n)*A124960(A167614(n+1))]` -/
def P8200188301555004348.Spec : Prop :=
  ∀ n, P8200188301555004348.a n = A021829 n

end A021829

/-!
# A021834: Expansion of 1/((1-x)*(1-4*x)*(1-6*x)*(1-11*x)).

The programs for A021834, there is no canonical definition to state claims against.
-/

/-! ## A021834.P6409645886471136091

`∑[A019488(n)]`
-/

namespace A021834.P6409645886471136091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021834.P6409645886471136091

/-! ## A021834.P54417812923168712

`A016226(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A021834.P54417812923168712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016226 n + 6 * a (n - 1)

end

end A021834.P54417812923168712

/-! ## A021834.P16102567058353521750

`A016222(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A021834.P16102567058353521750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016222 n + 11 * a (n - 1)

end

end A021834.P16102567058353521750

/-! ## A021834.P16522839164589790394

`2*A021204(n)-A021094(n)`
-/

namespace A021834.P16522839164589790394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021204 n - A021094 n

end

end A021834.P16522839164589790394

/-! ## A021834.P1089727856266325657

`A019488(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021834.P1089727856266325657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019488 n + a (A023443 n).toNat

end

end A021834.P1089727856266325657

/-! ## A021834.P7587772088813488618

`∑[2*A016226(n)-A016222(n)]`
-/

namespace A021834.P7587772088813488618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016226 n - A016222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021834.P7587772088813488618

/-! ## A021834.P13159492712327030227

`A021924(n)+A021924(n)-A023956(n)`
-/

namespace A021834.P13159492712327030227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021924 n + (A021924 n - A023956 n)

end

end A021834.P13159492712327030227

/-! ## A021834.P2524848115188344046

`2*A021924(n)-A023956(n)`
-/

namespace A021834.P2524848115188344046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021924 n - A023956 n

end

end A021834.P2524848115188344046

/-!
# A021844: Expansion of 1/((1-x)*(1-4*x)*(1-6*x)*(1-12*x)).

The programs for A021844, there is no canonical definition to state claims against.
-/

/-! ## A021844.P1193999943591997926

`∑[A019490(n)]`
-/

namespace A021844.P1193999943591997926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021844.P1193999943591997926

/-! ## A021844.P3537375552327979243

`∑[2^n*A001240(n+1)]`
-/

namespace A021844.P3537375552327979243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021844.P3537375552327979243

/-! ## A021844.P11271874284744070006

`∑[lcm(A001240(n+1), A122803(n))]`
-/

namespace A021844.P11271874284744070006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001240 (n + 1)) (A122803 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021844.P11271874284744070006

/-! ## A021844.P7032773519928557106

`A021214(n)+A021214(n)-A021104(n)`
-/

namespace A021844.P7032773519928557106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021214 n + (A021214 n - A021104 n)

end

end A021844.P7032773519928557106

/-! ## A021844.P4367688303655766443

`A025970(n)+A025970(n)-∑[A025970(n)]`
-/

namespace A021844.P4367688303655766443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025970 n + (A025970 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021844.P4367688303655766443

/-! ## A021844.P2465931939078095969

`2*A021214(n)-A021104(n)`
-/

namespace A021844.P2465931939078095969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021214 n - A021104 n

end

end A021844.P2465931939078095969

/-! ## A021844.P5936806834080639803

`2*A025970(n)-∑[A025970(n)]`
-/

namespace A021844.P5936806834080639803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025970 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021844.P5936806834080639803

/-!
# A021854: Expansion of 1/((1-x)(1-4x)(1-7x)(1-8x)).

The programs for A021854, the canonical program `A021854.P14533442744147001354` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021854 has offset 0).

The definition of A021854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021854.P14533442744147001354

`(9*8^(n+3)-14*7^(n+3)+7*4^(n+3)-2)/252`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021854

/-- `(9*8^(n+3)-14*7^(n+3)+7*4^(n+3)-2)/252` -/
def P14533442744147001354.Spec : Prop :=
  ∀ n, P14533442744147001354.a n = (A021854 n : ℚ)

end A021854

/-! ## A021854.P14772102950034165377

`∑[A019512(n)]`
-/

namespace A021854.P14772102950034165377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021854.P14772102950034165377

namespace A021854

/-- `∑[A019512(n)]` -/
def P14772102950034165377.Spec : Prop :=
  ∀ n, P14772102950034165377.a n = A021854 n

end A021854

/-! ## A021854.P9543898367033608227

`A016249(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021854.P9543898367033608227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016249 n + 4 * a (n - 1)

end

end A021854.P9543898367033608227

namespace A021854

/-- `A016249(n)+4*a(n-1)` -/
def P9543898367033608227.Spec : Prop :=
  ∀ n, P9543898367033608227.a n = A021854 n

end A021854

/-! ## A021854.P12460065151337703603

`2*A021814(n)-A021804(n)`
-/

namespace A021854.P12460065151337703603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021814 n - A021804 n

end

end A021854.P12460065151337703603

namespace A021854

/-- `2*A021814(n)-A021804(n)` -/
def P12460065151337703603.Spec : Prop :=
  ∀ n, P12460065151337703603.a n = A021854 n

end A021854

/-! ## A021854.P103859816715886638

`A016224(n+1)-A016223(n+1)`
-/

namespace A021854.P103859816715886638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016224 (n + 1) - A016223 (n + 1)

end

end A021854.P103859816715886638

namespace A021854

/-- `A016224(n+1)-A016223(n+1)` -/
def P103859816715886638.Spec : Prop :=
  ∀ n, P103859816715886638.a n = A021854 n

end A021854

/-! ## A021854.P2867425553662522513

`2*A021864(n)-A021904(n)`
-/

namespace A021854.P2867425553662522513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021864 n - A021904 n

end

end A021854.P2867425553662522513

namespace A021854

/-- `2*A021864(n)-A021904(n)` -/
def P2867425553662522513.Spec : Prop :=
  ∀ n, P2867425553662522513.a n = A021854 n

end A021854

/-! ## A021854.P10341836820796337840

`2*A021914(n)-A024438(n)`
-/

namespace A021854.P10341836820796337840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021914 n - A024438 n

end

end A021854.P10341836820796337840

namespace A021854

/-- `2*A021914(n)-A024438(n)` -/
def P10341836820796337840.Spec : Prop :=
  ∀ n, P10341836820796337840.a n = A021854 n

end A021854

/-!
# A021862: Decimal expansion of 1/858.

The programs for A021862, the canonical program `A021862.P13161930338708254443` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021862 has offset 0).

The definition of A021862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021862.P13161930338708254443

`6-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021862

/-- `6-a(n-3)` -/
def P13161930338708254443.Spec : Prop :=
  ∀ n, P13161930338708254443.a n = A021862 n

theorem P13161930338708254443.correct : P13161930338708254443.Spec := by
  intro n
  simp only [A021862]

end A021862

/-!
# A021864: Expansion of 1/((1-x)(1-4x)(1-7x)(1-9x)).

The programs for A021864, the canonical program `A021864.P8337930843828013956` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021864 has offset 0).

The definition of A021864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021864.P8337930843828013956

`(9^(n+4)-20*7^(n+3)+4^(n+5)-5)/720`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021864

/-- `(9^(n+4)-20*7^(n+3)+4^(n+5)-5)/720` -/
def P8337930843828013956.Spec : Prop :=
  ∀ n, P8337930843828013956.a n = (A021864 n : ℚ)

end A021864

/-! ## A021864.P13317544237333007430

`∑[A019613(n)]`
-/

namespace A021864.P13317544237333007430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021864.P13317544237333007430

namespace A021864

/-- `∑[A019613(n)]` -/
def P13317544237333007430.Spec : Prop :=
  ∀ n, P13317544237333007430.a n = A021864 n

end A021864

/-! ## A021864.P5569453126588799361

`A016250(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021864.P5569453126588799361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016250 n + 4 * a (n - 1)

end

end A021864.P5569453126588799361

namespace A021864

/-- `A016250(n)+4*a(n-1)` -/
def P5569453126588799361.Spec : Prop :=
  ∀ n, P5569453126588799361.a n = A021864 n

end A021864

/-! ## A021864.P2806558897408662142

`A016223(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A021864.P2806558897408662142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016223 n + 9 * a (n - 1)

end

end A021864.P2806558897408662142

namespace A021864

/-- `A016223(n)+9*a(n-1)` -/
def P2806558897408662142.Spec : Prop :=
  ∀ n, P2806558897408662142.a n = A021864 n

end A021864

/-! ## A021864.P10891821486708252765

`2*A021772(n)-A021754(n)`
-/

namespace A021864.P10891821486708252765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021772 n - A021754 n

end

end A021864.P10891821486708252765

namespace A021864

/-- `2*A021772(n)-A021754(n)` -/
def P10891821486708252765.Spec : Prop :=
  ∀ n, P10891821486708252765.a n = A021864 n

end A021864

/-! ## A021864.P17141562433000707536

`2*A021884(n)-A021964(n)`
-/

namespace A021864.P17141562433000707536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021884 n - A021964 n

end

end A021864.P17141562433000707536

namespace A021864

/-- `2*A021884(n)-A021964(n)` -/
def P17141562433000707536.Spec : Prop :=
  ∀ n, P17141562433000707536.a n = A021864 n

end A021864

/-!
# A021868: Decimal expansion of 1/864.

The programs for A021868, the canonical program `A021868.P15820094284664831902` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021868 has offset 0).

The definition of A021868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021868.P15820094284664831902

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=5, a(5)=7, a(6)=4, a(7)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021868

/-- `a(n-3)` -/
def P15820094284664831902.Spec : Prop :=
  ∀ n, (P15820094284664831902.a n : ℤ) = A021868 n

theorem P15820094284664831902.correct : P15820094284664831902.Spec := by
  intro n
  simp only [A021868]

end A021868

/-!
# A021874: Expansion of 1/((1-x) * (1-4*x) * (1-7*x) * (1-10*x)).

The programs for A021874, the canonical program `A021874.P9918002553194003290` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021874 has offset 0).

The definition of A021874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021874.P9918002553194003290

`(10^(n+3)-3*7^(n+3)+3*4^(n+3)-1)/162`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021874

/-- `(10^(n+3)-3*7^(n+3)+3*4^(n+3)-1)/162` -/
def P9918002553194003290.Spec : Prop :=
  ∀ n, P9918002553194003290.a n = (A021874 n : ℚ)

end A021874

/-! ## A021874.P16072877993950450568

`∑[7^n+10*a(n-1)]+4*a(n-1)` with `a(0)=1`
-/

namespace A021874.P16072877993950450568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 ^ n + 10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A021874.P16072877993950450568

namespace A021874

/-- `∑[7^n+10*a(n-1)]+4*a(n-1)` -/
def P16072877993950450568.Spec : Prop :=
  ∀ n, (P16072877993950450568.a n : ℤ) = A021874 n

end A021874

/-! ## A021874.P9860851348902407411

`∑[A019618(n)]`
-/

namespace A021874.P9860851348902407411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021874.P9860851348902407411

namespace A021874

/-- `∑[A019618(n)]` -/
def P9860851348902407411.Spec : Prop :=
  ∀ n, P9860851348902407411.a n = A021874 n

end A021874

/-! ## A021874.P1995722376725487889

`A016252(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021874.P1995722376725487889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016252 n + 4 * a (n - 1)

end

end A021874.P1995722376725487889

namespace A021874

/-- `A016252(n)+4*a(n-1)` -/
def P1995722376725487889.Spec : Prop :=
  ∀ n, P1995722376725487889.a n = A021874 n

end A021874

/-! ## A021874.P8981608174524946469

`A016223(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A021874.P8981608174524946469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016223 n + 10 * a (n - 1)

end

end A021874.P8981608174524946469

namespace A021874

/-- `A016223(n)+10*a(n-1)` -/
def P8981608174524946469.Spec : Prop :=
  ∀ n, P8981608174524946469.a n = A021874 n

end A021874

/-! ## A021874.P355795230334432610

`A019618(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021874.P355795230334432610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019618 n + a (A023443 n).toNat

end

end A021874.P355795230334432610

namespace A021874

/-- `A019618(n)+a(A023443(n))` -/
def P355795230334432610.Spec : Prop :=
  ∀ n, P355795230334432610.a n = A021874 n

end A021874

/-! ## A021874.P15939479857347332742

`A019618(n)+a(n%A288827(n)-n)*a(n-1)` with `a(0)=1`
-/

namespace A021874.P15939479857347332742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019618 n + a (Int.tmod (n : ℤ) (A288827 n) - (n : ℤ)).toNat * a (n - 1)

end

end A021874.P15939479857347332742

namespace A021874

/-- `A019618(n)+a(n%A288827(n)-n)*a(n-1)` -/
def P15939479857347332742.Spec : Prop :=
  ∀ n, P15939479857347332742.a n = A021874 n

end A021874

/-! ## A021874.P5391612235826775171

`A111577(A052905(n)+9)`
-/

namespace A021874.P5391612235826775171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111577 (A052905 n + 9).toNat

end

end A021874.P5391612235826775171

namespace A021874

/-- `A111577(A052905(n)+9)` -/
def P5391612235826775171.Spec : Prop :=
  ∀ n, P5391612235826775171.a n = A021874 n

end A021874

/-! ## A021874.P5003881093542350421

`A111577(A055999(n)+10)`
-/

namespace A021874.P5003881093542350421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111577 (A055999 n + 10).toNat

end

end A021874.P5003881093542350421

namespace A021874

/-- `A111577(A055999(n)+10)` -/
def P5003881093542350421.Spec : Prop :=
  ∀ n, P5003881093542350421.a n = A021874 n

end A021874

/-! ## A021874.P6351329521802973748

`A111577(A167614(n+2)+1)`
-/

namespace A021874.P6351329521802973748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111577 (A167614 (n + 2) + 1).toNat

end

end A021874.P6351329521802973748

namespace A021874

/-- `A111577(A167614(n+2)+1)` -/
def P6351329521802973748.Spec : Prop :=
  ∀ n, P6351329521802973748.a n = A021874 n

end A021874

/-!
# A021879: Decimal expansion of 1/875.

The programs for A021879, the canonical program `A021879.P4767840786678791318` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021879 has offset 0).

The definition of A021879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021879.P4767840786678791318

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021879

/-- `9-a(n-3)` -/
def P4767840786678791318.Spec : Prop :=
  ∀ n, P4767840786678791318.a n = A021879 n

theorem P4767840786678791318.correct : P4767840786678791318.Spec := by
  intro n
  simp only [A021879]

end A021879

/-!
# A021880: Decimal expansion of 1/876.

The programs for A021880, the canonical program `A021880.P10973159702413613238` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021880 has offset 0).

The definition of A021880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021880.P10973159702413613238

`a(n-1)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=1, a(6)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021880

/-- `a(n-1)-a(n-4)+a(n-5)` -/
def P10973159702413613238.Spec : Prop :=
  ∀ n, P10973159702413613238.a n = A021880 n

theorem P10973159702413613238.correct : P10973159702413613238.Spec := by
  intro n
  simp only [A021880]

end A021880

/-!
# A021884: Expansion of 1/((1-x)(1-4x)(1-7x)(1-11x)).

The programs for A021884, there is no canonical definition to state claims against.
-/

/-! ## A021884.P6667282168601042359

`∑[A019623(n)]`
-/

namespace A021884.P6667282168601042359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021884.P6667282168601042359

/-! ## A021884.P1545869387371873257

`2*A021394(n)-A021364(n)`
-/

namespace A021884.P1545869387371873257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021394 n - A021364 n

end

end A021884.P1545869387371873257

/-! ## A021884.P15262279147535085898

`(A021964(n)+A021864(n))/2`
-/

namespace A021884.P15262279147535085898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021964 n + A021864 n : ℚ) / 2

end

end A021884.P15262279147535085898

/-! ## A021884.P8248838028961112940

`(A028133(n)+A021804(n))/2`
-/

namespace A021884.P8248838028961112940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028133 n + A021804 n : ℚ) / 2

end

end A021884.P8248838028961112940

/-! ## A021884.P11301075146299610741

`∑[(A019687(n)+A019613(n))/2]`
-/

namespace A021884.P11301075146299610741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019687 n + A019613 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021884.P11301075146299610741

/-! ## A021884.P5839853850271912240

`A019623(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A021884.P5839853850271912240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019623 (A028310 n).toNat + a (n - 1)

end

end A021884.P5839853850271912240

/-! ## A021884.P5449694288220843331

`2*A021984(n)-A024444(n)`
-/

namespace A021884.P5449694288220843331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021984 n - A024444 n

end

end A021884.P5449694288220843331

/-!
# A021892: Decimal expansion of 1/888.

The programs for A021892, the canonical program `A021892.P84059821437325387` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021892 has offset 0).

The definition of A021892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021892.P84059821437325387

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021892

/-- `a(n-3)` -/
def P84059821437325387.Spec : Prop :=
  ∀ n, (P84059821437325387.a n : ℤ) = A021892 n

theorem P84059821437325387.correct : P84059821437325387.Spec := by
  intro n
  simp only [A021892]

end A021892

/-!
# A021894: Expansion of 1/((1-x)(1-4x)(1-7x)(1-12x)).

The programs for A021894, there is no canonical definition to state claims against.
-/

/-! ## A021894.P2559099547670164415

`∑[A019628(n)]`
-/

namespace A021894.P2559099547670164415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021894.P2559099547670164415

/-! ## A021894.P16130160240339673411

`A016223(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021894.P16130160240339673411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016223 n + 12 * a (n - 1)

end

end A021894.P16130160240339673411

/-! ## A021894.P2095281398136897467

`∑[A016150(n)+13*a(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A021894.P2095281398136897467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016150 n + 13 * f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021894.P2095281398136897467

/-! ## A021894.P6124137759382968612

`2*A021104(n)-A021079(n)`
-/

namespace A021894.P6124137759382968612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021104 n - A021079 n

end

end A021894.P6124137759382968612

/-! ## A021894.P11527429763932820598

`∑[2*A016294(n)-A016285(n)]`
-/

namespace A021894.P11527429763932820598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016294 n - A016285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021894.P11527429763932820598

/-! ## A021894.P9272793241129134570

`A025965(n)+∑[A025970(n)-A025965(n)]`
-/

namespace A021894.P9272793241129134570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025970 n - A025965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025965 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021894.P9272793241129134570

/-! ## A021894.P13710301252453264689

`(A024440(n)+A021854(n))/2`
-/

namespace A021894.P13710301252453264689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024440 n + A021854 n : ℚ) / 2

end

end A021894.P13710301252453264689

/-!
# A021895: Decimal expansion of 1/891.

The programs for A021895, the canonical program `A021895.P17930057987504014831` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021895 has offset 0).

The definition of A021895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021895.P17930057987504014831

`A113675(A004526(n+1)+n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021895

/-- `A113675(A004526(n+1)+n)` -/
def P17930057987504014831.Spec : Prop :=
  ∀ n, P17930057987504014831.a n = A021895 n

theorem P17930057987504014831.correct : P17930057987504014831.Spec := by
  intro n
  simp only [A021895]

end A021895

