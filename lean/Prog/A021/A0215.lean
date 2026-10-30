import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C007
import Seq.B002.C004
import Seq.Opaque.C001
import Seq.Opaque.C014

/-!
# A021503: Expansion of 1/((1-x)(1-3x)(1-6x)(1-8x)).

The programs for A021503, the canonical program `A021503.P7873642768490043489` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021503 has offset 0).

The definition of A021503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021503.P7873642768490043489

`(3*8^(n+3)-7*6^(n+3)+7*3^(n+3)-3)/210`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021503

/-- `(3*8^(n+3)-7*6^(n+3)+7*3^(n+3)-3)/210` -/
def P7873642768490043489.Spec : Prop :=
  ∀ n, P7873642768490043489.a n = (A021503 n : ℚ)

end A021503

/-! ## A021503.P4652607220349114143

`∑[A017932(n)]`
-/

namespace A021503.P4652607220349114143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021503.P4652607220349114143

namespace A021503

/-- `∑[A017932(n)]` -/
def P4652607220349114143.Spec : Prop :=
  ∀ n, P4652607220349114143.a n = A021503 n

end A021503

/-! ## A021503.P13692584201741552981

`A016214(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A021503.P13692584201741552981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016214 n + 6 * a (n - 1)

end

end A021503.P13692584201741552981

namespace A021503

/-- `A016214(n)+6*a(n-1)` -/
def P13692584201741552981.Spec : Prop :=
  ∀ n, P13692584201741552981.a n = A021503 n

end A021503

/-! ## A021503.P4957472689080684022

`2*A021374(n)-A021354(n)`
-/

namespace A021503.P4957472689080684022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021374 n - A021354 n

end

end A021503.P4957472689080684022

namespace A021503

/-- `2*A021374(n)-A021354(n)` -/
def P4957472689080684022.Spec : Prop :=
  ∀ n, P4957472689080684022.a n = A021503 n

end A021503

/-! ## A021503.P6927781190439336282

`∑[2*A016170(n)-A016140(n)]`
-/

namespace A021503.P6927781190439336282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016170 n - A016140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021503.P6927781190439336282

namespace A021503

/-- `∑[2*A016170(n)-A016140(n)]` -/
def P6927781190439336282.Spec : Prop :=
  ∀ n, P6927781190439336282.a n = A021503 n

end A021503

/-! ## A021503.P17960665443606156504

`2*A021634(n)-A023954(n)`
-/

namespace A021503.P17960665443606156504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021634 n - A023954 n

end

end A021503.P17960665443606156504

namespace A021503

/-- `2*A021634(n)-A023954(n)` -/
def P17960665443606156504.Spec : Prop :=
  ∀ n, P17960665443606156504.a n = A021503 n

end A021503

/-! ## A021503.P11049113215110825442

`2*A021514(n)-A021644(n)`
-/

namespace A021503.P11049113215110825442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021514 n - A021644 n

end

end A021503.P11049113215110825442

namespace A021503

/-- `2*A021514(n)-A021644(n)` -/
def P11049113215110825442.Spec : Prop :=
  ∀ n, P11049113215110825442.a n = A021503 n

end A021503

/-!
# A021504: Expansion of 1/((1-x)(1-3x)(1-6x)(1-9x)).

The programs for A021504, the canonical program `A021504.P16014013981475747488` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021504 has offset 0).

The definition of A021504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021504.P16014013981475747488

`(5*9^(n+3)-16*6^(n+3)+20*3^(n+3)-9)/720`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021504

/-- `(5*9^(n+3)-16*6^(n+3)+20*3^(n+3)-9)/720` -/
def P16014013981475747488.Spec : Prop :=
  ∀ n, P16014013981475747488.a n = (A021504 n : ℚ)

end A021504

/-! ## A021504.P1341652444354424857

`∑[A017933(n)]`
-/

namespace A021504.P1341652444354424857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021504.P1341652444354424857

namespace A021504

/-- `∑[A017933(n)]` -/
def P1341652444354424857.Spec : Prop :=
  ∀ n, P1341652444354424857.a n = A021504 n

end A021504

/-! ## A021504.P11291823591115800353

`a(n-1)+A016244(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021504.P11291823591115800353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016244 n + 2 * a (n - 1))

end

end A021504.P11291823591115800353

namespace A021504

