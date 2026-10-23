import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C015
import Seq.B000.C019
import Seq.B001.C000
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B004.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C019

/-!
# A010670: Decimal expansion of cube root of 100.

The programs for A010670, the canonical program `A010670.P877938217777980581` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010670 has offset 1).

The definition of A010670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010670.P877938217777980581

`A018003(3*n+2)%10`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010670

/-- `A018003(3*n+2)%10` -/
def P877938217777980581.Spec : Prop :=
  ∀ n, P877938217777980581.a n = A010670 (n + 1)

theorem P877938217777980581.correct : P877938217777980581.Spec := by
  intro n
  simp only [A010670, Nat.add_sub_cancel]

end A010670

/-! ## A010670.P5977545363770984341

`A061439(3*n+2)%(-10)`
-/

namespace A010670.P5977545363770984341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061439 (3 * n + 2)) (-10)

end

end A010670.P5977545363770984341

namespace A010670

/-- `A061439(3*n+2)%(-10)` -/
def P5977545363770984341.Spec : Prop :=
  ∀ n, P5977545363770984341.a n = A010670 (n + 1)

end A010670

/-!
# A010672: A B_2 sequence: a(n) = least value such that the sequence increases and pairwise sums of distinct terms are all distinct.

The programs for A010672, there is no canonical definition to state claims against.
-/

/-! ## A010672.P17079067217524535760

`A011185(n+1)-1`
-/

namespace A010672.P17079067217524535760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (n + 1) - 1

end

end A010672.P17079067217524535760

/-! ## A010672.P10209814341150078680

`A057428(n+1)+A011185(n+1)`
-/

namespace A010672.P10209814341150078680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A011185 (n + 1)

end

end A010672.P10209814341150078680

/-! ## A010672.P9626519084845995913

`A134824(n+2)+A011185(n+1)`
-/

namespace A010672.P9626519084845995913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A011185 (n + 1)

end

end A010672.P9626519084845995913

/-! ## A010672.P4401086941701055012

`A033999(2*n+1)+A011185(n+1)`
-/

namespace A010672.P4401086941701055012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A011185 (n + 1)

end

end A010672.P4401086941701055012

/-! ## A010672.P5151446960730052957

`A099837(3*n+4)+A011185(n+1)`
-/

namespace A010672.P5151446960730052957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 4) + A011185 (n + 1)

end

end A010672.P5151446960730052957

/-! ## A010672.P17506434251479624738

`A305805(A105555(n+1))+A011185(n+1)`
-/

namespace A010672.P17506434251479624738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A105555 (n + 1)).toNat + A011185 (n + 1)

end

end A010672.P17506434251479624738

/-! ## A010672.P17381429229330470048

`A305805(A176170(n+1))+A011185(n+1)`
-/

namespace A010672.P17381429229330470048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A176170 (n + 1)).toNat + A011185 (n + 1)

end

end A010672.P17381429229330470048

/-! ## A010672.P3866668277692698720

`A305805(A020639(n+2))+A011185(n+1)`
-/

namespace A010672.P3866668277692698720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A020639 (n + 2)).toNat + A011185 (n + 1)

end

end A010672.P3866668277692698720

/-! ## A010672.P13503006094370037929

`abs(A011185(n+1)+A008683(A008578(n+2)))`
-/

namespace A010672.P13503006094370037929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011185 (n + 1) + A008683 (A008578 (n + 2)).toNat|

end

end A010672.P13503006094370037929

/-! ## A010672.P4627874809393418773

`A025582(n+1)-A133097(n+1)`
-/

namespace A010672.P4627874809393418773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) - A133097 (n + 1)

end

end A010672.P4627874809393418773

/-! ## A010672.P3874494528554233137

`A005282(n+1)-(A133097(n+1)+1)`
-/

namespace A010672.P3874494528554233137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - (A133097 (n + 1) + 1)

end

end A010672.P3874494528554233137

/-! ## A010672.P10417657516171959693

`A080432(n+1)/2-1`
-/

namespace A010672.P10417657516171959693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080432 (n + 1) : ℚ) / 2 - 1

end

end A010672.P10417657516171959693

/-! ## A010672.P11938566708619418295

`floor(A080430(n+1)/2)`
-/

namespace A010672.P11938566708619418295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080430 (n + 1) : ℚ) / 2⌋

end

end A010672.P11938566708619418295

/-! ## A010672.P12830668326150073678

`A080430(n+1)%A011185(n+1)`
-/

namespace A010672.P12830668326150073678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080430 (n + 1)) (A011185 (n + 1))

