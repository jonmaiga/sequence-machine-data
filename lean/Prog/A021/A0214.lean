import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C013
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B002.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002

/-!
# A021400: Decimal expansion of 1/396.

The programs for A021400, the canonical program `A021400.P901710156926617086` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021400 has offset 0).

The definition of A021400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021400.P901710156926617086

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021400

/-- `a(n-2)` -/
def P901710156926617086.Spec : Prop :=
  ∀ n, (P901710156926617086.a n : ℤ) = A021400 n

theorem P901710156926617086.correct : P901710156926617086.Spec := by
  intro n
  simp only [A021400]

end A021400

/-!
# A021403: Decimal expansion of 1/399.

The programs for A021403, the canonical program `A021403.P11807217327430040666` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021403 has offset 0).

The definition of A021403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021403.P11807217327430040666

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5, a(4)=0, a(5)=6, a(6)=2, a(7)=6, a(8)=5, a(9)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021403

/-- `a(n-1)-a(n-9)+a(n-10)` -/
def P11807217327430040666.Spec : Prop :=
  ∀ n, P11807217327430040666.a n = A021403 n

theorem P11807217327430040666.correct : P11807217327430040666.Spec := by
  intro n
  simp only [A021403]

end A021403

/-!
# A021404: Expansion of 1/((1-x)*(1-3x)*(1-4x)*(1-12x)).

The programs for A021404, the canonical program `A021404.P10921507713033116698` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021404 has offset 0).

The definition of A021404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021404.P10921507713033116698

`(144*12^n-176*4^n+99*3^n-1)/66`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021404

/-- `(144*12^n-176*4^n+99*3^n-1)/66` -/
def P10921507713033116698.Spec : Prop :=
  ∀ n, P10921507713033116698.a n = (A021404 n : ℚ)

end A021404

/-! ## A021404.P15208072852988860696

`∑[A017161(n)]`
-/

namespace A021404.P15208072852988860696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021404.P15208072852988860696

namespace A021404

/-- `∑[A017161(n)]` -/
def P15208072852988860696.Spec : Prop :=
  ∀ n, P15208072852988860696.a n = A021404 n

end A021404

/-! ## A021404.P3700670372902823912

`∑[A016147(n)]+4*a(n-1)` with `a(0)=1`
-/

namespace A021404.P3700670372902823912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A021404.P3700670372902823912

namespace A021404

/-- `∑[A016147(n)]+4*a(n-1)` -/
def P3700670372902823912.Spec : Prop :=
  ∀ n, P3700670372902823912.a n = A021404 n

end A021404

/-! ## A021404.P11236970032689717985

`2*A021104(n)-A021064(n)`
-/

namespace A021404.P11236970032689717985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021104 n - A021064 n

end

end A021404.P11236970032689717985

namespace A021404

/-- `2*A021104(n)-A021064(n)` -/
def P11236970032689717985.Spec : Prop :=
  ∀ n, P11236970032689717985.a n = A021404 n

end A021404

/-! ## A021404.P7276593861435455078

`2*A021484(n)-A021794(n)`
-/

namespace A021404.P7276593861435455078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021484 n - A021794 n

end

end A021404.P7276593861435455078

namespace A021404

/-- `2*A021484(n)-A021794(n)` -/
def P7276593861435455078.Spec : Prop :=
  ∀ n, P7276593861435455078.a n = A021404 n

end A021404

/-! ## A021404.P17175753942032918451

