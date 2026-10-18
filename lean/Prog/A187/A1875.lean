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
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A187500: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,2,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

The programs for A187500, the canonical program `A187500.P11324648320385359507` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187500 has offset 0).

The definition of A187500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187500.P11324648320385359507

`A187502(n+3)-(A187502(n)+A187501(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A187500

/-- `A187502(n+3)-(A187502(n)+A187501(n))` -/
def P11324648320385359507.Spec : Prop :=
  ∀ n, P11324648320385359507.a n = A187500 n

theorem P11324648320385359507.correct : P11324648320385359507.Spec := by
  intro n
  simp only [A187500]

end A187500

/-! ## A187500.P13471447139619645786

`A187502(n+3)-(A187502(n)+A187499(n+3))`
-/

namespace A187500.P13471447139619645786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187502 (n + 3) - (A187502 n + A187499 (n + 3))

end

end A187500.P13471447139619645786

namespace A187500

/-- `A187502(n+3)-(A187502(n)+A187499(n+3))` -/
def P13471447139619645786.Spec : Prop :=
  ∀ n, P13471447139619645786.a n = A187500 n

end A187500

/-! ## A187500.P7502306271876777602

`A007302(A009227(n))`
-/

namespace A187500.P7502306271876777602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A009227 n).toNat

end

end A187500.P7502306271876777602

namespace A187500

/-- `A007302(A009227(n))` -/
def P7502306271876777602.Spec : Prop :=
  ∀ n, P7502306271876777602.a n = A187500 n

end A187500

/-! ## A187500.P11236984782564225758

`A102382(Δ[A102437(n)]²)`
-/

namespace A187500.P11236984782564225758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A187500.P11236984782564225758

namespace A187500

/-- `A102382(Δ[A102437(n)]²)` -/
def P11236984782564225758.Spec : Prop :=
  ∀ n, P11236984782564225758.a n = A187500 n

end A187500

/-! ## A187500.P6292244606149752368

`Δ[A087897(record[A261699(n+1)])]`
-/

namespace A187500.P6292244606149752368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187500.P6292244606149752368

namespace A187500

/-- `Δ[A087897(record[A261699(n+1)])]` -/
def P6292244606149752368.Spec : Prop :=
  ∀ n, P6292244606149752368.a n = A187500 n

end A187500

/-!
# A187501: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,3,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

The programs for A187501, the canonical program `A187501.P1786703102159029346` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187501 has offset 0).

The definition of A187501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187501.P1786703102159029346

`3*a(n-3)-3*a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=3, a(8)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A187501

/-- `3*a(n-3)-3*a(n-9)` -/
def P1786703102159029346.Spec : Prop :=
  ∀ n, P1786703102159029346.a n = A187501 n

theorem P1786703102159029346.correct : P1786703102159029346.Spec := by
  intro n
  simp only [A187501]

end A187501

/-! ## A187501.P17950952095122732440

`A187499(n+3)`
-/

namespace A187501.P17950952095122732440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187499 (n + 3)

end

end A187501.P17950952095122732440

namespace A187501

/-- `A187499(n+3)` -/
def P17950952095122732440.Spec : Prop :=
  ∀ n, P17950952095122732440.a n = A187501 n

end A187501

/-! ## A187501.P4345359150584698733

`A187502(n+3)-A187500(n+3)`
-/

namespace A187501.P4345359150584698733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187502 (n + 3) - A187500 (n + 3)

end

end A187501.P4345359150584698733

namespace A187501

/-- `A187502(n+3)-A187500(n+3)` -/
def P4345359150584698733.Spec : Prop :=
  ∀ n, P4345359150584698733.a n = A187501 n

end A187501

/-!
# A187502: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,4,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

The programs for A187502, the canonical program `A187502.P15297842706150391548` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187502 has offset 0).

The definition of A187502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187502.P2733586624319936374

`A187500(n+3)-A187500(n)`
-/

namespace A187502.P2733586624319936374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187500 (n + 3) - A187500 n

end

end A187502.P2733586624319936374

namespace A187502

/-- `A187500(n+3)-A187500(n)` -/
def P2733586624319936374.Spec : Prop :=
  ∀ n, P2733586624319936374.a n = A187502 n

end A187502

/-! ## A187502.P15297842706150391548

`A187501(n+3)-(A187501(n)+A187499(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187502

/-- `A187501(n+3)-(A187501(n)+A187499(n))` -/
def P15297842706150391548.Spec : Prop :=
  ∀ n, P15297842706150391548.a n = A187502 n

theorem P15297842706150391548.correct : P15297842706150391548.Spec := by
  intro n
  simp only [A187502]

end A187502

/-! ## A187502.P9701924261878814608

`A048766(A161474(n)-A089627(n))`
-/

namespace A187502.P9701924261878814608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A161474 n - A089627 n).toNat

end

end A187502.P9701924261878814608

namespace A187502

/-- `A048766(A161474(n)-A089627(n))` -/
def P9701924261878814608.Spec : Prop :=
  ∀ n, P9701924261878814608.a n = A187502 n

end A187502

/-! ## A187502.P5737088895806571300

`A048766(xor(A008619(n), A161474(n)))`
-/

namespace A187502.P5737088895806571300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.xor (A008619 n) (A161474 n)).toNat

end

end A187502.P5737088895806571300

namespace A187502

/-- `A048766(xor(A008619(n), A161474(n)))` -/
def P5737088895806571300.Spec : Prop :=
  ∀ n, P5737088895806571300.a n = A187502 n

end A187502

/-! ## A187502.P13296599635796672838

`A048766(xor(A089627(n), A161474(n)))`
-/

namespace A187502.P13296599635796672838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.xor (A089627 n) (A161474 n)).toNat

end

end A187502.P13296599635796672838

namespace A187502

/-- `A048766(xor(A089627(n), A161474(n)))` -/
def P13296599635796672838.Spec : Prop :=
  ∀ n, P13296599635796672838.a n = A187502 n

end A187502

/-!
# A187503: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-1,0,1,2}, n=3*r+p_i, and define a(-1)=1. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,1,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^3-2*x) with x=2*cos(Pi/9).

The programs for A187503, there is no canonical definition to state claims against.
-/

/-! ## A187503.P16105054536004200473

`A187506(comp[2*n+5]+1-n)`
-/

namespace A187503.P16105054536004200473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 - n)

end

end A187503.P16105054536004200473

/-!
# A187504: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-1,0,1,2}, n=3*r+p_i, and define a(-1)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,2,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^3-2*x) with x=2*cos(Pi/9).

The programs for A187504, there is no canonical definition to state claims against.
-/

/-! ## A187504.P1396753304690736014

`A187505(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A187504.P1396753304690736014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A187505 n - a (n - 3)

end

end A187504.P1396753304690736014

/-! ## A187504.P4033615173048986303

`A187505(n+3)-(A187505(n)+A187503(n+3))`
-/

namespace A187504.P4033615173048986303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (n + 3) - (A187505 n + A187503 (n + 3))

end

end A187504.P4033615173048986303

/-!
# A187505: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-1,0,1,2}, n=3*r+p_i, and define a(-1)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,3,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^3-2*x) with x=2*cos(Pi/9).

The programs for A187505, there is no canonical definition to state claims against.
-/

/-! ## A187505.P127916244752054873

`A187504(n+3)-A187506(n)`
-/

namespace A187505.P127916244752054873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 3) - A187506 n

end

end A187505.P127916244752054873

/-! ## A187505.P4666871832356645480

`A187504(n+3)-A187503(n+3)`
-/

namespace A187505.P4666871832356645480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 3) - A187503 (n + 3)

end

end A187505.P4666871832356645480

/-! ## A187505.P9957469850375324504

`A187504(n+3)-A038197(A289207(n))%A000045(n+1)`
-/

namespace A187505.P9957469850375324504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 3) - Int.tmod (A038197 (A289207 n).toNat) (A000045 (n + 1))

end

end A187505.P9957469850375324504

/-! ## A187505.P12586851104664367291

`A187504(n+3)-A038197(A289207(n))%A011782(n)`
-/

namespace A187505.P12586851104664367291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 3) - Int.tmod (A038197 (A289207 n).toNat) (A011782 n)

end

end A187505.P12586851104664367291

/-!
# A187506: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-1,0,1,2}, n=3*r+p_i, and define a(-1)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,4,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^3-2*x) with x=2*cos(Pi/9).

The programs for A187506, there is no canonical definition to state claims against.
-/

/-! ## A187506.P14828230851400522955

`A187503(n+3)`
-/

namespace A187506.P14828230851400522955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (n + 3)

end

end A187506.P14828230851400522955

/-! ## A187506.P9990616861122604880

`A038197(A289207(n))-char[1-n²]`
-/

namespace A187506.P9990616861122604880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A289207 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187506.P9990616861122604880

/-! ## A187506.P12945116262240892331

`A038197(A289207(n))*A055396(A000010(n+1))`
-/

namespace A187506.P12945116262240892331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A289207 n).toNat * A055396 (A000010 (n + 1)).toNat

end

end A187506.P12945116262240892331

/-! ## A187506.P11017175879083950693

`A187504(n+3)-A187505(n)`
-/

namespace A187506.P11017175879083950693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 3) - A187505 n

end

end A187506.P11017175879083950693

/-! ## A187506.P17941685232739104775

`A038197(A289207(n))%A000045(n+1)`
-/

namespace A187506.P17941685232739104775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038197 (A289207 n).toNat) (A000045 (n + 1))

end

end A187506.P17941685232739104775

/-! ## A187506.P14640210327019468160

`A038197(A289207(n))%A011782(n)`
-/

namespace A187506.P14640210327019468160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038197 (A289207 n).toNat) (A011782 n)

end

end A187506.P14640210327019468160

/-!
# A187508: Number of 3-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187508, the canonical program `A187508.P435450291156470211` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187508 has offset 1).

The definition of A187508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187508.P435450291156470211

`∑[a(n-1)+18]` with `a(0)=0, a(1)=6, a(2)=25`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A187508

/-- `∑[a(n-1)+18]` -/
def P435450291156470211.Spec : Prop :=
  ∀ n, (P435450291156470211.a n : ℤ) = A187508 (n + 1)

theorem P435450291156470211.correct : P435450291156470211.Spec := by
  intro n
  simp only [A187508, Nat.add_sub_cancel]

end A187508

/-! ## A187508.P14079773532294928779

`floor(3/acot(n))²-Δ[n²]`
-/

namespace A187508.P14079773532294928779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187508.P14079773532294928779

namespace A187508

/-- `floor(3/acot(n))²-Δ[n²]` -/
def P14079773532294928779.Spec : Prop :=
  ∀ n, P14079773532294928779.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P3914429677144893197

`(3*n)²-record[xor(1, n+1)]`
-/

namespace A187508.P3914429677144893197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A187508.P3914429677144893197

namespace A187508

/-- `(3*n)²-record[xor(1, n+1)]` -/
def P3914429677144893197.Spec : Prop :=
  ∀ n, P3914429677144893197.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P12957735071084543121

`(3*n)²-Δ[n^ceil(atan(n))]`
-/

namespace A187508.P12957735071084543121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℚ) - (f1 (n + 1) - f1 n)

end

end A187508.P12957735071084543121

namespace A187508

/-- `(3*n)²-Δ[n^ceil(atan(n))]` -/
def P12957735071084543121.Spec : Prop :=
  ∀ n, P12957735071084543121.a n = (A187508 (n + 1) : ℚ)

end A187508

/-! ## A187508.P4204827528150934370

`Δ[-n²]+floor(3/acot(n))²`
-/

namespace A187508.P4204827528150934370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

end

end A187508.P4204827528150934370

namespace A187508

/-- `Δ[-n²]+floor(3/acot(n))²` -/
def P4204827528150934370.Spec : Prop :=
  ∀ n, P4204827528150934370.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P3125967249680274316

`floor(3/acot(n))²-1-2*n`
-/

namespace A187508.P3125967249680274316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2 - 1 - (2 * n : ℤ)

end

end A187508.P3125967249680274316

namespace A187508

/-- `floor(3/acot(n))²-1-2*n` -/
def P3125967249680274316.Spec : Prop :=
  ∀ n, P3125967249680274316.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P11260042665797805915

`A008486(n)²-(2*n+1)`
-/

namespace A187508.P11260042665797805915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n ^ 2 - (2 * n + 1 : ℤ)

end

end A187508.P11260042665797805915

namespace A187508

/-- `A008486(n)²-(2*n+1)` -/
def P11260042665797805915.Spec : Prop :=
  ∀ n, P11260042665797805915.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P742914471591287976

`record[n+2-A020639(2*n+1)]²-(2*n+1)`
-/

namespace A187508.P742914471591287976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - (2 * n + 1 : ℤ)

end

end A187508.P742914471591287976

namespace A187508

/-- `record[n+2-A020639(2*n+1)]²-(2*n+1)` -/
def P742914471591287976.Spec : Prop :=
  ∀ n, P742914471591287976.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P3192113268933703720

`A057428(n)+A013656(n)`
-/

namespace A187508.P3192113268933703720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A013656 n

end

end A187508.P3192113268933703720

namespace A187508

/-- `A057428(n)+A013656(n)` -/
def P3192113268933703720.Spec : Prop :=
  ∀ n, P3192113268933703720.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P3389572843993887340

`A013656(n)-A057427(n)`
-/

namespace A187508.P3389572843993887340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n - A057427 n

end

end A187508.P3389572843993887340

namespace A187508

/-- `A013656(n)-A057427(n)` -/
def P3389572843993887340.Spec : Prop :=
  ∀ n, P3389572843993887340.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P16913913523587399403

`A022276(n)-A253145(n)`
-/

namespace A187508.P16913913523587399403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n - A253145 n

end

end A187508.P16913913523587399403

namespace A187508

/-- `A022276(n)-A253145(n)` -/
def P16913913523587399403.Spec : Prop :=
  ∀ n, P16913913523587399403.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P1446354295609488081

`A247792(n)-A103517(n)`
-/

namespace A187508.P1446354295609488081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n - A103517 n

end

end A187508.P1446354295609488081

namespace A187508

/-- `A247792(n)-A103517(n)` -/
def P1446354295609488081.Spec : Prop :=
  ∀ n, P1446354295609488081.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P4323459584812095309

`A016850(n)%A204675(n)`
-/

namespace A187508.P4323459584812095309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016850 n) (A204675 n)

end

end A187508.P4323459584812095309

namespace A187508

/-- `A016850(n)%A204675(n)` -/
def P4323459584812095309.Spec : Prop :=
  ∀ n, P4323459584812095309.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P11798653468285046123

`A064762(n)%A194454(n)`
-/

namespace A187508.P11798653468285046123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064762 n) (A194454 n)

end

end A187508.P11798653468285046123

namespace A187508

/-- `A064762(n)%A194454(n)` -/
def P11798653468285046123.Spec : Prop :=
  ∀ n, P11798653468285046123.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P10519890298126306183

`A016994(n)%A381196(n)`
-/

namespace A187508.P10519890298126306183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016994 n) (A381196 n)

end

end A187508.P10519890298126306183

namespace A187508

/-- `A016994(n)%A381196(n)` -/
def P10519890298126306183.Spec : Prop :=
  ∀ n, P10519890298126306183.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P3459943504465962090

`A144314(n)%A214675(n+1)`
-/

namespace A187508.P3459943504465962090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144314 n) (A214675 (n + 1))

end

end A187508.P3459943504465962090

namespace A187508

/-- `A144314(n)%A214675(n+1)` -/
def P3459943504465962090.Spec : Prop :=
  ∀ n, P3459943504465962090.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P4119368541093273324

`A008486(n)*A008486(n)-A004273(n+1)`
-/

namespace A187508.P4119368541093273324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A008486 n - A004273 (n + 1)

end

end A187508.P4119368541093273324

namespace A187508

/-- `A008486(n)*A008486(n)-A004273(n+1)` -/
def P4119368541093273324.Spec : Prop :=
  ∀ n, P4119368541093273324.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P614658295842051180

`record[A005843(n)+A014682(n)²]`
-/

namespace A187508.P614658295842051180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A014682 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187508.P614658295842051180

namespace A187508

/-- `record[A005843(n)+A014682(n)²]` -/
def P614658295842051180.Spec : Prop :=
  ∀ n, P614658295842051180.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P6627136414496702434

`record[A064455(n+1)²]-A005408(n)`
-/

namespace A187508.P6627136414496702434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005408 n

end

end A187508.P6627136414496702434

namespace A187508

/-- `record[A064455(n+1)²]-A005408(n)` -/
def P6627136414496702434.Spec : Prop :=
  ∀ n, P6627136414496702434.a n = A187508 (n + 1)

end A187508

/-! ## A187508.P577059428803128396

`A232423(2*n)+(2*n)²`
-/

namespace A187508.P577059428803128396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232423 (2 * n) + ((2 * n) ^ 2 : ℤ)