end

end A010672.P12830668326150073678

/-! ## A010672.P15443238669834827647

`A158210(A105439(n+1))+A011185(n+1)`
-/

namespace A010672.P15443238669834827647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (A105439 (n + 1)).toNat + A011185 (n + 1)

end

end A010672.P15443238669834827647

/-! ## A010672.P2632926872302857449

`A209635(A002145(n+1))+A011185(n+1)`
-/

namespace A010672.P2632926872302857449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A002145 (n + 1)).toNat + A011185 (n + 1)

end

end A010672.P2632926872302857449

/-! ## A010672.P6194038512997624329

`abs(A011185(n+1)+A008836(A002476(n+1)))`
-/

namespace A010672.P6194038512997624329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011185 (n + 1) + A008836 (A002476 (n + 1)).toNat|

end

end A010672.P6194038512997624329

/-! ## A010672.P6513897687041499131

`A209635(A106535(n+1))+A011185(n+1)`
-/

namespace A010672.P6513897687041499131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A106535 (n + 1)).toNat + A011185 (n + 1)

end

end A010672.P6513897687041499131

/-!
# A010673: Period 2: repeat [0, 2].

The programs for A010673, the canonical program `A010673.P14010432101562150871` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010673 has offset 0).

The definition of A010673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010673.P14010432101562150871

`1-(-1)^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010673

/-- `1-(-1)^n` -/
def P14010432101562150871.Spec : Prop :=
  ∀ n, P14010432101562150871.a n = A010673 n

theorem P14010432101562150871.correct : P14010432101562150871.Spec := by
  intro n
  simp only [A010673]

end A010673

/-!
# A010674: Period 2: repeat (0,3).

The programs for A010674, the canonical program `A010674.P12491932209178453535` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010674 has offset 0).

The definition of A010674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010674.P12491932209178453535

`n%2*3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010674

/-- `n%2*3` -/
def P12491932209178453535.Spec : Prop :=
  ∀ n, (P12491932209178453535.a n : ℤ) = A010674 n

theorem P12491932209178453535.correct : P12491932209178453535.Spec := by
  intro n
  simp only [A010674]

end A010674

/-!
# A010675: Period 2: repeat (0,4).

The programs for A010675, the canonical program `A010675.P10209080792224241162` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010675 has offset 0).

The definition of A010675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010675.P10209080792224241162

`n%2*4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010675

/-- `n%2*4` -/
def P10209080792224241162.Spec : Prop :=
  ∀ n, (P10209080792224241162.a n : ℤ) = A010675 n

theorem P10209080792224241162.correct : P10209080792224241162.Spec := by
  intro n
  simp only [A010675]

end A010675

/-!
# A010676: Period 2: repeat [0, 5].

The programs for A010676, the canonical program `A010676.P2438736131503534381` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010676 has offset 0).

The definition of A010676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010676.P2438736131503534381

`n%2*5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010676

/-- `n%2*5` -/
def P2438736131503534381.Spec : Prop :=
  ∀ n, (P2438736131503534381.a n : ℤ) = A010676 n

theorem P2438736131503534381.correct : P2438736131503534381.Spec := by
  intro n
  simp only [A010676]

end A010676

/-!
# A010677: Period 2: repeat (0,6).

The programs for A010677, the canonical program `A010677.P9536821273543822776` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010677 has offset 0).

The definition of A010677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010677.P9536821273543822776

`6*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010677

/-- `6*n%2` -/
def P9536821273543822776.Spec : Prop :=
  ∀ n, (P9536821273543822776.a n : ℤ) = A010677 n

theorem P9536821273543822776.correct : P9536821273543822776.Spec := by
  intro n
  simp only [A010677]

end A010677

/-!
# A010678: Period 2: repeat (0,7).

The programs for A010678, the canonical program `A010678.P14517140442740575421` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010678 has offset 0).

The definition of A010678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010678.P14517140442740575421

`n%2*7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010678

/-- `n%2*7` -/
def P14517140442740575421.Spec : Prop :=
  ∀ n, (P14517140442740575421.a n : ℤ) = A010678 n

theorem P14517140442740575421.correct : P14517140442740575421.Spec := by
  intro n
  simp only [A010678]

end A010678

/-!
# A010679: Period 2: repeat (0,8).

The programs for A010679, the canonical program `A010679.P15123709845413206040` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010679 has offset 0).

The definition of A010679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010679.P15123709845413206040