`A017161(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021404.P17175753942032918451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017161 n + a (A023443 n).toNat

end

end A021404.P17175753942032918451

namespace A021404

/-- `A017161(n)+a(A023443(n))` -/
def P17175753942032918451.Spec : Prop :=
  ∀ n, P17175753942032918451.a n = A021404 n

end A021404

/-! ## A021404.P5350545377904671775

`∑[A000244(n)*A004171(n)-A085350(n)]`
-/

namespace A021404.P5350545377904671775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A004171 n - A085350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021404.P5350545377904671775

namespace A021404

/-- `∑[A000244(n)*A004171(n)-A085350(n)]` -/
def P5350545377904671775.Spec : Prop :=
  ∀ n, P5350545377904671775.a n = A021404 n

end A021404

/-! ## A021404.P10714442785233938183

`A016227(n+1)-A016217(n+1)`
-/

namespace A021404.P10714442785233938183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016227 (n + 1) - A016217 (n + 1)

end

end A021404.P10714442785233938183

namespace A021404

/-- `A016227(n+1)-A016217(n+1)` -/
def P10714442785233938183.Spec : Prop :=
  ∀ n, P10714442785233938183.a n = A021404 n

end A021404

/-!
# A021408: Decimal expansion of 1/404.

The programs for A021408, the canonical program `A021408.P10141694295047754286` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021408 has offset 0).

The definition of A021408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021408.P10141694295047754286

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=7, a(5)=5, a(6)=2, a(7)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021408

/-- `a(n-4)` -/
def P10141694295047754286.Spec : Prop :=
  ∀ n, (P10141694295047754286.a n : ℤ) = A021408 n

theorem P10141694295047754286.correct : P10141694295047754286.Spec := by
  intro n
  simp only [A021408]

end A021408

/-!
# A021409: Decimal expansion of 1/405.

The programs for A021409, the canonical program `A021409.P17093460775978934110` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021409 has offset 0).

The definition of A021409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021409.P17093460775978934110

`A289207(A007095(2*n))%10`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A021409

/-- `A289207(A007095(2*n))%10` -/
def P17093460775978934110.Spec : Prop :=
  ∀ n, P17093460775978934110.a n = A021409 n

theorem P17093460775978934110.correct : P17093460775978934110.Spec := by
  intro n
  simp only [A021409]

end A021409

/-!
# A021411: Decimal expansion of 1/407.

The programs for A021411, the canonical program `A021411.P8544129409873969328` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021411 has offset 0).

The definition of A021411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021411.P8544129409873969328

`round(atan(n%6)^6)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021411

/-- `round(atan(n%6)^6)` -/
def P8544129409873969328.Spec : Prop :=
  ∀ n, P8544129409873969328.a n = A021411 n

theorem P8544129409873969328.correct : P8544129409873969328.Spec := by
  intro n
  simp only [A021411]

end A021411

/-!
# A021414: Expansion of 1/((1-x)(1-3x)(1-5x)(1-6x)).

The programs for A021414, the canonical program `A021414.P9257354443817733627` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021414 has offset 0).

The definition of A021414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021414.P9257354443817733627

`(8*6^(n+3)-15*5^(n+3)+10*3^(n+3)-3)/120`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021414

/-- `(8*6^(n+3)-15*5^(n+3)+10*3^(n+3)-3)/120` -/
def P9257354443817733627.Spec : Prop :=
  ∀ n, P9257354443817733627.a n = (A021414 n : ℚ)

end A021414

/-! ## A021414.P15590115603884455487

`∑[A017269(n)]`
-/

namespace A021414.P15590115603884455487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021414.P15590115603884455487

namespace A021414

/-- `∑[A017269(n)]` -/
def P15590115603884455487.Spec : Prop :=
  ∀ n, P15590115603884455487.a n = A021414 n

end A021414

/-! ## A021414.P12250435832129872898

