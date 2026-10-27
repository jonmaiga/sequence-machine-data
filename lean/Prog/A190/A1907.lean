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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A190700: Positions of 1 in A190698.

The programs for A190700, the canonical program `A190700.P18144237897161414675` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190700 has offset 1).

The definition of A190700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190700.P18144237897161414675

`eq[1, A190698(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190700

/-- `eq[1, A190698(n+1)]+1` -/
def P18144237897161414675.Spec : Prop :=
  ∀ n, (P18144237897161414675.a n : ℤ) = A190700 (n + 1)

theorem P18144237897161414675.correct : P18144237897161414675.Spec := by
  intro n
  simp only [A190700, Nat.add_sub_cancel]

end A190700

/-! ## A190700.P9069614623255987211

`eq[1, A190698(A028310(n))]`
-/

namespace A190700.P9069614623255987211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P9069614623255987211

namespace A190700

/-- `eq[1, A190698(A028310(n))]` -/
def P9069614623255987211.Spec : Prop :=
  ∀ n, (P9069614623255987211.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P8905617652930198754

`eq[1, A190698(A000038(n)+n)]`
-/

namespace A190700.P8905617652930198754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P8905617652930198754

namespace A190700

/-- `eq[1, A190698(A000038(n)+n)]` -/
def P8905617652930198754.Spec : Prop :=
  ∀ n, (P8905617652930198754.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P15615251408919029254

`eq[1, A190698(A065033(2*n))]`
-/

namespace A190700.P15615251408919029254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P15615251408919029254

namespace A190700

/-- `eq[1, A190698(A065033(2*n))]` -/
def P15615251408919029254.Spec : Prop :=
  ∀ n, (P15615251408919029254.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P781636109531672415

`eq[1, A190698(A123108(2*n))]`
-/

namespace A190700.P781636109531672415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P781636109531672415

namespace A190700

/-- `eq[1, A190698(A123108(2*n))]` -/
def P781636109531672415.Spec : Prop :=
  ∀ n, (P781636109531672415.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P1678606032730775370

`eq[2, A022838(A016813(n))%4]`
-/

namespace A190700.P1678606032730775370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022838 (A016813 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P1678606032730775370

namespace A190700

/-- `eq[2, A022838(A016813(n))%4]` -/
def P1678606032730775370.Spec : Prop :=
  ∀ n, (P1678606032730775370.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P1322743830542762724

`eq[1, A056594(A195120(4*n+1))]`
-/

namespace A190700.P1322743830542762724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A195120 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P1322743830542762724

namespace A190700

/-- `eq[1, A056594(A195120(4*n+1))]` -/
def P1322743830542762724.Spec : Prop :=
  ∀ n, (P1322743830542762724.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P16697899378793680273

`eq[1, A007814(A022838(4*n+1))]`
-/

namespace A190700.P16697899378793680273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A022838 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P16697899378793680273

namespace A190700

/-- `eq[1, A007814(A022838(4*n+1))]` -/
def P16697899378793680273.Spec : Prop :=
  ∀ n, (P16697899378793680273.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P5521635958334021530

`eq[1, A190698(A233583(n+1))]`
-/

namespace A190700.P5521635958334021530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P5521635958334021530

namespace A190700

/-- `eq[1, A190698(A233583(n+1))]` -/
def P5521635958334021530.Spec : Prop :=
  ∀ n, (P5521635958334021530.a n : ℤ) = A190700 (n + 1)

end A190700

/-! ## A190700.P1673178427579171177

`eq[2, A285099(A198269(4*n+1))]`
-/

namespace A190700.P1673178427579171177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A198269 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190700.P1673178427579171177

namespace A190700

/-- `eq[2, A285099(A198269(4*n+1))]` -/
def P1673178427579171177.Spec : Prop :=
  ∀ n, (P1673178427579171177.a n : ℤ) = A190700 (n + 1)

end A190700

/-!
# A190701: Positions of 2 in A190698.

The programs for A190701, the canonical program `A190701.P8397655334725418112` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190701 has offset 1).

The definition of A190701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190701.P8397655334725418112

`eq[2, A190698(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190701

/-- `eq[2, A190698(n+1)]+1` -/
def P8397655334725418112.Spec : Prop :=
  ∀ n, (P8397655334725418112.a n : ℤ) = A190701 (n + 1)

theorem P8397655334725418112.correct : P8397655334725418112.Spec := by
  intro n
  simp only [A190701, Nat.add_sub_cancel]

end A190701

/-! ## A190701.P12357095647384467087

`eq[2, A190698(A028310(n))]`
-/

namespace A190701.P12357095647384467087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190701.P12357095647384467087

namespace A190701

/-- `eq[2, A190698(A028310(n))]` -/
def P12357095647384467087.Spec : Prop :=
  ∀ n, (P12357095647384467087.a n : ℤ) = A190701 (n + 1)

end A190701

/-! ## A190701.P5890927187213150166

`eq[2, A190698(A065033(2*n))]`
-/

namespace A190701.P5890927187213150166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190701.P5890927187213150166

namespace A190701

/-- `eq[2, A190698(A065033(2*n))]` -/
def P5890927187213150166.Spec : Prop :=
  ∀ n, (P5890927187213150166.a n : ℤ) = A190701 (n + 1)

end A190701

/-! ## A190701.P11755512041849291355

`eq[2, A190698(A123108(2*n))]`
-/

namespace A190701.P11755512041849291355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190701.P11755512041849291355

namespace A190701

/-- `eq[2, A190698(A123108(2*n))]` -/
def P11755512041849291355.Spec : Prop :=
  ∀ n, (P11755512041849291355.a n : ℤ) = A190701 (n + 1)

end A190701

/-! ## A190701.P1378243726956955435

`eq[3, A195120(4*n+1)%4]`
-/

namespace A190701.P1378243726956955435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195120 (4 * n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190701.P1378243726956955435

namespace A190701

/-- `eq[3, A195120(4*n+1)%4]` -/
def P1378243726956955435.Spec : Prop :=
  ∀ n, (P1378243726956955435.a n : ℤ) = A190701 (n + 1)

end A190701

/-! ## A190701.P12731538828226439615

`eq[3, A022838(A016813(n))%4]`
-/

namespace A190701.P12731538828226439615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022838 (A016813 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190701.P12731538828226439615

namespace A190701

/-- `eq[3, A022838(A016813(n))%4]` -/
def P12731538828226439615.Spec : Prop :=
  ∀ n, (P12731538828226439615.a n : ℤ) = A190701 (n + 1)

end A190701

/-! ## A190701.P8411029370553651396

`eq[1, A325939(A182778(4*n+1))]`
-/

namespace A190701.P8411029370553651396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (A182778 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190701.P8411029370553651396

namespace A190701

/-- `eq[1, A325939(A182778(4*n+1))]` -/
def P8411029370553651396.Spec : Prop :=
  ∀ n, (P8411029370553651396.a n : ℤ) = A190701 (n + 1)

end A190701

/-! ## A190701.P7892142051833426561

`eq[A190224(2*n+1)+1, A190224(4*n+1)]`
-/

namespace A190701.P7892142051833426561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190701.P7892142051833426561

namespace A190701

/-- `eq[A190224(2*n+1)+1, A190224(4*n+1)]` -/
def P7892142051833426561.Spec : Prop :=
  ∀ n, (P7892142051833426561.a n : ℤ) = A190701 (n + 1)

end A190701

/-! ## A190701.P6022087037051950826

`eq[1, A007814(A054406(A017089(n)))]`
-/

namespace A190701.P6022087037051950826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A054406 (A017089 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190701.P6022087037051950826

namespace A190701

/-- `eq[1, A007814(A054406(A017089(n)))]` -/
def P6022087037051950826.Spec : Prop :=
  ∀ n, (P6022087037051950826.a n : ℤ) = A190701 (n + 1)

end A190701

/-!
# A190702: Positions of 3 in A190698.

The programs for A190702, the canonical program `A190702.P10150179771770399436` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190702 has offset 1).

The definition of A190702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190702.P10150179771770399436

`eq[3, A190698(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190702

/-- `eq[3, A190698(n+1)]+1` -/
def P10150179771770399436.Spec : Prop :=
  ∀ n, (P10150179771770399436.a n : ℤ) = A190702 (n + 1)

theorem P10150179771770399436.correct : P10150179771770399436.Spec := by
  intro n
  simp only [A190702, Nat.add_sub_cancel]

end A190702

/-! ## A190702.P4051642441621823631

`eq[3, A190698(A000038(n)+n)]`
-/

namespace A190702.P4051642441621823631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190702.P4051642441621823631

namespace A190702

/-- `eq[3, A190698(A000038(n)+n)]` -/
def P4051642441621823631.Spec : Prop :=
  ∀ n, (P4051642441621823631.a n : ℤ) = A190702 (n + 1)

end A190702

/-! ## A190702.P6337504090541723696

`eq[1, val(A003512(4*n+1), 2)]`
-/

namespace A190702.P6337504090541723696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003512 (4 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190702.P6337504090541723696

namespace A190702

/-- `eq[1, val(A003512(4*n+1), 2)]` -/
def P6337504090541723696.Spec : Prop :=
  ∀ n, (P6337504090541723696.a n : ℤ) = A190702 (n + 1)

end A190702

/-! ## A190702.P18320964812663435533

`eq[4, gcd(4, A022838(4*n+1))]`
-/

namespace A190702.P18320964812663435533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A022838 (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190702.P18320964812663435533

namespace A190702

/-- `eq[4, gcd(4, A022838(4*n+1))]` -/
def P18320964812663435533.Spec : Prop :=
  ∀ n, (P18320964812663435533.a n : ℤ) = A190702 (n + 1)

end A190702

/-! ## A190702.P825804724883462802

`eq[0, A022838(A016813(n))%4]`
-/

namespace A190702.P825804724883462802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022838 (A016813 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190702.P825804724883462802

namespace A190702

/-- `eq[0, A022838(A016813(n))%4]` -/
def P825804724883462802.Spec : Prop :=
  ∀ n, (P825804724883462802.a n : ℤ) = A190702 (n + 1)

end A190702

/-! ## A190702.P1966165139319307971

`eq[1, A007814(A195120(4*n+1))]`
-/

namespace A190702.P1966165139319307971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A195120 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190702.P1966165139319307971

namespace A190702

/-- `eq[1, A007814(A195120(4*n+1))]` -/
def P1966165139319307971.Spec : Prop :=
  ∀ n, (P1966165139319307971.a n : ℤ) = A190702 (n + 1)

end A190702

/-! ## A190702.P9432589473368999082

`eq[n, A056594(A195120(4*n+1))+A000027(n+1)]`
-/

namespace A190702.P9432589473368999082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A195120 (4 * n + 1)).toNat + A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190702.P9432589473368999082

namespace A190702

/-- `eq[n, A056594(A195120(4*n+1))+A000027(n+1)]` -/
def P9432589473368999082.Spec : Prop :=
  ∀ n, (P9432589473368999082.a n : ℤ) = A190702 (n + 1)

end A190702

/-! ## A190702.P4585009094851018770

`eq[1, A219977(A022838(A016813(n)))]`
-/

namespace A190702.P4585009094851018770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A022838 (A016813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190702.P4585009094851018770

namespace A190702

/-- `eq[1, A219977(A022838(A016813(n)))]` -/
def P4585009094851018770.Spec : Prop :=
  ∀ n, (P4585009094851018770.a n : ℤ) = A190702 (n + 1)

end A190702

/-!
# A190703: Positions of 4 in A190698.

The programs for A190703, the canonical program `A190703.P3098781758247083285` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190703 has offset 1).

The definition of A190703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190703.P3098781758247083285

`eq[4, A190698(n+2)]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190703

/-- `eq[4, A190698(n+2)]+2` -/
def P3098781758247083285.Spec : Prop :=
  ∀ n, (P3098781758247083285.a n : ℤ) = A190703 (n + 1)

theorem P3098781758247083285.correct : P3098781758247083285.Spec := by
  intro n
  simp only [A190703, Nat.add_sub_cancel]

end A190703

/-! ## A190703.P6584433972579521518

`eq[4, A190698(A028310(n))]`
-/

namespace A190703.P6584433972579521518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190703.P6584433972579521518

namespace A190703

/-- `eq[4, A190698(A028310(n))]` -/
def P6584433972579521518.Spec : Prop :=
  ∀ n, (P6584433972579521518.a n : ℤ) = A190703 (n + 1)

end A190703

/-! ## A190703.P731642068804449538

`eq[4, A190698(A000038(n)+n)]`
-/

namespace A190703.P731642068804449538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190703.P731642068804449538

namespace A190703

/-- `eq[4, A190698(A000038(n)+n)]` -/
def P731642068804449538.Spec : Prop :=
  ∀ n, (P731642068804449538.a n : ℤ) = A190703 (n + 1)

end A190703

/-! ## A190703.P14571884749245743739

`eq[4, A190698(A065033(2*n))]`
-/

namespace A190703.P14571884749245743739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190703.P14571884749245743739

namespace A190703

/-- `eq[4, A190698(A065033(2*n))]` -/
def P14571884749245743739.Spec : Prop :=
  ∀ n, (P14571884749245743739.a n : ℤ) = A190703 (n + 1)

end A190703

/-! ## A190703.P999876590571398803

`eq[2, A327180(2*n)+A327180(n)]`
-/

namespace A190703.P999876590571398803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 (2 * n) + A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190703.P999876590571398803

namespace A190703

/-- `eq[2, A327180(2*n)+A327180(n)]` -/
def P999876590571398803.Spec : Prop :=
  ∀ n, (P999876590571398803.a n : ℤ) = A190703 (n + 1)

end A190703

/-! ## A190703.P11568157716026498139

`eq[4, A190698(A233583(n+1))]`
-/

namespace A190703.P11568157716026498139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190703.P11568157716026498139

namespace A190703

/-- `eq[4, A190698(A233583(n+1))]` -/
def P11568157716026498139.Spec : Prop :=
  ∀ n, (P11568157716026498139.a n : ℤ) = A190703 (n + 1)

end A190703

/-!
# A190704: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,2) and [ ]=floor.

The programs for A190704, the canonical program `A190704.P1414293029831667405` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190704 has offset 1).

The definition of A190704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190704.P1414293029831667405

`A022838(4*n+6)-A004767(A022838(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190704

/-- `A022838(4*n+6)-A004767(A022838(n+1))` -/
def P1414293029831667405.Spec : Prop :=
  ∀ n, P1414293029831667405.a n = A190704 (n + 1)

theorem P1414293029831667405.correct : P1414293029831667405.Spec := by
  intro n
  simp only [A190704, Nat.add_sub_cancel]

end A190704

/-! ## A190704.P12127275304319611237

`and(A163780(A190665(3*n+4)), A190698(n+5))`
-/

namespace A190704.P12127275304319611237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163780 (A190665 (3 * n + 4)).toNat) (A190698 (n + 5))

end

end A190704.P12127275304319611237

namespace A190704

/-- `and(A163780(A190665(3*n+4)), A190698(n+5))` -/
def P12127275304319611237.Spec : Prop :=
  ∀ n, P12127275304319611237.a n = A190704 (n + 1)

end A190704

/-! ## A190704.P17396671834237258782

`A190669(A008574(n+1))+A010873(A079612(n+1)+A055648(n))`
-/

namespace A190704.P17396671834237258782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (A008574 (n + 1)).toNat + A010873 (A079612 (n + 1) + A055648 n).toNat

end

end A190704.P17396671834237258782

namespace A190704

/-- `A190669(A008574(n+1))+A010873(A079612(n+1)+A055648(n))` -/
def P17396671834237258782.Spec : Prop :=
  ∀ n, P17396671834237258782.a n = A190704 (n + 1)

end A190704

/-!
# A190705: a(n) = 6*n^2*(2*n + 1).

The programs for A190705, the canonical program `A190705.P1709839651688892883` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190705 has offset 0).

The definition of A190705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²*(2*n+1)` (program `A190705.P1709839651688892883`, by `A190705.P1709839651688892883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190705.P1709839651688892883

`6*n²*(2*n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190705

/-- `6*n²*(2*n+1)` -/
def P1709839651688892883.Spec : Prop :=
  ∀ n, (P1709839651688892883.a n : ℤ) = A190705 n

theorem P1709839651688892883.correct : P1709839651688892883.Spec := by
  intro n
  simp only [A190705]

end A190705

/-! ## A190705.P16230498263150244634

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=18, a(2)=120, a(3)=378`
-/

namespace A190705.P16230498263150244634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18, 120, 378] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A190705.P16230498263150244634

namespace A190705

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16230498263150244634.Spec : Prop :=
  ∀ n, P16230498263150244634.a n = A190705 n

theorem P16230498263150244634.correct : P16230498263150244634.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A190705, Nat.add_sub_cancel, A190705.P16230498263150244634.a, A190705.P1709839651688892883.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A190705, Nat.add_sub_cancel, A190705.P16230498263150244634.a, A190705.P1709839651688892883.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A190705

/-! ## A190705.P18086065717902090625

`lcm(6*n², Δ[6*n²])`
-/

namespace A190705.P18086065717902090625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (6 * n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A190705.P18086065717902090625

namespace A190705

/-- `lcm(6*n², Δ[6*n²])` -/
def P18086065717902090625.Spec : Prop :=
  ∀ n, (P18086065717902090625.a n : ℤ) = A190705 n

end A190705

/-! ## A190705.P5074102149921238645

`and(6*n*n*Δ[n²], -2)`
-/

namespace A190705.P5074102149921238645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((6 * n : ℤ) * ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))) (-2)

end

end A190705.P5074102149921238645

namespace A190705

/-- `and(6*n*n*Δ[n²], -2)` -/
def P5074102149921238645.Spec : Prop :=
  ∀ n, P5074102149921238645.a n = A190705 n

end A190705

/-! ## A190705.P10656464877371304070

`abs(n²*Δ[A033581(n)])`
-/

namespace A190705.P10656464877371304070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A190705.P10656464877371304070

namespace A190705

/-- `abs(n²*Δ[A033581(n)])` -/
def P10656464877371304070.Spec : Prop :=
  ∀ n, P10656464877371304070.a n = A190705 n

end A190705

/-! ## A190705.P17015137454915232308

`12*n²*A005408(n)/2`
-/

namespace A190705.P17015137454915232308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * ((n ^ 2 : ℤ) * A005408 n) : ℚ) / 2

end

end A190705.P17015137454915232308

namespace A190705

/-- `12*n²*A005408(n)/2` -/
def P17015137454915232308.Spec : Prop :=
  ∀ n, P17015137454915232308.a n = (A190705 n : ℚ)

theorem P17015137454915232308.correct : P17015137454915232308.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P17015137454915232308.a, A190705.P1709839651688892883.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P9180609179412863567

`A046142(n+1)-Δ[n²²]`
-/

namespace A190705.P9180609179412863567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046142 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A190705.P9180609179412863567

namespace A190705

/-- `A046142(n+1)-Δ[n²²]` -/
def P9180609179412863567.Spec : Prop :=
  ∀ n, P9180609179412863567.a n = A190705 n

end A190705

/-! ## A190705.P3205545497429034898

`2*(n*A195319(n)-1)+2`
-/

namespace A190705.P3205545497429034898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A195319 n - 1) + 2

end

end A190705.P3205545497429034898

namespace A190705

/-- `2*(n*A195319(n)-1)+2` -/
def P3205545497429034898.Spec : Prop :=
  ∀ n, P3205545497429034898.a n = A190705 n

theorem P3205545497429034898.correct : P3205545497429034898.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P3205545497429034898.a, A190705.P1709839651688892883.a, A195319, A195319.P14159989131175070761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P8745631090921178802

`(2*n+1)*A135453(n)/2`
-/

namespace A190705.P8745631090921178802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A135453 n : ℚ) / 2

end

end A190705.P8745631090921178802

namespace A190705

/-- `(2*n+1)*A135453(n)/2` -/
def P8745631090921178802.Spec : Prop :=
  ∀ n, P8745631090921178802.a n = (A190705 n : ℚ)

theorem P8745631090921178802.correct : P8745631090921178802.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P8745631090921178802.a, A190705.P1709839651688892883.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P1490227504190968495

`∑[6*n]*A002943(n)/(n+1)`
-/

namespace A190705.P1490227504190968495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002943 n : ℚ) / (n + 1 : ℚ)

end

end A190705.P1490227504190968495

namespace A190705

/-- `∑[6*n]*A002943(n)/(n+1)` -/
def P1490227504190968495.Spec : Prop :=
  ∀ n, P1490227504190968495.a n = (A190705 n : ℚ)

end A190705

/-! ## A190705.P18119827970557145133

`3*(2*n*A000217(2*n)-1)+3`
-/

namespace A190705.P18119827970557145133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 * n : ℤ) * A000217 (2 * n) - 1) + 3

end

end A190705.P18119827970557145133

namespace A190705

/-- `3*(2*n*A000217(2*n)-1)+3` -/
def P18119827970557145133.Spec : Prop :=
  ∀ n, P18119827970557145133.a n = A190705 n

theorem P18119827970557145133.correct : P18119827970557145133.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P18119827970557145133.a, A190705.P1709839651688892883.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P13936862986178450702

`A316224(n)+A035328(n)`
-/

namespace A190705.P13936862986178450702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + A035328 n

end

end A190705.P13936862986178450702

namespace A190705

/-- `A316224(n)+A035328(n)` -/
def P13936862986178450702.Spec : Prop :=
  ∀ n, P13936862986178450702.a n = A190705 n

theorem P13936862986178450702.correct : P13936862986178450702.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P13936862986178450702.a, A190705.P1709839651688892883.a, A035328, A035328.P8981633171215695012.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P5517545341304043715

`A191593(n)-A016778(n)`
-/

namespace A190705.P5517545341304043715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191593 n - A016778 n

end

end A190705.P5517545341304043715

namespace A190705

/-- `A191593(n)-A016778(n)` -/
def P5517545341304043715.Spec : Prop :=
  ∀ n, P5517545341304043715.a n = A190705 n

theorem P5517545341304043715.correct : P5517545341304043715.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P5517545341304043715.a, A190705.P1709839651688892883.a, A016778, A016778.P16000663877604072744.a, A191593, A191593.P1404647331602006259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P4749648098606494380

`A191745(n)-A045944(n)`
-/

namespace A190705.P4749648098606494380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191745 n - A045944 n

end

end A190705.P4749648098606494380

namespace A190705

/-- `A191745(n)-A045944(n)` -/
def P4749648098606494380.Spec : Prop :=
  ∀ n, P4749648098606494380.a n = A190705 n

theorem P4749648098606494380.correct : P4749648098606494380.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P4749648098606494380.a, A190705.P1709839651688892883.a, A045944, A045944.P1947840734344051753.a, A191745, A191745.P10900827607197799470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P7894494497452658645

`A087887(n)-A244726(n)`
-/

namespace A190705.P7894494497452658645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087887 n - A244726 n

end

end A190705.P7894494497452658645

namespace A190705

/-- `A087887(n)-A244726(n)` -/
def P7894494497452658645.Spec : Prop :=
  ∀ n, P7894494497452658645.a n = A190705 n

theorem P7894494497452658645.correct : P7894494497452658645.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P7894494497452658645.a, A190705.P1709839651688892883.a, A087887, A087887.P10011487220671445220.a, A244726, A244726.P8868489498822434277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P14085134114165515197

`A005910(n+1)-A103532(n)`
-/

namespace A190705.P14085134114165515197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005910 (n + 1) - A103532 n

end

end A190705.P14085134114165515197

namespace A190705

/-- `A005910(n+1)-A103532(n)` -/
def P14085134114165515197.Spec : Prop :=
  ∀ n, P14085134114165515197.a n = A190705 n

theorem P14085134114165515197.correct : P14085134114165515197.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P14085134114165515197.a, A190705.P1709839651688892883.a, A005910, A005910.P3096839229101576451.a, A103532, A103532.P17143324640364294921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P81920232890511134

`A193228(n+1)-A014641(n)`
-/

namespace A190705.P81920232890511134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 1) - A014641 n

end

end A190705.P81920232890511134

namespace A190705

/-- `A193228(n+1)-A014641(n)` -/
def P81920232890511134.Spec : Prop :=
  ∀ n, P81920232890511134.a n = A190705 n

theorem P81920232890511134.correct : P81920232890511134.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P81920232890511134.a, A190705.P1709839651688892883.a, A014641, A014641.P17401664217162026339.a, A193228, A193228.P3355603474307553126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P5958540636177351062

`A160674(n)-A392844(n+1)`
-/

namespace A190705.P5958540636177351062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - A392844 (n + 1)

end

end A190705.P5958540636177351062

namespace A190705

/-- `A160674(n)-A392844(n+1)` -/
def P5958540636177351062.Spec : Prop :=
  ∀ n, P5958540636177351062.a n = A190705 n

theorem P5958540636177351062.correct : P5958540636177351062.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P5958540636177351062.a, A190705.P1709839651688892883.a, A160674, A160674.P9701766189526379957.a, A392844, A392844.P4021648935066291138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P14823764911858199140

`(n*A017595(n))²/A017597(n)`
-/

namespace A190705.P14823764911858199140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * A017595 n) ^ 2 : ℚ) / (A017597 n : ℚ)

end

end A190705.P14823764911858199140

namespace A190705

/-- `(n*A017595(n))²/A017597(n)` -/
def P14823764911858199140.Spec : Prop :=
  ∀ n, P14823764911858199140.a n = (A190705 n : ℚ)

theorem P14823764911858199140.correct : P14823764911858199140.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P14823764911858199140.a, A190705.P1709839651688892883.a, A017595, A017595.P5808580862531119874.a, A017597, A017597.P17969072080987422215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-! ## A190705.P14011006306225591239

`3*n*A046092(2*n)/2`
-/

namespace A190705.P14011006306225591239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * A046092 (2 * n) : ℚ) / 2

end

end A190705.P14011006306225591239

namespace A190705

/-- `3*n*A046092(2*n)/2` -/
def P14011006306225591239.Spec : Prop :=
  ∀ n, P14011006306225591239.a n = (A190705 n : ℚ)

theorem P14011006306225591239.correct : P14011006306225591239.Spec := by
  intro n
  simp only [A190705, Nat.add_sub_cancel, A190705.P14011006306225591239.a, A190705.P1709839651688892883.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190705

/-!
# A190706: Positions of 1 in A190704.

The programs for A190706, the canonical program `A190706.P9832586445051373020` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190706 has offset 1).

The definition of A190706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190706.P9832586445051373020

`eq[1, A190704(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190706

/-- `eq[1, A190704(n+1)]+1` -/
def P9832586445051373020.Spec : Prop :=
  ∀ n, (P9832586445051373020.a n : ℤ) = A190706 (n + 1)

theorem P9832586445051373020.correct : P9832586445051373020.Spec := by
  intro n
  simp only [A190706, Nat.add_sub_cancel]

end A190706

/-! ## A190706.P10433200904391606083

`eq[1, A190704(A000007(n)+n)]`
-/

namespace A190706.P10433200904391606083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P10433200904391606083

namespace A190706

/-- `eq[1, A190704(A000007(n)+n)]` -/
def P10433200904391606083.Spec : Prop :=
  ∀ n, (P10433200904391606083.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P10911282531191598081

`eq[1, and(3, A198269(2*n+1))]`
-/

namespace A190706.P10911282531191598081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A198269 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P10911282531191598081

namespace A190706

/-- `eq[1, and(3, A198269(2*n+1))]` -/
def P10911282531191598081.Spec : Prop :=
  ∀ n, (P10911282531191598081.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P330467429225178280

`eq[1, A190704(A065033(2*n))]`
-/

namespace A190706.P330467429225178280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P330467429225178280

namespace A190706

/-- `eq[1, A190704(A065033(2*n))]` -/
def P330467429225178280.Spec : Prop :=
  ∀ n, (P330467429225178280.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P10405108760892982368

`eq[1, A190704(A123108(2*n))]`
-/

namespace A190706.P10405108760892982368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P10405108760892982368

namespace A190706

/-- `eq[1, A190704(A123108(2*n))]` -/
def P10405108760892982368.Spec : Prop :=
  ∀ n, (P10405108760892982368.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P10566795936967556847

`eq[1, A010873(A198269(2*n+1))]`
-/

namespace A190706.P10566795936967556847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A198269 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P10566795936967556847

namespace A190706

/-- `eq[1, A010873(A198269(2*n+1))]` -/
def P10566795936967556847.Spec : Prop :=
  ∀ n, (P10566795936967556847.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P8103140352346415776

`eq[cosh(A190669(2*n+1)), A190669(n+2)]`
-/

namespace A190706.P8103140352346415776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A190669 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A190706.P8103140352346415776

namespace A190706

/-- `eq[cosh(A190669(2*n+1)), A190669(n+2)]` -/
def P8103140352346415776.Spec : Prop :=
  ∀ n, (P8103140352346415776.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P11790031188848282959

`eq[1, A024548(n+9)%A024548(2*n+1)]`
-/

namespace A190706.P11790031188848282959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024548 (n + 9)) (A024548 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P11790031188848282959

namespace A190706

/-- `eq[1, A024548(n+9)%A024548(2*n+1)]` -/
def P11790031188848282959.Spec : Prop :=
  ∀ n, (P11790031188848282959.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P9241071420760736941

`eq[12, A010137(A194028(2*n+1))]`
-/

namespace A190706.P9241071420760736941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A194028 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P9241071420760736941

namespace A190706

/-- `eq[12, A010137(A194028(2*n+1))]` -/
def P9241071420760736941.Spec : Prop :=
  ∀ n, (P9241071420760736941.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P5929405309520254554

`eq[1, A180122(4*n+2)%4]`
-/

namespace A190706.P5929405309520254554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180122 (4 * n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P5929405309520254554

namespace A190706

/-- `eq[1, A180122(4*n+2)%4]` -/
def P5929405309520254554.Spec : Prop :=
  ∀ n, (P5929405309520254554.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P14704114980241872607

`eq[3, A180123(4*n+2)%4]`
-/

namespace A190706.P14704114980241872607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180123 (4 * n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P14704114980241872607

namespace A190706

/-- `eq[3, A180123(4*n+2)%4]` -/
def P14704114980241872607.Spec : Prop :=
  ∀ n, (P14704114980241872607.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P4801054513362313960

`eq[1, A135481(A182777(A016825(n)))]`
-/

namespace A190706.P4801054513362313960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A182777 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P4801054513362313960

namespace A190706

/-- `eq[1, A135481(A182777(A016825(n)))]` -/
def P4801054513362313960.Spec : Prop :=
  ∀ n, (P4801054513362313960.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P7277664211196582943

`eq[A009531(2*n+1)², A009531(A198269(2*n+1))]`
-/

namespace A190706.P7277664211196582943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A198269 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190706.P7277664211196582943

namespace A190706

/-- `eq[A009531(2*n+1)², A009531(A198269(2*n+1))]` -/
def P7277664211196582943.Spec : Prop :=
  ∀ n, (P7277664211196582943.a n : ℤ) = A190706 (n + 1)

end A190706

/-! ## A190706.P3383361207753773428

`eq[1, A190704(A233583(n+1))]`
-/

namespace A190706.P3383361207753773428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190706.P3383361207753773428

namespace A190706

/-- `eq[1, A190704(A233583(n+1))]` -/
def P3383361207753773428.Spec : Prop :=
  ∀ n, (P3383361207753773428.a n : ℤ) = A190706 (n + 1)

end A190706

/-!
# A190707: Positions of 2 in A190704.

The programs for A190707, the canonical program `A190707.P3032653202596194504` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190707 has offset 1).

The definition of A190707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190707.P3032653202596194504

`eq[2, A190704(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190707

/-- `eq[2, A190704(n+1)]+1` -/
def P3032653202596194504.Spec : Prop :=
  ∀ n, (P3032653202596194504.a n : ℤ) = A190707 (n + 1)

theorem P3032653202596194504.correct : P3032653202596194504.Spec := by
  intro n
  simp only [A190707, Nat.add_sub_cancel]

end A190707

/-! ## A190707.P3628291487518142926

`eq[2, A190704(A000007(n)+n)]`
-/

namespace A190707.P3628291487518142926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P3628291487518142926

namespace A190707

/-- `eq[2, A190704(A000007(n)+n)]` -/
def P3628291487518142926.Spec : Prop :=
  ∀ n, (P3628291487518142926.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P261496858142245660

`eq[2, and(3, A198269(2*n+1))]`
-/

namespace A190707.P261496858142245660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A198269 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P261496858142245660

namespace A190707

/-- `eq[2, and(3, A198269(2*n+1))]` -/
def P261496858142245660.Spec : Prop :=
  ∀ n, (P261496858142245660.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P2898784085539098585

`eq[2, A190704(A065033(2*n))]`
-/

namespace A190707.P2898784085539098585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P2898784085539098585

namespace A190707

/-- `eq[2, A190704(A065033(2*n))]` -/
def P2898784085539098585.Spec : Prop :=
  ∀ n, (P2898784085539098585.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P16826784059605149860

`eq[2, A190704(A123108(2*n))]`
-/

namespace A190707.P16826784059605149860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P16826784059605149860

namespace A190707

/-- `eq[2, A190704(A123108(2*n))]` -/
def P16826784059605149860.Spec : Prop :=
  ∀ n, (P16826784059605149860.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P17474834554716852942

`eq[1, A010873(A194028(2*n+1))]`
-/

namespace A190707.P17474834554716852942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A194028 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P17474834554716852942

namespace A190707

/-- `eq[1, A010873(A194028(2*n+1))]` -/
def P17474834554716852942.Spec : Prop :=
  ∀ n, (P17474834554716852942.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P15277971957513653126

`eq[2, A010873(A198269(2*n+1))]`
-/

namespace A190707.P15277971957513653126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A198269 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P15277971957513653126

namespace A190707

/-- `eq[2, A010873(A198269(2*n+1))]` -/
def P15277971957513653126.Spec : Prop :=
  ∀ n, (P15277971957513653126.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P12981712080073389235

`eq[cosh(A190669(n+1)), A190669(2*n+1)]`
-/

namespace A190707.P12981712080073389235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A190669 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A190707.P12981712080073389235

namespace A190707

/-- `eq[cosh(A190669(n+1)), A190669(2*n+1)]` -/
def P12981712080073389235.Spec : Prop :=
  ∀ n, (P12981712080073389235.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P9302995507692791994

`eq[0, A180123(4*n+2)%4]`
-/

namespace A190707.P9302995507692791994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180123 (4 * n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P9302995507692791994

namespace A190707

/-- `eq[0, A180123(4*n+2)%4]` -/
def P9302995507692791994.Spec : Prop :=
  ∀ n, (P9302995507692791994.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P17507038072331632302

`eq[A000265(A198081(4*n+2)), A198081(2*n+1)]`
-/

namespace A190707.P17507038072331632302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A198081 (4 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190707.P17507038072331632302

namespace A190707

/-- `eq[A000265(A198081(4*n+2)), A198081(2*n+1)]` -/
def P17507038072331632302.Spec : Prop :=
  ∀ n, (P17507038072331632302.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P15213733215224785584

`eq[2, A010123(A180122(4*n+2))]`
-/

namespace A190707.P15213733215224785584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A180122 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P15213733215224785584

namespace A190707

/-- `eq[2, A010123(A180122(4*n+2))]` -/
def P15213733215224785584.Spec : Prop :=
  ∀ n, (P15213733215224785584.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P8023025565999051961

`eq[2, A006519(A198081(4*n+2))]`
-/

namespace A190707.P8023025565999051961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A198081 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P8023025565999051961

namespace A190707

/-- `eq[2, A006519(A198081(4*n+2))]` -/
def P8023025565999051961.Spec : Prop :=
  ∀ n, (P8023025565999051961.a n : ℤ) = A190707 (n + 1)

end A190707

/-! ## A190707.P17485544909131814273

`eq[4, A010121(A180123(4*n+2))]`
-/

namespace A190707.P17485544909131814273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A180123 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190707.P17485544909131814273

namespace A190707

/-- `eq[4, A010121(A180123(4*n+2))]` -/
def P17485544909131814273.Spec : Prop :=
  ∀ n, (P17485544909131814273.a n : ℤ) = A190707 (n + 1)

end A190707

/-!
# A190708: Positions of 3 in A190704.

The programs for A190708, the canonical program `A190708.P26932379981093847` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190708 has offset 1).

The definition of A190708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190708.P26932379981093847

`eq[3, and(3, A198269(2*n+1))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190708

/-- `eq[3, and(3, A198269(2*n+1))]` -/
def P26932379981093847.Spec : Prop :=
  ∀ n, (P26932379981093847.a n : ℤ) = A190708 (n + 1)

theorem P26932379981093847.correct : P26932379981093847.Spec := by
  intro n
  simp only [A190708, Nat.add_sub_cancel]

end A190708

/-! ## A190708.P7176092122431281710

`eq[2, A010873(A194028(2*n+1))]`
-/

namespace A190708.P7176092122431281710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A194028 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190708.P7176092122431281710

namespace A190708

/-- `eq[2, A010873(A194028(2*n+1))]` -/
def P7176092122431281710.Spec : Prop :=
  ∀ n, (P7176092122431281710.a n : ℤ) = A190708 (n + 1)

end A190708

/-! ## A190708.P3997706684634522169

`eq[2*A190669(2*n+1), A190669(n+2)]`
-/

namespace A190708.P3997706684634522169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190669 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190708.P3997706684634522169

namespace A190708

/-- `eq[2*A190669(2*n+1), A190669(n+2)]` -/
def P3997706684634522169.Spec : Prop :=
  ∀ n, (P3997706684634522169.a n : ℤ) = A190708 (n + 1)

end A190708

/-! ## A190708.P13807861638766319661

`eq[1, A180123(4*n+2)%4]`
-/

namespace A190708.P13807861638766319661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180123 (4 * n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190708.P13807861638766319661

namespace A190708

/-- `eq[1, A180123(4*n+2)%4]` -/
def P13807861638766319661.Spec : Prop :=
  ∀ n, (P13807861638766319661.a n : ℤ) = A190708 (n + 1)

end A190708

/-! ## A190708.P9963412773133026178

`eq[1, A007814(A195120(4*n+2))]`
-/

namespace A190708.P9963412773133026178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A195120 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190708.P9963412773133026178

namespace A190708

/-- `eq[1, A007814(A195120(4*n+2))]` -/
def P9963412773133026178.Spec : Prop :=
  ∀ n, (P9963412773133026178.a n : ℤ) = A190708 (n + 1)

end A190708

/-! ## A190708.P17634889867912664835

`eq[1, A285099(A198269(2*n+1))]`
-/

namespace A190708.P17634889867912664835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A198269 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190708.P17634889867912664835

namespace A190708

/-- `eq[1, A285099(A198269(2*n+1))]` -/
def P17634889867912664835.Spec : Prop :=
  ∀ n, (P17634889867912664835.a n : ℤ) = A190708 (n + 1)

end A190708

/-! ## A190708.P17096882070105151522

`eq[2, A001511(A022838(4*n+2))]`
-/

namespace A190708.P17096882070105151522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A022838 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190708.P17096882070105151522

namespace A190708

/-- `eq[2, A001511(A022838(4*n+2))]` -/
def P17096882070105151522.Spec : Prop :=
  ∀ n, (P17096882070105151522.a n : ℤ) = A190708 (n + 1)

end A190708

/-! ## A190708.P15520050164555366261

`eq[0, A088705(A022838(A016825(n)))]`
-/

namespace A190708.P15520050164555366261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A022838 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190708.P15520050164555366261

namespace A190708

/-- `eq[0, A088705(A022838(A016825(n)))]` -/
def P15520050164555366261.Spec : Prop :=
  ∀ n, (P15520050164555366261.a n : ℤ) = A190708 (n + 1)

end A190708

/-! ## A190708.P15603352384781440240

`eq[A003602(A022838(4*n+2)), A022838(n+1)]`
-/

namespace A190708.P15603352384781440240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A022838 (4 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190708.P15603352384781440240

namespace A190708

/-- `eq[A003602(A022838(4*n+2)), A022838(n+1)]` -/
def P15603352384781440240.Spec : Prop :=
  ∀ n, (P15603352384781440240.a n : ℤ) = A190708 (n + 1)

end A190708

/-!
# A190709: Positions of 4 in A190704.

The programs for A190709, the canonical program `A190709.P10181155941524366987` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190709 has offset 1).

The definition of A190709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190709.P10181155941524366987

`eq[4, A190704(A000007(n)+n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190709

/-- `eq[4, A190704(A000007(n)+n)]` -/
def P10181155941524366987.Spec : Prop :=
  ∀ n, (P10181155941524366987.a n : ℤ) = A190709 (n + 1)

theorem P10181155941524366987.correct : P10181155941524366987.Spec := by
  intro n
  simp only [A190709, Nat.add_sub_cancel]

end A190709

/-! ## A190709.P8773715753185567277

`eq[4, A190704(A065033(2*n))]`
-/

namespace A190709.P8773715753185567277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190709.P8773715753185567277

namespace A190709

/-- `eq[4, A190704(A065033(2*n))]` -/
def P8773715753185567277.Spec : Prop :=
  ∀ n, (P8773715753185567277.a n : ℤ) = A190709 (n + 1)

end A190709

/-! ## A190709.P13200969204738486474

`eq[4, A190704(A123108(2*n))]`
-/

namespace A190709.P13200969204738486474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190709.P13200969204738486474

namespace A190709

/-- `eq[4, A190704(A123108(2*n))]` -/
def P13200969204738486474.Spec : Prop :=
  ∀ n, (P13200969204738486474.a n : ℤ) = A190709 (n + 1)

end A190709

/-! ## A190709.P2150897911918266309

`eq[A024548(2*n+1), A327180(n)]`
-/

namespace A190709.P2150897911918266309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190709.P2150897911918266309

namespace A190709

/-- `eq[A024548(2*n+1), A327180(n)]` -/
def P2150897911918266309.Spec : Prop :=
  ∀ n, (P2150897911918266309.a n : ℤ) = A190709 (n + 1)

end A190709

/-! ## A190709.P1434892839649260996

`eq[4, A190704(A233583(n+1))]`
-/

namespace A190709.P1434892839649260996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190709.P1434892839649260996

namespace A190709

/-- `eq[4, A190704(A233583(n+1))]` -/
def P1434892839649260996.Spec : Prop :=
  ∀ n, (P1434892839649260996.a n : ℤ) = A190709 (n + 1)

end A190709

/-!
# A190710: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,3) and [ ]=floor.

The programs for A190710, there is no canonical definition to state claims against.
-/

/-! ## A190710.P8448773013474596972

`C(A190704(n+5), A272965(A125206(n+1)))`
-/

namespace A190710.P8448773013474596972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A190704 (n + 5)).toNat (A272965 (A125206 (n + 1)).toNat).toNat

end

end A190710.P8448773013474596972

/-! ## A190710.P7323585718254468006

`and(A353677(n+1)+3, A160755(3*(n+1)))`
-/

namespace A190710.P7323585718254468006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353677 (n + 1) + 3) (A160755 (3 * (n + 1)))

end

end A190710.P7323585718254468006

/-!
# A190711: Positions of 0 in A190710.

The programs for A190711, there is no canonical definition to state claims against.
-/

/-! ## A190711.P11802713098210186198

`lt[A190710(n+1), 1]+1`
-/

namespace A190711.P11802713098210186198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190711.P11802713098210186198

/-! ## A190711.P1837763505981798393

`eq[0, A190710(C(n, n²)+n)]`
-/

namespace A190711.P1837763505981798393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (Nat.choose n (n ^ 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190711.P1837763505981798393

/-! ## A190711.P16418441121782220749

`eq[0, A190710(A028310(n))]`
-/

namespace A190711.P16418441121782220749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190711.P16418441121782220749

/-! ## A190711.P13197549370258457639

`A020725(eq[1, A190710(n+1)+1])`
-/

namespace A190711.P13197549370258457639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190711.P13197549370258457639

/-! ## A190711.P9738586692384080675

`eq[A000007(n), A190710(n+1)]+1`
-/

namespace A190711.P9738586692384080675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190711.P9738586692384080675

/-! ## A190711.P17850759492516837214

`eq[A185013(n), A190710(n+1)]+1`
-/

namespace A190711.P17850759492516837214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190711.P17850759492516837214

/-! ## A190711.P2807781999911237489

`eq[A190669(n+1), A190710(n+1)]+1`
-/

namespace A190711.P2807781999911237489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190711.P2807781999911237489

/-! ## A190711.P6282706610988077466

`eq[A000007(n), A190710(A000007(n)+n)]`
-/

namespace A190711.P6282706610988077466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190711.P6282706610988077466

/-! ## A190711.P6541380030497754397

`eq[0, A190710(A065033(2*n))]`
-/

namespace A190711.P6541380030497754397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190711.P6541380030497754397

/-! ## A190711.P2577086968150163602

`eq[0, A190710(A123108(2*n))]`
-/

namespace A190711.P2577086968150163602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190711.P2577086968150163602

/-! ## A190711.P11185809838139938649

`eq[0, A190710(A233583(n+1))]`
-/

namespace A190711.P11185809838139938649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190711.P11185809838139938649

/-!
# A190712: Positions of 1 in A190710.

The programs for A190712, there is no canonical definition to state claims against.
-/

/-! ## A190712.P11628784874245461797

`eq[1, A190710(n+1)]+1`
-/

namespace A190712.P11628784874245461797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190712.P11628784874245461797

/-! ## A190712.P7753803616892814742

`eq[1, A190710(A028310(n))]`
-/

namespace A190712.P7753803616892814742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190712.P7753803616892814742

/-! ## A190712.P8468953136856411176

`A020725(eq[1, A190710(n+1)])`
-/

namespace A190712.P8468953136856411176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190712.P8468953136856411176

/-! ## A190712.P10225075147322555116

`eq[1, A190710(A000007(n)+n)]`
-/

namespace A190712.P10225075147322555116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190712.P10225075147322555116

/-! ## A190712.P12236219651753365112

`eq[1, A190710(A065033(2*n))]`
-/

namespace A190712.P12236219651753365112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190712.P12236219651753365112

/-! ## A190712.P702540436428957878

`eq[1, A190710(A123108(2*n))]`
-/

namespace A190712.P702540436428957878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190712.P702540436428957878

/-! ## A190712.P18377031674010822943

`eq[2, A006519(A022838(4*n+3))]`
-/

namespace A190712.P18377031674010822943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A022838 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190712.P18377031674010822943

/-! ## A190712.P15115342366978699778

`eq[1, A190710(A233583(n+1))]`
-/

namespace A190712.P15115342366978699778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190712.P15115342366978699778

/-! ## A190712.P12793772111603237425

`eq[2, A285099(A198269(4*n+3))]`
-/

namespace A190712.P12793772111603237425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A198269 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190712.P12793772111603237425

/-!
# A190713: Positions of 2 in A190710.

The programs for A190713, there is no canonical definition to state claims against.
-/

/-! ## A190713.P16352045831125284437

`eq[2, A190710(n+1)]+1`
-/

namespace A190713.P16352045831125284437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190713.P16352045831125284437

/-! ## A190713.P7251252492985198766

`eq[2, A190710(A028310(n))]`
-/

namespace A190713.P7251252492985198766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190713.P7251252492985198766

/-! ## A190713.P10802635069907946739

`A020725(eq[2, A190710(n+1)])`
-/

namespace A190713.P10802635069907946739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190713.P10802635069907946739

/-! ## A190713.P18171688391097350862

`eq[2, A190710(A000007(n)+n)]`
-/

namespace A190713.P18171688391097350862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190713.P18171688391097350862

/-! ## A190713.P3103685600727353086

`eq[2, A190710(A065033(2*n))]`
-/

namespace A190713.P3103685600727353086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190713.P3103685600727353086

/-! ## A190713.P8194788314216335889

`eq[2, A190710(A123108(2*n))]`
-/

namespace A190713.P8194788314216335889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190713.P8194788314216335889

/-!
# A190714: Positions of 3 in A190710.

The programs for A190714, the canonical program `A190714.P2012202855424019024` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190714 has offset 1).

The definition of A190714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190714.P2012202855424019024

`eq[1, A190672(2*n+1)*A190672(n+2)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A190714

/-- `eq[1, A190672(2*n+1)*A190672(n+2)]` -/
def P2012202855424019024.Spec : Prop :=
  ∀ n, (P2012202855424019024.a n : ℤ) = A190714 (n + 1)

theorem P2012202855424019024.correct : P2012202855424019024.Spec := by
  intro n
  simp only [A190714, Nat.add_sub_cancel]

end A190714

/-! ## A190714.P17994100009046485639

`eq[1, A007814(A195120(4*n+3))]`
-/

namespace A190714.P17994100009046485639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A195120 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190714.P17994100009046485639

namespace A190714

/-- `eq[1, A007814(A195120(4*n+3))]` -/
def P17994100009046485639.Spec : Prop :=
  ∀ n, (P17994100009046485639.a n : ℤ) = A190714 (n + 1)

end A190714

/-! ## A190714.P2403625520265541962

`eq[2, A001511(A215781(4*n+3))]`
-/

namespace A190714.P2403625520265541962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A215781 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190714.P2403625520265541962

namespace A190714

/-- `eq[2, A001511(A215781(4*n+3))]` -/
def P2403625520265541962.Spec : Prop :=
  ∀ n, (P2403625520265541962.a n : ℤ) = A190714 (n + 1)

end A190714

/-! ## A190714.P6694019397644887860

`eq[A083054(4*n+3), A083054(n+1)]`
-/

namespace A190714.P6694019397644887860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190714.P6694019397644887860

namespace A190714

/-- `eq[A083054(4*n+3), A083054(n+1)]` -/
def P6694019397644887860.Spec : Prop :=
  ∀ n, (P6694019397644887860.a n : ℤ) = A190714 (n + 1)

end A190714

/-! ## A190714.P6465663269768155639

`eq[0, A257844(A022838(4*n+3))]`
-/

namespace A190714.P6465663269768155639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A022838 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190714.P6465663269768155639

namespace A190714

/-- `eq[0, A257844(A022838(4*n+3))]` -/
def P6465663269768155639.Spec : Prop :=
  ∀ n, (P6465663269768155639.a n : ℤ) = A190714 (n + 1)

end A190714

/-!
# A190715: Positions of 4 in A190710.

The programs for A190715, the canonical program `A190715.P18007975720597003767` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190715 has offset 1).

The definition of A190715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190715.P18007975720597003767

`A003512(A190703(n+1))+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190715

/-- `A003512(A190703(n+1))+1` -/
def P18007975720597003767.Spec : Prop :=
  ∀ n, P18007975720597003767.a n = A190715 (n + 1)

theorem P18007975720597003767.correct : P18007975720597003767.Spec := by
  intro n
  simp only [A190715, Nat.add_sub_cancel]

end A190715

/-! ## A190715.P9956377842107615626

`A080590(A190703(n+1))+A001285(A001316(n))`
-/

namespace A190715.P9956377842107615626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A001285 (A001316 n).toNat

end

end A190715.P9956377842107615626

namespace A190715

/-- `A080590(A190703(n+1))+A001285(A001316(n))` -/
def P9956377842107615626.Spec : Prop :=
  ∀ n, P9956377842107615626.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P926093433041693260

`A080590(A190703(n+1))+A000034(A016813(n))`
-/

namespace A190715.P926093433041693260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A000034 (A016813 n).toNat

end

end A190715.P926093433041693260

namespace A190715

/-- `A080590(A190703(n+1))+A000034(A016813(n))` -/
def P926093433041693260.Spec : Prop :=
  ∀ n, P926093433041693260.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P5504549103275323073

`A080590(A190703(n+1))+A020639(A016825(n))`
-/

namespace A190715.P5504549103275323073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A020639 (A016825 n).toNat

end

end A190715.P5504549103275323073

namespace A190715

/-- `A080590(A190703(n+1))+A020639(A016825(n))` -/
def P5504549103275323073.Spec : Prop :=
  ∀ n, P5504549103275323073.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P8587652198311271180

`A080590(A190703(n+1))+A020639(A017137(n))`
-/

namespace A190715.P8587652198311271180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A020639 (A017137 n).toNat

end

end A190715.P8587652198311271180

namespace A190715

/-- `A080590(A190703(n+1))+A020639(A017137(n))` -/
def P8587652198311271180.Spec : Prop :=
  ∀ n, P8587652198311271180.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P15686405685375517715

`A080590(A190703(n+1))+A020639(A020744(n))`
-/

namespace A190715.P15686405685375517715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A020639 (A020744 n).toNat

end

end A190715.P15686405685375517715

namespace A190715

/-- `A080590(A190703(n+1))+A020639(A020744(n))` -/
def P15686405685375517715.Spec : Prop :=
  ∀ n, P15686405685375517715.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P10501840082558138748

`A080590(A190703(n+1))+A000034(A056753(n))`
-/

namespace A190715.P10501840082558138748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A000034 (A056753 n).toNat

end

end A190715.P10501840082558138748

namespace A190715

/-- `A080590(A190703(n+1))+A000034(A056753(n))` -/
def P10501840082558138748.Spec : Prop :=
  ∀ n, P10501840082558138748.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P11427269413289486431

`A080590(A190703(n+1))+A000005(A004139(n+1))`
-/

namespace A190715.P11427269413289486431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A000005 (A004139 (n + 1)).toNat

end

end A190715.P11427269413289486431

namespace A190715

/-- `A080590(A190703(n+1))+A000005(A004139(n+1))` -/
def P11427269413289486431.Spec : Prop :=
  ∀ n, P11427269413289486431.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P6834821106549225368

`∩[A188072(n+1), A188072(A327182(n+1))+2]`
-/

namespace A190715.P6834821106549225368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (A327182 (n + 1)).toNat + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190715.P6834821106549225368

namespace A190715

/-- `∩[A188072(n+1), A188072(A327182(n+1))+2]` -/
def P6834821106549225368.Spec : Prop :=
  ∀ n, (P6834821106549225368.a n : ℤ) = A190715 (n + 1)

end A190715

/-! ## A190715.P3998603295169622889

`A080590(A190703(n+1))+A020639(A316490(n))`
-/

namespace A190715.P3998603295169622889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A020639 (A316490 n).toNat

end

end A190715.P3998603295169622889

namespace A190715

/-- `A080590(A190703(n+1))+A020639(A316490(n))` -/
def P3998603295169622889.Spec : Prop :=
  ∀ n, P3998603295169622889.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P509140173497771275

`eq[2, A190710(A028310(n))-2]`
-/

namespace A190715.P509140173497771275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190715.P509140173497771275

namespace A190715

/-- `eq[2, A190710(A028310(n))-2]` -/
def P509140173497771275.Spec : Prop :=
  ∀ n, (P509140173497771275.a n : ℤ) = A190715 (n + 1)

end A190715

/-! ## A190715.P4014656429735851761

`A020725(eq[2, A190710(n+1)-2])`
-/

namespace A190715.P4014656429735851761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190710 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190715.P4014656429735851761

namespace A190715

/-- `A020725(eq[2, A190710(n+1)-2])` -/
def P4014656429735851761.Spec : Prop :=
  ∀ n, P4014656429735851761.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P10786822035894801352

`A020725(eq[2, A190710(n+1)/2])`
-/

namespace A190715.P10786822035894801352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190710 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A190715.P10786822035894801352

namespace A190715

/-- `A020725(eq[2, A190710(n+1)/2])` -/
def P10786822035894801352.Spec : Prop :=
  ∀ n, P10786822035894801352.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P4699587355712346698

`A080590(A190703(n+1))+A020639(A028326(n))`
-/

namespace A190715.P4699587355712346698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A020639 (A028326 n).toNat

end

end A190715.P4699587355712346698

namespace A190715

/-- `A080590(A190703(n+1))+A020639(A028326(n))` -/
def P4699587355712346698.Spec : Prop :=
  ∀ n, P4699587355712346698.a n = A190715 (n + 1)

end A190715

/-! ## A190715.P141570170450676414

`A080590(A190703(n+1))+A014710((n+1)²)`
-/

namespace A190715.P141570170450676414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (A190703 (n + 1)).toNat + A014710 ((n + 1) ^ 2)

end

end A190715.P141570170450676414

namespace A190715

/-- `A080590(A190703(n+1))+A014710((n+1)²)` -/
def P141570170450676414.Spec : Prop :=
  ∀ n, P141570170450676414.a n = A190715 (n + 1)

end A190715

/-!
# A190716: a(2*n) = 2*n and a(2*n-1) = A054569(n).

The programs for A190716, the canonical program `A190716.P5616869117743075672` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190716 has offset 1).

The definition of A190716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190716.P5616869117743075672

`(1-(-1)^(n+1)*n²+(n+1)²)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190716

/-- `(1-(-1)^(n+1)*n²+(n+1)²)/2` -/
def P5616869117743075672.Spec : Prop :=
  ∀ n, P5616869117743075672.a n = (A190716 (n + 1) : ℚ)

end A190716

/-! ## A190716.P15107687905750327447

`lcm(n, or(1, n))+1`
-/

namespace A190716.P15107687905750327447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.lor 1 n) + 1

end

end A190716.P15107687905750327447

namespace A190716

/-- `lcm(n, or(1, n))+1` -/
def P15107687905750327447.Spec : Prop :=
  ∀ n, (P15107687905750327447.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P10823226959098371726

`n*C(or(1, n), n)+1`
-/

namespace A190716.P10823226959098371726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (Nat.lor 1 n) n + 1

end

end A190716.P10823226959098371726

namespace A190716

/-- `n*C(or(1, n), n)+1` -/
def P10823226959098371726.Spec : Prop :=
  ∀ n, (P10823226959098371726.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P3490978437862756014

`ceil((1/2+n)^gcd(2, n))`
-/

namespace A190716.P3490978437862756014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) ^ Nat.gcd 2 n⌉

end

end A190716.P3490978437862756014

namespace A190716

/-- `ceil((1/2+n)^gcd(2, n))` -/
def P3490978437862756014.Spec : Prop :=
  ∀ n, P3490978437862756014.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P5355651329044511382

`gcd(n²+1, n%2)+n`
-/

namespace A190716.P5355651329044511382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2 + 1) (n % 2) + n

end

end A190716.P5355651329044511382

namespace A190716

/-- `gcd(n²+1, n%2)+n` -/
def P5355651329044511382.Spec : Prop :=
  ∀ n, (P5355651329044511382.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P15334030684461505364

`gcd(and(1, n), or(1, n²))+n`
-/

namespace A190716.P15334030684461505364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.land 1 n) (Nat.lor 1 (n ^ 2)) + n

end

end A190716.P15334030684461505364

namespace A190716

/-- `gcd(and(1, n), or(1, n²))+n` -/
def P15334030684461505364.Spec : Prop :=
  ∀ n, (P15334030684461505364.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P5045815818179643334

`(n*and(1, n+1))²+n+1`
-/

namespace A190716.P5045815818179643334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 (n + 1)) ^ 2 + (n + 1)

end

end A190716.P5045815818179643334

namespace A190716

/-- `(n*and(1, n+1))²+n+1` -/
def P5045815818179643334.Spec : Prop :=
  ∀ n, (P5045815818179643334.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P10652188672707535505

`lcm(n², and(1, n+1))+n+1`
-/

namespace A190716.P10652188672707535505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2) (Nat.land 1 (n + 1)) + (n + 1)

end

end A190716.P10652188672707535505

namespace A190716

/-- `lcm(n², and(1, n+1))+n+1` -/
def P10652188672707535505.Spec : Prop :=
  ∀ n, (P10652188672707535505.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P14580882498338859070

`n*C(n+1, and(1, n+1))+1`
-/

namespace A190716.P14580882498338859070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 1) (Nat.land 1 (n + 1)) + 1

end

end A190716.P14580882498338859070

namespace A190716

/-- `n*C(n+1, and(1, n+1))+1` -/
def P14580882498338859070.Spec : Prop :=
  ∀ n, (P14580882498338859070.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P17212937557375776543

`n*n*and(1, n+1)+n+1`
-/

namespace A190716.P17212937557375776543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * Nat.land 1 (n + 1)) + (n + 1)

end

end A190716.P17212937557375776543

namespace A190716

/-- `n*n*and(1, n+1)+n+1` -/
def P17212937557375776543.Spec : Prop :=
  ∀ n, (P17212937557375776543.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P14971724984837810401

`(gcd(2*n, n²)-n)²+n+1`
-/

namespace A190716.P14971724984837810401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd (2 * n) (n ^ 2) : ℤ) - (n : ℤ)) ^ 2 + (n + 1 : ℤ)

end

end A190716.P14971724984837810401

namespace A190716

/-- `(gcd(2*n, n²)-n)²+n+1` -/
def P14971724984837810401.Spec : Prop :=
  ∀ n, P14971724984837810401.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P13288215434266578631

`lcm(2*n, xor(2*n, -4))-(n-1)`
-/

namespace A190716.P13288215434266578631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n : ℤ) (Int.xor (2 * n : ℤ) (-4)) : ℤ) - ((n : ℤ) - 1)

end

end A190716.P13288215434266578631

namespace A190716

/-- `lcm(2*n, xor(2*n, -4))-(n-1)` -/
def P13288215434266578631.Spec : Prop :=
  ∀ n, P13288215434266578631.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P1640217024723809907

`and(n, C(n+1, a(n-1)))²+n+1` with `a(0)=1`
-/

namespace A190716.P1640217024723809907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land n (Nat.choose (n + 1) (a (n - 1))) ^ 2 + (n + 1)

end

end A190716.P1640217024723809907

namespace A190716

/-- `and(n, C(n+1, a(n-1)))²+n+1` -/
def P1640217024723809907.Spec : Prop :=
  ∀ n, (P1640217024723809907.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P790500126258654765

`n*A093178(n+1)+1`
-/

namespace A190716.P790500126258654765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093178 (n + 1) + 1

end

end A190716.P790500126258654765

namespace A190716

/-- `n*A093178(n+1)+1` -/
def P790500126258654765.Spec : Prop :=
  ∀ n, P790500126258654765.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P10594597970906841841

`n*A237420(n)+n+1`
-/

namespace A190716.P10594597970906841841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A237420 n + (n + 1 : ℤ)

end

end A190716.P10594597970906841841

namespace A190716

/-- `n*A237420(n)+n+1` -/
def P10594597970906841841.Spec : Prop :=
  ∀ n, P10594597970906841841.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P3603145399804753174

`∑[A137501(n)]²+n+1`
-/

namespace A190716.P3603145399804753174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1 : ℤ)

end

end A190716.P3603145399804753174

namespace A190716

/-- `∑[A137501(n)]²+n+1` -/
def P3603145399804753174.Spec : Prop :=
  ∀ n, P3603145399804753174.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P17643242642229559583

`A114285(n)+A066106(n)`
-/

namespace A190716.P17643242642229559583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 n + A066106 n

end

end A190716.P17643242642229559583

namespace A190716

/-- `A114285(n)+A066106(n)` -/
def P17643242642229559583.Spec : Prop :=
  ∀ n, P17643242642229559583.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P13344392978974245396

`A181900(n)-A165900(n)`
-/

namespace A190716.P13344392978974245396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 n - A165900 n

end

end A190716.P13344392978974245396

namespace A190716

/-- `A181900(n)-A165900(n)` -/
def P13344392978974245396.Spec : Prop :=
  ∀ n, P13344392978974245396.a n = A190716 (n + 1)

end A190716

/-! ## A190716.P6871431431911761963

`gcd(A054605(n), A123363(n))`
-/

namespace A190716.P6871431431911761963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054605 n) (A123363 n)

end

end A190716.P6871431431911761963

namespace A190716

/-- `gcd(A054605(n), A123363(n))` -/
def P6871431431911761963.Spec : Prop :=
  ∀ n, (P6871431431911761963.a n : ℤ) = A190716 (n + 1)

end A190716

/-! ## A190716.P11235150152933316197

`gcd(A024004(n), A213041(n))`
-/

namespace A190716.P11235150152933316197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024004 n) (A213041 n)

end

end A190716.P11235150152933316197

namespace A190716

/-- `gcd(A024004(n), A213041(n))` -/
def P11235150152933316197.Spec : Prop :=
  ∀ n, (P11235150152933316197.a n : ℤ) = A190716 (n + 1)

end A190716

/-!
# A190717: Triplicated tetrahedral numbers A000292.

The programs for A190717, the canonical program `A190717.P13296683772766603852` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190717 has offset 0).

The definition of A190717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190717.P13296683772766603852

`C(floor(n/3)+3, 3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190717

/-- `C(floor(n/3)+3, 3)` -/
def P13296683772766603852.Spec : Prop :=
  ∀ n, (P13296683772766603852.a n : ℤ) = A190717 n

theorem P13296683772766603852.correct : P13296683772766603852.Spec := by
  intro n
  simp only [A190717]

end A190717

/-! ## A190717.P3550770212490820562

`sqrt(A001249(floor(n/3)))`
-/

namespace A190717.P3550770212490820562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001249 ⌊(n : ℚ) / 3⌋.toNat : ℝ)

end

end A190717.P3550770212490820562

namespace A190717

/-- `sqrt(A001249(floor(n/3)))` -/
def P3550770212490820562.Spec : Prop :=
  ∀ n, P3550770212490820562.a n = (A190717 n : ℝ)

end A190717

/-! ## A190717.P3431924229183037664

`A000292(∑[char[3*n]])`
-/

namespace A190717.P3431924229183037664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190717.P3431924229183037664

namespace A190717

/-- `A000292(∑[char[3*n]])` -/
def P3431924229183037664.Spec : Prop :=
  ∀ n, P3431924229183037664.a n = A190717 n

end A190717

/-! ## A190717.P14360955408584434824

`A058187(floor(Δ[n²]/3))`
-/

namespace A190717.P14360955408584434824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌋.toNat

end

end A190717.P14360955408584434824

namespace A190717

/-- `A058187(floor(Δ[n²]/3))` -/
def P14360955408584434824.Spec : Prop :=
  ∀ n, P14360955408584434824.a n = A190717 n

end A190717

/-! ## A190717.P2317639642660271004

`A005232(or(1, round(2*n/3)))`
-/

namespace A190717.P2317639642660271004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (Int.lor 1 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)))).toNat

end

end A190717.P2317639642660271004

namespace A190717

/-- `A005232(or(1, round(2*n/3)))` -/
def P2317639642660271004.Spec : Prop :=
  ∀ n, P2317639642660271004.a n = A190717 n

end A190717

/-! ## A190717.P6794076106019313396

`A005232(∑[abs((n²-1)%3)])`
-/

namespace A190717.P6794076106019313396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((n ^ 2 : ℤ) - 1) 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190717.P6794076106019313396

namespace A190717

/-- `A005232(∑[abs((n²-1)%3)])` -/
def P6794076106019313396.Spec : Prop :=
  ∀ n, P6794076106019313396.a n = A190717 n

end A190717

/-! ## A190717.P17776902825829159095

`A005581(floor(n/3)+1)+floor(n/3)+1`
-/

namespace A190717.P17776902825829159095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (⌊(n : ℚ) / 3⌋ + 1).toNat + (⌊(n : ℚ) / 3⌋ + 1)

end

end A190717.P17776902825829159095

namespace A190717

/-- `A005581(floor(n/3)+1)+floor(n/3)+1` -/
def P17776902825829159095.Spec : Prop :=
  ∀ n, P17776902825829159095.a n = A190717 n

end A190717

/-! ## A190717.P2547202482173523007

`A005232(A130823(n+1))`
-/

namespace A190717.P2547202482173523007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A130823 (n + 1)).toNat

end

end A190717.P2547202482173523007

namespace A190717

/-- `A005232(A130823(n+1))` -/
def P2547202482173523007.Spec : Prop :=
  ∀ n, P2547202482173523007.a n = A190717 n

end A190717

/-! ## A190717.P3117859135038726766

`A027480(A008620(n))/3`
-/

namespace A190717.P3117859135038726766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 (A008620 n).toNat : ℚ) / 3

end

end A190717.P3117859135038726766

namespace A190717

/-- `A027480(A008620(n))/3` -/
def P3117859135038726766.Spec : Prop :=
  ∀ n, P3117859135038726766.a n = (A190717 n : ℚ)

end A190717

/-! ## A190717.P12271521928097287629

`A007290(A008620(n)+2)/2`
-/

namespace A190717.P12271521928097287629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007290 (A008620 n + 2).toNat : ℚ) / 2

end

end A190717.P12271521928097287629

namespace A190717

/-- `A007290(A008620(n)+2)/2` -/
def P12271521928097287629.Spec : Prop :=
  ∀ n, P12271521928097287629.a n = (A190717 n : ℚ)

theorem P12271521928097287629.correct : P12271521928097287629.Spec := by
  intro n
  simp only [A190717, Nat.add_sub_cancel, A190717.P12271521928097287629.a, A190717.P13296683772766603852.a, A007290, A007290.P9295456119697579818.a, A008620, A008620.P16090772857505074278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A190717

/-! ## A190717.P628304630725401193

`A006918(2*A008620(n))/2`
-/

namespace A190717.P628304630725401193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (2 * A008620 n).toNat : ℚ) / 2

end

end A190717.P628304630725401193

namespace A190717

/-- `A006918(2*A008620(n))/2` -/
def P628304630725401193.Spec : Prop :=
  ∀ n, P628304630725401193.a n = (A190717 n : ℚ)

end A190717

/-! ## A190717.P3927453140594668964

`A006918(A130823(n+1)+1)/2`
-/

namespace A190717.P3927453140594668964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (A130823 (n + 1) + 1).toNat : ℚ) / 2

end

end A190717.P3927453140594668964

namespace A190717

/-- `A006918(A130823(n+1)+1)/2` -/
def P3927453140594668964.Spec : Prop :=
  ∀ n, P3927453140594668964.a n = (A190717 n : ℚ)

end A190717

/-! ## A190717.P5090233701872152642

`or(A000007(n), A000292(ceil((n+1)/3)))`
-/

namespace A190717.P5090233701872152642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000292 ⌈(n + 1 : ℚ) / 3⌉.toNat)

end

end A190717.P5090233701872152642

namespace A190717

/-- `or(A000007(n), A000292(ceil((n+1)/3)))` -/
def P5090233701872152642.Spec : Prop :=
  ∀ n, P5090233701872152642.a n = A190717 n

end A190717

/-! ## A190717.P15407371902297805187

`A000292(ceil((n+1)/3))%A002496(n+1)`
-/

namespace A190717.P15407371902297805187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 ⌈(n + 1 : ℚ) / 3⌉.toNat) (A002496 (n + 1))

end

end A190717.P15407371902297805187

namespace A190717

/-- `A000292(ceil((n+1)/3))%A002496(n+1)` -/
def P15407371902297805187.Spec : Prop :=
  ∀ n, P15407371902297805187.a n = A190717 n

end A190717

/-! ## A190717.P11986064966572843473

`A190718(A004773(n))`
-/

namespace A190717.P11986064966572843473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A004773 n).toNat

end

end A190717.P11986064966572843473

namespace A190717

/-- `A190718(A004773(n))` -/
def P11986064966572843473.Spec : Prop :=
  ∀ n, P11986064966572843473.a n = A190717 n

end A190717

/-! ## A190717.P10458174150160853000

`A190718(A131452(n))`
-/

namespace A190717.P10458174150160853000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A131452 n).toNat

end

end A190717.P10458174150160853000

namespace A190717

/-- `A190718(A131452(n))` -/
def P10458174150160853000.Spec : Prop :=
  ∀ n, P10458174150160853000.a n = A190717 n

end A190717

/-! ## A190717.P5773087589883956409

`A190718(A168056(n))`
-/

namespace A190717.P5773087589883956409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A168056 n).toNat

end

end A190717.P5773087589883956409

namespace A190717

/-- `A190718(A168056(n))` -/
def P5773087589883956409.Spec : Prop :=
  ∀ n, P5773087589883956409.a n = A190717 n

end A190717

/-! ## A190717.P8894815774376501747

`A190718(A222657(n))`
-/

namespace A190717.P8894815774376501747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A222657 n).toNat

end

end A190717.P8894815774376501747

namespace A190717

/-- `A190718(A222657(n))` -/
def P8894815774376501747.Spec : Prop :=
  ∀ n, P8894815774376501747.a n = A190717 n

end A190717

/-! ## A190717.P10653746905733780807

`A190718(A004772(n+1))`
-/

namespace A190717.P10653746905733780807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A004772 (n + 1)).toNat

end

end A190717.P10653746905733780807

namespace A190717

/-- `A190718(A004772(n+1))` -/
def P10653746905733780807.Spec : Prop :=
  ∀ n, P10653746905733780807.a n = A190717 n

end A190717

/-! ## A190717.P1351864417011144605

`A190718(A042965(n+1))`
-/

namespace A190717.P1351864417011144605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A042965 (n + 1)).toNat

end

end A190717.P1351864417011144605

namespace A190717

/-- `A190718(A042965(n+1))` -/
def P1351864417011144605.Spec : Prop :=
  ∀ n, P1351864417011144605.a n = A190717 n

end A190717

/-!
# A190718: Quadruplicated tetrahedral numbers A000292.

The programs for A190718, the canonical program `A190718.P1255372109312166608` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190718 has offset 0).

The definition of A190718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190718.P1255372109312166608

`C(floor(n/4)+3, 3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190718

/-- `C(floor(n/4)+3, 3)` -/
def P1255372109312166608.Spec : Prop :=
  ∀ n, (P1255372109312166608.a n : ℤ) = A190718 n

theorem P1255372109312166608.correct : P1255372109312166608.Spec := by
  intro n
  simp only [A190718]

end A190718

/-! ## A190718.P9896607495555199102

`A363174(or(3, n))`
-/

namespace A190718.P9896607495555199102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363174 (Nat.lor 3 n)

end

end A190718.P9896607495555199102

namespace A190718

/-- `A363174(or(3, n))` -/
def P9896607495555199102.Spec : Prop :=
  ∀ n, P9896607495555199102.a n = A190718 n

end A190718

/-! ## A190718.P14129322239409408807

`A058187(floor(n/2))`
-/

namespace A190718.P14129322239409408807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 ⌊(n : ℚ) / 2⌋.toNat

end

end A190718.P14129322239409408807

namespace A190718

/-- `A058187(floor(n/2))` -/
def P14129322239409408807.Spec : Prop :=
  ∀ n, P14129322239409408807.a n = A190718 n

end A190718

/-! ## A190718.P17792861555987437374

`A008643(n-and(2, n))`
-/

namespace A190718.P17792861555987437374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008643 (n - Nat.land 2 n)

end

end A190718.P17792861555987437374

namespace A190718

/-- `A008643(n-and(2, n))` -/
def P17792861555987437374.Spec : Prop :=
  ∀ n, P17792861555987437374.a n = A190718 n

end A190718

/-! ## A190718.P13052743039240312544

`A000292(∑[char[4*n]])`
-/

namespace A190718.P13052743039240312544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190718.P13052743039240312544

namespace A190718

/-- `A000292(∑[char[4*n]])` -/
def P13052743039240312544.Spec : Prop :=
  ∀ n, P13052743039240312544.a n = A190718 n

end A190718

/-! ## A190718.P1411550826739206707

`A008804(2*floor(n/4))`
-/

namespace A190718.P1411550826739206707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * ⌊(n : ℚ) / 4⌋).toNat

end

end A190718.P1411550826739206707

namespace A190718

/-- `A008804(2*floor(n/4))` -/
def P1411550826739206707.Spec : Prop :=
  ∀ n, P1411550826739206707.a n = A190718 n

end A190718

/-! ## A190718.P18143665269210870626

`A005232(A129756(n))`
-/

namespace A190718.P18143665269210870626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A129756 n).toNat

end

end A190718.P18143665269210870626

namespace A190718

/-- `A005232(A129756(n))` -/
def P18143665269210870626.Spec : Prop :=
  ∀ n, P18143665269210870626.a n = A190718 n

end A190718

/-! ## A190718.P1344905659870773189

`A190717(A057353(n))`
-/

namespace A190718.P1344905659870773189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A057353 n).toNat

end

end A190718.P1344905659870773189

namespace A190718

/-- `A190717(A057353(n))` -/
def P1344905659870773189.Spec : Prop :=
  ∀ n, P1344905659870773189.a n = A190718 n

end A190718

/-! ## A190718.P9517012754533122333

`A190717(A130766(n))`
-/

namespace A190718.P9517012754533122333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A130766 n).toNat

end

end A190718.P9517012754533122333

namespace A190718

/-- `A190717(A130766(n))` -/
def P9517012754533122333.Spec : Prop :=
  ∀ n, P9517012754533122333.a n = A190718 n

end A190718

/-! ## A190718.P7141426705414607143

`A190717(A187321(n))`
-/

namespace A190718.P7141426705414607143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A187321 n).toNat

end

end A190718.P7141426705414607143

namespace A190718

/-- `A190717(A187321(n))` -/
def P7141426705414607143.Spec : Prop :=
  ∀ n, P7141426705414607143.a n = A190718 n

end A190718

/-! ## A190718.P14679054494532965670

`A363174(A244584(n))`
-/

namespace A190718.P14679054494532965670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363174 (A244584 n).toNat

end

end A190718.P14679054494532965670

namespace A190718

/-- `A363174(A244584(n))` -/
def P14679054494532965670.Spec : Prop :=
  ∀ n, P14679054494532965670.a n = A190718 n

end A190718

/-! ## A190718.P3531494119094328524

`A008643(n-A010873(n))`
-/

namespace A190718.P3531494119094328524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008643 ((n : ℤ) - A010873 n).toNat

end

end A190718.P3531494119094328524

namespace A190718

/-- `A008643(n-A010873(n))` -/
def P3531494119094328524.Spec : Prop :=
  ∀ n, P3531494119094328524.a n = A190718 n

end A190718

/-! ## A190718.P1950063695847968848

`or(char[1], A000292(A008621(n)))`
-/

namespace A190718.P1950063695847968848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000292 (A008621 n).toNat)

end

end A190718.P1950063695847968848

namespace A190718

/-- `or(char[1], A000292(A008621(n)))` -/
def P1950063695847968848.Spec : Prop :=
  ∀ n, P1950063695847968848.a n = A190718 n

end A190718

/-! ## A190718.P7668971771247693776

`gcd(n, n+1)*A058187(A004525(n))`
-/

namespace A190718.P7668971771247693776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A058187 (A004525 n).toNat

end

end A190718.P7668971771247693776

namespace A190718

/-- `gcd(n, n+1)*A058187(A004525(n))` -/
def P7668971771247693776.Spec : Prop :=
  ∀ n, P7668971771247693776.a n = A190718 n

end A190718

/-! ## A190718.P9054534093109492218

`A189375(n+1)+A189375(n)-A115269(n+1)`
-/

namespace A190718.P9054534093109492218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189375 (n + 1) + (A189375 n - A115269 (n + 1))

end

end A190718.P9054534093109492218

namespace A190718

/-- `A189375(n+1)+A189375(n)-A115269(n+1)` -/
def P9054534093109492218.Spec : Prop :=
  ∀ n, P9054534093109492218.a n = A190718 n

end A190718

/-! ## A190718.P16780615522719801868

`A029300(A108752(n+1))`
-/

namespace A190718.P16780615522719801868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029300 (A108752 (n + 1)).toNat

end

end A190718.P16780615522719801868

namespace A190718

/-- `A029300(A108752(n+1))` -/
def P16780615522719801868.Spec : Prop :=
  ∀ n, P16780615522719801868.a n = A190718 n

end A190718

/-! ## A190718.P7629124826112709564

`A000027(A000292(ceil((n+1)/4)))`
-/

namespace A190718.P7629124826112709564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000292 ⌈(n + 1 : ℚ) / 4⌉.toNat).toNat

end

end A190718.P7629124826112709564

namespace A190718

/-- `A000027(A000292(ceil((n+1)/4)))` -/
def P7629124826112709564.Spec : Prop :=
  ∀ n, P7629124826112709564.a n = A190718 n

end A190718

/-! ## A190718.P7652474241493807608

`A260056(A008621(n)²+2)`
-/

namespace A190718.P7652474241493807608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A008621 n ^ 2 + 2).toNat

end

end A190718.P7652474241493807608

namespace A190718

/-- `A260056(A008621(n)²+2)` -/
def P7652474241493807608.Spec : Prop :=
  ∀ n, P7652474241493807608.a n = A190718 n

end A190718

/-! ## A190718.P404744608713937308

`A115237(A008818(n+1))`
-/

namespace A190718.P404744608713937308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115237 (A008818 (n + 1)).toNat

end

end A190718.P404744608713937308

namespace A190718

/-- `A115237(A008818(n+1))` -/
def P404744608713937308.Spec : Prop :=
  ∀ n, P404744608713937308.a n = A190718 n

end A190718

/-! ## A190718.P5528808396350082092

`A057884(A008805(n)+1)`
-/

namespace A190718.P5528808396350082092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057884 (A008805 n + 1).toNat

end

end A190718.P5528808396350082092

namespace A190718

/-- `A057884(A008805(n)+1)` -/
def P5528808396350082092.Spec : Prop :=
  ∀ n, P5528808396350082092.a n = A190718 n

end A190718

/-!
# A190719: Numbers that are congruent to {0, 1, 3, 5, 7, 8, 11} mod 12.

The programs for A190719, the canonical program `A190719.P13060202943678361389` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190719 has offset 1).

The definition of A190719 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A190719.anchor (n : ℕ) (hn : 1 ≤ n) : A190719 n = (Nat.nth (fun k => k % 12 ∈ ({0, 1, 3, 5, 7, 8, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A190.A190719`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190719.P13060202943678361389

`a(n-7)+12` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=8, a(6)=11`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190719

/-- `a(n-7)+12` -/
def P13060202943678361389.Spec : Prop :=
  ∀ n, (P13060202943678361389.a n : ℤ) = A190719 (n + 1)

theorem P13060202943678361389.correct : P13060202943678361389.Spec := by
  intro n
  simp only [A190719, Nat.add_sub_cancel]

end A190719

/-! ## A190719.P12219061581100576498

`A060107(n+1)-A238469(n)`
-/

namespace A190719.P12219061581100576498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) - A238469 n

end

end A190719.P12219061581100576498

namespace A190719

/-- `A060107(n+1)-A238469(n)` -/
def P12219061581100576498.Spec : Prop :=
  ∀ n, P12219061581100576498.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P2032452748817845150

`A083034(n+1)+char[A017053(n)]`
-/

namespace A190719.P2032452748817845150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083034 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190719.P2032452748817845150

namespace A190719

/-- `A083034(n+1)+char[A017053(n)]` -/
def P2032452748817845150.Spec : Prop :=
  ∀ n, P2032452748817845150.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P18247192915379817758

`∪[A007310(n+1), A108752(n+1)]`
-/

namespace A190719.P18247192915379817758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190719.P18247192915379817758

namespace A190719

/-- `∪[A007310(n+1), A108752(n+1)]` -/
def P18247192915379817758.Spec : Prop :=
  ∀ n, (P18247192915379817758.a n : ℤ) = A190719 (n + 1)

end A190719

/-! ## A190719.P558165153400661280

`or(char[A047290(n+1)], A082977(n+1))`
-/

namespace A190719.P558165153400661280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047290 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A082977 (n + 1))

end

end A190719.P558165153400661280

namespace A190719

/-- `or(char[A047290(n+1)], A082977(n+1))` -/
def P558165153400661280.Spec : Prop :=
  ∀ n, P558165153400661280.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P7592325680389290533

`A083028(n+1)+A083034(n+1)-A060107(n+1)`
-/

namespace A190719.P7592325680389290533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A083034 (n + 1) - A060107 (n + 1))

end

end A190719.P7592325680389290533

namespace A190719

/-- `A083028(n+1)+A083034(n+1)-A060107(n+1)` -/
def P7592325680389290533.Spec : Prop :=
  ∀ n, P7592325680389290533.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P2675312512827060425

`A083026(n+1)+A083034(n+1)-A083120(n+1)`
-/

namespace A190719.P2675312512827060425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) + (A083034 (n + 1) - A083120 (n + 1))

end

end A190719.P2675312512827060425

namespace A190719

/-- `A083026(n+1)+A083034(n+1)-A083120(n+1)` -/
def P2675312512827060425.Spec : Prop :=
  ∀ n, P2675312512827060425.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P14163271116091280866

`A083028(n+1)+A191275(n+1)-A190785(n+1)`
-/

namespace A190719.P14163271116091280866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A191275 (n + 1) - A190785 (n + 1))

end

end A190719.P14163271116091280866

namespace A190719

/-- `A083028(n+1)+A191275(n+1)-A190785(n+1)` -/
def P14163271116091280866.Spec : Prop :=
  ∀ n, P14163271116091280866.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P1408895332507965581

`A190785(n+1)+A191276(n+1)-A083026(n+1)`
-/

namespace A190719.P1408895332507965581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 1) + (A191276 (n + 1) - A083026 (n + 1))

end

end A190719.P1408895332507965581

namespace A190719

/-- `A190785(n+1)+A191276(n+1)-A083026(n+1)` -/
def P1408895332507965581.Spec : Prop :=
  ∀ n, P1408895332507965581.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P14924937224118006024

`A057356(n+1)+A057357(n+1)+n`
-/

namespace A190719.P14924937224118006024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (n + 1) + (A057357 (n + 1) + (n : ℤ))

end

end A190719.P14924937224118006024

namespace A190719

/-- `A057356(n+1)+A057357(n+1)+n` -/
def P14924937224118006024.Spec : Prop :=
  ∀ n, P14924937224118006024.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P10583386533765455035

`A083026(n+1)+A083033(n+2)-A083089(n+2)`
-/

namespace A190719.P10583386533765455035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) + (A083033 (n + 2) - A083089 (n + 2))

end

end A190719.P10583386533765455035

namespace A190719

/-- `A083026(n+1)+A083033(n+2)-A083089(n+2)` -/
def P10583386533765455035.Spec : Prop :=
  ∀ n, P10583386533765455035.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P16162147751438911226

`A191275(n+1)+A060107(n+2)-A083028(n+2)`
-/

namespace A190719.P16162147751438911226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + (A060107 (n + 2) - A083028 (n + 2))

end

end A190719.P16162147751438911226

namespace A190719

/-- `A191275(n+1)+A060107(n+2)-A083028(n+2)` -/
def P16162147751438911226.Spec : Prop :=
  ∀ n, P16162147751438911226.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P15936973525866745745

`A083028(n+1)+A190785(n+2)-A083026(n+2)`
-/

namespace A190719.P15936973525866745745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A190785 (n + 2) - A083026 (n + 2))

end

end A190719.P15936973525866745745

namespace A190719

/-- `A083028(n+1)+A190785(n+2)-A083026(n+2)` -/
def P15936973525866745745.Spec : Prop :=
  ∀ n, P15936973525866745745.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P10752769491502811077

`record[gcd(6, A033638(n))-A024000(n)]`
-/

namespace A190719.P10752769491502811077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A033638 n) : ℤ) - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190719.P10752769491502811077

namespace A190719

/-- `record[gcd(6, A033638(n))-A024000(n)]` -/
def P10752769491502811077.Spec : Prop :=
  ∀ n, P10752769491502811077.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P3713728827092781436

`record[or(n, A171182(A080513(n)))]`
-/

namespace A190719.P3713728827092781436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A171182 (A080513 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190719.P3713728827092781436

namespace A190719

/-- `record[or(n, A171182(A080513(n)))]` -/
def P3713728827092781436.Spec : Prop :=
  ∀ n, P3713728827092781436.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P711079755267460927

`lt[2, A264756(A283879(n+4))]`
-/

namespace A190719.P711079755267460927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264756 (A283879 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190719.P711079755267460927

namespace A190719

/-- `lt[2, A264756(A283879(n+4))]` -/
def P711079755267460927.Spec : Prop :=
  ∀ n, (P711079755267460927.a n : ℤ) = A190719 (n + 1)

end A190719

/-! ## A190719.P9891958509087854860

`A083033(2*n+1)-A083120(n+1)`
-/

namespace A190719.P9891958509087854860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (2 * n + 1) - A083120 (n + 1)

end

end A190719.P9891958509087854860

namespace A190719

/-- `A083033(2*n+1)-A083120(n+1)` -/
def P9891958509087854860.Spec : Prop :=
  ∀ n, P9891958509087854860.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P6329575062356371401

`A083026(2*(n+1))-A083089(n+2)`
-/

namespace A190719.P6329575062356371401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (2 * (n + 1)) - A083089 (n + 2)

end

end A190719.P6329575062356371401

namespace A190719

/-- `A083026(2*(n+1))-A083089(n+2)` -/
def P6329575062356371401.Spec : Prop :=
  ∀ n, P6329575062356371401.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P9484334108394364639

`A083033(2*n+1)+2-A083089(n+2)`
-/

namespace A190719.P9484334108394364639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (2 * n + 1) + (2 - A083089 (n + 2))

end

end A190719.P9484334108394364639

namespace A190719

/-- `A083033(2*n+1)+2-A083089(n+2)` -/
def P9484334108394364639.Spec : Prop :=
  ∀ n, P9484334108394364639.a n = A190719 (n + 1)

end A190719

/-! ## A190719.P8118343513999126578

`A083033(2*n+1)+A060107(n+2)-A083033(2*(n+1))`
-/

namespace A190719.P8118343513999126578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (2 * n + 1) + (A060107 (n + 2) - A083033 (2 * (n + 1)))

end

end A190719.P8118343513999126578

namespace A190719

/-- `A083033(2*n+1)+A060107(n+2)-A083033(2*(n+1))` -/
def P8118343513999126578.Spec : Prop :=
  ∀ n, P8118343513999126578.a n = A190719 (n + 1)

end A190719

/-!
# A190720: Numbers k such that A055778(k) < A055778(k-1).

The programs for A190720, there is no canonical definition to state claims against.
-/

/-! ## A190720.P14660808349991790168

`lt[A055778(n+1), A055778(n)]+1`
-/

namespace A190720.P14660808349991790168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A190720.P14660808349991790168

/-! ## A190720.P6345464217785992125

`lt[A055778(n), A055778(A289207(n+1))]`
-/

namespace A190720.P6345464217785992125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A289207 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190720.P6345464217785992125

/-! ## A190720.P5432125837024521248

`lt[A055778(n), A055778(n-A057427(n))]`
-/

namespace A190720.P5432125837024521248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190720.P5432125837024521248

/-! ## A190720.P2147824542185171414

`A104210(n+1)+A220448(2*n+5)%2`
-/

namespace A190720.P2147824542185171414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1) + Int.tmod (A220448 (2 * n + 5)) 2

end

end A190720.P2147824542185171414

/-!
# A190721: Numbers k such that A055778(k) = A055778(k-1).

The programs for A190721, there is no canonical definition to state claims against.
-/

/-! ## A190721.P12316658903430572819

`eq[A055778(abs(1-n)), A055778(n)]`
-/

namespace A190721.P12316658903430572819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190721.P12316658903430572819

/-! ## A190721.P7989088068331518811

`eq[A055778(n+1), A055778(n)]+1`
-/

namespace A190721.P7989088068331518811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190721.P7989088068331518811

/-! ## A190721.P7334518282563583733

`A020725(eq[A055778(n+1), A055778(n)])`
-/

namespace A190721.P7334518282563583733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A190721.P7334518282563583733

/-! ## A190721.P5491413523031615639

`xor(A057427(A278073(n)), A059536(n+1))`
-/

namespace A190721.P5491413523031615639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A278073 n).toNat) (A059536 (n + 1))