/-- `a(n-1)+A016244(n)+2*a(n-1)` -/
def P11291823591115800353.Spec : Prop :=
  ∀ n, P11291823591115800353.a n = A021504 n

end A021504

/-! ## A021504.P8000747133385362946

`∑[A000244(n)*A000392(n+3)]`
-/

namespace A021504.P8000747133385362946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000392 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021504.P8000747133385362946

namespace A021504

/-- `∑[A000244(n)*A000392(n+3)]` -/
def P8000747133385362946.Spec : Prop :=
  ∀ n, P8000747133385362946.a n = A021504 n

end A021504

/-! ## A021504.P13302759436809199764

`∑[Δ[A007051(n)]*A000392(n+3)]`
-/

namespace A021504.P13302759436809199764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000392 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021504.P13302759436809199764

namespace A021504

/-- `∑[Δ[A007051(n)]*A000392(n+3)]` -/
def P13302759436809199764.Spec : Prop :=
  ∀ n, P13302759436809199764.a n = A021504 n

end A021504

/-! ## A021504.P374696877300992565

`∑[A000392(n+3)*A140429(n+1)]`
-/

namespace A021504.P374696877300992565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 3) * A140429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021504.P374696877300992565

namespace A021504

/-- `∑[A000392(n+3)*A140429(n+1)]` -/
def P374696877300992565.Spec : Prop :=
  ∀ n, P374696877300992565.a n = A021504 n

end A021504

/-! ## A021504.P11508249787014080640

`∑[A075916(n)/2^n]`
-/

namespace A021504.P11508249787014080640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075916 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021504.P11508249787014080640

namespace A021504

/-- `∑[A075916(n)/2^n]` -/
def P11508249787014080640.Spec : Prop :=
  ∀ n, P11508249787014080640.a n = (A021504 n : ℚ)

end A021504

/-! ## A021504.P18187515931648802371

`∑[A076009(n)/3^n]`
-/

namespace A021504.P18187515931648802371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076009 n : ℚ) / (3 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021504.P18187515931648802371

namespace A021504

/-- `∑[A076009(n)/3^n]` -/
def P18187515931648802371.Spec : Prop :=
  ∀ n, P18187515931648802371.a n = (A021504 n : ℚ)

end A021504

/-! ## A021504.P8384989072765023507

`∑[A075498(A046691(n)+7)]`
-/

namespace A021504.P8384989072765023507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021504.P8384989072765023507

namespace A021504

/-- `∑[A075498(A046691(n)+7)]` -/
def P8384989072765023507.Spec : Prop :=
  ∀ n, P8384989072765023507.a n = A021504 n

end A021504

/-!
# A021508: Decimal expansion of 1/504.

The programs for A021508, the canonical program `A021508.P14764571106096136458` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021508 has offset 0).

The definition of A021508 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021508.anchor (n : ℕ) : A021508 n = ((10 ^ (n + 1) / 504 % 10 : ℕ) : ℤ)` in `Proof.A021.A021508`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021508.P9932371312748047346

`ogf((x^2+7x^3-8x^4+5x^5)/(1-2x+2x^2-x^3))`
-/

namespace A021508.P9932371312748047346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 7, -8, 5] [1, -2, 2, -1] n

end

end A021508.P9932371312748047346

namespace A021508

/-- `ogf((x^2+7x^3-8x^4+5x^5)/(1-2x+2x^2-x^3))` -/
def P9932371312748047346.Spec : Prop :=
  ∀ n, P9932371312748047346.a n = A021508 n

end A021508

/-! ## A021508.P14764571106096136458

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9, a(4)=8, a(5)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021508

/-- `2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P14764571106096136458.Spec : Prop :=
  ∀ n, P14764571106096136458.a n = A021508 n

theorem P14764571106096136458.correct : P14764571106096136458.Spec := by
  intro n
  simp only [A021508]

end A021508

/-!
# A021509: Decimal expansion of 1/505.

The programs for A021509, the canonical program `A021509.P18286176894673684441` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021509 has offset 0).