`A016209(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A021414.P12250435832129872898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016209 n + 6 * a (n - 1)

end

end A021414.P12250435832129872898

namespace A021414

/-- `A016209(n)+6*a(n-1)` -/
def P12250435832129872898.Spec : Prop :=
  ∀ n, P12250435832129872898.a n = A021414 n

end A021414

/-! ## A021414.P14911794541450167379

`2*A016228(n)-A016209(n)`
-/

namespace A021414.P14911794541450167379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016228 n - A016209 n

end

end A021414.P14911794541450167379

namespace A021414

/-- `2*A016228(n)-A016209(n)` -/
def P14911794541450167379.Spec : Prop :=
  ∀ n, P14911794541450167379.a n = A021414 n

end A021414

/-! ## A021414.P7837801047162902966

`2*A021354(n)-A021344(n)`
-/

namespace A021414.P7837801047162902966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021354 n - A021344 n

end

end A021414.P7837801047162902966

namespace A021414

/-- `2*A021354(n)-A021344(n)` -/
def P7837801047162902966.Spec : Prop :=
  ∀ n, P7837801047162902966.a n = A021414 n

end A021414

/-! ## A021414.P5522997251001691153

`∑[2*A016765(n)-A016753(n)]`
-/

namespace A021414.P5522997251001691153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016765 n - A016753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021414.P5522997251001691153

namespace A021414

/-- `∑[2*A016765(n)-A016753(n)]` -/
def P5522997251001691153.Spec : Prop :=
  ∀ n, P5522997251001691153.a n = A021414 n

end A021414

/-! ## A021414.P6137590720214565392

`A016211(n+1)-A016209(n+1)`
-/

namespace A021414.P6137590720214565392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016211 (n + 1) - A016209 (n + 1)

end

end A021414.P6137590720214565392

namespace A021414

/-- `A016211(n+1)-A016209(n+1)` -/
def P6137590720214565392.Spec : Prop :=
  ∀ n, P6137590720214565392.a n = A021414 n

end A021414

/-! ## A021414.P8221360482968252259

`2*A021424(n)-A021494(n)`
-/

namespace A021414.P8221360482968252259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021424 n - A021494 n

end

end A021414.P8221360482968252259

namespace A021414

/-- `2*A021424(n)-A021494(n)` -/
def P8221360482968252259.Spec : Prop :=
  ∀ n, P8221360482968252259.a n = A021414 n

end A021414

/-! ## A021414.P5107767961299975621

`2*A021504(n)-A028055(n)`
-/

namespace A021414.P5107767961299975621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021504 n - A028055 n

end

end A021414.P5107767961299975621

namespace A021414

/-- `2*A021504(n)-A028055(n)` -/
def P5107767961299975621.Spec : Prop :=
  ∀ n, P5107767961299975621.a n = A021414 n

end A021414

/-!
# A021420: Decimal expansion of 1/416.

The programs for A021420, the canonical program `A021420.P17602692373178697445` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021420 has offset 0).

The definition of A021420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021420.P17602692373178697445

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=0, a(5)=3, a(6)=8, a(7)=4, a(8)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021420

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P17602692373178697445.Spec : Prop :=
  ∀ n, P17602692373178697445.a n = A021420 n

theorem P17602692373178697445.correct : P17602692373178697445.Spec := by
  intro n
  simp only [A021420]

end A021420

/-!
# A021424: Expansion of 1/((1-x)(1-3x)(1-5x)(1-7x)).

The programs for A021424, the canonical program `A021424.P8549120849405029087` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021424 has offset 0).

The definition of A021424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021424.P8549120849405029087

`∑[A017389(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021424

/-- `∑[A017389(n)]` -/
def P8549120849405029087.Spec : Prop :=
  ∀ n, P8549120849405029087.a n = A021424 n

theorem P8549120849405029087.correct : P8549120849405029087.Spec := by
  intro n
  simp only [A021424]

end A021424

/-! ## A021424.P1211544684564913192

`A016230(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021424.P1211544684564913192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016230 n + 3 * a (n - 1)

end

end A021424.P1211544684564913192

namespace A021424

/-- `A016230(n)+3*a(n-1)` -/
def P1211544684564913192.Spec : Prop :=
  ∀ n, P1211544684564913192.a n = A021424 n

end A021424

/-! ## A021424.P3298517392736311373

`(A025931(n)+A021124(n))/2`
-/

namespace A021424.P3298517392736311373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025931 n + A021124 n : ℚ) / 2

end

end A021424.P3298517392736311373

namespace A021424

/-- `(A025931(n)+A021124(n))/2` -/
def P3298517392736311373.Spec : Prop :=
  ∀ n, P3298517392736311373.a n = (A021424 n : ℚ)

end A021424

/-! ## A021424.P664514321413488046

`2*A021454(n)-A021594(n)`
-/

namespace A021424.P664514321413488046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021454 n - A021594 n

end

end A021424.P664514321413488046

namespace A021424

/-- `2*A021454(n)-A021594(n)` -/
def P664514321413488046.Spec : Prop :=
  ∀ n, P664514321413488046.a n = A021424 n

end A021424

/-! ## A021424.P16032803064168811139

`A039755(A167614(n+2))`
-/

namespace A021424.P16032803064168811139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A167614 (n + 2)).toNat

end

end A021424.P16032803064168811139

namespace A021424

/-- `A039755(A167614(n+2))` -/
def P16032803064168811139.Spec : Prop :=
  ∀ n, P16032803064168811139.a n = A021424 n

end A021424

/-! ## A021424.P7480043525900565050

`A039755(A052905(n)+8)`
-/

namespace A021424.P7480043525900565050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A052905 n + 8).toNat

end

end A021424.P7480043525900565050

namespace A021424

/-- `A039755(A052905(n)+8)` -/
def P7480043525900565050.Spec : Prop :=
  ∀ n, P7480043525900565050.a n = A021424 n

end A021424

/-! ## A021424.P3643242548635524130

`A039755(A253145(n+2)+3)`
-/

namespace A021424.P3643242548635524130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A253145 (n + 2) + 3).toNat

end

end A021424.P3643242548635524130

namespace A021424

/-- `A039755(A253145(n+2)+3)` -/
def P3643242548635524130.Spec : Prop :=
  ∀ n, P3643242548635524130.a n = A021424 n

end A021424

/-! ## A021424.P3417854820181156546

`A039755(A000096(n+2)+4)`
-/

namespace A021424.P3417854820181156546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A000096 (n + 2) + 4).toNat

end

end A021424.P3417854820181156546

namespace A021424

/-- `A039755(A000096(n+2)+4)` -/
def P3417854820181156546.Spec : Prop :=
  ∀ n, P3417854820181156546.a n = A021424 n

end A021424

/-! ## A021424.P11858762264156699789

`A039756(∑[n+3]+n+3)`
-/

namespace A021424.P11858762264156699789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A021424.P11858762264156699789

namespace A021424

/-- `A039756(∑[n+3]+n+3)` -/
def P11858762264156699789.Spec : Prop :=
  ∀ n, P11858762264156699789.a n = A021424 n

end A021424

/-!
# A021429: Decimal expansion of 1/425.

The programs for A021429, there is no canonical definition to state claims against.
-/

/-! ## A021429.P8895449560345122059

`A007450(n+2)%round(1/acot(n²))`
-/

namespace A021429.P8895449560345122059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007450 (n + 2)) (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 2 : ℝ)))

end

end A021429.P8895449560345122059

/-!
# A021433: Decimal expansion of 1/429.

The programs for A021433, the canonical program `A021433.P7665663993037603839` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021433 has offset 0).

The definition of A021433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021433.P7665663993037603839

`3-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021433

/-- `3-a(n-3)` -/
def P7665663993037603839.Spec : Prop :=
  ∀ n, P7665663993037603839.a n = A021433 n

theorem P7665663993037603839.correct : P7665663993037603839.Spec := by
  intro n
  simp only [A021433]

end A021433

/-!
# A021434: Expansion of 1/((1-x)(1-3x)(1-5x)(1-8x)).

The programs for A021434, the canonical program `A021434.P9916888968984811589` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021434 has offset 0).

The definition of A021434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021434.P9916888968984811589

`(8^(n+4)-7*5^(n+4)+14*3^(n+4)-15)/840`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021434

/-- `(8^(n+4)-7*5^(n+4)+14*3^(n+4)-15)/840` -/
def P9916888968984811589.Spec : Prop :=
  ∀ n, P9916888968984811589.a n = (A021434 n : ℚ)

end A021434

/-! ## A021434.P5266220349421346410

`∑[A017521(n)]`
-/

namespace A021434.P5266220349421346410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021434.P5266220349421346410

namespace A021434

/-- `∑[A017521(n)]` -/
def P5266220349421346410.Spec : Prop :=
  ∀ n, P5266220349421346410.a n = A021434 n

end A021434

/-! ## A021434.P16087552233674810778

`A016214(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021434.P16087552233674810778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016214 n + 5 * a (n - 1)

end

end A021434.P16087552233674810778

namespace A021434

/-- `A016214(n)+5*a(n-1)` -/
def P16087552233674810778.Spec : Prop :=
  ∀ n, P16087552233674810778.a n = A021434 n

end A021434

/-! ## A021434.P8648159953310932922

`2*A021044(n)-A021024(n)`
-/

namespace A021434.P8648159953310932922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021044 n - A021024 n

end

end A021434.P8648159953310932922

namespace A021434

/-- `2*A021044(n)-A021024(n)` -/
def P8648159953310932922.Spec : Prop :=
  ∀ n, P8648159953310932922.a n = A021434 n

end A021434

/-! ## A021434.P17657408886981209256

`2*A021544(n)-A022452(n)`
-/

namespace A021434.P17657408886981209256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021544 n - A022452 n

end

end A021434.P17657408886981209256

namespace A021434

/-- `2*A021544(n)-A022452(n)` -/
def P17657408886981209256.Spec : Prop :=
  ∀ n, P17657408886981209256.a n = A021434 n

end A021434

/-! ## A021434.P10904994183429250393

`A021344(n)+A028027(n)-A021374(n)`
-/

namespace A021434.P10904994183429250393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021344 n + (A028027 n - A021374 n)

end

end A021434.P10904994183429250393

namespace A021434

/-- `A021344(n)+A028027(n)-A021374(n)` -/
def P10904994183429250393.Spec : Prop :=
  ∀ n, P10904994183429250393.a n = A021434 n

end A021434

/-! ## A021434.P8887563140830149348

`2*A021474(n)-A021664(n)`
-/

namespace A021434.P8887563140830149348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021474 n - A021664 n

end

end A021434.P8887563140830149348

namespace A021434

/-- `2*A021474(n)-A021664(n)` -/
def P8887563140830149348.Spec : Prop :=
  ∀ n, P8887563140830149348.a n = A021434 n

end A021434

/-! ## A021434.P1386667789940477119

`A021154(n)+A025935(n)-A021664(n)`
-/

namespace A021434.P1386667789940477119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021154 n + (A025935 n - A021664 n)

end

end A021434.P1386667789940477119

namespace A021434

/-- `A021154(n)+A025935(n)-A021664(n)` -/
def P1386667789940477119.Spec : Prop :=
  ∀ n, P1386667789940477119.a n = A021434 n

end A021434

/-!
# A021436: Decimal expansion of 1/432.

The programs for A021436, the canonical program `A021436.P7372230912301981606` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021436 has offset 0).

The definition of A021436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021436.P7372230912301981606

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=1, a(5)=4, a(6)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021436

/-- `a(n-3)` -/
def P7372230912301981606.Spec : Prop :=
  ∀ n, (P7372230912301981606.a n : ℤ) = A021436 n

theorem P7372230912301981606.correct : P7372230912301981606.Spec := by
  intro n
  simp only [A021436]

end A021436

/-!
# A021444: Decimal expansion of 1/440.

The programs for A021444, the canonical program `A021444.P9110247987521309681` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021444 has offset 0).

The definition of A021444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021444.P9110247987521309681

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021444

/-- `a(n-2)` -/
def P9110247987521309681.Spec : Prop :=
  ∀ n, (P9110247987521309681.a n : ℤ) = A021444 n

theorem P9110247987521309681.correct : P9110247987521309681.Spec := by
  intro n
  simp only [A021444]

end A021444

/-!
# A021448: Decimal expansion of 1/444.

The programs for A021448, the canonical program `A021448.P6157008774988354605` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021448 has offset 0).

The definition of A021448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021448.P6157008774988354605

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021448

/-- `a(n-3)` -/
def P6157008774988354605.Spec : Prop :=
  ∀ n, (P6157008774988354605.a n : ℤ) = A021448 n

theorem P6157008774988354605.correct : P6157008774988354605.Spec := by
  intro n
  simp only [A021448]

end A021448

/-!
# A021454: Expansion of 1/((1-x)(1-3x)(1-5x)(1-9x)).

The programs for A021454, the canonical program `A021454.P7649168580883639555` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021454 has offset 0).

The definition of A021454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021454.P7649168580883639555

`(3*9^(n+2)-2*5^(n+3)+8*3^(n+2)-1)/64`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021454

/-- `(3*9^(n+2)-2*5^(n+3)+8*3^(n+2)-1)/64` -/
def P7649168580883639555.Spec : Prop :=
  ∀ n, P7649168580883639555.a n = (A021454 n : ℚ)

end A021454

/-! ## A021454.P11866134519438862415

`∑[A017897(n)]`
-/

namespace A021454.P11866134519438862415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021454.P11866134519438862415

namespace A021454

/-- `∑[A017897(n)]` -/
def P11866134519438862415.Spec : Prop :=
  ∀ n, P11866134519438862415.a n = A021454 n

end A021454

/-! ## A021454.P5462862700600569253

`A016234(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021454.P5462862700600569253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016234 n + 3 * a (n - 1)

end

end A021454.P5462862700600569253

namespace A021454

/-- `A016234(n)+3*a(n-1)` -/
def P5462862700600569253.Spec : Prop :=
  ∀ n, P5462862700600569253.a n = A021454 n

end A021454

/-! ## A021454.P4335598733325512496

`A016209(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A021454.P4335598733325512496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016209 n + 9 * a (n - 1)

end

end A021454.P4335598733325512496

namespace A021454

/-- `A016209(n)+9*a(n-1)` -/
def P4335598733325512496.Spec : Prop :=
  ∀ n, P4335598733325512496.a n = A021454 n

end A021454

/-! ## A021454.P11492017620402028433

`a(n-1)+A017897(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A021454.P11492017620402028433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017897 n + A000007 (n + 1))

end

end A021454.P11492017620402028433

namespace A021454

/-- `a(n-1)+A017897(n)+A000007(n+1)` -/
def P11492017620402028433.Spec : Prop :=
  ∀ n, P11492017620402028433.a n = A021454 n

end A021454

/-! ## A021454.P14382114550416085248

`2*A021594(n)-A022453(n)`
-/

namespace A021454.P14382114550416085248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021594 n - A022453 n

end

end A021454.P14382114550416085248

namespace A021454

/-- `2*A021594(n)-A022453(n)` -/
def P14382114550416085248.Spec : Prop :=
  ∀ n, P14382114550416085248.a n = A021454 n

end A021454

/-!
# A021459: Decimal expansion of 1/455.

The programs for A021459, the canonical program `A021459.P16745886634847154653` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021459 has offset 0).

The definition of A021459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021459.P16745886634847154653

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021459

/-- `9-a(n-3)` -/
def P16745886634847154653.Spec : Prop :=
  ∀ n, P16745886634847154653.a n = A021459 n

theorem P16745886634847154653.correct : P16745886634847154653.Spec := by
  intro n
  simp only [A021459]

end A021459

/-!
# A021464: Expansion of 1/((1-x)(1-3x)(1-5x)(1-10x)).

The programs for A021464, the canonical program `A021464.P1889180395666986606` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021464 has offset 0).

