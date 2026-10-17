import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.Opaque.C026

/-!
# A344600: a(n) = Sum_{k=1..n} phi(k) * (floor(n/k)^4 - floor((n-1)/k)^4).

The programs for A344600, the canonical program `A344600.P4200389095999483029` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344600 has offset 1).

The definition of A344600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344600.P4200389095999483029

`∑{d}[n+1, #*A344597((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A344600

/-- `∑{d}[n+1, #*A344597((n+1)/#)]` -/
def P4200389095999483029.Spec : Prop :=
  ∀ n, P4200389095999483029.a n = A344600 (n + 1)

theorem P4200389095999483029.correct : P4200389095999483029.Spec := by
  intro n
  simp only [A344600, Nat.add_sub_cancel]

end A344600

/-! ## A344600.P15352182708734058047

`∑{d}[n+1, A000010(#)*A005917((n+1)/#)]`
-/

namespace A344600.P15352182708734058047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A005917 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344600.P15352182708734058047

namespace A344600

/-- `∑{d}[n+1, A000010(#)*A005917((n+1)/#)]` -/
def P15352182708734058047.Spec : Prop :=
  ∀ n, P15352182708734058047.a n = A344600 (n + 1)

end A344600

/-!
# A344601: a(n) = n^2 - A344533(n).

The programs for A344601, there is no canonical definition to state claims against.
-/

/-! ## A344601.P8435237030223218054

`(n+1)²-A344533(n+1)`
-/

namespace A344601.P8435237030223218054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A344533 (n + 1)

end

end A344601.P8435237030223218054

/-! ## A344601.P15923921695921444967

`A131738(n)²%A344533(n+1)`
-/

namespace A344601.P15923921695921444967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131738 n ^ 2) (A344533 (n + 1))

end

end A344601.P15923921695921444967

/-! ## A344601.P7314560308705119628

`∑[A005408(n)]%A344533(n+1)`
-/

namespace A344601.P7314560308705119628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A344533 (n + 1))

end

end A344601.P7314560308705119628

/-! ## A344601.P14489737973440393227

`Δ[A000330(n)]%A344533(n+1)`
-/

namespace A344601.P14489737973440393227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A344533 (n + 1))

end

end A344601.P14489737973440393227

/-! ## A344601.P2623652940891939768

`A005563(n)+1-A344533(n+1)`
-/

namespace A344601.P2623652940891939768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A344533 (n + 1))

end

end A344601.P2623652940891939768

/-! ## A344601.P4203966370281183729

`A000290(n+1)%A344533(n+1)`
-/

namespace A344601.P4203966370281183729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1)) (A344533 (n + 1))

end

end A344601.P4203966370281183729

/-! ## A344601.P18437625158382527509

`A000027(n+1)²%A344533(n+1)`
-/

namespace A344601.P18437625158382527509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) ^ 2) (A344533 (n + 1))

end

end A344601.P18437625158382527509

/-! ## A344601.P12316876265472502593

`A130446(n+1)²%A344533(n+1)`
-/

namespace A344601.P12316876265472502593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130446 (n + 1) ^ 2) (A344533 (n + 1))

end

end A344601.P12316876265472502593

/-! ## A344601.P11242767996823911320

`record[A143051(n+1)]%A344533(n+1)`
-/

namespace A344601.P11242767996823911320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A344533 (n + 1))

end

end A344601.P11242767996823911320

/-! ## A344601.P1293819644044497079

`∑[n+1]+A000217(n)-A344533(n+1)`
-/

namespace A344601.P1293819644044497079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000217 n - A344533 (n + 1))

end

end A344601.P1293819644044497079

/-!
# A344602: Integers whose Hamming weight is triangular.

The programs for A344602, the canonical program `A344602.P4017687423561774190` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344602 has offset 1).

The definition of A344602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344602.P4017687423561774190

`lt[A002262(log2(A001316(n))), 1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344602

/-- `lt[A002262(log2(A001316(n))), 1]` -/
def P4017687423561774190.Spec : Prop :=
  ∀ n, (P4017687423561774190.a n : ℤ) = A344602 (n + 1)

theorem P4017687423561774190.correct : P4017687423561774190.Spec := by
  intro n
  simp only [A344602, Nat.add_sub_cancel]

end A344602

/-! ## A344602.P11837486840699711158

`lt[A063007(log2(A001316(n))), 2]`
-/

namespace A344602.P11837486840699711158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344602.P11837486840699711158

namespace A344602

/-- `lt[A063007(log2(A001316(n))), 2]` -/
def P11837486840699711158.Spec : Prop :=
  ∀ n, (P11837486840699711158.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P1081484591752126049

`lt[A124927(log2(A001316(n))), 2]`
-/

namespace A344602.P1081484591752126049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344602.P1081484591752126049

namespace A344602

/-- `lt[A124927(log2(A001316(n))), 2]` -/
def P1081484591752126049.Spec : Prop :=
  ∀ n, (P1081484591752126049.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P7222671886553860037

`lt[A134060(log2(A001316(n))), 3]`
-/

namespace A344602.P7222671886553860037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134060 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344602.P7222671886553860037

namespace A344602

/-- `lt[A134060(log2(A001316(n))), 3]` -/
def P7222671886553860037.Spec : Prop :=
  ∀ n, (P7222671886553860037.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P3240000975229541495

`eq[1, A152842(2*n-A005187(n))]`
-/

namespace A344602.P3240000975229541495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P3240000975229541495

namespace A344602

/-- `eq[1, A152842(2*n-A005187(n))]` -/
def P3240000975229541495.Spec : Prop :=
  ∀ n, (P3240000975229541495.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P18052347726101590775

`eq[1, A152842(n-A005187(n)+n)]`
-/

namespace A344602.P18052347726101590775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P18052347726101590775

namespace A344602

/-- `eq[1, A152842(n-A005187(n)+n)]` -/
def P18052347726101590775.Spec : Prop :=
  ∀ n, (P18052347726101590775.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P1840786295968561817

`eq[1, A008949(A000120(n))]`
-/

namespace A344602.P1840786295968561817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P1840786295968561817

namespace A344602

/-- `eq[1, A008949(A000120(n))]` -/
def P1840786295968561817.Spec : Prop :=
  ∀ n, (P1840786295968561817.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P7736319705396371279

`eq[1, A002260(A000120(n)+1)]`
-/

namespace A344602.P7736319705396371279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P7736319705396371279

namespace A344602

/-- `eq[1, A002260(A000120(n)+1)]` -/
def P7736319705396371279.Spec : Prop :=
  ∀ n, (P7736319705396371279.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P6794353721097506676

`eq[2, A010026(A000120(n)+2)]`
-/

namespace A344602.P6794353721097506676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A000120 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P6794353721097506676

namespace A344602

/-- `eq[2, A010026(A000120(n)+2)]` -/
def P6794353721097506676.Spec : Prop :=
  ∀ n, (P6794353721097506676.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P10680841528280241636

`eq[1, A142977(n-A011371(n))]`
-/

namespace A344602.P10680841528280241636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142977 ((n : ℤ) - A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P10680841528280241636

namespace A344602

/-- `eq[1, A142977(n-A011371(n))]` -/
def P10680841528280241636.Spec : Prop :=
  ∀ n, (P10680841528280241636.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P8660530421147137631

`eq[1, A342134(n-A011371(n))]`
-/

namespace A344602.P8660530421147137631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342134 ((n : ℤ) - A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P8660530421147137631

namespace A344602

/-- `eq[1, A342134(n-A011371(n))]` -/
def P8660530421147137631.Spec : Prop :=
  ∀ n, (P8660530421147137631.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P3195745387407390879

`record[n/A071948(n-A011371(n))]`
-/

namespace A344602.P3195745387407390879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A071948 ((n : ℤ) - A011371 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344602.P3195745387407390879

namespace A344602

/-- `record[n/A071948(n-A011371(n))]` -/
def P3195745387407390879.Spec : Prop :=
  ∀ n, P3195745387407390879.a n = (A344602 (n + 1) : ℚ)

end A344602

/-! ## A344602.P5449218939564274369

`eq[1, A300649(A000120(n)²)]`
-/

namespace A344602.P5449218939564274369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300649 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P5449218939564274369

namespace A344602

/-- `eq[1, A300649(A000120(n)²)]` -/
def P5449218939564274369.Spec : Prop :=
  ∀ n, (P5449218939564274369.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P7985217789327159581

`eq[1, A339822(A001316(n)²)]`
-/

namespace A344602.P7985217789327159581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339822 (A001316 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344602.P7985217789327159581

namespace A344602

/-- `eq[1, A339822(A001316(n)²)]` -/
def P7985217789327159581.Spec : Prop :=
  ∀ n, (P7985217789327159581.a n : ℤ) = A344602 (n + 1)

end A344602

/-! ## A344602.P2912283369872187433

`lt[A100862(A000120(n)²), 2]`
-/

namespace A344602.P2912283369872187433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 (A000120 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344602.P2912283369872187433

namespace A344602

/-- `lt[A100862(A000120(n)²), 2]` -/
def P2912283369872187433.Spec : Prop :=
  ∀ n, (P2912283369872187433.a n : ℤ) = A344602 (n + 1)

end A344602

/-!
# A344603: Triangular numbers whose Hamming weight is also triangular.

The programs for A344603, there is no canonical definition to state claims against.
-/

/-! ## A344603.P5817406207187864163

`∩[A344602(n+1), A000217(n)]`
-/

namespace A344603.P5817406207187864163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344603.P5817406207187864163

/-! ## A344603.P9559495720290714163

`eq[A008949(A000120(n)), A008949(n)]`
-/

namespace A344603.P9559495720290714163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344603.P9559495720290714163

/-! ## A344603.P13910697877265867396

`eq[A010054(A000120(n)), A013609(n)]`
-/

namespace A344603.P13910697877265867396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344603.P13910697877265867396

/-! ## A344603.P16698760232546730924

`eq[A013610(A000120(n)), A013610(n)]`
-/

namespace A344603.P16698760232546730924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344603.P16698760232546730924

/-! ## A344603.P1814653710491124388

`eq[A013611(A000120(n)), A013611(n)]`
-/

namespace A344603.P1814653710491124388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344603.P1814653710491124388

/-!
# A344604: Number of alternating compositions of n, including twins (x,x).

The programs for A344604, there is no canonical definition to state claims against.
-/

/-! ## A344604.P11305656694881461361

`A025047(n)+char[2*(n+1)]`
-/

namespace A344604.P11305656694881461361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A344604.P11305656694881461361

/-! ## A344604.P11666919403797288394

`A040001(n)+A025047(n)-1`
-/

namespace A344604.P11666919403797288394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + (A025047 n - 1)

end

end A344604.P11666919403797288394

/-! ## A344604.P15681507663249834463

`A025047(n)+1-∑[A105812(n)]`
-/

namespace A344604.P15681507663249834463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344604.P15681507663249834463

/-! ## A344604.P16725000375781944157

`A025047(n)-char[A004273(n)]+1`
-/

namespace A344604.P16725000375781944157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

end

end A344604.P16725000375781944157

/-! ## A344604.P3002483294036204185

`A025047(n)+1-A135528(n+1)`
-/

namespace A344604.P3002483294036204185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + 1 - A135528 (n + 1)

end

end A344604.P3002483294036204185

/-! ## A344604.P1850369433559540310

`A105812(∑[A105812(n)])+A025047(n)`
-/

namespace A344604.P1850369433559540310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A025047 n

end

end A344604.P1850369433559540310

/-! ## A344604.P6058033638283826144

`A011782(n)-A348377(n)`
-/

namespace A344604.P6058033638283826144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A348377 n

end

end A344604.P6058033638283826144

/-!
# A344605: Number of alternating patterns of length n, including pairs (x,x).

The programs for A344605, there is no canonical definition to state claims against.
-/

/-! ## A344605.P15877492672811512111

`A345194(n)+char[2]`
-/

namespace A344605.P15877492672811512111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345194 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A344605.P15877492672811512111

/-! ## A344605.P2828858654585292097

`or(Δ[A136548(n+1)], A345194(n))`
-/

namespace A344605.P2828858654585292097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A345194 n)

end

end A344605.P2828858654585292097

/-! ## A344605.P13450988136514066972

`or(char[2*A022109(n)], A345194(n))`
-/

namespace A344605.P13450988136514066972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022109 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A345194 n)

end

end A344605.P13450988136514066972

/-! ## A344605.P14679969277053550949

`A346459(A284694(n+3))+A345194(n)`
-/

namespace A344605.P14679969277053550949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346459 (A284694 (n + 3)).toNat + A345194 n

end

end A344605.P14679969277053550949

/-! ## A344605.P7783938552188982357

`or(A010052(A022856(n+1)), A345194(n))`
-/

namespace A344605.P7783938552188982357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A022856 (n + 1)).toNat) (A345194 n)

end

end A344605.P7783938552188982357

/-!
# A344606: Number of alternating permutations of the prime factors of n, counting multiplicity, including twins (x,x).

The programs for A344606, there is no canonical definition to state claims against.
-/

/-! ## A344606.P1321938911806834516

`A345164(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A344606.P1321938911806834516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A344606.P1321938911806834516

/-! ## A344606.P8543644778465481445

`A345164((n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A344606.P8543644778465481445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))).toNat

end

end A344606.P8543644778465481445

/-! ## A344606.P1149627117435570102

`A345164(A048671(n+1))`
-/

namespace A344606.P1149627117435570102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A048671 (n + 1)).toNat

end

end A344606.P1149627117435570102

/-! ## A344606.P6130178441061388978

`A318809(n+1)+A231122(n+1)`
-/

namespace A344606.P6130178441061388978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1) + A231122 (n + 1)

end

end A344606.P6130178441061388978

/-! ## A344606.P3722862945226628920

`A345164((n+1)/A014963(n+1))`
-/

namespace A344606.P3722862945226628920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A344606.P3722862945226628920

/-! ## A344606.P4412121295607680212

`A345164((n+1)/A056926(n+1))`
-/

namespace A344606.P4412121295607680212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056926 (n + 1) : ℚ))).toNat

end

end A344606.P4412121295607680212

/-! ## A344606.P6169989669087764718

`A345164(gcd(n+1, A007956(n+1)))`
-/

namespace A344606.P6169989669087764718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (Int.gcd (n + 1 : ℤ) (A007956 (n + 1)))

end

end A344606.P6169989669087764718

/-! ## A344606.P15940933072044822100

`gcd(A230594(n+1), A345164(n+1))`
-/

namespace A344606.P15940933072044822100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230594 (n + 1)) (A345164 (n + 1))

end

end A344606.P15940933072044822100

/-! ## A344606.P13830940791211767203

`A345164(n+1)+char[A084920(n+1)]`
-/

namespace A344606.P13830940791211767203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344606.P13830940791211767203

/-! ## A344606.P2399750615623439223

`A345164(n+1)^A001221(A045778(n+1))`
-/

namespace A344606.P2399750615623439223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345164 (n + 1) : ℚ) ^ (A001221 (A045778 (n + 1)).toNat : ℤ)

end

end A344606.P2399750615623439223

/-!
# A344607: Number of integer partitions of n with reverse-alternating sum >= 0.

The programs for A344607, there is no canonical definition to state claims against.
-/

/-! ## A344607.P11135840632578684608

`A035363(n)+A027193(n)`
-/

namespace A344607.P11135840632578684608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + A027193 n

end

end A344607.P11135840632578684608

/-! ## A344607.P16951441171794456359

`A347449(n)+A119620(n)`
-/

namespace A344607.P16951441171794456359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347449 n + A119620 n

end

end A344607.P16951441171794456359

/-! ## A344607.P7414577133045540386

`A000041(n)-A344608(n)`
-/

namespace A344607.P7414577133045540386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A344608 n

end

end A344607.P7414577133045540386

/-! ## A344607.P17462124298962034624

`A213598(n)-A344608(n)`
-/

namespace A344607.P17462124298962034624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A344608 n

end

end A344607.P17462124298962034624

/-! ## A344607.P2312474683099866214

`A103919(∑[n])+A027193(n)`
-/

namespace A344607.P2312474683099866214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f1 j) + A027193 n

end

end A344607.P2312474683099866214

/-!
# A344608: Number of integer partitions of n with reverse-alternating sum < 0.

The programs for A344608, there is no canonical definition to state claims against.
-/

/-! ## A344608.P3767518605587662645

`A027187(n)-A035363(n)`
-/

namespace A344608.P3767518605587662645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A035363 n

end

end A344608.P3767518605587662645

/-! ## A344608.P6854486083115469072

`A086543(n)-A027193(n)`
-/

namespace A344608.P6854486083115469072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n - A027193 n

end

end A344608.P6854486083115469072

/-! ## A344608.P17388371651388059845

`A347443(n)-A119620(n)`
-/

namespace A344608.P17388371651388059845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347443 n - A119620 n

end

end A344608.P17388371651388059845

/-! ## A344608.P4189964752633544578

`A027187(n)-A103919(∑[n])`
-/

namespace A344608.P4189964752633544578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A103919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344608.P4189964752633544578

/-! ## A344608.P8621945998588682497

`A027187(n)-A035444(2*n)`
-/

namespace A344608.P8621945998588682497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A035444 (2 * n)

end

end A344608.P8621945998588682497

/-! ## A344608.P2750149886265978605

`A086543(n)-∑{d}[n, A339398(#)]`
-/

namespace A344608.P2750149886265978605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n - ∑ d ∈ Nat.divisors (f1 n), A339398 d

end

end A344608.P2750149886265978605

/-! ## A344608.P2967828499701692003

`A027187(n)-A000041(floor(n/2))*and(1, n+1)`
-/

namespace A344608.P2967828499701692003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A000041 ⌊(n : ℚ) / 2⌋.toNat * (Nat.land 1 (n + 1) : ℤ)

end

end A344608.P2967828499701692003

/-! ## A344608.P18181887008589727888

`A086543(n)%A027193(A028310(n))`
-/

namespace A344608.P18181887008589727888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086543 n) (A027193 (A028310 n).toNat)

end

end A344608.P18181887008589727888

/-! ## A344608.P7110333033781248301

`A000041(n)-(A035363(n)+A027193(n))`
-/

namespace A344608.P7110333033781248301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A035363 n + A027193 n)

end

end A344608.P7110333033781248301

/-! ## A344608.P16003870036820223988

`A027187(n+1)+A027187(n)-A347443(n+1)`
-/

namespace A344608.P16003870036820223988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (n + 1) + (A027187 n - A347443 (n + 1))

end

end A344608.P16003870036820223988

/-!
# A344609: Numbers whose alternating sum of prime indices is >= 0.

The programs for A344609, the canonical program `A344609.P17132378078969577972` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344609 has offset 1).