The definition of A021509 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021509.anchor (n : ℕ) : A021509 n = ((10 ^ (n + 1) / 505 % 10 : ℕ) : ℤ)` in `Proof.A021.A021509`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021509.P6045953517153165770

`ogf((x^2+8x^3)/(1-x+x^2-x^3))`
-/

namespace A021509.P6045953517153165770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 8] [1, -1, 1, -1] n

end

end A021509.P6045953517153165770

namespace A021509

/-- `ogf((x^2+8x^3)/(1-x+x^2-x^3))` -/
def P6045953517153165770.Spec : Prop :=
  ∀ n, P6045953517153165770.a n = A021509 n

end A021509

/-! ## A021509.P18286176894673684441

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021509

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P18286176894673684441.Spec : Prop :=
  ∀ n, P18286176894673684441.a n = A021509 n

theorem P18286176894673684441.correct : P18286176894673684441.Spec := by
  intro n
  simp only [A021509]

end A021509

/-!
# A021510: Decimal expansion of 1/506.

The programs for A021510, the canonical program `A021510.P6455396104866369863` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021510 has offset 0).

The definition of A021510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021510.P6455396104866369863

`ogf((x^2+8x^3-2x^4-x^5-4x^6+6x^7-4x^8+x^9+3x^10-4x^11+5x^12)/(1-x+x^11-x^12))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021510

/-- `ogf((x^2+8x^3-2x^4-x^5-4x^6+6x^7-4x^8+x^9+3x^10-4x^11+5x^12)/(1-x+x^11-x^12))` -/
def P6455396104866369863.Spec : Prop :=
  ∀ n, P6455396104866369863.a n = A021510 n

theorem P6455396104866369863.correct : P6455396104866369863.Spec := by
  intro n
  simp only [A021510]

end A021510

/-!
# A021514: Expansion of 1/((1-x)(1-3x)(1-6x)(1-10x)).

The programs for A021514, the canonical program `A021514.P3610408554453606658` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021514 has offset 0).

The definition of A021514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021514.P3610408554453606658

`∑[A017952(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021514

/-- `∑[A017952(n)]` -/
def P3610408554453606658.Spec : Prop :=
  ∀ n, P3610408554453606658.a n = A021514 n

theorem P3610408554453606658.correct : P3610408554453606658.Spec := by
  intro n
  simp only [A021514]

end A021514

/-! ## A021514.P7397053225942681602

`A016211(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A021514.P7397053225942681602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016211 n + 10 * a (n - 1)

end

end A021514.P7397053225942681602

namespace A021514

/-- `A016211(n)+10*a(n-1)` -/
def P7397053225942681602.Spec : Prop :=
  ∀ n, P7397053225942681602.a n = A021514 n

end A021514

/-! ## A021514.P11464062678074670856

`A071952(n+4)/2^n`
-/

namespace A021514.P11464062678074670856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071952 (n + 4) : ℚ) / (2 ^ n : ℚ)

end

end A021514.P11464062678074670856

namespace A021514

/-- `A071952(n+4)/2^n` -/
def P11464062678074670856.Spec : Prop :=
  ∀ n, P11464062678074670856.a n = (A021514 n : ℚ)

end A021514

/-! ## A021514.P3578037745448701807

`A080248(A167614(n+2))`
-/

namespace A021514.P3578037745448701807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (A167614 (n + 2)).toNat

end

end A021514.P3578037745448701807

namespace A021514

/-- `A080248(A167614(n+2))` -/
def P3578037745448701807.Spec : Prop :=
  ∀ n, P3578037745448701807.a n = A021514 n

end A021514

/-! ## A021514.P14463912318271496730

`A080248(eq[2, A165680(n+1)])`
-/

namespace A021514.P14463912318271496730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A021514.P14463912318271496730

namespace A021514

/-- `A080248(eq[2, A165680(n+1)])` -/
def P14463912318271496730.Spec : Prop :=
  ∀ n, P14463912318271496730.a n = A021514 n

end A021514

/-!
# A021522: Decimal expansion of 1/518.

The programs for A021522, the canonical program `A021522.P15879894980082290998` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021522 has offset 0).