The definition of A021464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021464.P1889180395666986606

`∑[A017916(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021464

/-- `∑[A017916(n)]` -/
def P1889180395666986606.Spec : Prop :=
  ∀ n, P1889180395666986606.a n = A021464 n

theorem P1889180395666986606.correct : P1889180395666986606.Spec := by
  intro n
  simp only [A021464]

end A021464

/-! ## A021464.P15804384456938094916

`2*A016215(n)-A016209(n)`
-/

namespace A021464.P15804384456938094916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016215 n - A016209 n

end

end A021464.P15804384456938094916

namespace A021464

/-- `2*A016215(n)-A016209(n)` -/
def P15804384456938094916.Spec : Prop :=
  ∀ n, P15804384456938094916.a n = A021464 n

end A021464

/-! ## A021464.P16942222428024867971

`(A025934(n)+A021144(n))/2`
-/

namespace A021464.P16942222428024867971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025934 n + A021144 n : ℚ) / 2

end

end A021464.P16942222428024867971

namespace A021464

/-- `(A025934(n)+A021144(n))/2` -/
def P16942222428024867971.Spec : Prop :=
  ∀ n, P16942222428024867971.a n = (A021464 n : ℚ)

end A021464

/-! ## A021464.P3975924397678662679

`A021604(n)+A021604(n)-A022454(n)`
-/

namespace A021464.P3975924397678662679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021604 n + (A021604 n - A022454 n)

end

end A021464.P3975924397678662679

namespace A021464

/-- `A021604(n)+A021604(n)-A022454(n)` -/
def P3975924397678662679.Spec : Prop :=
  ∀ n, P3975924397678662679.a n = A021464 n

end A021464

/-! ## A021464.P8715131796226040663

`2*A021604(n)-A022454(n)`
-/

namespace A021464.P8715131796226040663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021604 n - A022454 n

end

end A021464.P8715131796226040663

namespace A021464

/-- `2*A021604(n)-A022454(n)` -/
def P8715131796226040663.Spec : Prop :=
  ∀ n, P8715131796226040663.a n = A021464 n

end A021464

/-! ## A021464.P1561303699607814798

`(A016237(n+1)-A016215(n+1))/2`
-/

namespace A021464.P1561303699607814798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016237 (n + 1) - A016215 (n + 1) : ℚ) / 2

end

end A021464.P1561303699607814798

namespace A021464

/-- `(A016237(n+1)-A016215(n+1))/2` -/
def P1561303699607814798.Spec : Prop :=
  ∀ n, P1561303699607814798.a n = (A021464 n : ℚ)

end A021464

/-!
# A021466: Decimal expansion of 1/462.

The programs for A021466, the canonical program `A021466.P16567478159043571720` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021466 has offset 0).

The definition of A021466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021466.P16567478159043571720

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021466

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P16567478159043571720.Spec : Prop :=
  ∀ n, P16567478159043571720.a n = A021466 n

theorem P16567478159043571720.correct : P16567478159043571720.Spec := by
  intro n
  simp only [A021466]

end A021466

/-!
# A021472: Decimal expansion of 1/468.

The programs for A021472, the canonical program `A021472.P8450442023294996895` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021472 has offset 0).

The definition of A021472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021472.P8450442023294996895

`8-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021472