The definition of A344609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344609.P17132378078969577972

`eq[0, A353669(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344609

/-- `eq[0, A353669(n+1)]+1` -/
def P17132378078969577972.Spec : Prop :=
  ∀ n, (P17132378078969577972.a n : ℤ) = A344609 (n + 1)

theorem P17132378078969577972.correct : P17132378078969577972.Spec := by
  intro n
  simp only [A344609, Nat.add_sub_cancel]

end A344609

/-! ## A344609.P1910029709032304703

`lt[-1, A344617(n+1)]+1`
-/

namespace A344609.P1910029709032304703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344609.P1910029709032304703

namespace A344609

/-- `lt[-1, A344617(n+1)]+1` -/
def P1910029709032304703.Spec : Prop :=
  ∀ n, (P1910029709032304703.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P12027777244514380245

`comp[A119899(n+1)-1]+1`
-/

namespace A344609.P12027777244514380245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344609.P12027777244514380245

namespace A344609

/-- `comp[A119899(n+1)-1]+1` -/
def P12027777244514380245.Spec : Prop :=
  ∀ n, (P12027777244514380245.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P10180865127449100429

`∪[(n+1)², A026422(n+1)]`
-/

namespace A344609.P10180865127449100429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344609.P10180865127449100429

namespace A344609

/-- `∪[(n+1)², A026422(n+1)]` -/
def P10180865127449100429.Spec : Prop :=
  ∀ n, (P10180865127449100429.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P14128102558179193795

`∪[(n+1)², A026424(n+1)]`
-/

namespace A344609.P14128102558179193795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344609.P14128102558179193795

namespace A344609

/-- `∪[(n+1)², A026424(n+1)]` -/
def P14128102558179193795.Spec : Prop :=
  ∀ n, (P14128102558179193795.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P3351793102686344790

`∪[A026422(n+1), A028982(n+1)]`
-/

namespace A344609.P3351793102686344790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344609.P3351793102686344790

namespace A344609

/-- `∪[A026422(n+1), A028982(n+1)]` -/
def P3351793102686344790.Spec : Prop :=
  ∀ n, (P3351793102686344790.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P1559274622274769100

`∪[A026424(n+1), A028982(n+1)]`
-/

namespace A344609.P1559274622274769100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344609.P1559274622274769100

namespace A344609

/-- `∪[A026424(n+1), A028982(n+1)]` -/
def P1559274622274769100.Spec : Prop :=
  ∀ n, (P1559274622274769100.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P7569847968541214440

`lt[-1, A316524(n+1)]+1`
-/

namespace A344609.P7569847968541214440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344609.P7569847968541214440

namespace A344609

/-- `lt[-1, A316524(n+1)]+1` -/
def P7569847968541214440.Spec : Prop :=
  ∀ n, (P7569847968541214440.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P16779675990924607550

`lt[-1, A071321(n+1)]+1`
-/

namespace A344609.P16779675990924607550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344609.P16779675990924607550

namespace A344609

/-- `lt[-1, A071321(n+1)]+1` -/
def P16779675990924607550.Spec : Prop :=
  ∀ n, (P16779675990924607550.a n : ℤ) = A344609 (n + 1)

end A344609

/-! ## A344609.P3594530836349539257

`eq[1, A081707(n+1)%2]+1`
-/

namespace A344609.P3594530836349539257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081707 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344609.P3594530836349539257

namespace A344609

/-- `eq[1, A081707(n+1)%2]+1` -/
def P3594530836349539257.Spec : Prop :=
  ∀ n, (P3594530836349539257.a n : ℤ) = A344609 (n + 1)

end A344609

/-!
# A344610: Triangle read by rows where T(n,k) is the number of integer partitions of 2*n with reverse-alternating sum 2*k.

The programs for A344610, there is no canonical definition to state claims against.
-/

/-! ## A344610.P838905279039910148

`A344612(A292564(n)+A003056(n))`
-/

namespace A344610.P838905279039910148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A292564 n + A003056 n).toNat

end

end A344610.P838905279039910148

/-! ## A344610.P3349671232300399119

`A344612(A025581(n)+eq[0, A155998(n)])`
-/

namespace A344610.P3349671232300399119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A025581 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A344610.P3349671232300399119

/-! ## A344610.P17927022670657069149

`A373503(A343168(n+2))`
-/

namespace A344610.P17927022670657069149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373503 (A343168 (n + 2)).toNat

end

end A344610.P17927022670657069149

/-! ## A344610.P10960281492161360716

`or(A010060(n), A117707(A123490(n)))`
-/

namespace A344610.P10960281492161360716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 n) (A117707 (A123490 n).toNat)

end

end A344610.P10960281492161360716

/-! ## A344610.P6325282506999006834

`or(A117707(A123490(n)), A344649(n))`
-/

namespace A344610.P6325282506999006834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117707 (A123490 n).toNat) (A344649 n)

end

end A344610.P6325282506999006834

/-!
# A344611: Number of integer partitions of 2*n with reverse-alternating sum >= 0.

The programs for A344611, there is no canonical definition to state claims against.
-/

/-! ## A344611.P16224951222073430241

`A236559(n)+A000041(n)`
-/

namespace A344611.P16224951222073430241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 n + A000041 n

end

end A344611.P16224951222073430241

/-! ## A344611.P13946286408920336919

`A236559(n)+∑[A002865(n)]`
-/

namespace A344611.P13946286408920336919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344611.P13946286408920336919

/-! ## A344611.P6994281973863351441

`A000701(2*n)+A000041(n)`
-/

namespace A344611.P6994281973863351441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n) + A000041 n

end

end A344611.P6994281973863351441

/-! ## A344611.P3384011127060517324

`A027193(2*n)+A000041(n)`
-/

namespace A344611.P3384011127060517324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * n) + A000041 n

end

end A344611.P3384011127060517324

/-! ## A344611.P744944303282096633

`A236559(n)+A119620(2*n)`
-/

namespace A344611.P744944303282096633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 n + A119620 (2 * n)

end

end A344611.P744944303282096633

/-! ## A344611.P6899828705137850355

`A119620(2*n)+A027193(2*n)`
-/

namespace A344611.P6899828705137850355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) + A027193 (2 * n)

end

end A344611.P6899828705137850355

/-! ## A344611.P880937994451375104

`A027187(n)+A236559(n)+A027193(n)`
-/

namespace A344611.P880937994451375104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A236559 n + A027193 n)

end

end A344611.P880937994451375104

/-! ## A344611.P534283174672969590

`A100824(2*n)+A027193(2*n)`
-/

namespace A344611.P534283174672969590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) + A027193 (2 * n)

end

end A344611.P534283174672969590

/-! ## A344611.P692547359146299234

`A236559(n)+A168019(∑[n])`
-/

namespace A344611.P692547359146299234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 n + A168019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344611.P692547359146299234

/-!
# A344612: Triangle read by rows where T(n,k) is the number of integer partitions of n with reverse-alternating sum k ranging from -n to n in steps of 2.

The programs for A344612, there is no canonical definition to state claims against.
-/

/-! ## A344612.P18427458092607563617

`floor(sqrt(A136868(n)+A103452(n)))`
-/

namespace A344612.P18427458092607563617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A136868 n + A103452 n)

end

end A344612.P18427458092607563617

/-! ## A344612.P3303245018076072038

`A000196(A136868(n)+A068344(n))`
-/

namespace A344612.P3303245018076072038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A136868 n + A068344 n).toNat

end

end A344612.P3303245018076072038

/-! ## A344612.P17812140116740946238

`A000196(A136868(n)+A103452(n))`
-/

namespace A344612.P17812140116740946238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A136868 n + A103452 n).toNat

end

end A344612.P17812140116740946238

/-! ## A344612.P7568368328113990177

`A000120(A329860(n)%A262219(3*(n+2)))`
-/

namespace A344612.P7568368328113990177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A329860 n) (A262219 (3 * (n + 2)))).toNat

end

end A344612.P7568368328113990177

/-! ## A344612.P13501876643321218697

`A287170(C(A007918(n), A244925(n+1)))`
-/

namespace A344612.P13501876643321218697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (Nat.choose (A007918 n).toNat (A244925 (n + 1)).toNat)

end

end A344612.P13501876643321218697

/-!
# A344613: Number of rooted binary trees (in which all inner nodes have precisely two children) with n leaves and with maximal number of cherries (i.e., maximal number of pendant subtrees with two leaves).

The programs for A344613, there is no canonical definition to state claims against.
-/

/-! ## A344613.P7325991700511695017

`A375120(A072946(n))`
-/

namespace A344613.P7325991700511695017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375120 (A072946 n).toNat

end

end A344613.P7325991700511695017

/-! ## A344613.P2533752421415293872

`A375120(A162255(n+1))`
-/

namespace A344613.P2533752421415293872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375120 (A162255 (n + 1)).toNat

end

end A344613.P2533752421415293872

/-! ## A344613.P10001863136354642597

`A375120(A164073(n+2))`
-/

namespace A344613.P10001863136354642597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375120 (A164073 (n + 2)).toNat

end

end A344613.P10001863136354642597

/-! ## A344613.P10319658524044087303

`A375120(A162396(n+1))`
-/

namespace A344613.P10319658524044087303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375120 (A162396 (n + 1)).toNat

end

end A344613.P10319658524044087303

/-! ## A344613.P18213664889700453340

`A375120(A038754(n+1))`
-/

namespace A344613.P18213664889700453340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375120 (A038754 (n + 1)).toNat

end

end A344613.P18213664889700453340

/-!
# A344614: Number of compositions of n with no adjacent triples (..., x, y, z, ...) where x < y < z or x > y > z.

The programs for A344614, there is no canonical definition to state claims against.
-/

/-! ## A344614.P6838610826577064457

`A054846(A193918(∑[n]))`
-/

namespace A344614.P6838610826577064457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A193918 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344614.P6838610826577064457

/-! ## A344614.P7025516289766752206

`A100196(A064831(n)+1)`
-/

namespace A344614.P7025516289766752206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A064831 n + 1).toNat

end

end A344614.P7025516289766752206

/-! ## A344614.P4938242619229447492

`A100196(A166516(n+1))`
-/

namespace A344614.P4938242619229447492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A166516 (n + 1)).toNat

end

end A344614.P4938242619229447492

/-! ## A344614.P17110425137547510458

`A100196(A245306(n+1))`
-/

namespace A344614.P17110425137547510458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A245306 (n + 1)).toNat

end

end A344614.P17110425137547510458

/-! ## A344614.P935760743916351324

`A100196(A000045(n+1)²+1)`
-/

namespace A344614.P935760743916351324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000045 (n + 1) ^ 2 + 1).toNat

end

end A344614.P935760743916351324

/-!
# A344615: Number of compositions of n with no adjacent triples (..., x, y, z, ...) where x <= y <= z.

The programs for A344615, there is no canonical definition to state claims against.
-/

/-! ## A344615.P17764734509151210174

`A000006(A300660(n)+A257104(n))`
-/

namespace A344615.P17764734509151210174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A300660 n + A257104 n).toNat

end

end A344615.P17764734509151210174

/-! ## A344615.P3099684186873110195

`A071860(A394939(n+1))`
-/

namespace A344615.P3099684186873110195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A394939 (n + 1)).toNat

end

end A344615.P3099684186873110195

/-! ## A344615.P4678324734882136898

`A000267(A000107(n)-A306200(n))`
-/

namespace A344615.P4678324734882136898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A000107 n - A306200 n).toNat

end

end A344615.P4678324734882136898

/-! ## A344615.P8346504382578365778

`A282583(n)-A089868(A345195(n))`
-/

namespace A344615.P8346504382578365778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282583 n - A089868 (A345195 n).toNat

end

end A344615.P8346504382578365778

/-! ## A344615.P17929550161437947194

`A172471(A024998(n+1)+A001590(n))`
-/

namespace A344615.P17929550161437947194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A024998 (n + 1) + A001590 n).toNat

end

end A344615.P17929550161437947194

/-!
# A344616: Alternating sum of the integer partition with Heinz number n.

The programs for A344616, the canonical program `A344616.P6297788787004705162` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344616 has offset 1).

The definition of A344616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344616.P15330917117256432721

`abs(A316524(n+1))`
-/

namespace A344616.P15330917117256432721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)|

end

end A344616.P15330917117256432721

namespace A344616

/-- `abs(A316524(n+1))` -/
def P15330917117256432721.Spec : Prop :=
  ∀ n, P15330917117256432721.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P16022238901783756721

`lcm(A033999(n), A316524(n+1))`
-/

namespace A344616.P16022238901783756721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316524 (n + 1))

end

end A344616.P16022238901783756721

namespace A344616

/-- `lcm(A033999(n), A316524(n+1))` -/
def P16022238901783756721.Spec : Prop :=
  ∀ n, (P16022238901783756721.a n : ℤ) = A344616 (n + 1)

end A344616

/-! ## A344616.P11141163402064538505

`A316524(n+1)*A344617(n+1)`
-/

namespace A344616.P11141163402064538505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1) * A344617 (n + 1)

end

end A344616.P11141163402064538505

namespace A344616

/-- `A316524(n+1)*A344617(n+1)` -/
def P11141163402064538505.Spec : Prop :=
  ∀ n, P11141163402064538505.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P9291986862147996607

`gcd(A049084(n+1), A316524(n+1))`
-/

namespace A344616.P9291986862147996607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (n + 1)) (A316524 (n + 1))

end

end A344616.P9291986862147996607

namespace A344616

/-- `gcd(A049084(n+1), A316524(n+1))` -/
def P9291986862147996607.Spec : Prop :=
  ∀ n, (P9291986862147996607.a n : ℤ) = A344616 (n + 1)

end A344616

/-! ## A344616.P2717050869480192055

`A056239(n+1)-2*A346700(n+1)`
-/

namespace A344616.P2717050869480192055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - 2 * A346700 (n + 1)

end

end A344616.P2717050869480192055

namespace A344616

/-- `A056239(n+1)-2*A346700(n+1)` -/
def P2717050869480192055.Spec : Prop :=
  ∀ n, P2717050869480192055.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P15088701304815637057

`A056239(n+1)-A005843(A346700(n+1))`
-/

namespace A344616.P15088701304815637057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A005843 (A346700 (n + 1)).toNat

end

end A344616.P15088701304815637057

namespace A344616

/-- `A056239(n+1)-A005843(A346700(n+1))` -/
def P15088701304815637057.Spec : Prop :=
  ∀ n, P15088701304815637057.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P6297788787004705162

`A056239(n+1)-A056239(A329888(n+1)²)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A344616

/-- `A056239(n+1)-A056239(A329888(n+1)²)` -/
def P6297788787004705162.Spec : Prop :=
  ∀ n, P6297788787004705162.a n = A344616 (n + 1)

theorem P6297788787004705162.correct : P6297788787004705162.Spec := by
  intro n
  simp only [A344616, Nat.add_sub_cancel]

end A344616

/-! ## A344616.P2881095276643982346

`gcd(1-A316524(2*n+2), A002483(2*n))`
-/

namespace A344616.P2881095276643982346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A316524 (2 * n + 2)) (A002483 (2 * n))

end

end A344616.P2881095276643982346

namespace A344616

/-- `gcd(1-A316524(2*n+2), A002483(2*n))` -/
def P2881095276643982346.Spec : Prop :=
  ∀ n, (P2881095276643982346.a n : ℤ) = A344616 (n + 1)

end A344616

/-! ## A344616.P3451465918896976718

`A008836(2*(n+1))*A316524(n+1)`
-/

namespace A344616.P3451465918896976718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A316524 (n + 1)

end

end A344616.P3451465918896976718

namespace A344616

/-- `A008836(2*(n+1))*A316524(n+1)` -/
def P3451465918896976718.Spec : Prop :=
  ∀ n, P3451465918896976718.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P13847634629271132491

`A056239(n+1)-2*A056239(A330690(n+1))`
-/

namespace A344616.P13847634629271132491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - 2 * A056239 (A330690 (n + 1)).toNat

end

end A344616.P13847634629271132491

namespace A344616

/-- `A056239(n+1)-2*A056239(A330690(n+1))` -/
def P13847634629271132491.Spec : Prop :=
  ∀ n, P13847634629271132491.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P9237083696681601440

`A257991(A322865(n+1))+A241917(n+1)`
-/

namespace A344616.P9237083696681601440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A322865 (n + 1)).toNat + A241917 (n + 1)

end

end A344616.P9237083696681601440

namespace A344616

/-- `A257991(A322865(n+1))+A241917(n+1)` -/
def P9237083696681601440.Spec : Prop :=
  ∀ n, P9237083696681601440.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P6162550984085613992

`A061395(n+1)-A257992(A322865(n+1))`
-/

namespace A344616.P6162550984085613992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A257992 (A322865 (n + 1)).toNat

end

end A344616.P6162550984085613992

namespace A344616

/-- `A061395(n+1)-A257992(A322865(n+1))` -/
def P6162550984085613992.Spec : Prop :=
  ∀ n, P6162550984085613992.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P1610131876749731869

`A056239(n+1)-A056239(A330690(n+1)²)`
-/

namespace A344616.P1610131876749731869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A330690 (n + 1) ^ 2).toNat

end

end A344616.P1610131876749731869

namespace A344616

/-- `A056239(n+1)-A056239(A330690(n+1)²)` -/
def P1610131876749731869.Spec : Prop :=
  ∀ n, P1610131876749731869.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P12341164425862685000

`A241917(n+1)+A162641(A331188(n+1))`
-/

namespace A344616.P12341164425862685000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (n + 1) + A162641 (A331188 (n + 1)).toNat

end

end A344616.P12341164425862685000