end

end A190721.P5491413523031615639

/-! ## A190721.P8485121915894406349

`∑[A059126(A218347(n+1)+A007283(n))]`
-/

namespace A190721.P8485121915894406349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A218347 (n + 1) + A007283 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190721.P8485121915894406349

/-!
# A190723: Numbers m for which A055778(m) > A055778(m-1).

The programs for A190723, the canonical program `A190723.P6473342380060936674` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190723 has offset 1).

The definition of A190723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190723.P6473342380060936674

`a(n-1)+a(A284749(n))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190723

/-- `a(n-1)+a(A284749(n))` -/
def P6473342380060936674.Spec : Prop :=
  ∀ n, (P6473342380060936674.a n : ℤ) = A190723 (n + 1)

theorem P6473342380060936674.correct : P6473342380060936674.Spec := by
  intro n
  simp only [A190723, Nat.add_sub_cancel]

end A190723

/-! ## A190723.P3350455190959275799

`∑[2^A284749(A028310(n))]`
-/

namespace A190723.P3350455190959275799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A284749 (A028310 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190723.P3350455190959275799

namespace A190723

/-- `∑[2^A284749(A028310(n))]` -/
def P3350455190959275799.Spec : Prop :=
  ∀ n, P3350455190959275799.a n = (A190723 (n + 1) : ℚ)

end A190723

/-! ## A190723.P15376749892907539629

`a(A284749(n))+a(A023443(n))` with `a(0)=1`
-/

namespace A190723.P15376749892907539629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A284749 n).toNat + a (A023443 n).toNat

end

end A190723.P15376749892907539629

namespace A190723

/-- `a(A284749(n))+a(A023443(n))` -/
def P15376749892907539629.Spec : Prop :=
  ∀ n, (P15376749892907539629.a n : ℤ) = A190723 (n + 1)

end A190723

/-! ## A190723.P17928984404244818641

`∑[A052430(a(A284749(n)))]-n` with `a(0)=1`
-/

namespace A190723.P17928984404244818641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A052430 (f1 (A284749 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A190723.P17928984404244818641

namespace A190723

/-- `∑[A052430(a(A284749(n)))]-n` -/
def P17928984404244818641.Spec : Prop :=
  ∀ n, P17928984404244818641.a n = A190723 (n + 1)

end A190723

/-! ## A190723.P5773187438860065092

`A309198(a(n-1)-1)+a(n-1)` with `a(0)=1`
-/

namespace A190723.P5773187438860065092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309198 (a (n - 1) - 1).toNat + a (n - 1)

end

end A190723.P5773187438860065092

namespace A190723

/-- `A309198(a(n-1)-1)+a(n-1)` -/
def P5773187438860065092.Spec : Prop :=
  ∀ n, P5773187438860065092.a n = A190723 (n + 1)

end A190723

/-! ## A190723.P6113105431538893298

`record[A189663(n+3)+A002251(A060143(n))]`
-/

namespace A190723.P6113105431538893298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 3) + A002251 (A060143 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190723.P6113105431538893298

namespace A190723

/-- `record[A189663(n+3)+A002251(A060143(n))]` -/
def P6113105431538893298.Spec : Prop :=
  ∀ n, P6113105431538893298.a n = A190723 (n + 1)

end A190723

/-! ## A190723.P12923949241830528820

`record[Δ[A055778(n)]*(n+1)]`
-/

namespace A190723.P12923949241830528820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190723.P12923949241830528820

namespace A190723

/-- `record[Δ[A055778(n)]*(n+1)]` -/
def P12923949241830528820.Spec : Prop :=
  ∀ n, P12923949241830528820.a n = A190723 (n + 1)

end A190723

/-! ## A190723.P10347129748435868185

`eq[A055778(n)+1, A055778(n+1)]+1`
-/

namespace A190723.P10347129748435868185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190723.P10347129748435868185

namespace A190723

/-- `eq[A055778(n)+1, A055778(n+1)]+1` -/
def P10347129748435868185.Spec : Prop :=
  ∀ n, (P10347129748435868185.a n : ℤ) = A190723 (n + 1)

end A190723

/-! ## A190723.P1083600243426550946

`lt[A055778(n-A057427(n)), A055778(n)]`
-/

namespace A190723.P1083600243426550946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 ((n : ℤ) - A057427 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190723.P1083600243426550946

namespace A190723

/-- `lt[A055778(n-A057427(n)), A055778(n)]` -/
def P1083600243426550946.Spec : Prop :=
  ∀ n, (P1083600243426550946.a n : ℤ) = A190723 (n + 1)

end A190723

/-!
# A190724: Row sums of Riordan matrix A118384.

The programs for A190724, the canonical program `A190724.P8349568036750769725` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190724 has offset 0).

The definition of A190724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190724.P8349568036750769725

`A002003(n+1)-A225887(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A190724

/-- `A002003(n+1)-A225887(n)` -/
def P8349568036750769725.Spec : Prop :=
  ∀ n, P8349568036750769725.a n = A190724 n

theorem P8349568036750769725.correct : P8349568036750769725.Spec := by
  intro n
  simp only [A190724]

end A190724

/-! ## A190724.P18102450322210199285

`A123164(n+1)-A225887(n)`
-/

namespace A190724.P18102450322210199285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 (n + 1) - A225887 n

end

end A190724.P18102450322210199285

namespace A190724

/-- `A123164(n+1)-A225887(n)` -/
def P18102450322210199285.Spec : Prop :=
  ∀ n, P18102450322210199285.a n = A190724 n

end A190724

/-! ## A190724.P15706963221920567501

`A110110(2*n+1)-A225887(n)`
-/

namespace A190724.P15706963221920567501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n + 1) - A225887 n