/-- `8-a(n-3)` -/
def P8450442023294996895.Spec : Prop :=
  ∀ n, P8450442023294996895.a n = A021472 n

theorem P8450442023294996895.correct : P8450442023294996895.Spec := by
  intro n
  simp only [A021472]

end A021472

/-!
# A021474: Expansion of 1/((1-x)(1-3x)(1-5x)(1-11x)).

The programs for A021474, the canonical program `A021474.P10247681984688898676` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021474 has offset 0).

The definition of A021474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021474.P10247681984688898676

`(11^(n+3)-10*5^(n+3)+15*3^(n+3)-6)/480`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021474

/-- `(11^(n+3)-10*5^(n+3)+15*3^(n+3)-6)/480` -/
def P10247681984688898676.Spec : Prop :=
  ∀ n, P10247681984688898676.a n = (A021474 n : ℚ)

end A021474

/-! ## A021474.P10866357241132435523

`∑[A017917(n)]`
-/

namespace A021474.P10866357241132435523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021474.P10866357241132435523

namespace A021474

/-- `∑[A017917(n)]` -/
def P10866357241132435523.Spec : Prop :=
  ∀ n, P10866357241132435523.a n = A021474 n

end A021474

/-! ## A021474.P2148456092073822763

`A016238(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021474.P2148456092073822763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016238 n + 3 * a (n - 1)

end

end A021474.P2148456092073822763

namespace A021474

/-- `A016238(n)+3*a(n-1)` -/
def P2148456092073822763.Spec : Prop :=
  ∀ n, P2148456092073822763.a n = A021474 n

end A021474

/-! ## A021474.P6983374463146099143

`∑[A016146(n)+5*a(n-1)]` with `a(0)=1`
-/

namespace A021474.P6983374463146099143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016146 n + 5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021474.P6983374463146099143

namespace A021474

/-- `∑[A016146(n)+5*a(n-1)]` -/
def P6983374463146099143.Spec : Prop :=
  ∀ n, P6983374463146099143.a n = A021474 n

end A021474

/-! ## A021474.P12247472981721526036

`2*A021614(n)-A022455(n)`
-/

namespace A021474.P12247472981721526036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021614 n - A022455 n

end

end A021474.P12247472981721526036

namespace A021474

/-- `2*A021614(n)-A022455(n)` -/
def P12247472981721526036.Spec : Prop :=
  ∀ n, P12247472981721526036.a n = A021474 n

end A021474

/-!
# A021482: Decimal expansion of 1/478.

The programs for A021482, the canonical program `A021482.P15172944435135842843` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021482 has offset 0).

The definition of A021482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021482.P15172944435135842843

`a(n-7)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=9, a(5)=2, a(6)=0, a(7)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021482