namespace A344616

/-- `A241917(n+1)+A162641(A331188(n+1))` -/
def P12341164425862685000.Spec : Prop :=
  ∀ n, P12341164425862685000.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P1511636503660493657

`A056239(n+1)-A255201(A329602(n+1))`
-/

namespace A344616.P1511636503660493657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A255201 (A329602 (n + 1)).toNat

end

end A344616.P1511636503660493657

namespace A344616

/-- `A056239(n+1)-A255201(A329602(n+1))` -/
def P1511636503660493657.Spec : Prop :=
  ∀ n, P1511636503660493657.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P11942898759344334957

`A346700(A129598(n+1))-A346700(n+1)`
-/

namespace A344616.P11942898759344334957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A129598 (n + 1)).toNat - A346700 (n + 1)

end

end A344616.P11942898759344334957

namespace A344616

/-- `A346700(A129598(n+1))-A346700(n+1)` -/
def P11942898759344334957.Spec : Prop :=
  ∀ n, P11942898759344334957.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P15734821373241344973

`A346700(A253560(n+1))-A346700(n+1)`
-/

namespace A344616.P15734821373241344973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A253560 (n + 1)).toNat - A346700 (n + 1)

end

end A344616.P15734821373241344973

namespace A344616

/-- `A346700(A253560(n+1))-A346700(n+1)` -/
def P15734821373241344973.Spec : Prop :=
  ∀ n, P15734821373241344973.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P15403719005654508509

`A346700(A256017(n+1))-A346700(n+1)`
-/

namespace A344616.P15403719005654508509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A256017 (n + 1)).toNat - A346700 (n + 1)

end

end A344616.P15403719005654508509

namespace A344616

/-- `A346700(A256017(n+1))-A346700(n+1)` -/
def P15403719005654508509.Spec : Prop :=
  ∀ n, P15403719005654508509.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P15832474956592183854

`A346700((n+1)*A006530(n+1))-A346700(n+1)`
-/

namespace A344616.P15832474956592183854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 ((n + 1 : ℤ) * A006530 (n + 1)).toNat - A346700 (n + 1)

end

end A344616.P15832474956592183854

namespace A344616

/-- `A346700((n+1)*A006530(n+1))-A346700(n+1)` -/
def P15832474956592183854.Spec : Prop :=
  ∀ n, P15832474956592183854.a n = A344616 (n + 1)

end A344616

/-! ## A344616.P5366398260525912907

`A346700((n+1)²)-2*A346700(n+1)`
-/

namespace A344616.P5366398260525912907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 ((n + 1) ^ 2) - 2 * A346700 (n + 1)

end

end A344616.P5366398260525912907

namespace A344616

/-- `A346700((n+1)²)-2*A346700(n+1)` -/
def P5366398260525912907.Spec : Prop :=
  ∀ n, P5366398260525912907.a n = A344616 (n + 1)

end A344616

/-!
# A344617: Sign of the alternating sum of the prime indices of n.

The programs for A344617, the canonical program `A344617.P17193290426147395898` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344617 has offset 1).

The definition of A344617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344617.P17670320333368721296

`Δ[floor(sqrt(n))]-(-1)^∑{e}[n+1, #]`
-/

namespace A344617.P17670320333368721296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A344617.P17670320333368721296

namespace A344617

/-- `Δ[floor(sqrt(n))]-(-1)^∑{e}[n+1, #]` -/
def P17670320333368721296.Spec : Prop :=
  ∀ n, P17670320333368721296.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P17193290426147395898

`(1-∏{e}[n+1, xor(#, (-1)^#)])%2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344617

/-- `(1-∏{e}[n+1, xor(#, (-1)^#)])%2` -/
def P17193290426147395898.Spec : Prop :=
  ∀ n, P17193290426147395898.a n = A344617 (n + 1)

theorem P17193290426147395898.correct : P17193290426147395898.Spec := by
  intro n
  simp only [A344617, Nat.add_sub_cancel]

end A344617

/-! ## A344617.P6255463968896332091

`-(1-char[n²-1])*(-1)^∑{e}[n+1, #]`
-/

namespace A344617.P6255463968896332091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A344617.P6255463968896332091

namespace A344617

/-- `-(1-char[n²-1])*(-1)^∑{e}[n+1, #]` -/
def P6255463968896332091.Spec : Prop :=
  ∀ n, P6255463968896332091.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P16863207203007356389

`-(1-char[n²-1])/(-1)^∑{e}[n+1, #]`
-/

namespace A344617.P16863207203007356389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ))

end

end A344617.P16863207203007356389

namespace A344617

/-- `-(1-char[n²-1])/(-1)^∑{e}[n+1, #]` -/
def P16863207203007356389.Spec : Prop :=
  ∀ n, P16863207203007356389.a n = (A344617 (n + 1) : ℚ)

end A344617

/-! ## A344617.P7917680996851876828

`-((-1)^∑{e}[n+1, #])%(2-char[n²-1])`
-/

namespace A344617.P7917680996851876828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A344617.P7917680996851876828

namespace A344617

/-- `-((-1)^∑{e}[n+1, #])%(2-char[n²-1])` -/
def P7917680996851876828.Spec : Prop :=
  ∀ n, P7917680996851876828.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P5584375033544160003

`and(2, (-1)^∑{e}[n+1, #])-(1-char[n²-1])`
-/

namespace A344617.P5584375033544160003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) - (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A344617.P5584375033544160003

namespace A344617

/-- `and(2, (-1)^∑{e}[n+1, #])-(1-char[n²-1])` -/
def P5584375033544160003.Spec : Prop :=
  ∀ n, P5584375033544160003.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P2282003665243457284

`Δ[floor(sqrt(n)-A002819(n))]`
-/

namespace A344617.P2282003665243457284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) - (A002819 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344617.P2282003665243457284

namespace A344617

/-- `Δ[floor(sqrt(n)-A002819(n))]` -/
def P2282003665243457284.Spec : Prop :=
  ∀ n, P2282003665243457284.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P8071638136370660797

`char[n²-1]-A008836(n+1)`
-/

namespace A344617.P8071638136370660797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A008836 (n + 1)

end

end A344617.P8071638136370660797

namespace A344617

/-- `char[n²-1]-A008836(n+1)` -/
def P8071638136370660797.Spec : Prop :=
  ∀ n, P8071638136370660797.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P948928251575879874

`char[n²-1]-(-1)^A001222(n+1)`
-/

namespace A344617.P948928251575879874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A344617.P948928251575879874

namespace A344617

/-- `char[n²-1]-(-1)^A001222(n+1)` -/
def P948928251575879874.Spec : Prop :=
  ∀ n, P948928251575879874.a n = (A344617 (n + 1) : ℚ)

end A344617

/-! ## A344617.P2089996445277953478

`-(-1)^∑{e}[n+1, #]*A049240(n+1)`
-/

namespace A344617.P2089996445277953478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A049240 (n + 1))

end

end A344617.P2089996445277953478

namespace A344617

/-- `-(-1)^∑{e}[n+1, #]*A049240(n+1)` -/
def P2089996445277953478.Spec : Prop :=
  ∀ n, P2089996445277953478.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P5909943736720408570

`-(-1)^∑{e}[n+1, #]*∑[-Δ[A010052(n)]]`
-/

namespace A344617.P5909943736720408570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A344617.P5909943736720408570

namespace A344617

/-- `-(-1)^∑{e}[n+1, #]*∑[-Δ[A010052(n)]]` -/
def P5909943736720408570.Spec : Prop :=
  ∀ n, P5909943736720408570.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P11334781378926172609

`A157658(A007913(n+1))`
-/

namespace A344617.P11334781378926172609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A007913 (n + 1)).toNat

end

end A344617.P11334781378926172609

namespace A344617

/-- `A157658(A007913(n+1))` -/
def P11334781378926172609.Spec : Prop :=
  ∀ n, P11334781378926172609.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P7247357642921196286

`A062157(A350387(n+1))`
-/

namespace A344617.P7247357642921196286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A350387 (n + 1)).toNat

end

end A344617.P7247357642921196286

namespace A344617

/-- `A062157(A350387(n+1))` -/
def P7247357642921196286.Spec : Prop :=
  ∀ n, P7247357642921196286.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P5407485780181058048

`A097558(n+1)%A275437(n)`
-/

namespace A344617.P5407485780181058048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097558 (n + 1)) (A275437 n)

end

end A344617.P5407485780181058048

namespace A344617

/-- `A097558(n+1)%A275437(n)` -/
def P5407485780181058048.Spec : Prop :=
  ∀ n, P5407485780181058048.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P15970741331636577744

`A317939(n+1)%A275437(n)`
-/

namespace A344617.P15970741331636577744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317939 (n + 1)) (A275437 n)

end

end A344617.P15970741331636577744

namespace A344617

/-- `A317939(n+1)%A275437(n)` -/
def P15970741331636577744.Spec : Prop :=
  ∀ n, P15970741331636577744.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P5802834218687670890

`A066829(n+1)-A353669(n+1)`
-/

namespace A344617.P5802834218687670890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A353669 (n + 1)

end

end A344617.P5802834218687670890

namespace A344617

/-- `A066829(n+1)-A353669(n+1)` -/
def P5802834218687670890.Spec : Prop :=
  ∀ n, P5802834218687670890.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P11214769570402375312

`1-(A049240(n+1)+A008836(n+1))`
-/

namespace A344617.P11214769570402375312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A049240 (n + 1) + A008836 (n + 1))

end

end A344617.P11214769570402375312

namespace A344617

/-- `1-(A049240(n+1)+A008836(n+1))` -/
def P11214769570402375312.Spec : Prop :=
  ∀ n, P11214769570402375312.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P11474838605929464198

`1-(A353669(n+1)+A065043(n+1))`
-/

namespace A344617.P11474838605929464198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A353669 (n + 1) + A065043 (n + 1))

end

end A344617.P11474838605929464198

namespace A344617

/-- `1-(A353669(n+1)+A065043(n+1))` -/
def P11474838605929464198.Spec : Prop :=
  ∀ n, P11474838605929464198.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P3489595486416942671

`∑{d}[n+1, A008683(#)*A293234((n+1)/#)]`
-/

namespace A344617.P3489595486416942671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A293234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344617.P3489595486416942671

namespace A344617

/-- `∑{d}[n+1, A008683(#)*A293234((n+1)/#)]` -/
def P3489595486416942671.Spec : Prop :=
  ∀ n, P3489595486416942671.a n = A344617 (n + 1)

end A344617

/-! ## A344617.P2017280874911820404

`∑{d}[n+1, A001065(#)*A323363((n+1)/#)]`
-/

namespace A344617.P2017280874911820404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344617.P2017280874911820404

namespace A344617

/-- `∑{d}[n+1, A001065(#)*A323363((n+1)/#)]` -/
def P2017280874911820404.Spec : Prop :=
  ∀ n, P2017280874911820404.a n = A344617 (n + 1)

end A344617

/-!
# A344618: Reverse-alternating sums of standard compositions (A066099). Alternating sums of the compositions ranked by A228351.

The programs for A344618, there is no canonical definition to state claims against.
-/

/-! ## A344618.P18123322674447764960

`(-1)^n*a(floor(n/2))+1` with `a(0)=0`
-/

namespace A344618.P18123322674447764960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ n * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A344618.P18123322674447764960

/-! ## A344618.P8771834498649521821

`a(floor(n/2))/(-1)^n+1` with `a(0)=0`
-/

namespace A344618.P8771834498649521821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / ((-1) ^ n : ℚ) + 1

end

end A344618.P8771834498649521821

/-! ## A344618.P12599673762515140575

`(a(floor(n/2))+xor(1, n)-n)*(xor(1, n)-n)` with `a(0)=0`
-/

namespace A344618.P12599673762515140575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + ((Nat.xor 1 n : ℤ) - (n : ℤ))) * ((Nat.xor 1 n : ℤ) - (n : ℤ))

end

end A344618.P12599673762515140575

/-! ## A344618.P1134028962954481160

`(a(floor(n/2))+xor(1, n)-n)/(xor(1, n)-n)` with `a(0)=0`
-/

namespace A344618.P1134028962954481160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)

end

end A344618.P1134028962954481160

/-! ## A344618.P5784528604749932499

`A085144(n)+char[xor(n, Δ[n²])]`
-/

namespace A344618.P5784528604749932499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344618.P5784528604749932499

/-! ## A344618.P9616570972485252414

`a(floor(n/2))*A033999(n)+1` with `a(0)=0`
-/

namespace A344618.P9616570972485252414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A033999 n + 1

end

end A344618.P9616570972485252414

/-! ## A344618.P848912582529032270

`1-a(floor(n/2))*A062157(n)` with `a(0)=0`
-/

namespace A344618.P848912582529032270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a ⌊(n : ℚ) / 2⌋.toNat * A062157 n

end

end A344618.P848912582529032270

/-! ## A344618.P10331500975125398584

`1-a(floor(n/2))*A165326(n)` with `a(0)=0`
-/

namespace A344618.P10331500975125398584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a ⌊(n : ℚ) / 2⌋.toNat * A165326 n

end

end A344618.P10331500975125398584

/-! ## A344618.P1420249870988733792

`a(floor(n/2))*A087960(n²)+1` with `a(0)=0`
-/

namespace A344618.P1420249870988733792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A087960 (n ^ 2) + 1

end

end A344618.P1420249870988733792

/-! ## A344618.P18405065644860303403

`A085144(A124108(n))`
-/

namespace A344618.P18405065644860303403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A124108 n).toNat

end

end A344618.P18405065644860303403

/-!
# A344619: The a(n)-th composition in standard order (A066099) has alternating sum 0.

The programs for A344619, there is no canonical definition to state claims against.
-/

/-! ## A344619.P8934550220169978275

`eq[0, A124754(n)]`
-/

namespace A344619.P8934550220169978275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344619.P8934550220169978275

/-! ## A344619.P17167010507503053766

`eq[0, A145037(A006068(n))]`
-/

namespace A344619.P17167010507503053766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344619.P17167010507503053766

/-! ## A344619.P2214951540980658026

`eq[1, A037861(A268716(n))]`
-/

namespace A344619.P2214951540980658026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A268716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344619.P2214951540980658026

/-! ## A344619.P18023631062486075044

`comp[A003188(A044951(n+1))]`
-/

namespace A344619.P18023631062486075044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A044951 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344619.P18023631062486075044

/-! ## A344619.P17376489195960278412

`eq[-A010060(n), A085144(n)]`
-/

namespace A344619.P17376489195960278412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344619.P17376489195960278412

/-! ## A344619.P8953870584008419980

`eq[0, A085144(A000069(n+1))]`
-/

namespace A344619.P8953870584008419980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A000069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344619.P8953870584008419980

/-! ## A344619.P2230845584192006097

`eq[1, A037861(2*A006068(n))]`
-/

namespace A344619.P2230845584192006097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344619.P2230845584192006097

/-! ## A344619.P10716496161117406733

`eq[1, A085144(n)+A001285(n)]`
-/

namespace A344619.P10716496161117406733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344619.P10716496161117406733

/-! ## A344619.P13388176741387823084

`eq[A085144(n)+1, A010059(n)]`
-/

namespace A344619.P13388176741387823084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344619.P13388176741387823084

/-! ## A344619.P12384958347154380333

`eq[A209281(n+1), A346633(n)]`
-/

namespace A344619.P12384958347154380333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344619.P12384958347154380333

/-!
# A344621: Primes p such that there is no positive integer a with 2*a, a^2-1 and a^2+1 not only smaller than p but also quadratic nonresidues modulo p.

The programs for A344621, there is no canonical definition to state claims against.
-/

/-! ## A344621.P1359436302345516040

`p?[A002265(A249624(n+1))]`
-/

namespace A344621.P1359436302345516040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A249624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344621.P1359436302345516040

/-! ## A344621.P3740903930255665241

`p?[∑[A107038(A107027(n))²]]`
-/

namespace A344621.P3740903930255665241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 (A107027 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344621.P3740903930255665241

/-! ## A344621.P5792277550477828114

`p?[∑[A322423(A143069(n+1))]]`
-/

namespace A344621.P5792277550477828114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322423 (A143069 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344621.P5792277550477828114

/-! ## A344621.P5828314328771362751

`p?[∑[A128529(A341216(2*n+3))]]`
-/

namespace A344621.P5828314328771362751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128529 (A341216 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344621.P5828314328771362751

/-! ## A344621.P8064819984644390837

`A154363(∑[A284249(n+3)])`
-/

namespace A344621.P8064819984644390837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344621.P8064819984644390837

/-!
# A344622: a(n) = n*(n+1)/2 - sigma(n) + d(n).

The programs for A344622, the canonical program `A344622.P11444211311141258312` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344622 has offset 1).

The definition of A344622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344622.P11444211311141258312

`∑{d}[n+1, 1-#]+∑[n+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344622

/-- `∑{d}[n+1, 1-#]+∑[n+1]` -/
def P11444211311141258312.Spec : Prop :=
  ∀ n, P11444211311141258312.a n = A344622 (n + 1)

theorem P11444211311141258312.correct : P11444211311141258312.Spec := by
  intro n
  simp only [A344622, Nat.add_sub_cancel]

end A344622

/-! ## A344622.P2765448133531229081

`C(n+2, 2)-∑{d}[n+1, #-1]`
-/

namespace A344622.P2765448133531229081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)

end

end A344622.P2765448133531229081

namespace A344622

/-- `C(n+2, 2)-∑{d}[n+1, #-1]` -/
def P2765448133531229081.Spec : Prop :=
  ∀ n, P2765448133531229081.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P4315029476821264668

`A152864(n+1)+C(n, 2)`
-/

namespace A344622.P4315029476821264668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152864 (n + 1) + (Nat.choose n 2 : ℤ)

end

end A344622.P4315029476821264668

namespace A344622

/-- `A152864(n+1)+C(n, 2)` -/
def P4315029476821264668.Spec : Prop :=
  ∀ n, P4315029476821264668.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P3533226290646193166

`∑[n+1]-A065608(n+1)`
-/

namespace A344622.P3533226290646193166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A065608 (n + 1)

end

end A344622.P3533226290646193166

namespace A344622

/-- `∑[n+1]-A065608(n+1)` -/
def P3533226290646193166.Spec : Prop :=
  ∀ n, P3533226290646193166.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P7721966852411700497

`∑[n]+1-A152770(n+1)`
-/

namespace A344622.P7721966852411700497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A152770 (n + 1))

end

end A344622.P7721966852411700497

namespace A344622

/-- `∑[n]+1-A152770(n+1)` -/
def P7721966852411700497.Spec : Prop :=
  ∀ n, P7721966852411700497.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P17021784116505383827

`∑[n+2]-A137319(n+1)`
-/

namespace A344622.P17021784116505383827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A137319 (n + 1)

end

end A344622.P17021784116505383827

namespace A344622

/-- `∑[n+2]-A137319(n+1)` -/
def P17021784116505383827.Spec : Prop :=
  ∀ n, P17021784116505383827.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P8048069460349122057

`A161680(n)+A152864(n+1)`
-/

namespace A344622.P8048069460349122057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A152864 (n + 1)

end

end A344622.P8048069460349122057

namespace A344622

/-- `A161680(n)+A152864(n+1)` -/
def P8048069460349122057.Spec : Prop :=
  ∀ n, P8048069460349122057.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P10720763902500468649

`A000124(n)-A152770(n+1)`
-/

namespace A344622.P10720763902500468649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A152770 (n + 1)

end

end A344622.P10720763902500468649

namespace A344622

/-- `A000124(n)-A152770(n+1)` -/
def P10720763902500468649.Spec : Prop :=
  ∀ n, P10720763902500468649.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P1976277540420320155

`A024816(n+1)+A000005(n+1)`
-/

namespace A344622.P1976277540420320155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + A000005 (n + 1)

end

end A344622.P1976277540420320155

namespace A344622

/-- `A024816(n+1)+A000005(n+1)` -/
def P1976277540420320155.Spec : Prop :=
  ∀ n, P1976277540420320155.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P245714567360646539

`A244048(n+1)+A163180(n+1)`
-/

namespace A344622.P245714567360646539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1) + A163180 (n + 1)