end

end A190724.P15706963221920567501

namespace A190724

/-- `A110110(2*n+1)-A225887(n)` -/
def P15706963221920567501.Spec : Prop :=
  ∀ n, P15706963221920567501.a n = A190724 n

end A190724

/-! ## A190724.P8258029486640690216

`A002003(n+1)-A212205(2*n+1)`
-/

namespace A190724.P8258029486640690216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 (n + 1) - A212205 (2 * n + 1)

end

end A190724.P8258029486640690216

namespace A190724

/-- `A002003(n+1)-A212205(2*n+1)` -/
def P8258029486640690216.Spec : Prop :=
  ∀ n, P8258029486640690216.a n = A190724 n

end A190724

/-! ## A190724.P7580753215256080689

`A123164(n+1)-A212205(2*n+1)`
-/

namespace A190724.P7580753215256080689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 (n + 1) - A212205 (2 * n + 1)

end

end A190724.P7580753215256080689

namespace A190724

/-- `A123164(n+1)-A212205(2*n+1)` -/
def P7580753215256080689.Spec : Prop :=
  ∀ n, P7580753215256080689.a n = A190724 n

end A190724

/-!
# A190725: Diagonal sums of Riordan matrix A118384.

The programs for A190725, there is no canonical definition to state claims against.
-/

/-! ## A190725.P15817503132151588555

`A151324(n)+A066301(A151324(n))²`
-/

namespace A190725.P15817503132151588555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151324 n + A066301 (A151324 n).toNat ^ 2

end

end A190725.P15817503132151588555

/-! ## A190725.P4383548424850777524

`A060384(A069325(n+1))+A001924(n)`
-/

namespace A190725.P4383548424850777524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A069325 (n + 1)).toNat + A001924 n

end

end A190725.P4383548424850777524

/-!
# A190726: Central coefficients of Riordan matrix A118384.

The programs for A190726, there is no canonical definition to state claims against.
-/

/-! ## A190726.P16255103932015810242

`A118384(∑[4*n])`
-/

namespace A190726.P16255103932015810242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190726.P16255103932015810242

/-! ## A190726.P6169300644604292286

`A064861(A139276(n))`
-/

namespace A190726.P6169300644604292286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A139276 n).toNat

end

end A190726.P6169300644604292286

/-! ## A190726.P5198417469650281766

`A064861(n*A017101(n))`
-/

namespace A190726.P5198417469650281766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 ((n : ℤ) * A017101 n).toNat

end

end A190726.P5198417469650281766

/-! ## A190726.P18071166885312165773

`A064861(A139272(n)+A008590(n))`
-/

namespace A190726.P18071166885312165773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A139272 n + A008590 n).toNat

end

end A190726.P18071166885312165773

/-! ## A190726.P16135154910471859659

`A064861(A139272(n)+A022144(n))`
-/

namespace A190726.P16135154910471859659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A139272 n + A022144 n).toNat

end

end A190726.P16135154910471859659

/-!
# A190727: Product of (digits of n each incremented by 1) - 2.

The programs for A190727, the canonical program `A190727.P10068011130387652655` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190727 has offset 1).

The definition of A190727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190727.P10068011130387652655

`∏{digits}[n+1, #+1]-2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190727

/-- `∏{digits}[n+1, #+1]-2` -/
def P10068011130387652655.Spec : Prop :=
  ∀ n, P10068011130387652655.a n = A190727 (n + 1)

theorem P10068011130387652655.correct : P10068011130387652655.Spec := by
  intro n
  simp only [A190727, Nat.add_sub_cancel]

end A190727

/-! ## A190727.P2750158865256885238

`log2(1/2)+∏{digits}[n+1, #+1]+log2(1/2)`
-/

namespace A190727.P2750158865256885238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))

end

end A190727.P2750158865256885238

namespace A190727

/-- `log2(1/2)+∏{digits}[n+1, #+1]+log2(1/2)` -/
def P2750158865256885238.Spec : Prop :=
  ∀ n, P2750158865256885238.a n = (A190727 (n + 1) : ℝ)

end A190727

/-! ## A190727.P18237115618762321323

`A061486(n+1)-1`
-/

namespace A190727.P18237115618762321323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 (n + 1) - 1

end

end A190727.P18237115618762321323

namespace A190727

/-- `A061486(n+1)-1` -/
def P18237115618762321323.Spec : Prop :=
  ∀ n, P18237115618762321323.a n = A190727 (n + 1)

theorem P18237115618762321323.correct : P18237115618762321323.Spec := by
  intro n
  simp only [A190727, Nat.add_sub_cancel, A190727.P18237115618762321323.a, A190727.P10068011130387652655.f1, A190727.P10068011130387652655.a, A061486, A061486.P447125539068347262.f1, A061486.P447125539068347262.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A190727

/-! ## A190727.P12464714172119985392

`A089898(n+1)-2`
-/

namespace A190727.P12464714172119985392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (n + 1) - 2

end

end A190727.P12464714172119985392

namespace A190727

/-- `A089898(n+1)-2` -/
def P12464714172119985392.Spec : Prop :=
  ∀ n, P12464714172119985392.a n = A190727 (n + 1)

end A190727

/-! ## A190727.P8310175453728220218

`A023443(A061486(n+1))`
-/

namespace A190727.P8310175453728220218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A061486 (n + 1)).toNat

end

end A190727.P8310175453728220218

namespace A190727

/-- `A023443(A061486(n+1))` -/
def P8310175453728220218.Spec : Prop :=
  ∀ n, P8310175453728220218.a n = A190727 (n + 1)

end A190727

/-! ## A190727.P17084201800682290003

`Δ[∑[A061486(n)]-n]`
-/

namespace A190727.P17084201800682290003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190727.P17084201800682290003

namespace A190727

/-- `Δ[∑[A061486(n)]-n]` -/
def P17084201800682290003.Spec : Prop :=
  ∀ n, P17084201800682290003.a n = A190727 (n + 1)

end A190727

/-! ## A190727.P18407342500335377023

`A023444(A089898(n+1))`
-/

namespace A190727.P18407342500335377023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089898 (n + 1)).toNat

end

end A190727.P18407342500335377023

namespace A190727

/-- `A023444(A089898(n+1))` -/
def P18407342500335377023.Spec : Prop :=
  ∀ n, P18407342500335377023.a n = A190727 (n + 1)

end A190727

/-! ## A190727.P2281209899152294681

`floor(log2(A087079(n+1)))`
-/

namespace A190727.P2281209899152294681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A087079 (n + 1)).toNat

end

end A190727.P2281209899152294681

namespace A190727

/-- `floor(log2(A087079(n+1)))` -/
def P2281209899152294681.Spec : Prop :=
  ∀ n, (P2281209899152294681.a n : ℤ) = A190727 (n + 1)

end A190727

/-!
# A190728: Least m>1 such that m^3 mod n^2 is 1.

The programs for A190728, there is no canonical definition to state claims against.
-/

/-! ## A190728.P15770813990743785087

`A091733((n+2)²)`
-/

namespace A190728.P15770813990743785087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 ((n + 2) ^ 2)

end

end A190728.P15770813990743785087

/-! ## A190728.P14890512597188752197

`A007948(A091733(comp[n^7]²))`
-/

namespace A190728.P14890512597188752197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A091733 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)).toNat

end

end A190728.P14890512597188752197

/-! ## A190728.P13699177293664871064

`A091733(Δ[A168559(n+1)])+C(n, n+2)`
-/

namespace A190728.P13699177293664871064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (f1 (n + 1) - f1 n).toNat + (Nat.choose n (n + 2) : ℤ)

end

end A190728.P13699177293664871064

/-! ## A190728.P1937802138434278182

`A091733(Δ[A168559(n+1)])%A005557(n)`
-/

namespace A190728.P1937802138434278182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091733 (f1 (n + 1) - f1 n).toNat) (A005557 n)

end

end A190728.P1937802138434278182

/-! ## A190728.P1711336319643833109

`A091733(Δ[A168559(n+1)])+A000007(n+1)`
-/

namespace A190728.P1711336319643833109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A190728.P1711336319643833109

/-! ## A190728.P1129369569474584069

`A000034(2*n)*A091733(Δ[A168559(n+1)])`
-/

namespace A190728.P1129369569474584069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A091733 (f1 (n + 1) - f1 n).toNat

end

end A190728.P1129369569474584069

/-! ## A190728.P11751878680514145233

`A091733(Δ[A168559(n+1)])+A001489(n)+n`
-/

namespace A190728.P11751878680514145233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (f1 (n + 1) - f1 n).toNat + (A001489 n + (n : ℤ))

end

end A190728.P11751878680514145233

/-! ## A190728.P5072685617570993520