end

end A187508.P577059428803128396

namespace A187508

/-- `A232423(2*n)+(2*n)²` -/
def P577059428803128396.Spec : Prop :=
  ∀ n, P577059428803128396.a n = A187508 (n + 1)

end A187508

/-!
# A187509: Number of 4-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187509, there is no canonical definition to state claims against.
-/

/-! ## A187509.P10196836285446927198

`A187507(∑[n+3]+7)`
-/

namespace A187509.P10196836285446927198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187509.P10196836285446927198

/-! ## A187509.P555616500428620551

`A187507(A141214(n)+7)+char[25]`
-/

namespace A187509.P555616500428620551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187509.P555616500428620551

/-! ## A187509.P6089269616348880481

`A007318(C(2, n))*A187507(A141214(n)+7)`
-/

namespace A187509.P6089269616348880481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A187507 (A141214 n + 7).toNat

end

end A187509.P6089269616348880481

/-! ## A187509.P800815483741342827

`A187507(A141214(n)+7)%(24*A000108(n))`
-/

namespace A187509.P800815483741342827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187507 (A141214 n + 7).toNat) (24 * A000108 n)

end

end A187509.P800815483741342827

/-! ## A187509.P4921894221475801938

`∏{p}[n, A001221(#)]*A187507(A141214(n)+7)`
-/

namespace A187509.P4921894221475801938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A187507 (A141214 n + 7).toNat

end

end A187509.P4921894221475801938

/-!
# A187510: Number of 5-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187510, there is no canonical definition to state claims against.
-/

/-! ## A187510.P3383626718374761706

`A187507(C(n+5, 2)+5)`
-/

namespace A187510.P3383626718374761706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (Nat.choose (n + 5) 2 + 5)

end

end A187510.P3383626718374761706

/-! ## A187510.P11607307014688227396

`A187507(A167499(n+3))`
-/

namespace A187510.P11607307014688227396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A167499 (n + 3)).toNat

end

end A187510.P11607307014688227396

/-! ## A187510.P12983001109437575732

`A187507(A155212(n)+13)`
-/

namespace A187510.P12983001109437575732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A155212 n + 13).toNat

end

end A187510.P12983001109437575732

/-! ## A187510.P6871862811380773853

`A187507(A056000(n)+15)`
-/

namespace A187510.P6871862811380773853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A056000 n + 15).toNat

end

end A187510.P6871862811380773853

/-! ## A187510.P14943432800753389115

`A187507(A000096(n+3)+6)`
-/

namespace A187510.P14943432800753389115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000096 (n + 3) + 6).toNat

end

end A187510.P14943432800753389115

/-!
# A187511: Number of 6-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187511, there is no canonical definition to state claims against.
-/

/-! ## A187511.P518906294243947241

`A187507(∑[n+5]+16)`
-/

namespace A187511.P518906294243947241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A187511.P518906294243947241

/-! ## A187511.P8810503877986824871

`and(-3, A187507(A055998(n+3)+9))`
-/

namespace A187511.P8810503877986824871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A187507 (A055998 (n + 3) + 9).toNat)

end

end A187511.P8810503877986824871

/-! ## A187511.P16248099644897379856

`A187507(A000217(n+5)+6)+char[33]`
-/

namespace A187511.P16248099644897379856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187511.P16248099644897379856

/-! ## A187511.P10856601107644100814

`A187507(A000096(n+4)+7)+A063524(n+3)`
-/

namespace A187511.P10856601107644100814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000096 (n + 4) + 7).toNat + A063524 (n + 3)

end

end A187511.P10856601107644100814

/-! ## A187511.P7909894638862604310

`A187507(A000096(n+4)+7)%A020469(n+1)`
-/

namespace A187511.P7909894638862604310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187507 (A000096 (n + 4) + 7).toNat) (A020469 (n + 1))

end

end A187511.P7909894638862604310

/-!
# A187512: Number of 7-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187512, there is no canonical definition to state claims against.
-/

/-! ## A187512.P16157854479035507742

`A187507(A167499(n+5)+2)`
-/

namespace A187512.P16157854479035507742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A167499 (n + 5) + 2).toNat

end

end A187512.P16157854479035507742

/-! ## A187512.P2295359208171560671

`A187507(A000124(n+6)+6)`
-/

namespace A187512.P2295359208171560671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000124 (n + 6) + 6).toNat

end

end A187512.P2295359208171560671

/-! ## A187512.P11708494966497580270

`A187507(A000096(n+5)+8)`
-/

namespace A187512.P11708494966497580270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000096 (n + 5) + 8).toNat

end

end A187512.P11708494966497580270

/-! ## A187512.P1893277833440884978

`A187507(A000217(n+6)+7)`
-/

namespace A187512.P1893277833440884978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000217 (n + 6) + 7).toNat

end

end A187512.P1893277833440884978

/-! ## A187512.P14777097397916005625

`A187507(A034856(n+5)+9)`
-/

namespace A187512.P14777097397916005625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A034856 (n + 5) + 9).toNat

end

end A187512.P14777097397916005625

/-!
# A187513: Number of 8-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187513, there is no canonical definition to state claims against.
-/

/-! ## A187513.P16285683228744807100

`A187507(A167499(n+6)+3)`
-/

namespace A187513.P16285683228744807100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A167499 (n + 6) + 3).toNat

end

end A187513.P16285683228744807100

/-! ## A187513.P7659737622336434407

`A187507(A000124(n+7)+7)`
-/

namespace A187513.P7659737622336434407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000124 (n + 7) + 7).toNat

end

end A187513.P7659737622336434407

/-! ## A187513.P16698049841633766952

`A187507(A000217(n+7)+8)`
-/

namespace A187513.P16698049841633766952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000217 (n + 7) + 8).toNat

end

end A187513.P16698049841633766952

/-! ## A187513.P16889754015510337086

`A187507(A056000(n+3)+18)`
-/

namespace A187513.P16889754015510337086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A056000 (n + 3) + 18).toNat

end

end A187513.P16889754015510337086

/-! ## A187513.P16886554319252295421

`A187507(eq[9, A131818(n+1)])`
-/

namespace A187513.P16886554319252295421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187513.P16886554319252295421

/-!
# A187514: Number of 9-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187514, there is no canonical definition to state claims against.
-/

/-! ## A187514.P15314433120198939238

`A187507(A000124(n+8)+8)`
-/

namespace A187514.P15314433120198939238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000124 (n + 8) + 8).toNat

end

end A187514.P15314433120198939238

/-! ## A187514.P8777242404745195706

`A187507(A000096(n+7)+10)`
-/

namespace A187514.P8777242404745195706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000096 (n + 7) + 10).toNat

end

end A187514.P8777242404745195706

/-! ## A187514.P16722356176200271821

`A187507(A000217(n+8)+9)`
-/

namespace A187514.P16722356176200271821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000217 (n + 8) + 9).toNat

end

end A187514.P16722356176200271821

/-! ## A187514.P892576091116860889

`A187507(eq[10, A131818(n+1)])`
-/

namespace A187514.P892576091116860889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187514.P892576091116860889

/-! ## A187514.P5444226021081563076

`A187507(A056000(n+6)-2*n)`
-/

namespace A187514.P5444226021081563076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A056000 (n + 6) - (2 * n : ℤ)).toNat

end

end A187514.P5444226021081563076

/-!
# A187515: Number of 10-step S, E, and NW-moving king's tours on an n X n board summed over all starting positions.

The programs for A187515, there is no canonical definition to state claims against.
-/

/-! ## A187515.P10802942362899946611

`A187507(A000217(n+9)+10)`
-/

namespace A187515.P10802942362899946611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (A000217 (n + 9) + 10).toNat

end

end A187515.P10802942362899946611

/-! ## A187515.P14477531535245430707

`A187507(eq[10, A130270(n+1)])`
-/

namespace A187515.P14477531535245430707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187515.P14477531535245430707

/-! ## A187515.P12505101978082432306

`A187507(eq[11, A131818(n+1)])`
-/

namespace A187515.P12505101978082432306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187515.P12505101978082432306

/-!
# A187516: Numbers divisible by at least two of their digits, different and >1.

The programs for A187516, there is no canonical definition to state claims against.
-/

/-! ## A187516.P5773024165480033184

`A115569(A062399(n)+12)`
-/

namespace A187516.P5773024165480033184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (A062399 n + 12).toNat

end

end A187516.P5773024165480033184

/-! ## A187516.P5435526830710303898

`A115569(A120126(n)+12)`
-/

namespace A187516.P5435526830710303898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (A120126 n + 12).toNat

end

end A187516.P5435526830710303898

/-! ## A187516.P3416751136057675600

`A115569(A045918(n)+2)`
-/

namespace A187516.P3416751136057675600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (A045918 n + 2).toNat

end

end A187516.P3416751136057675600

/-! ## A187516.P6577728269066400895

`A115569(A047842(n)+2)`
-/

namespace A187516.P6577728269066400895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (A047842 n + 2).toNat

end

end A187516.P6577728269066400895

/-! ## A187516.P6322264593941789767

`A115569(A097598(n)+2)`
-/

namespace A187516.P6322264593941789767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (A097598 n + 2).toNat

end

end A187516.P6322264593941789767

/-!
# A187517: Number of (n+1)X(n+1) 0..2 arrays with the array of 2X2 subblock determinants antisymmetric and no off-diagonal 2X2 subblock determinant zero.

The programs for A187517, there is no canonical definition to state claims against.
-/

/-! ## A187517.P14038966183357801037

`A187521(∑[n+2])`
-/

namespace A187517.P14038966183357801037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187517.P14038966183357801037

/-! ## A187517.P11732519024695892105

`record[A187521(abs(A201163(n)))]`
-/

namespace A187517.P11732519024695892105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187517.P11732519024695892105

/-! ## A187517.P1585337599332059334

`record[A187521(A333530(n+1))]`
-/

namespace A187517.P1585337599332059334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187517.P1585337599332059334

/-!
# A187518: Number of (n+1)X(n+1) 0..3 arrays with the array of 2X2 subblock determinants antisymmetric and no off-diagonal 2X2 subblock determinant zero.

The programs for A187518, there is no canonical definition to state claims against.
-/

/-! ## A187518.P416180259756202553

`A187521(∑[n+3]+1)`
-/

namespace A187518.P416180259756202553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187518.P416180259756202553

/-!
# A187519: Number of (n+1)X(n+1) 0..4 arrays with the array of 2X2 subblock determinants antisymmetric and no off-diagonal 2X2 subblock determinant zero.

The programs for A187519, there is no canonical definition to state claims against.
-/

/-! ## A187519.P12744598246134574721

`A187521(∑[n+4]+3)`
-/

namespace A187519.P12744598246134574721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A187519.P12744598246134574721

/-!
# A187520: Number of (n+1)X(n+1) 0..5 arrays with the array of 2X2 subblock determinants antisymmetric and no off-diagonal 2X2 subblock determinant zero.

The programs for A187520, there is no canonical definition to state claims against.
-/

/-! ## A187520.P13767125354900156375

`A187521(Δ[A264443(n)])`
-/

namespace A187520.P13767125354900156375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (f1 (n + 1) - f1 n).toNat

end

end A187520.P13767125354900156375

/-!
# A187522: Number of 3X3 0..n arrays with the array of 2X2 subblock determinants antisymmetric and no off-diagonal 2X2 subblock determinant zero.

The programs for A187522, there is no canonical definition to state claims against.
-/

/-! ## A187522.P5781547137206340707

`A187521(∑[n+1]+2)`
-/

namespace A187522.P5781547137206340707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187522.P5781547137206340707

/-! ## A187522.P1608110764046825890

`record[gcd(A187521(n+3), A187555(n+1))]`
-/

namespace A187522.P1608110764046825890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187521 (n + 3)) (A187555 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187522.P1608110764046825890

/-!
# A187523: Number of 4X4 0..n arrays with the array of 2X2 subblock determinants antisymmetric and no off-diagonal 2X2 subblock determinant zero.

The programs for A187523, there is no canonical definition to state claims against.
-/

/-! ## A187523.P16681281160065677040

`A187521(∑[n+2]+4)`
-/

namespace A187523.P16681281160065677040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187523.P16681281160065677040

/-! ## A187523.P8813517573560485009

`lcm(2, A187521(A167614(n+1)))`
-/

namespace A187523.P8813517573560485009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187521 (A167614 (n + 1)).toNat)

end

end A187523.P8813517573560485009

/-! ## A187523.P4072856393249630574

`A187521(A167614(n+1))+A008838(n)`
-/

namespace A187523.P4072856393249630574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (A167614 (n + 1)).toNat + A008838 n

end

end A187523.P4072856393249630574

/-!
# A187524: Number of 5 X 5 0..n arrays with the array of 2 X 2 subblock determinants antisymmetric and no off-diagonal 2 X 2 subblock determinant zero.

The programs for A187524, there is no canonical definition to state claims against.
-/

/-! ## A187524.P9442114064473908904

`A187521(∑[n+3]+7)`
-/

namespace A187524.P9442114064473908904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187521 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187524.P9442114064473908904

/-!
# A187525: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under 90 degree rotation.

The programs for A187525, there is no canonical definition to state claims against.
-/

/-! ## A187525.P12287371046362872738

`A187528(∑[n+1])`
-/

namespace A187525.P12287371046362872738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187525.P12287371046362872738

/-! ## A187525.P5263585801608345715

`lcm(2, A187528(A025747(n)))`
-/

namespace A187525.P5263585801608345715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187528 (A025747 n).toNat)

end

end A187525.P5263585801608345715

/-! ## A187525.P16829720400226670461

`∑{digits}[n+1, A187528(A000217(#))]`
-/

namespace A187525.P16829720400226670461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A187528 (A000217 x).toNat).sum

end

end A187525.P16829720400226670461

/-!
# A187526: Number of (n+1)X(n+1) 0..2 arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under 90 degree rotation.

The programs for A187526, there is no canonical definition to state claims against.
-/

/-! ## A187526.P15934515578129366868

`A187528(∑[n+2])`
-/

namespace A187526.P15934515578129366868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187526.P15934515578129366868

/-!
# A187527: Number of (n+1)X(n+1) 0..3 arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under 90 degree rotation.

The programs for A187527, there is no canonical definition to state claims against.
-/

/-! ## A187527.P4367478726871291632

`A187528(∑[n+3]+1)`
-/

namespace A187527.P4367478726871291632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187527.P4367478726871291632

/-!
# A187528: T(n,k)=Number of (n+1)X(n+1) 0..k arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under 90 degree rotation.

The programs for A187528, there is no canonical definition to state claims against.
-/

/-! ## A187528.P6495168796681348834

`A187699(∑[A241601(n)])`
-/

namespace A187528.P6495168796681348834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187528.P6495168796681348834

/-! ## A187528.P2026651658436336458

`A187699(A024646(n+1))`
-/

namespace A187528.P2026651658436336458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (A024646 (n + 1)).toNat

end

end A187528.P2026651658436336458

/-! ## A187528.P5321980433395607744

`A187699(A024647(n+1))`
-/

namespace A187528.P5321980433395607744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (A024647 (n + 1)).toNat

end

end A187528.P5321980433395607744

/-!
# A187529: Number of 3X3 0..n arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under 90 degree rotation.

The programs for A187529, there is no canonical definition to state claims against.
-/

/-! ## A187529.P16020098065760413828

`A187528(∑[n+1]+2)`
-/

namespace A187529.P16020098065760413828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187528 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187529.P16020098065760413828

/-! ## A187529.P10153214500386300568

`A187699(∑[n+1]+2)`
-/

namespace A187529.P10153214500386300568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187699 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187529.P10153214500386300568

/-! ## A187529.P5030565835661261227

`lcm(2, A187528(A133263(n+1)))`
-/

namespace A187529.P5030565835661261227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187528 (A133263 (n + 1)).toNat)

end

end A187529.P5030565835661261227

/-!
# A187530: Number of 4X4 0..n arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under 90 degree rotation.

The programs for A187530, there is no canonical definition to state claims against.
-/

/-! ## A187530.P9718098537235760118

`A187528(∑[n+2]+4)`
-/

namespace A187530.P9718098537235760118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187528 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187530.P9718098537235760118

/-! ## A187530.P1664615010550133562

`lcm(2, A187528(A167614(n+1)))`
-/

namespace A187530.P1664615010550133562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187528 (A167614 (n + 1)).toNat)

end

end A187530.P1664615010550133562

/-!
# A187531: Number of 5X5 0..n arrays with each 2X2 subblock determinant nonzero and the array of 2X2 subblock determinants symmetric under 90 degree rotation.

The programs for A187531, there is no canonical definition to state claims against.
-/

/-! ## A187531.P17155600501298857515

`A187528(A020752(n+1))`
-/

namespace A187531.P17155600501298857515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187528 (A020752 (n + 1)).toNat