end

end A344622.P245714567360646539

namespace A344622

/-- `A244048(n+1)+A163180(n+1)` -/
def P245714567360646539.Spec : Prop :=
  ∀ n, P245714567360646539.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P16380531245480100093

`A256885(n+1)-A152992(n+1)`
-/

namespace A344622.P16380531245480100093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 1) - A152992 (n + 1)

end

end A344622.P16380531245480100093

namespace A344622

/-- `A256885(n+1)-A152992(n+1)` -/
def P16380531245480100093.Spec : Prop :=
  ∀ n, P16380531245480100093.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P8961992163966336163

`A000124(n)-A065608(n+1)+n`
-/

namespace A344622.P8961992163966336163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A065608 (n + 1) + (n : ℤ)

end

end A344622.P8961992163966336163

namespace A344622

/-- `A000124(n)-A065608(n+1)+n` -/
def P8961992163966336163.Spec : Prop :=
  ∀ n, P8961992163966336163.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P14133191890531321818

`A000005(n+1)+A000217(n)-A001065(n+1)`
-/

namespace A344622.P14133191890531321818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000217 n - A001065 (n + 1))

end

end A344622.P14133191890531321818

namespace A344622

/-- `A000005(n+1)+A000217(n)-A001065(n+1)` -/
def P14133191890531321818.Spec : Prop :=
  ∀ n, P14133191890531321818.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P13016900679238710679

`A006218(n+1)+A024816(n+1)-A006218(n)`
-/

namespace A344622.P13016900679238710679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A024816 (n + 1) - A006218 n)

end

end A344622.P13016900679238710679

namespace A344622

/-- `A006218(n+1)+A024816(n+1)-A006218(n)` -/
def P13016900679238710679.Spec : Prop :=
  ∀ n, P13016900679238710679.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P15781083465043651514

`A000292(n+1)-(A065608(n+1)+A000292(n))`
-/

namespace A344622.P15781083465043651514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A065608 (n + 1) + A000292 n)

end

end A344622.P15781083465043651514

namespace A344622

/-- `A000292(n+1)-(A065608(n+1)+A000292(n))` -/
def P15781083465043651514.Spec : Prop :=
  ∀ n, P15781083465043651514.a n = A344622 (n + 1)

end A344622

/-! ## A344622.P3146993739046649966

`A000005(n+1)+A000217(n+1)-A000203(n+1)`
-/

namespace A344622.P3146993739046649966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000217 (n + 1) - A000203 (n + 1))

end

end A344622.P3146993739046649966

namespace A344622

/-- `A000005(n+1)+A000217(n+1)-A000203(n+1)` -/
def P3146993739046649966.Spec : Prop :=
  ∀ n, P3146993739046649966.a n = A344622 (n + 1)

end A344622

/-!
# A344623: Pseudo-involution companion for the Fibonacci generating function.

The programs for A344623, there is no canonical definition to state claims against.
-/

/-! ## A344623.P13733352669818236853

`∑[A247971(A130655(n))]`
-/

namespace A344623.P13733352669818236853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A130655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344623.P13733352669818236853

/-! ## A344623.P8311046427674674003

`A194640(A083878(n))+n`
-/

namespace A344623.P8311046427674674003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A083878 n).toNat + (n : ℤ)

end

end A344623.P8311046427674674003

/-!
# A344624: a(n) = Sum_{k=1..n} k^c(k), where c(n) is the characteristic function of squares.

The programs for A344624, the canonical program `A344624.P18142045728601743210` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344624 has offset 1).

The definition of A344624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344624.P18142045728601743210

`∑[n*Δ[floor(sqrt(n))]+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344624

/-- `∑[n*Δ[floor(sqrt(n))]+1]` -/
def P18142045728601743210.Spec : Prop :=
  ∀ n, P18142045728601743210.a n = A344624 (n + 1)

theorem P18142045728601743210.correct : P18142045728601743210.Spec := by
  intro n
  simp only [A344624, Nat.add_sub_cancel]

end A344624

/-! ## A344624.P3480299356098093088

`a(n-1)+(n+1)^Δ[floor(sqrt(n))]` with `a(0)=1`
-/

namespace A344624.P3480299356098093088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A344624.P3480299356098093088

namespace A344624

/-- `a(n-1)+(n+1)^Δ[floor(sqrt(n))]` -/
def P3480299356098093088.Spec : Prop :=
  ∀ n, P3480299356098093088.a n = (A344624 (n + 1) : ℚ)

end A344624

/-! ## A344624.P11064356681652029250

`∑[round(sqrt(n))²^(∏{e}[n+1, #+1]%2)]+1`
-/

namespace A344624.P11064356681652029250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2) ^ ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A344624.P11064356681652029250

namespace A344624

/-- `∑[round(sqrt(n))²^(∏{e}[n+1, #+1]%2)]+1` -/
def P11064356681652029250.Spec : Prop :=
  ∀ n, P11064356681652029250.a n = A344624 (n + 1)

end A344624

/-! ## A344624.P14277855240715906839

`∑[A056926(n+1)²]%(n+2)²`
-/

namespace A344624.P14277855240715906839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 2) ^ 2 : ℤ)

end

end A344624.P14277855240715906839

namespace A344624

/-- `∑[A056926(n+1)²]%(n+2)²` -/
def P14277855240715906839.Spec : Prop :=
  ∀ n, P14277855240715906839.a n = A344624 (n + 1)

end A344624

/-! ## A344624.P2256690308291613947

`∑[n+1]-∑[lcm(n, A068717(n+1))]`
-/

namespace A344624.P2256690308291613947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A068717 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A344624.P2256690308291613947

namespace A344624

/-- `∑[n+1]-∑[lcm(n, A068717(n+1))]` -/
def P2256690308291613947.Spec : Prop :=
  ∀ n, P2256690308291613947.a n = A344624 (n + 1)

end A344624

/-! ## A344624.P12945310685189884519

`∑[n*A000005(n+1)%2]+1+n`
-/

namespace A344624.P12945310685189884519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A000005 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A344624.P12945310685189884519

namespace A344624

/-- `∑[n*A000005(n+1)%2]+1+n` -/
def P12945310685189884519.Spec : Prop :=
  ∀ n, P12945310685189884519.a n = A344624 (n + 1)

end A344624

/-! ## A344624.P10084476645742480610

`ratio[floor(sqrt(n))!²]+a(n-1)` with `a(0)=1`
-/

namespace A344624.P10084476645742480610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + a (n - 1)

end

end A344624.P10084476645742480610

namespace A344624

/-- `ratio[floor(sqrt(n))!²]+a(n-1)` -/
def P10084476645742480610.Spec : Prop :=
  ∀ n, P10084476645742480610.a n = (A344624 (n + 1) : ℚ)

end A344624

/-! ## A344624.P12102200742899192901

`floor(∑[ratio[A214080(n)²]])`
-/

namespace A344624.P12102200742899192901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A344624.P12102200742899192901

namespace A344624

/-- `floor(∑[ratio[A214080(n)²]])` -/
def P12102200742899192901.Spec : Prop :=
  ∀ n, P12102200742899192901.a n = A344624 (n + 1)

end A344624

/-!
# A344626: Primes p such that exactly two numbers among all circular permutations of the digits of p are prime.

The programs for A344626, there is no canonical definition to state claims against.
-/

/-! ## A344626.P8397089173959927117

`A045319(eq[2, A317756(n+1)])`
-/

namespace A344626.P8397089173959927117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344626.P8397089173959927117

/-! ## A344626.P2238320426253745380

`A045344(eq[2, A317756(n+1)])`
-/

namespace A344626.P2238320426253745380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344626.P2238320426253745380

/-! ## A344626.P8833910971742344437

`A065091(eq[2, A317756(n+1)])`
-/

namespace A344626.P8833910971742344437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344626.P8833910971742344437

/-! ## A344626.P9462466087089347354

`A000040(eq[2, A317756(n+1)]+1)`
-/

namespace A344626.P9462466087089347354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A344626.P9462466087089347354

/-! ## A344626.P4433266800520722593

`A008578(eq[2, A317756(n+1)]+2)`
-/

namespace A344626.P4433266800520722593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A344626.P4433266800520722593

/-! ## A344626.P12301693226014341746

`p?[(n+1)*(A262988(n+1)-1)]`
-/

namespace A344626.P12301693226014341746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A262988 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344626.P12301693226014341746

/-! ## A344626.P11778597097134271804

`A000040(eq[2, A262988(A008578(n+1))])`
-/

namespace A344626.P11778597097134271804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344626.P11778597097134271804

/-!
# A344627: Primes p such that exactly three numbers among all circular permutations of the digits of p are prime.

The programs for A344627, there is no canonical definition to state claims against.
-/

/-! ## A344627.P1143838728498065603

`A045319(eq[3, A317756(n+1)])`
-/

namespace A344627.P1143838728498065603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344627.P1143838728498065603

/-! ## A344627.P4114363084391469713

`A045344(eq[3, A317756(n+1)])`
-/

namespace A344627.P4114363084391469713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344627.P4114363084391469713

/-! ## A344627.P9253525651899928073

`A065091(eq[3, A317756(n+1)])`
-/

namespace A344627.P9253525651899928073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344627.P9253525651899928073

/-! ## A344627.P10772627239602676432

`A000040(eq[3, A317756(n+1)]+1)`
-/

namespace A344627.P10772627239602676432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A344627.P10772627239602676432

/-! ## A344627.P10793537260974985374

`A008578(eq[3, A317756(n+1)]+2)`
-/

namespace A344627.P10793537260974985374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A344627.P10793537260974985374

/-!
# A344628: Primes p such that exactly four numbers among all circular permutations of the digits of p are prime.

The programs for A344628, there is no canonical definition to state claims against.
-/

/-! ## A344628.P380090644784453099

`A317716(A115744(n+1)+4)`
-/

namespace A344628.P380090644784453099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A115744 (n + 1) + 4).toNat

end

end A344628.P380090644784453099

/-! ## A344628.P7593824671553345049

`A317716(A166136(n+1)+A001104(n+1))`
-/

namespace A344628.P7593824671553345049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A166136 (n + 1) + A001104 (n + 1)).toNat

end

end A344628.P7593824671553345049

/-! ## A344628.P8177151372799887335

`A317716(A166136(n+1)+A061219(n+1))`
-/

namespace A344628.P8177151372799887335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A166136 (n + 1) + A061219 (n + 1)).toNat

end

end A344628.P8177151372799887335

/-! ## A344628.P4046755988752875536

`A317716(A166136(n+1)+A082217(n+1))`
-/

namespace A344628.P4046755988752875536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A166136 (n + 1) + A082217 (n + 1)).toNat

end

end A344628.P4046755988752875536

/-!
# A344629: Primes p such that exactly five numbers among all circular permutations of the digits of p are prime.

The programs for A344629, there is no canonical definition to state claims against.
-/

/-! ## A344629.P14071051272418468928

`A204844(A341909(n)+12)`
-/

namespace A344629.P14071051272418468928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204844 (A341909 n + 12).toNat

end

end A344629.P14071051272418468928

/-! ## A344629.P1647489443687004944

`A204844(A004882(n+1)+12)`
-/

namespace A344629.P1647489443687004944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204844 (A004882 (n + 1) + 12).toNat

end

end A344629.P1647489443687004944

/-! ## A344629.P11206931980638956573

`A204844(A004893(n+1)+12)`
-/

namespace A344629.P11206931980638956573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204844 (A004893 (n + 1) + 12).toNat

end

end A344629.P11206931980638956573

/-! ## A344629.P3283189849385295987

`A293663(A112817(n+1))`
-/

namespace A344629.P3283189849385295987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (A112817 (n + 1)).toNat

end

end A344629.P3283189849385295987

/-! ## A344629.P1623636303995309958

`A317716(A167499(n+3))`
-/

namespace A344629.P1623636303995309958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A167499 (n + 3)).toNat

end

end A344629.P1623636303995309958

/-!
# A344630: Primes p such that exactly six numbers among all circular permutations of the digits of p are prime.

The programs for A344630, there is no canonical definition to state claims against.
-/

/-! ## A344630.P15429476363747035465

`A204844(n+22)`
-/

namespace A344630.P15429476363747035465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204844 (n + 22)

end

end A344630.P15429476363747035465

/-! ## A344630.P9675699248403651744

`A293663(n+43)`
-/

namespace A344630.P9675699248403651744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 43)

end

end A344630.P9675699248403651744

/-! ## A344630.P8392359631905521215

`A068652(A071786(n+1)+43)`
-/

namespace A344630.P8392359631905521215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A071786 (n + 1) + 43).toNat

end

end A344630.P8392359631905521215

/-! ## A344630.P1636212328256670517

`A068652(A115060(n+1)+43)`
-/

namespace A344630.P1636212328256670517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A115060 (n + 1) + 43).toNat

end

end A344630.P1636212328256670517

/-! ## A344630.P11967519496050976139

`A068652(A188649(n+1)+43)`
-/

namespace A344630.P11967519496050976139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A188649 (n + 1) + 43).toNat

end

end A344630.P11967519496050976139

/-!
# A344631: Primes p such that exactly seven numbers among all circular permutations of the digits of p are prime.

The programs for A344631, there is no canonical definition to state claims against.
-/

/-! ## A344631.P7857435384108671125

`A317716(eq[11, A066657(n)])`
-/

namespace A344631.P7857435384108671125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344631.P7857435384108671125

/-! ## A344631.P11670457011339957989

`A317716(A000096(n+5)+8)`
-/

namespace A344631.P11670457011339957989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A000096 (n + 5) + 8).toNat

end

end A344631.P11670457011339957989

/-! ## A344631.P8172830387368230739

`A317716(eq[8, A131818(n+1)])`
-/

namespace A344631.P8172830387368230739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344631.P8172830387368230739

/-!
# A344632: Primes p such that exactly eight numbers among all circular permutations of the digits of p are prime.

The programs for A344632, there is no canonical definition to state claims against.
-/

/-! ## A344632.P8915958862280715601

`A317716(eq[13, A066657(n)])`
-/

namespace A344632.P8915958862280715601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344632.P8915958862280715601

/-! ## A344632.P3398437362198664255

`A317716(A167614(n+6)+5)`
-/

namespace A344632.P3398437362198664255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317716 (A167614 (n + 6) + 5).toNat

end

end A344632.P3398437362198664255

/-!
# A344636: Numbers k such that half the numbers from 0 to k inclusive contain the digit "1".

The programs for A344636, there is no canonical definition to state claims against.
-/

/-! ## A344636.P18421844401862883727

`A343839(n+1)+A343785(A005478(n+1))`
-/

namespace A344636.P18421844401862883727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343839 (n + 1) + A343785 (A005478 (n + 1)).toNat

end

end A344636.P18421844401862883727

/-! ## A344636.P7375711975923327649

`A343839(n+1)+A106400(A343815(n+1))`
-/

namespace A344636.P7375711975923327649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343839 (n + 1) + A106400 (A343815 (n + 1)).toNat

end

end A344636.P7375711975923327649

/-!
# A344639: Array read by ascending antidiagonals: A(n, k) is the number of (n, k)-poly-Cauchy permutations.

The programs for A344639, there is no canonical definition to state claims against.
-/

/-! ## A344639.P2959734190247432435

`A383064(A061579(n))`
-/

namespace A344639.P2959734190247432435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383064 (A061579 n).toNat

end

end A344639.P2959734190247432435

/-! ## A344639.P18424771386479144060

`A383064(A038722(n+2))`
-/

namespace A344639.P18424771386479144060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383064 (A038722 (n + 2)).toNat

end

end A344639.P18424771386479144060

/-!
# A344640: Antidiagonal sums of A344639.

The programs for A344640, there is no canonical definition to state claims against.
-/

/-! ## A344640.P11754059121563851593

`A247971((n+1)*a(n-1)+5)-4` with `a(0)=1`
-/

namespace A344640.P11754059121563851593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247971 ((n + 1 : ℤ) * a (n - 1) + 5).toNat - 4

end

end A344640.P11754059121563851593

/-! ## A344640.P12401173377820801324

`A228898(A026776(n))`
-/

namespace A344640.P12401173377820801324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228898 (A026776 n).toNat