`(A007318(n)%2)!*A091733(Δ[A168559(n+1)])`
-/

namespace A190728.P5072685617570993520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A091733 (f1 (n + 1) - f1 n).toNat

end

end A190728.P5072685617570993520

/-! ## A190728.P12754237067881406673

`A000040(n+10)%2*A091733(Δ[A168559(n+1)])`
-/

namespace A190728.P12754237067881406673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 10)) 2 * A091733 (f1 (n + 1) - f1 n).toNat

end

end A190728.P12754237067881406673

/-!
# A190729: E.g.f. exp(x+1/6*x^3+1/24*x^4).

The programs for A190729, there is no canonical definition to state claims against.
-/

/-! ## A190729.P5854961437510363307

`A385890(A371351(n+1))`
-/

namespace A190729.P5854961437510363307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385890 (A371351 (n + 1)).toNat

end

end A190729.P5854961437510363307

/-! ## A190729.P11928904794158296115

`∑[A191922(A024493(n))]+1`
-/

namespace A190729.P11928904794158296115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191922 (A024493 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A190729.P11928904794158296115

/-! ## A190729.P17614330429862130840

`A000267(A185350(∑[round(n²/12)])²)`
-/

namespace A190729.P17614330429862130840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A185350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2).toNat

end

end A190729.P17614330429862130840

/-! ## A190729.P1244558453718471960

`A114897(A323795(n)+A000045(n))`
-/

namespace A190729.P1244558453718471960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (A323795 n + A000045 n).toNat

end

end A190729.P1244558453718471960

/-!
# A190730: Let b(n,0) = n and b(n,k) = 2*b(n,k-1) + 1 for k > 0. Then a(n) = b(n,1) + b(n,2) + ... + b(n,n).

The programs for A190730, the canonical program `A190730.P84163158574121876` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190730 has offset 1).

The definition of A190730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190730.P84163158574121876

`(n+2)*2^(n+2)-3*(n+1)-2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190730

/-- `(n+2)*2^(n+2)-3*(n+1)-2` -/
def P84163158574121876.Spec : Prop :=
  ∀ n, P84163158574121876.a n = A190730 (n + 1)

theorem P84163158574121876.correct : P84163158574121876.Spec := by
  intro n
  simp only [A190730, Nat.add_sub_cancel]

end A190730

/-! ## A190730.P13322166686360676871

`∑[∑[ogf((3-2x-4x^2)/(1-4x+4x^2))]]`
-/

namespace A190730.P13322166686360676871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -4] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190730.P13322166686360676871

namespace A190730

/-- `∑[∑[ogf((3-2x-4x^2)/(1-4x+4x^2))]]` -/
def P13322166686360676871.Spec : Prop :=
  ∀ n, P13322166686360676871.a n = A190730 (n + 1)

end A190730

/-! ## A190730.P12529107162848139736

`∑[A260006(n+1)+n]`
-/

namespace A190730.P12529107162848139736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260006 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190730.P12529107162848139736

namespace A190730

/-- `∑[A260006(n+1)+n]` -/
def P12529107162848139736.Spec : Prop :=
  ∀ n, P12529107162848139736.a n = A190730 (n + 1)

end A190730

/-! ## A190730.P6578119059606749918

`A213568(A006137(n+1))`
-/

namespace A190730.P6578119059606749918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213568 (A006137 (n + 1)).toNat

end

end A190730.P6578119059606749918

namespace A190730

/-- `A213568(A006137(n+1))` -/
def P6578119059606749918.Spec : Prop :=
  ∀ n, P6578119059606749918.a n = A190730 (n + 1)

end A190730

/-! ## A190730.P967140733098234470

`A005187(A058877(n+2))`
-/

namespace A190730.P967140733098234470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A058877 (n + 2)).toNat

end

end A190730.P967140733098234470

namespace A190730

/-- `A005187(A058877(n+2))` -/
def P967140733098234470.Spec : Prop :=
  ∀ n, P967140733098234470.a n = A190730 (n + 1)

end A190730

/-!
# A190731: Prime interlaced primes (PIP).

The programs for A190731, there is no canonical definition to state claims against.
-/

/-! ## A190731.P2990906627183566292

`∩[A179834(n+1), A361530(n+1)]`
-/

namespace A190731.P2990906627183566292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190731.P2990906627183566292

/-! ## A190731.P14543729058091564708

`∩[A130569(n+1), A361530(n+1)]`
-/

namespace A190731.P14543729058091564708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190731.P14543729058091564708

/-! ## A190731.P7441257162751174191

`A322387(A022182(n))+A034302(n+1)`
-/

namespace A190731.P7441257162751174191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322387 (A022182 n).toNat + A034302 (n + 1)

end

end A190731.P7441257162751174191

/-!
# A190733: Expansion of (4*x+2)/(1+sqrt(1-4*x-4*x^2)).

The programs for A190733, there is no canonical definition to state claims against.
-/

/-! ## A190733.P12679274307241428159

`A052709(n)+A025227(n+1)`
-/

namespace A190733.P12679274307241428159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 n + A025227 (n + 1)

end

end A190733.P12679274307241428159

/-! ## A190733.P10196471131120786352

`A052709(n+1)+2*A052709(n)`
-/

namespace A190733.P10196471131120786352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 (n + 1) + 2 * A052709 n

end

end A190733.P10196471131120786352

/-! ## A190733.P806612936146665646

`A179190(n+1)-A052709(n+1)`
-/

namespace A190733.P806612936146665646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179190 (n + 1) - A052709 (n + 1)

end

end A190733.P806612936146665646

/-! ## A190733.P12968291612074951114

`A025227(n+1)+A238578(n)%A100238(n)`
-/

namespace A190733.P12968291612074951114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (n + 1) + Int.tmod (A238578 n) (A100238 n)

end

end A190733.P12968291612074951114

/-! ## A190733.P6361087618594641621

`record[A179190(A004736(n+1))-A108916(n)]`
-/

namespace A190733.P6361087618594641621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179190 (A004736 (n + 1)).toNat - A108916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190733.P6361087618594641621

/-!
# A190734: Central coefficients of the Riordan matrix A121576.

The programs for A190734, there is no canonical definition to state claims against.
-/

/-! ## A190734.P4014283581263635141

`A121576(∑[4*n])`
-/

namespace A190734.P4014283581263635141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190734.P4014283581263635141

/-! ## A190734.P1014245323187616320

`record[A003982(n)*A121576(n)]`
-/

namespace A190734.P1014245323187616320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A121576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190734.P1014245323187616320

/-! ## A190734.P9374137857607939251

`abs(A121575(A046092(n)))`
-/

namespace A190734.P9374137857607939251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121575 (A046092 n).toNat|

end

end A190734.P9374137857607939251

/-! ## A190734.P9056403371735643842

`abs(A121575(record[A286145(n)]))`
-/

namespace A190734.P9056403371735643842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121575 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A190734.P9056403371735643842

/-! ## A190734.P8816080347754602341

`record[gcd(A008482(n), A121575(n))]`
-/

namespace A190734.P8816080347754602341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A121575 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190734.P8816080347754602341

/-!
# A190736: Diagonal sums of the Riordan matrix A121576.

The programs for A190736, there is no canonical definition to state claims against.
-/

/-! ## A190736.P4643818825687534896

`A008621(A218670(n+2)-n)`
-/

namespace A190736.P4643818825687534896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A218670 (n + 2) - (n : ℤ)).toNat

end

end A190736.P4643818825687534896

/-! ## A190736.P16962403141905684429

`A060715(3*A000172(n)+n)`
-/

namespace A190736.P16962403141905684429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (3 * A000172 n + (n : ℤ)).toNat

end

end A190736.P16962403141905684429

/-!
# A190737: Diagonal sums of the Riordan matrix A104259.

The programs for A190737, there is no canonical definition to state claims against.
-/

/-! ## A190737.P4935567122993111505

`A145847(n)-A126304(A000105(n))`
-/

namespace A190737.P4935567122993111505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145847 n - A126304 (A000105 n).toNat

end

end A190737.P4935567122993111505

/-! ## A190737.P17802645217683684923

`A150097(n)-A213902(A150097(n))`
-/

namespace A190737.P17802645217683684923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150097 n - A213902 (A150097 n).toNat

end

end A190737.P17802645217683684923

/-! ## A190737.P6906195566001395788

`A145847(n)-A275609(A184973(n))`
-/

namespace A190737.P6906195566001395788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145847 n - A275609 (A184973 n).toNat

end

end A190737.P6906195566001395788

/-!
# A190738: Central coefficients of the Riordan matrix A104259.

The programs for A190738, there is no canonical definition to state claims against.
-/

/-! ## A190738.P6585434100705462753

`(n+1)*A379209(n)`
-/

namespace A190738.P6585434100705462753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379209 n

end

end A190738.P6585434100705462753

/-! ## A190738.P6535752780606200220

`A104259(∑[4*n])`
-/

namespace A190738.P6535752780606200220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190738.P6535752780606200220

/-! ## A190738.P11059645592802938541

`record[gcd(A008482(n), A104259(n))]`
-/

namespace A190738.P11059645592802938541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A104259 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190738.P11059645592802938541

/-! ## A190738.P2699425117308145283

`gcd(A000038(n), A104259(A046092(n)))`
-/

namespace A190738.P2699425117308145283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A104259 (A046092 n).toNat)

end

end A190738.P2699425117308145283

/-! ## A190738.P15564451218946961186

`lcm(A087960(n), A104259(A046092(n)))`
-/

namespace A190738.P15564451218946961186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A104259 (A046092 n).toNat)

end

end A190738.P15564451218946961186

/-! ## A190738.P5506850355738949380

`A104259(A046092(n))%A126809(n+1)`
-/

namespace A190738.P5506850355738949380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104259 (A046092 n).toNat) (A126809 (n + 1))

end

end A190738.P5506850355738949380

/-! ## A190738.P1458135299838719696

`A155887(2*(n+1)²)`
-/

namespace A190738.P1458135299838719696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155887 (2 * (n + 1) ^ 2)

end

end A190738.P1458135299838719696

/-!
# A190739: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r] + [n*v/r] + [n*w/r], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/8.

The programs for A190739, there is no canonical definition to state claims against.
-/

/-! ## A190739.P4159344577237877802

`A330094(A187393(n+1))+A329832(n+1)`
-/

namespace A190739.P4159344577237877802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330094 (A187393 (n + 1)).toNat + A329832 (n + 1)

end

end A190739.P4159344577237877802

/-! ## A190739.P9818306398484709351

`A330115(n+1)+A330067(A187393(n+1))`
-/

namespace A190739.P9818306398484709351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330115 (n + 1) + A330067 (A187393 (n + 1)).toNat

end

end A190739.P9818306398484709351

/-! ## A190739.P6005681181127547064

`A017029(3*n+2)-A004197(A057733(n+1))`
-/

namespace A190739.P6005681181127547064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (3 * n + 2) - A004197 (A057733 (n + 1)).toNat

end

end A190739.P6005681181127547064

/-!
# A190740: a(n) = n + [nr/s] + [nt/s] + [nu/s] + [nv/s] + [nw/s], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/8.

The programs for A190740, there is no canonical definition to state claims against.
-/

/-! ## A190740.P18316329894032001976

`A141207(3*(n+1))-A141242(A141211(n))`
-/

namespace A190740.P18316329894032001976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141207 (3 * (n + 1)) - A141242 (A141211 n).toNat

end

end A190740.P18316329894032001976

/-! ## A190740.P1909658133742239090

`6*(n+1)+A003313(A045992(n+1))`
-/

namespace A190740.P1909658133742239090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) + A003313 (A045992 (n + 1)).toNat

end

end A190740.P1909658133742239090

/-! ## A190740.P1033458219447754887

`A072089(A017137(n))+A004526(n)`
-/

namespace A190740.P1033458219447754887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A017137 n).toNat + A004526 n

end

end A190740.P1033458219447754887

/-!
# A190741: a(n) = n + [nr/t] + [ns/t] + [nu/t] + [nv/t] + [nw/t], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/8.

The programs for A190741, there is no canonical definition to state claims against.
-/

/-! ## A190741.P8949700291104918492

`A319540(A238125(2*(n+1)))+A062471(3*n+5)`
-/

namespace A190741.P8949700291104918492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319540 (A238125 (2 * (n + 1))).toNat + A062471 (3 * n + 5)

end

end A190741.P8949700291104918492

/-! ## A190741.P7991367539867965457

`∑[A000120(A050268(2*n+5))+12]`
-/

namespace A190741.P7991367539867965457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A050268 (2 * n + 5)).toNat + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190741.P7991367539867965457

/-!
# A190742: a(n) = n + [nr/u] + [ns/u] + [nt/u] + [nv/u] + [nw/u], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/8.

The programs for A190742, there is no canonical definition to state claims against.
-/

/-! ## A190742.P9203200162156127741

`3*n+1-A188967(A020701(n))`
-/

namespace A190742.P9203200162156127741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A188967 (A020701 n).toNat

end

end A190742.P9203200162156127741

/-! ## A190742.P7961870260768276820

`3*n+1-A188967(A000045(n+4))`
-/

namespace A190742.P7961870260768276820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A188967 (A000045 (n + 4)).toNat

end

end A190742.P7961870260768276820

/-! ## A190742.P8792037276387150302

`A341994(A090983(n+1))+A008486(n)`
-/

namespace A190742.P8792037276387150302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A090983 (n + 1)).toNat + A008486 n

end

end A190742.P8792037276387150302

/-! ## A190742.P6452833784805528422

`A159684(A287912(n))+A055643(3*n)`
-/

namespace A190742.P6452833784805528422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A287912 n).toNat + A055643 (3 * n)

end

end A190742.P6452833784805528422

/-! ## A190742.P2346197250983578899

`A165334(n+1)-A000002(A049960(n+1))`
-/

namespace A190742.P2346197250983578899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165334 (n + 1) - A000002 (A049960 (n + 1)).toNat

end

end A190742.P2346197250983578899

/-!
# A190743: a(n) = n + [nr/v] + [ns/v] + [nt/v] + [nu/v] + [nw/v], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/8.

The programs for A190743, there is no canonical definition to state claims against.
-/

/-! ## A190743.P5525823375831820714

`A103663(A079315(2*n+3))+A072154(3*n+1)`
-/

namespace A190743.P5525823375831820714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103663 (A079315 (2 * n + 3)).toNat + A072154 (3 * n + 1)

end

end A190743.P5525823375831820714

/-! ## A190743.P17254657565124812392

`A304502(n)+A102679(A006190(n))`
-/

namespace A190743.P17254657565124812392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304502 n + A102679 (A006190 n).toNat

end

end A190743.P17254657565124812392

/-! ## A190743.P10715354416467432579

`A102679(A006190(n))+A304500(n)+2*A304501(n)`
-/

namespace A190743.P10715354416467432579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A006190 n).toNat + (A304500 n + 2 * A304501 n)

end

end A190743.P10715354416467432579

/-!
# A190744: a(n) = n + [nr/w] + [ns/w] + [nt/w] + [nu/w] + [nv/w], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/8.

The programs for A190744, there is no canonical definition to state claims against.
-/

/-! ## A190744.P3481616389496246853

`A070939(A017920(n))+A026179(n+1)`
-/

namespace A190744.P3481616389496246853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A017920 n).toNat + A026179 (n + 1)

end

end A190744.P3481616389496246853

/-! ## A190744.P3431726553418122191

`A240603(n+1)-A212793(A080040(n))`
-/

namespace A190744.P3431726553418122191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1) - A212793 (A080040 n).toNat

end

end A190744.P3431726553418122191

/-! ## A190744.P6649774925685627902

`∑[A079730(A002203(n))]`
-/

namespace A190744.P6649774925685627902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079730 (A002203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190744.P6649774925685627902

/-! ## A190744.P946221170094098432

`A026179(n+1)+∑[A124778(A132372(n))]`
-/

namespace A190744.P946221170094098432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A132372 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190744.P946221170094098432

/-!
# A190745: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r] + [n*v/r] + [n*w/r], where r=sinh(1), s=cosh(1), t=tanh(1), u=csch(1), v=sech(1), w=coth(1).

The programs for A190745, there is no canonical definition to state claims against.
-/

/-! ## A190745.P16923564139485613603

`A315520(n)+A308006(A329066(n))`
-/

namespace A190745.P16923564139485613603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n + A308006 (A329066 n).toNat

end

end A190745.P16923564139485613603

/-! ## A190745.P10380500354215170610

`A286061(3*n+1)-A273129(A034691(n))`
-/

namespace A190745.P10380500354215170610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286061 (3 * n + 1) - A273129 (A034691 n).toNat

end

end A190745.P10380500354215170610

/-! ## A190745.P10726886616214029225

`A028252(n+1)+Δ[A318434(3*n+2)]`
-/

namespace A190745.P10726886616214029225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318434 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028252 (n + 1) + (f1 (n + 1) - f1 n)

end

end A190745.P10726886616214029225

/-! ## A190745.P11425528750740171818

`A305194(A085908(n+1))+A090772(n+1)`
-/

namespace A190745.P11425528750740171818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A085908 (n + 1)).toNat + A090772 (n + 1)

end

end A190745.P11425528750740171818

/-! ## A190745.P15472505335846501319

`A350849(A233346(n+1))+A190344(n+1)`
-/

namespace A190745.P15472505335846501319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350849 (A233346 (n + 1)).toNat + A190344 (n + 1)

end

end A190745.P15472505335846501319

/-!
# A190746: n+[nr/s]+[nt/s]+[nu/s]+[nv/s]+[nw/s], where r=sinh(1), s=cosh(1), t=tanh(1), u=csch(1), v=sech(1), w=coth(1).

The programs for A190746, there is no canonical definition to state claims against.
-/

/-! ## A190746.P9822001174003191721

`A327051(A268448(n+1))+4*n+1`
-/

namespace A190746.P9822001174003191721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A268448 (n + 1)).toNat + (4 * n : ℤ) + 1

end

end A190746.P9822001174003191721

/-! ## A190746.P10798303107072223039

`A321694(A217112(n+1))+A314670(n)`
-/

namespace A190746.P10798303107072223039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (A217112 (n + 1)).toNat + A314670 n

end

end A190746.P10798303107072223039

/-! ## A190746.P15624150125287785567

`A313537(n)-A005087(A120588(n))`
-/

namespace A190746.P15624150125287785567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n - A005087 (A120588 n).toNat

end

end A190746.P15624150125287785567

/-! ## A190746.P10349745775094859329

`A313476(n)-A169671(A120588(n))`
-/

namespace A190746.P10349745775094859329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A169671 (A120588 n).toNat

end

end A190746.P10349745775094859329

/-! ## A190746.P2425123101939023564

`A313476(n)-A169671(A239081(n))`
-/

namespace A190746.P2425123101939023564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A169671 (A239081 n).toNat

end

end A190746.P2425123101939023564

/-!
# A190747: n+[nr/t]+[ns/t]+[nu/t]+[nv/t]+[nw/t], where r=sinh(1), s=cosh(1), t=tanh(1), u=csch(1), v=sech(1), w=coth(1).

The programs for A190747, there is no canonical definition to state claims against.
-/

/-! ## A190747.P2212237444304618787

`A323048(A004771(n)+∑{p}[n+1, gcd(n, #)])`
-/

namespace A190747.P2212237444304618787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A004771 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A190747.P2212237444304618787

/-! ## A190747.P15476276619998906124

`A017353(n)-A325195(A045410(n+1))`
-/

namespace A190747.P15476276619998906124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A325195 (A045410 (n + 1)).toNat

end

end A190747.P15476276619998906124

/-! ## A190747.P5518396985746168757

`A325362(6*n+7)-A206718(2*(n+2))`
-/

namespace A190747.P5518396985746168757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (6 * n + 7) - A206718 (2 * (n + 2))

end

end A190747.P5518396985746168757

/-! ## A190747.P8935994011374440436

`A017137(n)+A001221(A001453(n+2))`
-/

namespace A190747.P8935994011374440436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n + A001221 (A001453 (n + 2)).toNat

end

end A190747.P8935994011374440436

/-! ## A190747.P14662607022710129331

`A167520(2*(n+1)+A187387(n+1)-1)`
-/

namespace A190747.P14662607022710129331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 ((2 * (n + 1) : ℤ) + (A187387 (n + 1) - 1)).toNat

end

end A190747.P14662607022710129331

/-!
# A190748: n+[nr/u]+[ns/u]+[nt/u]+[nv/u]+[nw/u], where r=sinh(1), s=cosh(1), t=tanh(1), u=csch(1), v=sech(1), w=coth(1).

The programs for A190748, there is no canonical definition to state claims against.
-/

/-! ## A190748.P2836057755193912294

`A247912(3*(n+1))-A282162(A000108(n))`
-/

namespace A190748.P2836057755193912294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247912 (3 * (n + 1)) - A282162 (A000108 n).toNat

end

end A190748.P2836057755193912294

/-! ## A190748.P10375531445839314984

`A070887(A050970(n+1))+A045572(3*n+2)`
-/

namespace A190748.P10375531445839314984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (A050970 (n + 1)).toNat + A045572 (3 * n + 2)

end

end A190748.P10375531445839314984

/-! ## A190748.P10314968319524862754

`A017029(n)+A001222(A298994(n))`
-/

namespace A190748.P10314968319524862754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + A001222 (A298994 n).toNat

end

end A190748.P10314968319524862754

/-! ## A190748.P13963048720754595297

`A141646(A000108(n))+A045572(3*n+2)`
-/

namespace A190748.P13963048720754595297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141646 (A000108 n).toNat + A045572 (3 * n + 2)

end

end A190748.P13963048720754595297

/-! ## A190748.P220137069017960818

`A165560(A000110(n))+A047211(3*n+2)`
-/

namespace A190748.P220137069017960818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A000110 n).toNat + A047211 (3 * n + 2)

end

end A190748.P220137069017960818

/-!
# A190749: n+[nr/v]+[ns/v]+[nt/v]+[nu/v]+[nw/v], where r=sinh(1), s=cosh(1), t=tanh(1), u=csch(1), v=sech(1), w=coth(1).

The programs for A190749, there is no canonical definition to state claims against.
-/

/-! ## A190749.P8448604011074738259

`A114327(A038764(3*(n+1)))+A005229(n+1)`
-/

namespace A190749.P8448604011074738259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A038764 (3 * (n + 1))).toNat + A005229 (n + 1)

end

end A190749.P8448604011074738259

/-! ## A190749.P2299209386659139412

`A057354(A311816(n))+A022144(A187829(n+1))`
-/

namespace A190749.P2299209386659139412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A311816 n).toNat + A022144 (A187829 (n + 1)).toNat

end

end A190749.P2299209386659139412

/-! ## A190749.P11391082983761671736

`∑[A065067(A131577(n))+7]`
-/

namespace A190749.P11391082983761671736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065067 (A131577 n).toNat + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190749.P11391082983761671736

/-! ## A190749.P17743407051395335561

`A250120(2*(n+1))-A014675(A077852(n))`
-/

namespace A190749.P17743407051395335561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * (n + 1)) - A014675 (A077852 n).toNat

end

end A190749.P17743407051395335561

/-! ## A190749.P8331327880486126497

`A057354(4*n-A095408((floor(n/2)+1)*2^n))+A022144(n+1)`
-/

namespace A190749.P8331327880486126497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 ((4 * n : ℤ) - A095408 ((⌊(n : ℚ) / 2⌋ + 1) * (2 ^ n : ℤ)).toNat).toNat + A022144 (n + 1)

end

end A190749.P8331327880486126497

/-!
# A190750: n+[nr/w]+[ns/w]+[nt/w]+[nu/w]+[nv/w], where r=sinh(1), s=cosh(1), t=tanh(1), u=csch(1), v=sech(1), w=coth(1).

The programs for A190750, there is no canonical definition to state claims against.
-/

/-! ## A190750.P6985877313919643540

`A022342(3*n+2)-A056594(A298877(3*(n+1)))`
-/

namespace A190750.P6985877313919643540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (3 * n + 2) - A056594 (A298877 (3 * (n + 1))).toNat

end

end A190750.P6985877313919643540

/-! ## A190750.P12445644498221537

`floor((15*n+10)/3)-A001221(A177194(2*(n+2)))`
-/

namespace A190750.P12445644498221537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(15 * n + 10 : ℚ) / 3⌋ - A001221 (A177194 (2 * (n + 2))).toNat

end

end A190750.P12445644498221537

/-! ## A190750.P4976218261235761677

`A315187(n)+A020639(A137966(n))`
-/

namespace A190750.P4976218261235761677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + A020639 (A137966 n).toNat

end

end A190750.P4976218261235761677

/-! ## A190750.P16743903686713277528

`A168101(n)-A334196(A094125(n))`
-/

namespace A190750.P16743903686713277528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n - A334196 (A094125 n).toNat

end

end A190750.P16743903686713277528

/-! ## A190750.P15244386110694010496

`A049710(A392978(n))+5*n`
-/

namespace A190750.P15244386110694010496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A392978 n).toNat + (5 * n : ℤ)

end

end A190750.P15244386110694010496

/-!
# A190752: a(n) = n + [nr/s] + [nt/s] + [nu/s] + [nv/s] + [nw/s], where r=sinh(x), s=cosh(x), t=tanh(x), u=csch(x), v=sech(x), w=coth(x), x=Pi/2.

The programs for A190752, there is no canonical definition to state claims against.
-/

/-! ## A190752.P12584688343294530889

`A131576(A238768(n+1))+A008585(n)`
-/

namespace A190752.P12584688343294530889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A238768 (n + 1)).toNat + A008585 n

end

end A190752.P12584688343294530889

/-! ## A190752.P15498902567017580157

`A056556(A002088(2*n+1)*A026180(n+1))`
-/

namespace A190752.P15498902567017580157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A002088 (2 * n + 1) * A026180 (n + 1)).toNat

end

end A190752.P15498902567017580157

/-! ## A190752.P16921023248379027985

`A000201(2*n+1)-A134451(A259279(n))`
-/

namespace A190752.P16921023248379027985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * n + 1) - A134451 (A259279 n).toNat

end

end A190752.P16921023248379027985

/-! ## A190752.P14556273827476935999

`A286065(n+1)-A374515(A025047(n))`
-/

namespace A190752.P14556273827476935999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1) - A374515 (A025047 n).toNat

end

end A190752.P14556273827476935999

/-!
# A190753: a(n) = n + [nr/t] + [ns/t] + [nu/t] + [nv/t] + [nw/t], where r=sinh(x), s=cosh(x), t=tanh(x), u=csch(x), v=sech(x), w=coth(x), x=Pi/2.

The programs for A190753, there is no canonical definition to state claims against.
-/

/-! ## A190753.P6068363350610203543

`A137735(n)+A137735(A304508(n))`
-/

namespace A190753.P6068363350610203543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n + A137735 (A304508 n).toNat

end

end A190753.P6068363350610203543

/-! ## A190753.P9020037438891470301

`A276873(2*(n+1))+A276857(A083790(n+1))`
-/

namespace A190753.P9020037438891470301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276873 (2 * (n + 1)) + A276857 (A083790 (n + 1)).toNat

end

end A190753.P9020037438891470301

/-! ## A190753.P8291460402804987732

`A287272(A061579(2*n+3))+A126281(3*(n+1))`
-/

namespace A190753.P8291460402804987732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A061579 (2 * n + 3)).toNat + A126281 (3 * (n + 1))

end

end A190753.P8291460402804987732

/-! ## A190753.P4382302705496608493

`xor(A031279(2*n+3), A120738(A020753(2*(n+1))))`
-/

namespace A190753.P4382302705496608493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A031279 (2 * n + 3)) (A120738 (A020753 (2 * (n + 1))).toNat)

end

end A190753.P4382302705496608493

/-!
# A190754: a(n) = n + [nr/u] + [ns/u] + [nt/u] + [nv/u] + [nw/u], where r=sinh(x), s=cosh(x), t=tanh(x), u=csch(x), v=sech(x), w=coth(x), x=Pi/2.

The programs for A190754, there is no canonical definition to state claims against.
-/

/-! ## A190754.P8544892512842814005

`A100933(A311420(2*(n+2))-11)`
-/

namespace A190754.P8544892512842814005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100933 (A311420 (2 * (n + 2)) - 11).toNat

end

end A190754.P8544892512842814005

/-! ## A190754.P15851226157861040046

`A239129(n+1)-A036450(A096945(n))`
-/

namespace A190754.P15851226157861040046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) - A036450 (A096945 n).toNat

end

end A190754.P15851226157861040046

/-!
# A190755: a(n) = n + [nr/v] + [ns/v] + [nt/v] + [nu/v] + [nw/v], where r=sinh(x), s=cosh(x), t=tanh(x), u=csch(x), v=sech(x), w=coth(x), x=Pi/2.

The programs for A190755, there is no canonical definition to state claims against.
-/

/-! ## A190755.P16903745765300383078

`A268643(A198314(2*n+3))+A246296(3*(n+1))`
-/

namespace A190755.P16903745765300383078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A198314 (2 * n + 3)).toNat + A246296 (3 * (n + 1))

end

end A190755.P16903745765300383078

/-! ## A190755.P16229976588795087791

`A134478(C(A108587(3*(n+1)), 2))+A048720(n+1)`
-/

namespace A190755.P16229976588795087791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Nat.choose (A108587 (3 * (n + 1))).toNat 2) + A048720 (n + 1)

end

end A190755.P16229976588795087791

/-!
# A190756: a(n) = n + [nr/w] + [ns/w] + [nt/w] + [nu/w] + [nv/w], where r=sinh(x), s=cosh(x), t=tanh(x), u=csch(x), v=sech(x), w=coth(x), x=Pi/2.

The programs for A190756, there is no canonical definition to state claims against.
-/

/-! ## A190756.P3207367192942865890

`A325512(A003256(3*n+1))+4`
-/

namespace A190756.P3207367192942865890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325512 (A003256 (3 * n + 1)).toNat + 4

end

end A190756.P3207367192942865890

/-! ## A190756.P4378114405139432246

`A000035(A136371(n+1))+7*n+4`
-/

namespace A190756.P4378114405139432246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A136371 (n + 1)).toNat + (7 * n + 4 : ℤ)

end

end A190756.P4378114405139432246

/-! ## A190756.P519401850258650165

`A117944(A087051(n))+A017029(n)`
-/

namespace A190756.P519401850258650165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117944 (A087051 n).toNat + A017029 n

end

end A190756.P519401850258650165

/-! ## A190756.P7032650143429459159

`A017041(n)-A257000(A094832(n))`
-/

namespace A190756.P7032650143429459159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - A257000 (A094832 n).toNat

end

end A190756.P7032650143429459159

/-! ## A190756.P10640002961119095481

`A017041(n)-A321312(A092392(n))`
-/

namespace A190756.P10640002961119095481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - A321312 (A092392 n).toNat

end

end A190756.P10640002961119095481

/-!
# A190757: Lucas Aurifeuillian primitive part A of Lucas(10*n - 5).

The programs for A190757, the canonical program `A190757.P10981793899459881199` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190757 has offset 1).

The definition of A190757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190757.P10981793899459881199

`gcd(A061447(10*(n+1)-5), A027941(n)*A106729(n)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190757

/-- `gcd(A061447(10*(n+1)-5), A027941(n)*A106729(n)+1)` -/
def P10981793899459881199.Spec : Prop :=
  ∀ n, (P10981793899459881199.a n : ℤ) = A190757 (n + 1)

theorem P10981793899459881199.correct : P10981793899459881199.Spec := by
  intro n
  simp only [A190757, Nat.add_sub_cancel]

end A190757

/-! ## A190757.P18138070539760530343

`gcd(A001603(n), A061447(A017329(n)))`
-/

namespace A190757.P18138070539760530343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001603 n) (A061447 (A017329 n).toNat)

end

end A190757.P18138070539760530343

namespace A190757

/-- `gcd(A001603(n), A061447(A017329(n)))` -/
def P18138070539760530343.Spec : Prop :=
  ∀ n, (P18138070539760530343.a n : ℤ) = A190757 (n + 1)

end A190757

/-! ## A190757.P6843697585787741761

`A061447(A017329(n))/A190781(n+1)`
-/

namespace A190757.P6843697585787741761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061447 (A017329 n).toNat : ℚ) / (A190781 (n + 1) : ℚ)

end

end A190757.P6843697585787741761

namespace A190757

/-- `A061447(A017329(n))/A190781(n+1)` -/
def P6843697585787741761.Spec : Prop :=
  ∀ n, P6843697585787741761.a n = (A190757 (n + 1) : ℚ)

end A190757

/-!
# A190759: Number of tilings of a 5 X n rectangle using right trominoes and 2 X 2 tiles.

The programs for A190759, there is no canonical definition to state claims against.
-/

/-! ## A190759.P3259967990737075225

`A219946(A055999(n+3))`
-/

namespace A190759.P3259967990737075225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A055999 (n + 3)).toNat

end

end A190759.P3259967990737075225

/-! ## A190759.P5456440852232066369

`A219946(eq[5, A002262(n)])`
-/

namespace A190759.P5456440852232066369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190759.P5456440852232066369

/-! ## A190759.P9413758825091914480

`A219946(eq[5, A025581(n)])`
-/

namespace A190759.P9413758825091914480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190759.P9413758825091914480

/-! ## A190759.P5345793270811292995

`A219946(A052905(n+2)+10)`
-/

namespace A190759.P5345793270811292995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A052905 (n + 2) + 10).toNat

end

end A190759.P5345793270811292995

/-! ## A190759.P13434480274199625225

`A219946(eq[6, A002260(n+1)])`
-/

namespace A190759.P13434480274199625225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190759.P13434480274199625225

/-!
# A190760: Product of digits is divisible by number of digits.

The programs for A190760, there is no canonical definition to state claims against.
-/

/-! ## A190760.P17984613521301811668

`lt[A196564(A051022(n)), 2]`
-/

namespace A190760.P17984613521301811668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A051022 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190760.P17984613521301811668

/-! ## A190760.P16879045192723460372

`lt[A093178(A062003(n)), 10]`
-/

namespace A190760.P16879045192723460372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A062003 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190760.P16879045192723460372

/-! ## A190760.P14739354180893618393

`lt[A001057(A061205(n)), 42]`
-/

namespace A190760.P14739354180893618393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A061205 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190760.P14739354180893618393

/-! ## A190760.P6788181635563594046

`lt[A196564(n), A000122(n²)]`
-/

namespace A190760.P6788181635563594046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190760.P6788181635563594046

/-! ## A190760.P2575701798536684045

`lt[A118759(n), A014682(A308003(n))]`
-/

namespace A190760.P2575701798536684045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A308003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190760.P2575701798536684045

/-! ## A190760.P9883602278057859173

`lt[A196564(n), A007978(A001359(2*(n+2)))]`
-/

namespace A190760.P9883602278057859173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A001359 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190760.P9883602278057859173

/-! ## A190760.P13721852512952379725

`lt[A101152(A348674(n)), A073053(n)]`
-/

namespace A190760.P13721852512952379725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101152 (A348674 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190760.P13721852512952379725

/-! ## A190760.P7475633981247579451

`lt[A101152(A337843(n)-n), A073053(n)]`
-/

namespace A190760.P7475633981247579451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101152 (A337843 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190760.P7475633981247579451

/-! ## A190760.P10940984635136276465

`eq[A004151(n+1), A107603(n+1)]`
-/

namespace A190760.P10940984635136276465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190760.P10940984635136276465

/-! ## A190760.P14986892399265166902

`eq[A004719(n+1), A107603(n+1)]`
-/

namespace A190760.P14986892399265166902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190760.P14986892399265166902

/-!
# A190761: Expansion of g.f. A(x) satisfying A(x) = x + A(A(x))^2 - A(A(x))^3.

The programs for A190761, there is no canonical definition to state claims against.
-/

/-! ## A190761.P4864017352692988514

`A261585(record[n!-n])`
-/

namespace A190761.P4864017352692988514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190761.P4864017352692988514

/-! ## A190761.P7847899055703873019

`A005700(n)+A002321(A057331(n))`
-/

namespace A190761.P7847899055703873019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 n + A002321 (A057331 n).toNat

end

end A190761.P7847899055703873019

/-!
# A190762: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(1/2),2,1) and [ ]=floor.

The programs for A190762, the canonical program `A190762.P9361188072079754421` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190762 has offset 1).

The definition of A190762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190762.P9361188072079754421

`A184118(n+1)-2*A003152(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190762

/-- `A184118(n+1)-2*A003152(n+1)` -/
def P9361188072079754421.Spec : Prop :=
  ∀ n, P9361188072079754421.a n = A190762 (n + 1)

theorem P9361188072079754421.correct : P9361188072079754421.Spec := by
  intro n
  simp only [A190762, Nat.add_sub_cancel]

end A190762

/-! ## A190762.P9780687590500401105

`A001954(n+1)-(A080755(n+1)+A003152(n+1))`
-/

namespace A190762.P9780687590500401105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 (n + 1) - (A080755 (n + 1) + A003152 (n + 1))

end

end A190762.P9780687590500401105

namespace A190762

/-- `A001954(n+1)-(A080755(n+1)+A003152(n+1))` -/
def P9780687590500401105.Spec : Prop :=
  ∀ n, P9780687590500401105.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P16451356647338048297

`A001953(n+1)-(A049472(n+1)+A049472(n+1))`
-/

namespace A190762.P16451356647338048297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (n + 1) - (A049472 (n + 1) + A049472 (n + 1))

end

end A190762.P16451356647338048297

namespace A190762

/-- `A001953(n+1)-(A049472(n+1)+A049472(n+1))` -/
def P16451356647338048297.Spec : Prop :=
  ∀ n, P16451356647338048297.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P12055129016615897552

`A001953(n+1)+A049473(n+1)-A091087(n+1)`
-/

namespace A190762.P12055129016615897552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (n + 1) + (A049473 (n + 1) - A091087 (n + 1))

end

end A190762.P12055129016615897552

namespace A190762

/-- `A001953(n+1)+A049473(n+1)-A091087(n+1)` -/
def P12055129016615897552.Spec : Prop :=
  ∀ n, P12055129016615897552.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P17360473170212513260

`A080652(n+2)-(2*floor((n+1)/2*sqrt(2))+n+3)`
-/

namespace A190762.P17360473170212513260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 2) - (2 * ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n + 3 : ℤ))