The definition of A021522 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021522.anchor (n : ℕ) : A021522 n = ((10 ^ (n + 1) / 518 % 10 : ℕ) : ℤ)` in `Proof.A021.A021522`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021522.P15879894980082290998

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9, a(4)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021522

/-- `9-(a(n-2)+a(n-4))` -/
def P15879894980082290998.Spec : Prop :=
  ∀ n, P15879894980082290998.a n = A021522 n

theorem P15879894980082290998.correct : P15879894980082290998.Spec := by
  intro n
  simp only [A021522]

end A021522

/-!
# A021524: Expansion of 1/((1-x)*(1-3*x)*(1-6*x)*(1-11*x)).

The programs for A021524, the canonical program `A021524.P9411390622290237392` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021524 has offset 0).

The definition of A021524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021524.P9411390622290237392

`17*a(n-1)-66*a(n-2)+(3^(n+1)-1)/2` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021524

/-- `17*a(n-1)-66*a(n-2)+(3^(n+1)-1)/2` -/
def P9411390622290237392.Spec : Prop :=
  ∀ n, P9411390622290237392.a n = (A021524 n : ℚ)

end A021524

/-! ## A021524.P14167684241404120649

`∑[A017953(n)]`
-/

namespace A021524.P14167684241404120649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021524.P14167684241404120649

namespace A021524

/-- `∑[A017953(n)]` -/
def P14167684241404120649.Spec : Prop :=
  ∀ n, P14167684241404120649.a n = A021524 n

end A021524

/-! ## A021524.P11752442865826968262

`A016247(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021524.P11752442865826968262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016247 n + 3 * a (n - 1)

end

end A021524.P11752442865826968262

namespace A021524

/-- `A016247(n)+3*a(n-1)` -/
def P11752442865826968262.Spec : Prop :=
  ∀ n, P11752442865826968262.a n = A021524 n

end A021524

/-! ## A021524.P10442527029580014945

`(A023952(n)+A021494(n))/2`
-/

namespace A021524.P10442527029580014945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023952 n + A021494 n : ℚ) / 2

end

end A021524.P10442527029580014945

namespace A021524

/-- `(A023952(n)+A021494(n))/2` -/
def P10442527029580014945.Spec : Prop :=
  ∀ n, P10442527029580014945.a n = (A021524 n : ℚ)

end A021524

/-! ## A021524.P1150801334760892809

`A017953(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021524.P1150801334760892809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017953 n + a (A023443 n).toNat

end

end A021524.P1150801334760892809

namespace A021524

/-- `A017953(n)+a(A023443(n))` -/
def P1150801334760892809.Spec : Prop :=
  ∀ n, P1150801334760892809.a n = A021524 n

end A021524

/-! ## A021524.P913480606091002174

`A017953(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A021524.P913480606091002174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017953 (A028310 n).toNat + a (n - 1)

end

end A021524.P913480606091002174

namespace A021524

/-- `A017953(A028310(n))+a(n-1)` -/
def P913480606091002174.Spec : Prop :=
  ∀ n, P913480606091002174.a n = A021524 n

end A021524

/-! ## A021524.P17070152358817719870

`a(n-1)+A017953(n)*A057427(n)` with `a(0)=1`
-/

namespace A021524.P17070152358817719870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A017953 n * A057427 n

end

end A021524.P17070152358817719870

namespace A021524

/-- `a(n-1)+A017953(n)*A057427(n)` -/
def P17070152358817719870.Spec : Prop :=
  ∀ n, P17070152358817719870.a n = A021524 n

end A021524

/-!
# A021529: Decimal expansion of 1/525.

The programs for A021529, there is no canonical definition to state claims against.
-/

/-! ## A021529.P8062974451554378783

`A021088(n-char[1])`
-/

namespace A021529.P8062974451554378783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021088 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A021529.P8062974451554378783

/-!
# A021532: Decimal expansion of 1/528.

The programs for A021532, the canonical program `A021532.P5321586226241264024` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021532 has offset 0).

The definition of A021532 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021532.anchor (n : ℕ) : A021532 n = ((10 ^ (n + 1) / 528 % 10 : ℕ) : ℤ)` in `Proof.A021.A021532`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021532.P5321586226241264024

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=9, a(5)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021532

/-- `a(n-2)` -/
def P5321586226241264024.Spec : Prop :=
  ∀ n, (P5321586226241264024.a n : ℤ) = A021532 n

theorem P5321586226241264024.correct : P5321586226241264024.Spec := by
  intro n
  simp only [A021532]

end A021532

/-!
# A021534: Expansion of 1/((1-x)(1-3x)(1-6x)(1-12x)).

The programs for A021534, there is no canonical definition to state claims against.
-/

/-! ## A021534.P2535338441970729033

`∑[3^n*∑[2^n*∑[2^n]]]`
-/

namespace A021534.P2535338441970729033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021534.P2535338441970729033

/-! ## A021534.P3674569178005852284

`A017954(n)+a(n-1)` with `a(0)=1`
-/

namespace A021534.P3674569178005852284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017954 n + a (n - 1)

end

end A021534.P3674569178005852284

/-! ## A021534.P11863863899467796654

`A016211(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021534.P11863863899467796654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016211 n + 12 * a (n - 1)

end

end A021534.P11863863899467796654

/-! ## A021534.P3660968014013578358

`∑[A016175(n)]+3*a(n-1)` with `a(0)=1`
-/

namespace A021534.P3660968014013578358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016175 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A021534.P3660968014013578358

/-! ## A021534.P7331110000178970662

`or(∑[A017954(n)], A130706(n))`
-/

namespace A021534.P7331110000178970662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A130706 n)