end

end A344640.P12401173377820801324

/-!
# A344646: Array read by antidiagonals T(n,k) = ((n+k+1)^2 - (n+k+1) mod 2)/4 + min(n,k) for n and k >= 0.

The programs for A344646, there is no canonical definition to state claims against.
-/

/-! ## A344646.P6623922545814489739

`A128282(n)-1`
-/

namespace A344646.P6623922545814489739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128282 n - 1

end

end A344646.P6623922545814489739

/-! ## A344646.P16694199606641032262

`A023443(A128282(n))`
-/

namespace A344646.P16694199606641032262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A128282 n).toNat

end

end A344646.P16694199606641032262

/-! ## A344646.P2965253204447889505

`A088226(A128282(n)²)`
-/

namespace A344646.P2965253204447889505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A128282 n ^ 2).toNat

end

end A344646.P2965253204447889505

/-! ## A344646.P12238938579293297254

`A259361(A128282(n)²)`
-/

namespace A344646.P12238938579293297254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A128282 n ^ 2).toNat

end

end A344646.P12238938579293297254

/-! ## A344646.P12720862363774347715

`A070198(n)%A128282(n)`
-/

namespace A344646.P12720862363774347715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A128282 n)

end

end A344646.P12720862363774347715

/-! ## A344646.P7494684699170611894

`A079782(n+1)%A128282(n)`
-/

namespace A344646.P7494684699170611894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A128282 n)

end

end A344646.P7494684699170611894

/-! ## A344646.P17621830799036867984

`A083685(n+1)%A128282(n)`
-/

namespace A344646.P17621830799036867984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A128282 n)

end

end A344646.P17621830799036867984

/-! ## A344646.P8333580057757191148

`A121934(n+1)%A128282(n)`
-/

namespace A344646.P8333580057757191148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A128282 n)

end

end A344646.P8333580057757191148

/-! ## A344646.P8389871092653508181

`A008733(A131507(n))+A004197(n)`
-/

namespace A344646.P8389871092653508181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (A131507 n).toNat + A004197 n

end

end A344646.P8389871092653508181

/-! ## A344646.P17827408260472479467

`A004197(n)+A002620(∑[A010054(n)])`
-/

namespace A344646.P17827408260472479467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + A002620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344646.P17827408260472479467

/-!
# A344647: Numbers that are the sum of three fourth powers in six or more ways.

The programs for A344647, there is no canonical definition to state claims against.
-/

/-! ## A344647.P1836799656340428772

`A344364(A006549(n+1)%A325302(3*n+4))`
-/

namespace A344647.P1836799656340428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344364 (Int.tmod (A006549 (n + 1)) (A325302 (3 * n + 4))).toNat

end

end A344647.P1836799656340428772

/-!
# A344648: Numbers that are the sum of three fourth powers in exactly six ways.

The programs for A344648, there is no canonical definition to state claims against.
-/

/-! ## A344648.P11304579124045940182

`A344647(or(A065475(n+1), A091536(n)))`
-/

namespace A344648.P11304579124045940182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344647 (Int.lor (A065475 (n + 1)) (A091536 n)).toNat

end

end A344648.P11304579124045940182

/-! ## A344648.P39130644522389035

`A344647(A172542(n)!*A065475(n+1))`
-/

namespace A344648.P39130644522389035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344647 ((Nat.factorial (A172542 n).toNat : ℤ) * A065475 (n + 1)).toNat

end

end A344648.P39130644522389035

/-! ## A344648.P12295559406440315959

`A344647(A065475(n+1)/A172542(n)!)`
-/

namespace A344648.P12295559406440315959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344647 (SequenceMachineLib.roundAway ((A065475 (n + 1) : ℚ) / (Nat.factorial (A172542 n).toNat : ℚ))).toNat

end

end A344648.P12295559406440315959

/-! ## A344648.P1713325467024984617

`A344647(A065475(n+1)^A172542(n)!)`
-/

namespace A344648.P1713325467024984617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344647 (A065475 (n + 1) ^ Nat.factorial (A172542 n).toNat).toNat

end

end A344648.P1713325467024984617

/-! ## A344648.P16231113094436331716

`A344647(lcm(A172542(n)!, A065475(n+1)))`
-/

namespace A344648.P16231113094436331716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344647 (Int.lcm (Nat.factorial (A172542 n).toNat : ℤ) (A065475 (n + 1)))

end

end A344648.P16231113094436331716

/-!
# A344649: Triangle read by rows where T(n,k) is the number of strict integer partitions of 2*n with reverse-alternating sum 2*k.

The programs for A344649, there is no canonical definition to state claims against.
-/

/-! ## A344649.P5274825229243156583

`A055640(A135302(n)*A326017(n+2))`
-/

namespace A344649.P5274825229243156583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A135302 n * A326017 (n + 2)).toNat

end

end A344649.P5274825229243156583

/-! ## A344649.P15225875009898915257

`A102382(and(A048993(n), A294250(n+1)))`
-/

namespace A344649.P15225875009898915257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (Int.land (A048993 n) (A294250 (n + 1))).toNat

end

end A344649.P15225875009898915257

/-! ## A344649.P11324401789014005919

`and(A184962(n), A195174(A136868(n+1)))`
-/

namespace A344649.P11324401789014005919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184962 n) (A195174 (A136868 (n + 1)).toNat)

end

end A344649.P11324401789014005919

/-! ## A344649.P13119411324665017708

`A194987(n+1)%A276729(A230297(A194987(n+1)))`
-/

namespace A344649.P13119411324665017708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194987 (n + 1)) (A276729 (A230297 (A194987 (n + 1)).toNat).toNat)

end

end A344649.P13119411324665017708

/-! ## A344649.P2016391506338994095

`A325678(A278984(n+1))-A092921(n)`
-/

namespace A344649.P2016391506338994095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A278984 (n + 1)).toNat - A092921 n

end

end A344649.P2016391506338994095

/-!
# A344650: Number of strict odd-length integer partitions of 2n.

The programs for A344650, there is no canonical definition to state claims against.
-/

/-! ## A344650.P2743033298684118663

`A067659(2*n)`
-/

namespace A344650.P2743033298684118663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (2 * n)

end

end A344650.P2743033298684118663

/-! ## A344650.P3275423847831541833

`A035294(n)-A067661(2*n)`
-/

namespace A344650.P3275423847831541833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - A067661 (2 * n)

end

end A344650.P3275423847831541833

/-! ## A344650.P9326506641933325317

`A000009(2*n)-A067661(2*n)`
-/

namespace A344650.P9326506641933325317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A067661 (2 * n)

end

end A344650.P9326506641933325317

/-! ## A344650.P11143419021088641100

`A067661(2*n)-A010815(2*n)`
-/

namespace A344650.P11143419021088641100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * n) - A010815 (2 * n)

end

end A344650.P11143419021088641100

/-! ## A344650.P5418328811994084491

`A081360(2*n)-A067661(2*n)`
-/

namespace A344650.P5418328811994084491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n) - A067661 (2 * n)

end

end A344650.P5418328811994084491

/-! ## A344650.P3641138914116863745

`A067661(2*n)-A121373(2*n)`
-/

namespace A344650.P3641138914116863745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * n) - A121373 (2 * n)

end

end A344650.P3641138914116863745

/-! ## A344650.P17061151590332861555

`A335746(2*n)-A186741(2*n)`
-/

namespace A344650.P17061151590332861555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335746 (2 * n) - A186741 (2 * n)

end

end A344650.P17061151590332861555

/-! ## A344650.P1442990541849039531

`A238215(2*n+1)+A238208(2*n)`
-/

namespace A344650.P1442990541849039531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (2 * n + 1) + A238208 (2 * n)

end

end A344650.P1442990541849039531

/-! ## A344650.P36459894489964678

`A111133(2*n)+1-A067661(2*n)`
-/

namespace A344650.P36459894489964678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (2 * n) + (1 - A067661 (2 * n))

end

end A344650.P36459894489964678

/-! ## A344650.P3648599773550752303

`(A000009(2*n)-A010815(2*n))/2`
-/

namespace A344650.P3648599773550752303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (2 * n) - A010815 (2 * n) : ℚ) / 2

end

end A344650.P3648599773550752303

/-! ## A344650.P1964803214971595539

`(A081360(2*n)-A010815(2*n))/2`
-/

namespace A344650.P1964803214971595539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081360 (2 * n) - A010815 (2 * n) : ℚ) / 2

end

end A344650.P1964803214971595539

/-! ## A344650.P11174933333582840039

`(A000009(2*n)-A121373(2*n))/2`
-/

namespace A344650.P11174933333582840039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (2 * n) - A121373 (2 * n) : ℚ) / 2

end

end A344650.P11174933333582840039

/-! ## A344650.P14669734494912214751

`(A081360(2*n)-A121373(2*n))/2`
-/

namespace A344650.P14669734494912214751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081360 (2 * n) - A121373 (2 * n) : ℚ) / 2

end

end A344650.P14669734494912214751

/-! ## A344650.P8350467049659995056

`A067661(2*n+1)-Δ[A238208(2*n)]`
-/

namespace A344650.P8350467049659995056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238208 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A344650.P8350467049659995056

/-! ## A344650.P13731981828832575673

`A238215(2*n+1)+A096765(2*n)-A238215(2*n)`
-/

namespace A344650.P13731981828832575673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (2 * n + 1) + (A096765 (2 * n) - A238215 (2 * n))

end

end A344650.P13731981828832575673

/-! ## A344650.P2291878614645108688

`A096765(2*n+1)+A238208(2*n)-A238208(2*n+1)`
-/

namespace A344650.P2291878614645108688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (2 * n + 1) + (A238208 (2 * n) - A238208 (2 * n + 1))

end

end A344650.P2291878614645108688

/-! ## A344650.P17007801248479803629

`xor(1, xor(1, A067659(n+n)))`
-/

namespace A344650.P17007801248479803629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A067659 (n + n)))

end

end A344650.P17007801248479803629

/-! ## A344650.P8922393766052507056

`A096792(A004277(n))`
-/

namespace A344650.P8922393766052507056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096792 (A004277 n).toNat

end

end A344650.P8922393766052507056

/-! ## A344650.P5728098637281616326

`A096792(A004275(n+1))`
-/

namespace A344650.P5728098637281616326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096792 (A004275 (n + 1)).toNat

end

end A344650.P5728098637281616326

/-! ## A344650.P18120341723293811055

`A096792(A092535(n+1))`
-/

namespace A344650.P18120341723293811055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096792 (A092535 (n + 1)).toNat

end

end A344650.P18120341723293811055

/-!
# A344651: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with alternating sum k, with k ranging from n mod 2 to n in steps of 2.

The programs for A344651, there is no canonical definition to state claims against.
-/

/-! ## A344651.P4757330471622265942

`A103919(comp[∑[char[n²]]+n+n])`
-/

namespace A344651.P4757330471622265942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A344651.P4757330471622265942

/-! ## A344651.P13693050260826710985

`filter[A103919(n), A057427(#)]`
-/

namespace A344651.P13693050260826710985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057427 (f1 j).toNat = 1) n)

end

end A344651.P13693050260826710985

/-! ## A344651.P5026639723626157574

`filter[A103919(n), A168181(#)]`
-/

namespace A344651.P5026639723626157574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A344651.P5026639723626157574

/-! ## A344651.P13111690721665816519

`A030496(A112837(n))`
-/

namespace A344651.P13111690721665816519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A112837 n).toNat

end

end A344651.P13111690721665816519

/-! ## A344651.P16142951715342846216

`A336812(A328366(n+1)+A000225(n))`
-/

namespace A344651.P16142951715342846216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336812 (A328366 (n + 1) + A000225 n).toNat

end

end A344651.P16142951715342846216

/-!
# A344652: Number of permutations of the prime indices of n with no adjacent triples (..., x, y, z, ...) such that x <= y <= z.

The programs for A344652, there is no canonical definition to state claims against.
-/

/-! ## A344652.P5178243725119134501

`A050320(n+1)-A296210(A082588(n+1))`
-/

namespace A344652.P5178243725119134501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1) - A296210 (A082588 (n + 1)).toNat

end

end A344652.P5178243725119134501

/-! ## A344652.P5559306854095314010

`A050326(A019554(n+1)%A141214(n))`
-/

namespace A344652.P5559306854095314010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (Int.tmod (A019554 (n + 1)) (A141214 n)).toNat

end

end A344652.P5559306854095314010

/-! ## A344652.P10968455620404997015

`A050320(n+1)-A336107(A050354(n+1))`
-/

namespace A344652.P10968455620404997015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1) - A336107 (A050354 (n + 1)).toNat

end

end A344652.P10968455620404997015

/-! ## A344652.P6895538348773026332

`C(A325988(A007426(n+1)), A325988(n+1))`
-/

namespace A344652.P6895538348773026332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325988 (A007426 (n + 1)).toNat).toNat (A325988 (n + 1)).toNat

end

end A344652.P6895538348773026332

/-! ## A344652.P1477574058718165667

`A050326(((n+1)/∏{p}[n+1, #^val(n+1, #²)])%A112718(n+1))`
-/

namespace A344652.P1477574058718165667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))) (A112718 (n + 1))).toNat

end

end A344652.P1477574058718165667

/-!
# A344653: Every permutation of the prime factors of n has a consecutive monotone triple, i.e., a triple (..., x, y, z, ...) such that either x <= y <= z or x >= y >= z.

The programs for A344653, there is no canonical definition to state claims against.
-/

/-! ## A344653.P14207730565785325541

`∩[A345171(n+1), A375145(n+1)]`
-/

namespace A344653.P14207730565785325541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344653.P14207730565785325541

/-! ## A344653.P1487588070162710341

`∩[A046099(n+1), A345171(n+1)]`
-/

namespace A344653.P1487588070162710341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344653.P1487588070162710341

/-! ## A344653.P15054093169914267440

`∩[A048108(n+1), A345171(n+1)]`
-/

namespace A344653.P15054093169914267440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344653.P15054093169914267440

/-! ## A344653.P2351466166170956974

`∩[A333195(n+1), A345171(n+1)]`
-/

namespace A344653.P2351466166170956974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344653.P2351466166170956974

/-! ## A344653.P1385008634165215787

`A345193(∑[A185284(n)!])`
-/

namespace A344653.P1385008634165215787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344653.P1385008634165215787

/-!
# A344654: Number of integer partitions of n of which every permutation has a consecutive monotone triple, i.e., a triple (..., x, y, z, ...) such that either x <= y <= z or x >= y >= z.

The programs for A344654, there is no canonical definition to state claims against.
-/

/-! ## A344654.P10901498009459067456

`A000041(n)-A344740(n)`
-/

namespace A344654.P10901498009459067456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A344740 n

end

end A344654.P10901498009459067456

/-! ## A344654.P9995209450692952045

`sqrt(A001255(n))-A344740(n)`
-/

namespace A344654.P9995209450692952045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A344740 n : ℝ)

end

end A344654.P9995209450692952045

/-! ## A344654.P3290142797671704627

`∑[A002865(n)]-A344740(n)`
-/

namespace A344654.P3290142797671704627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A344740 n

end

end A344654.P3290142797671704627

/-! ## A344654.P12723673210061641226

`A345165(n)-char[A052928(n+2)]`
-/

namespace A344654.P12723673210061641226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345165 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344654.P12723673210061641226

/-! ## A344654.P4030042842160123833

`A345165(n)+A345170(n)-A344740(n)`
-/

namespace A344654.P4030042842160123833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345165 n + (A345170 n - A344740 n)

end

end A344654.P4030042842160123833

/-!
# A344655: Numbers k such that A032741(k-1)+A065608(k+1) is divisible by k.

The programs for A344655, there is no canonical definition to state claims against.
-/

/-! ## A344655.P1200828031489265934

`8^a(n-2)-1` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7`
-/

namespace A344655.P1200828031489265934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 5, 7] fun n a =>
  (8 : ℝ) ^ (a (n - 2)) - 1

end

end A344655.P1200828031489265934

/-!
# A344656: Number of odd composites <= 10^n.

The programs for A344656, there is no canonical definition to state claims against.
-/

/-! ## A344656.P13690235236315344311

`Δ[A002279(n)]-A006880(n+1)`
-/

namespace A344656.P13690235236315344311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006880 (n + 1)

end

end A344656.P13690235236315344311

/-! ## A344656.P4166744468663721186

`Δ[A178769(n)]-A006880(n+1)`
-/

namespace A344656.P4166744468663721186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006880 (n + 1)

end

end A344656.P4166744468663721186

/-! ## A344656.P15654143299812186719

`A198971(n)+1-A006880(n+1)`
-/

namespace A344656.P15654143299812186719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + 1 - A006880 (n + 1)

end

end A344656.P15654143299812186719

/-! ## A344656.P16217469733504430538

`Δ[A002279(n)]-A122121(2*(n+1))`
-/

namespace A344656.P16217469733504430538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122121 (2 * (n + 1))

end

end A344656.P16217469733504430538

/-! ## A344656.P15315379207967911555

`Δ[A002279(n)-A006880(n)]-A006880(n)`
-/

namespace A344656.P15315379207967911555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n - A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006880 n

end

end A344656.P15315379207967911555

/-!
# A344657: Number of vertices formed by infinite lines when connecting all vertices and all points that divide the sides of an equilateral triangle into n equal parts.

The programs for A344657, there is no canonical definition to state claims against.
-/

/-! ## A344657.P14395530021732455936

`A344896(n+1)-A344279(n+1)+1`
-/

namespace A344657.P14395530021732455936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344896 (n + 1) - A344279 (n + 1) + 1

end

end A344657.P14395530021732455936

/-! ## A344657.P14194151829510066995

`A344896(n+1)+1-(A343755(n+1)-A145979(A003215(n)))`
-/

namespace A344657.P14194151829510066995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344896 (n + 1) + 1 - (A343755 (n + 1) - A145979 (A003215 n).toNat)

end

end A344657.P14194151829510066995

/-! ## A344657.P14920106799654481025

`A344896(n+1)+1-(A343755(n+1)-A016825(A005448(n+1)))`
-/

namespace A344657.P14920106799654481025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344896 (n + 1) + 1 - (A343755 (n + 1) - A016825 (A005448 (n + 1)).toNat)

end

end A344657.P14920106799654481025

/-! ## A344657.P6621602751419227948

`A344896(n+1)+1-(A343755(n+1)-A008486(A051890(n+1)))`
-/

namespace A344657.P6621602751419227948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344896 (n + 1) + 1 - (A343755 (n + 1) - A008486 (A051890 (n + 1)).toNat)

end

end A344657.P6621602751419227948

/-!
# A344658: a(n) = a^a - b^b + c^c - ... -+ d^d where the decimal expansion of n is abc...d.

The programs for A344658, there is no canonical definition to state claims against.
-/

/-! ## A344658.P1930177689142350182

`A262188(n)^A062279(n)-A171765(n)²`
-/

namespace A344658.P1930177689142350182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262188 n : ℚ) ^ (A062279 n : ℤ) - (A171765 n ^ 2 : ℚ)

end

end A344658.P1930177689142350182

/-! ## A344658.P4531577878201582944

`C((n%10)^n, C(n, ∑{digits}[n, #]))`
-/

namespace A344658.P4531577878201582944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n % 10) ^ n) (Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A344658.P4531577878201582944

/-! ## A344658.P6170209392136070181

`C(n^∑{digits}[n, #], (1-∑{digits}[n, #]+n)^3)`
-/

namespace A344658.P6170209392136070181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) ((1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)) ^ 3).toNat