end

end A190762.P17360473170212513260

namespace A190762

/-- `A080652(n+2)-(2*floor((n+1)/2*sqrt(2))+n+3)` -/
def P17360473170212513260.Spec : Prop :=
  ∀ n, P17360473170212513260.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P12481393237071143579

`abs(Δ[A307483(n+1)+A307446(n+1)])`
-/

namespace A190762.P12481393237071143579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307483 (n + 1) + A307446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A190762.P12481393237071143579

namespace A190762

/-- `abs(Δ[A307483(n+1)+A307446(n+1)])` -/
def P12481393237071143579.Spec : Prop :=
  ∀ n, P12481393237071143579.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P5901136190308058745

`A184118(n+1)-A005843(A003152(n+1))`
-/

namespace A190762.P5901136190308058745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1) - A005843 (A003152 (n + 1)).toNat

end

end A190762.P5901136190308058745

namespace A190762

/-- `A184118(n+1)-A005843(A003152(n+1))` -/
def P5901136190308058745.Spec : Prop :=
  ∀ n, P5901136190308058745.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P700454621760809621

`A006337(A081477(n+1))-A159684(A001953(n))`
-/

namespace A190762.P700454621760809621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A081477 (n + 1)).toNat - A159684 (A001953 n).toNat

end

end A190762.P700454621760809621

namespace A190762

/-- `A006337(A081477(n+1))-A159684(A001953(n))` -/
def P700454621760809621.Spec : Prop :=
  ∀ n, P700454621760809621.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P6495870279035546234

`A083035(n+1)+A080764(2*n+1)`
-/

namespace A190762.P6495870279035546234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1) + A080764 (2 * n + 1)

end

end A190762.P6495870279035546234

namespace A190762

/-- `A083035(n+1)+A080764(2*n+1)` -/
def P6495870279035546234.Spec : Prop :=
  ∀ n, P6495870279035546234.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P9138936386231446870

`A080764(A005408(n))+A004641(A003152(n+1))`
-/

namespace A190762.P9138936386231446870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A005408 n).toNat + A004641 (A003152 (n + 1)).toNat

end

end A190762.P9138936386231446870

namespace A190762

/-- `A080764(A005408(n))+A004641(A003152(n+1))` -/
def P9138936386231446870.Spec : Prop :=
  ∀ n, P9138936386231446870.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P14534962807524102945

`A080764(A005408(n))+A059841(A074840(n+1))`
-/

namespace A190762.P14534962807524102945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A005408 n).toNat + A059841 (A074840 (n + 1)).toNat

end

end A190762.P14534962807524102945

namespace A190762

/-- `A080764(A005408(n))+A059841(A074840(n+1))` -/
def P14534962807524102945.Spec : Prop :=
  ∀ n, P14534962807524102945.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P18143456986037325182

`A003152(A144396(n+1))-A144396(A003152(n+1))`
-/

namespace A190762.P18143456986037325182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A144396 (n + 1)).toNat - A144396 (A003152 (n + 1)).toNat

end

end A190762.P18143456986037325182

namespace A190762

/-- `A003152(A144396(n+1))-A144396(A003152(n+1))` -/
def P18143456986037325182.Spec : Prop :=
  ∀ n, P18143456986037325182.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P13821327717421464852

`A159684(A001952(n+1))+A083035(n+1)`
-/

namespace A190762.P13821327717421464852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A001952 (n + 1)).toNat + A083035 (n + 1)

end

end A190762.P13821327717421464852

namespace A190762

/-- `A159684(A001952(n+1))+A083035(n+1)` -/
def P13821327717421464852.Spec : Prop :=
  ∀ n, P13821327717421464852.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P11991974203204909546

`A083035(n+1)+A083035(A184118(n+1))`
-/

namespace A190762.P11991974203204909546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1) + A083035 (A184118 (n + 1)).toNat

end

end A190762.P11991974203204909546

namespace A190762

/-- `A083035(n+1)+A083035(A184118(n+1))` -/
def P11991974203204909546.Spec : Prop :=
  ∀ n, P11991974203204909546.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P16265372848906566126

`A159684(A001952(n+1))+A004641(A003152(n+1))`
-/

namespace A190762.P16265372848906566126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A001952 (n + 1)).toNat + A004641 (A003152 (n + 1)).toNat

end

end A190762.P16265372848906566126

namespace A190762

/-- `A159684(A001952(n+1))+A004641(A003152(n+1))` -/
def P16265372848906566126.Spec : Prop :=
  ∀ n, P16265372848906566126.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P17887547216621081607

`A083035(A001952(n+1)+2)+A083035(n+1)`
-/

namespace A190762.P17887547216621081607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A001952 (n + 1) + 2).toNat + A083035 (n + 1)

end

end A190762.P17887547216621081607

namespace A190762

/-- `A083035(A001952(n+1)+2)+A083035(n+1)` -/
def P17887547216621081607.Spec : Prop :=
  ∀ n, P17887547216621081607.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P15421658804144378096

`A000034(A001952(n+1))-A159684(A001953(n))`
-/

namespace A190762.P15421658804144378096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001952 (n + 1)).toNat - A159684 (A001953 n).toNat

end

end A190762.P15421658804144378096

namespace A190762

/-- `A000034(A001952(n+1))-A159684(A001953(n))` -/
def P15421658804144378096.Spec : Prop :=
  ∀ n, P15421658804144378096.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P10888731217810837806

`A080764(A140868(n+1))+A080764(A005408(n))`
-/

namespace A190762.P10888731217810837806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A140868 (n + 1)).toNat + A080764 (A005408 n).toNat

end

end A190762.P10888731217810837806

namespace A190762

/-- `A080764(A140868(n+1))+A080764(A005408(n))` -/
def P10888731217810837806.Spec : Prop :=
  ∀ n, P10888731217810837806.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P17826253157203290006

`A263844(A286686(A003151(n+1)+1))`
-/

namespace A190762.P17826253157203290006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (A286686 (A003151 (n + 1) + 1).toNat).toNat

end

end A190762.P17826253157203290006

namespace A190762

/-- `A263844(A286686(A003151(n+1)+1))` -/
def P17826253157203290006.Spec : Prop :=
  ∀ n, P17826253157203290006.a n = A190762 (n + 1)

end A190762

/-! ## A190762.P3819040142239176998

`A263844(A286686(A001952(n+1)-n))`
-/

namespace A190762.P3819040142239176998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (A286686 (A001952 (n + 1) - (n : ℤ)).toNat).toNat

end

end A190762.P3819040142239176998

namespace A190762

/-- `A263844(A286686(A001952(n+1)-n))` -/
def P3819040142239176998.Spec : Prop :=
  ∀ n, P3819040142239176998.a n = A190762 (n + 1)

end A190762

/-!
# A190763: Positions of 0 in A190762.

The programs for A190763, the canonical program `A190763.P13290202251909608768` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190763 has offset 1).

The definition of A190763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190763.P13290202251909608768

`ceil(sqrt(2)*A190486(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190763

/-- `ceil(sqrt(2)*A190486(n+1))` -/
def P13290202251909608768.Spec : Prop :=
  ∀ n, P13290202251909608768.a n = A190763 (n + 1)

theorem P13290202251909608768.correct : P13290202251909608768.Spec := by
  intro n
  simp only [A190763, Nat.add_sub_cancel]

end A190763

/-! ## A190763.P6413873478661914015

`2*A190486(n+1)-A190765(n+1)`
-/

namespace A190763.P6413873478661914015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190486 (n + 1) - A190765 (n + 1)

end

end A190763.P6413873478661914015

namespace A190763

/-- `2*A190486(n+1)-A190765(n+1)` -/
def P6413873478661914015.Spec : Prop :=
  ∀ n, P6413873478661914015.a n = A190763 (n + 1)

theorem P6413873478661914015.correct : P6413873478661914015.Spec := by
  intro n
  simp only [A190763, Nat.add_sub_cancel, A190763.P6413873478661914015.a, A190763.P13290202251909608768.a, A190486, A190486.P7151920494550068857.f1, A190486.P7151920494550068857.f2, A190486.P7151920494550068857.a, A190765, A190765.P11397888185412396491.a, A003151, A003151.P5230567170801236160.a, A003153, A003153.P9487334492634024191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190763

/-! ## A190763.P12330456170726093154

`∩[A190484(n+1), A258834(n)]`
-/

namespace A190763.P12330456170726093154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P12330456170726093154

namespace A190763

/-- `∩[A190484(n+1), A258834(n)]` -/
def P12330456170726093154.Spec : Prop :=
  ∀ n, (P12330456170726093154.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P16405996838746804536

`∩[A001952(n+1), A190484(n+1)]`
-/

namespace A190763.P16405996838746804536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P16405996838746804536

namespace A190763

/-- `∩[A001952(n+1), A190484(n+1)]` -/
def P16405996838746804536.Spec : Prop :=
  ∀ n, (P16405996838746804536.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P3269407774306138807

`∩[A188373(n+1), A190484(n+1)]`
-/

namespace A190763.P3269407774306138807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P3269407774306138807

namespace A190763

/-- `∩[A188373(n+1), A190484(n+1)]` -/
def P3269407774306138807.Spec : Prop :=
  ∀ n, (P3269407774306138807.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P3089795194963906812

`∩[A188396(n+1), A190484(n+1)]`
-/

namespace A190763.P3089795194963906812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P3089795194963906812

namespace A190763

/-- `∩[A188396(n+1), A190484(n+1)]` -/
def P3089795194963906812.Spec : Prop :=
  ∀ n, (P3089795194963906812.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P5469691083337333181

`∩[A190484(n+1), A190776(n+1)]`
-/

namespace A190763.P5469691083337333181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P5469691083337333181

namespace A190763

/-- `∩[A190484(n+1), A190776(n+1)]` -/
def P5469691083337333181.Spec : Prop :=
  ∀ n, (P5469691083337333181.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P13119896985469242153

`∩[A288999(n+1), A190484(n+1)]`
-/

namespace A190763.P13119896985469242153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P13119896985469242153

namespace A190763

/-- `∩[A288999(n+1), A190484(n+1)]` -/
def P13119896985469242153.Spec : Prop :=
  ∀ n, (P13119896985469242153.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P9753878603834638385

`∩[A190484(n+1), A190767(n+1)]`
-/

namespace A190763.P9753878603834638385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P9753878603834638385

namespace A190763

/-- `∩[A190484(n+1), A190767(n+1)]` -/
def P9753878603834638385.Spec : Prop :=
  ∀ n, (P9753878603834638385.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P9378359636887388183

`A026250(A190765(n+1))`
-/

namespace A190763.P9378359636887388183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A190765 (n + 1)).toNat

end

end A190763.P9378359636887388183

namespace A190763

/-- `A026250(A190765(n+1))` -/
def P9378359636887388183.Spec : Prop :=
  ∀ n, P9378359636887388183.a n = A190763 (n + 1)

end A190763

/-! ## A190763.P6835695465405497575

`∩[A188299(n+1), A190484(n+1)]`
-/

namespace A190763.P6835695465405497575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P6835695465405497575

namespace A190763

/-- `∩[A188299(n+1), A190484(n+1)]` -/
def P6835695465405497575.Spec : Prop :=
  ∀ n, (P6835695465405497575.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P6173587140100730064

`record[gcd(A026250(n+1), A026253(n+1))]`
-/

namespace A190763.P6173587140100730064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026250 (n + 1)) (A026253 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190763.P6173587140100730064

namespace A190763

/-- `record[gcd(A026250(n+1), A026253(n+1))]` -/
def P6173587140100730064.Spec : Prop :=
  ∀ n, (P6173587140100730064.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P7831873541716976158

`∩[A188399(n+1), A190484(n+1)]`
-/

namespace A190763.P7831873541716976158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P7831873541716976158

namespace A190763

/-- `∩[A188399(n+1), A190484(n+1)]` -/
def P7831873541716976158.Spec : Prop :=
  ∀ n, (P7831873541716976158.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P61550424940564280

`∩[A190484(n+1), A288215(n+1)]`
-/

namespace A190763.P61550424940564280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P61550424940564280

namespace A190763

/-- `∩[A190484(n+1), A288215(n+1)]` -/
def P61550424940564280.Spec : Prop :=
  ∀ n, (P61550424940564280.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P9292143258997529510

`∩[A327178(n+1), A258834(n)]`
-/

namespace A190763.P9292143258997529510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P9292143258997529510

namespace A190763

/-- `∩[A327178(n+1), A258834(n)]` -/
def P9292143258997529510.Spec : Prop :=
  ∀ n, (P9292143258997529510.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P17917342634180305566

`∩[A001952(n+1), A327178(n+1)]`
-/

namespace A190763.P17917342634180305566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P17917342634180305566

namespace A190763

/-- `∩[A001952(n+1), A327178(n+1)]` -/
def P17917342634180305566.Spec : Prop :=
  ∀ n, (P17917342634180305566.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P6431720062004094822

`∩[A188396(n+1), A327178(n+1)]`
-/

namespace A190763.P6431720062004094822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P6431720062004094822

namespace A190763

/-- `∩[A188396(n+1), A327178(n+1)]` -/
def P6431720062004094822.Spec : Prop :=
  ∀ n, (P6431720062004094822.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P6743864783803976633

`∩[A120752(n+1), A190484(n+1)]`
-/

namespace A190763.P6743864783803976633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P6743864783803976633

namespace A190763

/-- `∩[A120752(n+1), A190484(n+1)]` -/
def P6743864783803976633.Spec : Prop :=
  ∀ n, (P6743864783803976633.a n : ℤ) = A190763 (n + 1)

end A190763

/-! ## A190763.P15859821726085450625

`record[A026253(A026249(2*n+1))]`
-/

namespace A190763.P15859821726085450625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (A026249 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190763.P15859821726085450625

namespace A190763

/-- `record[A026253(A026249(2*n+1))]` -/
def P15859821726085450625.Spec : Prop :=
  ∀ n, P15859821726085450625.a n = A190763 (n + 1)

end A190763

/-! ## A190763.P12853757566679181803

`∩[A001952(n+1), A081477(n+1)]`
-/

namespace A190763.P12853757566679181803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190763.P12853757566679181803

namespace A190763

/-- `∩[A001952(n+1), A081477(n+1)]` -/
def P12853757566679181803.Spec : Prop :=
  ∀ n, (P12853757566679181803.a n : ℤ) = A190763 (n + 1)

end A190763

/-!
# A190764: Positions of 1 in A190762.

The programs for A190764, the canonical program `A190764.P1380385312988530608` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190764 has offset 1).

The definition of A190764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190764.P1380385312988530608

`eq[1, floor((2*n+1)/sqrt(2))%2]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190764

/-- `eq[1, floor((2*n+1)/sqrt(2))%2]` -/
def P1380385312988530608.Spec : Prop :=
  ∀ n, (P1380385312988530608.a n : ℤ) = A190764 (n + 1)

theorem P1380385312988530608.correct : P1380385312988530608.Spec := by
  intro n
  simp only [A190764, Nat.add_sub_cancel]

end A190764

/-! ## A190764.P4050821354845544604

`A288215(n+1)-1`
-/

namespace A190764.P4050821354845544604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288215 (n + 1) - 1

end

end A190764.P4050821354845544604

namespace A190764

/-- `A288215(n+1)-1` -/
def P4050821354845544604.Spec : Prop :=
  ∀ n, P4050821354845544604.a n = A190764 (n + 1)

theorem P4050821354845544604.correct : P4050821354845544604.Spec := by
  intro n
  simp only [A190764, Nat.add_sub_cancel, A190764.P4050821354845544604.a, A190764.P1380385312988530608.f1, A190764.P1380385312988530608.f2, A190764.P1380385312988530608.a, A288215, A288215.P5485610025847874001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A190764

/-! ## A190764.P3568263200632948992

`∪[A081477(2*n+1), A081477(2*(n+1))-1]`
-/

namespace A190764.P3568263200632948992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190764.P3568263200632948992

namespace A190764

/-- `∪[A081477(2*n+1), A081477(2*(n+1))-1]` -/
def P3568263200632948992.Spec : Prop :=
  ∀ n, (P3568263200632948992.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P7978516458789675726

`eq[1, A288213(n+1)]`
-/

namespace A190764.P7978516458789675726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190764.P7978516458789675726

namespace A190764

/-- `eq[1, A288213(n+1)]` -/
def P7978516458789675726.Spec : Prop :=
  ∀ n, (P7978516458789675726.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P3512606137903110821

`eq[1, gcd(2, A001953(n))]`
-/

namespace A190764.P3512606137903110821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190764.P3512606137903110821

namespace A190764

/-- `eq[1, gcd(2, A001953(n))]` -/
def P3512606137903110821.Spec : Prop :=
  ∀ n, (P3512606137903110821.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P16538781676772710430

`eq[1, A190762(n+1)]+1`
-/

namespace A190764.P16538781676772710430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190764.P16538781676772710430

namespace A190764

/-- `eq[1, A190762(n+1)]+1` -/
def P16538781676772710430.Spec : Prop :=
  ∀ n, (P16538781676772710430.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P14677855645389345450

`eq[2, A020639(A001954(n))]`
-/

namespace A190764.P14677855645389345450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190764.P14677855645389345450

namespace A190764

/-- `eq[2, A020639(A001954(n))]` -/
def P14677855645389345450.Spec : Prop :=
  ∀ n, (P14677855645389345450.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P9595558661334298138

`eq[2, A020639(A001953(n)+1)]`
-/

namespace A190764.P9595558661334298138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190764.P9595558661334298138

namespace A190764

/-- `eq[2, A020639(A001953(n)+1)]` -/
def P9595558661334298138.Spec : Prop :=
  ∀ n, (P9595558661334298138.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P6808160470251281112

`eq[2, A020639(A136119(n+1))]`
-/

namespace A190764.P6808160470251281112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A136119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190764.P6808160470251281112

namespace A190764

/-- `eq[2, A020639(A136119(n+1))]` -/
def P6808160470251281112.Spec : Prop :=
  ∀ n, (P6808160470251281112.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P5976919618753853257

`lt[1, A318517(A184119(n+1))]`
-/

namespace A190764.P5976919618753853257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (A184119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190764.P5976919618753853257

namespace A190764

/-- `lt[1, A318517(A184119(n+1))]` -/
def P5976919618753853257.Spec : Prop :=
  ∀ n, (P5976919618753853257.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P18435502373997819181

`lt[2, A020639(A001953(n)+2)]`
-/

namespace A190764.P18435502373997819181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001953 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190764.P18435502373997819181

namespace A190764

/-- `lt[2, A020639(A001953(n)+2)]` -/
def P18435502373997819181.Spec : Prop :=
  ∀ n, (P18435502373997819181.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P6760505276019004776

`A023443(A288215(n+1))`
-/

namespace A190764.P6760505276019004776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288215 (n + 1)).toNat

end

end A190764.P6760505276019004776

namespace A190764

/-- `A023443(A288215(n+1))` -/
def P6760505276019004776.Spec : Prop :=
  ∀ n, P6760505276019004776.a n = A190764 (n + 1)

end A190764

/-! ## A190764.P11060468489833814663

`lt[1, A260738(A184117(n+1)+1)]+1`
-/

namespace A190764.P11060468489833814663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A184117 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190764.P11060468489833814663

namespace A190764

/-- `lt[1, A260738(A184117(n+1)+1)]+1` -/
def P11060468489833814663.Spec : Prop :=
  ∀ n, (P11060468489833814663.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P12694457090480479464

`lt[1, A001511(A001953(n)+1)]`
-/

namespace A190764.P12694457090480479464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190764.P12694457090480479464

namespace A190764

/-- `lt[1, A001511(A001953(n)+1)]` -/
def P12694457090480479464.Spec : Prop :=
  ∀ n, (P12694457090480479464.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P7323201931928186450

`lt[1, A325940(A001953(n)+1)]`
-/

namespace A190764.P7323201931928186450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (A001953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190764.P7323201931928186450

namespace A190764

/-- `lt[1, A325940(A001953(n)+1)]` -/
def P7323201931928186450.Spec : Prop :=
  ∀ n, (P7323201931928186450.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P9137204264297920784

`∩[A049473(2*n+1), A049473(2*n)-1]`
-/

namespace A190764.P9137204264297920784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190764.P9137204264297920784

namespace A190764

/-- `∩[A049473(2*n+1), A049473(2*n)-1]` -/
def P9137204264297920784.Spec : Prop :=
  ∀ n, (P9137204264297920784.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P10178462095405908493

`eq[2, A020639(A003152(2*n+1))]`
-/

namespace A190764.P10178462095405908493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003152 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190764.P10178462095405908493

namespace A190764

/-- `eq[2, A020639(A003152(2*n+1))]` -/
def P10178462095405908493.Spec : Prop :=
  ∀ n, (P10178462095405908493.a n : ℤ) = A190764 (n + 1)

end A190764

/-! ## A190764.P9424685850755811649

`lt[2, A020639(A182769(2*n+1))]`
-/

namespace A190764.P9424685850755811649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A182769 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190764.P9424685850755811649

namespace A190764

/-- `lt[2, A020639(A182769(2*n+1))]` -/
def P9424685850755811649.Spec : Prop :=
  ∀ n, (P9424685850755811649.a n : ℤ) = A190764 (n + 1)

end A190764

/-!
# A190765: Positions of 2 in A190762.

The programs for A190765, the canonical program `A190765.P11397888185412396491` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190765 has offset 1).

The definition of A190765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190765.P11397888185412396491

`2*A190486(n+1)-A190763(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A190765

/-- `2*A190486(n+1)-A190763(n+1)` -/
def P11397888185412396491.Spec : Prop :=
  ∀ n, P11397888185412396491.a n = A190765 (n + 1)

theorem P11397888185412396491.correct : P11397888185412396491.Spec := by
  intro n
  simp only [A190765, Nat.add_sub_cancel]

end A190765

/-! ## A190765.P2145868764881913412

`∩[A120753(n+1), A022846(n)]`
-/

namespace A190765.P2145868764881913412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190765.P2145868764881913412

namespace A190765

/-- `∩[A120753(n+1), A022846(n)]` -/
def P2145868764881913412.Spec : Prop :=
  ∀ n, (P2145868764881913412.a n : ℤ) = A190765 (n + 1)

end A190765

/-! ## A190765.P14607154909011287725

`∩[A188265(n+1), A022846(n)]`
-/

namespace A190765.P14607154909011287725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190765.P14607154909011287725

namespace A190765

/-- `∩[A188265(n+1), A022846(n)]` -/
def P14607154909011287725.Spec : Prop :=
  ∀ n, (P14607154909011287725.a n : ℤ) = A190765 (n + 1)

end A190765

/-! ## A190765.P13688615725235837589

`∩[A188298(n+1), A022846(n)]`
-/

namespace A190765.P13688615725235837589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190765.P13688615725235837589

namespace A190765

/-- `∩[A188298(n+1), A022846(n)]` -/
def P13688615725235837589.Spec : Prop :=
  ∀ n, (P13688615725235837589.a n : ℤ) = A190765 (n + 1)

end A190765

/-! ## A190765.P18167388801437604176

`∩[A188322(n+1), A022846(n)]`
-/

namespace A190765.P18167388801437604176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190765.P18167388801437604176

namespace A190765

/-- `∩[A188322(n+1), A022846(n)]` -/
def P18167388801437604176.Spec : Prop :=
  ∀ n, (P18167388801437604176.a n : ℤ) = A190765 (n + 1)

end A190765

/-! ## A190765.P9803268582877305554

`∩[A188376(n+1), A022846(n)]`
-/

namespace A190765.P9803268582877305554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190765.P9803268582877305554

namespace A190765

/-- `∩[A188376(n+1), A022846(n)]` -/
def P9803268582877305554.Spec : Prop :=
  ∀ n, (P9803268582877305554.a n : ℤ) = A190765 (n + 1)

end A190765

/-! ## A190765.P13856094021234930482

`eq[2, A190762(n+1)]+1`
-/

namespace A190765.P13856094021234930482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190765.P13856094021234930482

namespace A190765

/-- `eq[2, A190762(n+1)]+1` -/
def P13856094021234930482.Spec : Prop :=
  ∀ n, (P13856094021234930482.a n : ℤ) = A190765 (n + 1)

end A190765

/-! ## A190765.P12355800027601566648

`filter[A022846(n+1), A083035(#)]`
-/

namespace A190765.P12355800027601566648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083035 (f1 j).toNat = 1) n)

end

end A190765.P12355800027601566648

namespace A190765

/-- `filter[A022846(n+1), A083035(#)]` -/
def P12355800027601566648.Spec : Prop :=
  ∀ n, P12355800027601566648.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P6858311489941231327

`filter[A022846(n+1), A188374(#)]`
-/

namespace A190765.P6858311489941231327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188374 (f1 j).toNat = 1) n)

end

end A190765.P6858311489941231327

namespace A190765

/-- `filter[A022846(n+1), A188374(#)]` -/
def P6858311489941231327.Spec : Prop :=
  ∀ n, P6858311489941231327.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P8601746821389613391

`filter[A022846(n+1), A188398(#)]`
-/

namespace A190765.P8601746821389613391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188398 (f1 j).toNat = 1) n)

end

end A190765.P8601746821389613391

namespace A190765

/-- `filter[A022846(n+1), A188398(#)]` -/
def P8601746821389613391.Spec : Prop :=
  ∀ n, P8601746821389613391.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P8880340426044772003

`A074840(A190486(n+1))`
-/

namespace A190765.P8880340426044772003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A190486 (n + 1)).toNat

end

end A190765.P8880340426044772003

namespace A190765

/-- `A074840(A190486(n+1))` -/
def P8880340426044772003.Spec : Prop :=
  ∀ n, P8880340426044772003.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P8670249154714885911

`eq[1, A327177(eq[1, A006337(n+1)])]`
-/

namespace A190765.P8670249154714885911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190765.P8670249154714885911

namespace A190765

/-- `eq[1, A327177(eq[1, A006337(n+1)])]` -/
def P8670249154714885911.Spec : Prop :=
  ∀ n, (P8670249154714885911.a n : ℤ) = A190765 (n + 1)

end A190765

/-! ## A190765.P13660028879995176137

`record[A057979(A198263(n))]`
-/

namespace A190765.P13660028879995176137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A198263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190765.P13660028879995176137

namespace A190765

/-- `record[A057979(A198263(n))]` -/
def P13660028879995176137.Spec : Prop :=
  ∀ n, P13660028879995176137.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P8863981703342636192

`record[A025480(A022842(n+1))]`
-/

namespace A190765.P8863981703342636192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A022842 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190765.P8863981703342636192

namespace A190765

/-- `record[A025480(A022842(n+1))]` -/
def P8863981703342636192.Spec : Prop :=
  ∀ n, P8863981703342636192.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P17665599651197757623

`record[A032742(A022842(n+2))]`
-/

namespace A190765.P17665599651197757623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A022842 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190765.P17665599651197757623

namespace A190765

/-- `record[A032742(A022842(n+2))]` -/
def P17665599651197757623.Spec : Prop :=
  ∀ n, P17665599651197757623.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P657811728365690642

`record[A003602(A022842(n+1)-1)]`
-/

namespace A190765.P657811728365690642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A022842 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190765.P657811728365690642

namespace A190765

/-- `record[A003602(A022842(n+1)-1)]` -/
def P657811728365690642.Spec : Prop :=
  ∀ n, P657811728365690642.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P2562568613687216308

`record[A025480(A001951(2*(n+1)))]`
-/

namespace A190765.P2562568613687216308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A001951 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190765.P2562568613687216308

namespace A190765

/-- `record[A025480(A001951(2*(n+1)))]` -/
def P2562568613687216308.Spec : Prop :=
  ∀ n, P2562568613687216308.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P6028515018206802755

`A004526(∩[2*n, A022842(n+1)])`
-/

namespace A190765.P6028515018206802755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190765.P6028515018206802755

namespace A190765

/-- `A004526(∩[2*n, A022842(n+1)])` -/
def P6028515018206802755.Spec : Prop :=
  ∀ n, P6028515018206802755.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P14713517508901048820

`A026250(A190763(n+1))`
-/

namespace A190765.P14713517508901048820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A190763 (n + 1)).toNat

end

end A190765.P14713517508901048820

namespace A190765

/-- `A026250(A190763(n+1))` -/
def P14713517508901048820.Spec : Prop :=
  ∀ n, P14713517508901048820.a n = A190765 (n + 1)

end A190765

/-! ## A190765.P7344027777749461557

`A054071(lt[A082532(n+1), A054071(n+1)])`
-/

namespace A190765.P7344027777749461557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190765.P7344027777749461557

namespace A190765

/-- `A054071(lt[A082532(n+1), A054071(n+1)])` -/
def P7344027777749461557.Spec : Prop :=
  ∀ n, P7344027777749461557.a n = A190765 (n + 1)

end A190765

/-!
# A190766: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(1/2),3,0) and [ ]=floor.

The programs for A190766, the canonical program `A190766.P9408786411329331338` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190766 has offset 1).

The definition of A190766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190766.P9408786411329331338

`A190191(n+1)+A083035(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190766

/-- `A190191(n+1)+A083035(n+1)` -/
def P9408786411329331338.Spec : Prop :=
  ∀ n, P9408786411329331338.a n = A190766 (n + 1)

theorem P9408786411329331338.correct : P9408786411329331338.Spec := by
  intro n
  simp only [A190766, Nat.add_sub_cancel]

end A190766

/-! ## A190766.P12597804446558821515

`A049472(3*(n+1))%3`
-/

namespace A190766.P12597804446558821515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (3 * (n + 1))) 3

end

end A190766.P12597804446558821515

namespace A190766

/-- `A049472(3*(n+1))%3` -/
def P12597804446558821515.Spec : Prop :=
  ∀ n, P12597804446558821515.a n = A190766 (n + 1)

end A190766

/-! ## A190766.P17199721693273893484

`A003152(3*(n+1))-A008585(A003152(n+1))`
-/

namespace A190766.P17199721693273893484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (3 * (n + 1)) - A008585 (A003152 (n + 1)).toNat

end

end A190766.P17199721693273893484

namespace A190766

/-- `A003152(3*(n+1))-A008585(A003152(n+1))` -/
def P17199721693273893484.Spec : Prop :=
  ∀ n, P17199721693273893484.a n = A190766 (n + 1)

end A190766

/-! ## A190766.P2603544921816377319

`A001952(A285077(3*(n+1)))%3`
-/

namespace A190766.P2603544921816377319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (A285077 (3 * (n + 1))).toNat) 3

end

end A190766.P2603544921816377319

namespace A190766

/-- `A001952(A285077(3*(n+1)))%3` -/
def P2603544921816377319.Spec : Prop :=
  ∀ n, P2603544921816377319.a n = A190766 (n + 1)

end A190766

/-! ## A190766.P12169416023757415714

`A010872(A188319(3*n+4)-1)`
-/

namespace A190766.P12169416023757415714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A188319 (3 * n + 4) - 1).toNat

end

end A190766.P12169416023757415714

namespace A190766

/-- `A010872(A188319(3*n+4)-1)` -/
def P12169416023757415714.Spec : Prop :=
  ∀ n, P12169416023757415714.a n = A190766 (n + 1)

end A190766

/-!
# A190767: Positions of 0 in A190766.

The programs for A190767, the canonical program `A190767.P1307513798706752112` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190767 has offset 1).

The definition of A190767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4713 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190767.P1175513142436501888

`∩[A188299(n+1), A190192(n+1)]`
-/

namespace A190767.P1175513142436501888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P1175513142436501888

namespace A190767

/-- `∩[A188299(n+1), A190192(n+1)]` -/
def P1175513142436501888.Spec : Prop :=
  ∀ n, (P1175513142436501888.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P6515585669716236053

`∩[A188399(n+1), A190192(n+1)]`
-/

namespace A190767.P6515585669716236053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P6515585669716236053

namespace A190767

/-- `∩[A188399(n+1), A190192(n+1)]` -/
def P6515585669716236053.Spec : Prop :=
  ∀ n, (P6515585669716236053.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P11801744234196827025

`∩[A190192(n+1), A288215(n+1)]`
-/

namespace A190767.P11801744234196827025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P11801744234196827025

namespace A190767

/-- `∩[A190192(n+1), A288215(n+1)]` -/
def P11801744234196827025.Spec : Prop :=
  ∀ n, (P11801744234196827025.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P1084016596496624658

`∩[A120752(n+1), A190192(n+1)]`
-/

namespace A190767.P1084016596496624658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P1084016596496624658

namespace A190767

/-- `∩[A120752(n+1), A190192(n+1)]` -/
def P1084016596496624658.Spec : Prop :=
  ∀ n, (P1084016596496624658.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P17852684887155557965

`∩[A190192(n+1), A001953(n)]`
-/

namespace A190767.P17852684887155557965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P17852684887155557965

namespace A190767

/-- `∩[A190192(n+1), A001953(n)]` -/
def P17852684887155557965.Spec : Prop :=
  ∀ n, (P17852684887155557965.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P1307513798706752112

`∩[A120752(n+1), A184578(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190767

/-- `∩[A120752(n+1), A184578(n+1)]` -/
def P1307513798706752112.Spec : Prop :=
  ∀ n, (P1307513798706752112.a n : ℤ) = A190767 (n + 1)

theorem P1307513798706752112.correct : P1307513798706752112.Spec := by
  intro n
  simp only [A190767, Nat.add_sub_cancel]

end A190767

/-! ## A190767.P7604636891633667617

`∩[A184578(n+1), A188299(n+1)]`
-/

namespace A190767.P7604636891633667617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P7604636891633667617

namespace A190767

/-- `∩[A184578(n+1), A188299(n+1)]` -/
def P7604636891633667617.Spec : Prop :=
  ∀ n, (P7604636891633667617.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P7510350585180663280

`∩[A184578(n+1), A188323(n+1)]`
-/

namespace A190767.P7510350585180663280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P7510350585180663280

namespace A190767

/-- `∩[A184578(n+1), A188323(n+1)]` -/
def P7510350585180663280.Spec : Prop :=
  ∀ n, (P7510350585180663280.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P16832534699774738585

`∩[A184578(n+1), A188375(n+1)]`
-/

namespace A190767.P16832534699774738585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P16832534699774738585

namespace A190767

/-- `∩[A184578(n+1), A188375(n+1)]` -/
def P16832534699774738585.Spec : Prop :=
  ∀ n, (P16832534699774738585.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P14337263070137318481

`∩[A184578(n+1), A188399(n+1)]`
-/

namespace A190767.P14337263070137318481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P14337263070137318481

namespace A190767

/-- `∩[A184578(n+1), A188399(n+1)]` -/
def P14337263070137318481.Spec : Prop :=
  ∀ n, (P14337263070137318481.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P17473278234654497082

`filter[A184578(n+1), A188297(#)]`
-/

namespace A190767.P17473278234654497082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188297 (f1 j).toNat = 1) n)

end

end A190767.P17473278234654497082

namespace A190767

/-- `filter[A184578(n+1), A188297(#)]` -/
def P17473278234654497082.Spec : Prop :=
  ∀ n, P17473278234654497082.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P2516601207046082792

`filter[A184578(n+1), A188321(#)]`
-/

namespace A190767.P2516601207046082792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188321 (f1 j).toNat = 1) n)

end

end A190767.P2516601207046082792

namespace A190767

/-- `filter[A184578(n+1), A188321(#)]` -/
def P2516601207046082792.Spec : Prop :=
  ∀ n, P2516601207046082792.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P315679242609029

`filter[A190192(n+1), A188297(#)]`
-/

namespace A190767.P315679242609029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188297 (f1 j).toNat = 1) n)

end

end A190767.P315679242609029

namespace A190767

/-- `filter[A190192(n+1), A188297(#)]` -/
def P315679242609029.Spec : Prop :=
  ∀ n, P315679242609029.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P14424020735690477422

`filter[A190192(n+1), A288213(#)]`
-/

namespace A190767.P14424020735690477422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288213 (f1 j).toNat = 1) n)

end

end A190767.P14424020735690477422

namespace A190767

/-- `filter[A190192(n+1), A288213(#)]` -/
def P14424020735690477422.Spec : Prop :=
  ∀ n, P14424020735690477422.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P11975444852406163827

`∩[A190192(n+1), A090892(n)]`
-/

namespace A190767.P11975444852406163827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090892 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190767.P11975444852406163827

namespace A190767

/-- `∩[A190192(n+1), A090892(n)]` -/
def P11975444852406163827.Spec : Prop :=
  ∀ n, (P11975444852406163827.a n : ℤ) = A190767 (n + 1)

end A190767

/-! ## A190767.P1211444797114031659

`filter[A190192(n+1), A104521(#)]`
-/

namespace A190767.P1211444797114031659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104521 (f1 j).toNat = 1) n)

end

end A190767.P1211444797114031659

namespace A190767

/-- `filter[A190192(n+1), A104521(#)]` -/
def P1211444797114031659.Spec : Prop :=
  ∀ n, P1211444797114031659.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P1895238310285363261

`A195119(A190492(n+1))`
-/

namespace A190767.P1895238310285363261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A190492 (n + 1)).toNat

end

end A190767.P1895238310285363261

namespace A190767

/-- `A195119(A190492(n+1))` -/
def P1895238310285363261.Spec : Prop :=
  ∀ n, P1895238310285363261.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P13733007203858673468

`A074840(A190492(n+1)-1)+1`
-/

namespace A190767.P13733007203858673468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A190492 (n + 1) - 1).toNat + 1

end

end A190767.P13733007203858673468

namespace A190767

/-- `A074840(A190492(n+1)-1)+1` -/
def P13733007203858673468.Spec : Prop :=
  ∀ n, P13733007203858673468.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P8552892136978120066

`A074840(A190492(n+1)+1)`
-/

namespace A190767.P8552892136978120066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A190492 (n + 1) + 1).toNat