end

end A021534.P7331110000178970662

/-! ## A021534.P13227098640231462488

`A122434(3*n+2)+∑[A017954(n)]`
-/

namespace A021534.P13227098640231462488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021534.P13227098640231462488

/-! ## A021534.P14441036274046302642

`∑[A017954(n)]*A033999(2*(n+2))`
-/

namespace A021534.P14441036274046302642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (2 * (n + 2))

end

end A021534.P14441036274046302642

/-! ## A021534.P15832748887657754357

`a(n-1)+∑[A171476(n)]*A000244(n)` with `a(0)=1`
-/

namespace A021534.P15832748887657754357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A021534.P15832748887657754357

/-! ## A021534.P5822196656798093676

`∑[A017954(n)]%A017944(2*(n+1))`
-/

namespace A021534.P5822196656798093676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017944 (2 * (n + 1)))

end

end A021534.P5822196656798093676

/-! ## A021534.P17441876321222703908

`∑[A017954(n)]%A246283(n+3)`
-/

namespace A021534.P17441876321222703908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A246283 (n + 3))

end

end A021534.P17441876321222703908

/-!
# A021544: Expansion of g.f. 1/((1 - x)*(1 - 3*x)*(1 - 7*x)*(1 - 8*x)).

The programs for A021544, the canonical program `A021544.P2615228815301530893` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021544 has offset 0).

The definition of A021544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021544.P2615228815301530893

`(3*8^(n+4)-5*7^(n+4)+7*3^(n+4)-10)/840`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021544

/-- `(3*8^(n+4)-5*7^(n+4)+7*3^(n+4)-10)/840` -/
def P2615228815301530893.Spec : Prop :=
  ∀ n, P2615228815301530893.a n = (A021544 n : ℚ)

end A021544

/-! ## A021544.P13198689314411144369

`∑[A017997(n)]`
-/

namespace A021544.P13198689314411144369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021544.P13198689314411144369

namespace A021544

/-- `∑[A017997(n)]` -/
def P13198689314411144369.Spec : Prop :=
  ∀ n, P13198689314411144369.a n = A021544 n

end A021544

/-! ## A021544.P1857607498107306802

`A016214(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A021544.P1857607498107306802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016214 n + 7 * a (n - 1)

end

end A021544.P1857607498107306802

namespace A021544

/-- `A016214(n)+7*a(n-1)` -/
def P1857607498107306802.Spec : Prop :=
  ∀ n, P1857607498107306802.a n = A021544 n

end A021544

/-! ## A021544.P17986601607916203827

`2*A021503(n)-A021494(n)`
-/

namespace A021544.P17986601607916203827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021503 n - A021494 n

end

end A021544.P17986601607916203827

namespace A021544

/-- `2*A021503(n)-A021494(n)` -/
def P17986601607916203827.Spec : Prop :=
  ∀ n, P17986601607916203827.a n = A021544 n

end A021544

/-! ## A021544.P5791228722784601521

`A016214(n+1)-A016212(n+1)`
-/

namespace A021544.P5791228722784601521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016214 (n + 1) - A016212 (n + 1)

end

end A021544.P5791228722784601521

namespace A021544

/-- `A016214(n+1)-A016212(n+1)` -/
def P5791228722784601521.Spec : Prop :=
  ∀ n, P5791228722784601521.a n = A021544 n

end A021544

/-! ## A021544.P15819019834687885637

`2*A021594(n)-A021634(n)`
-/

namespace A021544.P15819019834687885637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021594 n - A021634 n

end

end A021544.P15819019834687885637

namespace A021544

/-- `2*A021594(n)-A021634(n)` -/
def P15819019834687885637.Spec : Prop :=
  ∀ n, P15819019834687885637.a n = A021544 n

end A021544

/-! ## A021544.P13089767764142553585

`A021379(n)+A028039(n)-A021634(n)`
-/

namespace A021544.P13089767764142553585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021379 n + (A028039 n - A021634 n)

end

end A021544.P13089767764142553585

namespace A021544

/-- `A021379(n)+A028039(n)-A021634(n)` -/
def P13089767764142553585.Spec : Prop :=
  ∀ n, P13089767764142553585.a n = A021544 n

end A021544

/-!
# A021546: Decimal expansion of 1/542.

The programs for A021546, the canonical program `A021546.P1954180914646062282` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021546 has offset 0).

The definition of A021546 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021546.anchor (n : ℕ) : A021546 n = ((10 ^ (n + 1) / 542 % 10 : ℕ) : ℤ)` in `Proof.A021.A021546`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021546.P1954180914646062282

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=4, a(5)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021546