end

end A344658.P6170209392136070181

/-! ## A344658.P12930015853704131519

`C(n^n, A166906(n-n%10))`
-/

namespace A344658.P12930015853704131519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ n) (A166906 (n - n % 10)).toNat

end

end A344658.P12930015853704131519

/-! ## A344658.P506137929984240772

`A031347(A308126(n+1))^n`
-/

namespace A344658.P506137929984240772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A308126 (n + 1)).toNat ^ n

end

end A344658.P506137929984240772

/-!
# A344661: Integers k such that k^2 is the sum of two Fibonacci numbers.

The programs for A344661, there is no canonical definition to state claims against.
-/

/-! ## A344661.P16414448472971024330

`sqrt(A111378(n+1))`
-/

namespace A344661.P16414448472971024330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A111378 (n + 1) : ℝ)

end

end A344661.P16414448472971024330

/-! ## A344661.P11375595336721255355

`A100665(eq[A237451(n+1), A316767(n+1)])`
-/

namespace A344661.P11375595336721255355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100665 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A344661.P11375595336721255355

/-! ## A344661.P244975312246717622

`A111378(n+1)^2^A008683(A181758(n+1))`
-/

namespace A344661.P244975312246717622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111378 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) : ℝ)

end

end A344661.P244975312246717622

/-!
# A344662: a(n) is the number of preference profiles in the stable marriage problem with n men and n women so that they form n pairs of people of different genders who rank each other first, and so that the men's preferences arranged in a matrix form a Latin square.

The programs for A344662, there is no canonical definition to state claims against.
-/

/-! ## A344662.P8483405981501121548

`gcd(A343696(n+1), A344663(n+1))`
-/

namespace A344662.P8483405981501121548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343696 (n + 1)) (A344663 (n + 1))

end

end A344662.P8483405981501121548

/-! ## A344662.P9685746604057556762

`sqrt(A343698(n+1))*sqrt(A344664(n+1))`
-/

namespace A344662.P9685746604057556762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343698 (n + 1) : ℝ) * Real.sqrt (A344664 (n + 1) : ℝ)

end

end A344662.P9685746604057556762

/-!
# A344663: a(n) is the number of preference profiles in the stable marriage problem with n men and n women where the men's preferences form a Latin square when arranged in a matrix, and no man and woman rank each other first.

The programs for A344663, there is no canonical definition to state claims against.
-/

/-! ## A344663.P446372214846308310

`n*A344662(n+1)*A344658(n)`
-/

namespace A344663.P446372214846308310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A344662 (n + 1) * A344658 n

end

end A344663.P446372214846308310

/-!
# A344664: a(n) is the number of preference profiles in the stable marriage problem with n men and n women where both the men's and the women's preferences form a Latin square when arranged in a matrix. In addition, it is possible to arrange all people into n man-woman couples such that they rank each other first.

The programs for A344664, there is no canonical definition to state claims against.
-/

/-! ## A344664.P2926901188917102655

`A343697(n+1)/(n+1)!`
-/

namespace A344664.P2926901188917102655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343697 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A344664.P2926901188917102655

/-! ## A344664.P11966011713326487639

`A000479(n+1)*A002860(n+1)`
-/

namespace A344664.P11966011713326487639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000479 (n + 1) * A002860 (n + 1)

end

end A344664.P11966011713326487639

/-! ## A344664.P13072601693187652946

`A343697(n+1)/A000142(n+1)`
-/

namespace A344664.P13072601693187652946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343697 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A344664.P13072601693187652946

/-! ## A344664.P12559549811510011305

`A000479(n+1)²*A000142(n+1)`
-/

namespace A344664.P12559549811510011305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000479 (n + 1) ^ 2 * A000142 (n + 1)

end

end A344664.P12559549811510011305

/-! ## A344664.P8309285090418958962

`A002860(n+1)/A000142(n+1)*A002860(n+1)`
-/

namespace A344664.P8309285090418958962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002860 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A002860 (n + 1) : ℚ)

end

end A344664.P8309285090418958962

/-!
# A344665: a(n) is the number of preference profiles in the stable marriage problem with n men and n women, where both the men's preferences and women's preferences form a Latin square when arranged in a matrix, with no paired man and woman who rank each other first.

The programs for A344665, there is no canonical definition to state claims against.
-/

/-! ## A344665.P9055507342545632614

`A000166(n+1)*A344664(n+1)`
-/

namespace A344665.P9055507342545632614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) * A344664 (n + 1)

end

end A344665.P9055507342545632614

/-!
# A344667: a(n) is the number of preference profiles in the stable marriage problem with 4 men and 4 women that generate n possible stable matchings.

The programs for A344667, there is no canonical definition to state claims against.
-/

/-! ## A344667.P15220079107307483128

`12*12*A351430(n+1)`
-/

namespace A344667.P15220079107307483128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (12 * A351430 (n + 1))

end

end A344667.P15220079107307483128

/-!
# A344669: a(n) is the number of preference profiles in the stable marriage problem with n men and n women that generate the maximum possible number of stable matchings.

The programs for A344669, there is no canonical definition to state claims against.
-/

/-! ## A344669.P1778579292917797276

`A368433(n+1)*A010790(n)`
-/

namespace A344669.P1778579292917797276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368433 (n + 1) * A010790 n

end

end A344669.P1778579292917797276

/-!
# A344673: Numbers k such that the expansion of the inverse of the k-th cyclotomic polynomial has a coefficient other than -1, 0 or 1.

The programs for A344673, there is no canonical definition to state claims against.
-/

/-! ## A344673.P16732822682617762874

`A344706(A004902(n+2))`
-/

namespace A344673.P16732822682617762874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344706 (A004902 (n + 2)).toNat

end

end A344673.P16732822682617762874

/-! ## A344673.P11400835283606253545

`A344706(A004913(n+2))`
-/

namespace A344673.P11400835283606253545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344706 (A004913 (n + 2)).toNat

end

end A344673.P11400835283606253545

/-! ## A344673.P14035960168697925330

`A344706(A032551(n+2))`
-/

namespace A344673.P14035960168697925330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344706 (A032551 (n + 2)).toNat

end

end A344673.P14035960168697925330

/-!
# A344674: a(n) is the maximum value such that there is an n X n binary orthogonal matrix with every row having at least a(n) ones.

The programs for A344674, there is no canonical definition to state claims against.
-/

/-! ## A344674.P13310483789495972589

`gcd(n^3-∑[2*n], ∏[or(1, n)])`
-/

namespace A344674.P13310483789495972589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A344674.P13310483789495972589

/-! ## A344674.P18341170902406011322

`gcd(n*(9*n-7), ∏[n^(n%2)])`
-/

namespace A344674.P18341170902406011322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * ((9 * n : ℤ) - 7)) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344674.P18341170902406011322

/-! ## A344674.P17760909203955630273

`(n*gcd(4, n)^a(n-1))%(n+1)` with `a(0)=1`
-/

namespace A344674.P17760909203955630273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.gcd 4 n ^ a (n - 1) % (n + 1)

end

end A344674.P17760909203955630273

/-! ## A344674.P12119922930522664208

`or(lcm(8, n)/8, ∑{d}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A344674.P12119922930522664208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)) ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ)

end

end A344674.P12119922930522664208

/-! ## A344674.P8722122122252732648

`gcd(n!*∑[n/n!], -∏[-n^and(1, n)])`
-/

namespace A344674.P8722122122252732648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ Nat.land 1 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (-(∏ j ∈ Finset.range (n + 1), f2 j))

end

end A344674.P8722122122252732648

/-!
# A344675: a(n) = Sum_{k=1..n} floor(n^3/k^3).

The programs for A344675, there is no canonical definition to state claims against.
-/

/-! ## A344675.P6647732750292717115

`A013937(Δ[∑[n]²])`
-/

namespace A344675.P6647732750292717115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A344675.P6647732750292717115

/-! ## A344675.P814051002291389848

`record[A013937(A008834(n+1))]`
-/

namespace A344675.P814051002291389848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (A008834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344675.P814051002291389848

/-! ## A344675.P17984148691156484310

`record[A013937(A283367(n+1)^3)]`
-/

namespace A344675.P17984148691156484310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (A283367 (n + 1) ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344675.P17984148691156484310

/-! ## A344675.P2295744248476360161

`A013937(A184628(n+1))^ceil(sin(n)²)`
-/

namespace A344675.P2295744248476360161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013937 (A184628 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A344675.P2295744248476360161

/-! ## A344675.P8172363338685266279

`A013937(A184628(n+1))-A000007(n)`
-/

namespace A344675.P8172363338685266279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (A184628 (n + 1)).toNat - A000007 n

end

end A344675.P8172363338685266279

/-!
# A344676: The number of n X n binary orthogonal matrices having an equal number of ones in each row.

The programs for A344676, there is no canonical definition to state claims against.
-/

/-! ## A344676.P838647356976582397

`∑{e}[or(2, n+1)^(n+1), #!]`
-/

namespace A344676.P838647356976582397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)

end

end A344676.P838647356976582397

/-! ## A344676.P5418570700096572226

`(n+1)!*A169695(n^n)`
-/

namespace A344676.P5418570700096572226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A169695 (n ^ n)

end

end A344676.P5418570700096572226

/-! ## A344676.P3540166872548724713

`(n+1)!*A001222(n+1)!!!`
-/

namespace A344676.P3540166872548724713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.factorial (Nat.factorial (Nat.factorial (A001222 (n + 1)).toNat))

end

end A344676.P3540166872548724713

/-!
# A344677: Number of partitions of n containing a prime number of primes and an arbitrary number of nonprimes.

The programs for A344677, there is no canonical definition to state claims against.
-/

/-! ## A344677.P6986371343934860041

`A308824(n)+A003056(A167512(n))`
-/

namespace A344677.P6986371343934860041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308824 n + A003056 (A167512 n).toNat

end

end A344677.P6986371343934860041

/-! ## A344677.P14112219529492064917

`A321728(n+1)-A185283(A000045(n))`
-/

namespace A344677.P14112219529492064917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 1) - A185283 (A000045 n).toNat

end

end A344677.P14112219529492064917

/-! ## A344677.P3143496902890404106

`A000701(n)-A317748(A000701(n+3))`
-/

namespace A344677.P3143496902890404106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n - A317748 (A000701 (n + 3)).toNat

end

end A344677.P3143496902890404106

/-!
# A344679: Number of 2-matchings of the n-th centered square grid graph.

The programs for A344679, there is no canonical definition to state claims against.
-/

/-! ## A344679.P1204632222836961327

`and(-2, A243645(A005408(n)))`
-/

namespace A344679.P1204632222836961327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A243645 (A005408 n).toNat)

end

end A344679.P1204632222836961327

/-! ## A344679.P11282318226667185747

`A243645(2*n+1)+A057428(n)`
-/

namespace A344679.P11282318226667185747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243645 (2 * n + 1) + A057428 n

end

end A344679.P11282318226667185747

/-! ## A344679.P3972813378537542987

`A243645(2*n+1)+A028310(2*n)-(2*n+1)`
-/

namespace A344679.P3972813378537542987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243645 (2 * n + 1) + (A028310 (2 * n) - (2 * n + 1 : ℤ))

end

end A344679.P3972813378537542987

/-! ## A344679.P10769955244026025746

`and(A005408(2*n)-(4*n+3), A243645(2*n+1))`
-/

namespace A344679.P10769955244026025746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (2 * n) - (4 * n + 3 : ℤ)) (A243645 (2 * n + 1))

end

end A344679.P10769955244026025746

/-! ## A344679.P5843164070894946769

`A243645(A005408(n))-n/A028310(n)`
-/

namespace A344679.P5843164070894946769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243645 (A005408 n).toNat : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A344679.P5843164070894946769

/-! ## A344679.P11179996991370059230

`A243645(A005408(n))-char[A038722(n+1)]`
-/

namespace A344679.P11179996991370059230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243645 (A005408 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344679.P11179996991370059230

/-! ## A344679.P17706228291028501684

`A243645(2*n+1)-A001221(A001316(n))`
-/

namespace A344679.P17706228291028501684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243645 (2 * n + 1) - A001221 (A001316 n).toNat

end

end A344679.P17706228291028501684

/-! ## A344679.P7364554150965010032

`A243645(A005408(n))-A001221(A001316(n))²`
-/

namespace A344679.P7364554150965010032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243645 (A005408 n).toNat - A001221 (A001316 n).toNat ^ 2

end

end A344679.P7364554150965010032

/-!
# A344680: Number of partitions of n that are also multiplicity multiset of a partition of 2n.

The programs for A344680, there is no canonical definition to state claims against.
-/

/-! ## A344680.P8486370781313710146

`A337584(ceil(acot(n))+2*n²-1)`
-/

namespace A344680.P8486370781313710146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + ((2 * n ^ 2 : ℤ) - 1)).toNat

end

end A344680.P8486370781313710146

/-! ## A344680.P2341391224738069658

`A337584(A004277(n²))`
-/

namespace A344680.P2341391224738069658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A004277 (n ^ 2)).toNat

end

end A344680.P2341391224738069658

/-! ## A344680.P4720907402946272549

`A337584(A057543(n²))`
-/

namespace A344680.P4720907402946272549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A057543 (n ^ 2)).toNat

end

end A344680.P4720907402946272549

/-! ## A344680.P2500305765051617560

`A337584(2*A253909(n))`
-/

namespace A344680.P2500305765051617560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (2 * A253909 n).toNat

end

end A344680.P2500305765051617560

/-! ## A344680.P3273960885367445033

`A337584(A004275(n²+1))`
-/

namespace A344680.P3273960885367445033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A004275 (n ^ 2 + 1)).toNat

end

end A344680.P3273960885367445033

/-! ## A344680.P7145348030153165679

`A337584(A028310(2*n²))`
-/

namespace A344680.P7145348030153165679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A028310 (2 * n ^ 2)).toNat

end

end A344680.P7145348030153165679

/-! ## A344680.P7340561849198644161

`A337584(record[A176889(n+1)])`
-/

namespace A344680.P7340561849198644161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344680.P7340561849198644161

/-! ## A344680.P5967221274601115688

`A337584(A253909(n)+n²)`
-/

namespace A344680.P5967221274601115688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A344680.P5967221274601115688

/-! ## A344680.P5772109420550400806

`A337584(A289443(n)-n²)`
-/

namespace A344680.P5772109420550400806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (A289443 n - (n ^ 2 : ℤ)).toNat

end

end A344680.P5772109420550400806

/-! ## A344680.P11168950909864132726

`A337584(n²+A028310(n²))`
-/

namespace A344680.P11168950909864132726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A344680.P11168950909864132726

/-!
# A344682: a(0) = 0, and for any n > 0, a(n) = A022290(A059893(A003754(n+1))).

The programs for A344682, there is no canonical definition to state claims against.
-/

/-! ## A344682.P12265340627595482614

`A344962(n)+a(floor(acot(n)))` with `a(0)=0`
-/

namespace A344682.P12265340627595482614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344962 n + a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A344682.P12265340627595482614

/-! ## A344682.P1388550003317818057

`A344962(n-a(floor(acot(n))))` with `a(0)=0`
-/