/-- `a(n-7)` -/
def P15172944435135842843.Spec : Prop :=
  ∀ n, (P15172944435135842843.a n : ℤ) = A021482 n

theorem P15172944435135842843.correct : P15172944435135842843.Spec := by
  intro n
  simp only [A021482]

end A021482

/-!
# A021484: Expansion of 1/((1-x)*(1-3*x)*(1-5*x)*(1-12*x)).

The programs for A021484, there is no canonical definition to state claims against.
-/

/-! ## A021484.P13156263562719336084

`∑[A017918(n)]`
-/

namespace A021484.P13156263562719336084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021484.P13156263562719336084

/-! ## A021484.P8745683864508064683

`A016239(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021484.P8745683864508064683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016239 n + 3 * a (n - 1)

end

end A021484.P8745683864508064683

/-! ## A021484.P18036724905558004535

`A016209(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021484.P18036724905558004535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016209 n + 12 * a (n - 1)

end

end A021484.P18036724905558004535

/-! ## A021484.P13643493094318402673

`A017918(or(n, char[1]))+a(n-1)` with `a(0)=1`
-/

namespace A021484.P13643493094318402673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017918 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A021484.P13643493094318402673

/-! ## A021484.P7070960259148872256

`A017918(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A021484.P7070960259148872256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017918 (n % (n + 1)) + a (n - 1)

end

end A021484.P7070960259148872256

/-! ## A021484.P7620632981576121829

`A017918(gcd(n, 2*n))+a(n-1)` with `a(0)=1`
-/

namespace A021484.P7620632981576121829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017918 (Nat.gcd n (2 * n)) + a (n - 1)

end

end A021484.P7620632981576121829

/-! ## A021484.P12133313715809204560

`(A021794(n)+A021404(n))/2`
-/

namespace A021484.P12133313715809204560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021794 n + A021404 n : ℚ) / 2

end

end A021484.P12133313715809204560

/-! ## A021484.P12436147470277637232

`(A025936(n)+A021164(n))/2`
-/

namespace A021484.P12436147470277637232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025936 n + A021164 n : ℚ) / 2

end

end A021484.P12436147470277637232

/-! ## A021484.P13921600418577084060

`A017918(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A021484.P13921600418577084060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017918 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A021484.P13921600418577084060

/-! ## A021484.P661946365998782855

`A021629(n)+A021629(n)-A022456(n)`
-/

namespace A021484.P661946365998782855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021629 n + (A021629 n - A022456 n)

end

end A021484.P661946365998782855

/-!
# A021485: Decimal expansion of 1/481.

The programs for A021485, the canonical program `A021485.P11290872009575663822` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021485 has offset 0).

The definition of A021485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021485.P11290872009575663822

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021485

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P11290872009575663822.Spec : Prop :=
  ∀ n, P11290872009575663822.a n = A021485 n

theorem P11290872009575663822.correct : P11290872009575663822.Spec := by
  intro n
  simp only [A021485]

end A021485

/-!
# A021494: Expansion of 1/((1-x)(1-3x)(1-6x)(1-7x)).

The programs for A021494, the canonical program `A021494.P1676618742672963756` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021494 has offset 0).