end

end A187531.P17155600501298857515

/-!
# A187532: a(n) = 4^n mod 19.

The programs for A187532, the canonical program `A187532.P13341012594152473057` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187532 has offset 0).

The definition of A187532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187532.P13341012594152473057

`(4^(n%9))%19`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A187532

/-- `(4^(n%9))%19` -/
def P13341012594152473057.Spec : Prop :=
  ∀ n, (P13341012594152473057.a n : ℤ) = A187532 n

theorem P13341012594152473057.correct : P13341012594152473057.Spec := by
  intro n
  simp only [A187532]

end A187532

/-!
# A187535: Central Lah numbers: a(n) = A105278(2*n,n) = A008297(2*n,n).

The programs for A187535, there is no canonical definition to state claims against.
-/

/-! ## A187535.P14494353156330916523

`A125558(n)*(n+1)!`
-/

namespace A187535.P14494353156330916523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125558 n * (Nat.factorial (n + 1) : ℤ)

end

end A187535.P14494353156330916523

/-! ## A187535.P17388347450390708493

`(floor((C(2*n, n)²+3)/2)-1)*n!`
-/

namespace A187535.P17388347450390708493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.choose (2 * n) n ^ 2 + 3 : ℚ) / 2⌋ - 1) * (Nat.factorial n : ℤ)

end

end A187535.P17388347450390708493

/-! ## A187535.P6551169182092737272

`A343581(2*n)`
-/

namespace A187535.P6551169182092737272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343581 (2 * n)

end

end A187535.P6551169182092737272

/-! ## A187535.P7834468324025123914

`ceil(2^(n-1))*A092563(n)`
-/

namespace A187535.P7834468324025123914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A092563 n

end

end A187535.P7834468324025123914

/-! ## A187535.P386896777015379330

`(4-2/n)*a(n-1)*A130824(n)` with `a(0)=1, a(1)=2`
-/

namespace A187535.P386896777015379330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1) * (A130824 n : ℚ)

end

end A187535.P386896777015379330

/-!
# A187536: Partial sums of the central Lah numbers (A187535).

The programs for A187536, there is no canonical definition to state claims against.
-/

/-! ## A187536.P3242570634811818850

`∑[A187535(n)]`
-/

namespace A187536.P3242570634811818850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187536.P3242570634811818850

/-! ## A187536.P7001936061489163089

`∑[A343581(2*n)]`
-/

namespace A187536.P7001936061489163089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343581 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187536.P7001936061489163089

/-! ## A187536.P5492690377450857228

`∑[ceil(2^(n-1))*A092563(n)]`
-/

namespace A187536.P5492690377450857228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A092563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187536.P5492690377450857228

/-! ## A187536.P2747840818049470121

`∑[A001813(n)*A088218(n)]`
-/

namespace A187536.P2747840818049470121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n * A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187536.P2747840818049470121

/-! ## A187536.P10607428602309380379

`∑[A271703(∑[4*n])]`
-/

namespace A187536.P10607428602309380379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187536.P10607428602309380379

/-!
# A187537: Riordan array (1, (A000045(x)/x-1) *A001006(A000045(x)/x-1) ).

The programs for A187537, there is no canonical definition to state claims against.
-/

/-! ## A187537.P5117286096932407559

`or(A027465(n), A068346(A152946(n+1)))`
-/

namespace A187537.P5117286096932407559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027465 n) (A068346 (A152946 (n + 1)).toNat)

end

end A187537.P5117286096932407559

/-!
# A187538: Alternating partial sums of the central Lah numbers (A187535).

The programs for A187538, there is no canonical definition to state claims against.
-/

/-! ## A187538.P18195068156851363983

`A187535(n)-a(n-1)` with `a(0)=1`
-/

namespace A187538.P18195068156851363983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187535 n - a (n - 1)

end

end A187538.P18195068156851363983

/-! ## A187538.P18234187320214361340

`A343581(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A187538.P18234187320214361340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A343581 (2 * n) - a (n - 1)

end

end A187538.P18234187320214361340

/-! ## A187538.P3012561990656785814

`abs(∑[A111596(A046092(n))])`
-/

namespace A187538.P3012561990656785814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111596 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A187538.P3012561990656785814

/-! ## A187538.P18399209654396183916

`∑[A111596(A046092(n))]*A033999(n)`
-/

namespace A187538.P18399209654396183916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111596 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A187538.P18399209654396183916

/-! ## A187538.P11402963273219561899

`∑[A111596(A046092(n))]*A056594(2*n)`
-/

namespace A187538.P11402963273219561899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111596 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A187538.P11402963273219561899

/-!
# A187541: a(4n+2) = 2n+1, otherwise a(n) = 4n.

The programs for A187541, the canonical program `A187541.P8289915685701541540` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187541 has offset 0).

The definition of A187541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187541.P8289915685701541540

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=12, a(4)=16, a(5)=20, a(6)=3, a(7)=28`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A187541

/-- `2*a(n-4)-a(n-8)` -/
def P8289915685701541540.Spec : Prop :=
  ∀ n, P8289915685701541540.a n = A187541 n

theorem P8289915685701541540.correct : P8289915685701541540.Spec := by
  intro n
  simp only [A187541]

end A187541

/-! ## A187541.P8818556065370434971

`gcd(4*n, (C(n², 2)/2)²)`
-/

namespace A187541.P8818556065370434971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (SequenceMachineLib.roundAway (((Nat.choose (n ^ 2) 2 : ℚ) / 2) ^ 2))

end

end A187541.P8818556065370434971

namespace A187541

/-- `gcd(4*n, (C(n², 2)/2)²)` -/
def P8818556065370434971.Spec : Prop :=
  ∀ n, (P8818556065370434971.a n : ℤ) = A187541 n

end A187541

/-! ## A187541.P11640334706433988777

`4*n/gcd(n, ∑[n+1])^3`
-/

namespace A187541.P11640334706433988777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 : ℚ))

end

end A187541.P11640334706433988777

namespace A187541

/-- `4*n/gcd(n, ∑[n+1])^3` -/
def P11640334706433988777.Spec : Prop :=
  ∀ n, P11640334706433988777.a n = (A187541 n : ℚ)

end A187541

/-! ## A187541.P9685911512429172615

`gcd(4*n, A002415(n)²)`
-/

namespace A187541.P9685911512429172615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A002415 n ^ 2)

end

end A187541.P9685911512429172615

namespace A187541

/-- `gcd(4*n, A002415(n)²)` -/
def P9685911512429172615.Spec : Prop :=
  ∀ n, (P9685911512429172615.a n : ℤ) = A187541 n

end A187541

/-! ## A187541.P7349931718635219052

`gcd(n-5*n, A239352(n)²)`
-/

namespace A187541.P7349931718635219052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (5 * n : ℤ)) (A239352 n ^ 2)

end

end A187541.P7349931718635219052

namespace A187541

/-- `gcd(n-5*n, A239352(n)²)` -/
def P7349931718635219052.Spec : Prop :=
  ∀ n, (P7349931718635219052.a n : ℤ) = A187541 n

end A187541

/-! ## A187541.P2053132347452308171

`4*n/A000045(and(7, 2-n²))`
-/

namespace A187541.P2053132347452308171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / (A000045 (Int.land 7 (2 - (n ^ 2 : ℤ))).toNat : ℚ)

end

end A187541.P2053132347452308171

namespace A187541

/-- `4*n/A000045(and(7, 2-n²))` -/
def P2053132347452308171.Spec : Prop :=
  ∀ n, P2053132347452308171.a n = (A187541 n : ℚ)

end A187541

/-! ## A187541.P9131521299319969828

`A010121(n)*A246943(n)`
-/

namespace A187541.P9131521299319969828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n * A246943 n

end

end A187541.P9131521299319969828

namespace A187541

/-- `A010121(n)*A246943(n)` -/
def P9131521299319969828.Spec : Prop :=
  ∀ n, P9131521299319969828.a n = A187541 n

end A187541

/-! ## A187541.P2014447068951014980

`gcd(A002415(n)², A008586(n))`
-/

namespace A187541.P2014447068951014980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002415 n ^ 2) (A008586 n)

end

end A187541.P2014447068951014980

namespace A187541

/-- `gcd(A002415(n)², A008586(n))` -/
def P2014447068951014980.Spec : Prop :=
  ∀ n, (P2014447068951014980.a n : ℤ) = A187541 n

end A187541

/-! ## A187541.P966307363246461344

`gcd(A006011(n)², A144138(n))`
-/

namespace A187541.P966307363246461344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006011 n ^ 2) (A144138 n)

end

end A187541.P966307363246461344

namespace A187541

/-- `gcd(A006011(n)², A144138(n))` -/
def P966307363246461344.Spec : Prop :=
  ∀ n, (P966307363246461344.a n : ℤ) = A187541 n

end A187541

/-! ## A187541.P780061585733799202

`A107453(n+4)²*A246943(n)`
-/

namespace A187541.P780061585733799202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (n + 4) ^ 2 * A246943 n

end

end A187541.P780061585733799202

namespace A187541

/-- `A107453(n+4)²*A246943(n)` -/
def P780061585733799202.Spec : Prop :=
  ∀ n, P780061585733799202.a n = A187541 n

end A187541

/-! ## A187541.P12316607874641251613

`A109008(n-A283971(n))*A283971(n)`
-/

namespace A187541.P12316607874641251613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109008 ((n : ℤ) - A283971 n).toNat * A283971 n

end

end A187541.P12316607874641251613

namespace A187541

/-- `A109008(n-A283971(n))*A283971(n)` -/
def P12316607874641251613.Spec : Prop :=
  ∀ n, P12316607874641251613.a n = A187541 n

end A187541

/-! ## A187541.P6081960006547665131

`A138191(n+2)²*A246943(n)`
-/

namespace A187541.P6081960006547665131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 2) ^ 2 * A246943 n

end

end A187541.P6081960006547665131

namespace A187541

/-- `A138191(n+2)²*A246943(n)` -/
def P6081960006547665131.Spec : Prop :=
  ∀ n, P6081960006547665131.a n = A187541 n

end A187541

/-! ## A187541.P6708141503657293910

`2*A188167(n)/A177704(n+1)`
-/

namespace A187541.P6708141503657293910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A188167 n : ℚ) / (A177704 (n + 1) : ℚ)

end

end A187541.P6708141503657293910

namespace A187541

/-- `2*A188167(n)/A177704(n+1)` -/
def P6708141503657293910.Spec : Prop :=
  ∀ n, P6708141503657293910.a n = (A187541 n : ℚ)

end A187541

/-! ## A187541.P11518105499854132378

`A010685(A283971(n+2))*A283971(n)`
-/

namespace A187541.P11518105499854132378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A283971 (n + 2)).toNat * A283971 n

end

end A187541.P11518105499854132378

namespace A187541

/-- `A010685(A283971(n+2))*A283971(n)` -/
def P11518105499854132378.Spec : Prop :=
  ∀ n, P11518105499854132378.a n = A187541 n

end A187541

/-! ## A187541.P10804296330333923514

`A022998(A188167(n))`
-/

namespace A187541.P10804296330333923514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A188167 n).toNat

end

end A187541.P10804296330333923514

namespace A187541

/-- `A022998(A188167(n))` -/
def P10804296330333923514.Spec : Prop :=
  ∀ n, P10804296330333923514.a n = A187541 n

end A187541

/-! ## A187541.P452740346948075385

`A022998(2*n/A010121(n+2))`
-/

namespace A187541.P452740346948075385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (A010121 (n + 2) : ℚ))).toNat

end

end A187541.P452740346948075385

namespace A187541

/-- `A022998(2*n/A010121(n+2))` -/
def P452740346948075385.Spec : Prop :=
  ∀ n, P452740346948075385.a n = A187541 n

end A187541

/-! ## A187541.P12401393185721955614

`A022998(A165988(A026741(n))-n)`
-/

namespace A187541.P12401393185721955614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A165988 (A026741 n).toNat - (n : ℤ)).toNat

end

end A187541.P12401393185721955614

namespace A187541

/-- `A022998(A165988(A026741(n))-n)` -/
def P12401393185721955614.Spec : Prop :=
  ∀ n, P12401393185721955614.a n = A187541 n

end A187541

/-! ## A187541.P4771288555671868526

`gcd(A071252(n)²², A005843(A005843(n)))`
-/

namespace A187541.P4771288555671868526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A071252 n ^ 2) ^ 2) (A005843 (A005843 n).toNat)

end

end A187541.P4771288555671868526

namespace A187541

/-- `gcd(A071252(n)²², A005843(A005843(n)))` -/
def P4771288555671868526.Spec : Prop :=
  ∀ n, (P4771288555671868526.a n : ℤ) = A187541 n

end A187541

/-! ## A187541.P4335524578467715885

`A107453(n+4)*A246943(n*A107453(n+4))`
-/

namespace A187541.P4335524578467715885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (n + 4) * A246943 ((n : ℤ) * A107453 (n + 4)).toNat

end

end A187541.P4335524578467715885

namespace A187541

/-- `A107453(n+4)*A246943(n*A107453(n+4))` -/
def P4335524578467715885.Spec : Prop :=
  ∀ n, P4335524578467715885.a n = A187541 n

end A187541

/-! ## A187541.P16459631983749890313

`A022998(A022998(A165351(n))-n)`
-/

namespace A187541.P16459631983749890313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A022998 (A165351 n).toNat - (n : ℤ)).toNat

end

end A187541.P16459631983749890313

namespace A187541

/-- `A022998(A022998(A165351(n))-n)` -/
def P16459631983749890313.Spec : Prop :=
  ∀ n, P16459631983749890313.a n = A187541 n

end A187541

/-!
# A187548: Alternating partial sums of L(n)*H(n+1), product of central Lah number L(n) and Harmonic number H(n+1).

The programs for A187548, there is no canonical definition to state claims against.
-/

/-! ## A187548.P15289858863078118632

`A187547(n)-a(n-1)` with `a(0)=1`
-/

namespace A187548.P15289858863078118632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187547 n - a (n - 1)

end

end A187548.P15289858863078118632

/-! ## A187548.P8483930053745177624

`∑[A033999(n)*A187547(n)]/A033999(n)`
-/

namespace A187548.P8483930053745177624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A187547 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A187548.P8483930053745177624

/-!
# A187550: Number of 8-element nondividing subsets of {1, 2, ..., n}.

The programs for A187550, there is no canonical definition to state claims against.
-/

/-! ## A187550.P9436527607278592604

`A193176(A193169(n+1)+ceil(char[2]+(n/2)²))`
-/

namespace A187550.P9436527607278592604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193176 (A193169 (n + 1) + ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((n : ℚ) / 2) ^ 2⌉).toNat

end

end A187550.P9436527607278592604

/-!
# A187552: Triangle a(n,k) = binomial(n,k)*binomial(n+1,k+1)*binomial(n+2,k+2) read by rows.

The programs for A187552, there is no canonical definition to state claims against.
-/

/-! ## A187552.P3551375664289721976

`A103371(n)*A104712(n+2)`
-/

namespace A187552.P3551375664289721976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n * A104712 (n + 2)

end

end A187552.P3551375664289721976

/-! ## A187552.P626524796581305960

`A007318(n)*A103371(comp[∑[n]])`
-/

namespace A187552.P626524796581305960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A103371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187552.P626524796581305960

/-! ## A187552.P14925520740596399965

`A001263(n+1)*A259477(comp[∑[n]])`
-/

namespace A187552.P14925520740596399965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A259477 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187552.P14925520740596399965

/-! ## A187552.P8451483732079524291

`A088459(2*(n+1))*A104712(n+2)`
-/

namespace A187552.P8451483732079524291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088459 (2 * (n + 1)) * A104712 (n + 2)

end

end A187552.P8451483732079524291

/-! ## A187552.P10102343277408882873

`A062196(A061579(n))*A135278(n)`
-/

namespace A187552.P10102343277408882873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (A061579 n).toNat * A135278 n

end

end A187552.P10102343277408882873

/-! ## A187552.P10977433454941836212

`A103371(n)*A209518(A061579(n))`
-/

namespace A187552.P10977433454941836212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n * A209518 (A061579 n).toNat

end

end A187552.P10977433454941836212

/-! ## A187552.P7718779555751140894

`A103371(n)*A135278(∑[A035214(n)])`
-/

namespace A187552.P7718779555751140894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n * A135278 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187552.P7718779555751140894

/-! ## A187552.P12331773354329758321

`A002411(A004736(n+1))*A056939(n)`
-/

namespace A187552.P12331773354329758321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A004736 (n + 1)).toNat * A056939 n

end

end A187552.P12331773354329758321

/-! ## A187552.P6769700943430641142

`A103371(n)*A135278(A014132(n+1))`
-/

namespace A187552.P6769700943430641142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n * A135278 (A014132 (n + 1)).toNat

end

end A187552.P6769700943430641142