end

end A190767.P8552892136978120066

namespace A190767

/-- `A074840(A190492(n+1)+1)` -/
def P8552892136978120066.Spec : Prop :=
  ∀ n, P8552892136978120066.a n = A190767 (n + 1)

end A190767

/-! ## A190767.P912955140891173918

`A026252(A190779(n+1))`
-/

namespace A190767.P912955140891173918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A190779 (n + 1)).toNat

end

end A190767.P912955140891173918

namespace A190767

/-- `A026252(A190779(n+1))` -/
def P912955140891173918.Spec : Prop :=
  ∀ n, P912955140891173918.a n = A190767 (n + 1)

end A190767

/-!
# A190768: Positions of 1 in A190766.

The programs for A190768, the canonical program `A190768.P8267790902087232996` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190768 has offset 1).

The definition of A190768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190768.P16814797663923090962

`eq[1, A190766(A065033(2*n))]`
-/

namespace A190768.P16814797663923090962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190768.P16814797663923090962

namespace A190768

/-- `eq[1, A190766(A065033(2*n))]` -/
def P16814797663923090962.Spec : Prop :=
  ∀ n, (P16814797663923090962.a n : ℤ) = A190768 (n + 1)

end A190768

/-! ## A190768.P8267790902087232996

`eq[1, A049472(3*n)%3]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190768

/-- `eq[1, A049472(3*n)%3]` -/
def P8267790902087232996.Spec : Prop :=
  ∀ n, (P8267790902087232996.a n : ℤ) = A190768 (n + 1)

theorem P8267790902087232996.correct : P8267790902087232996.Spec := by
  intro n
  simp only [A190768, Nat.add_sub_cancel]

end A190768

/-! ## A190768.P16166430979261500474

`eq[2, A049474(3*n)%3]`
-/

namespace A190768.P16166430979261500474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049474 (3 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190768.P16166430979261500474

namespace A190768

/-- `eq[2, A049474(3*n)%3]` -/
def P16166430979261500474.Spec : Prop :=
  ∀ n, (P16166430979261500474.a n : ℤ) = A190768 (n + 1)

end A190768

/-! ## A190768.P12123879702988478715

`eq[3, gcd(3, A285074(2*n+1+n))]`
-/

namespace A190768.P12123879702988478715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A285074 (2 * n + 1 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190768.P12123879702988478715

namespace A190768

/-- `eq[3, gcd(3, A285074(2*n+1+n))]` -/
def P12123879702988478715.Spec : Prop :=
  ∀ n, (P12123879702988478715.a n : ℤ) = A190768 (n + 1)

end A190768

/-! ## A190768.P17209562206474442666

`eq[1, A110090(A049472(3*n))]`
-/

namespace A190768.P17209562206474442666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 (A049472 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190768.P17209562206474442666

namespace A190768

/-- `eq[1, A110090(A049472(3*n))]` -/
def P17209562206474442666.Spec : Prop :=
  ∀ n, (P17209562206474442666.a n : ℤ) = A190768 (n + 1)

end A190768

/-! ## A190768.P3946550585589392966

`eq[1, A190766(log2(A011782(n))+1)]`
-/

namespace A190768.P3946550585589392966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190768.P3946550585589392966

namespace A190768

/-- `eq[1, A190766(log2(A011782(n))+1)]` -/
def P3946550585589392966.Spec : Prop :=
  ∀ n, (P3946550585589392966.a n : ℤ) = A190768 (n + 1)

end A190768

/-!
# A190769: Positions of 2 in A190766.

The programs for A190769, the canonical program `A190769.P6494637925840641307` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190769 has offset 1).

The definition of A190769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190769.P6494637925840641307

`∩[A120753(n+1), A190193(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190769

/-- `∩[A120753(n+1), A190193(n+1)]` -/
def P6494637925840641307.Spec : Prop :=
  ∀ n, (P6494637925840641307.a n : ℤ) = A190769 (n + 1)

theorem P6494637925840641307.correct : P6494637925840641307.Spec := by
  intro n
  simp only [A190769, Nat.add_sub_cancel]

end A190769

/-! ## A190769.P5976554489935352489

`∩[A188322(n+1), A190193(n+1)]`
-/

namespace A190769.P5976554489935352489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P5976554489935352489

namespace A190769

/-- `∩[A188322(n+1), A190193(n+1)]` -/
def P5976554489935352489.Spec : Prop :=
  ∀ n, (P5976554489935352489.a n : ℤ) = A190769 (n + 1)

end A190769

/-! ## A190769.P3332697627799139760

`∩[A188376(n+1), A190193(n+1)]`
-/

namespace A190769.P3332697627799139760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P3332697627799139760

namespace A190769

/-- `∩[A188376(n+1), A190193(n+1)]` -/
def P3332697627799139760.Spec : Prop :=
  ∀ n, (P3332697627799139760.a n : ℤ) = A190769 (n + 1)

end A190769

/-! ## A190769.P13156395237851504761

`∩[A190193(n+1), A190765(n+1)]`
-/

namespace A190769.P13156395237851504761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P13156395237851504761

namespace A190769

/-- `∩[A190193(n+1), A190765(n+1)]` -/
def P13156395237851504761.Spec : Prop :=
  ∀ n, (P13156395237851504761.a n : ℤ) = A190769 (n + 1)

end A190769

/-! ## A190769.P8762171026878758622

`∩[A136119(n+1), A190193(n+1)]`
-/

namespace A190769.P8762171026878758622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P8762171026878758622

namespace A190769

/-- `∩[A136119(n+1), A190193(n+1)]` -/
def P8762171026878758622.Spec : Prop :=
  ∀ n, (P8762171026878758622.a n : ℤ) = A190769 (n + 1)

end A190769

/-! ## A190769.P11579295416969334887

`∩[A184578(n+1), A190193(n+1)]`
-/

namespace A190769.P11579295416969334887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P11579295416969334887

namespace A190769

/-- `∩[A184578(n+1), A190193(n+1)]` -/
def P11579295416969334887.Spec : Prop :=
  ∀ n, (P11579295416969334887.a n : ℤ) = A190769 (n + 1)

end A190769

/-! ## A190769.P12049299118357833811

`∩[A184618(n+1), A190193(n+1)]`
-/

namespace A190769.P12049299118357833811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P12049299118357833811

namespace A190769

/-- `∩[A184618(n+1), A190193(n+1)]` -/
def P12049299118357833811.Spec : Prop :=
  ∀ n, (P12049299118357833811.a n : ℤ) = A190769 (n + 1)

end A190769

/-! ## A190769.P14026160458704879444

`∩[A190193(n+1), A395101(n+1)]`
-/

namespace A190769.P14026160458704879444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P14026160458704879444

namespace A190769

/-- `∩[A190193(n+1), A395101(n+1)]` -/
def P14026160458704879444.Spec : Prop :=
  ∀ n, (P14026160458704879444.a n : ℤ) = A190769 (n + 1)

end A190769

/-! ## A190769.P12705736845129910275

`filter[A190193(n+1), A080764(#)]`
-/

namespace A190769.P12705736845129910275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080764 (f1 j).toNat = 1) n)

end

end A190769.P12705736845129910275

namespace A190769

/-- `filter[A190193(n+1), A080764(#)]` -/
def P12705736845129910275.Spec : Prop :=
  ∀ n, P12705736845129910275.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P6417977470325453612

`filter[A190193(n+1), A083035(#)]`
-/

namespace A190769.P6417977470325453612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083035 (f1 j).toNat = 1) n)

end

end A190769.P6417977470325453612

namespace A190769

/-- `filter[A190193(n+1), A083035(#)]` -/
def P6417977470325453612.Spec : Prop :=
  ∀ n, P6417977470325453612.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P208589405519472649

`filter[A120753(n+1), A190191(#)]`
-/

namespace A190769.P208589405519472649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P208589405519472649

namespace A190769

/-- `filter[A120753(n+1), A190191(#)]` -/
def P208589405519472649.Spec : Prop :=
  ∀ n, P208589405519472649.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P8454424705850394387

`filter[A136119(n+1), A190191(#)]`
-/

namespace A190769.P8454424705850394387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P8454424705850394387

namespace A190769

/-- `filter[A136119(n+1), A190191(#)]` -/
def P8454424705850394387.Spec : Prop :=
  ∀ n, P8454424705850394387.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P8437789819990154962

`filter[A184578(n+1), A190191(#)]`
-/

namespace A190769.P8437789819990154962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P8437789819990154962

namespace A190769

/-- `filter[A184578(n+1), A190191(#)]` -/
def P8437789819990154962.Spec : Prop :=
  ∀ n, P8437789819990154962.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P3692338805050370374

`filter[A184618(n+1), A190191(#)]`
-/

namespace A190769.P3692338805050370374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P3692338805050370374

namespace A190769

/-- `filter[A184618(n+1), A190191(#)]` -/
def P3692338805050370374.Spec : Prop :=
  ∀ n, P3692338805050370374.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P10020694096449615686

`filter[A188322(n+1), A190191(#)]`
-/

namespace A190769.P10020694096449615686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P10020694096449615686

namespace A190769

/-- `filter[A188322(n+1), A190191(#)]` -/
def P10020694096449615686.Spec : Prop :=
  ∀ n, P10020694096449615686.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P10522370793971817025

`filter[A188376(n+1), A190191(#)]`
-/

namespace A190769.P10522370793971817025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P10522370793971817025

namespace A190769

/-- `filter[A188376(n+1), A190191(#)]` -/
def P10522370793971817025.Spec : Prop :=
  ∀ n, P10522370793971817025.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P17265775712022956759

`filter[A190193(n+1), A188374(#)]`
-/

namespace A190769.P17265775712022956759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188374 (f1 j).toNat = 1) n)

end

end A190769.P17265775712022956759

namespace A190769

/-- `filter[A190193(n+1), A188374(#)]` -/
def P17265775712022956759.Spec : Prop :=
  ∀ n, P17265775712022956759.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P12431637543620442614

`filter[A190765(n+1), A190191(#)]`
-/

namespace A190769.P12431637543620442614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P12431637543620442614

namespace A190769

/-- `filter[A190765(n+1), A190191(#)]` -/
def P12431637543620442614.Spec : Prop :=
  ∀ n, P12431637543620442614.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P15901503130947054159

`filter[A395101(n+2), A190191(#)]`
-/

namespace A190769.P15901503130947054159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P15901503130947054159

namespace A190769

/-- `filter[A395101(n+2), A190191(#)]` -/
def P15901503130947054159.Spec : Prop :=
  ∀ n, P15901503130947054159.a n = A190769 (n + 1)

end A190769

/-! ## A190769.P9591679163587977467

`filter[A049474(2*n+1), A190191(#)]`
-/

namespace A190769.P9591679163587977467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A190769.P9591679163587977467

namespace A190769

/-- `filter[A049474(2*n+1), A190191(#)]` -/
def P9591679163587977467.Spec : Prop :=
  ∀ n, P9591679163587977467.a n = A190769 (n + 1)

end A190769

/-!
# A190770: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(1/2),3,1) and [ ]=floor.

The programs for A190770, the canonical program `A190770.P3244118001186615245` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190770 has offset 1).

The definition of A190770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190770.P17048030161680888850

`A190766(n+1)+A080764(A016789(n))`
-/

namespace A190770.P17048030161680888850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (n + 1) + A080764 (A016789 n).toNat

end

end A190770.P17048030161680888850

namespace A190770

/-- `A190766(n+1)+A080764(A016789(n))` -/
def P17048030161680888850.Spec : Prop :=
  ∀ n, P17048030161680888850.a n = A190770 (n + 1)

end A190770

/-! ## A190770.P3244118001186615245