`n%2*8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010679

/-- `n%2*8` -/
def P15123709845413206040.Spec : Prop :=
  ∀ n, (P15123709845413206040.a n : ℤ) = A010679 n

theorem P15123709845413206040.correct : P15123709845413206040.Spec := by
  intro n
  simp only [A010679]

end A010679

/-!
# A010680: Decimal expansion of 1/11.

The programs for A010680, the canonical program `A010680.P10988189081170672943` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010680 has offset 0).

The definition of A010680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010680.P10988189081170672943

`9*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010680

/-- `9*n%2` -/
def P10988189081170672943.Spec : Prop :=
  ∀ n, (P10988189081170672943.a n : ℤ) = A010680 n

theorem P10988189081170672943.correct : P10988189081170672943.Spec := by
  intro n
  simp only [A010680]

end A010680

/-!
# A010681: Period 2: repeat (0,10).

The programs for A010681, the canonical program `A010681.P4918079600090998612` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010681 has offset 0).

The definition of A010681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010681.P4918079600090998612

`n%2*10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010681

/-- `n%2*10` -/
def P4918079600090998612.Spec : Prop :=
  ∀ n, (P4918079600090998612.a n : ℤ) = A010681 n

theorem P4918079600090998612.correct : P4918079600090998612.Spec := by
  intro n
  simp only [A010681]

end A010681

/-!
# A010683: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ...} and never pass below y = x. Sequence gives S(n-1,n) = number of 'Schröder' trees with n+1 leaves and root of degree 2.

The programs for A010683, the canonical program `A010683.P1762741132413524874` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010683 has offset 0).

The definition of A010683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A010683.P1762741132413524874

`(A001003(n)+A001003(n+1))/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A010683

/-- `(A001003(n)+A001003(n+1))/2` -/
def P1762741132413524874.Spec : Prop :=
  ∀ n, P1762741132413524874.a n = (A010683 n : ℚ)

end A010683

/-! ## A010683.P18333614499143532716

`A091370(∑[n]+3)`
-/

namespace A010683.P18333614499143532716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091370 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A010683.P18333614499143532716

namespace A010683

/-- `A091370(∑[n]+3)` -/
def P18333614499143532716.Spec : Prop :=
  ∀ n, P18333614499143532716.a n = A010683 n

end A010683

/-! ## A010683.P5232583666759721606

`record[A091370(n+3)]`
-/

namespace A010683.P5232583666759721606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091370 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010683.P5232583666759721606

namespace A010683

/-- `record[A091370(n+3)]` -/
def P5232583666759721606.Spec : Prop :=
  ∀ n, P5232583666759721606.a n = A010683 n

end A010683

/-! ## A010683.P9060909152406459970

`abs(Δ[A080243(n)/2])`
-/

namespace A010683.P9060909152406459970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080243 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A010683.P9060909152406459970

namespace A010683

/-- `abs(Δ[A080243(n)/2])` -/
def P9060909152406459970.Spec : Prop :=
  ∀ n, P9060909152406459970.a n = (A010683 n : ℚ)

end A010683

/-! ## A010683.P6748704327205203378

`A104219(∑[n+1]+1)`
-/

namespace A010683.P6748704327205203378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A010683.P6748704327205203378

namespace A010683

/-- `A104219(∑[n+1]+1)` -/
def P6748704327205203378.Spec : Prop :=
  ∀ n, P6748704327205203378.a n = A010683 n

end A010683

/-! ## A010683.P4096057937785470603

`A011117(∑[n+2]-1)`
-/

namespace A010683.P4096057937785470603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A010683.P4096057937785470603

namespace A010683

/-- `A011117(∑[n+2]-1)` -/
def P4096057937785470603.Spec : Prop :=
  ∀ n, P4096057937785470603.a n = A010683 n

end A010683

/-! ## A010683.P7810649538999177551

`record[A011117(and(n, A167374(n)))]`
-/

