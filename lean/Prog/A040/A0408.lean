import SequenceMachineLib.Basic
import Seq.B000.C007

/-!
# A040813: Continued fraction for sqrt(843).

The programs for A040813, the canonical program `A040813.P18198025913009035077` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040813 has offset 0).

The definition of A040813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040813.P18198025913009035077

`a(n-2)` with `a(0)=29, a(1)=29, a(2)=58`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040813

/-- `a(n-2)` -/
def P18198025913009035077.Spec : Prop :=
  ∀ n, (P18198025913009035077.a n : ℤ) = A040813 n

theorem P18198025913009035077.correct : P18198025913009035077.Spec := by
  intro n
  simp only [A040813]

end A040813

/-!
# A040824: Continued fraction for sqrt(854).

The programs for A040824, the canonical program `A040824.P17277010443060937915` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040824 has offset 0).

The definition of A040824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040824.P17277010443060937915

`a(n-8)` with `a(0)=29, a(1)=4, a(2)=2, a(3)=11, a(4)=4, a(5)=11, a(6)=2, a(7)=4, a(8)=58`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040824

/-- `a(n-8)` -/
def P17277010443060937915.Spec : Prop :=
  ∀ n, (P17277010443060937915.a n : ℤ) = A040824 n

theorem P17277010443060937915.correct : P17277010443060937915.Spec := by
  intro n
  simp only [A040824]

end A040824

/-!
# A040825: Continued fraction for sqrt(855).

The programs for A040825, the canonical program `A040825.P17899073690986763746` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040825 has offset 0).

The definition of A040825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040825.P17899073690986763746

`a(n-4)` with `a(0)=29, a(1)=4, a(2)=6, a(3)=4, a(4)=58`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040825

/-- `a(n-4)` -/
def P17899073690986763746.Spec : Prop :=
  ∀ n, (P17899073690986763746.a n : ℤ) = A040825 n

theorem P17899073690986763746.correct : P17899073690986763746.Spec := by
  intro n
  simp only [A040825]

end A040825

/-!
# A040867: Continued fraction for sqrt(897).

The programs for A040867, the canonical program `A040867.P16318112174069372310` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040867 has offset 0).

The definition of A040867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040867.P16318112174069372310

`a(n-4)` with `a(0)=29, a(1)=1, a(2)=18, a(3)=1, a(4)=58`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040867

/-- `a(n-4)` -/
def P16318112174069372310.Spec : Prop :=
  ∀ n, (P16318112174069372310.a n : ℤ) = A040867 n

theorem P16318112174069372310.correct : P16318112174069372310.Spec := by
  intro n
  simp only [A040867]

end A040867

/-!
# A040871: Continued fraction for sqrt(902).

The programs for A040871, the canonical program `A040871.P4468805212625006581` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040871 has offset 0).

The definition of A040871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040871.P4468805212625006581

`a(n-2)` with `a(0)=30, a(1)=30, a(2)=60`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040871

/-- `a(n-2)` -/
def P4468805212625006581.Spec : Prop :=
  ∀ n, (P4468805212625006581.a n : ℤ) = A040871 n

theorem P4468805212625006581.correct : P4468805212625006581.Spec := by
  intro n
  simp only [A040871]

end A040871

/-!
# A040872: Continued fraction for sqrt(903).

The programs for A040872, the canonical program `A040872.P2801160740799025352` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040872 has offset 0).

The definition of A040872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040872.P2801160740799025352

`a(n-2)` with `a(0)=30, a(1)=20, a(2)=60`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040872

/-- `a(n-2)` -/
def P2801160740799025352.Spec : Prop :=
  ∀ n, (P2801160740799025352.a n : ℤ) = A040872 n

theorem P2801160740799025352.correct : P2801160740799025352.Spec := by
  intro n
  simp only [A040872]

end A040872

/-!
# A040873: Continued fraction for sqrt(904).

The programs for A040873, the canonical program `A040873.P12227980355607036763` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040873 has offset 0).

The definition of A040873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040873.P12227980355607036763

`a(n-2)` with `a(0)=30, a(1)=15, a(2)=60`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040873

/-- `a(n-2)` -/
def P12227980355607036763.Spec : Prop :=
  ∀ n, (P12227980355607036763.a n : ℤ) = A040873 n

theorem P12227980355607036763.correct : P12227980355607036763.Spec := by
  intro n
  simp only [A040873]

end A040873

/-!
# A040875: Continued fraction for sqrt(906).

The programs for A040875, the canonical program `A040875.P4468335248164453968` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040875 has offset 0).

The definition of A040875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040875.P4468335248164453968

`a(n-2)` with `a(0)=30, a(1)=10, a(2)=60`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040875

/-- `a(n-2)` -/
def P4468335248164453968.Spec : Prop :=
  ∀ n, (P4468335248164453968.a n : ℤ) = A040875 n

theorem P4468335248164453968.correct : P4468335248164453968.Spec := by
  intro n
  simp only [A040875]

end A040875

/-!
# A040889: Continued fraction for sqrt(920).

The programs for A040889, the canonical program `A040889.P9855967409553613426` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040889 has offset 0).

The definition of A040889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040889.P9855967409553613426

`a(n-2)` with `a(0)=30, a(1)=3, a(2)=60`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040889

/-- `a(n-2)` -/
def P9855967409553613426.Spec : Prop :=
  ∀ n, (P9855967409553613426.a n : ℤ) = A040889 n

theorem P9855967409553613426.correct : P9855967409553613426.Spec := by
  intro n
  simp only [A040889]

end A040889