The definition of A021494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021494.P1676618742672963756

`(5*7^(n+3)-8*6^(n+3)+5*3^(n+3)-2)/120`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021494

/-- `(5*7^(n+3)-8*6^(n+3)+5*3^(n+3)-2)/120` -/
def P1676618742672963756.Spec : Prop :=
  ∀ n, P1676618742672963756.a n = (A021494 n : ℚ)

end A021494

/-! ## A021494.P7823736241759113314

`∑[A017931(n)]`
-/

namespace A021494.P7823736241759113314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021494.P7823736241759113314

namespace A021494

/-- `∑[A017931(n)]` -/
def P7823736241759113314.Spec : Prop :=
  ∀ n, P7823736241759113314.a n = A021494 n

end A021494

/-! ## A021494.P2203359953515586384

`2*A021424(n)-A021414(n)`
-/

namespace A021494.P2203359953515586384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021424 n - A021414 n

end

end A021494.P2203359953515586384

namespace A021494

/-- `2*A021424(n)-A021414(n)` -/
def P2203359953515586384.Spec : Prop :=
  ∀ n, P2203359953515586384.a n = A021494 n

end A021494

/-! ## A021494.P9430806374382228949

`A016212(n+1)-A016211(n+1)`
-/

namespace A021494.P9430806374382228949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016212 (n + 1) - A016211 (n + 1)