/-! ## A187552.P13207871451757745695

`A104712(n+2)*A132813(A061579(n))`
-/

namespace A187552.P13207871451757745695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A132813 (A061579 n).toNat

end

end A187552.P13207871451757745695

/-!
# A187553: Smallest prime p such that the sum of the squares of the digits of p equals n (or 0 if no such prime exists).

The programs for A187553, there is no canonical definition to state claims against.
-/

/-! ## A187553.P9367002715053248768

`A290193(lcm(2, a(n-1))+3)` with `a(0)=0, a(1)=11, a(2)=0, a(3)=2`
-/

namespace A187553.P9367002715053248768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 11, 0, 2] fun n a =>
  A290193 (Int.lcm 2 (a (n - 1)) + 3)

end

end A187553.P9367002715053248768

/-!
# A187554: Odd nonprimes n such that n+d+1 is prime for all divisors d of n.

The programs for A187554, there is no canonical definition to state claims against.
-/

/-! ## A187554.P5401231419806324184

`∩[A120776(n+1)%A142011(3*n+1), A120806(n+1)]`
-/

namespace A187554.P5401231419806324184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120776 (n + 1)) (A142011 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187554.P5401231419806324184

/-! ## A187554.P14256206786116189031

`record[A171435(A120806(n+1))]`
-/

namespace A187554.P14256206786116189031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A120806 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187554.P14256206786116189031

/-! ## A187554.P17787197720234821091

`filter[A120806(n+1), A005171(#)]`
-/

namespace A187554.P17787197720234821091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A187554.P17787197720234821091

/-! ## A187554.P399510348876334475

`filter[A120806(n+1), A283265(#)]`
-/

namespace A187554.P399510348876334475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A187554.P399510348876334475

/-! ## A187554.P11923052841859696780

`filter[A120806(n+1), A292438(#)]`
-/

namespace A187554.P11923052841859696780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A187554.P11923052841859696780

/-!
# A187555: Triangle read by rows, defined by T(n,k)=binomial(n,k)*|Stirling1(n,k)|, 0<=k<=n.

The programs for A187555, there is no canonical definition to state claims against.
-/

/-! ## A187555.P788704769502659508

`A132393(n)*A175126(A028326(n))`
-/

namespace A187555.P788704769502659508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A175126 (A028326 n).toNat

end

end A187555.P788704769502659508

/-! ## A187555.P808605712727958012

`A180013(n+1)/A002024(n+1)*A028310(A014473(n)+1)`
-/

namespace A187555.P808605712727958012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A028310 (A014473 n + 1).toNat : ℚ)

end

end A187555.P808605712727958012

/-! ## A187555.P15017687092368529535

`A000463(A109128(n))*A132393(n)`
-/

namespace A187555.P15017687092368529535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A109128 n).toNat * A132393 n

end

end A187555.P15017687092368529535

/-! ## A187555.P81220675063131999

`A004525(A124927(n))*A132393(n)`
-/

namespace A187555.P81220675063131999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A124927 n).toNat * A132393 n

end

end A187555.P81220675063131999

/-! ## A187555.P17764274265224651583

`A004525(A134058(n))*A132393(n)`
-/

namespace A187555.P17764274265224651583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A134058 n).toNat * A132393 n

end

end A187555.P17764274265224651583

/-! ## A187555.P7454649258560329478

`A008619(A132731(n))*A132393(n)`
-/

namespace A187555.P7454649258560329478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132731 n).toNat * A132393 n

end

end A187555.P7454649258560329478

/-! ## A187555.P13474866942101307871

`A206735(n)*A372973(n)`
-/

namespace A187555.P13474866942101307871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A372973 n

end

end A187555.P13474866942101307871

/-!
# A187556: Triangle read by rows of products of (signless) Stirling numbers of the first kind (A132393) and Stirling numbers of the second kind (A008277).

The programs for A187556, there is no canonical definition to state claims against.
-/

/-! ## A187556.P17729438795333124282

`A048993(n)*A132393(n)`
-/

namespace A187556.P17729438795333124282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A132393 n

end

end A187556.P17729438795333124282

/-! ## A187556.P15367750068002536437

`A132393(n)*A373173(n)`
-/

namespace A187556.P15367750068002536437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A373173 n

end

end A187556.P15367750068002536437

/-! ## A187556.P17828473643096905680

`abs(A048993(n)*A048994(n))`
-/

namespace A187556.P17828473643096905680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048993 n * A048994 n|

end

end A187556.P17828473643096905680

/-! ## A187556.P16822777231320629236

`A106800(A061579(n))*A132393(n)`
-/

namespace A187556.P16822777231320629236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A061579 n).toNat * A132393 n

end

end A187556.P16822777231320629236

/-! ## A187556.P18414443255410787238

`abs(A048993(n)*A054654(A061579(n)))`
-/

namespace A187556.P18414443255410787238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048993 n * A054654 (A061579 n).toNat|

end

end A187556.P18414443255410787238

/-! ## A187556.P4819582093125492732

`abs(A048994(n)*A106800(A061579(n)))`
-/

namespace A187556.P4819582093125492732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n * A106800 (A061579 n).toNat|

end

end A187556.P4819582093125492732

/-! ## A187556.P3161691239085687765

`A106800(A038722(n+2))*A132393(n)`
-/

namespace A187556.P3161691239085687765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A038722 (n + 2)).toNat * A132393 n

end

end A187556.P3161691239085687765

/-! ## A187556.P11122367650515515148

`A048993(n)*A048994(n)*A097807(n)`
-/

namespace A187556.P11122367650515515148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A048994 n * A097807 n

end

end A187556.P11122367650515515148

/-! ## A187556.P12389474477187152102

`A090683(n)/A007318(n)*A132393(n)`
-/

namespace A187556.P12389474477187152102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n : ℚ) / (A007318 n : ℚ) * (A132393 n : ℚ)

end

end A187556.P12389474477187152102

/-! ## A187556.P3409708491673605224

`A048993(n)/A130534(n)*A187558(n)`
-/

namespace A187556.P3409708491673605224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 n : ℚ) / (A130534 n : ℚ) * (A187558 n : ℚ)

end

end A187556.P3409708491673605224

/-!
# A187557: Triangle read by rows of products of Stirling numbers of the second kind (A008277): a(n,k) = S(n,k) S(n+1,k+1).

The programs for A187557, there is no canonical definition to state claims against.
-/

/-! ## A187557.P7072568666786451515

`A008277(n+1)*A048993(n)`
-/

namespace A187557.P7072568666786451515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A048993 n

end

end A187557.P7072568666786451515

/-! ## A187557.P13310282909350021008

`A048993(comp[∑[n]])*A048993(n)`
-/

namespace A187557.P13310282909350021008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A048993 n

end

end A187557.P13310282909350021008

/-! ## A187557.P13529072462012672408

`abs(A080417(n+1))*A048993(n)`
-/

namespace A187557.P13529072462012672408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080417 (n + 1)| * A048993 n

end

end A187557.P13529072462012672408

/-! ## A187557.P12285524084122384028

`(A048993(comp[C(n, 2)])+(2*n)%2)*A048993(n)`
-/

namespace A187557.P12285524084122384028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((2 * n % 2 : ℕ) : ℤ)) * A048993 n

end

end A187557.P12285524084122384028

/-! ## A187557.P12561693563590217885

`A048993(n)*A285012(comp[A061885(n)])`
-/

namespace A187557.P12561693563590217885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A285012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A187557.P12561693563590217885

/-! ## A187557.P2143842331142156610

`A008278(A038722(n+1))*A048993(n)`
-/

namespace A187557.P2143842331142156610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A038722 (n + 1)).toNat * A048993 n

end

end A187557.P2143842331142156610

/-! ## A187557.P7654370668105157318

`A008278(A061579(n)+1)*A048993(n)`
-/

namespace A187557.P7654370668105157318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A061579 n + 1).toNat * A048993 n

end

end A187557.P7654370668105157318

/-! ## A187557.P3057824940277681842

`A008277(n+1)*A106800(A061579(n))`
-/

namespace A187557.P3057824940277681842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A106800 (A061579 n).toNat

end

end A187557.P3057824940277681842

/-! ## A187557.P8102863469164511532

`A048993(n)*A136011(A056537(n+1))`
-/

namespace A187557.P8102863469164511532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A136011 (A056537 (n + 1)).toNat

end

end A187557.P8102863469164511532

/-! ## A187557.P14897757238232665616

`A048993(n)/A007318(n)*A363849(n)`
-/

namespace A187557.P14897757238232665616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 n : ℚ) / (A007318 n : ℚ) * (A363849 n : ℚ)

end

end A187557.P14897757238232665616

/-!
# A187558: Triangle a(n,k) read by rows: product s(n,k)*s(n+1,k+1) of Stirling numbers of the first kind.

The programs for A187558, there is no canonical definition to state claims against.
-/

/-! ## A187558.P17813088487107397574

`A130534(n)*A132393(n)`
-/

namespace A187558.P17813088487107397574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A132393 n

end

end A187558.P17813088487107397574

/-! ## A187558.P6192098826485836472

`abs(A048994(n)*A130534(n))`
-/

namespace A187558.P6192098826485836472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n * A130534 n|

end

end A187558.P6192098826485836472

/-! ## A187558.P4457350754636362977

`A008275(n+1)*A048994(n)`
-/

namespace A187558.P4457350754636362977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A048994 n

end

end A187558.P4457350754636362977

/-! ## A187558.P13393418923558999305

`A048994(comp[∑[n]])*A048994(n)`
-/

namespace A187558.P13393418923558999305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A048994 n

end

end A187558.P13393418923558999305

/-! ## A187558.P12440703066425667238

`A132393(comp[∑[n]])*A132393(n)`
-/

namespace A187558.P12440703066425667238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A132393 n

end

end A187558.P12440703066425667238

/-! ## A187558.P1811992004308958117

`abs(A008275(n+1)*A132393(n))`
-/

namespace A187558.P1811992004308958117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A132393 n|

end

end A187558.P1811992004308958117

/-! ## A187558.P2678768289023258983

`abs(A048994(A014132(n+1))*A048994(n))`
-/

namespace A187558.P2678768289023258983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (A014132 (n + 1)).toNat * A048994 n|

end

end A187558.P2678768289023258983

/-!
# A187559: Primes arising in A187234.

The programs for A187559, there is no canonical definition to state claims against.
-/

/-! ## A187559.P14447441998624734539

`p?[A001281(A069816(n))]`
-/

namespace A187559.P14447441998624734539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A069816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P14447441998624734539

/-! ## A187559.P5038946128826271527

`p?[A004525(A069816(n+1))]`
-/

namespace A187559.P5038946128826271527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A069816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P5038946128826271527

/-! ## A187559.P8696012413138517943

`p?[A004526(A069816(n)+1)]`
-/

namespace A187559.P8696012413138517943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069816 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P8696012413138517943

/-! ## A187559.P485634218180606561

`p?[A123108(A069816(n)+1)]`
-/

namespace A187559.P485634218180606561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A069816 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P485634218180606561

/-! ## A187559.P1490009151533082270

`p?[A300068(A069816(n)+1)]`
-/

namespace A187559.P1490009151533082270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A069816 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P1490009151533082270

/-! ## A187559.P16390834149644184920

`p?[A029578(A069816(n+2))]`
-/

namespace A187559.P16390834149644184920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A069816 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P16390834149644184920

/-! ## A187559.P3233344569207790364

`p?[A002265(2*A069816(n))]`
-/

namespace A187559.P3233344569207790364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A069816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P3233344569207790364

/-! ## A187559.P73205713012943025

`p?[A065033(A069816(n+4))]`
-/

namespace A187559.P73205713012943025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A069816 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P73205713012943025

/-! ## A187559.P9075784076053339864

`p?[A123108(A069816(10*n))]`
-/

namespace A187559.P9075784076053339864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A069816 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187559.P9075784076053339864

/-!
# A187560: a(n) = 4^(n+1)-2^n-1.

The programs for A187560, the canonical program `A187560.P15799347918775068222` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187560 has offset 0).

The definition of A187560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)-2^n-1` (program `A187560.P15799347918775068222`, by `A187560.P15799347918775068222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187560.P15799347918775068222