namespace A344682.P1388550003317818057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344962 ((n : ℤ) - a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A344682.P1388550003317818057

/-! ## A344682.P17394052106495514022

`A344962(a((n-1)*char[1])+n)` with `a(0)=0`
-/

namespace A344682.P17394052106495514022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344962 (a (((n : ℤ) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat + (n : ℤ)).toNat

end

end A344682.P17394052106495514022

/-! ## A344682.P14953675636257033157

`A344962(abs(1-n)+1)%Δ[n²]`
-/

namespace A344682.P14953675636257033157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344962 (|1 - (n : ℤ)| + 1).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A344682.P14953675636257033157

/-! ## A344682.P13176299422959733832

`A344962(A028310(n))-floor(acot(n))`
-/

namespace A344682.P13176299422959733832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344962 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A344682.P13176299422959733832

/-! ## A344682.P10631919828239904212

`A344962(n)+a(A028310(n)-n)` with `a(0)=0`
-/

namespace A344682.P10631919828239904212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344962 n + a (A028310 n - (n : ℤ)).toNat

end

end A344682.P10631919828239904212

/-! ## A344682.P7309883304234588156

`A344962(round(sqrt(n²+1)))-A000007(n)`
-/

namespace A344682.P7309883304234588156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344962 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A000007 n

end

end A344682.P7309883304234588156

/-! ## A344682.P5157620906965006159

`A344962(n)+a(A000040(n+1)%2-1)` with `a(0)=0`
-/

namespace A344682.P5157620906965006159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344962 n + a (Int.tmod (A000040 (n + 1)) 2 - 1).toNat

end

end A344682.P5157620906965006159

/-! ## A344682.P6296229157159083430

`A344962(A028310(n))-A000010(n+2)%2`
-/

namespace A344682.P6296229157159083430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344962 (A028310 n).toNat - Int.tmod (A000010 (n + 2)) 2

end

end A344682.P6296229157159083430

/-! ## A344682.P11100284275760746162

`A000040(n+1)%2*A344962(A028310(n))`
-/

namespace A344682.P11100284275760746162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A344962 (A028310 n).toNat

end

end A344682.P11100284275760746162

/-!
# A344683: Dirichlet convolution of the Euler totient function with itself, applied twice.

The programs for A344683, the canonical program `A344683.P10035867171660024197` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344683 has offset 1).

The definition of A344683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344683.P12831810004194473641

`∑{d}[n+1, #*A143275((n+1)/#)]`
-/

namespace A344683.P12831810004194473641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P12831810004194473641

namespace A344683

/-- `∑{d}[n+1, #*A143275((n+1)/#)]` -/
def P12831810004194473641.Spec : Prop :=
  ∀ n, P12831810004194473641.a n = A344683 (n + 1)

end A344683

/-! ## A344683.P6084625865039575985

`∑{d}[n+1, A007431(#)*A018804((n+1)/#)]`
-/

namespace A344683.P6084625865039575985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P6084625865039575985

namespace A344683

/-- `∑{d}[n+1, A007431(#)*A018804((n+1)/#)]` -/
def P6084625865039575985.Spec : Prop :=
  ∀ n, P6084625865039575985.a n = A344683 (n + 1)

end A344683

/-! ## A344683.P14735852815641478006

`∑{d}[n+1, A000010(#)*A029935((n+1)/#)]`
-/

namespace A344683.P14735852815641478006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P14735852815641478006

namespace A344683

/-- `∑{d}[n+1, A000010(#)*A029935((n+1)/#)]` -/
def P14735852815641478006.Spec : Prop :=
  ∀ n, P14735852815641478006.a n = A344683 (n + 1)

end A344683

/-! ## A344683.P11954700533087150030

`∑{d}[n+1, A007428(#)*A034718((n+1)/#)]`
-/

namespace A344683.P11954700533087150030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P11954700533087150030

namespace A344683

/-- `∑{d}[n+1, A007428(#)*A034718((n+1)/#)]` -/
def P11954700533087150030.Spec : Prop :=
  ∀ n, P11954700533087150030.a n = A344683 (n + 1)

end A344683

/-! ## A344683.P9054454805951650524

`∑{d}[n+1, A007432(#)*A038040((n+1)/#)]`
-/

namespace A344683.P9054454805951650524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P9054454805951650524

namespace A344683

/-- `∑{d}[n+1, A007432(#)*A038040((n+1)/#)]` -/
def P9054454805951650524.Spec : Prop :=
  ∀ n, P9054454805951650524.a n = A344683 (n + 1)

end A344683

/-! ## A344683.P16302781013392804992

`∑{d}[n+1, A046692(#)*A349692((n+1)/#)]`
-/

namespace A344683.P16302781013392804992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P16302781013392804992

namespace A344683

/-- `∑{d}[n+1, A046692(#)*A349692((n+1)/#)]` -/
def P16302781013392804992.Spec : Prop :=
  ∀ n, P16302781013392804992.a n = A344683 (n + 1)

end A344683

/-! ## A344683.P1226547853115509376

`∑{d}[n+1, A007427(#)*A390258((n+1)/#)]`
-/

namespace A344683.P1226547853115509376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A390258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P1226547853115509376

namespace A344683

/-- `∑{d}[n+1, A007427(#)*A390258((n+1)/#)]` -/
def P1226547853115509376.Spec : Prop :=
  ∀ n, P1226547853115509376.a n = A344683 (n + 1)

end A344683

/-! ## A344683.P10035867171660024197

`∑{d}[n+1, A174466(#)*A247343((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344683

/-- `∑{d}[n+1, A174466(#)*A247343((n+1)/#)]` -/
def P10035867171660024197.Spec : Prop :=
  ∀ n, P10035867171660024197.a n = A344683 (n + 1)

theorem P10035867171660024197.correct : P10035867171660024197.Spec := by
  intro n
  simp only [A344683, Nat.add_sub_cancel]

end A344683

/-!
# A344684: Sum of two consecutive products of Fibonacci and Pell numbers: F(n)*P(n) + F(n+1)*P(n+1).

The programs for A344684, the canonical program `A344684.P15399548066310970202` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344684 has offset 0).

The definition of A344684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344684.P15399548066310970202

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=46`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344684

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P15399548066310970202.Spec : Prop :=
  ∀ n, P15399548066310970202.a n = A344684 n

theorem P15399548066310970202.correct : P15399548066310970202.Spec := by
  intro n
  simp only [A344684]

end A344684

/-! ## A344684.P18378446446557627028

`A001582(n)+A000045(n)*A000129(n)`
-/

namespace A344684.P18378446446557627028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001582 n + A000045 n * A000129 n

end

end A344684.P18378446446557627028

namespace A344684

/-- `A001582(n)+A000045(n)*A000129(n)` -/
def P18378446446557627028.Spec : Prop :=
  ∀ n, P18378446446557627028.a n = A344684 n

end A344684

/-! ## A344684.P9346984389864079045

`record[Δ[A002965(n)*A272912(n+1)]]`
-/

namespace A344684.P9346984389864079045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 n * A272912 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344684.P9346984389864079045

namespace A344684

/-- `record[Δ[A002965(n)*A272912(n+1)]]` -/
def P9346984389864079045.Spec : Prop :=
  ∀ n, P9346984389864079045.a n = A344684 n

end A344684

/-!
# A344685: Triangle T(n, k) obtained from the array N1(a, b) = a^2 + a*b - b^2, for a >= 0 and b >= 0, read by upwards antidiagonals.

The programs for A344685, there is no canonical definition to state claims against.
-/

/-! ## A344685.P7824564804720781116

`-A344686(∑[2*n]%comp[∑[n]])`
-/

namespace A344685.P7824564804720781116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344686 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A344685.P7824564804720781116

/-! ## A344685.P9456350660844201979

`A091435(n)-(n-C(∑[char[∑[n]]], 2))²`
-/

namespace A344685.P9456350660844201979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2

end

end A344685.P9456350660844201979

/-! ## A344685.P9756801810415665436

`A001105(∑[char[∑[n+1]]])-((n-C(∑[char[∑[n]]], 2))²+(n-C(∑[char[∑[n+1]]], 2))*∑[char[∑[n+1]]])`
-/

namespace A344685.P9756801810415665436
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

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f11 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (∑ j ∈ Finset.range (n + 1), f1 j) - (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)) ^ 2 + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f10 j : ℕ) : ℤ))

end

end A344685.P9756801810415665436

/-! ## A344685.P4250392018078705357

`-A344686(A061579(n))`
-/

namespace A344685.P4250392018078705357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344686 (A061579 n).toNat

end

end A344685.P4250392018078705357

/-! ## A344685.P12181046199284392703

`A091435(n)-A143844(n)`
-/

namespace A344685.P12181046199284392703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n - A143844 n

end

end A344685.P12181046199284392703

/-! ## A344685.P17655980554250380128

`A335821(n)-A079904(n)`
-/

namespace A344685.P17655980554250380128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 n - A079904 n

end

end A344685.P17655980554250380128

/-! ## A344685.P4982655384389095751

`A091435(n)-A002262(n)²`
-/

namespace A344685.P4982655384389095751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n - A002262 n ^ 2

end

end A344685.P4982655384389095751

/-! ## A344685.P14449114836287163673

`2*A091435(n)-A073254(n)`
-/

namespace A344685.P14449114836287163673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091435 n - A073254 n

end

end A344685.P14449114836287163673

/-! ## A344685.P15402437199361412583

`A073254(n)-2*A143844(n)`
-/

namespace A344685.P15402437199361412583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - 2 * A143844 n

end

end A344685.P15402437199361412583

/-! ## A344685.P15529225225135990290

`A281385(n)-2*A079904(n)`
-/

namespace A344685.P15529225225135990290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n - 2 * A079904 n

end

end A344685.P15529225225135990290

/-!
# A344686: Triangle T(n, k) obtained from the array N2(a, b) = a^2 - a*b - b^2, for a >= 0 and b >= 0, read by upwards antidiagonals.

The programs for A344686, there is no canonical definition to state claims against.
-/

/-! ## A344686.P6245018859413983253

`-A344685(∑[2*n]%comp[∑[n]])`
-/

namespace A344686.P6245018859413983253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344685 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A344686.P6245018859413983253

/-! ## A344686.P1096268761702776702

`comp[comp[∑[n]]+n]-A141433(n+1)`
-/

namespace A344686.P1096268761702776702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A141433 (n + 1)

end

end A344686.P1096268761702776702

/-! ## A344686.P2750063980721621975

`eq[0, floor(2*sqrt(n))%2]-A141434(n+1)`
-/

namespace A344686.P2750063980721621975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A141434 (n + 1)

end

end A344686.P2750063980721621975

/-! ## A344686.P2292921417555899094

`(n+1-C(comp[∑[n]]-n, 2))²-A079904(n)`
-/

namespace A344686.P2292921417555899094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 - A079904 n

end

end A344686.P2292921417555899094

/-! ## A344686.P6403029417847997301

`(n+1-C(comp[∑[n]]-n, 2))²+1-A076110(n+1)`
-/

namespace A344686.P6403029417847997301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 + (1 - A076110 (n + 1))

end

end A344686.P6403029417847997301

/-! ## A344686.P1966191078470154089

`-A344685(A061579(n))`
-/

namespace A344686.P1966191078470154089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344685 (A061579 n).toNat

end

end A344686.P1966191078470154089

/-! ## A344686.P2910247558253333733

`A025581(n)²-A079904(n)`
-/

namespace A344686.P2910247558253333733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2 - A079904 n

end

end A344686.P2910247558253333733

/-! ## A344686.P11318512773446812385

`A095831(n+1)-A079904(n)`
-/

namespace A344686.P11318512773446812385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) - A079904 n

end

end A344686.P11318512773446812385

/-! ## A344686.P1993294856686334791

`A063656(n)-A141434(n+1)`
-/

namespace A344686.P1993294856686334791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n - A141434 (n + 1)

end

end A344686.P1993294856686334791

/-! ## A344686.P8452512642030946553

`A095832(n+1)-A159797(n)`
-/

namespace A344686.P8452512642030946553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) - A159797 n

end

end A344686.P8452512642030946553

/-!
# A344687: a(n) is the lowest nonnegative exponent k such that n!^k is the product of the divisors of n!.

The programs for A344687, the canonical program `A344687.P14717226967310331617` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344687 has offset 1).

The definition of A344687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344687.P14717226967310331617

`floor(∑[A038024(n+1)/2])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344687

/-- `floor(∑[A038024(n+1)/2])` -/
def P14717226967310331617.Spec : Prop :=
  ∀ n, P14717226967310331617.a n = A344687 (n + 1)

theorem P14717226967310331617.correct : P14717226967310331617.Spec := by
  intro n
  simp only [A344687, Nat.add_sub_cancel]

end A344687

/-! ## A344687.P9818320079471728335

`floor(A027423(n+1)/2)`
-/

namespace A344687.P9818320079471728335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027423 (n + 1) : ℚ) / 2⌋

end

end A344687.P9818320079471728335

namespace A344687

/-- `floor(A027423(n+1)/2)` -/
def P9818320079471728335.Spec : Prop :=
  ∀ n, P9818320079471728335.a n = A344687 (n + 1)

end A344687

/-! ## A344687.P6395677546077516298

`ceil(A153823(n+1)/2)`
-/

namespace A344687.P6395677546077516298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153823 (n + 1) : ℚ) / 2⌉

end

end A344687.P6395677546077516298

namespace A344687

/-- `ceil(A153823(n+1)/2)` -/
def P6395677546077516298.Spec : Prop :=
  ∀ n, P6395677546077516298.a n = A344687 (n + 1)

end A344687

/-! ## A344687.P17501617720261217304

`lcm(A001222(2*n+1), A027423(n+1))/2`
-/

namespace A344687.P17501617720261217304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001222 (2 * n + 1)) (A027423 (n + 1)) : ℚ) / 2

end

end A344687.P17501617720261217304

namespace A344687

/-- `lcm(A001222(2*n+1), A027423(n+1))/2` -/
def P17501617720261217304.Spec : Prop :=
  ∀ n, P17501617720261217304.a n = (A344687 (n + 1) : ℚ)

end A344687

/-! ## A344687.P12360844453303539676

`floor(Δ[∑[A027423(n)]/2])`
-/

namespace A344687.P12360844453303539676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A344687.P12360844453303539676

namespace A344687

/-- `floor(Δ[∑[A027423(n)]/2])` -/
def P12360844453303539676.Spec : Prop :=
  ∀ n, P12360844453303539676.a n = A344687 (n + 1)

end A344687

/-!
# A344690: a(n) is the number of multisets of size n consisting of permutations of n elements.

The programs for A344690, there is no canonical definition to state claims against.
-/

/-! ## A344690.P296005251370343453

`C((n+1)!+n, n+1)`
-/

namespace A344690.P296005251370343453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 1) + n) (n + 1)

end

end A344690.P296005251370343453

/-! ## A344690.P3499528659247526132

`C(∏[n+1]+n, n+1)`
-/

namespace A344690.P3499528659247526132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j + n) (n + 1)

end

end A344690.P3499528659247526132

/-!
# A344691: Irregular triangle T(n,k) read by rows, where T(n,k) is the number of preference profiles in the stable marriage problem with n men and n women such that there exists a stable matching with an egalitarian cost of k.

The programs for A344691, there is no canonical definition to state claims against.
-/

/-! ## A344691.P8371157364790319365

`A344692(n+1)-A344692(A348947(n+1))`
-/

namespace A344691.P8371157364790319365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344692 (n + 1) - A344692 (A348947 (n + 1)).toNat

end

end A344691.P8371157364790319365

/-!
# A344692: Irregular triangle read by rows in which T(n,k) is the number of stable matchings in the stable marriage problem with n men and n women such that there exists a stable matching with an egalitarian cost of k.

The programs for A344692, there is no canonical definition to state claims against.
-/

/-! ## A344692.P13922467176871952229

`A344691(n+1)+A344691(A348947(n+1))`
-/

namespace A344692.P13922467176871952229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344691 (n + 1) + A344691 (A348947 (n + 1)).toNat

end

end A344692.P13922467176871952229

/-!
# A344693: a(n) is the number of joint preference profiles in a stable marriage problem with n men and n women.

The programs for A344693, there is no canonical definition to state claims against.
-/

/-! ## A344693.P16991184045358044353

`(n+1)!*A002860(n+1)`
-/

namespace A344693.P16991184045358044353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A002860 (n + 1)

end

end A344693.P16991184045358044353

/-! ## A344693.P2496053550332229906

`A000142(n+1)*A002860(n+1)`
-/

namespace A344693.P2496053550332229906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A002860 (n + 1)

end

end A344693.P2496053550332229906

/-! ## A344693.P13459936088662703001

`A000142(n+1)²*A000479(n+1)`
-/

namespace A344693.P13459936088662703001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) ^ 2 * A000479 (n + 1)

end

end A344693.P13459936088662703001

/-! ## A344693.P6736474638396032893

`∏[A076499(n+1)]*A002860(n+1)`
-/

namespace A344693.P6736474638396032893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002860 (n + 1)

end

end A344693.P6736474638396032893

/-! ## A344693.P9885214550647407954

`A343697(n+1)/A000479(n+1)`
-/

namespace A344693.P9885214550647407954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343697 (n + 1) : ℚ) / (A000479 (n + 1) : ℚ)

end

end A344693.P9885214550647407954

/-!
# A344695: a(n) = gcd(sigma(n), psi(n)), where sigma is the sum of divisors function, A000203, and psi is the Dedekind psi function, A001615.

The programs for A344695, the canonical program `A344695.P9470126833009122734` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344695 has offset 1).

The definition of A344695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344695.P18436922908130184135

`A000203(n+1)/A344696(n+1)`
-/

namespace A344695.P18436922908130184135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A344696 (n + 1) : ℚ)

end

end A344695.P18436922908130184135

namespace A344695

/-- `A000203(n+1)/A344696(n+1)` -/
def P18436922908130184135.Spec : Prop :=
  ∀ n, P18436922908130184135.a n = (A344695 (n + 1) : ℚ)

end A344695

/-! ## A344695.P6689571782928567924

`A001615(n+1)/A344697(n+1)`
-/

namespace A344695.P6689571782928567924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A344697 (n + 1) : ℚ)

end

end A344695.P6689571782928567924

namespace A344695

/-- `A001615(n+1)/A344697(n+1)` -/
def P6689571782928567924.Spec : Prop :=
  ∀ n, P6689571782928567924.a n = (A344695 (n + 1) : ℚ)

end A344695

/-! ## A344695.P16726093201990416360

`∑{d}[n+1, A347230(#)]`
-/

namespace A344695.P16726093201990416360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347230 d

end

end A344695.P16726093201990416360

namespace A344695

/-- `∑{d}[n+1, A347230(#)]` -/
def P16726093201990416360.Spec : Prop :=
  ∀ n, P16726093201990416360.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P1257817000361138061

`A347231(n+1)+A347230(n+1)`
-/

namespace A344695.P1257817000361138061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347231 (n + 1) + A347230 (n + 1)

end

end A344695.P1257817000361138061

namespace A344695

/-- `A347231(n+1)+A347230(n+1)` -/
def P1257817000361138061.Spec : Prop :=
  ∀ n, P1257817000361138061.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P2951677039365294268

`A347229(n+1)-A347228(n+1)`
-/

namespace A344695.P2951677039365294268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1) - A347228 (n + 1)

end

end A344695.P2951677039365294268

namespace A344695

/-- `A347229(n+1)-A347228(n+1)` -/
def P2951677039365294268.Spec : Prop :=
  ∀ n, P2951677039365294268.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P9470126833009122734