`A080755(3*n+4)-A016789(A003152(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190770

/-- `A080755(3*n+4)-A016789(A003152(n+1))` -/
def P3244118001186615245.Spec : Prop :=
  ∀ n, P3244118001186615245.a n = A190770 (n + 1)

theorem P3244118001186615245.correct : P3244118001186615245.Spec := by
  intro n
  simp only [A190770, Nat.add_sub_cancel]

end A190770

/-! ## A190770.P2256010420322551997

`A003152(A016777(n+1))-A016777(A003152(n+1))`
-/

namespace A190770.P2256010420322551997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A016777 (n + 1)).toNat - A016777 (A003152 (n + 1)).toNat

end

end A190770.P2256010420322551997

namespace A190770

/-- `A003152(A016777(n+1))-A016777(A003152(n+1))` -/
def P2256010420322551997.Spec : Prop :=
  ∀ n, P2256010420322551997.a n = A190770 (n + 1)

end A190770

/-! ## A190770.P10567316494744806454

`A016777(A194920(n+1))-A194920(A016777(n+1))`
-/

namespace A190770.P10567316494744806454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A194920 (n + 1)).toNat - A194920 (A016777 (n + 1)).toNat

end

end A190770.P10567316494744806454

namespace A190770

/-- `A016777(A194920(n+1))-A194920(A016777(n+1))` -/
def P10567316494744806454.Spec : Prop :=
  ∀ n, P10567316494744806454.a n = A190770 (n + 1)

end A190770

/-! ## A190770.P4376526445524200795

`A190766(n+1)+A080764(A188299(3*(n+1)))`
-/

namespace A190770.P4376526445524200795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (n + 1) + A080764 (A188299 (3 * (n + 1))).toNat

end

end A190770.P4376526445524200795

namespace A190770

/-- `A190766(n+1)+A080764(A188299(3*(n+1)))` -/
def P4376526445524200795.Spec : Prop :=
  ∀ n, P4376526445524200795.a n = A190770 (n + 1)

end A190770

/-!
# A190771: Positions of 0 in A190770.

The programs for A190771, there is no canonical definition to state claims against.
-/

/-! ## A190771.P5883943092002055186

`ceil(sqrt(2)*A190495(n+1))`
-/

namespace A190771.P5883943092002055186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A190495 (n + 1) : ℝ)⌉

end

end A190771.P5883943092002055186

/-! ## A190771.P10576139871837828669

`A190495(n+1)+A190488(n+1)`
-/

namespace A190771.P10576139871837828669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190495 (n + 1) + A190488 (n + 1)

end

end A190771.P10576139871837828669

/-! ## A190771.P8182067309769097905

`A190497(n+1)-A190495(n+1)`
-/

namespace A190771.P8182067309769097905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190497 (n + 1) - A190495 (n + 1)

end

end A190771.P8182067309769097905

/-! ## A190771.P2816743264277655010

`A190774(n+1)+2*A190488(n+1)`
-/

namespace A190771.P2816743264277655010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190774 (n + 1) + 2 * A190488 (n + 1)

end

end A190771.P2816743264277655010

/-! ## A190771.P9060037567022217762

`2*A190495(n+1)-A190774(n+1)`
-/

namespace A190771.P9060037567022217762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190495 (n + 1) - A190774 (n + 1)

end

end A190771.P9060037567022217762

/-! ## A190771.P3042308081576534757

`∩[A188302(n+1), A190492(n+1)]`
-/

namespace A190771.P3042308081576534757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P3042308081576534757

/-! ## A190771.P8817305284060011525

`∩[A188396(n+1), A190492(n+1)]`
-/

namespace A190771.P8817305284060011525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P8817305284060011525

/-! ## A190771.P1581906062629589142

`∩[A190492(n+1), A190763(n+1)]`
-/

namespace A190771.P1581906062629589142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P1581906062629589142

/-! ## A190771.P12152640246913333797

`∩[A190492(n+1), A190776(n+1)]`
-/

namespace A190771.P12152640246913333797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P12152640246913333797

/-! ## A190771.P8786865222042925457

`∩[A188373(n+1), A190492(n+1)]`
-/

namespace A190771.P8786865222042925457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P8786865222042925457

/-! ## A190771.P1400860254644706763

`A001952(A190488(n+1))`
-/

namespace A190771.P1400860254644706763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A190488 (n + 1)).toNat

end

end A190771.P1400860254644706763

/-! ## A190771.P16868729968606438008

`∩[A190492(n+1), A258834(n)]`
-/

namespace A190771.P16868729968606438008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P16868729968606438008

/-! ## A190771.P5474409012882898695

`∩[A001952(n+1), A190492(n+1)]`
-/

namespace A190771.P5474409012882898695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P5474409012882898695

/-! ## A190771.P4212841337753669438

`∩[A184625(n+1), A190492(n+1)]`
-/

namespace A190771.P4212841337753669438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P4212841337753669438

/-! ## A190771.P5296504714763564188

`∩[A190492(n+1), A288999(n+1)]`
-/

namespace A190771.P5296504714763564188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P5296504714763564188

/-! ## A190771.P3970182312601746824

`∩[A190492(n+1), A190767(n+1)]`
-/

namespace A190771.P3970182312601746824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P3970182312601746824

/-! ## A190771.P18289551576751676967

`A003153(A190774(n+1))`
-/

namespace A190771.P18289551576751676967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (A190774 (n + 1)).toNat

end

end A190771.P18289551576751676967

/-! ## A190771.P1439880474623397321

`A080652(A190774(n+1)+1)-2`
-/

namespace A190771.P1439880474623397321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (A190774 (n + 1) + 1).toNat - 2

end

end A190771.P1439880474623397321

/-! ## A190771.P3090939172056478043

`∩[A188299(n+1), A190492(n+1)]`
-/

namespace A190771.P3090939172056478043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190771.P3090939172056478043

/-! ## A190771.P5279103905371438349

`A188376(∩[A184623(n+1), A188376(n+1)])+2`
-/

namespace A190771.P5279103905371438349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A190771.P5279103905371438349

/-!
# A190772: Positions of 1 in A190770.

The programs for A190772, the canonical program `A190772.P9944616738065135873` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190772 has offset 1).

The definition of A190772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190772.P9944616738065135873

`eq[1, A190770(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190772

/-- `eq[1, A190770(n+1)]+1` -/
def P9944616738065135873.Spec : Prop :=
  ∀ n, (P9944616738065135873.a n : ℤ) = A190772 (n + 1)

theorem P9944616738065135873.correct : P9944616738065135873.Spec := by
  intro n
  simp only [A190772, Nat.add_sub_cancel]

end A190772

/-! ## A190772.P7950244865410277050

`eq[1, A190770(A028310(n))]`
-/

namespace A190772.P7950244865410277050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P7950244865410277050

namespace A190772

/-- `eq[1, A190770(A028310(n))]` -/
def P7950244865410277050.Spec : Prop :=
  ∀ n, (P7950244865410277050.a n : ℤ) = A190772 (n + 1)

end A190772

/-! ## A190772.P7565020339604898674

`eq[1, A049472(3*n+1)%3]`
-/

namespace A190772.P7565020339604898674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P7565020339604898674

namespace A190772

/-- `eq[1, A049472(3*n+1)%3]` -/
def P7565020339604898674.Spec : Prop :=
  ∀ n, (P7565020339604898674.a n : ℤ) = A190772 (n + 1)

end A190772

/-! ## A190772.P4427940504087517278

`eq[2, A003152(2*n+1+n)%3]`
-/

namespace A190772.P4427940504087517278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003152 (2 * n + 1 + n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P4427940504087517278

namespace A190772

/-- `eq[2, A003152(2*n+1+n)%3]` -/
def P4427940504087517278.Spec : Prop :=
  ∀ n, (P4427940504087517278.a n : ℤ) = A190772 (n + 1)

end A190772

/-! ## A190772.P3598022663912557866

`eq[1, A285074(2*n+n+2)%3]`
-/

namespace A190772.P3598022663912557866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285074 (2 * n + (n + 2))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P3598022663912557866

namespace A190772

/-- `eq[1, A285074(2*n+n+2)%3]` -/
def P3598022663912557866.Spec : Prop :=
  ∀ n, (P3598022663912557866.a n : ℤ) = A190772 (n + 1)

end A190772

/-! ## A190772.P10467539343671901945

`eq[1, A099188(A016777(n))%3]`
-/

namespace A190772.P10467539343671901945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099188 (A016777 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P10467539343671901945

namespace A190772

/-- `eq[1, A099188(A016777(n))%3]` -/
def P10467539343671901945.Spec : Prop :=
  ∀ n, (P10467539343671901945.a n : ℤ) = A190772 (n + 1)

end A190772

/-! ## A190772.P13909591803961754621

`eq[2, A088689(A074840(3*n+1))]`
-/

namespace A190772.P13909591803961754621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A074840 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P13909591803961754621

namespace A190772

/-- `eq[2, A088689(A074840(3*n+1))]` -/
def P13909591803961754621.Spec : Prop :=
  ∀ n, (P13909591803961754621.a n : ℤ) = A190772 (n + 1)

end A190772

/-! ## A190772.P15242386810186659437

`eq[0, A091684(A182769(3*n+1))]`
-/

namespace A190772.P15242386810186659437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A182769 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P15242386810186659437

namespace A190772

/-- `eq[0, A091684(A182769(3*n+1))]` -/
def P15242386810186659437.Spec : Prop :=
  ∀ n, (P15242386810186659437.a n : ℤ) = A190772 (n + 1)

end A190772

/-! ## A190772.P2424337131604422150

`eq[1, A210357(3*n+4)%3]`
-/

namespace A190772.P2424337131604422150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210357 (3 * n + 4)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190772.P2424337131604422150

namespace A190772

/-- `eq[1, A210357(3*n+4)%3]` -/
def P2424337131604422150.Spec : Prop :=
  ∀ n, (P2424337131604422150.a n : ℤ) = A190772 (n + 1)

end A190772

/-!
# A190773: Positions of 2 in A190770.

The programs for A190773, the canonical program `A190773.P3973003824351940995` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190773 has offset 1).

The definition of A190773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190773.P3973003824351940995

`eq[2, A190770(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190773

/-- `eq[2, A190770(n+1)]+1` -/
def P3973003824351940995.Spec : Prop :=
  ∀ n, (P3973003824351940995.a n : ℤ) = A190773 (n + 1)

theorem P3973003824351940995.correct : P3973003824351940995.Spec := by
  intro n
  simp only [A190773, Nat.add_sub_cancel]

end A190773

/-! ## A190773.P8160269323050164075

`eq[1, A080755(3*n+1)%3]`
-/

namespace A190773.P8160269323050164075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080755 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190773.P8160269323050164075

namespace A190773

/-- `eq[1, A080755(3*n+1)%3]` -/
def P8160269323050164075.Spec : Prop :=
  ∀ n, (P8160269323050164075.a n : ℤ) = A190773 (n + 1)

end A190773

/-! ## A190773.P2968116494316732234

`eq[2, A049472(3*n+1)%3]`
-/

namespace A190773.P2968116494316732234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190773.P2968116494316732234

namespace A190773

/-- `eq[2, A049472(3*n+1)%3]` -/
def P2968116494316732234.Spec : Prop :=
  ∀ n, (P2968116494316732234.a n : ℤ) = A190773 (n + 1)

end A190773

/-! ## A190773.P8673877294489382059

`eq[0, A099188(A016777(n))%3]`
-/

namespace A190773.P8673877294489382059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099188 (A016777 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190773.P8673877294489382059

namespace A190773

/-- `eq[0, A099188(A016777(n))%3]` -/
def P8673877294489382059.Spec : Prop :=
  ∀ n, (P8673877294489382059.a n : ℤ) = A190773 (n + 1)

end A190773

/-! ## A190773.P278497783872042826

`eq[0, A091338(A049474(3*n+1))]`
-/

namespace A190773.P278497783872042826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (A049474 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190773.P278497783872042826

namespace A190773

/-- `eq[0, A091338(A049474(3*n+1))]` -/
def P278497783872042826.Spec : Prop :=
  ∀ n, (P278497783872042826.a n : ℤ) = A190773 (n + 1)

end A190773

/-! ## A190773.P2465596774490703751

`eq[1, A110090(A183138(3*n+1))]`
-/

namespace A190773.P2465596774490703751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 (A183138 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190773.P2465596774490703751

namespace A190773

/-- `eq[1, A110090(A183138(3*n+1))]` -/
def P2465596774490703751.Spec : Prop :=
  ∀ n, (P2465596774490703751.a n : ℤ) = A190773 (n + 1)

end A190773

/-! ## A190773.P18406710759886439922

`eq[1, A163810(A001951(3*n+1))]`
-/

namespace A190773.P18406710759886439922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A001951 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190773.P18406710759886439922

namespace A190773

/-- `eq[1, A163810(A001951(3*n+1))]` -/
def P18406710759886439922.Spec : Prop :=
  ∀ n, (P18406710759886439922.a n : ℤ) = A190773 (n + 1)

end A190773

/-! ## A190773.P17813998931088247754

`A195119(lt[A285073(3*n+5), A159684(n)])`
-/

namespace A190773.P17813998931088247754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190773.P17813998931088247754

namespace A190773

/-- `A195119(lt[A285073(3*n+5), A159684(n)])` -/
def P17813998931088247754.Spec : Prop :=
  ∀ n, P17813998931088247754.a n = A190773 (n + 1)

end A190773

/-! ## A190773.P12537230308069026101

`A195119(lt[A276862(3*(n+1)), A276862(n+1)])`
-/

namespace A190773.P12537230308069026101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190773.P12537230308069026101

namespace A190773

/-- `A195119(lt[A276862(3*(n+1)), A276862(n+1)])` -/
def P12537230308069026101.Spec : Prop :=
  ∀ n, P12537230308069026101.a n = A190773 (n + 1)

end A190773

/-! ## A190773.P8885209578202483259

`A195119(lt[A285073(3*n+5), A285073(n+3)])`
-/

namespace A190773.P8885209578202483259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190773.P8885209578202483259

namespace A190773

/-- `A195119(lt[A285073(3*n+5), A285073(n+3)])` -/
def P8885209578202483259.Spec : Prop :=
  ∀ n, P8885209578202483259.a n = A190773 (n + 1)

end A190773

/-!
# A190774: Positions of 3 in A190770.

The programs for A190774, the canonical program `A190774.P847097764927375794` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190774 has offset 1).

The definition of A190774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190774.P10584864242021290446

`floor(sqrt(2)*A190488(n+1))`
-/

namespace A190774.P10584864242021290446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A190488 (n + 1) : ℝ)⌋

end

end A190774.P10584864242021290446

namespace A190774

/-- `floor(sqrt(2)*A190488(n+1))` -/
def P10584864242021290446.Spec : Prop :=
  ∀ n, P10584864242021290446.a n = A190774 (n + 1)

end A190774

/-! ## A190774.P12934243278721350505

`floor((2-sqrt(2))*A190495(n+1))`
-/

namespace A190774.P12934243278721350505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - Real.sqrt (2 : ℝ)) * (A190495 (n + 1) : ℝ)⌋

end

end A190774.P12934243278721350505

namespace A190774

/-- `floor((2-sqrt(2))*A190495(n+1))` -/
def P12934243278721350505.Spec : Prop :=
  ∀ n, P12934243278721350505.a n = A190774 (n + 1)

end A190774

/-! ## A190774.P791782747986373273

`A190495(n+1)-A190488(n+1)`
-/

namespace A190774.P791782747986373273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190495 (n + 1) - A190488 (n + 1)

end

end A190774.P791782747986373273

namespace A190774

/-- `A190495(n+1)-A190488(n+1)` -/
def P791782747986373273.Spec : Prop :=
  ∀ n, P791782747986373273.a n = A190774 (n + 1)

end A190774

/-! ## A190774.P7799343243690413654

`A190771(n+1)-2*A190488(n+1)`
-/

namespace A190774.P7799343243690413654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190771 (n + 1) - 2 * A190488 (n + 1)

end

end A190774.P7799343243690413654

namespace A190774

/-- `A190771(n+1)-2*A190488(n+1)` -/
def P7799343243690413654.Spec : Prop :=
  ∀ n, P7799343243690413654.a n = A190774 (n + 1)

end A190774

/-! ## A190774.P4670380931851160713

`2*A190495(n+1)-A190771(n+1)`
-/

namespace A190774.P4670380931851160713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190495 (n + 1) - A190771 (n + 1)

end

end A190774.P4670380931851160713

namespace A190774

/-- `2*A190495(n+1)-A190771(n+1)` -/
def P4670380931851160713.Spec : Prop :=
  ∀ n, P4670380931851160713.a n = A190774 (n + 1)

end A190774

/-! ## A190774.P847097764927375794

`∩[A184623(n+1), A083051(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A190774

/-- `∩[A184623(n+1), A083051(n)]` -/
def P847097764927375794.Spec : Prop :=
  ∀ n, (P847097764927375794.a n : ℤ) = A190774 (n + 1)

theorem P847097764927375794.correct : P847097764927375794.Spec := by
  intro n
  simp only [A190774, Nat.add_sub_cancel]

end A190774

/-! ## A190774.P15725647192823456956

`∩[A184623(n+1), A190769(n+1)]`
-/

namespace A190774.P15725647192823456956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P15725647192823456956

namespace A190774

/-- `∩[A184623(n+1), A190769(n+1)]` -/
def P15725647192823456956.Spec : Prop :=
  ∀ n, (P15725647192823456956.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P9455123509461075928

`∩[A184623(n+1), A190765(n+1)]`
-/

namespace A190774.P9455123509461075928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P9455123509461075928

namespace A190774

/-- `∩[A184623(n+1), A190765(n+1)]` -/
def P9455123509461075928.Spec : Prop :=
  ∀ n, (P9455123509461075928.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P4532039930179889446

`∩[A184623(n+1), A188376(n+1)]`
-/

namespace A190774.P4532039930179889446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P4532039930179889446

namespace A190774

/-- `∩[A184623(n+1), A188376(n+1)]` -/
def P4532039930179889446.Spec : Prop :=
  ∀ n, (P4532039930179889446.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P3546497111498583676

`∩[A184623(n+1), A188322(n+1)]`
-/

namespace A190774.P3546497111498583676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P3546497111498583676

namespace A190774

/-- `∩[A184623(n+1), A188322(n+1)]` -/
def P3546497111498583676.Spec : Prop :=
  ∀ n, (P3546497111498583676.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P584048576760902928

`∩[A184623(n+1), A187978(n+1)]`
-/

namespace A190774.P584048576760902928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P584048576760902928

namespace A190774

/-- `∩[A184623(n+1), A187978(n+1)]` -/
def P584048576760902928.Spec : Prop :=
  ∀ n, (P584048576760902928.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P1862106600178497545

`∩[A120753(n+1), A184623(n+1)]`
-/

namespace A190774.P1862106600178497545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P1862106600178497545

namespace A190774

/-- `∩[A120753(n+1), A184623(n+1)]` -/
def P1862106600178497545.Spec : Prop :=
  ∀ n, (P1862106600178497545.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P16647750702564744117

`filter[A184623(n+1), A187967(#)]`
-/

namespace A190774.P16647750702564744117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187967 (f1 j).toNat = 1) n)

end

end A190774.P16647750702564744117

namespace A190774

/-- `filter[A184623(n+1), A187967(#)]` -/
def P16647750702564744117.Spec : Prop :=
  ∀ n, P16647750702564744117.a n = A190774 (n + 1)

end A190774

/-! ## A190774.P14429372052872760058

`∩[A184623(n+1), A190193(n+1)]`
-/

namespace A190774.P14429372052872760058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P14429372052872760058

namespace A190774

/-- `∩[A184623(n+1), A190193(n+1)]` -/
def P14429372052872760058.Spec : Prop :=
  ∀ n, (P14429372052872760058.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P18202815506730850630

`∩[A184623(n+1), A188265(n+1)]`
-/

namespace A190774.P18202815506730850630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P18202815506730850630

namespace A190774

/-- `∩[A184623(n+1), A188265(n+1)]` -/
def P18202815506730850630.Spec : Prop :=
  ∀ n, (P18202815506730850630.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P18165665204536027520

`∩[A184623(n+1), A083088(n)]`
-/

namespace A190774.P18165665204536027520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P18165665204536027520

namespace A190774

/-- `∩[A184623(n+1), A083088(n)]` -/
def P18165665204536027520.Spec : Prop :=
  ∀ n, (P18165665204536027520.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P8670365552145219934

`∩[A080755(n+1), A184623(n+1)]`
-/

namespace A190774.P8670365552145219934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P8670365552145219934

namespace A190774

/-- `∩[A080755(n+1), A184623(n+1)]` -/
def P8670365552145219934.Spec : Prop :=
  ∀ n, (P8670365552145219934.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P11896353025550142606

`∩[A184623(n+1), A188298(n+1)]`
-/

namespace A190774.P11896353025550142606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P11896353025550142606

namespace A190774

/-- `∩[A184623(n+1), A188298(n+1)]` -/
def P11896353025550142606.Spec : Prop :=
  ∀ n, (P11896353025550142606.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P12801609639553787386

`∩[A184623(n+1), A187974(n+1)]`
-/

namespace A190774.P12801609639553787386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P12801609639553787386

namespace A190774

/-- `∩[A184623(n+1), A187974(n+1)]` -/
def P12801609639553787386.Spec : Prop :=
  ∀ n, (P12801609639553787386.a n : ℤ) = A190774 (n + 1)

end A190774

/-! ## A190774.P5785302936814545224

`A001951(A190488(n+1))`
-/

namespace A190774.P5785302936814545224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A190488 (n + 1)).toNat

end

end A190774.P5785302936814545224

namespace A190774

/-- `A001951(A190488(n+1))` -/
def P5785302936814545224.Spec : Prop :=
  ∀ n, P5785302936814545224.a n = A190774 (n + 1)

end A190774

/-!
# A190775: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(1/2),3,2) and [ ]=floor.

The programs for A190775, the canonical program `A190775.P2492371126564556887` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190775 has offset 1).

The definition of A190775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190775.P4104830897371576790

`(A188043(3*n+5)-1)/3-A188043(n+1)`
-/

namespace A190775.P4104830897371576790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188043 (3 * n + 5) - 1 : ℚ) / 3 - (A188043 (n + 1) : ℚ)

end

end A190775.P4104830897371576790

namespace A190775

/-- `(A188043(3*n+5)-1)/3-A188043(n+1)` -/
def P4104830897371576790.Spec : Prop :=
  ∀ n, P4104830897371576790.a n = (A190775 (n + 1) : ℚ)

end A190775

/-! ## A190775.P16200895927700475196

`A016777(A194920(n+1))-A194920(3*n+5)`
-/

namespace A190775.P16200895927700475196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A194920 (n + 1)).toNat - A194920 (3 * n + 5)

end

end A190775.P16200895927700475196

namespace A190775

/-- `A016777(A194920(n+1))-A194920(3*n+5)` -/
def P16200895927700475196.Spec : Prop :=
  ∀ n, P16200895927700475196.a n = A190775 (n + 1)

end A190775

/-! ## A190775.P2492371126564556887

`A003152(3*n+5)%A165998(A003152(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190775

/-- `A003152(3*n+5)%A165998(A003152(n+1))` -/
def P2492371126564556887.Spec : Prop :=
  ∀ n, P2492371126564556887.a n = A190775 (n + 1)

theorem P2492371126564556887.correct : P2492371126564556887.Spec := by
  intro n
  simp only [A190775, Nat.add_sub_cancel]

end A190775

/-! ## A190775.P8712539744390736940

`A049474(A016789(n+1))-A016789(A049474(n+1)-1)`
-/

namespace A190775.P8712539744390736940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A016789 (n + 1)).toNat - A016789 (A049474 (n + 1) - 1).toNat

end

end A190775.P8712539744390736940

namespace A190775

/-- `A049474(A016789(n+1))-A016789(A049474(n+1)-1)` -/
def P8712539744390736940.Spec : Prop :=
  ∀ n, P8712539744390736940.a n = A190775 (n + 1)

end A190775

/-! ## A190775.P18110129175591296421

`A190766(n+1)+A188041(A003152(3*n+5))`
-/

namespace A190775.P18110129175591296421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (n + 1) + A188041 (A003152 (3 * n + 5)).toNat

end

end A190775.P18110129175591296421

namespace A190775

/-- `A190766(n+1)+A188041(A003152(3*n+5))` -/
def P18110129175591296421.Spec : Prop :=
  ∀ n, P18110129175591296421.a n = A190775 (n + 1)

end A190775

/-!
# A190776: Positions of 0 in A190775.

The programs for A190776, the canonical program `A190776.P13870307466262364096` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190776 has offset 1).

The definition of A190776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190776.P13870307466262364096

`ceil(sqrt(2)*A190500(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A190776

/-- `ceil(sqrt(2)*A190500(n+1))` -/
def P13870307466262364096.Spec : Prop :=
  ∀ n, P13870307466262364096.a n = A190776 (n + 1)

theorem P13870307466262364096.correct : P13870307466262364096.Spec := by
  intro n
  simp only [A190776, Nat.add_sub_cancel]

end A190776

/-! ## A190776.P3804541047070145219

`A001953(A190500(n+1))`
-/

namespace A190776.P3804541047070145219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A190500 (n + 1)).toNat

end

end A190776.P3804541047070145219

namespace A190776

/-- `A001953(A190500(n+1))` -/
def P3804541047070145219.Spec : Prop :=
  ∀ n, P3804541047070145219.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P10909215819704454245

`A087057(A190500(n+1)-1)+1`
-/

namespace A190776.P10909215819704454245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (A190500 (n + 1) - 1).toNat + 1

end

end A190776.P10909215819704454245

namespace A190776

/-- `A087057(A190500(n+1)-1)+1` -/
def P10909215819704454245.Spec : Prop :=
  ∀ n, P10909215819704454245.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P11834316863966858642

`A136119(A190500(n+1)+1)-1`
-/

namespace A190776.P11834316863966858642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (A190500 (n + 1) + 1).toNat - 1

end

end A190776.P11834316863966858642

namespace A190776

/-- `A136119(A190500(n+1)+1)-1` -/
def P11834316863966858642.Spec : Prop :=
  ∀ n, P11834316863966858642.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P5922406099240337458

`A184578(A190500(n+1)+1)-1`
-/

namespace A190776.P5922406099240337458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (A190500 (n + 1) + 1).toNat - 1

end

end A190776.P5922406099240337458

namespace A190776

/-- `A184578(A190500(n+1)+1)-1` -/
def P5922406099240337458.Spec : Prop :=
  ∀ n, P5922406099240337458.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P5209639096217877280

`A184618(A190500(n+1)+1)-1`
-/

namespace A190776.P5209639096217877280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184618 (A190500 (n + 1) + 1).toNat - 1

end

end A190776.P5209639096217877280

namespace A190776

/-- `A184618(A190500(n+1)+1)-1` -/
def P5209639096217877280.Spec : Prop :=
  ∀ n, P5209639096217877280.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P4341326444937358287

`A087057(A190500(n+1)%A003146(n+1))`
-/

namespace A190776.P4341326444937358287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (Int.tmod (A190500 (n + 1)) (A003146 (n + 1))).toNat

end

end A190776.P4341326444937358287

namespace A190776

/-- `A087057(A190500(n+1)%A003146(n+1))` -/
def P4341326444937358287.Spec : Prop :=
  ∀ n, P4341326444937358287.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P6382154902971762629

`lt[A190775(n+1), 1]+1`
-/

namespace A190776.P6382154902971762629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190776.P6382154902971762629

namespace A190776

/-- `lt[A190775(n+1), 1]+1` -/
def P6382154902971762629.Spec : Prop :=
  ∀ n, (P6382154902971762629.a n : ℤ) = A190776 (n + 1)

end A190776

/-! ## A190776.P2929351183603422174

`lt[A190775(A004277(n)-n), 1]`
-/

namespace A190776.P2929351183603422174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190776.P2929351183603422174

namespace A190776

/-- `lt[A190775(A004277(n)-n), 1]` -/
def P2929351183603422174.Spec : Prop :=
  ∀ n, (P2929351183603422174.a n : ℤ) = A190776 (n + 1)

end A190776

/-! ## A190776.P14487064011555313640

`A049473(2*A190500(n+1))`
-/

namespace A190776.P14487064011555313640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * A190500 (n + 1)).toNat

end

end A190776.P14487064011555313640

namespace A190776

/-- `A049473(2*A190500(n+1))` -/
def P14487064011555313640.Spec : Prop :=
  ∀ n, P14487064011555313640.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P1197338292679784345

`A049474(2*A190500(n+1))`
-/

namespace A190776.P1197338292679784345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * A190500 (n + 1)).toNat

end

end A190776.P1197338292679784345

namespace A190776

/-- `A049474(2*A190500(n+1))` -/
def P1197338292679784345.Spec : Prop :=
  ∀ n, P1197338292679784345.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P8165734433901085342

`A087057(2*A190500(n+1))/2`
-/

namespace A190776.P8165734433901085342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087057 (2 * A190500 (n + 1)).toNat : ℚ) / 2

end

end A190776.P8165734433901085342

namespace A190776

/-- `A087057(2*A190500(n+1))/2` -/
def P8165734433901085342.Spec : Prop :=
  ∀ n, P8165734433901085342.a n = (A190776 (n + 1) : ℚ)

end A190776

/-! ## A190776.P5240923711967107037

`A049474(A190500(n+1)+A190500(n+1)-1)`
-/

namespace A190776.P5240923711967107037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A190500 (n + 1) + (A190500 (n + 1) - 1)).toNat

end

end A190776.P5240923711967107037

namespace A190776

/-- `A049474(A190500(n+1)+A190500(n+1)-1)` -/
def P5240923711967107037.Spec : Prop :=
  ∀ n, P5240923711967107037.a n = A190776 (n + 1)

end A190776

/-! ## A190776.P8730702294976841990

`lt[A159684(A285074(3*n+1)), A188374(n+1)]`
-/

namespace A190776.P8730702294976841990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A285074 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190776.P8730702294976841990

namespace A190776

/-- `lt[A159684(A285074(3*n+1)), A188374(n+1)]` -/
def P8730702294976841990.Spec : Prop :=
  ∀ n, (P8730702294976841990.a n : ℤ) = A190776 (n + 1)

end A190776

/-!
# A190777: Positions of 1 in A190775.

The programs for A190777, the canonical program `A190777.P13810788968244427247` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190777 has offset 1).

The definition of A190777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190777.P13810788968244427247

`eq[1, A190775(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190777

/-- `eq[1, A190775(n+1)]+1` -/
def P13810788968244427247.Spec : Prop :=
  ∀ n, (P13810788968244427247.a n : ℤ) = A190777 (n + 1)

theorem P13810788968244427247.correct : P13810788968244427247.Spec := by
  intro n
  simp only [A190777, Nat.add_sub_cancel]

end A190777

/-! ## A190777.P8367120309550430721

`eq[1, A190775(A004277(n)-n)]`
-/

namespace A190777.P8367120309550430721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190777.P8367120309550430721

namespace A190777

/-- `eq[1, A190775(A004277(n)-n)]` -/
def P8367120309550430721.Spec : Prop :=
  ∀ n, (P8367120309550430721.a n : ℤ) = A190777 (n + 1)

end A190777

/-! ## A190777.P10824679601128643071

`record[A184619(A184618(n+2))-A184581(n+2)]`
-/

namespace A190777.P10824679601128643071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184619 (A184618 (n + 2)).toNat - A184581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190777.P10824679601128643071

namespace A190777

/-- `record[A184619(A184618(n+2))-A184581(n+2)]` -/
def P10824679601128643071.Spec : Prop :=
  ∀ n, P10824679601128643071.a n = A190777 (n + 1)

end A190777

/-! ## A190777.P11352515900475480097

`record[A184619(A184618(n+2))-A184623(n+2)]`
-/

namespace A190777.P11352515900475480097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184619 (A184618 (n + 2)).toNat - A184623 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190777.P11352515900475480097

namespace A190777

/-- `record[A184619(A184618(n+2))-A184623(n+2)]` -/
def P11352515900475480097.Spec : Prop :=
  ∀ n, P11352515900475480097.a n = A190777 (n + 1)

end A190777

/-! ## A190777.P9149759232698672085

`record[A184619(A184618(n+1))%A184581(n+1)]`
-/

namespace A190777.P9149759232698672085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184619 (A184618 (n + 1)).toNat) (A184581 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190777.P9149759232698672085

namespace A190777

/-- `record[A184619(A184618(n+1))%A184581(n+1)]` -/
def P9149759232698672085.Spec : Prop :=
  ∀ n, P9149759232698672085.a n = A190777 (n + 1)

end A190777

/-! ## A190777.P14721842109237576108

`eq[2, A049472(3*n+2)%3]`
-/

namespace A190777.P14721842109237576108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190777.P14721842109237576108

namespace A190777

/-- `eq[2, A049472(3*n+2)%3]` -/
def P14721842109237576108.Spec : Prop :=
  ∀ n, (P14721842109237576108.a n : ℤ) = A190777 (n + 1)

end A190777

/-! ## A190777.P1352434963192084155

`eq[1, A049347(A049474(3*n+2))]`
-/

namespace A190777.P1352434963192084155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A049474 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190777.P1352434963192084155

namespace A190777

/-- `eq[1, A049347(A049474(3*n+2))]` -/
def P1352434963192084155.Spec : Prop :=
  ∀ n, (P1352434963192084155.a n : ℤ) = A190777 (n + 1)

end A190777

/-! ## A190777.P13072588388563573970

`eq[1, A049347(A194920(3*n+2))]`
-/

namespace A190777.P13072588388563573970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A194920 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190777.P13072588388563573970

namespace A190777

/-- `eq[1, A049347(A194920(3*n+2))]` -/
def P13072588388563573970.Spec : Prop :=
  ∀ n, (P13072588388563573970.a n : ℤ) = A190777 (n + 1)

end A190777

/-! ## A190777.P12358653016050830659

`eq[A014682(A049472(2*n+1)), A049472(3*n+2)]`
-/

namespace A190777.P12358653016050830659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A049472 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190777.P12358653016050830659

namespace A190777

/-- `eq[A014682(A049472(2*n+1)), A049472(3*n+2)]` -/
def P12358653016050830659.Spec : Prop :=
  ∀ n, (P12358653016050830659.a n : ℤ) = A190777 (n + 1)

end A190777

/-!
# A190778: Positions of 2 in A190775.

The programs for A190778, the canonical program `A190778.P17050714014051518169` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190778 has offset 1).

The definition of A190778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190778.P17050714014051518169

`eq[2, A190775(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190778

/-- `eq[2, A190775(n+1)]+1` -/
def P17050714014051518169.Spec : Prop :=
  ∀ n, (P17050714014051518169.a n : ℤ) = A190778 (n + 1)

theorem P17050714014051518169.correct : P17050714014051518169.Spec := by
  intro n
  simp only [A190778, Nat.add_sub_cancel]

end A190778

/-! ## A190778.P13172527218720802498

`eq[A049472(3*n+2)%3, 0]`
-/

namespace A190778.P13172527218720802498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (3 * n + 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A190778.P13172527218720802498

namespace A190778

/-- `eq[A049472(3*n+2)%3, 0]` -/
def P13172527218720802498.Spec : Prop :=
  ∀ n, (P13172527218720802498.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P11838643317064747235

`eq[0, A049347(A194920(3*n+2))]`
-/

namespace A190778.P11838643317064747235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A194920 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190778.P11838643317064747235

namespace A190778

/-- `eq[0, A049347(A194920(3*n+2))]` -/
def P11838643317064747235.Spec : Prop :=
  ∀ n, (P11838643317064747235.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P13953098417048555845

`eq[1, A110090(A183138(3*n+2))]`
-/

namespace A190778.P13953098417048555845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 (A183138 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190778.P13953098417048555845

namespace A190778

/-- `eq[1, A110090(A183138(3*n+2))]` -/
def P13953098417048555845.Spec : Prop :=
  ∀ n, (P13953098417048555845.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P14928112248369051071

`eq[1, -A010892(A195119(3*n+2))]`
-/

namespace A190778.P14928112248369051071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010892 (A195119 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190778.P14928112248369051071

namespace A190778

/-- `eq[1, -A010892(A195119(3*n+2))]` -/
def P14928112248369051071.Spec : Prop :=
  ∀ n, (P14928112248369051071.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P14358133302980121416

`eq[0, A163806(A187328(3*n+2))]`
-/

namespace A190778.P14358133302980121416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (A187328 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190778.P14358133302980121416

namespace A190778

/-- `eq[0, A163806(A187328(3*n+2))]` -/
def P14358133302980121416.Spec : Prop :=
  ∀ n, (P14358133302980121416.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P13635910846379246357

`eq[A010892(A195119(3*n+2)), A056594(4*n+2)]`
-/

namespace A190778.P13635910846379246357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A195119 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190778.P13635910846379246357

namespace A190778

/-- `eq[A010892(A195119(3*n+2)), A056594(4*n+2)]` -/
def P13635910846379246357.Spec : Prop :=
  ∀ n, (P13635910846379246357.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P10895453693672949725

`eq[1, A010892(A001951(3*n+2))]`
-/

namespace A190778.P10895453693672949725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A001951 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190778.P10895453693672949725

namespace A190778

/-- `eq[1, A010892(A001951(3*n+2))]` -/
def P10895453693672949725.Spec : Prop :=
  ∀ n, (P10895453693672949725.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P12847481806836827390

`eq[3, A111787(A080755(3*n+2))]`
-/

namespace A190778.P12847481806836827390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (A080755 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190778.P12847481806836827390

namespace A190778

/-- `eq[3, A111787(A080755(3*n+2))]` -/
def P12847481806836827390.Spec : Prop :=
  ∀ n, (P12847481806836827390.a n : ℤ) = A190778 (n + 1)

end A190778

/-! ## A190778.P3936453255240370039

`A195119(lt[A159684(3*n+4), A159684(n)])`
-/

namespace A190778.P3936453255240370039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190778.P3936453255240370039

namespace A190778

/-- `A195119(lt[A159684(3*n+4), A159684(n)])` -/
def P3936453255240370039.Spec : Prop :=
  ∀ n, P3936453255240370039.a n = A190778 (n + 1)

end A190778

/-!
# A190779: Positions of 3 in A190775.

The programs for A190779, there is no canonical definition to state claims against.
-/

/-! ## A190779.P17656504904441600250

`2*A190492(n+1)-A190767(n+1)`
-/

namespace A190779.P17656504904441600250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190492 (n + 1) - A190767 (n + 1)

end

end A190779.P17656504904441600250

/-! ## A190779.P10241439666873915081

`∩[A188319(n+1), A190500(n+1)]`
-/

namespace A190779.P10241439666873915081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P10241439666873915081

/-! ## A190779.P16141994345356348137

`∩[A190500(n+1), A190774(n+1)]`
-/

namespace A190779.P16141994345356348137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P16141994345356348137

/-! ## A190779.P812587723163098595

`∩[A190500(n+1), A083051(n)]`
-/

namespace A190779.P812587723163098595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P812587723163098595

/-! ## A190779.P15547240589608591227

`∩[A184118(n+1), A190500(n+1)]`
-/

namespace A190779.P15547240589608591227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P15547240589608591227

/-! ## A190779.P428922017087632915

`∩[A184581(n+1), A190500(n+1)]`
-/

namespace A190779.P428922017087632915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P428922017087632915

/-! ## A190779.P10984002982470012115

`∩[A184623(n+1), A190500(n+1)]`
-/

namespace A190779.P10984002982470012115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P10984002982470012115

/-! ## A190779.P16239080478870935535

`∩[A184625(n+1), A190500(n+1)]`
-/

namespace A190779.P16239080478870935535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P16239080478870935535

/-! ## A190779.P8904268703323942128

`∩[A190500(n+1), A190769(n+1)]`
-/

namespace A190779.P8904268703323942128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P8904268703323942128

/-! ## A190779.P9321120218641703769

`∩[A190500(n+1), A190765(n+1)]`
-/

namespace A190779.P9321120218641703769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P9321120218641703769

/-! ## A190779.P7199589639460640648

`A003151(A190767(n+1))`
-/

namespace A190779.P7199589639460640648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190767 (n + 1)).toNat

end

end A190779.P7199589639460640648

/-! ## A190779.P5596669127132653868

`∩[A137362(n+1), A190500(n+1)]`
-/

namespace A190779.P5596669127132653868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P5596669127132653868

/-! ## A190779.P13316467983738200694

`∩[A188376(n+1), A190500(n+1)]`
-/

namespace A190779.P13316467983738200694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P13316467983738200694

/-! ## A190779.P1889455952587197630

`∩[A188322(n+1), A190500(n+1)]`
-/

namespace A190779.P1889455952587197630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P1889455952587197630

/-! ## A190779.P13139218199895930890

`∩[A190500(n+1), A288215(n+1)]`
-/

namespace A190779.P13139218199895930890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P13139218199895930890

/-! ## A190779.P8461818930661226239

`filter[A190500(n+1), A320926(#)]`
-/

namespace A190779.P8461818930661226239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320926 (f1 j).toNat = 1) n)

end

end A190779.P8461818930661226239

/-! ## A190779.P12687855126712707154

`∩[A120753(n+1), A190500(n+1)]`
-/

namespace A190779.P12687855126712707154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P12687855126712707154

/-! ## A190779.P1513687563931603007

`A001951(A190492(n+1))`
-/

namespace A190779.P1513687563931603007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A190492 (n + 1)).toNat

end

end A190779.P1513687563931603007

/-! ## A190779.P2959370214988118654

`∩[A022846(n), A190500(n+1)]`
-/

namespace A190779.P2959370214988118654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P2959370214988118654

/-! ## A190779.P14626718833500323876

`∩[A136119(n+1), A190500(n+1)]`
-/

namespace A190779.P14626718833500323876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190779.P14626718833500323876

/-!
# A190780: a(n) = 2*(n^8 + 224*n^4 + 256)^2.

The programs for A190780, the canonical program `A190780.P7072888410292326823` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190780 has offset 0).

The definition of A190780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n^8+224*n^4+256)²` (program `A190780.P7072888410292326823`, by `A190780.P7072888410292326823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190780.P7072888410292326823

`2*(n^8+224*n^4+256)²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190780

/-- `2*(n^8+224*n^4+256)²` -/
def P7072888410292326823.Spec : Prop :=
  ∀ n, (P7072888410292326823.a n : ℤ) = A190780 n

theorem P7072888410292326823.correct : P7072888410292326823.Spec := by
  intro n
  simp only [A190780]

end A190780

/-!
# A190781: Lucas Aurifeuillian primitive part B of Lucas(10*n - 5).

The programs for A190781, the canonical program `A190781.P17856108577842530239` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190781 has offset 1).

The definition of A190781 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190781.P17856108577842530239

`gcd(A061447(10*(n+1)-5), A032908(n+1)*A106729(n)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190781

/-- `gcd(A061447(10*(n+1)-5), A032908(n+1)*A106729(n)+1)` -/
def P17856108577842530239.Spec : Prop :=
  ∀ n, (P17856108577842530239.a n : ℤ) = A190781 (n + 1)

theorem P17856108577842530239.correct : P17856108577842530239.Spec := by
  intro n
  simp only [A190781, Nat.add_sub_cancel]

end A190781

/-! ## A190781.P9431174122524975191

`gcd(A001604(n), A061447(A017329(n)))`
-/

namespace A190781.P9431174122524975191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001604 n) (A061447 (A017329 n).toNat)

end

end A190781.P9431174122524975191

namespace A190781

/-- `gcd(A001604(n), A061447(A017329(n)))` -/
def P9431174122524975191.Spec : Prop :=
  ∀ n, (P9431174122524975191.a n : ℤ) = A190781 (n + 1)

end A190781

/-! ## A190781.P15476192786960259007

`A061447(A017329(n))/A190757(n+1)`
-/

namespace A190781.P15476192786960259007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061447 (A017329 n).toNat : ℚ) / (A190757 (n + 1) : ℚ)

end

end A190781.P15476192786960259007

namespace A190781

/-- `A061447(A017329(n))/A190757(n+1)` -/
def P15476192786960259007.Spec : Prop :=
  ∀ n, P15476192786960259007.a n = (A190781 (n + 1) : ℚ)

end A190781

/-!
# A190782: Triangle T(n,k), read by rows, of the coefficients of x^k in the expansion of Sum_(m=0..n) binomial(x,m) = (a(k)*x^k)/n!, n >= 0, 0 <= k <= n.

The programs for A190782, the canonical program `A190782.P10801213553275443557` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190782 has offset 0).

The definition of A190782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190782.P10801213553275443557

`T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)*(row(n)-1)+T(n-2,k)*(row(n)-1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190782

/-- `T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)*(row(n)-1)+T(n-2,k)*(row(n)-1)²` -/
def P10801213553275443557.Spec : Prop :=
  ∀ n, P10801213553275443557.a n = A190782 n

theorem P10801213553275443557.correct : P10801213553275443557.Spec := by
  intro n
  simp only [A190782]

end A190782

/-! ## A190782.P6945214977762458077

`A054651(∑[char[∑[n]]]²-(n+1))`
-/

namespace A190782.P6945214977762458077
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A190782.P6945214977762458077

namespace A190782

/-- `A054651(∑[char[∑[n]]]²-(n+1))` -/
def P6945214977762458077.Spec : Prop :=
  ∀ n, P6945214977762458077.a n = A190782 n

end A190782

/-! ## A190782.P8979160502422777279

`A014963(A008458(n))*A054651(A061579(n))`
-/

namespace A190782.P8979160502422777279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A054651 (A061579 n).toNat

end

end A190782.P8979160502422777279

namespace A190782

/-- `A014963(A008458(n))*A054651(A061579(n))` -/
def P8979160502422777279.Spec : Prop :=
  ∀ n, P8979160502422777279.a n = A190782 n

end A190782

/-! ## A190782.P9237339454097926155

`A054651(A061579(n))%A135492(n+1)`
-/

namespace A190782.P9237339454097926155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054651 (A061579 n).toNat) (A135492 (n + 1))

end

end A190782.P9237339454097926155

namespace A190782

/-- `A054651(A061579(n))%A135492(n+1)` -/
def P9237339454097926155.Spec : Prop :=
  ∀ n, P9237339454097926155.a n = A190782 n

end A190782

/-! ## A190782.P3234287565899234082

`A054651(A061579(n))%A000051(n)`
-/

namespace A190782.P3234287565899234082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054651 (A061579 n).toNat) (A000051 n)

end

end A190782.P3234287565899234082

namespace A190782

/-- `A054651(A061579(n))%A000051(n)` -/
def P3234287565899234082.Spec : Prop :=
  ∀ n, P3234287565899234082.a n = A190782 n

end A190782

/-! ## A190782.P5797899569944108299

`A054651(A025581(n)+n-A002262(n))%A000051(n)`
-/

namespace A190782.P5797899569944108299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054651 (A025581 n + ((n : ℤ) - A002262 n)).toNat) (A000051 n)

end

end A190782.P5797899569944108299

namespace A190782

/-- `A054651(A025581(n)+n-A002262(n))%A000051(n)` -/
def P5797899569944108299.Spec : Prop :=
  ∀ n, P5797899569944108299.a n = A190782 n

end A190782

/-! ## A190782.P4506828997817987442

`A014963(A046003(n+1))*A054651(A061579(n))`
-/

namespace A190782.P4506828997817987442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046003 (n + 1)).toNat * A054651 (A061579 n).toNat

end

end A190782.P4506828997817987442

namespace A190782

/-- `A014963(A046003(n+1))*A054651(A061579(n))` -/
def P4506828997817987442.Spec : Prop :=
  ∀ n, P4506828997817987442.a n = A190782 n

end A190782

/-!
# A190783: a(n) = (a(n-1)*a(n-4) + a(n-5)*a(n-8)) / a(n-9), a(0) = ... = a(8) = 1.

The programs for A190783, the canonical program `A190783.P15229692634605951214` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190783 has offset 0).

The definition of A190783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190783.P15229692634605951214

`(a(n-1)*a(n-4)+a(n-5)*a(n-8))/a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190783

/-- `(a(n-1)*a(n-4)+a(n-5)*a(n-8))/a(n-9)` -/
def P15229692634605951214.Spec : Prop :=
  ∀ n, P15229692634605951214.a n = (A190783 n : ℚ)

end A190783

/-!
# A190784: Numbers whose binary representation is a substring of the concatenation of the binary representation of all smaller nonnegative integers not listed earlier, taken in decreasing order.

The programs for A190784, there is no canonical definition to state claims against.
-/

/-! ## A190784.P12424264876985959177

`comp[A118250(n)]`
-/

namespace A190784.P12424264876985959177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190784.P12424264876985959177

/-! ## A190784.P1200537809965166692

`eq[char[A118250(n)], A000038(n)]`
-/

namespace A190784.P1200537809965166692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190784.P1200537809965166692

/-! ## A190784.P13429561560827872332

`eq[0, char[A118250(A105390(n+1))]]`
-/

namespace A190784.P13429561560827872332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 (A105390 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190784.P13429561560827872332

/-! ## A190784.P12187836613142761147

`eq[0, char[A118250(A131981(n+1))]]`
-/

namespace A190784.P12187836613142761147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 (A131981 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190784.P12187836613142761147

/-! ## A190784.P13533746182575728280

`eq[char[A118250(n)], A000007(n+1)]`
-/

namespace A190784.P13533746182575728280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190784.P13533746182575728280

/-! ## A190784.P7071049445236987810

`eq[0, char[A118250(n)]*A001399(n)]`
-/

namespace A190784.P7071049445236987810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190784.P7071049445236987810

/-! ## A190784.P18310833580904999345

`eq[0, char[A118250(n)]*A016777(n)]`
-/

namespace A190784.P18310833580904999345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190784.P18310833580904999345

/-! ## A190784.P13141009378609816986

`eq[0, char[A118250(n)]*A084380(n)]`
-/

namespace A190784.P13141009378609816986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190784.P13141009378609816986

/-! ## A190784.P15341014929881669070

`eq[2*A000007(n), char[A118250(n)]]`
-/

namespace A190784.P15341014929881669070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118250 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A190784.P15341014929881669070

/-!
# A190785: Numbers that are congruent to {0, 2, 3, 5, 7, 9, 11} mod 12.

The programs for A190785, the canonical program `A190785.P2471584884577080144` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190785 has offset 1).

The definition of A190785 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A190785.anchor (n : ℕ) (hn : 1 ≤ n) : A190785 n = (Nat.nth (fun k => k % 12 ∈ ({0, 2, 3, 5, 7, 9, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A190.A190785`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190785.P2471584884577080144

`a(n-7)+12` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=11`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190785

/-- `a(n-7)+12` -/
def P2471584884577080144.Spec : Prop :=
  ∀ n, (P2471584884577080144.a n : ℤ) = A190785 (n + 1)

theorem P2471584884577080144.correct : P2471584884577080144.Spec := by
  intro n
  simp only [A190785, Nat.add_sub_cancel]

end A190785

/-! ## A190785.P8830069712155557140

`comp[comp[a(n-2)+7]+n]` with `a(0)=0, a(1)=2`
-/

namespace A190785.P8830069712155557140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190785.P8830069712155557140

namespace A190785

/-- `comp[comp[a(n-2)+7]+n]` -/
def P8830069712155557140.Spec : Prop :=
  ∀ n, (P8830069712155557140.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P6474309415623646818

`or(round(2*6*n/7), Δ[floor(3*n/7)])`
-/

namespace A190785.P6474309415623646818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 7)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (2 * ((6 * n : ℚ) / 7))) (f1 (n + 1) - f1 n)

end

end A190785.P6474309415623646818

namespace A190785

/-- `or(round(2*6*n/7), Δ[floor(3*n/7)])` -/
def P6474309415623646818.Spec : Prop :=
  ∀ n, P6474309415623646818.a n = A190785 (n + 1)

end A190785

/-! ## A190785.P956628269025945981

`comp[A047309(n+1)+n]`
-/

namespace A190785.P956628269025945981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190785.P956628269025945981

namespace A190785

/-- `comp[A047309(n+1)+n]` -/
def P956628269025945981.Spec : Prop :=
  ∀ n, (P956628269025945981.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P7350213456867511871

`comp[floor(A301730(n)/2)+1]`
-/

namespace A190785.P7350213456867511871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301730 n : ℚ) / 2⌋ + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190785.P7350213456867511871

namespace A190785

/-- `comp[floor(A301730(n)/2)+1]` -/
def P7350213456867511871.Spec : Prop :=
  ∀ n, (P7350213456867511871.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P11760350248178757382

`comp[comp[A047352(n+1)]+n]`
-/

namespace A190785.P11760350248178757382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047352 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190785.P11760350248178757382

namespace A190785

/-- `comp[comp[A047352(n+1)]+n]` -/
def P11760350248178757382.Spec : Prop :=
  ∀ n, (P11760350248178757382.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P8784525434417528753

`comp[A047363(n+1)+1+n]`
-/

namespace A190785.P8784525434417528753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190785.P8784525434417528753

namespace A190785

/-- `comp[A047363(n+1)+1+n]` -/
def P8784525434417528753.Spec : Prop :=
  ∀ n, (P8784525434417528753.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P9276487753421100697

`comp[A047316(n+1)-2+n]`
-/

namespace A190785.P9276487753421100697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047316 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190785.P9276487753421100697

namespace A190785

/-- `comp[A047316(n+1)-2+n]` -/
def P9276487753421100697.Spec : Prop :=
  ∀ n, (P9276487753421100697.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P6906242094438524314

`comp[comp[A047279(2*n+1)]+n]`
-/

namespace A190785.P6906242094438524314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047279 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190785.P6906242094438524314

namespace A190785

/-- `comp[comp[A047279(2*n+1)]+n]` -/
def P6906242094438524314.Spec : Prop :=
  ∀ n, (P6906242094438524314.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P14683248894450511253

`comp[comp[A047361(2*n+1)]+n]`
-/

namespace A190785.P14683248894450511253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047361 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190785.P14683248894450511253

namespace A190785

/-- `comp[comp[A047361(2*n+1)]+n]` -/
def P14683248894450511253.Spec : Prop :=
  ∀ n, (P14683248894450511253.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P7670960278597950533

`comp[comp[A047388(2*n+1)]+n]`
-/

namespace A190785.P7670960278597950533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047388 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A190785.P7670960278597950533

namespace A190785

/-- `comp[comp[A047388(2*n+1)]+n]` -/
def P7670960278597950533.Spec : Prop :=
  ∀ n, (P7670960278597950533.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P2758856059655470077

`comp[Δ[A093718(n+3)!+(1-n)²]-1]`
-/

namespace A190785.P2758856059655470077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A093718 (n + 3)).toNat : ℤ) + (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190785.P2758856059655470077

namespace A190785

/-- `comp[Δ[A093718(n+3)!+(1-n)²]-1]` -/
def P2758856059655470077.Spec : Prop :=
  ∀ n, (P2758856059655470077.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P6780144265835632367

`comp[A047248(n+2)+A047248(n+1)-1]`
-/

namespace A190785.P6780144265835632367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 2) + (A047248 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A190785.P6780144265835632367

namespace A190785

/-- `comp[A047248(n+2)+A047248(n+1)-1]` -/
def P6780144265835632367.Spec : Prop :=
  ∀ n, (P6780144265835632367.a n : ℤ) = A190785 (n + 1)

end A190785

/-! ## A190785.P12755816242759610914

`A083028(n+1)+A083033(n+1)-A060107(n+1)`
-/

namespace A190785.P12755816242759610914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A083033 (n + 1) - A060107 (n + 1))

end

end A190785.P12755816242759610914

namespace A190785

/-- `A083028(n+1)+A083033(n+1)-A060107(n+1)` -/
def P12755816242759610914.Spec : Prop :=
  ∀ n, P12755816242759610914.a n = A190785 (n + 1)

end A190785

/-! ## A190785.P1752279651945591763

`A083028(n+1)+A191275(n+1)-A190719(n+1)`
-/

namespace A190785.P1752279651945591763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A191275 (n + 1) - A190719 (n + 1))

end

end A190785.P1752279651945591763

namespace A190785

/-- `A083028(n+1)+A191275(n+1)-A190719(n+1)` -/
def P1752279651945591763.Spec : Prop :=
  ∀ n, P1752279651945591763.a n = A190785 (n + 1)

end A190785

/-! ## A190785.P2723323500787158811

`floor(A004776(n+1)+A004776(n+2)/2)`
-/

namespace A190785.P2723323500787158811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004776 (n + 1) : ℚ) + (A004776 (n + 2) : ℚ) / 2⌋

end

end A190785.P2723323500787158811

namespace A190785

/-- `floor(A004776(n+1)+A004776(n+2)/2)` -/
def P2723323500787158811.Spec : Prop :=
  ∀ n, P2723323500787158811.a n = A190785 (n + 1)

end A190785

/-! ## A190785.P12714047214267391351

`A083028(n+1)+A083028(n+2)-A060107(n+2)`
-/

namespace A190785.P12714047214267391351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A083028 (n + 2) - A060107 (n + 2))

end

end A190785.P12714047214267391351

namespace A190785

/-- `A083028(n+1)+A083028(n+2)-A060107(n+2)` -/
def P12714047214267391351.Spec : Prop :=
  ∀ n, P12714047214267391351.a n = A190785 (n + 1)

end A190785

/-! ## A190785.P16845794980817885845

`A083026(n+1)+A083026(n+2)-A083089(n+2)`
-/

namespace A190785.P16845794980817885845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) + (A083026 (n + 2) - A083089 (n + 2))

end

end A190785.P16845794980817885845

namespace A190785

/-- `A083026(n+1)+A083026(n+2)-A083089(n+2)` -/
def P16845794980817885845.Spec : Prop :=
  ∀ n, P16845794980817885845.a n = A190785 (n + 1)

end A190785

/-! ## A190785.P4716028706334604181

`A083028(n+1)+A083026(n+2)-A083120(n+2)`
-/

namespace A190785.P4716028706334604181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1) + (A083026 (n + 2) - A083120 (n + 2))

end

end A190785.P4716028706334604181

namespace A190785

/-- `A083028(n+1)+A083026(n+2)-A083120(n+2)` -/
def P4716028706334604181.Spec : Prop :=
  ∀ n, P4716028706334604181.a n = A190785 (n + 1)

end A190785

/-! ## A190785.P11033313262129884828

`A191275(n+1)+A191276(n+2)-A190719(n+2)`
-/

namespace A190785.P11033313262129884828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + (A191276 (n + 2) - A190719 (n + 2))

end

end A190785.P11033313262129884828

namespace A190785

/-- `A191275(n+1)+A191276(n+2)-A190719(n+2)` -/
def P11033313262129884828.Spec : Prop :=
  ∀ n, P11033313262129884828.a n = A190785 (n + 1)

end A190785

/-!
# A190786: Numbers m such that sigma(2*m-1) = 3*m, where sigma(k) is the sum of the positive divisors of k.

The programs for A190786, there is no canonical definition to state claims against.
-/

/-! ## A190786.P8550222791407678422

`(A063906(n+1)+1)/2`
-/

namespace A190786.P8550222791407678422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063906 (n + 1) + 1 : ℚ) / 2

end

end A190786.P8550222791407678422

/-! ## A190786.P12689851500758197644

`ceil(A063906(n+1)/2)`
-/

namespace A190786.P12689851500758197644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063906 (n + 1) : ℚ) / 2⌉

end

end A190786.P12689851500758197644

/-!
# A190787: Odd powers of 2 and 9 times odd powers of 2, sorted.

The programs for A190787, the canonical program `A190787.P4187249198112421787` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190787 has offset 1).

The definition of A190787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190787.P4099652425594785

`ogf((2+8x+10x^2)/(1-4x^2))`
-/

namespace A190787.P4099652425594785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, 10] [1, 0, -4] n

end

end A190787.P4099652425594785

namespace A190787

/-- `ogf((2+8x+10x^2)/(1-4x^2))` -/
def P4099652425594785.Spec : Prop :=
  ∀ n, P4099652425594785.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P4187249198112421787

`4*a(n-2)` with `a(0)=2, a(1)=8, a(2)=18`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A190787

/-- `4*a(n-2)` -/
def P4187249198112421787.Spec : Prop :=
  ∀ n, (P4187249198112421787.a n : ℤ) = A190787 (n + 1)

theorem P4187249198112421787.correct : P4187249198112421787.Spec := by
  intro n
  simp only [A190787, Nat.add_sub_cancel]

end A190787

/-! ## A190787.P13180195982950097746

`2*A029744(n+1)²`
-/

namespace A190787.P13180195982950097746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029744 (n + 1) ^ 2

end

end A190787.P13180195982950097746

namespace A190787

/-- `2*A029744(n+1)²` -/
def P13180195982950097746.Spec : Prop :=
  ∀ n, P13180195982950097746.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P12178710314876279037

`2*(∑[A158780(n)]+1)²`
-/

namespace A190787.P12178710314876279037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A190787.P12178710314876279037

namespace A190787

/-- `2*(∑[A158780(n)]+1)²` -/
def P12178710314876279037.Spec : Prop :=
  ∀ n, P12178710314876279037.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P7835361398556388038

`A199573(n)+A146541(n)`
-/

namespace A190787.P7835361398556388038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199573 n + A146541 n

end

end A190787.P7835361398556388038

namespace A190787

/-- `A199573(n)+A146541(n)` -/
def P7835361398556388038.Spec : Prop :=
  ∀ n, P7835361398556388038.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P3128820196369884617

`A213173(n)+A135092(n)`
-/

namespace A190787.P3128820196369884617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n + A135092 n

end

end A190787.P3128820196369884617

namespace A190787

/-- `A213173(n)+A135092(n)` -/
def P3128820196369884617.Spec : Prop :=
  ∀ n, P3128820196369884617.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P7223120181176520148

`xor(A171497(n), A199573(n))`
-/

namespace A190787.P7223120181176520148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171497 n) (A199573 n)

end

end A190787.P7223120181176520148

namespace A190787

/-- `xor(A171497(n), A199573(n))` -/
def P7223120181176520148.Spec : Prop :=
  ∀ n, P7223120181176520148.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P2283290300265458752

`2*∑[A158780(A028310(n))]²`
-/

namespace A190787.P2283290300265458752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A190787.P2283290300265458752

namespace A190787

/-- `2*∑[A158780(A028310(n))]²` -/
def P2283290300265458752.Spec : Prop :=
  ∀ n, P2283290300265458752.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P272095668476956409

`2*A029750(A004271(n+1))²`
-/

namespace A190787.P272095668476956409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029750 (A004271 (n + 1)).toNat ^ 2

end

end A190787.P272095668476956409

namespace A190787

/-- `2*A029750(A004271(n+1))²` -/
def P272095668476956409.Spec : Prop :=
  ∀ n, P272095668476956409.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P2892297581104873192

`2*A029750(A004278(n+1))²`
-/

namespace A190787.P2892297581104873192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029750 (A004278 (n + 1)).toNat ^ 2

end

end A190787.P2892297581104873192

namespace A190787

/-- `2*A029750(A004278(n+1))²` -/
def P2892297581104873192.Spec : Prop :=
  ∀ n, P2892297581104873192.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P3417135371423708945

`2*A074323(A004442(n+1))²`
-/

namespace A190787.P3417135371423708945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074323 (A004442 (n + 1)).toNat ^ 2

end

end A190787.P3417135371423708945

namespace A190787

/-- `2*A074323(A004442(n+1))²` -/
def P3417135371423708945.Spec : Prop :=
  ∀ n, P3417135371423708945.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P2279256100909017463

`2*A074323(A065190(n+1))²`
-/

namespace A190787.P2279256100909017463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074323 (A065190 (n + 1)).toNat ^ 2

end

end A190787.P2279256100909017463

namespace A190787

/-- `2*A074323(A065190(n+1))²` -/
def P2279256100909017463.Spec : Prop :=
  ∀ n, P2279256100909017463.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P3373354637992461629

`2*A308709(A116468(n+1))²`
-/

namespace A190787.P3373354637992461629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308709 (A116468 (n + 1)).toNat ^ 2

end

end A190787.P3373354637992461629

namespace A190787

/-- `2*A308709(A116468(n+1))²` -/
def P3373354637992461629.Spec : Prop :=
  ∀ n, P3373354637992461629.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P15483425449400698065

`2*(A000029(n)-A059076(n))²`
-/

namespace A190787.P15483425449400698065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000029 n - A059076 n) ^ 2

end

end A190787.P15483425449400698065

namespace A190787

/-- `2*(A000029(n)-A059076(n))²` -/
def P15483425449400698065.Spec : Prop :=
  ∀ n, P15483425449400698065.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P12582901085394004339

`2*(A000034(n)*A074323(n))²`
-/

namespace A190787.P12582901085394004339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000034 n * A074323 n) ^ 2

end

end A190787.P12582901085394004339

namespace A190787

/-- `2*(A000034(n)*A074323(n))²` -/
def P12582901085394004339.Spec : Prop :=
  ∀ n, P12582901085394004339.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P9548791549450438676

`2*(A122756(n)/A016116(n))²`
-/

namespace A190787.P9548791549450438676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A122756 n : ℚ) / (A016116 n : ℚ)) ^ 2

end

end A190787.P9548791549450438676

namespace A190787

/-- `2*(A122756(n)/A016116(n))²` -/
def P9548791549450438676.Spec : Prop :=
  ∀ n, P9548791549450438676.a n = (A190787 (n + 1) : ℚ)

end A190787

/-! ## A190787.P16010702389426691616

`2*lcm(A072345(n), A074323(n))²`
-/

namespace A190787.P16010702389426691616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A072345 n) (A074323 n) ^ 2

end

end A190787.P16010702389426691616

namespace A190787

/-- `2*lcm(A072345(n), A074323(n))²` -/
def P16010702389426691616.Spec : Prop :=
  ∀ n, (P16010702389426691616.a n : ℤ) = A190787 (n + 1)

end A190787

/-! ## A190787.P17523861810020907232

`2*∑[A011782(log2(A016116(n)))]²`
-/

namespace A190787.P17523861810020907232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.roundAway (Real.logb 2 (A016116 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A190787.P17523861810020907232

namespace A190787

/-- `2*∑[A011782(log2(A016116(n)))]²` -/
def P17523861810020907232.Spec : Prop :=
  ∀ n, P17523861810020907232.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P2604445541504666990

`A029744(n+1)*A029750(2*(n+1))`
-/

namespace A190787.P2604445541504666990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) * A029750 (2 * (n + 1))

end

end A190787.P2604445541504666990

namespace A190787

/-- `A029744(n+1)*A029750(2*(n+1))` -/
def P2604445541504666990.Spec : Prop :=
  ∀ n, P2604445541504666990.a n = A190787 (n + 1)

end A190787

/-! ## A190787.P3528301382785242045

`A029750(2*(n+1))*A029750(A004271(n+1))`
-/

namespace A190787.P3528301382785242045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (2 * (n + 1)) * A029750 (A004271 (n + 1)).toNat

end

end A190787.P3528301382785242045

namespace A190787

/-- `A029750(2*(n+1))*A029750(A004271(n+1))` -/
def P3528301382785242045.Spec : Prop :=
  ∀ n, P3528301382785242045.a n = A190787 (n + 1)

end A190787

/-!
# A190788: Expansion of ((x-1)*sqrt(1-4*x^2))/((x-1)*sqrt(1-4*x^2)+x).

The programs for A190788, there is no canonical definition to state claims against.
-/

/-! ## A190788.P3009190669731959732

`A239556(n)+A058488(n)`
-/

namespace A190788.P3009190669731959732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239556 n + A058488 n

end

end A190788.P3009190669731959732

/-! ## A190788.P16849900726437025928

`A239557(n)+A058488(n)`
-/

namespace A190788.P16849900726437025928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239557 n + A058488 n

end

end A190788.P16849900726437025928

/-! ## A190788.P10756951713285282958

`A239561(n)+A058488(n)`
-/

namespace A190788.P10756951713285282958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239561 n + A058488 n

end

end A190788.P10756951713285282958

/-! ## A190788.P18148593848256301007

`Δ[A056172(A121327(n+4)+3)]`
-/

namespace A190788.P18148593848256301007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A121327 (n + 4) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190788.P18148593848256301007

/-!
# A190789: Numbers n such that omega(n-1) + omega(n+1) = omega(n) where omega(n) = A001221(n).

The programs for A190789, there is no canonical definition to state claims against.
-/

/-! ## A190789.P4047657823238450119

`∩[A122080(n+1), A355177(n+1)]`
-/

namespace A190789.P4047657823238450119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190789.P4047657823238450119

/-! ## A190789.P416145615082235802

`∩[A355177(n+1), A366846(n+1)]`
-/

namespace A190789.P416145615082235802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190789.P416145615082235802

/-! ## A190789.P16587230232580555520

`∩[A355177(n+1), A390445(n+1)]`
-/

namespace A190789.P16587230232580555520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190789.P16587230232580555520

/-! ## A190789.P10161896019313463844

`∩[A247423(n+1), A355177(n+1)]`
-/

namespace A190789.P10161896019313463844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190789.P10161896019313463844

/-! ## A190789.P12433984969766224634

`filter[A355177(n+1), A289748(#)]`
-/

namespace A190789.P12433984969766224634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289748 (f1 j).toNat = 1) n)

end

end A190789.P12433984969766224634

/-!
# A190790: G.f. satisfies: A(x) = 1 + Sum_{n>=1} q^(2n-1)/(1 - q^(2n-1)) where q = x*A(x).

The programs for A190790, there is no canonical definition to state claims against.
-/

/-! ## A190790.P13682403555374450064

`A065033(A351160(n+1)+A234006(n+1))`
-/

namespace A190790.P13682403555374450064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A351160 (n + 1) + A234006 (n + 1)).toNat

end

end A190790.P13682403555374450064

/-! ## A190790.P15731986092034351457

`A060384(A329738(n)+A060404(n+1))`
-/

namespace A190790.P15731986092034351457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A329738 n + A060404 (n + 1)).toNat

end

end A190790.P15731986092034351457

/-! ## A190790.P5069294631308506497

`A008679(A037314(n+2)+A006358(n))`
-/

namespace A190790.P5069294631308506497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A037314 (n + 2) + A006358 n).toNat

end

end A190790.P5069294631308506497

/-! ## A190790.P3188173647441472962

`A361625(n+1)-A293234(A000142(n))`
-/

namespace A190790.P3188173647441472962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361625 (n + 1) - A293234 (A000142 n).toNat

end

end A190790.P3188173647441472962

/-!
# A190792: Primes p=prime(i) such that prime(i+3)-prime(i)=12.

The programs for A190792, there is no canonical definition to state claims against.
-/

/-! ## A190792.P15467283875067726309

`A046133(eq[2, A086139(n+1)]+1)`
-/

namespace A190792.P15467283875067726309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A190792.P15467283875067726309

/-! ## A190792.P5567644733415797979

`A065091(eq[12, A031165(n+1)])`
-/

namespace A190792.P5567644733415797979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190792.P5567644733415797979

/-! ## A190792.P16705465704564787151

`p?[A029938(n+8)-A029938(n+5)]`
-/

namespace A190792.P16705465704564787151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029938 (n + 8) - A029938 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A190792.P16705465704564787151

/-! ## A190792.P8992109014092686977

`record[A001748(n+7)/A076567(A031165(n+7))]`
-/

namespace A190792.P8992109014092686977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 7) : ℚ) / (A076567 (A031165 (n + 7)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190792.P8992109014092686977

/-! ## A190792.P17905884929726452983

`p?[A101448(n+1)²-A005097(n+1)²]`
-/

namespace A190792.P17905884929726452983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) ^ 2 - A005097 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A190792.P17905884929726452983

/-!
# A190793: Least prime p(j) of 10 consecutive primes such that 2*p(k)+ 15015 is prime for k=j to j+9.

The programs for A190793, there is no canonical definition to state claims against.
-/

/-! ## A190793.P7486509048520905063

`A000040(A192320(2*(n+1))-n)`
-/

namespace A190793.P7486509048520905063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A192320 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A190793.P7486509048520905063

/-!
# A190794: Number of two-sided n-step prudent walks ending at the northeast corner of their boxes, avoiding two consecutive west steps and south steps.

The programs for A190794, there is no canonical definition to state claims against.
-/

/-! ## A190794.P8491746205487399308

`∑[A161205(A001764(n))]`
-/

namespace A190794.P8491746205487399308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A001764 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190794.P8491746205487399308

/-! ## A190794.P10158971716169579216

`∑[A161205(A047749(2*n))]`
-/

namespace A190794.P10158971716169579216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A047749 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190794.P10158971716169579216

/-! ## A190794.P16638870663488658751

`A248227(A358453(n+4)-A003434(n+1))`
-/

namespace A190794.P16638870663488658751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A358453 (n + 4) - A003434 (n + 1)).toNat