`4^(n+1)-2^n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A187560

/-- `4^(n+1)-2^n-1` -/
def P15799347918775068222.Spec : Prop :=
  ∀ n, P15799347918775068222.a n = A187560 n

theorem P15799347918775068222.correct : P15799347918775068222.Spec := by
  intro n
  simp only [A187560]

end A187560

/-! ## A187560.P14208602735796795187

`∑[ogf((2-x-4x^2)/(1-6x+8x^2))]`
-/

namespace A187560.P14208602735796795187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -4] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187560.P14208602735796795187

namespace A187560

/-- `∑[ogf((2-x-4x^2)/(1-6x+8x^2))]` -/
def P14208602735796795187.Spec : Prop :=
  ∀ n, P14208602735796795187.a n = A187560 n

end A187560

/-! ## A187560.P9834437815727946725

`and(-(2^n+1), ∑[3*4^n])`
-/

namespace A187560.P9834437815727946725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 ^ n + 1 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A187560.P9834437815727946725

namespace A187560

/-- `and(-(2^n+1), ∑[3*4^n])` -/
def P9834437815727946725.Spec : Prop :=
  ∀ n, P9834437815727946725.a n = A187560 n

end A187560

/-! ## A187560.P6663218454117746761

`abs(1-A171499(n))`
-/

namespace A187560.P6663218454117746761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A171499 n|

end

end A187560.P6663218454117746761

namespace A187560

/-- `abs(1-A171499(n))` -/
def P6663218454117746761.Spec : Prop :=
  ∀ n, P6663218454117746761.a n = A187560 n

end A187560

/-! ## A187560.P7257024428371503176

`abs(4^(n+1)-A000051(n))`
-/

namespace A187560.P7257024428371503176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ (n + 1) : ℤ) - A000051 n|

end

end A187560.P7257024428371503176

namespace A187560

/-- `abs(4^(n+1)-A000051(n))` -/
def P7257024428371503176.Spec : Prop :=
  ∀ n, P7257024428371503176.a n = A187560 n

end A187560

/-! ## A187560.P15787281248676123256

`or(2*a(n-1), A087289(n))` with `a(0)=2`
-/

namespace A187560.P15787281248676123256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (2 * a (n - 1)) (A087289 n)

end

end A187560.P15787281248676123256

namespace A187560

/-- `or(2*a(n-1), A087289(n))` -/
def P15787281248676123256.Spec : Prop :=
  ∀ n, P15787281248676123256.a n = A187560 n

end A187560

/-! ## A187560.P3447450910432349715

`xor(A001576(n), A096045(n))`
-/

namespace A187560.P3447450910432349715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001576 n) (A096045 n)

end

end A187560.P3447450910432349715

namespace A187560

/-- `xor(A001576(n), A096045(n))` -/
def P3447450910432349715.Spec : Prop :=
  ∀ n, P3447450910432349715.a n = A187560 n

end A187560

/-! ## A187560.P10353318500990418873

`xor(A004171(n), A129868(n))`
-/

namespace A187560.P10353318500990418873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004171 n) (A129868 n)

end

end A187560.P10353318500990418873

namespace A187560

/-- `xor(A004171(n), A129868(n))` -/
def P10353318500990418873.Spec : Prop :=
  ∀ n, P10353318500990418873.a n = A187560 n

end A187560

/-! ## A187560.P1809021587238216336

`xor(A126646(n), A171499(n))`
-/

namespace A187560.P1809021587238216336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A171499 n)

end

end A187560.P1809021587238216336

namespace A187560

/-- `xor(A126646(n), A171499(n))` -/
def P1809021587238216336.Spec : Prop :=
  ∀ n, P1809021587238216336.a n = A187560 n

end A187560

/-! ## A187560.P3257166585979987059

`xor(A171476(n), A281482(n))`
-/

namespace A187560.P3257166585979987059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171476 n) (A281482 n)

end

end A187560.P3257166585979987059

namespace A187560

/-- `xor(A171476(n), A281482(n))` -/
def P3257166585979987059.Spec : Prop :=
  ∀ n, P3257166585979987059.a n = A187560 n

end A187560

/-! ## A187560.P5824095144499882372

`xor(A169726(n), A290718(n+1))`
-/

namespace A187560.P5824095144499882372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169726 n) (A290718 (n + 1))

end

end A187560.P5824095144499882372

namespace A187560

/-- `xor(A169726(n), A290718(n+1))` -/
def P5824095144499882372.Spec : Prop :=
  ∀ n, P5824095144499882372.a n = A187560 n

end A187560

/-! ## A187560.P15389386401032343282

`xor(A242026(n+1), A303611(n+2))`
-/

namespace A187560.P15389386401032343282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A242026 (n + 1)) (A303611 (n + 2))

end

end A187560.P15389386401032343282

namespace A187560

/-- `xor(A242026(n+1), A303611(n+2))` -/
def P15389386401032343282.Spec : Prop :=
  ∀ n, P15389386401032343282.a n = A187560 n

end A187560

/-! ## A187560.P2249226763609879907

`(A129868(n+1)-1)/2`
-/

namespace A187560.P2249226763609879907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129868 (n + 1) - 1 : ℚ) / 2

end

end A187560.P2249226763609879907

namespace A187560

/-- `(A129868(n+1)-1)/2` -/
def P2249226763609879907.Spec : Prop :=
  ∀ n, P2249226763609879907.a n = (A187560 n : ℚ)

end A187560

/-! ## A187560.P10971405507404947420

`(A134169(n+2)-3)/2`
-/

namespace A187560.P10971405507404947420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134169 (n + 2) - 3 : ℚ) / 2

end

end A187560.P10971405507404947420

namespace A187560

/-- `(A134169(n+2)-3)/2` -/
def P10971405507404947420.Spec : Prop :=
  ∀ n, P10971405507404947420.a n = (A187560 n : ℚ)

end A187560

/-! ## A187560.P9741815936479788468

`(A002446(n+1)-A000079(n+1))/2`
-/

namespace A187560.P9741815936479788468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002446 (n + 1) - A000079 (n + 1) : ℚ) / 2

end

end A187560.P9741815936479788468

namespace A187560

/-- `(A002446(n+1)-A000079(n+1))/2` -/
def P9741815936479788468.Spec : Prop :=
  ∀ n, P9741815936479788468.a n = (A187560 n : ℚ)

end A187560

/-!
# A187562: Least k >= 0 such that prime(n)*(prime(n)-k)+1 is prime.

The programs for A187562, there is no canonical definition to state claims against.
-/

/-! ## A187562.P14319958937277480427

`A000040(n+1)-A171751(Δ[A007504(n)])`
-/

namespace A187562.P14319958937277480427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A171751 (f1 (n + 1) - f1 n).toNat

end

end A187562.P14319958937277480427

/-! ## A187562.P3678323665051593828

`A000040(n+1)-A171751(p?[A001057(n)])`
-/

namespace A187562.P3678323665051593828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A171751 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A187562.P3678323665051593828

/-! ## A187562.P6219355140321473149

`A000040(n+1)-A171751(p?[A006370(n)])`
-/

namespace A187562.P6219355140321473149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A171751 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A187562.P6219355140321473149

/-! ## A187562.P677537265400771175

`A000040(n+1)-A171751(p?[A014681(n)])`
-/

namespace A187562.P677537265400771175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A171751 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A187562.P677537265400771175

/-! ## A187562.P3433293186431469065

`A238852(n+1)-A171751(A238852(n+1))`
-/

namespace A187562.P3433293186431469065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238852 (n + 1) - A171751 (A238852 (n + 1)).toNat

end

end A187562.P3433293186431469065

/-!
# A187564: Differences between the Gullwing sequence A187220 and A147562 (Ulam-Warburton cellular automaton).

The programs for A187564, there is no canonical definition to state claims against.
-/

/-! ## A187564.P3779349497267660898

`A187220(n+1)-A147562(n)`
-/

namespace A187564.P3779349497267660898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (n + 1) - A147562 n

end

end A187564.P3779349497267660898

/-! ## A187564.P17708617581268248358

`A255166(n)+1`
-/

namespace A187564.P17708617581268248358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255166 n + 1

end

end A187564.P17708617581268248358

/-! ## A187564.P4095995965345703089

`A015906(A255166(n))`
-/

namespace A187564.P4095995965345703089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A255166 n).toNat

end

end A187564.P4095995965345703089

/-! ## A187564.P6092599188927929107

`A008619(2*A255166(n))`
-/

namespace A187564.P6092599188927929107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A255166 n).toNat

end

end A187564.P6092599188927929107

/-! ## A187564.P5385390369304384536

`A027656(2*A255166(n))`
-/

namespace A187564.P5385390369304384536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A255166 n).toNat

end

end A187564.P5385390369304384536

/-! ## A187564.P5447663619577333552

`A028242(2*A255166(n))`
-/

namespace A187564.P5447663619577333552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A255166 n).toNat

end

end A187564.P5447663619577333552

/-! ## A187564.P5423656625565348800

`A008611(3*A255166(n))`
-/

namespace A187564.P5423656625565348800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A255166 n).toNat

end

end A187564.P5423656625565348800

/-! ## A187564.P16191977953905098545

`A008620(3*A255166(n))`
-/

namespace A187564.P16191977953905098545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A255166 n).toNat

end

end A187564.P16191977953905098545

/-! ## A187564.P7259523170375478444

`A008612(6*A255166(n))`
-/

namespace A187564.P7259523170375478444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A255166 n).toNat

end

end A187564.P7259523170375478444

/-! ## A187564.P9816000092853948954

`A008619(lcm(2, A255166(n)))`
-/

namespace A187564.P9816000092853948954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lcm 2 (A255166 n))

end

end A187564.P9816000092853948954

/-!
# A187568: Rank transform of the sequence round(2n/3); complement of A187569.

The programs for A187568, there is no canonical definition to state claims against.
-/

/-! ## A187568.P1656400348952067057

`comp[A187569(n+1)-1]+1`
-/

namespace A187568.P1656400348952067057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187569 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187568.P1656400348952067057

/-! ## A187568.P9298352559470056547

`A131737(A187569(n+1)-n)`
-/

namespace A187568.P9298352559470056547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A187569 (n + 1) - (n : ℤ)).toNat

end

end A187568.P9298352559470056547

/-! ## A187568.P14701545432248423728

`A004396(A187569(n+1)-(n+1))`
-/

namespace A187568.P14701545432248423728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A187569 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187568.P14701545432248423728

/-! ## A187568.P1862779521826364805

`A004523(A187569(n+1)-(n+1))`
-/

namespace A187568.P1862779521826364805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A187569 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187568.P1862779521826364805

/-! ## A187568.P1010811232042331936

`A131380(A187569(n+1)-(n+1))`
-/

namespace A187568.P1010811232042331936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (A187569 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187568.P1010811232042331936

/-! ## A187568.P8634405591638980832

`A274616(A187569(n+1)-(n+1))`
-/

namespace A187568.P8634405591638980832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A187569 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187568.P8634405591638980832

/-! ## A187568.P4333374472656895296

`A004773(A187569(n+1)-(n+1))/2`
-/

namespace A187568.P4333374472656895296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004773 (A187569 (n + 1) - (n + 1 : ℤ)).toNat : ℚ) / 2

end

end A187568.P4333374472656895296

/-!
# A187569: Complement of A187568.

The programs for A187569, there is no canonical definition to state claims against.
-/

/-! ## A187569.P11664022518886392082

`A007494(A187568(n+1))+1+n`
-/

namespace A187569.P11664022518886392082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A187568 (n + 1)).toNat + 1 + (n : ℤ)

end

end A187569.P11664022518886392082

/-! ## A187569.P3100997735588298827

`A032766(A187568(n+1)+1)+n`
-/

namespace A187569.P3100997735588298827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A187568 (n + 1) + 1).toNat + (n : ℤ)

end

end A187569.P3100997735588298827

/-! ## A187569.P735637238055833365

`eq[char[A187568(n+1)], A151909(n)]`
-/

namespace A187569.P735637238055833365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187568 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187569.P735637238055833365

/-! ## A187569.P8739285516106068555

`eq[char[A187568(n+1)], A151933(n)]`
-/

namespace A187569.P8739285516106068555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187568 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187569.P8739285516106068555

/-! ## A187569.P1834316525485501782

`∩[comp[A187568(n+1)], A340745(n+2)]`
-/

namespace A187569.P1834316525485501782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187568 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A187569.P1834316525485501782

/-!
# A187570: Rank transform of the sequence ceiling(n/3); complement of A187571.

The programs for A187570, the canonical program `A187570.P3143317834405625411` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187570 has offset 1).

The definition of A187570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187570.P3143317834405625411

`floor(a(n-1)+n/a(a(n-1)-n)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A187570

/-- `floor(a(n-1)+n/a(a(n-1)-n)-1)` -/
def P3143317834405625411.Spec : Prop :=
  ∀ n, P3143317834405625411.a n = A187570 (n + 1)

theorem P3143317834405625411.correct : P3143317834405625411.Spec := by
  intro n
  simp only [A187570, Nat.add_sub_cancel]

end A187570

/-! ## A187570.P5278399857744363258

`floor(a(n-1)-(1-n/a(a(n-1)-n)))` with `a(0)=1, a(1)=2`
-/

namespace A187570.P5278399857744363258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) - (1 - (n : ℚ) / (a (a (n - 1) - (n : ℤ)).toNat : ℚ))⌋

end

end A187570.P5278399857744363258

namespace A187570

/-- `floor(a(n-1)-(1-n/a(a(n-1)-n)))` -/
def P5278399857744363258.Spec : Prop :=
  ∀ n, P5278399857744363258.a n = A187570 (n + 1)

theorem P5278399857744363258.correct : P5278399857744363258.Spec := by
  intro n
  simp only [A187570, Nat.add_sub_cancel, A187570.P5278399857744363258.a, A187570.P3143317834405625411.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A187570

/-! ## A187570.P9145189053358379442

`comp[A045750(n)]`
-/

namespace A187570.P9145189053358379442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187570.P9145189053358379442

namespace A187570

/-- `comp[A045750(n)]` -/
def P9145189053358379442.Spec : Prop :=
  ∀ n, (P9145189053358379442.a n : ℤ) = A187570 (n + 1)

end A187570

/-! ## A187570.P18069073932439943211

`A284365(n+1)-(n+1)`
-/

namespace A187570.P18069073932439943211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284365 (n + 1) - (n + 1 : ℤ)

end

end A187570.P18069073932439943211

namespace A187570

/-- `A284365(n+1)-(n+1)` -/
def P18069073932439943211.Spec : Prop :=
  ∀ n, P18069073932439943211.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P1157482976280234962

`comp[A187571(n+1)-1]+1`
-/

namespace A187570.P1157482976280234962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187571 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187570.P1157482976280234962

namespace A187570

/-- `comp[A187571(n+1)-1]+1` -/
def P1157482976280234962.Spec : Prop :=
  ∀ n, (P1157482976280234962.a n : ℤ) = A187570 (n + 1)

end A187570

/-! ## A187570.P14224862716159794835

`A045749(n+1)`
-/

namespace A187570.P14224862716159794835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 (n + 1)

end

end A187570.P14224862716159794835

namespace A187570

/-- `A045749(n+1)` -/
def P14224862716159794835.Spec : Prop :=
  ∀ n, P14224862716159794835.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P17255972690247514535

`∑[abs(Δ[A045749(n)])]`
-/

namespace A187570.P17255972690247514535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187570.P17255972690247514535

namespace A187570

/-- `∑[abs(Δ[A045749(n)])]` -/
def P17255972690247514535.Spec : Prop :=
  ∀ n, P17255972690247514535.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P4149933513122453458

`record[A045749(abs(1-n))]`
-/

namespace A187570.P4149933513122453458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187570.P4149933513122453458

namespace A187570

/-- `record[A045749(abs(1-n))]` -/
def P4149933513122453458.Spec : Prop :=
  ∀ n, P4149933513122453458.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P2019642569314738729

`(A045750(n+1)-(n+1))/3`
-/

namespace A187570.P2019642569314738729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045750 (n + 1) - (n + 1 : ℤ) : ℚ) / 3

end

end A187570.P2019642569314738729

namespace A187570

/-- `(A045750(n+1)-(n+1))/3` -/
def P2019642569314738729.Spec : Prop :=
  ∀ n, P2019642569314738729.a n = (A187570 (n + 1) : ℚ)

end A187570

/-! ## A187570.P10890032020380253742

`∑[A000005(Δ[A045749(n)])]`
-/

namespace A187570.P10890032020380253742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187570.P10890032020380253742

namespace A187570

/-- `∑[A000005(Δ[A045749(n)])]` -/
def P10890032020380253742.Spec : Prop :=
  ∀ n, P10890032020380253742.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P7951275719399090060

`∑[A020639(Δ[A045749(n)])]`
-/

namespace A187570.P7951275719399090060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187570.P7951275719399090060

namespace A187570

/-- `∑[A020639(Δ[A045749(n)])]` -/
def P7951275719399090060.Spec : Prop :=
  ∀ n, P7951275719399090060.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P18051660243546833838

`∑[A045749(Δ[A045749(n)])]`
-/

namespace A187570.P18051660243546833838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187570.P18051660243546833838

namespace A187570

/-- `∑[A045749(Δ[A045749(n)])]` -/
def P18051660243546833838.Spec : Prop :=
  ∀ n, P18051660243546833838.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P2927346568016930638

`A002264(A045750(n+1)-n)`
-/

namespace A187570.P2927346568016930638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045750 (n + 1) - (n : ℤ)).toNat

end

end A187570.P2927346568016930638

namespace A187570

/-- `A002264(A045750(n+1)-n)` -/
def P2927346568016930638.Spec : Prop :=
  ∀ n, P2927346568016930638.a n = A187570 (n + 1)

end A187570

/-! ## A187570.P17685935101558869735

`A002264(A187571(n+1)-n)`
-/

namespace A187570.P17685935101558869735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A187571 (n + 1) - (n : ℤ)).toNat

end

end A187570.P17685935101558869735

namespace A187570

/-- `A002264(A187571(n+1)-n)` -/
def P17685935101558869735.Spec : Prop :=
  ∀ n, P17685935101558869735.a n = A187570 (n + 1)

end A187570

/-!
# A187571: Complement of A187570.

The programs for A187571, the canonical program `A187571.P5003095769329786883` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187571 has offset 1).

The definition of A187571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187571.P5003095769329786883