/-- `a(n-5)` -/
def P1954180914646062282.Spec : Prop :=
  ∀ n, (P1954180914646062282.a n : ℤ) = A021546 n

theorem P1954180914646062282.correct : P1954180914646062282.Spec := by
  intro n
  simp only [A021546]

end A021546

/-!
# A021550: Decimal expansion of 1/546.

The programs for A021550, the canonical program `A021550.P10804237262552388917` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021550 has offset 0).

The definition of A021550 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021550.anchor (n : ℕ) : A021550 n = ((10 ^ (n + 1) / 546 % 10 : ℕ) : ℤ)` in `Proof.A021.A021550`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021550.P10804237262552388917

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021550

/-- `9-(a(n-2)+a(n-4))` -/
def P10804237262552388917.Spec : Prop :=
  ∀ n, P10804237262552388917.a n = A021550 n

theorem P10804237262552388917.correct : P10804237262552388917.Spec := by
  intro n
  simp only [A021550]

end A021550

/-!
# A021552: Decimal expansion of 1/548.

The programs for A021552, the canonical program `A021552.P14934066827244817178` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021552 has offset 0).

The definition of A021552 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021552.anchor (n : ℕ) : A021552 n = ((10 ^ (n + 1) / 548 % 10 : ℕ) : ℤ)` in `Proof.A021.A021552`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021552.P14934066827244817178

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021552

/-- `9-a(n-4)` -/
def P14934066827244817178.Spec : Prop :=
  ∀ n, P14934066827244817178.a n = A021552 n

theorem P14934066827244817178.correct : P14934066827244817178.Spec := by
  intro n
  simp only [A021552]

end A021552

/-!
# A021554: Decimal expansion of 1/550.

The programs for A021554, the canonical program `A021554.P1844334715335911708` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021554 has offset 0).

The definition of A021554 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021554.anchor (n : ℕ) : A021554 n = ((10 ^ (n + 1) / 550 % 10 : ℕ) : ℤ)` in `Proof.A021.A021554`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021554.P1844334715335911708

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021554

/-- `a(n-2)` -/
def P1844334715335911708.Spec : Prop :=
  ∀ n, (P1844334715335911708.a n : ℤ) = A021554 n

theorem P1844334715335911708.correct : P1844334715335911708.Spec := by
  intro n
  simp only [A021554]

end A021554

/-!
# A021559: Decimal expansion of 1/555.

The programs for A021559, the canonical program `A021559.P16179600716322043672` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021559 has offset 0).

The definition of A021559 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021559.anchor (n : ℕ) : A021559 n = ((10 ^ (n + 1) / 555 % 10 : ℕ) : ℤ)` in `Proof.A021.A021559`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021559.P16441114303548219016

`ogf((x^2+8x^3)/(1-x^3))`
-/

namespace A021559.P16441114303548219016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 8] [1, 0, 0, -1] n

end

end A021559.P16441114303548219016

namespace A021559

/-- `ogf((x^2+8x^3)/(1-x^3))` -/
def P16441114303548219016.Spec : Prop :=
  ∀ n, P16441114303548219016.a n = A021559 n

end A021559

/-! ## A021559.P16179600716322043672

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021559

/-- `a(n-3)` -/
def P16179600716322043672.Spec : Prop :=
  ∀ n, (P16179600716322043672.a n : ℤ) = A021559 n

theorem P16179600716322043672.correct : P16179600716322043672.Spec := by
  intro n
  simp only [A021559]

end A021559

/-!
# A021564: Decimal expansion of 1/560.