end

end A190794.P16638870663488658751

/-!
# A190795: Number of two-sided n-step prudent walks ending on the top side or the right side of their boxes, avoiding two consecutive west steps and south steps.

The programs for A190795, there is no canonical definition to state claims against.
-/

/-! ## A190795.P2939643796692518847

`A156664(n)+A078008(A032555(n+1))`
-/

namespace A190795.P2939643796692518847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156664 n + A078008 (A032555 (n + 1)).toNat

end

end A190795.P2939643796692518847

/-! ## A190795.P5159099950828297056

`A245327(xor(2*4^n, ∑[4^n]))-A078008(n)`
-/

namespace A190795.P5159099950828297056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (Nat.xor (2 * 4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)) - A078008 n

end

end A190795.P5159099950828297056

/-! ## A190795.P11807962901178688550

`A048654(n)-A324692(A000129(n))`
-/

namespace A190795.P11807962901178688550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n - A324692 (A000129 n).toNat

end

end A190795.P11807962901178688550

/-!
# A190796: Number of digits in the minimal base-phi representation of n.

The programs for A190796, the canonical program `A190796.P8479633771885963645` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190796 has offset 1).

The definition of A190796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190796.P7673086553279946747

`A055778(n+1)+A133775(n+1)`
-/

namespace A190796.P7673086553279946747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (n + 1) + A133775 (n + 1)

end

end A190796.P7673086553279946747

namespace A190796

/-- `A055778(n+1)+A133775(n+1)` -/
def P7673086553279946747.Spec : Prop :=
  ∀ n, P7673086553279946747.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P15432240684176524490

`∑{digits}[A130600(n+1), #!]`
-/

namespace A190796.P15432240684176524490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A190796.P15432240684176524490

namespace A190796

/-- `∑{digits}[A130600(n+1), #!]` -/
def P15432240684176524490.Spec : Prop :=
  ∀ n, (P15432240684176524490.a n : ℤ) = A190796 (n + 1)

end A190796

/-! ## A190796.P8479633771885963645

`A042948(A362692(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A190796

/-- `A042948(A362692(n+1))` -/
def P8479633771885963645.Spec : Prop :=
  ∀ n, P8479633771885963645.a n = A190796 (n + 1)

theorem P8479633771885963645.correct : P8479633771885963645.Spec := by
  intro n
  simp only [A190796, Nat.add_sub_cancel]

end A190796

/-! ## A190796.P16665930358541540359

`∑{digits}[A130600(n+1), A000108(#)]`
-/

namespace A190796.P16665930358541540359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000108 x).sum

end

end A190796.P16665930358541540359

namespace A190796

/-- `∑{digits}[A130600(n+1), A000108(#)]` -/
def P16665930358541540359.Spec : Prop :=
  ∀ n, P16665930358541540359.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P6807771868378673331

`∑{digits}[A130600(n+1), A008619(#)]`
-/

namespace A190796.P6807771868378673331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008619 x).sum

end

end A190796.P6807771868378673331

namespace A190796

/-- `∑{digits}[A130600(n+1), A008619(#)]` -/
def P6807771868378673331.Spec : Prop :=
  ∀ n, P6807771868378673331.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P7400416568101707194

`∑{digits}[A130600(n+1), A005614(#+2)]`
-/

namespace A190796.P7400416568101707194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005614 (x + 2)).sum

end

end A190796.P7400416568101707194

namespace A190796

/-- `∑{digits}[A130600(n+1), A005614(#+2)]` -/
def P7400416568101707194.Spec : Prop :=
  ∀ n, P7400416568101707194.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P18323612264872279158

`∑{digits}[A130600(n+1), A057979(#+2)]`
-/

namespace A190796.P18323612264872279158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A057979 (x + 2)).sum

end

end A190796.P18323612264872279158

namespace A190796

/-- `∑{digits}[A130600(n+1), A057979(#+2)]` -/
def P18323612264872279158.Spec : Prop :=
  ∀ n, P18323612264872279158.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P1959938466081611831

`∑{digits}[A130600(n+1), A103221(#+2)]`
-/

namespace A190796.P1959938466081611831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A103221 (x + 2)).sum

end

end A190796.P1959938466081611831

namespace A190796

/-- `∑{digits}[A130600(n+1), A103221(#+2)]` -/
def P1959938466081611831.Spec : Prop :=
  ∀ n, P1959938466081611831.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P13409489090517839136

`∑{digits}[A130600(n+1), A001077(#)-#]`
-/

namespace A190796.P13409489090517839136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001077 x - (x : ℤ)).sum

end

end A190796.P13409489090517839136

namespace A190796

/-- `∑{digits}[A130600(n+1), A001077(#)-#]` -/
def P13409489090517839136.Spec : Prop :=
  ∀ n, P13409489090517839136.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P4730660207371422056

`∑{digits}[A130600(n+1), A330037(A001077(#)²)]`
-/

namespace A190796.P4730660207371422056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A330037 (A001077 x ^ 2).toNat).sum

end

end A190796.P4730660207371422056

namespace A190796

/-- `∑{digits}[A130600(n+1), A330037(A001077(#)²)]` -/
def P4730660207371422056.Spec : Prop :=
  ∀ n, P4730660207371422056.a n = A190796 (n + 1)

end A190796

/-! ## A190796.P8191856316572954899

`A130234(A173027(n+1))`
-/

namespace A190796.P8191856316572954899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (A173027 (n + 1)).toNat

end

end A190796.P8191856316572954899

namespace A190796

/-- `A130234(A173027(n+1))` -/
def P8191856316572954899.Spec : Prop :=
  ∀ n, P8191856316572954899.a n = A190796 (n + 1)

end A190796

/-!
# A190797: For primes p and q=p+6 create primitive Pythagorean triangles with sides (q^2 - p^2)/2, (p^2 + q^2)/2, and p*q. If the two remainders of the middle and longest side modulo the shortest side are both prime, then p is in the sequence.

The programs for A190797, there is no canonical definition to state claims against.
-/

/-! ## A190797.P10380045973398185365

`A131102(A331086(n+2))`
-/

namespace A190797.P10380045973398185365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131102 (A331086 (n + 2)).toNat

end

end A190797.P10380045973398185365

/-!
# A190798: Maximum value of k^2 * (n-k).

The programs for A190798, the canonical program `A190798.P17083894840847535071` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190798 has offset 0).

The definition of A190798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190798.P17083894840847535071

`A004396(n)²*∑[A022003(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A190798

/-- `A004396(n)²*∑[A022003(n)]` -/
def P17083894840847535071.Spec : Prop :=
  ∀ n, P17083894840847535071.a n = A190798 n

theorem P17083894840847535071.correct : P17083894840847535071.Spec := by
  intro n
  simp only [A190798]

end A190798

/-! ## A190798.P13366633511238508122

`∑[∑[A186101(n)]-A186101(n)]`
-/

namespace A190798.P13366633511238508122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190798.P13366633511238508122

namespace A190798

/-- `∑[∑[A186101(n)]-A186101(n)]` -/
def P13366633511238508122.Spec : Prop :=
  ∀ n, P13366633511238508122.a n = A190798 n

end A190798

/-! ## A190798.P4856505018003284509

`A004396(n)²*A002264(n+1)`
-/

namespace A190798.P4856505018003284509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n ^ 2 * A002264 (n + 1)

end

end A190798.P4856505018003284509

namespace A190798

/-- `A004396(n)²*A002264(n+1)` -/
def P4856505018003284509.Spec : Prop :=
  ∀ n, P4856505018003284509.a n = A190798 n

end A190798

/-! ## A190798.P8710127280445755780

`(A086161(n)-1)*A004396(n)²`
-/

namespace A190798.P8710127280445755780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086161 n - 1) * A004396 n ^ 2

end

end A190798.P8710127280445755780

namespace A190798

/-- `(A086161(n)-1)*A004396(n)²` -/
def P8710127280445755780.Spec : Prop :=
  ∀ n, P8710127280445755780.a n = A190798 n

end A190798

/-! ## A190798.P4492118336119837878

`(A042965(n+1)-n)*A004396(n)²`
-/

namespace A190798.P4492118336119837878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 1) - (n : ℤ)) * A004396 n ^ 2

end

end A190798.P4492118336119837878

namespace A190798

/-- `(A042965(n+1)-n)*A004396(n)²` -/
def P4492118336119837878.Spec : Prop :=
  ∀ n, P4492118336119837878.a n = A190798 n

end A190798

/-! ## A190798.P16829294498586036270

`(A028310(n)-A004396(n))*A004396(n)²`
-/

namespace A190798.P16829294498586036270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n - A004396 n) * A004396 n ^ 2

end

end A190798.P16829294498586036270

namespace A190798

/-- `(A028310(n)-A004396(n))*A004396(n)²` -/
def P16829294498586036270.Spec : Prop :=
  ∀ n, P16829294498586036270.a n = A190798 n

end A190798

/-! ## A190798.P6925186586085831143

`A000290(n-A002264(n+1))*A002264(n+1)`
-/

namespace A190798.P6925186586085831143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n : ℤ) - A002264 (n + 1)).toNat * A002264 (n + 1)

end

end A190798.P6925186586085831143

namespace A190798

/-- `A000290(n-A002264(n+1))*A002264(n+1)` -/
def P6925186586085831143.Spec : Prop :=
  ∀ n, P6925186586085831143.a n = A190798 n

end A190798

/-! ## A190798.P6292744710856750853

`A200067(n+1)+A200067(n)`
-/

namespace A190798.P6292744710856750853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200067 (n + 1) + A200067 n

end

end A190798.P6292744710856750853

namespace A190798

/-- `A200067(n+1)+A200067(n)` -/
def P6292744710856750853.Spec : Prop :=
  ∀ n, P6292744710856750853.a n = A190798 n

end A190798

/-! ## A190798.P11586895567201021248

`A131737(n+1)²*A002264(n+1)`
-/

namespace A190798.P11586895567201021248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (n + 1) ^ 2 * A002264 (n + 1)

end

end A190798.P11586895567201021248

namespace A190798

/-- `A131737(n+1)²*A002264(n+1)` -/
def P11586895567201021248.Spec : Prop :=
  ∀ n, P11586895567201021248.a n = A190798 n

end A190798

/-! ## A190798.P15031061952608386608

`A001971(A004396(2*n))*A004396(n)`
-/

namespace A190798.P15031061952608386608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A004396 (2 * n)).toNat * A004396 n

end

end A190798.P15031061952608386608

namespace A190798

/-- `A001971(A004396(2*n))*A004396(n)` -/
def P15031061952608386608.Spec : Prop :=
  ∀ n, P15031061952608386608.a n = A190798 n

end A190798

/-! ## A190798.P15974850434579931556

`A002264(A144429(n+2))²*A002264(n+1)`
-/

namespace A190798.P15974850434579931556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A144429 (n + 2)).toNat ^ 2 * A002264 (n + 1)

end

end A190798.P15974850434579931556

namespace A190798

/-- `A002264(A144429(n+2))²*A002264(n+1)` -/
def P15974850434579931556.Spec : Prop :=
  ∀ n, P15974850434579931556.a n = A190798 n

end A190798

/-! ## A190798.P15859871223096616262

`A004396(n)²*A008615(2*n+1)`
-/

namespace A190798.P15859871223096616262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n ^ 2 * A008615 (2 * n + 1)

end

end A190798.P15859871223096616262

namespace A190798

/-- `A004396(n)²*A008615(2*n+1)` -/
def P15859871223096616262.Spec : Prop :=
  ∀ n, P15859871223096616262.a n = A190798 n

end A190798

/-! ## A190798.P16699642183635487216

`A002264(n+1)*A211547(2*n+1)`
-/

namespace A190798.P16699642183635487216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) * A211547 (2 * n + 1)

end

end A190798.P16699642183635487216

namespace A190798

/-- `A002264(n+1)*A211547(2*n+1)` -/
def P16699642183635487216.Spec : Prop :=
  ∀ n, P16699642183635487216.a n = A190798 n

end A190798

/-! ## A190798.P649338474634313822

`A002264(2*n+1)²*A002264(n+1)`
-/

namespace A190798.P649338474634313822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n + 1) ^ 2 * A002264 (n + 1)

end

end A190798.P649338474634313822

namespace A190798

/-- `A002264(2*n+1)²*A002264(n+1)` -/
def P649338474634313822.Spec : Prop :=
  ∀ n, P649338474634313822.a n = A190798 n

end A190798

/-! ## A190798.P10992755113432636905

`A131737(n+1)²*A008615(2*n+1)`
-/

namespace A190798.P10992755113432636905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (n + 1) ^ 2 * A008615 (2 * n + 1)

end

end A190798.P10992755113432636905

namespace A190798

/-- `A131737(n+1)²*A008615(2*n+1)` -/
def P10992755113432636905.Spec : Prop :=
  ∀ n, P10992755113432636905.a n = A190798 n

end A190798

/-! ## A190798.P2486604553385127250

`sqrt(A211547(n+1))*A211547(2*n+1)`
-/

namespace A190798.P2486604553385127250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A211547 (n + 1) : ℝ) * (A211547 (2 * n + 1) : ℝ)

end

end A190798.P2486604553385127250

namespace A190798

/-- `sqrt(A211547(n+1))*A211547(2*n+1)` -/
def P2486604553385127250.Spec : Prop :=
  ∀ n, P2486604553385127250.a n = (A190798 n : ℝ)

end A190798

/-! ## A190798.P16905451686851608683

`(A309694(2*n+1)+A309690(2*n))/2`
-/

namespace A190798.P16905451686851608683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309694 (2 * n + 1) + A309690 (2 * n) : ℚ) / 2

end

end A190798.P16905451686851608683

namespace A190798

/-- `(A309694(2*n+1)+A309690(2*n))/2` -/
def P16905451686851608683.Spec : Prop :=
  ∀ n, P16905451686851608683.a n = (A190798 n : ℚ)

end A190798

/-! ## A190798.P16421747283975555330

`A002264(2*n+1)*A008130(2*n)/2`
-/

namespace A190798.P16421747283975555330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 (2 * n + 1) * A008130 (2 * n) : ℚ) / 2

end

end A190798.P16421747283975555330

namespace A190798

/-- `A002264(2*n+1)*A008130(2*n)/2` -/
def P16421747283975555330.Spec : Prop :=
  ∀ n, P16421747283975555330.a n = (A190798 n : ℚ)

end A190798

/-! ## A190798.P16378458465187984993

`(A096386(2*n)-n)*A211547(2*n+1)`
-/

namespace A190798.P16378458465187984993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096386 (2 * n) - (n : ℤ)) * A211547 (2 * n + 1)

end

end A190798.P16378458465187984993

namespace A190798

/-- `(A096386(2*n)-n)*A211547(2*n+1)` -/
def P16378458465187984993.Spec : Prop :=
  ∀ n, P16378458465187984993.a n = A190798 n

end A190798

/-!
# A190799: Primes p=prime(i) such that prime(i+4)-prime(i)=20.

The programs for A190799, there is no canonical definition to state claims against.
-/

/-! ## A190799.P14651753649433089944

`A045319(eq[20, A031166(n+1)])`
-/

namespace A190799.P14651753649433089944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190799.P14651753649433089944

/-! ## A190799.P13297397721362645147

`A045344(eq[20, A031166(n+1)])`
-/

namespace A190799.P13297397721362645147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190799.P13297397721362645147

/-! ## A190799.P14133806673541640924

`A065091(eq[20, A031166(n+1)])`
-/

namespace A190799.P14133806673541640924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190799.P14133806673541640924

/-! ## A190799.P8837585185276740251

`A000040(eq[20, A031166(n+1)]+1)`
-/

namespace A190799.P8837585185276740251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A190799.P8837585185276740251

/-! ## A190799.P8936031372454643990

`A008578(eq[20, A031166(n+1)]+2)`
-/

namespace A190799.P8936031372454643990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A190799.P8936031372454643990