namespace A010683.P7810649538999177551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (Int.land (n : ℤ) (A167374 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010683.P7810649538999177551

namespace A010683

/-- `record[A011117(and(n, A167374(n)))]` -/
def P7810649538999177551.Spec : Prop :=
  ∀ n, P7810649538999177551.a n = A010683 n

end A010683

/-! ## A010683.P11901507158048907980

`A001003(n)+Δ[A001003(n)/2]`
-/

namespace A010683.P11901507158048907980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A010683.P11901507158048907980

namespace A010683

/-- `A001003(n)+Δ[A001003(n)/2]` -/
def P11901507158048907980.Spec : Prop :=
  ∀ n, P11901507158048907980.a n = (A010683 n : ℚ)

end A010683

/-! ## A010683.P3007610166732009688

`record[A011117(n)/A109449(n+1)]`
-/

namespace A010683.P3007610166732009688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011117 n : ℚ) / (A109449 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010683.P3007610166732009688

namespace A010683

/-- `record[A011117(n)/A109449(n+1)]` -/
def P3007610166732009688.Spec : Prop :=
  ∀ n, P3007610166732009688.a n = (A010683 n : ℚ)

end A010683

/-! ## A010683.P15548806460987821062

`record[A011117(n)/A147315(n+1)]`
-/

namespace A010683.P15548806460987821062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011117 n : ℚ) / (A147315 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010683.P15548806460987821062

namespace A010683

/-- `record[A011117(n)/A147315(n+1)]` -/
def P15548806460987821062.Spec : Prop :=
  ∀ n, P15548806460987821062.a n = (A010683 n : ℚ)

end A010683

/-!
# A010684: Period 2: repeat (1,3); offset 0.

The programs for A010684, the canonical program `A010684.P14019262024924378744` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010684 has offset 0).

The definition of A010684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010684.P14019262024924378744

`2-(-1)^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010684

/-- `2-(-1)^n` -/
def P14019262024924378744.Spec : Prop :=
  ∀ n, P14019262024924378744.a n = A010684 n

theorem P14019262024924378744.correct : P14019262024924378744.Spec := by
  intro n
  simp only [A010684]

end A010684

/-!
# A010685: Period 2: repeat (1,4).

The programs for A010685, the canonical program `A010685.P5552574089437379289` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010685 has offset 0).

The definition of A010685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010685.P5552574089437379289

`2^(1-(-1)^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010685

/-- `2^(1-(-1)^n)` -/
def P5552574089437379289.Spec : Prop :=
  ∀ n, P5552574089437379289.a n = (A010685 n : ℚ)

end A010685

/-!
# A010686: Periodic sequence: repeat [1, 5].

The programs for A010686, the canonical program `A010686.P2703131676559570526` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010686 has offset 0).

The definition of A010686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010686.P2703131676559570526

`n%2*4+1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010686

/-- `n%2*4+1` -/
def P2703131676559570526.Spec : Prop :=
  ∀ n, (P2703131676559570526.a n : ℤ) = A010686 n

theorem P2703131676559570526.correct : P2703131676559570526.Spec := by
  intro n
  simp only [A010686]

end A010686

/-!
# A010687: Repeat (1,6): Period 2.

The programs for A010687, the canonical program `A010687.P15130299772779713943` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010687 has offset 0).

The definition of A010687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010687.P15130299772779713943

`n%2*5+1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010687

/-- `n%2*5+1` -/
def P15130299772779713943.Spec : Prop :=
  ∀ n, (P15130299772779713943.a n : ℤ) = A010687 n

theorem P15130299772779713943.correct : P15130299772779713943.Spec := by
  intro n
  simp only [A010687]

end A010687

/-!
# A010688: Period 2: repeat (1,7).

The programs for A010688, the canonical program `A010688.P2548448165123842393` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010688 has offset 0).

The definition of A010688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010688.P2548448165123842393

`n%2*6+1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010688

/-- `n%2*6+1` -/
def P2548448165123842393.Spec : Prop :=
  ∀ n, (P2548448165123842393.a n : ℤ) = A010688 n

theorem P2548448165123842393.correct : P2548448165123842393.Spec := by
  intro n
  simp only [A010688]

end A010688

/-!
# A010689: Periodic sequence: Repeat 1, 8.

The programs for A010689, the canonical program `A010689.P16225935545396252333` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010689 has offset 0).

The definition of A010689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010689.P16225935545396252333

`(9-7*(-1)^n)/2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010689

/-- `(9-7*(-1)^n)/2` -/
def P16225935545396252333.Spec : Prop :=
  ∀ n, P16225935545396252333.a n = (A010689 n : ℚ)

end A010689

/-!
# A010690: Period 2: repeat (1,9).

The programs for A010690, the canonical program `A010690.P9505882223087742420` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010690 has offset 0).

The definition of A010690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010690.P9505882223087742420

`9^(n%2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010690

/-- `9^(n%2)` -/
def P9505882223087742420.Spec : Prop :=
  ∀ n, (P9505882223087742420.a n : ℤ) = A010690 n

theorem P9505882223087742420.correct : P9505882223087742420.Spec := by
  intro n
  simp only [A010690]

end A010690

/-!
# A010691: Period 2: repeat (1,10).

The programs for A010691, the canonical program `A010691.P5436998675467224727` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010691 has offset 0).

The definition of A010691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010691.P5436998675467224727

`11-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010691