`3*A187570(n+1)+n+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A187571

/-- `3*A187570(n+1)+n+1` -/
def P5003095769329786883.Spec : Prop :=
  ∀ n, P5003095769329786883.a n = A187571 (n + 1)

theorem P5003095769329786883.correct : P5003095769329786883.Spec := by
  intro n
  simp only [A187571, Nat.add_sub_cancel]

end A187571

/-! ## A187571.P8058413299389010780

`3*(A284365(n+1)-n)+n-2`
-/

namespace A187571.P8058413299389010780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A284365 (n + 1) - (n : ℤ)) + ((n : ℤ) - 2)

end

end A187571.P8058413299389010780

namespace A187571

/-- `3*(A284365(n+1)-n)+n-2` -/
def P8058413299389010780.Spec : Prop :=
  ∀ n, P8058413299389010780.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P4801220197694092869

`A045750(n+1)`
-/

namespace A187571.P4801220197694092869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 (n + 1)

end

end A187571.P4801220197694092869

namespace A187571

/-- `A045750(n+1)` -/
def P4801220197694092869.Spec : Prop :=
  ∀ n, P4801220197694092869.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P59827198303645506

`∑[abs(Δ[A045750(n)])]`
-/

namespace A187571.P59827198303645506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187571.P59827198303645506

namespace A187571

/-- `∑[abs(Δ[A045750(n)])]` -/
def P59827198303645506.Spec : Prop :=
  ∀ n, P59827198303645506.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P10315033737568312629

`record[A045750(abs(1-n))]`
-/

namespace A187571.P10315033737568312629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187571.P10315033737568312629

namespace A187571

/-- `record[A045750(abs(1-n))]` -/
def P10315033737568312629.Spec : Prop :=
  ∀ n, P10315033737568312629.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P4649161869439207555

`3*A045749(n+1)+n+1`
-/

namespace A187571.P4649161869439207555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045749 (n + 1) + (n + 1 : ℤ)

end

end A187571.P4649161869439207555

namespace A187571

/-- `3*A045749(n+1)+n+1` -/
def P4649161869439207555.Spec : Prop :=
  ∀ n, P4649161869439207555.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P18329726026827603063

`∑[A045752(Δ[A045749(n)])]`
-/

namespace A187571.P18329726026827603063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045752 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187571.P18329726026827603063

namespace A187571

/-- `∑[A045752(Δ[A045749(n)])]` -/
def P18329726026827603063.Spec : Prop :=
  ∀ n, P18329726026827603063.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P8498939939865491556

`∑[A045745(Δ[A045750(n)])]`
-/

namespace A187571.P8498939939865491556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187571.P8498939939865491556

namespace A187571

/-- `∑[A045745(Δ[A045750(n)])]` -/
def P8498939939865491556.Spec : Prop :=
  ∀ n, P8498939939865491556.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P10648600186406957976

`∑[A045779(Δ[A045750(n)])]`
-/

namespace A187571.P10648600186406957976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045779 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187571.P10648600186406957976

namespace A187571

/-- `∑[A045779(Δ[A045750(n)])]` -/
def P10648600186406957976.Spec : Prop :=
  ∀ n, P10648600186406957976.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P12871473971170709224

`A016777(A045749(n+1))+n`
-/

namespace A187571.P12871473971170709224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A045749 (n + 1)).toNat + (n : ℤ)

end

end A187571.P12871473971170709224

namespace A187571

/-- `A016777(A045749(n+1))+n` -/
def P12871473971170709224.Spec : Prop :=
  ∀ n, P12871473971170709224.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P7270360750159897670

`A016777(A187570(n+1))+n`
-/

namespace A187571.P7270360750159897670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187570 (n + 1)).toNat + (n : ℤ)

end

end A187571.P7270360750159897670

namespace A187571

/-- `A016777(A187570(n+1))+n` -/
def P7270360750159897670.Spec : Prop :=
  ∀ n, P7270360750159897670.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P378697966222681080

`A023443(n)+A016789(A187570(n+1))`
-/

namespace A187571.P378697966222681080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A016789 (A187570 (n + 1)).toNat

end

end A187571.P378697966222681080

namespace A187571

/-- `A023443(n)+A016789(A187570(n+1))` -/
def P378697966222681080.Spec : Prop :=
  ∀ n, P378697966222681080.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P11654357545211641340

`A016789(A187570(n+1))-A024000(n)`
-/

namespace A187571.P11654357545211641340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A187570 (n + 1)).toNat - A024000 n

end

end A187571.P11654357545211641340

namespace A187571

/-- `A016789(A187570(n+1))-A024000(n)` -/
def P11654357545211641340.Spec : Prop :=
  ∀ n, P11654357545211641340.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P8077980937961819258

`A008585(A187570(n+1))+A000027(n+1)`
-/

namespace A187571.P8077980937961819258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A187570 (n + 1)).toNat + A000027 (n + 1)

end

end A187571.P8077980937961819258

namespace A187571

/-- `A008585(A187570(n+1))+A000027(n+1)` -/
def P8077980937961819258.Spec : Prop :=
  ∀ n, P8077980937961819258.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P11960994561890851861

`A016777(A284365(n+1))-A144396(n+1)`
-/

namespace A187571.P11960994561890851861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A284365 (n + 1)).toNat - A144396 (n + 1)

end

end A187571.P11960994561890851861

namespace A187571

/-- `A016777(A284365(n+1))-A144396(n+1)` -/
def P11960994561890851861.Spec : Prop :=
  ∀ n, P11960994561890851861.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P13375619983414044131

`∩[A045750(n), A337843(n)]`
-/

namespace A187571.P13375619983414044131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187571.P13375619983414044131

namespace A187571

/-- `∩[A045750(n), A337843(n)]` -/
def P13375619983414044131.Spec : Prop :=
  ∀ n, (P13375619983414044131.a n : ℤ) = A187571 (n + 1)

end A187571

/-! ## A187571.P12778387619469250588

`comp[A045749(n)]%A045740(n+4)`
-/

namespace A187571.P12778387619469250588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A045740 (n + 4))

end

end A187571.P12778387619469250588

namespace A187571

/-- `comp[A045749(n)]%A045740(n+4)` -/
def P12778387619469250588.Spec : Prop :=
  ∀ n, P12778387619469250588.a n = A187571 (n + 1)

end A187571

/-! ## A187571.P7073554886843734760

`A008585(A187570(n+1))+A000188((n+1)²)`
-/

namespace A187571.P7073554886843734760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A187570 (n + 1)).toNat + A000188 ((n + 1) ^ 2)

end

end A187571.P7073554886843734760

namespace A187571

/-- `A008585(A187570(n+1))+A000188((n+1)²)` -/
def P7073554886843734760.Spec : Prop :=
  ∀ n, P7073554886843734760.a n = A187571 (n + 1)

end A187571

/-!
# A187572: Rank transform of the sequence round(n/3); complement of A187473.

The programs for A187572, the canonical program `A187572.P12130925159264491610` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187572 has offset 1).

The definition of A187572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187572.P12130925159264491610

`floor(a(n-1)+(n-1)/a(a(n-1)-n))-1` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A187572

/-- `floor(a(n-1)+(n-1)/a(a(n-1)-n))-1` -/
def P12130925159264491610.Spec : Prop :=
  ∀ n, P12130925159264491610.a n = A187572 (n + 1)

theorem P12130925159264491610.correct : P12130925159264491610.Spec := by
  intro n
  simp only [A187572, Nat.add_sub_cancel]

end A187572

/-! ## A187572.P3373592655065043107

`comp[A187573(n+1)-1]+1`
-/

namespace A187572.P3373592655065043107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187573 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187572.P3373592655065043107

namespace A187572

/-- `comp[A187573(n+1)-1]+1` -/
def P3373592655065043107.Spec : Prop :=
  ∀ n, (P3373592655065043107.a n : ℤ) = A187572 (n + 1)

end A187572

/-! ## A187572.P8764656367695207106

`A008611(A187573(n+1)-(n+1))`
-/

namespace A187572.P8764656367695207106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A187573 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187572.P8764656367695207106

namespace A187572

/-- `A008611(A187573(n+1)-(n+1))` -/
def P8764656367695207106.Spec : Prop :=
  ∀ n, P8764656367695207106.a n = A187572 (n + 1)

end A187572

/-! ## A187572.P4133175586014436924

`A051176(A187573(n+1)-(n+2))`
-/

namespace A187572.P4133175586014436924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A187573 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187572.P4133175586014436924

namespace A187572

/-- `A051176(A187573(n+1)-(n+2))` -/
def P4133175586014436924.Spec : Prop :=
  ∀ n, P4133175586014436924.a n = A187572 (n + 1)

end A187572

/-! ## A187572.P9911909078151410167

`A123919(A187573(n+1)-(n+2))`
-/

namespace A187572.P9911909078151410167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A187573 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187572.P9911909078151410167

namespace A187572

/-- `A123919(A187573(n+1)-(n+2))` -/
def P9911909078151410167.Spec : Prop :=
  ∀ n, P9911909078151410167.a n = A187572 (n + 1)

end A187572

/-! ## A187572.P11992134603580010616

`A002264(A187573(n+1)-n)`
-/

namespace A187572.P11992134603580010616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A187573 (n + 1) - (n : ℤ)).toNat

end

end A187572.P11992134603580010616

namespace A187572

/-- `A002264(A187573(n+1)-n)` -/
def P11992134603580010616.Spec : Prop :=
  ∀ n, P11992134603580010616.a n = A187572 (n + 1)

end A187572

/-! ## A187572.P1762701714344673390

`A103627(A187573(n+1)-n)`
-/

namespace A187572.P1762701714344673390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A187573 (n + 1) - (n : ℤ)).toNat

end

end A187572.P1762701714344673390

namespace A187572

/-- `A103627(A187573(n+1)-n)` -/
def P1762701714344673390.Spec : Prop :=
  ∀ n, P1762701714344673390.a n = A187572 (n + 1)

end A187572

/-!
# A187573: Complement of A187572.

The programs for A187573, the canonical program `A187573.P17768076224200419782` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187573 has offset 1).

The definition of A187573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187573.P17768076224200419782

`3*A187572(n+1)+2+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A187573

/-- `3*A187572(n+1)+2+n` -/
def P17768076224200419782.Spec : Prop :=
  ∀ n, P17768076224200419782.a n = A187573 (n + 1)

theorem P17768076224200419782.correct : P17768076224200419782.Spec := by
  intro n
  simp only [A187573, Nat.add_sub_cancel]

end A187573

/-! ## A187573.P18216862133084478084

`A016789(A187572(n+1))+n`
-/

namespace A187573.P18216862133084478084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A187572 (n + 1)).toNat + (n : ℤ)

end

end A187573.P18216862133084478084

namespace A187573

/-- `A016789(A187572(n+1))+n` -/
def P18216862133084478084.Spec : Prop :=
  ∀ n, P18216862133084478084.a n = A187573 (n + 1)

end A187573

/-! ## A187573.P5205827198959979526

`A016777(A187572(C(n+1, n)))+1+n`
-/

namespace A187573.P5205827198959979526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187572 (Nat.choose (n + 1) n)).toNat + 1 + (n : ℤ)

end

end A187573.P5205827198959979526

namespace A187573

/-- `A016777(A187572(C(n+1, n)))+1+n` -/
def P5205827198959979526.Spec : Prop :=
  ∀ n, P5205827198959979526.a n = A187573 (n + 1)

end A187573

/-! ## A187573.P12074601395805362695

`A016777(A187572(Δ[n²]-n))+1+n`
-/

namespace A187573.P12074601395805362695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1 + (n : ℤ)

end

end A187573.P12074601395805362695

namespace A187573

/-- `A016777(A187572(Δ[n²]-n))+1+n` -/
def P12074601395805362695.Spec : Prop :=
  ∀ n, P12074601395805362695.a n = A187573 (n + 1)

end A187573

/-! ## A187573.P13060125542055590695

`A016777(A187572(n+1))+A000027(n+1)`
-/

namespace A187573.P13060125542055590695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187572 (n + 1)).toNat + A000027 (n + 1)

end

end A187573.P13060125542055590695

namespace A187573

/-- `A016777(A187572(n+1))+A000027(n+1)` -/
def P13060125542055590695.Spec : Prop :=
  ∀ n, P13060125542055590695.a n = A187573 (n + 1)

end A187573

/-! ## A187573.P3856342544788170170

`A028310(n+1)+A016777(A187572(n+1))`
-/

namespace A187573.P3856342544788170170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) + A016777 (A187572 (n + 1)).toNat

end

end A187573.P3856342544788170170

namespace A187573

/-- `A028310(n+1)+A016777(A187572(n+1))` -/
def P3856342544788170170.Spec : Prop :=
  ∀ n, P3856342544788170170.a n = A187573 (n + 1)

end A187573

/-! ## A187573.P17591098426028122370

`A016777(A187572(n+1))-A001478(n+1)`
-/

namespace A187573.P17591098426028122370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187572 (n + 1)).toNat - A001478 (n + 1)

end

end A187573.P17591098426028122370

namespace A187573

/-- `A016777(A187572(n+1))-A001478(n+1)` -/
def P17591098426028122370.Spec : Prop :=
  ∀ n, P17591098426028122370.a n = A187573 (n + 1)

end A187573

/-! ## A187573.P7610252470420879418

`A016777(A187572(n+1))+A005408(n)-n`
-/

namespace A187573.P7610252470420879418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187572 (n + 1)).toNat + (A005408 n - (n : ℤ))

end

end A187573.P7610252470420879418

namespace A187573

/-- `A016777(A187572(n+1))+A005408(n)-n` -/
def P7610252470420879418.Spec : Prop :=
  ∀ n, P7610252470420879418.a n = A187573 (n + 1)

end A187573

/-! ## A187573.P13975274706870433471

`A016777(A187572(n+1))+A000290(n+1)/(n+1)`
-/

namespace A187573.P13975274706870433471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 (A187572 (n + 1)).toNat : ℚ) + (A000290 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A187573.P13975274706870433471

namespace A187573

/-- `A016777(A187572(n+1))+A000290(n+1)/(n+1)` -/
def P13975274706870433471.Spec : Prop :=
  ∀ n, P13975274706870433471.a n = (A187573 (n + 1) : ℚ)

end A187573

/-! ## A187573.P8924731025059317352

`A016777(A187572(n+1))+(n+1)%A198277(n)`
-/

namespace A187573.P8924731025059317352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A187572 (n + 1)).toNat + Int.tmod (n + 1 : ℤ) (A198277 n)

end

end A187573.P8924731025059317352

namespace A187573

/-- `A016777(A187572(n+1))+(n+1)%A198277(n)` -/
def P8924731025059317352.Spec : Prop :=
  ∀ n, P8924731025059317352.a n = A187573 (n + 1)

end A187573

/-!
# A187574: Rank transform of the sequence floor(n*3^(1/3)); complement of A187575.

The programs for A187574, there is no canonical definition to state claims against.
-/

/-! ## A187574.P17391918271543334032

`eq[char[A187575(n+1)], A151933(n)]`
-/

namespace A187574.P17391918271543334032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187575 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187574.P17391918271543334032

/-! ## A187574.P17375938138955890759

`floor(A028777(3*n+1)/2)`
-/

namespace A187574.P17375938138955890759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028777 (3 * n + 1) : ℚ) / 2⌋

end

end A187574.P17375938138955890759

/-! ## A187574.P1424246420542291159

`A004526(A028777(A016777(n)))`
-/

namespace A187574.P1424246420542291159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028777 (A016777 n).toNat).toNat

end

end A187574.P1424246420542291159

/-! ## A187574.P3753916324489706706

`A123108(A028777(A005408(n)+n))`
-/

namespace A187574.P3753916324489706706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A028777 (A005408 n + (n : ℤ)).toNat).toNat

end

end A187574.P3753916324489706706

/-!
# A187575: Complement of A187574.

The programs for A187575, there is no canonical definition to state claims against.
-/

/-! ## A187575.P18427567094203429298

`eq[char[A187574(n+1)], A151933(n)]`
-/

namespace A187575.P18427567094203429298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187574 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187575.P18427567094203429298

/-! ## A187575.P11837228569989119277

`A277644(2*(n+1))-A102671(A108296(n))`
-/

namespace A187575.P11837228569989119277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1)) - A102671 (A108296 n).toNat

end

end A187575.P11837228569989119277

/-! ## A187575.P8000993672957378248

`A156262(or(A054353(3*n+2), A156256(n+1)))`
-/

namespace A187575.P8000993672957378248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (Int.lor (A054353 (3 * n + 2)) (A156256 (n + 1))).toNat

end

end A187575.P8000993672957378248

/-!
# A187576: Rank transform of the sequence 2*floor((n-1)/2); complement of A187577.

The programs for A187576, the canonical program `A187576.P17089044639270244333` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187576 has offset 1).

The definition of A187576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187576.P11575389343457906720

`comp[2*floor(∑[ϕ^((1-n)%2)])+n-2]`
-/