The programs for A021564, the canonical program `A021564.P16048443577647333532` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021564 has offset 0).

The definition of A021564 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021564.anchor (n : ℕ) : A021564 n = ((10 ^ (n + 1) / 560 % 10 : ℕ) : ℤ)` in `Proof.A021.A021564`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021564.P8980574645385520367

`ogf((x^2+6x^3+x^4-2x^5+8x^6-5x^7)/(1-x+x^3-x^4))`
-/

namespace A021564.P8980574645385520367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 6, 1, -2, 8, -5] [1, -1, 0, 1, -1] n

end

end A021564.P8980574645385520367

namespace A021564

/-- `ogf((x^2+6x^3+x^4-2x^5+8x^6-5x^7)/(1-x+x^3-x^4))` -/
def P8980574645385520367.Spec : Prop :=
  ∀ n, P8980574645385520367.a n = A021564 n

end A021564

/-! ## A021564.P16048443577647333532

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=8, a(5)=5, a(6)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021564

/-- `9-a(n-3)` -/
def P16048443577647333532.Spec : Prop :=
  ∀ n, P16048443577647333532.a n = A021564 n

theorem P16048443577647333532.correct : P16048443577647333532.Spec := by
  intro n
  simp only [A021564]

end A021564

/-!
# A021576: Decimal expansion of 1/572.

The programs for A021576, the canonical program `A021576.P8825799687737856853` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021576 has offset 0).

The definition of A021576 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021576.anchor (n : ℕ) : A021576 n = ((10 ^ (n + 1) / 572 % 10 : ℕ) : ℤ)` in `Proof.A021.A021576`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021576.P15188041234489669400

`ogf((x^2+6x^3-3x^4+5x^5)/(1-x+x^3-x^4))`
-/

namespace A021576.P15188041234489669400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 6, -3, 5] [1, -1, 0, 1, -1] n

end

end A021576.P15188041234489669400

namespace A021576

/-- `ogf((x^2+6x^3-3x^4+5x^5)/(1-x+x^3-x^4))` -/
def P15188041234489669400.Spec : Prop :=
  ∀ n, P15188041234489669400.a n = A021576 n

end A021576

/-! ## A021576.P8825799687737856853

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=4, a(5)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021576

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P8825799687737856853.Spec : Prop :=
  ∀ n, P8825799687737856853.a n = A021576 n

theorem P8825799687737856853.correct : P8825799687737856853.Spec := by
  intro n
  simp only [A021576]

end A021576

/-!
# A021580: Decimal expansion of 1/576.

The programs for A021580, the canonical program `A021580.P9852008360355498670` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021580 has offset 0).

The definition of A021580 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021580.anchor (n : ℕ) : A021580 n = ((10 ^ (n + 1) / 576 % 10 : ℕ) : ℤ)` in `Proof.A021.A021580`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021580.P15745674752913226237

`ogf((x^2+6x^3-4x^4+3x^5-5x^6)/(1-x))`
-/

namespace A021580.P15745674752913226237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 6, -4, 3, -5] [1, -1] n

end

end A021580.P15745674752913226237

namespace A021580

/-- `ogf((x^2+6x^3-4x^4+3x^5-5x^6)/(1-x))` -/
def P15745674752913226237.Spec : Prop :=
  ∀ n, P15745674752913226237.a n = A021580 n

end A021580

/-! ## A021580.P9852008360355498670

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=3, a(5)=6, a(6)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021580

/-- `a(n-1)` -/
def P9852008360355498670.Spec : Prop :=
  ∀ n, (P9852008360355498670.a n : ℤ) = A021580 n

theorem P9852008360355498670.correct : P9852008360355498670.Spec := by
  intro n
  simp only [A021580]

end A021580

/-!
# A021588: Decimal expansion of 1/584.

The programs for A021588, the canonical program `A021588.P4934249314969819511` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021588 has offset 0).

The definition of A021588 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021588.anchor (n : ℕ) : A021588 n = ((10 ^ (n + 1) / 584 % 10 : ℕ) : ℤ)` in `Proof.A021.A021588`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021588.P4934249314969819511

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=1, a(5)=2, a(6)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021588

/-- `9-a(n-4)` -/
def P4934249314969819511.Spec : Prop :=
  ∀ n, P4934249314969819511.a n = A021588 n

theorem P4934249314969819511.correct : P4934249314969819511.Spec := by
  intro n
  simp only [A021588]