end

end A021494.P9430806374382228949

namespace A021494

/-- `A016212(n+1)-A016211(n+1)` -/
def P9430806374382228949.Spec : Prop :=
  ∀ n, P9430806374382228949.a n = A021494 n

end A021494

/-! ## A021494.P5950727159212932954

`2*A021503(n)-A021544(n)`
-/

namespace A021494.P5950727159212932954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021503 n - A021544 n

end

end A021494.P5950727159212932954

namespace A021494

/-- `2*A021503(n)-A021544(n)` -/
def P5950727159212932954.Spec : Prop :=
  ∀ n, P5950727159212932954.a n = A021494 n

end A021494

/-! ## A021494.P1752380965698693690

`2*A021824(n)-A028039(n)`
-/

namespace A021494.P1752380965698693690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021824 n - A028039 n

end

end A021494.P1752380965698693690

namespace A021494

/-- `2*A021824(n)-A028039(n)` -/
def P1752380965698693690.Spec : Prop :=
  ∀ n, P1752380965698693690.a n = A021494 n

end A021494

/-!
# A021496: Decimal expansion of 1/492.

The programs for A021496, the canonical program `A021496.P12985417915601624047` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021496 has offset 0).

The definition of A021496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021496.P12985417915601624047

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=2, a(6)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021496

/-- `a(n-5)` -/
def P12985417915601624047.Spec : Prop :=
  ∀ n, (P12985417915601624047.a n : ℤ) = A021496 n

theorem P12985417915601624047.correct : P12985417915601624047.Spec := by
  intro n
  simp only [A021496]

end A021496

/-!
# A021499: Decimal expansion of 1/495.

The programs for A021499, the canonical program `A021499.P13643299144790035592` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021499 has offset 0).

The definition of A021499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021499.P13643299144790035592

`Δ[abs(or(1, -n))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021499

/-- `Δ[abs(or(1, -n))]` -/
def P13643299144790035592.Spec : Prop :=
  ∀ n, P13643299144790035592.a n = A021499 n

theorem P13643299144790035592.correct : P13643299144790035592.Spec := by
  intro n
  simp only [A021499]

end A021499