namespace A187576.P11575389343457906720
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ + (n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187576.P11575389343457906720

namespace A187576

/-- `comp[2*floor(∑[ϕ^((1-n)%2)])+n-2]` -/
def P11575389343457906720.Spec : Prop :=
  ∀ n, (P11575389343457906720.a n : ℤ) = A187576 (n + 1)

end A187576

/-! ## A187576.P260893043539618361

`comp[2*ceil(∑[ϕ/a(n-1)]/ϕ)+n]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A187576.P260893043539618361
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  Real.goldenRatio / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(∑ j ∈ Finset.range (n + 1), f2 j) / Real.goldenRatio⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187576.P260893043539618361

namespace A187576

/-- `comp[2*ceil(∑[ϕ/a(n-1)]/ϕ)+n]` -/
def P260893043539618361.Spec : Prop :=
  ∀ n, (P260893043539618361.a n : ℤ) = A187576 (n + 1)

end A187576

/-! ## A187576.P11106587332208666751

`comp[A187581(n+1)-2]`
-/

namespace A187576.P11106587332208666751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187581 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187576.P11106587332208666751

namespace A187576

/-- `comp[A187581(n+1)-2]` -/
def P11106587332208666751.Spec : Prop :=
  ∀ n, (P11106587332208666751.a n : ℤ) = A187576 (n + 1)

end A187576

/-! ## A187576.P11549500975136591720

`comp[A159917(n)+2*n]`
-/

namespace A187576.P11549500975136591720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187576.P11549500975136591720

namespace A187576

/-- `comp[A159917(n)+2*n]` -/
def P11549500975136591720.Spec : Prop :=
  ∀ n, (P11549500975136591720.a n : ℤ) = A187576 (n + 1)

end A187576

/-! ## A187576.P131343910483079852

`comp[A187577(n+1)-1]+1`
-/

namespace A187576.P131343910483079852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187577 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187576.P131343910483079852

namespace A187576

/-- `comp[A187577(n+1)-1]+1` -/
def P131343910483079852.Spec : Prop :=
  ∀ n, (P131343910483079852.a n : ℤ) = A187576 (n + 1)

end A187576

/-! ## A187576.P17089044639270244333

`eq[1, A003842(ceil(xor(1, n)/2))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187576

/-- `eq[1, A003842(ceil(xor(1, n)/2))]` -/
def P17089044639270244333.Spec : Prop :=
  ∀ n, (P17089044639270244333.a n : ℤ) = A187576 (n + 1)

theorem P17089044639270244333.correct : P17089044639270244333.Spec := by
  intro n
  simp only [A187576, Nat.add_sub_cancel]

end A187576

/-! ## A187576.P12432753060223871937

`A187580(n+2)-2`
-/

namespace A187576.P12432753060223871937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (n + 2) - 2

end

end A187576.P12432753060223871937

namespace A187576

/-- `A187580(n+2)-2` -/
def P12432753060223871937.Spec : Prop :=
  ∀ n, P12432753060223871937.a n = A187576 (n + 1)

end A187576

/-! ## A187576.P13248343044827613491

`lt[A214211(xor(1, n)+1), 2]`
-/

namespace A187576.P13248343044827613491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 (Nat.xor 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187576.P13248343044827613491

namespace A187576

/-- `lt[A214211(xor(1, n)+1), 2]` -/
def P13248343044827613491.Spec : Prop :=
  ∀ n, (P13248343044827613491.a n : ℤ) = A187576 (n + 1)

end A187576

/-! ## A187576.P5457022226173347259

`lt[A214211(abs(xor(n, -2))), 2]`
-/

namespace A187576.P5457022226173347259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 |Int.xor (n : ℤ) (-2)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187576.P5457022226173347259

namespace A187576

/-- `lt[A214211(abs(xor(n, -2))), 2]` -/
def P5457022226173347259.Spec : Prop :=
  ∀ n, (P5457022226173347259.a n : ℤ) = A187576 (n + 1)

end A187576

/-! ## A187576.P14503706080068423948

`A023444(A187580(n+2))`
-/

namespace A187576.P14503706080068423948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187580 (n + 2)).toNat

end

end A187576.P14503706080068423948

namespace A187576

/-- `A023444(A187580(n+2))` -/
def P14503706080068423948.Spec : Prop :=
  ∀ n, P14503706080068423948.a n = A187576 (n + 1)

end A187576

/-!
# A187577: Complement of A187576.

The programs for A187577, the canonical program `A187577.P7426912050997007396` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187577 has offset 1).

The definition of A187577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187577.P1491896596550039675

`2*floor(∑[ϕ-a(n-1)]+ϕ)+n-1` with `a(0)=1`
-/

namespace A187577.P1491896596550039675
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋ + (n : ℤ) - 1

end

end A187577.P1491896596550039675

namespace A187577

/-- `2*floor(∑[ϕ-a(n-1)]+ϕ)+n-1` -/
def P1491896596550039675.Spec : Prop :=
  ∀ n, P1491896596550039675.a n = A187577 (n + 1)

end A187577

/-! ## A187577.P5054691619639915586

`2*ceil(∑[ϕ/a(n-1)]/ϕ)+n+1` with `a(0)=1, a(1)=1`
-/

namespace A187577.P5054691619639915586
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / Real.goldenRatio⌉ + (n : ℤ) + 1

end

end A187577.P5054691619639915586

namespace A187577

/-- `2*ceil(∑[ϕ/a(n-1)]/ϕ)+n+1` -/
def P5054691619639915586.Spec : Prop :=
  ∀ n, P5054691619639915586.a n = A187577 (n + 1)

end A187577

/-! ## A187577.P7426912050997007396

`∑[3-and(2, A267860(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187577

/-- `∑[3-and(2, A267860(n))]` -/
def P7426912050997007396.Spec : Prop :=
  ∀ n, P7426912050997007396.a n = A187577 (n + 1)

theorem P7426912050997007396.correct : P7426912050997007396.Spec := by
  intro n
  simp only [A187577, Nat.add_sub_cancel]

end A187577

/-! ## A187577.P4271538771506666676

`A187581(n+2)-2`
-/

namespace A187577.P4271538771506666676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187581 (n + 2) - 2

end

end A187577.P4271538771506666676

namespace A187577

/-- `A187581(n+2)-2` -/
def P4271538771506666676.Spec : Prop :=
  ∀ n, P4271538771506666676.a n = A187577 (n + 1)

end A187577

/-! ## A187577.P10368006518739366351

`∑[C(3, A284620(n+2))]`
-/

namespace A187577.P10368006518739366351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A284620 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187577.P10368006518739366351

namespace A187577

/-- `∑[C(3, A284620(n+2))]` -/
def P10368006518739366351.Spec : Prop :=
  ∀ n, (P10368006518739366351.a n : ℤ) = A187577 (n + 1)

end A187577

/-! ## A187577.P15241410713339905280

`∑[or(1, Δ[A187952(n+1)])]`
-/

namespace A187577.P15241410713339905280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187577.P15241410713339905280

namespace A187577

/-- `∑[or(1, Δ[A187952(n+1)])]` -/
def P15241410713339905280.Spec : Prop :=
  ∀ n, P15241410713339905280.a n = A187577 (n + 1)

end A187577

/-! ## A187577.P10701035696293424730

`A187952(n+2)+floor(n/2)`
-/

namespace A187577.P10701035696293424730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 2) + ⌊(n : ℚ) / 2⌋

end

end A187577.P10701035696293424730

namespace A187577

/-- `A187952(n+2)+floor(n/2)` -/
def P10701035696293424730.Spec : Prop :=
  ∀ n, P10701035696293424730.a n = A187577 (n + 1)

end A187577

/-! ## A187577.P15578090463599804820

`∑[gcd(3, record[or(n, 2*n)])]`
-/

namespace A187577.P15578090463599804820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187577.P15578090463599804820

namespace A187577

/-- `∑[gcd(3, record[or(n, 2*n)])]` -/
def P15578090463599804820.Spec : Prop :=
  ∀ n, (P15578090463599804820.a n : ℤ) = A187577 (n + 1)

end A187577

/-! ## A187577.P11722941324799109935

`A004442(A137709(n+2)-2)`
-/

namespace A187577.P11722941324799109935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A137709 (n + 2) - 2).toNat

end

end A187577.P11722941324799109935

namespace A187577

/-- `A004442(A137709(n+2)-2)` -/
def P11722941324799109935.Spec : Prop :=
  ∀ n, P11722941324799109935.a n = A187577 (n + 1)

end A187577

/-! ## A187577.P4291893568137240699

`A023444(A187581(n+2))`
-/

namespace A187577.P4291893568137240699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187581 (n + 2)).toNat

end

end A187577.P4291893568137240699

namespace A187577

/-- `A023444(A187581(n+2))` -/
def P4291893568137240699.Spec : Prop :=
  ∀ n, P4291893568137240699.a n = A187577 (n + 1)

end A187577

/-! ## A187577.P2907548332240397021

`∑[gcd(3, record[A161903(n)])]`
-/

namespace A187577.P2907548332240397021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161903 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187577.P2907548332240397021

namespace A187577

/-- `∑[gcd(3, record[A161903(n)])]` -/
def P2907548332240397021.Spec : Prop :=
  ∀ n, (P2907548332240397021.a n : ℤ) = A187577 (n + 1)

end A187577

/-! ## A187577.P7094043814797454081

`∑[A109007(record[or(n, 2*n)])]`
-/

namespace A187577.P7094043814797454081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187577.P7094043814797454081

namespace A187577

/-- `∑[A109007(record[or(n, 2*n)])]` -/
def P7094043814797454081.Spec : Prop :=
  ∀ n, P7094043814797454081.a n = A187577 (n + 1)

end A187577

/-!
# A187578: Rank transform of the sequence 3*floor(n/3); complement of A187579.

The programs for A187578, there is no canonical definition to state claims against.
-/

/-! ## A187578.P8492771300031409554

`comp[A187579(n+1)-1]+1`
-/

namespace A187578.P8492771300031409554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187579 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187578.P8492771300031409554

/-! ## A187578.P10669377981049378081

`comp[∪[A187579(n+1), A187851(n+1)²]]`
-/

namespace A187578.P10669377981049378081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187579 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187851 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187578.P10669377981049378081

/-! ## A187578.P10547846133112152023

`lt[char[A187579(n+1)]*A018111(n), n]`
-/

namespace A187578.P10547846133112152023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187579 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A018111 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A187578.P10547846133112152023

/-! ## A187578.P15951216008320887332

`lt[char[A187579(n+1)]*A093418(n), n]`
-/

namespace A187578.P15951216008320887332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187579 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A093418 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A187578.P15951216008320887332

/-! ## A187578.P9336454115046692436

`eq[char[A187579(n+1)], A151933(n)]`
-/

namespace A187578.P9336454115046692436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187579 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187578.P9336454115046692436

/-!
# A187579: Complement of A187578.

The programs for A187579, there is no canonical definition to state claims against.
-/

/-! ## A187579.P7982408339141356717

`A004483(A384192(n+1))`
-/

namespace A187579.P7982408339141356717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A384192 (n + 1)).toNat

end

end A187579.P7982408339141356717

/-! ## A187579.P10159767110619655693

`A384192(n+1)-A061347(n+1)`
-/

namespace A187579.P10159767110619655693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384192 (n + 1) - A061347 (n + 1)

end

end A187579.P10159767110619655693

/-! ## A187579.P15924727059703721277

`A061347(n+3)+A004482(A384192(n+1))`
-/

namespace A187579.P15924727059703721277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 3) + A004482 (A384192 (n + 1)).toNat

end

end A187579.P15924727059703721277

/-! ## A187579.P13123089218508904907

`A384191(A384191(n+1))+3-A061347(n+1)`
-/

namespace A187579.P13123089218508904907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384191 (A384191 (n + 1)).toNat + 3 - A061347 (n + 1)

end

end A187579.P13123089218508904907

/-! ## A187579.P3195725406807404811

`A384191(A384191(n+1)+1)+1`
-/

namespace A187579.P3195725406807404811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384191 (A384191 (n + 1) + 1).toNat + 1

end

end A187579.P3195725406807404811

/-!
# A187580: Rank transform of the sequence 2*floor(n/2); complement of A187581.

The programs for A187580, the canonical program `A187580.P2355518375788628235` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187580 has offset 1).

The definition of A187580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187580.P4055088157687819475

`comp[A187581(n+1)-1]+1`
-/

namespace A187580.P4055088157687819475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187581 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187580.P4055088157687819475

namespace A187580

/-- `comp[A187581(n+1)-1]+1` -/
def P4055088157687819475.Spec : Prop :=
  ∀ n, (P4055088157687819475.a n : ℤ) = A187580 (n + 1)

end A187580

/-! ## A187580.P2355518375788628235

`A191402(ceil(n/2))-n%2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187580

/-- `A191402(ceil(n/2))-n%2` -/
def P2355518375788628235.Spec : Prop :=
  ∀ n, P2355518375788628235.a n = A187580 (n + 1)

theorem P2355518375788628235.correct : P2355518375788628235.Spec := by
  intro n
  simp only [A187580, Nat.add_sub_cancel]

end A187580

/-! ## A187580.P17852664244308783377

`comp[A159917(n)+2*n+1]+1`
-/

namespace A187580.P17852664244308783377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 n + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187580.P17852664244308783377

namespace A187580

/-- `comp[A159917(n)+2*n+1]+1` -/
def P17852664244308783377.Spec : Prop :=
  ∀ n, (P17852664244308783377.a n : ℤ) = A187580 (n + 1)

end A187580

/-! ## A187580.P13780775872590057563

`∪[A187577(n+1), A191402(n)]`
-/

namespace A187580.P13780775872590057563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187580.P13780775872590057563

namespace A187580

/-- `∪[A187577(n+1), A191402(n)]` -/
def P13780775872590057563.Spec : Prop :=
  ∀ n, (P13780775872590057563.a n : ℤ) = A187580 (n + 1)

end A187580

/-! ## A187580.P4231642244229076183

`record[n-A014677(A123108(n))]`
-/

namespace A187580.P4231642244229076183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014677 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187580.P4231642244229076183

namespace A187580

/-- `record[n-A014677(A123108(n))]` -/
def P4231642244229076183.Spec : Prop :=
  ∀ n, P4231642244229076183.a n = A187580 (n + 1)

end A187580

/-! ## A187580.P1750468776724225767

`A065475(comp[A187577(n+1)]+1)`
-/

namespace A187580.P1750468776724225767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187577 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A187580.P1750468776724225767

namespace A187580

/-- `A065475(comp[A187577(n+1)]+1)` -/
def P1750468776724225767.Spec : Prop :=
  ∀ n, P1750468776724225767.a n = A187580 (n + 1)

end A187580

/-! ## A187580.P16308112420232836093

`record[(n+2)/A003842(A028242(n))]`
-/

namespace A187580.P16308112420232836093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A003842 (A028242 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187580.P16308112420232836093

namespace A187580

/-- `record[(n+2)/A003842(A028242(n))]` -/
def P16308112420232836093.Spec : Prop :=
  ∀ n, P16308112420232836093.a n = (A187580 (n + 1) : ℚ)

end A187580

/-! ## A187580.P7256046710193591

`∑[A108103(A095345(n+1)+n)]`
-/

namespace A187580.P7256046710193591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A095345 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187580.P7256046710193591

namespace A187580

/-- `∑[A108103(A095345(n+1)+n)]` -/
def P7256046710193591.Spec : Prop :=
  ∀ n, P7256046710193591.a n = A187580 (n + 1)

end A187580

/-!
# A187581: Complement of A187580.

The programs for A187581, the canonical program `A187581.P17957234280026754368` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187581 has offset 1).

The definition of A187581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187581.P9858793868239191623

`2*floor(∑[ϕ^((1-n)%2)])+n`
-/

namespace A187581.P9858793868239191623
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (n : ℤ)

end

end A187581.P9858793868239191623

namespace A187581

/-- `2*floor(∑[ϕ^((1-n)%2)])+n` -/
def P9858793868239191623.Spec : Prop :=
  ∀ n, P9858793868239191623.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P3069881268137700112

`2*ceil(∑[ϕ/a(n-1)]/ϕ)+n` with `a(0)=1`
-/

namespace A187581.P3069881268137700112
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / Real.goldenRatio⌉ + (n : ℤ)

end

end A187581.P3069881268137700112

namespace A187581

/-- `2*ceil(∑[ϕ/a(n-1)]/ϕ)+n` -/
def P3069881268137700112.Spec : Prop :=
  ∀ n, P3069881268137700112.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P3317384742470062887

`2*floor(∑[ϕ-a(n-1)]+ϕ)+n` with `a(0)=0, a(1)=1`
-/

namespace A187581.P3317384742470062887
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋ + (n : ℤ)

end

end A187581.P3317384742470062887

namespace A187581

/-- `2*floor(∑[ϕ-a(n-1)]+ϕ)+n` -/
def P3317384742470062887.Spec : Prop :=
  ∀ n, P3317384742470062887.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P14080909968658833920

`∪[2*floor(ϕ*(n+1))+n, floor(n*ϕ²)+2]+ceil(n/2)`
-/

namespace A187581.P14080909968658833920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) + ⌈(n : ℚ) / 2⌉

end

end A187581.P14080909968658833920

namespace A187581

/-- `∪[2*floor(ϕ*(n+1))+n, floor(n*ϕ²)+2]+ceil(n/2)` -/
def P14080909968658833920.Spec : Prop :=
  ∀ n, P14080909968658833920.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P17957234280026754368