end A021588

/-!
# A021589: Decimal expansion of 1/585.

The programs for A021589, the canonical program `A021589.P2132413165661294793` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021589 has offset 0).

The definition of A021589 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021589.anchor (n : ℕ) : A021589 n = ((10 ^ (n + 1) / 585 % 10 : ℕ) : ℤ)` in `Proof.A021.A021589`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021589.P2132413165661294793

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=0, a(5)=9, a(6)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021589

/-- `a(n-6)` -/
def P2132413165661294793.Spec : Prop :=
  ∀ n, (P2132413165661294793.a n : ℤ) = A021589 n

theorem P2132413165661294793.correct : P2132413165661294793.Spec := by
  intro n
  simp only [A021589]

end A021589

/-!
# A021594: Expansion of 1/((1-x)(1-3x)(1-7x)(1-9x)).

The programs for A021594, the canonical program `A021594.P3829379311749281716` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021594 has offset 0).

The definition of A021594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021594.P3829379311749281716

`(9^(n+3)-2*7^(n+3)+2*3^(n+3)-1)/96`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021594

/-- `(9^(n+3)-2*7^(n+3)+2*3^(n+3)-1)/96` -/
def P3829379311749281716.Spec : Prop :=
  ∀ n, P3829379311749281716.a n = (A021594 n : ℚ)

end A021594

/-! ## A021594.P7104107764412935847

`∑[A017998(n)]`
-/

namespace A021594.P7104107764412935847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021594.P7104107764412935847

namespace A021594

/-- `∑[A017998(n)]` -/
def P7104107764412935847.Spec : Prop :=
  ∀ n, P7104107764412935847.a n = A021594 n

end A021594

/-! ## A021594.P13409659655766332523

`A016250(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021594.P13409659655766332523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016250 n + 3 * a (n - 1)

end

end A021594.P13409659655766332523

namespace A021594

/-- `A016250(n)+3*a(n-1)` -/
def P13409659655766332523.Spec : Prop :=
  ∀ n, P13409659655766332523.a n = A021594 n

end A021594

/-! ## A021594.P12317522944268175721

`A006100(n+2)+7*a(n-1)` with `a(0)=1`
-/

namespace A021594.P12317522944268175721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006100 (n + 2) + 7 * a (n - 1)

end

end A021594.P12317522944268175721

namespace A021594

/-- `A006100(n+2)+7*a(n-1)` -/
def P12317522944268175721.Spec : Prop :=
  ∀ n, P12317522944268175721.a n = A021594 n

end A021594

/-! ## A021594.P3741138665597066884

`2*A021454(n)-A021424(n)`
-/

namespace A021594.P3741138665597066884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021454 n - A021424 n

end

end A021594.P3741138665597066884

namespace A021594

/-- `2*A021454(n)-A021424(n)` -/
def P3741138665597066884.Spec : Prop :=
  ∀ n, P3741138665597066884.a n = A021594 n

end A021594

/-!
# A021596: Decimal expansion of 1/592.

The programs for A021596, the canonical program `A021596.P11309232638612599855` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021596 has offset 0).

The definition of A021596 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021596.anchor (n : ℕ) : A021596 n = ((10 ^ (n + 1) / 592 % 10 : ℕ) : ℤ)` in `Proof.A021.A021596`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021596.P11309232638612599855

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=8, a(5)=9, a(6)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021596

/-- `a(n-3)` -/
def P11309232638612599855.Spec : Prop :=
  ∀ n, (P11309232638612599855.a n : ℤ) = A021596 n

theorem P11309232638612599855.correct : P11309232638612599855.Spec := by
  intro n
  simp only [A021596]

end A021596

/-!
# A021598: Decimal expansion of 1/594.

The programs for A021598, the canonical program `A021598.P13794274377428511475` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021598 has offset 0).

The definition of A021598 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021598.anchor (n : ℕ) : A021598 n = ((10 ^ (n + 1) / 594 % 10 : ℕ) : ℤ)` in `Proof.A021.A021598`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021598.P13794274377428511475

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=8, a(5)=3, a(6)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021598

/-- `a(n-6)` -/
def P13794274377428511475.Spec : Prop :=
  ∀ n, (P13794274377428511475.a n : ℤ) = A021598 n

theorem P13794274377428511475.correct : P13794274377428511475.Spec := by
  intro n
  simp only [A021598]

end A021598