/-- `11-a(n-1)` -/
def P5436998675467224727.Spec : Prop :=
  ∀ n, P5436998675467224727.a n = A010691 n

theorem P5436998675467224727.correct : P5436998675467224727.Spec := by
  intro n
  simp only [A010691]

end A010691

/-!
# A010692: Constant sequence: a(n) = 10.

The programs for A010692, the canonical program `A010692.P5054497695291166357` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010692 has offset 0).

The definition of A010692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010692.P5054497695291166357

`10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010692

/-- `10` -/
def P5054497695291166357.Spec : Prop :=
  ∀ n, (P5054497695291166357.a n : ℤ) = A010692 n

theorem P5054497695291166357.correct : P5054497695291166357.Spec := by
  intro n
  simp only [A010692]

end A010692

/-!
# A010693: Periodic sequence: Repeat 2,3.

The programs for A010693, the canonical program `A010693.P5802022890677975495` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010693 has offset 0).

The definition of A010693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010693.P5802022890677975495

`a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010693

/-- `a(n-2)` -/
def P5802022890677975495.Spec : Prop :=
  ∀ n, (P5802022890677975495.a n : ℤ) = A010693 n

theorem P5802022890677975495.correct : P5802022890677975495.Spec := by
  intro n
  simp only [A010693]

end A010693

/-!
# A010694: Period 2: repeat (2,4).

The programs for A010694, the canonical program `A010694.P1435749305303613702` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010694 has offset 0).

The definition of A010694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010694.P1435749305303613702

`a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010694

/-- `a(n-2)` -/
def P1435749305303613702.Spec : Prop :=
  ∀ n, (P1435749305303613702.a n : ℤ) = A010694 n

theorem P1435749305303613702.correct : P1435749305303613702.Spec := by
  intro n
  simp only [A010694]

end A010694

/-!
# A010695: Period 2: repeat (2,5).

The programs for A010695, the canonical program `A010695.P15614710699275228568` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010695 has offset 0).

The definition of A010695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010695.P15614710699275228568

`7-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010695

/-- `7-a(n-1)` -/
def P15614710699275228568.Spec : Prop :=
  ∀ n, P15614710699275228568.a n = A010695 n

theorem P15614710699275228568.correct : P15614710699275228568.Spec := by
  intro n
  simp only [A010695]

end A010695

/-!
# A010696: Periodic sequence: Repeat 2,6.

The programs for A010696, the canonical program `A010696.P309287587077170374` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010696 has offset 0).

The definition of A010696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010696.P309287587077170374

`2*A010684(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010696

/-- `2*A010684(n)` -/
def P309287587077170374.Spec : Prop :=
  ∀ n, P309287587077170374.a n = A010696 n

theorem P309287587077170374.correct : P309287587077170374.Spec := by
  intro n
  simp only [A010696]

end A010696

/-!
# A010697: Period 2: repeat (2,7).

The programs for A010697, the canonical program `A010697.P11616714906207237611` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010697 has offset 0).

The definition of A010697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010697.P11616714906207237611

`14/a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010697

/-- `14/a(n-1)` -/
def P11616714906207237611.Spec : Prop :=
  ∀ n, P11616714906207237611.a n = (A010697 n : ℚ)

end A010697

/-!
# A010698: Period 2: repeat (2,8).

The programs for A010698, the canonical program `A010698.P16634105967908549245` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010698 has offset 0).

The definition of A010698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010698.P16634105967908549245

`n%2*6+2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010698

/-- `n%2*6+2` -/
def P16634105967908549245.Spec : Prop :=
  ∀ n, (P16634105967908549245.a n : ℤ) = A010698 n

theorem P16634105967908549245.correct : P16634105967908549245.Spec := by
  intro n
  simp only [A010698]

end A010698

/-!
# A010699: Period 2: repeat (2,9).

The programs for A010699, the canonical program `A010699.P7545337152506326407` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010699 has offset 0).

The definition of A010699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010699.P7545337152506326407

`n%2*7+2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010699

/-- `n%2*7+2` -/
def P7545337152506326407.Spec : Prop :=
  ∀ n, (P7545337152506326407.a n : ℤ) = A010699 n

theorem P7545337152506326407.correct : P7545337152506326407.Spec := by
  intro n
  simp only [A010699]

end A010699