`xor(1, A137709(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A187581

/-- `xor(1, A137709(n+1))` -/
def P17957234280026754368.Spec : Prop :=
  ∀ n, P17957234280026754368.a n = A187581 (n + 1)

theorem P17957234280026754368.correct : P17957234280026754368.Spec := by
  intro n
  simp only [A187581, Nat.add_sub_cancel]

end A187581

/-! ## A187581.P3424967053207562241

`2*A307294(n)+n`
-/

namespace A187581.P3424967053207562241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307294 n + (n : ℤ)

end

end A187581.P3424967053207562241

namespace A187581

/-- `2*A307294(n)+n` -/
def P3424967053207562241.Spec : Prop :=
  ∀ n, P3424967053207562241.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P10097280444775430286

`n%2+2*A187485(n+1)`
-/

namespace A187581.P10097280444775430286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + 2 * A187485 (n + 1)

end

end A187581.P10097280444775430286

namespace A187581

/-- `n%2+2*A187485(n+1)` -/
def P10097280444775430286.Spec : Prop :=
  ∀ n, P10097280444775430286.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P17635546649423106259

`or(1, A187580(n+1))+1+n`
-/

namespace A187581.P17635546649423106259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187580 (n + 1)) + 1 + (n : ℤ)

end

end A187581.P17635546649423106259

namespace A187581

/-- `or(1, A187580(n+1))+1+n` -/
def P17635546649423106259.Spec : Prop :=
  ∀ n, P17635546649423106259.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P14256298959776401597

`A187952(n+1)+A080513(n)`
-/

namespace A187581.P14256298959776401597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) + A080513 n

end

end A187581.P14256298959776401597

namespace A187581

/-- `A187952(n+1)+A080513(n)` -/
def P14256298959776401597.Spec : Prop :=
  ∀ n, P14256298959776401597.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P4888809138345313233

`A137709(n+1)-A033999(n)`
-/

namespace A187581.P4888809138345313233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137709 (n + 1) - A033999 n

end

end A187581.P4888809138345313233

namespace A187581

/-- `A137709(n+1)-A033999(n)` -/
def P4888809138345313233.Spec : Prop :=
  ∀ n, P4888809138345313233.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P8935901997276801081

`A187952(n+1)+A110654(n)+1`
-/

namespace A187581.P8935901997276801081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) + (A110654 n + 1)

end

end A187581.P8935901997276801081

namespace A187581

/-- `A187952(n+1)+A110654(n)+1` -/
def P8935901997276801081.Spec : Prop :=
  ∀ n, P8935901997276801081.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P4990724782393915705

`A137709(n+1)+n-A004442(n)`
-/

namespace A187581.P4990724782393915705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137709 (n + 1) + ((n : ℤ) - A004442 n)

end

end A187581.P4990724782393915705

namespace A187581

/-- `A137709(n+1)+n-A004442(n)` -/
def P4990724782393915705.Spec : Prop :=
  ∀ n, P4990724782393915705.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P10037832974517546698

`record[xor(2*(n+1), A159917(n))]`
-/

namespace A187581.P10037832974517546698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) : ℤ) (A159917 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187581.P10037832974517546698

namespace A187581

/-- `record[xor(2*(n+1), A159917(n))]` -/
def P10037832974517546698.Spec : Prop :=
  ∀ n, P10037832974517546698.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P15321392574695913998

`A137708(A137708(n+1)+1)`
-/

namespace A187581.P15321392574695913998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (A137708 (n + 1) + 1).toNat

end

end A187581.P15321392574695913998

namespace A187581

/-- `A137708(A137708(n+1)+1)` -/
def P15321392574695913998.Spec : Prop :=
  ∀ n, P15321392574695913998.a n = A187581 (n + 1)

end A187581

/-! ## A187581.P17578345662521477270

`A004442(A137709(n+1))`
-/

namespace A187581.P17578345662521477270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A137709 (n + 1)).toNat

end

end A187581.P17578345662521477270

namespace A187581

/-- `A004442(A137709(n+1))` -/
def P17578345662521477270.Spec : Prop :=
  ∀ n, P17578345662521477270.a n = A187581 (n + 1)

end A187581

/-!
# A187582: Rank transform of the sequence 3*floor(n/2); complement of A187583.

The programs for A187582, there is no canonical definition to state claims against.
-/

/-! ## A187582.P9283754420325245278

`lt[char[A187583(n+1)]*n², n]`
-/

namespace A187582.P9283754420325245278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187583 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A187582.P9283754420325245278

/-! ## A187582.P9112723036517457783

`eq[char[A187583(n+1)], A000007(n)]`
-/

namespace A187582.P9112723036517457783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187583 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187582.P9112723036517457783

/-! ## A187582.P6240753582504345284

`eq[char[A187583(n+1)], A000038(n)]`
-/

namespace A187582.P6240753582504345284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187583 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187582.P6240753582504345284

/-! ## A187582.P4314601186510617902

`∑[A108103(∑[A297395(3*(n+1))])]`
-/

namespace A187582.P4314601186510617902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187582.P4314601186510617902

/-! ## A187582.P2157563190439247206

`A286340(n+1)+A286339(A282773(n+1))`
-/

namespace A187582.P2157563190439247206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286340 (n + 1) + A286339 (A282773 (n + 1)).toNat

end

end A187582.P2157563190439247206

/-!
# A187583: Complement of A187582.

The programs for A187583, there is no canonical definition to state claims against.
-/

/-! ## A187583.P2797430657269153351

`A130823(A187582(n+1)+1)+1+n`
-/

namespace A187583.P2797430657269153351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A187582 (n + 1) + 1).toNat + 1 + (n : ℤ)

end

end A187583.P2797430657269153351

/-! ## A187583.P2370756136901626096

`eq[char[A187582(n+1)], A000007(n)]`
-/

namespace A187583.P2370756136901626096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187583.P2370756136901626096

/-! ## A187583.P8281001397648776590

`eq[char[A187582(n+1)], A000038(n)]`
-/

namespace A187583.P8281001397648776590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187583.P8281001397648776590

/-! ## A187583.P8243205780779320915

`eq[char[A187582(n+1)], A151933(n)]`
-/

namespace A187583.P8243205780779320915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187583.P8243205780779320915

/-! ## A187583.P4457054250747490795

`eq[char[A187582(n+1)], A151622(n)]`
-/

namespace A187583.P4457054250747490795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187583.P4457054250747490795

/-!
# A187587: Number of 4-step E, S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187587, there is no canonical definition to state claims against.
-/

/-! ## A187587.P10673898955065182305

`A187586(∑[n+3]+7)`
-/

namespace A187587.P10673898955065182305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187587.P10673898955065182305

/-! ## A187587.P13721898047640499247

`A187586(A055998(n+1)+7)+char[17]`
-/

namespace A187587.P13721898047640499247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A055998 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187587.P13721898047640499247

/-! ## A187587.P8855623889286895986

`∑{d}[A187586(A055998(n+1)+7), A000010(#)]`
-/

namespace A187587.P8855623889286895986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A055998 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A187587.P8855623889286895986

/-! ## A187587.P3363248460293384127

`lcm(A001221(n+1), A187586(A055998(n+1)+7))`
-/

namespace A187587.P3363248460293384127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A187586 (A055998 (n + 1) + 7).toNat)

end

end A187587.P3363248460293384127

/-! ## A187587.P13985120370500331754

`A007318(C(n, 2))*A187586(A055998(n+1)+7)`
-/

namespace A187587.P13985120370500331754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A187586 (A055998 (n + 1) + 7).toNat

end

end A187587.P13985120370500331754

/-!
# A187588: Number of 5-step E, S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187588, there is no canonical definition to state claims against.
-/

/-! ## A187588.P8382335897687100894

`A187586(∑[n+4]+11)`
-/

namespace A187588.P8382335897687100894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A187588.P8382335897687100894

/-! ## A187588.P16682404428806518106

`lcm(2, A187586(A000124(n+4)+4))`
-/

namespace A187588.P16682404428806518106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187586 (A000124 (n + 4) + 4).toNat)

end

end A187588.P16682404428806518106

/-! ## A187588.P4766033721690931290

`∑{d}[A187586(A000124(n+4)+4), A000010(#)]`
-/

namespace A187588.P4766033721690931290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000124 (n + 4) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A187588.P4766033721690931290

/-! ## A187588.P14677375580008304938

`A007318(C(2, n))*A187586(A000124(n+4)+4)`
-/

namespace A187588.P14677375580008304938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A187586 (A000124 (n + 4) + 4).toNat

end

end A187588.P14677375580008304938

/-! ## A187588.P12285935103677699299

`A000041(C(n, 47))*A187586(A000124(n+4)+4)`
-/

namespace A187588.P12285935103677699299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 47) * A187586 (A000124 (n + 4) + 4).toNat

end

end A187588.P12285935103677699299

/-!
# A187589: Number of 6-step E, S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187589, there is no canonical definition to state claims against.
-/

/-! ## A187589.P5001458973756008258

`A187586(A166136(n+4))`
-/

namespace A187589.P5001458973756008258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A166136 (n + 4)).toNat

end

end A187589.P5001458973756008258

/-! ## A187589.P7269181297974629218

`A187586(A056115(n)+21)`
-/

namespace A187589.P7269181297974629218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A056115 n + 21).toNat

end

end A187589.P7269181297974629218

/-! ## A187589.P2094596415373464659

`A187586(A000124(n+5)+5)`
-/

namespace A187589.P2094596415373464659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000124 (n + 5) + 5).toNat

end

end A187589.P2094596415373464659

/-! ## A187589.P1600831721383420214

`A187586(A000217(n+5)+6)`
-/

namespace A187589.P1600831721383420214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000217 (n + 5) + 6).toNat

end

end A187589.P1600831721383420214

/-! ## A187589.P17421656641747620522

`A187586(A055998(n+3)+9)`
-/

namespace A187589.P17421656641747620522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A055998 (n + 3) + 9).toNat

end

end A187589.P17421656641747620522

/-!
# A187590: Number of 7-step E, S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187590, there is no canonical definition to state claims against.
-/

/-! ## A187590.P12365586134624375264

`A187586(eq[11, A066657(n)])`
-/

namespace A187590.P12365586134624375264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187590.P12365586134624375264

/-! ## A187590.P14150614273467473501

`A187586(A166136(n+5)+1)`
-/

namespace A187590.P14150614273467473501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A166136 (n + 5) + 1).toNat

end

end A187590.P14150614273467473501

/-! ## A187590.P16918007297084888657

`A187586(A000217(n+6)+7)`
-/

namespace A187590.P16918007297084888657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000217 (n + 6) + 7).toNat

end

end A187590.P16918007297084888657

/-! ## A187590.P1232035690865078042

`A187586(A155212(n+2)+15)`
-/

namespace A187590.P1232035690865078042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A155212 (n + 2) + 15).toNat

end

end A187590.P1232035690865078042

/-! ## A187590.P1132837314963104378

`A187586(eq[8, A131818(n+1)])`
-/

namespace A187590.P1132837314963104378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187590.P1132837314963104378

/-!
# A187591: Number of 8-step E, S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187591, there is no canonical definition to state claims against.
-/

/-! ## A187591.P12673935196846622747

`A187586(C(n+9, 2)-n)`
-/

namespace A187591.P12673935196846622747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (Nat.choose (n + 9) 2 - n)

end

end A187591.P12673935196846622747

/-! ## A187591.P9219471926453055219

`A187586(eq[13, A066657(n)])`
-/

namespace A187591.P9219471926453055219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187591.P9219471926453055219

/-! ## A187591.P13899057160109846462

`A187586(A253145(n+6)+8)`
-/

namespace A187591.P13899057160109846462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A253145 (n + 6) + 8).toNat

end

end A187591.P13899057160109846462

/-! ## A187591.P2341296274493596966

`A187586(A000217(n+7)+8)`
-/

namespace A187591.P2341296274493596966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000217 (n + 7) + 8).toNat

end

end A187591.P2341296274493596966

/-! ## A187591.P14407917049871877581

`A187586(eq[9, A131818(n+1)])`
-/

namespace A187591.P14407917049871877581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187591.P14407917049871877581

/-!
# A187592: Number of 9-step E, S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187592, there is no canonical definition to state claims against.
-/

/-! ## A187592.P15653732413754563349

`A187586(eq[17, A066657(n)])`
-/

namespace A187592.P15653732413754563349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187592.P15653732413754563349

/-! ## A187592.P8429108669914430640

`A187586(A000096(n+7)+10)`
-/

namespace A187592.P8429108669914430640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000096 (n + 7) + 10).toNat

end

end A187592.P8429108669914430640

/-! ## A187592.P8590868067257013069

`A187586(eq[10, A131818(n+1)])`
-/

namespace A187592.P8590868067257013069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187592.P8590868067257013069

/-! ## A187592.P4945851135080054719

`A187586(A168108(n)-A321801(n))`
-/

namespace A187592.P4945851135080054719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A168108 n - A321801 n).toNat

end

end A187592.P4945851135080054719

/-!
# A187593: Number of 10-step E, S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187593, there is no canonical definition to state claims against.
-/

/-! ## A187593.P108287773444634456

`A187586(A168108(n)+10)`
-/

namespace A187593.P108287773444634456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A168108 n + 10).toNat

end

end A187593.P108287773444634456

/-! ## A187593.P3720135213131113842

`A187586(A000096(n+8)+11)`
-/

namespace A187593.P3720135213131113842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000096 (n + 8) + 11).toNat

end

end A187593.P3720135213131113842

/-! ## A187593.P15956403688255556928

`A187586(eq[10, A130270(n+1)])`
-/

namespace A187593.P15956403688255556928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187593.P15956403688255556928

/-! ## A187593.P10088587975396596161

`A187586(eq[11, A131818(n+1)])`
-/

namespace A187593.P10088587975396596161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187593.P10088587975396596161

/-! ## A187593.P5371982208648660453

`A187586(A000217(n+10)-n)`
-/

namespace A187593.P5371982208648660453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187586 (A000217 (n + 10) - (n : ℤ)).toNat

end

end A187593.P5371982208648660453

/-!
# A187595: Bernoulli-Kervaire-Milnor numbers.

The programs for A187595, there is no canonical definition to state claims against.
-/

/-! ## A187595.P14461277141707330679

`A001676(n+1)/A187717(n+1)`
-/

namespace A187595.P14461277141707330679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001676 (n + 1) : ℚ) / (A187717 (n + 1) : ℚ)

end

end A187595.P14461277141707330679

/-! ## A187595.P9963139017953686017

`A057617(A100727(2*n+1))`
-/

namespace A187595.P9963139017953686017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057617 (A100727 (2 * n + 1)).toNat

end

end A187595.P9963139017953686017

/-! ## A187595.P9016308162004350494

`A057617(A152271(3*n+1)%(n+1))`
-/

namespace A187595.P9016308162004350494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057617 (Int.tmod (A152271 (3 * n + 1)) (n + 1 : ℤ)).toNat

end

end A187595.P9016308162004350494

/-! ## A187595.P7425810022075692699

`A057617(A273943(n)^A309025(n))`
-/

namespace A187595.P7425810022075692699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057617 (SequenceMachineLib.roundAway ((A273943 n : ℚ) ^ (A309025 n : ℤ))).toNat

end

end A187595.P7425810022075692699

/-!
# A187596: Array T(m,n) read by antidiagonals: number of domino tilings of the m X n grid (m>=0, n>=0).

The programs for A187596, there is no canonical definition to state claims against.
-/

/-! ## A187596.P8934391520452388159

`A106465(n)*A189006(n)`
-/

namespace A187596.P8934391520452388159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 n * A189006 n

end

end A187596.P8934391520452388159

/-! ## A187596.P5081959630944663215

`A059841(A004247(n))*A189006(n)`
-/

namespace A187596.P5081959630944663215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004247 n).toNat * A189006 n

end

end A187596.P5081959630944663215

/-! ## A187596.P2064769024317913785

`A000035(A077028(n))*A189006(n)`
-/

namespace A187596.P2064769024317913785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077028 n).toNat * A189006 n

end

end A187596.P2064769024317913785

/-! ## A187596.P5599812366079421285

`A059841(A324351(n))*A189006(n)`
-/

namespace A187596.P5599812366079421285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A324351 n).toNat * A189006 n

end

end A187596.P5599812366079421285

/-! ## A187596.P13806794816301819616

`A000035(A003989(n+1))*A189006(n)`
-/

namespace A187596.P13806794816301819616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003989 (n + 1)).toNat * A189006 n

end

end A187596.P13806794816301819616

/-! ## A187596.P4318734825642813075

`A189006(n)%(A239264(n)+1)`
-/

namespace A187596.P4318734825642813075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189006 n) (A239264 n + 1)

end

end A187596.P4318734825642813075

/-! ## A187596.P6152623449702292392

`A000035(A036065(n))*A189006(n)`
-/

namespace A187596.P6152623449702292392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A036065 n).toNat * A189006 n

end

end A187596.P6152623449702292392

/-! ## A187596.P13845472290771832349

`A189006(n)%A052905(A155997(n))`
-/

namespace A187596.P13845472290771832349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189006 n) (A052905 (A155997 n).toNat)

end

end A187596.P13845472290771832349

/-! ## A187596.P18419380906531863001

`lcm(A106470(n), A189006(n))`
-/

namespace A187596.P18419380906531863001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106470 n) (A189006 n)

end

end A187596.P18419380906531863001

/-!
# A187597: Number of (n+2)X3 0..2 arrays with no 2X2 subblock sum equal to any diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187597, there is no canonical definition to state claims against.
-/

/-! ## A187597.P13044936470558676663

`A187600(∑[n]+1)`
-/

namespace A187597.P13044936470558676663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187597.P13044936470558676663

/-! ## A187597.P10461895884131353007

`lcm(2, A187600(A000124(n)))`
-/

namespace A187597.P10461895884131353007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187600 (A000124 n).toNat)

end

end A187597.P10461895884131353007

/-! ## A187597.P15186759211899559441

`record[A187600(A286235(n+1))]`
-/

namespace A187597.P15186759211899559441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187600 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187597.P15186759211899559441

/-! ## A187597.P1087404626014633380

`record[A010054(n)*A187600(n+1)]`
-/

namespace A187597.P1087404626014633380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A187600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187597.P1087404626014633380

/-!
# A187598: Number of (n+2)X4 0..2 arrays with no 2X2 subblock sum equal to any diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187598, there is no canonical definition to state claims against.
-/

/-! ## A187598.P958355888098029981

`A187600(∑[n+1]+2)`
-/

namespace A187598.P958355888098029981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187600 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187598.P958355888098029981

/-! ## A187598.P14911833846514641074

`record[A187600(A286235(n+1)+1)]`
-/

namespace A187598.P14911833846514641074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187600 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187598.P14911833846514641074

/-!
# A187599: Number of (n+2)X5 0..2 arrays with no 2X2 subblock sum equal to any diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187599, there is no canonical definition to state claims against.
-/

/-! ## A187599.P3406871633538791835

`A187600(∑[n+2]+4)`
-/

namespace A187599.P3406871633538791835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187600 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187599.P3406871633538791835