`gcd(A000203(n+1), A001615(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344695

/-- `gcd(A000203(n+1), A001615(n+1))` -/
def P9470126833009122734.Spec : Prop :=
  ∀ n, (P9470126833009122734.a n : ℤ) = A344695 (n + 1)

theorem P9470126833009122734.correct : P9470126833009122734.Spec := by
  intro n
  simp only [A344695, Nat.add_sub_cancel]

end A344695

/-! ## A344695.P11896946358002290423

`gcd(A143348(n+1), A158523(n+1))`
-/

namespace A344695.P11896946358002290423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A158523 (n + 1))

end

end A344695.P11896946358002290423

namespace A344695

/-- `gcd(A143348(n+1), A158523(n+1))` -/
def P11896946358002290423.Spec : Prop :=
  ∀ n, (P11896946358002290423.a n : ℤ) = A344695 (n + 1)

end A344695

/-! ## A344695.P5710755472128688279

`(A048146(n+1)+A034448(n+1))/A344696(n+1)`
-/

namespace A344695.P5710755472128688279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A344696 (n + 1) : ℚ)

end

end A344695.P5710755472128688279

namespace A344695

/-- `(A048146(n+1)+A034448(n+1))/A344696(n+1)` -/
def P5710755472128688279.Spec : Prop :=
  ∀ n, P5710755472128688279.a n = (A344695 (n + 1) : ℚ)

end A344695

/-! ## A344695.P13610352674227195285

`(A244963(n+1)+A001615(n+1))/A344696(n+1)`
-/

namespace A344695.P13610352674227195285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244963 (n + 1) + A001615 (n + 1) : ℚ) / (A344696 (n + 1) : ℚ)

end

end A344695.P13610352674227195285

namespace A344695

/-- `(A244963(n+1)+A001615(n+1))/A344696(n+1)` -/
def P13610352674227195285.Spec : Prop :=
  ∀ n, P13610352674227195285.a n = (A344695 (n + 1) : ℚ)

end A344695

/-! ## A344695.P1753972632139231220

`A048250(A055491(n+1))`
-/

namespace A344695.P1753972632139231220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A055491 (n + 1)).toNat

end

end A344695.P1753972632139231220

namespace A344695

/-- `A048250(A055491(n+1))` -/
def P1753972632139231220.Spec : Prop :=
  ∀ n, P1753972632139231220.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P10117748239623463384

`A367990(A011262(n+1))`
-/

namespace A344695.P10117748239623463384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367990 (A011262 (n + 1)).toNat

end

end A344695.P10117748239623463384

namespace A344695

/-- `A367990(A011262(n+1))` -/
def P10117748239623463384.Spec : Prop :=
  ∀ n, P10117748239623463384.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P16308258542264754576

`A367990(A064549(n+1))`
-/

namespace A344695.P16308258542264754576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367990 (A064549 (n + 1)).toNat

end

end A344695.P16308258542264754576

namespace A344695

/-- `A367990(A064549(n+1))` -/
def P16308258542264754576.Spec : Prop :=
  ∀ n, P16308258542264754576.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P16193119306047664142

`A069915(Δ[A069891(n)]²)`
-/

namespace A344695.P16193119306047664142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069915 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A344695.P16193119306047664142

namespace A344695

/-- `A069915(Δ[A069891(n)]²)` -/
def P16193119306047664142.Spec : Prop :=
  ∀ n, P16193119306047664142.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P14301613674619475068

`A048250(A007913(n+1)²)`
-/

namespace A344695.P14301613674619475068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A007913 (n + 1) ^ 2).toNat

end

end A344695.P14301613674619475068

namespace A344695

/-- `A048250(A007913(n+1)²)` -/
def P14301613674619475068.Spec : Prop :=
  ∀ n, P14301613674619475068.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P11691341213986110226

`A000203(A056554((n+1)²))`
-/

namespace A344695.P11691341213986110226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A056554 ((n + 1) ^ 2)).toNat

end

end A344695.P11691341213986110226

namespace A344695

/-- `A000203(A056554((n+1)²))` -/
def P11691341213986110226.Spec : Prop :=
  ∀ n, P11691341213986110226.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P12818467513327678976

`A069290(A007913(n+1)²)`
-/

namespace A344695.P12818467513327678976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A007913 (n + 1) ^ 2).toNat

end

end A344695.P12818467513327678976

namespace A344695

/-- `A069290(A007913(n+1)²)` -/
def P12818467513327678976.Spec : Prop :=
  ∀ n, P12818467513327678976.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P214041752113007155

`A048250(A071975(n+1)²)`
-/

namespace A344695.P214041752113007155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A071975 (n + 1) ^ 2).toNat

end

end A344695.P214041752113007155

namespace A344695

/-- `A048250(A071975(n+1)²)` -/
def P214041752113007155.Spec : Prop :=
  ∀ n, P214041752113007155.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P18086501277965681579

`A348963(A007913(n+1)²)`
-/

namespace A344695.P18086501277965681579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348963 (A007913 (n + 1) ^ 2).toNat

end

end A344695.P18086501277965681579

namespace A344695

/-- `A348963(A007913(n+1)²)` -/
def P18086501277965681579.Spec : Prop :=
  ∀ n, P18086501277965681579.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P4799963103725477900

`A367990(A007913(n+1)²)`
-/

namespace A344695.P4799963103725477900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367990 (A007913 (n + 1) ^ 2).toNat

end

end A344695.P4799963103725477900

namespace A344695

/-- `A367990(A007913(n+1)²)` -/
def P4799963103725477900.Spec : Prop :=
  ∀ n, P4799963103725477900.a n = A344695 (n + 1)

end A344695

/-! ## A344695.P2504717748964204934

`A367990((n+1)*A007947(n+1))`
-/

namespace A344695.P2504717748964204934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367990 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A344695.P2504717748964204934

namespace A344695

/-- `A367990((n+1)*A007947(n+1))` -/
def P2504717748964204934.Spec : Prop :=
  ∀ n, P2504717748964204934.a n = A344695 (n + 1)

end A344695

/-!
# A344696: a(n) = sigma(n) / gcd(sigma(n), A001615(n)).

The programs for A344696, the canonical program `A344696.P8047274283818792486` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344696 has offset 1).

The definition of A344696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344696.P8047274283818792486

`A000203(n+1)/A344695(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344696

/-- `A000203(n+1)/A344695(n+1)` -/
def P8047274283818792486.Spec : Prop :=
  ∀ n, P8047274283818792486.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P12008009596502903790

`(A001065(n+1)+1+n)/A344695(n+1)`
-/

namespace A344696.P12008009596502903790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P12008009596502903790

namespace A344696

/-- `(A001065(n+1)+1+n)/A344695(n+1)` -/
def P12008009596502903790.Spec : Prop :=
  ∀ n, P12008009596502903790.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P8792012871873185937

`(A048146(n+1)+A034448(n+1))/A344695(n+1)`
-/

namespace A344696.P8792012871873185937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P8792012871873185937

namespace A344696

/-- `(A048146(n+1)+A034448(n+1))/A344695(n+1)` -/
def P8792012871873185937.Spec : Prop :=
  ∀ n, P8792012871873185937.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P7095627947499157965

`(A146076(n+1)+A000593(n+1))/A344695(n+1)`
-/

namespace A344696.P7095627947499157965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P7095627947499157965

namespace A344696

/-- `(A146076(n+1)+A000593(n+1))/A344695(n+1)` -/
def P7095627947499157965.Spec : Prop :=
  ∀ n, P7095627947499157965.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P14371273225744547757

`(A178637(n+1)+A023889(n+1))/A344695(n+1)`
-/

namespace A344696.P14371273225744547757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178637 (n + 1) + A023889 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P14371273225744547757

namespace A344696

/-- `(A178637(n+1)+A023889(n+1))/A344695(n+1)` -/
def P14371273225744547757.Spec : Prop :=
  ∀ n, P14371273225744547757.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P16669413858594492265

`(A244963(n+1)+A001615(n+1))/A344695(n+1)`
-/

namespace A344696.P16669413858594492265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244963 (n + 1) + A001615 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P16669413858594492265

namespace A344696

/-- `(A244963(n+1)+A001615(n+1))/A344695(n+1)` -/
def P16669413858594492265.Spec : Prop :=
  ∀ n, P16669413858594492265.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P670261462571216119

`(A326126(n+1)+A007913(n+1))/A344695(n+1)`
-/

namespace A344696.P670261462571216119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326126 (n + 1) + A007913 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P670261462571216119

namespace A344696

/-- `(A326126(n+1)+A007913(n+1))/A344695(n+1)` -/
def P670261462571216119.Spec : Prop :=
  ∀ n, P670261462571216119.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P6683982301020203628

`A000203(n+1)/(A347231(n+1)+A347230(n+1))`
-/

namespace A344696.P6683982301020203628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A347231 (n + 1) + A347230 (n + 1) : ℚ)

end

end A344696.P6683982301020203628

namespace A344696

/-- `A000203(n+1)/(A347231(n+1)+A347230(n+1))` -/
def P6683982301020203628.Spec : Prop :=
  ∀ n, P6683982301020203628.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P11861958322087351007

`A000203(n+1)/(A347229(n+1)-A347228(n+1))`
-/

namespace A344696.P11861958322087351007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A347229 (n + 1) - A347228 (n + 1) : ℚ)

end

end A344696.P11861958322087351007

namespace A344696

/-- `A000203(n+1)/(A347229(n+1)-A347228(n+1))` -/
def P11861958322087351007.Spec : Prop :=
  ∀ n, P11861958322087351007.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P2591552158547664014

`(A003959(n+1)-A348029(n+1))/A344695(n+1)`
-/

namespace A344696.P2591552158547664014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348029 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344696.P2591552158547664014

namespace A344696

/-- `(A003959(n+1)-A348029(n+1))/A344695(n+1)` -/
def P2591552158547664014.Spec : Prop :=
  ∀ n, P2591552158547664014.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P338131669136270462

`A000203(n+1)/A001615(n+1)*A344697(n+1)`
-/

namespace A344696.P338131669136270462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A344697 (n + 1) : ℚ)

end

end A344696.P338131669136270462

namespace A344696

/-- `A000203(n+1)/A001615(n+1)*A344697(n+1)` -/
def P338131669136270462.Spec : Prop :=
  ∀ n, P338131669136270462.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P4227380097651397315

`A348047(n+1)/A344695(n+1)*A348048(n+1)`
-/

namespace A344696.P4227380097651397315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348047 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ) * (A348048 (n + 1) : ℚ)

end

end A344696.P4227380097651397315

namespace A344696

/-- `A348047(n+1)/A344695(n+1)*A348048(n+1)` -/
def P4227380097651397315.Spec : Prop :=
  ∀ n, P4227380097651397315.a n = (A344696 (n + 1) : ℚ)

end A344696

/-! ## A344696.P5992826336312097769

`and(A086827(n+1), A389087(n+1))`
-/

namespace A344696.P5992826336312097769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A389087 (n + 1))

end

end A344696.P5992826336312097769

namespace A344696

/-- `and(A086827(n+1), A389087(n+1))` -/
def P5992826336312097769.Spec : Prop :=
  ∀ n, P5992826336312097769.a n = A344696 (n + 1)

end A344696

/-! ## A344696.P12267732472703680546

`gcd(A180491(n+1), A389087(n+1))`
-/

namespace A344696.P12267732472703680546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180491 (n + 1)) (A389087 (n + 1))

end

end A344696.P12267732472703680546

namespace A344696

/-- `gcd(A180491(n+1), A389087(n+1))` -/
def P12267732472703680546.Spec : Prop :=
  ∀ n, (P12267732472703680546.a n : ℤ) = A344696 (n + 1)

end A344696

/-!
# A344697: a(n) = A001615(n) / gcd(sigma(n), A001615(n)).

The programs for A344697, the canonical program `A344697.P12307976047928248051` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344697 has offset 1).

The definition of A344697 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344697.P12307976047928248051

`A001615(n+1)/A344695(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344697

/-- `A001615(n+1)/A344695(n+1)` -/
def P12307976047928248051.Spec : Prop :=
  ∀ n, P12307976047928248051.a n = (A344697 (n + 1) : ℚ)

end A344697

/-! ## A344697.P7630604194194169338

`A001615(n+1)/(A347231(n+1)+A347230(n+1))`
-/

namespace A344697.P7630604194194169338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A347231 (n + 1) + A347230 (n + 1) : ℚ)

end

end A344697.P7630604194194169338

namespace A344697

/-- `A001615(n+1)/(A347231(n+1)+A347230(n+1))` -/
def P7630604194194169338.Spec : Prop :=
  ∀ n, P7630604194194169338.a n = (A344697 (n + 1) : ℚ)

end A344697

/-! ## A344697.P5066789854251272613

`A001615(n+1)/(A347229(n+1)-A347228(n+1))`
-/

namespace A344697.P5066789854251272613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A347229 (n + 1) - A347228 (n + 1) : ℚ)

end

end A344697.P5066789854251272613

namespace A344697

/-- `A001615(n+1)/(A347229(n+1)-A347228(n+1))` -/
def P5066789854251272613.Spec : Prop :=
  ∀ n, P5066789854251272613.a n = (A344697 (n + 1) : ℚ)

end A344697

/-! ## A344697.P5349663777574816104

`A344696(n+1)-A244963(n+1)/A344695(n+1)`
-/

namespace A344697.P5349663777574816104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344696 (n + 1) : ℚ) - (A244963 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344697.P5349663777574816104

namespace A344697

/-- `A344696(n+1)-A244963(n+1)/A344695(n+1)` -/
def P5349663777574816104.Spec : Prop :=
  ∀ n, P5349663777574816104.a n = (A344697 (n + 1) : ℚ)

end A344697

/-! ## A344697.P18272503329602566403

`A001615(n+1)/A000203(n+1)*A344696(n+1)`
-/

namespace A344697.P18272503329602566403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A344696 (n + 1) : ℚ)

end

end A344697.P18272503329602566403

namespace A344697

/-- `A001615(n+1)/A000203(n+1)*A344696(n+1)` -/
def P18272503329602566403.Spec : Prop :=
  ∀ n, P18272503329602566403.a n = (A344697 (n + 1) : ℚ)

end A344697

/-! ## A344697.P11578426778108694185

`A003557(n+1)*A048250(n+1)/A344695(n+1)`
-/

namespace A344697.P11578426778108694185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A048250 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344697.P11578426778108694185

namespace A344697

/-- `A003557(n+1)*A048250(n+1)/A344695(n+1)` -/
def P11578426778108694185.Spec : Prop :=
  ∀ n, P11578426778108694185.a n = (A344697 (n + 1) : ℚ)

end A344697

/-! ## A344697.P1995524992977721805

`A342915(n+1)*A342917(n+1)/A344695(n+1)`
-/

namespace A344697.P1995524992977721805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342915 (n + 1) * A342917 (n + 1) : ℚ) / (A344695 (n + 1) : ℚ)

end

end A344697.P1995524992977721805

namespace A344697

/-- `A342915(n+1)*A342917(n+1)/A344695(n+1)` -/
def P1995524992977721805.Spec : Prop :=
  ∀ n, P1995524992977721805.a n = (A344697 (n + 1) : ℚ)

end A344697

/-!
# A344698: a(n) = A344696(A108951(n)).

The programs for A344698, there is no canonical definition to state claims against.
-/

/-! ## A344698.P17099782437844843186

`A344696(A329602(3*(n+1))*A329602(n+1))`
-/

namespace A344698.P17099782437844843186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (A329602 (3 * (n + 1)) * A329602 (n + 1)).toNat

end

end A344698.P17099782437844843186

/-! ## A344698.P15758035044109121281

`A344696(A108951(n+1)%A069272(n+1))`
-/

namespace A344698.P15758035044109121281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (Int.tmod (A108951 (n + 1)) (A069272 (n + 1))).toNat

end

end A344698.P15758035044109121281

/-! ## A344698.P5018750242505149792

`A344696((A331188((n+1)²)/A331188(n+1))%A069272(n+1))`
-/

namespace A344698.P5018750242505149792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (Int.tmod (SequenceMachineLib.roundAway ((A331188 ((n + 1) ^ 2) : ℚ) / (A331188 (n + 1) : ℚ))) (A069272 (n + 1))).toNat

end

end A344698.P5018750242505149792

/-! ## A344698.P2689205108567961860

`A344696(gcd(∏{p}[n+1, (#%n)%#], A108951(n+1)))`
-/

namespace A344698.P2689205108567961860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p % n % p : ℕ) : ℤ) (A108951 (n + 1)))

end

end A344698.P2689205108567961860

/-! ## A344698.P11325220693606951853

`A344696(gcd(A108951(n+1), A269668(n+1)))`
-/

namespace A344698.P11325220693606951853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344696 (Int.gcd (A108951 (n + 1)) (A269668 (n + 1)))

end

end A344698.P11325220693606951853

/-!
# A344699: a(n) = A344697(A108951(n)).

The programs for A344699, there is no canonical definition to state claims against.
-/

/-! ## A344699.P5756058023830704291

`A344697(A329602(3*(n+1))*A329602(n+1))`
-/

namespace A344699.P5756058023830704291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344697 (A329602 (3 * (n + 1)) * A329602 (n + 1)).toNat

end

end A344699.P5756058023830704291

/-! ## A344699.P15266355236470438857

`A344697(A108951(n+1)%A069272(n+1))`
-/

namespace A344699.P15266355236470438857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344697 (Int.tmod (A108951 (n + 1)) (A069272 (n + 1))).toNat

end

end A344699.P15266355236470438857

/-! ## A344699.P17718092660538458205

`A344697(gcd(∏{p}[n+1, (#%n)%#], A108951(n+1)))`
-/

namespace A344699.P17718092660538458205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344697 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p % n % p : ℕ) : ℤ) (A108951 (n + 1)))

end

end A344699.P17718092660538458205

/-! ## A344699.P5582794421602979278

`A344697(gcd(A108951(n+1), A269668(n+1)))`
-/

namespace A344699.P5582794421602979278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344697 (Int.gcd (A108951 (n + 1)) (A269668 (n + 1)))

end

end A344699.P5582794421602979278

/-! ## A344699.P13799482161607139788

`A102443(A319997(A344698(n+1)))`
-/

namespace A344699.P13799482161607139788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A319997 (A344698 (n + 1)).toNat).toNat

end

end A344699.P13799482161607139788

