import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A216300: Numbers k such that 10k+3 is composite but 10k+1, 10k+7, 10k+9 are all prime.

The programs for A216300, there is no canonical definition to state claims against.
-/

/-! ## A216300.P3662982340942628120

`eq[11, A105052(n)]`
-/

namespace A216300.P3662982340942628120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216300.P3662982340942628120

/-!
# A216301: Numbers k such that 10k+7 is composite but 10k+1, 10k+3, 10k+9 are all prime.

The programs for A216301, the canonical program `A216301.P11893625468491235529` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216301 has offset 1).

The definition of A216301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216301.P14310396135574094417

`∩[A008470(n+1), A153308(n+1)]`
-/

namespace A216301.P14310396135574094417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216301.P14310396135574094417

namespace A216301

/-- `∩[A008470(n+1), A153308(n+1)]` -/
def P14310396135574094417.Spec : Prop :=
  ∀ n, (P14310396135574094417.a n : ℤ) = A216301 (n + 1)

end A216301

/-! ## A216301.P11893625468491235529

`∩[A008471(n+1), A153308(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A216301

/-- `∩[A008471(n+1), A153308(n+1)]` -/
def P11893625468491235529.Spec : Prop :=
  ∀ n, (P11893625468491235529.a n : ℤ) = A216301 (n + 1)

theorem P11893625468491235529.correct : P11893625468491235529.Spec := by
  intro n
  simp only [A216301, Nat.add_sub_cancel]

end A216301

/-! ## A216301.P16469323805965043613

`eq[A082369(n+1), A179816(n)]`
-/

namespace A216301.P16469323805965043613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216301.P16469323805965043613

namespace A216301

/-- `eq[A082369(n+1), A179816(n)]` -/
def P16469323805965043613.Spec : Prop :=
  ∀ n, (P16469323805965043613.a n : ℤ) = A216301 (n + 1)

end A216301

/-! ## A216301.P13305220735792905111

`eq[A128467(n)+2, A179816(n)]`
-/

namespace A216301.P13305220735792905111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216301.P13305220735792905111

namespace A216301

/-- `eq[A128467(n)+2, A179816(n)]` -/
def P13305220735792905111.Spec : Prop :=
  ∀ n, (P13305220735792905111.a n : ℤ) = A216301 (n + 1)

end A216301

/-! ## A216301.P14615617594749120020

`eq[13, A105052(n)]`
-/

namespace A216301.P14615617594749120020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216301.P14615617594749120020

namespace A216301

/-- `eq[13, A105052(n)]` -/
def P14615617594749120020.Spec : Prop :=
  ∀ n, (P14615617594749120020.a n : ℤ) = A216301 (n + 1)

end A216301

/-!
# A216302: Numbers k such that 10k+9 is composite but 10k+1, 10k+3, 10k+7 are all prime.

The programs for A216302, the canonical program `A216302.P95029662313042903` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216302 has offset 1).

The definition of A216302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216302.P13811155576295097820

`∩[A008470(n+1), A153380(n+1)]`
-/

namespace A216302.P13811155576295097820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216302.P13811155576295097820

namespace A216302

/-- `∩[A008470(n+1), A153380(n+1)]` -/
def P13811155576295097820.Spec : Prop :=
  ∀ n, (P13811155576295097820.a n : ℤ) = A216302 (n + 1)

end A216302

/-! ## A216302.P95029662313042903

`∩[A008471(n+1), A153380(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A216302

/-- `∩[A008471(n+1), A153380(n+1)]` -/
def P95029662313042903.Spec : Prop :=
  ∀ n, (P95029662313042903.a n : ℤ) = A216302 (n + 1)

theorem P95029662313042903.correct : P95029662313042903.Spec := by
  intro n
  simp only [A216302, Nat.add_sub_cancel]

end A216302

/-! ## A216302.P3920440246780598372

`eq[A128467(n), A179816(n)]`
-/

namespace A216302.P3920440246780598372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216302.P3920440246780598372

namespace A216302

/-- `eq[A128467(n), A179816(n)]` -/
def P3920440246780598372.Spec : Prop :=
  ∀ n, (P3920440246780598372.a n : ℤ) = A216302 (n + 1)

end A216302

/-! ## A216302.P2107359395159450820

`eq[A179816(n)+2, A082369(n+1)]`
-/

namespace A216302.P2107359395159450820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216302.P2107359395159450820

namespace A216302

/-- `eq[A179816(n)+2, A082369(n+1)]` -/
def P2107359395159450820.Spec : Prop :=
  ∀ n, (P2107359395159450820.a n : ℤ) = A216302 (n + 1)

end A216302

/-! ## A216302.P12075240761817973780

`eq[A122072(n+1)-A017317(n), A038800(n)]`
-/

namespace A216302.P12075240761817973780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1) - A017317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216302.P12075240761817973780

namespace A216302

/-- `eq[A122072(n+1)-A017317(n), A038800(n)]` -/
def P12075240761817973780.Spec : Prop :=
  ∀ n, (P12075240761817973780.a n : ℤ) = A216302 (n + 1)

end A216302

/-!
# A216303: Numbers k such that 10k+1 and 10k+3 are prime but 10k+7 and 10k+9 are composite.

The programs for A216303, the canonical program `A216303.P11345559073059710455` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216303 has offset 1).

The definition of A216303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216303.P11345559073059710455

`eq[A063143(n+1), A179816(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216303

/-- `eq[A063143(n+1), A179816(n)]` -/
def P11345559073059710455.Spec : Prop :=
  ∀ n, (P11345559073059710455.a n : ℤ) = A216303 (n + 1)

theorem P11345559073059710455.correct : P11345559073059710455.Spec := by
  intro n
  simp only [A216303, Nat.add_sub_cancel]

end A216303

/-! ## A216303.P13049070319148817927

`eq[A139245(n+1), A179816(n)]`
-/

namespace A216303.P13049070319148817927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216303.P13049070319148817927

namespace A216303

/-- `eq[A139245(n+1), A179816(n)]` -/
def P13049070319148817927.Spec : Prop :=
  ∀ n, (P13049070319148817927.a n : ℤ) = A216303 (n + 1)

end A216303

/-! ## A216303.P4749241799354402121

`eq[2*A298008(n+1), A179816(n)]`
-/

namespace A216303.P4749241799354402121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216303.P4749241799354402121

namespace A216303

/-- `eq[2*A298008(n+1), A179816(n)]` -/
def P4749241799354402121.Spec : Prop :=
  ∀ n, (P4749241799354402121.a n : ℤ) = A216303 (n + 1)

end A216303

/-! ## A216303.P11040591973017592135

`eq[A122072(n+1)+A038800(n), A017329(n)]`
-/

namespace A216303.P11040591973017592135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1) + A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216303.P11040591973017592135

namespace A216303

/-- `eq[A122072(n+1)+A038800(n), A017329(n)]` -/
def P11040591973017592135.Spec : Prop :=
  ∀ n, (P11040591973017592135.a n : ℤ) = A216303 (n + 1)

end A216303

/-! ## A216303.P3404164726122343922

`eq[12, A105052(n)]`
-/

namespace A216303.P3404164726122343922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216303.P3404164726122343922

namespace A216303

/-- `eq[12, A105052(n)]` -/
def P3404164726122343922.Spec : Prop :=
  ∀ n, (P3404164726122343922.a n : ℤ) = A216303 (n + 1)

end A216303

/-!
# A216304: Values of k such that 10*k+1 and 10*k+7 alone are prime between 10*k and 10*k+9.

The programs for A216304, the canonical program `A216304.P5647230312299655537` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216304 has offset 1).

The definition of A216304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216304.P5647230312299655537

`eq[A063155(n+1), A179816(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216304

/-- `eq[A063155(n+1), A179816(n)]` -/
def P5647230312299655537.Spec : Prop :=
  ∀ n, (P5647230312299655537.a n : ℤ) = A216304 (n + 1)

theorem P5647230312299655537.correct : P5647230312299655537.Spec := by
  intro n
  simp only [A216304, Nat.add_sub_cancel]

end A216304

/-! ## A216304.P14163044389619558360

`eq[A000041(A002373(5*n+6)), A002373(5*n+4)]`
-/

namespace A216304.P14163044389619558360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002373 (5 * n + 6)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216304.P14163044389619558360

namespace A216304

/-- `eq[A000041(A002373(5*n+6)), A002373(5*n+4)]` -/
def P14163044389619558360.Spec : Prop :=
  ∀ n, (P14163044389619558360.a n : ℤ) = A216304 (n + 1)

end A216304

/-! ## A216304.P6118210795343666878

`eq[10, A105052(n)]`
-/

namespace A216304.P6118210795343666878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216304.P6118210795343666878

namespace A216304

/-- `eq[10, A105052(n)]` -/
def P6118210795343666878.Spec : Prop :=
  ∀ n, (P6118210795343666878.a n : ℤ) = A216304 (n + 1)

end A216304

/-! ## A216304.P8683776738242243508

`lt[A105052(2*A105052(n)), 1]`
-/

namespace A216304.P8683776738242243508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 (2 * A105052 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216304.P8683776738242243508

namespace A216304

/-- `lt[A105052(2*A105052(n)), 1]` -/
def P8683776738242243508.Spec : Prop :=
  ∀ n, (P8683776738242243508.a n : ℤ) = A216304 (n + 1)

end A216304

/-! ## A216304.P2342575766555452111

`lt[A000038(n), A076309(A105052(n))]`
-/

namespace A216304.P2342575766555452111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A105052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216304.P2342575766555452111

namespace A216304

/-- `lt[A000038(n), A076309(A105052(n))]` -/
def P2342575766555452111.Spec : Prop :=
  ∀ n, (P2342575766555452111.a n : ℤ) = A216304 (n + 1)

end A216304

/-! ## A216304.P1625040706494063188

`lt[A209229(n), A076309(A105052(n))]`
-/

namespace A216304.P1625040706494063188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A105052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216304.P1625040706494063188

namespace A216304

/-- `lt[A209229(n), A076309(A105052(n))]` -/
def P1625040706494063188.Spec : Prop :=
  ∀ n, (P1625040706494063188.a n : ℤ) = A216304 (n + 1)

end A216304

/-! ## A216304.P15114543774370836513

`lt[A192977(A105052(n)), A347523(n)]`
-/

namespace A216304.P15114543774370836513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A105052 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216304.P15114543774370836513

namespace A216304

/-- `lt[A192977(A105052(n)), A347523(n)]` -/
def P15114543774370836513.Spec : Prop :=
  ∀ n, (P15114543774370836513.a n : ℤ) = A216304 (n + 1)

end A216304

/-! ## A216304.P10746112012156882412

`lt[A192977(A105052(n)), A096285(n+3)]`
-/

namespace A216304.P10746112012156882412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A105052 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096285 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216304.P10746112012156882412

namespace A216304

/-- `lt[A192977(A105052(n)), A096285(n+3)]` -/
def P10746112012156882412.Spec : Prop :=
  ∀ n, (P10746112012156882412.a n : ℤ) = A216304 (n + 1)

end A216304

/-!
# A216305: Values of k such that 10*k+1 and 10*k+9 alone are prime between 10*k and 10*k+9.

The programs for A216305, the canonical program `A216305.P1116429648597264212` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216305 has offset 1).

The definition of A216305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216305.P1116429648597264212

`floor(A141026(n+1)/10)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216305

/-- `floor(A141026(n+1)/10)` -/
def P1116429648597264212.Spec : Prop :=
  ∀ n, P1116429648597264212.a n = A216305 (n + 1)

theorem P1116429648597264212.correct : P1116429648597264212.Spec := by
  intro n
  simp only [A216305, Nat.add_sub_cancel]

end A216305

/-! ## A216305.P11620959012861589469

`A000027(round(A141026(n+1)/10))`
-/

namespace A216305.P11620959012861589469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A141026 (n + 1) : ℚ) / 10)).toNat

end

end A216305.P11620959012861589469

namespace A216305

/-- `A000027(round(A141026(n+1)/10))` -/
def P11620959012861589469.Spec : Prop :=
  ∀ n, P11620959012861589469.a n = A216305 (n + 1)

end A216305

/-! ## A216305.P13864747723624158683

`round(A141026(n+1)/10)%A258382(n+1)`
-/

namespace A216305.P13864747723624158683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A141026 (n + 1) : ℚ) / 10)) (A258382 (n + 1))

end

end A216305.P13864747723624158683

namespace A216305

/-- `round(A141026(n+1)/10)%A258382(n+1)` -/
def P13864747723624158683.Spec : Prop :=
  ∀ n, P13864747723624158683.a n = A216305 (n + 1)

end A216305

/-! ## A216305.P6003846108975294387

`round(A141026(n+1)/10)+-1%A054277(n+2)+1`
-/

namespace A216305.P6003846108975294387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141026 (n + 1) : ℚ) / 10) + (Int.tmod (-1) (A054277 (n + 2)) + 1)

end

end A216305.P6003846108975294387

namespace A216305

/-- `round(A141026(n+1)/10)+-1%A054277(n+2)+1` -/
def P6003846108975294387.Spec : Prop :=
  ∀ n, P6003846108975294387.a n = A216305 (n + 1)

end A216305

/-! ## A216305.P8324564994451404543

`round(A141026(n+1)/10)%A258360(n)`
-/

namespace A216305.P8324564994451404543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A141026 (n + 1) : ℚ) / 10)) (A258360 (n + 15))

end

end A216305.P8324564994451404543

namespace A216305

/-- `round(A141026(n+1)/10)%A258360(n)` -/
def P8324564994451404543.Spec : Prop :=
  ∀ n, P8324564994451404543.a n = A216305 (n + 1)

end A216305

/-! ## A216305.P1578448579192633497

`A000038(A055998(n+4))+round(A141026(n+1)/10)`
-/

namespace A216305.P1578448579192633497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A055998 (n + 4)).toNat + SequenceMachineLib.roundAway ((A141026 (n + 1) : ℚ) / 10)

end

end A216305.P1578448579192633497

namespace A216305

/-- `A000038(A055998(n+4))+round(A141026(n+1)/10)` -/
def P1578448579192633497.Spec : Prop :=
  ∀ n, P1578448579192633497.a n = A216305 (n + 1)

end A216305

/-!
# A216306: Values of k such that 10*k+3 and 10*k+7 alone are prime between 10*k and 10*k+9.

The programs for A216306, there is no canonical definition to state claims against.
-/

/-! ## A216306.P12273816711396192770

`∩[A162410(n+1), A216293(n+1)]`
-/

namespace A216306.P12273816711396192770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216306.P12273816711396192770

/-! ## A216306.P13264718789542371785

`eq[6, A105052(A028310(n))]`
-/

namespace A216306.P13264718789542371785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216306.P13264718789542371785

/-! ## A216306.P17591000594624630803

`eq[A040006(n), A105052(n)]`
-/

namespace A216306.P17591000594624630803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216306.P17591000594624630803

/-! ## A216306.P2835679498417259612

`eq[A158799(n)!, A105052(n)]`
-/

namespace A216306.P2835679498417259612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A158799 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216306.P2835679498417259612

/-! ## A216306.P18211114015345544300

`eq[dr(A008458(n)), A105052(n)]`
-/

namespace A216306.P18211114015345544300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008458 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216306.P18211114015345544300

/-!
# A216307: Values of k such that 10*k+3 and 10*k+9 alone are prime between 10*k and 10*k+9.

The programs for A216307, the canonical program `A216307.P12968432811877988105` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216307 has offset 1).

The definition of A216307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216307.P12968432811877988105

`eq[A179816(n), A305074(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216307

/-- `eq[A179816(n), A305074(n+1)]` -/
def P12968432811877988105.Spec : Prop :=
  ∀ n, (P12968432811877988105.a n : ℤ) = A216307 (n + 1)

theorem P12968432811877988105.correct : P12968432811877988105.Spec := by
  intro n
  simp only [A216307, Nat.add_sub_cancel]

end A216307

/-! ## A216307.P2090828346341138543

`eq[5, A105052(n)]`
-/

namespace A216307.P2090828346341138543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216307.P2090828346341138543

namespace A216307

/-- `eq[5, A105052(n)]` -/
def P2090828346341138543.Spec : Prop :=
  ∀ n, (P2090828346341138543.a n : ℤ) = A216307 (n + 1)

end A216307

/-! ## A216307.P9491919012307848046

`lt[A090856(xor(5, A105052(n))), 5]`
-/

namespace A216307.P9491919012307848046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090856 (Int.xor 5 (A105052 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216307.P9491919012307848046

namespace A216307

/-- `lt[A090856(xor(5, A105052(n))), 5]` -/
def P9491919012307848046.Spec : Prop :=
  ∀ n, (P9491919012307848046.a n : ℤ) = A216307 (n + 1)

end A216307

/-! ## A216307.P12584818042877201618

`lt[A090857(xor(5, A105052(n))), 5]`
-/

namespace A216307.P12584818042877201618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090857 (Int.xor 5 (A105052 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216307.P12584818042877201618

namespace A216307

/-- `lt[A090857(xor(5, A105052(n))), 5]` -/
def P12584818042877201618.Spec : Prop :=
  ∀ n, (P12584818042877201618.a n : ℤ) = A216307 (n + 1)

end A216307

/-! ## A216307.P4613643195252327516

`lt[A157727(xor(5, A105052(n))), 5]`
-/

namespace A216307.P4613643195252327516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (Int.xor 5 (A105052 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216307.P4613643195252327516

namespace A216307

/-- `lt[A157727(xor(5, A105052(n))), 5]` -/
def P4613643195252327516.Spec : Prop :=
  ∀ n, (P4613643195252327516.a n : ℤ) = A216307 (n + 1)

end A216307

/-! ## A216307.P15416673066947177066

`lt[A000005(xor(5, A105052(n))+1), 2]`
-/

namespace A216307.P15416673066947177066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 5 (A105052 n) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216307.P15416673066947177066

namespace A216307

/-- `lt[A000005(xor(5, A105052(n))+1), 2]` -/
def P15416673066947177066.Spec : Prop :=
  ∀ n, (P15416673066947177066.a n : ℤ) = A216307 (n + 1)

end A216307

/-!
# A216308: Values of k such that 10*k+7 and 10*k+9 are the only primes between 10*k and 10*k+9.

The programs for A216308, there is no canonical definition to state claims against.
-/

/-! ## A216308.P17544599619117540224

`eq[3, (A091088(n)+A038800(n))/3]`
-/

namespace A216308.P17544599619117540224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091088 n + A038800 n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A216308.P17544599619117540224

/-! ## A216308.P7949601438030373349

`eq[3, A105052(n)]`
-/

namespace A216308.P7949601438030373349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216308.P7949601438030373349

/-! ## A216308.P679168927155833472

`eq[A083254(A017377(n)), A218255(n)]`
-/

namespace A216308.P679168927155833472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A017377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216308.P679168927155833472

/-! ## A216308.P17383701187737446755

`eq[A298008(n+1)+5, A256481(n)]`
-/

namespace A216308.P17383701187737446755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216308.P17383701187737446755

/-! ## A216308.P13802169406700228121

`eq[A083254(A017377(n)), A256481(n)]`
-/

namespace A216308.P13802169406700228121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A017377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216308.P13802169406700228121

/-!
# A216309: The prime ending in 1 is the only prime in a decade.

The programs for A216309, the canonical program `A216309.P13475268406436914155` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216309 has offset 1).

The definition of A216309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216309.P9847079152325586975

`∩[A004615(n+1), A078494(n+1)]`
-/

namespace A216309.P9847079152325586975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P9847079152325586975

namespace A216309

/-- `∩[A004615(n+1), A078494(n+1)]` -/
def P9847079152325586975.Spec : Prop :=
  ∀ n, (P9847079152325586975.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P92161125072701593

`∩[A030430(n+1), A078494(n+1)]`
-/

namespace A216309.P92161125072701593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P92161125072701593

namespace A216309

/-- `∩[A030430(n+1), A078494(n+1)]` -/
def P92161125072701593.Spec : Prop :=
  ∀ n, (P92161125072701593.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P13779368049716936083

`∩[A045453(n+1), A078494(n+1)]`
-/

namespace A216309.P13779368049716936083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P13779368049716936083

namespace A216309

/-- `∩[A045453(n+1), A078494(n+1)]` -/
def P13779368049716936083.Spec : Prop :=
  ∀ n, (P13779368049716936083.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P1670174815501428104

`∩[A078494(n+1), A090756(n+1)]`
-/

namespace A216309.P1670174815501428104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P1670174815501428104

namespace A216309

/-- `∩[A078494(n+1), A090756(n+1)]` -/
def P1670174815501428104.Spec : Prop :=
  ∀ n, (P1670174815501428104.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P14146621889354345497

`∩[A078494(n+1), A327752(n+1)]`
-/

namespace A216309.P14146621889354345497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P14146621889354345497

namespace A216309

/-- `∩[A078494(n+1), A327752(n+1)]` -/
def P14146621889354345497.Spec : Prop :=
  ∀ n, (P14146621889354345497.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P13475268406436914155

`A078494(eq[1, A078494(n+1)%5]+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216309

/-- `A078494(eq[1, A078494(n+1)%5]+1)` -/
def P13475268406436914155.Spec : Prop :=
  ∀ n, P13475268406436914155.a n = A216309 (n + 1)

theorem P13475268406436914155.correct : P13475268406436914155.Spec := by
  intro n
  simp only [A216309, Nat.add_sub_cancel]

end A216309

/-! ## A216309.P16454580203669855823

`p?[A078494(n+2)%5*A078494(n+2)]`
-/

namespace A216309.P16454580203669855823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 2)) 5 * A078494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216309.P16454580203669855823

namespace A216309

/-- `p?[A078494(n+2)%5*A078494(n+2)]` -/
def P16454580203669855823.Spec : Prop :=
  ∀ n, P16454580203669855823.a n = A216309 (n + 1)

end A216309

/-! ## A216309.P11311987404295535979

`∩[A078494(n+1), A331194(n+1)]`
-/

namespace A216309.P11311987404295535979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P11311987404295535979

namespace A216309

/-- `∩[A078494(n+1), A331194(n+1)]` -/
def P11311987404295535979.Spec : Prop :=
  ∀ n, (P11311987404295535979.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P4803275418274823569

`A017281(A216295(n+1))`
-/

namespace A216309.P4803275418274823569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A216295 (n + 1)).toNat

end

end A216309.P4803275418274823569

namespace A216309

/-- `A017281(A216295(n+1))` -/
def P4803275418274823569.Spec : Prop :=
  ∀ n, P4803275418274823569.a n = A216309 (n + 1)

end A216309

/-! ## A216309.P1647486161075506665

`A122072(A216295(n+1)+1)`
-/

namespace A216309.P1647486161075506665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (A216295 (n + 1) + 1).toNat

end

end A216309.P1647486161075506665

namespace A216309

/-- `A122072(A216295(n+1)+1)` -/
def P1647486161075506665.Spec : Prop :=
  ∀ n, P1647486161075506665.a n = A216309 (n + 1)

end A216309

/-! ## A216309.P1265886554975399477

`∩[A078494(n+1), A017281(n)]`
-/

namespace A216309.P1265886554975399477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P1265886554975399477

namespace A216309

/-- `∩[A078494(n+1), A017281(n)]` -/
def P1265886554975399477.Spec : Prop :=
  ∀ n, (P1265886554975399477.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P9795234156208197393

`p?[A017305(A216292(n+1))-2]`
-/

namespace A216309.P9795234156208197393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A216292 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216309.P9795234156208197393

namespace A216309

/-- `p?[A017305(A216292(n+1))-2]` -/
def P9795234156208197393.Spec : Prop :=
  ∀ n, P9795234156208197393.a n = A216309 (n + 1)

end A216309

/-! ## A216309.P2940886649674546300

`∩[A030430(n+1), A298008(n+1)]`
-/

namespace A216309.P2940886649674546300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P2940886649674546300

namespace A216309

/-- `∩[A030430(n+1), A298008(n+1)]` -/
def P2940886649674546300.Spec : Prop :=
  ∀ n, (P2940886649674546300.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P5998497919204988629

`∩[A038872(n+1), A298008(n+1)]`
-/

namespace A216309.P5998497919204988629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P5998497919204988629

namespace A216309

/-- `∩[A038872(n+1), A298008(n+1)]` -/
def P5998497919204988629.Spec : Prop :=
  ∀ n, (P5998497919204988629.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P16499011174603306008

`∩[A045348(n+1), A298008(n+1)]`
-/

namespace A216309.P16499011174603306008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P16499011174603306008

namespace A216309

/-- `∩[A045348(n+1), A298008(n+1)]` -/
def P16499011174603306008.Spec : Prop :=
  ∀ n, (P16499011174603306008.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P8750737140518761939

`∩[A045349(n+1), A298008(n+1)]`
-/

namespace A216309.P8750737140518761939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P8750737140518761939

namespace A216309

/-- `∩[A045349(n+1), A298008(n+1)]` -/
def P8750737140518761939.Spec : Prop :=
  ∀ n, (P8750737140518761939.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P12493969043224742722

`∩[A045371(n+1), A298008(n+1)]`
-/

namespace A216309.P12493969043224742722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P12493969043224742722

namespace A216309

/-- `∩[A045371(n+1), A298008(n+1)]` -/
def P12493969043224742722.Spec : Prop :=
  ∀ n, (P12493969043224742722.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P6348521201466930000

`∩[A045372(n+1), A298008(n+1)]`
-/

namespace A216309.P6348521201466930000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P6348521201466930000

namespace A216309

/-- `∩[A045372(n+1), A298008(n+1)]` -/
def P6348521201466930000.Spec : Prop :=
  ∀ n, (P6348521201466930000.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P4280853932226775619

`∩[A045453(n+1), A298008(n+1)]`
-/

namespace A216309.P4280853932226775619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P4280853932226775619

namespace A216309

/-- `∩[A045453(n+1), A298008(n+1)]` -/
def P4280853932226775619.Spec : Prop :=
  ∀ n, (P4280853932226775619.a n : ℤ) = A216309 (n + 1)

end A216309

/-! ## A216309.P3051761715290962328

`∩[A045468(n+1), A298008(n+1)]`
-/

namespace A216309.P3051761715290962328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216309.P3051761715290962328

namespace A216309

/-- `∩[A045468(n+1), A298008(n+1)]` -/
def P3051761715290962328.Spec : Prop :=
  ∀ n, (P3051761715290962328.a n : ℤ) = A216309 (n + 1)

end A216309

/-!
# A216310: The prime ending in 3 is the only prime in a decade.

The programs for A216310, the canonical program `A216310.P16292608153891418272` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216310 has offset 1).

The definition of A216310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216310.P8415316847761050022

`∩[A030431(n+1), A078494(n+1)]`
-/

namespace A216310.P8415316847761050022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P8415316847761050022

namespace A216310

/-- `∩[A030431(n+1), A078494(n+1)]` -/
def P8415316847761050022.Spec : Prop :=
  ∀ n, (P8415316847761050022.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P9265840164307469426

`∩[A045414(n+1), A078494(n+1)]`
-/

namespace A216310.P9265840164307469426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P9265840164307469426

namespace A216310

/-- `∩[A045414(n+1), A078494(n+1)]` -/
def P9265840164307469426.Spec : Prop :=
  ∀ n, (P9265840164307469426.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P16292608153891418272

`A078494(eq[3, A078494(n+1)%5]+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216310

/-- `A078494(eq[3, A078494(n+1)%5]+1)` -/
def P16292608153891418272.Spec : Prop :=
  ∀ n, P16292608153891418272.a n = A216310 (n + 1)

theorem P16292608153891418272.correct : P16292608153891418272.Spec := by
  intro n
  simp only [A216310, Nat.add_sub_cancel]

end A216310

/-! ## A216310.P18195712921328662729

`∩[A004617(n+1), A078494(n+1)]`
-/

namespace A216310.P18195712921328662729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P18195712921328662729

namespace A216310

/-- `∩[A004617(n+1), A078494(n+1)]` -/
def P18195712921328662729.Spec : Prop :=
  ∀ n, (P18195712921328662729.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P16620071623452694431

`A030665(A216296(n+1))`
-/

namespace A216310.P16620071623452694431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A216296 (n + 1)).toNat

end

end A216310.P16620071623452694431

namespace A216310

/-- `A030665(A216296(n+1))` -/
def P16620071623452694431.Spec : Prop :=
  ∀ n, P16620071623452694431.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P16532948739073591350

`A151800(10*A216296(n+1))`
-/

namespace A216310.P16532948739073591350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * A216296 (n + 1)).toNat

end

end A216310.P16532948739073591350

namespace A216310

/-- `A151800(10*A216296(n+1))` -/
def P16532948739073591350.Spec : Prop :=
  ∀ n, P16532948739073591350.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P8994704353999480816

`p?[A017305(A216292(n+1))]`
-/

namespace A216310.P8994704353999480816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A216292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216310.P8994704353999480816

namespace A216310

/-- `p?[A017305(A216292(n+1))]` -/
def P8994704353999480816.Spec : Prop :=
  ∀ n, P8994704353999480816.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P5127794188720455669

`A122072(A216296(n+1)+1)`
-/

namespace A216310.P5127794188720455669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (A216296 (n + 1) + 1).toNat

end

end A216310.P5127794188720455669

namespace A216310

/-- `A122072(A216296(n+1)+1)` -/
def P5127794188720455669.Spec : Prop :=
  ∀ n, P5127794188720455669.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P3696770905654358850

`∩[A078494(n+1), A017305(n)]`
-/

namespace A216310.P3696770905654358850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P3696770905654358850

namespace A216310

/-- `∩[A078494(n+1), A017305(n)]` -/
def P3696770905654358850.Spec : Prop :=
  ∀ n, (P3696770905654358850.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P17405983748057559279

`∩[A078494(n+1), A017281(n)+2]`
-/

namespace A216310.P17405983748057559279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P17405983748057559279

namespace A216310

/-- `∩[A078494(n+1), A017281(n)+2]` -/
def P17405983748057559279.Spec : Prop :=
  ∀ n, (P17405983748057559279.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P2153053211745682678

`A017305(eq[A017305(n), A179816(n)])`
-/

namespace A216310.P2153053211745682678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216310.P2153053211745682678

namespace A216310

/-- `A017305(eq[A017305(n), A179816(n)])` -/
def P2153053211745682678.Spec : Prop :=
  ∀ n, P2153053211745682678.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P14272715481498412715

`A179816(eq[A017281(n)+2, A179816(n)])`
-/

namespace A216310.P14272715481498412715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216310.P14272715481498412715

namespace A216310

/-- `A179816(eq[A017281(n)+2, A179816(n)])` -/
def P14272715481498412715.Spec : Prop :=
  ∀ n, P14272715481498412715.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P9168215671056822205

`A179816(eq[2, A179816(n)-A017281(n)])`
-/

namespace A216310.P9168215671056822205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216310.P9168215671056822205

namespace A216310

/-- `A179816(eq[2, A179816(n)-A017281(n)])` -/
def P9168215671056822205.Spec : Prop :=
  ∀ n, P9168215671056822205.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P17116192317259136996

`A179816(eq[A298008(n+1)+2, A179816(n)])`
-/

namespace A216310.P17116192317259136996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216310.P17116192317259136996

namespace A216310

/-- `A179816(eq[A298008(n+1)+2, A179816(n)])` -/
def P17116192317259136996.Spec : Prop :=
  ∀ n, P17116192317259136996.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P6709219076171174687

`A017305(2*A216296(n+1)-A216296(n+1))`
-/

namespace A216310.P6709219076171174687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (2 * A216296 (n + 1) - A216296 (n + 1)).toNat

end

end A216310.P6709219076171174687

namespace A216310

/-- `A017305(2*A216296(n+1)-A216296(n+1))` -/
def P6709219076171174687.Spec : Prop :=
  ∀ n, P6709219076171174687.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P5137036580225720741

`∩[A078494(n+1), A277590(n+1)]`
-/

namespace A216310.P5137036580225720741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P5137036580225720741

namespace A216310

/-- `∩[A078494(n+1), A277590(n+1)]` -/
def P5137036580225720741.Spec : Prop :=
  ∀ n, (P5137036580225720741.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P10300207045697532708

`filter[A078494(n+1), A185706(#)]`
-/

namespace A216310.P10300207045697532708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A216310.P10300207045697532708

namespace A216310

/-- `filter[A078494(n+1), A185706(#)]` -/
def P10300207045697532708.Spec : Prop :=
  ∀ n, P10300207045697532708.a n = A216310 (n + 1)

end A216310

/-! ## A216310.P18251838420655906836

`∩[A078494(n+1), A016885(n)]`
-/

namespace A216310.P18251838420655906836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P18251838420655906836

namespace A216310

/-- `∩[A078494(n+1), A016885(n)]` -/
def P18251838420655906836.Spec : Prop :=
  ∀ n, (P18251838420655906836.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P15389711634097579193

`∩[A078494(n+1), A109474(n+1)]`
-/

namespace A216310.P15389711634097579193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P15389711634097579193

namespace A216310

/-- `∩[A078494(n+1), A109474(n+1)]` -/
def P15389711634097579193.Spec : Prop :=
  ∀ n, (P15389711634097579193.a n : ℤ) = A216310 (n + 1)

end A216310

/-! ## A216310.P2550769759754463521

`∩[A078494(n+1), A235089(n+1)]`
-/

namespace A216310.P2550769759754463521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216310.P2550769759754463521

namespace A216310

/-- `∩[A078494(n+1), A235089(n+1)]` -/
def P2550769759754463521.Spec : Prop :=
  ∀ n, (P2550769759754463521.a n : ℤ) = A216310 (n + 1)

end A216310

/-!
# A216311: The prime ending in 7 is the only prime in a decade.

The programs for A216311, the canonical program `A216311.P1626925230596813176` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216311 has offset 1).

The definition of A216311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216311.P16116616719346469580

`∩[A030432(n+1), A078494(n+1)]`
-/

namespace A216311.P16116616719346469580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P16116616719346469580

namespace A216311

/-- `∩[A030432(n+1), A078494(n+1)]` -/
def P16116616719346469580.Spec : Prop :=
  ∀ n, (P16116616719346469580.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P14776393725143364478

`∩[A045357(n+1), A078494(n+1)]`
-/

namespace A216311.P14776393725143364478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P14776393725143364478

namespace A216311

/-- `∩[A045357(n+1), A078494(n+1)]` -/
def P14776393725143364478.Spec : Prop :=
  ∀ n, (P14776393725143364478.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P16016800767337074495

`∩[A045380(n+1), A078494(n+1)]`
-/

namespace A216311.P16016800767337074495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P16016800767337074495

namespace A216311

/-- `∩[A045380(n+1), A078494(n+1)]` -/
def P16016800767337074495.Spec : Prop :=
  ∀ n, (P16016800767337074495.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P11253371375279548579

`∩[A078494(n+1), A090652(n+1)]`
-/

namespace A216311.P11253371375279548579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P11253371375279548579

namespace A216311

/-- `∩[A078494(n+1), A090652(n+1)]` -/
def P11253371375279548579.Spec : Prop :=
  ∀ n, (P11253371375279548579.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P1626925230596813176

`A078494(eq[2, A078494(n+1)%5]+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216311

/-- `A078494(eq[2, A078494(n+1)%5]+1)` -/
def P1626925230596813176.Spec : Prop :=
  ∀ n, P1626925230596813176.a n = A216311 (n + 1)

theorem P1626925230596813176.correct : P1626925230596813176.Spec := by
  intro n
  simp only [A216311, Nat.add_sub_cancel]

end A216311

/-! ## A216311.P16829164668711068049

`∩[A004616(n+1), A078494(n+1)]`
-/

namespace A216311.P16829164668711068049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P16829164668711068049

namespace A216311

/-- `∩[A004616(n+1), A078494(n+1)]` -/
def P16829164668711068049.Spec : Prop :=
  ∀ n, (P16829164668711068049.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P160699941447654218

`A017353(A216297(n+1))`
-/

namespace A216311.P160699941447654218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A216297 (n + 1)).toNat

end

end A216311.P160699941447654218

namespace A216311

/-- `A017353(A216297(n+1))` -/
def P160699941447654218.Spec : Prop :=
  ∀ n, P160699941447654218.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P4958136521003545234

`p?[A017365(n)-A038800(n)]`
-/

namespace A216311.P4958136521003545234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216311.P4958136521003545234

namespace A216311

/-- `p?[A017365(n)-A038800(n)]` -/
def P4958136521003545234.Spec : Prop :=
  ∀ n, P4958136521003545234.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P16164296729441524915

`p?[A017353(n)*A038800(n)]`
-/

namespace A216311.P16164296729441524915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216311.P16164296729441524915

namespace A216311

/-- `p?[A017353(n)*A038800(n)]` -/
def P16164296729441524915.Spec : Prop :=
  ∀ n, P16164296729441524915.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P16493344810736610759

`A122072(A216297(n+1)+1)`
-/

namespace A216311.P16493344810736610759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (A216297 (n + 1) + 1).toNat

end

end A216311.P16493344810736610759

namespace A216311

/-- `A122072(A216297(n+1)+1)` -/
def P16493344810736610759.Spec : Prop :=
  ∀ n, P16493344810736610759.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P2788192014774175763

`∩[A078494(n+1), A017353(n)]`
-/

namespace A216311.P2788192014774175763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P2788192014774175763

namespace A216311

/-- `∩[A078494(n+1), A017353(n)]` -/
def P2788192014774175763.Spec : Prop :=
  ∀ n, (P2788192014774175763.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P2220669210362645020

`p?[A017377(A216292(n+1))-2]`
-/

namespace A216311.P2220669210362645020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A216292 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216311.P2220669210362645020

namespace A216311

/-- `p?[A017377(A216292(n+1))-2]` -/
def P2220669210362645020.Spec : Prop :=
  ∀ n, P2220669210362645020.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P7090376557940348467

`∩[A078494(n+1), A160912(n+1)]`
-/

namespace A216311.P7090376557940348467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P7090376557940348467

namespace A216311

/-- `∩[A078494(n+1), A160912(n+1)]` -/
def P7090376557940348467.Spec : Prop :=
  ∀ n, (P7090376557940348467.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P3722351069967543022

`∩[A078494(n+1), A017377(n)-2]`
-/

namespace A216311.P3722351069967543022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P3722351069967543022

namespace A216311

/-- `∩[A078494(n+1), A017377(n)-2]` -/
def P3722351069967543022.Spec : Prop :=
  ∀ n, (P3722351069967543022.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P5876105435483188777

`∩[A078494(n+1), A190876(n+1)-2]`
-/

namespace A216311.P5876105435483188777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P5876105435483188777

namespace A216311

/-- `∩[A078494(n+1), A190876(n+1)-2]` -/
def P5876105435483188777.Spec : Prop :=
  ∀ n, (P5876105435483188777.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P11718450496788290685

`A017353(eq[A017353(n), A179816(n)])`
-/

namespace A216311.P11718450496788290685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216311.P11718450496788290685

namespace A216311

/-- `A017353(eq[A017353(n), A179816(n)])` -/
def P11718450496788290685.Spec : Prop :=
  ∀ n, P11718450496788290685.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P16760204959067551051

`A179816(eq[A179816(n)+2, A017377(n)])`
-/

namespace A216311.P16760204959067551051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216311.P16760204959067551051

namespace A216311

/-- `A179816(eq[A179816(n)+2, A017377(n)])` -/
def P16760204959067551051.Spec : Prop :=
  ∀ n, P16760204959067551051.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P12184987888072334564

`A179816(eq[2, A017377(n)-A179816(n)])`
-/

namespace A216311.P12184987888072334564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216311.P12184987888072334564

namespace A216311

/-- `A179816(eq[2, A017377(n)-A179816(n)])` -/
def P12184987888072334564.Spec : Prop :=
  ∀ n, P12184987888072334564.a n = A216311 (n + 1)

end A216311

/-! ## A216311.P7861509513320004974

`∩[A078494(n+1), A277594(n+1)]`
-/

namespace A216311.P7861509513320004974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P7861509513320004974

namespace A216311

/-- `∩[A078494(n+1), A277594(n+1)]` -/
def P7861509513320004974.Spec : Prop :=
  ∀ n, (P7861509513320004974.a n : ℤ) = A216311 (n + 1)

end A216311

/-! ## A216311.P12304826795085516331

`∩[A078494(n+1), A277596(n+1)-2]`
-/

namespace A216311.P12304826795085516331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216311.P12304826795085516331

namespace A216311

/-- `∩[A078494(n+1), A277596(n+1)-2]` -/
def P12304826795085516331.Spec : Prop :=
  ∀ n, (P12304826795085516331.a n : ℤ) = A216311 (n + 1)

end A216311

/-!
# A216312: The prime ending in 9 is the only prime in a decade.

The programs for A216312, the canonical program `A216312.P9687480174034920457` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216312 has offset 1).

The definition of A216312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216312.P13922020962293636628

`∩[A004618(n+1), A078494(n+1)]`
-/

namespace A216312.P13922020962293636628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P13922020962293636628

namespace A216312

/-- `∩[A004618(n+1), A078494(n+1)]` -/
def P13922020962293636628.Spec : Prop :=
  ∀ n, (P13922020962293636628.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P9687480174034920457

`∩[A030433(n+1), A078494(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A216312

/-- `∩[A030433(n+1), A078494(n+1)]` -/
def P9687480174034920457.Spec : Prop :=
  ∀ n, (P9687480174034920457.a n : ℤ) = A216312 (n + 1)

theorem P9687480174034920457.correct : P9687480174034920457.Spec := by
  intro n
  simp only [A216312, Nat.add_sub_cancel]

end A216312

/-! ## A216312.P7963852441472446747

`∩[A045457(n+1), A078494(n+1)]`
-/

namespace A216312.P7963852441472446747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P7963852441472446747

namespace A216312

/-- `∩[A045457(n+1), A078494(n+1)]` -/
def P7963852441472446747.Spec : Prop :=
  ∀ n, (P7963852441472446747.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P12647742183394043739

`∩[A078494(n+1), A327753(n+1)]`
-/

namespace A216312.P12647742183394043739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P12647742183394043739

namespace A216312

/-- `∩[A078494(n+1), A327753(n+1)]` -/
def P12647742183394043739.Spec : Prop :=
  ∀ n, (P12647742183394043739.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P8290969792070998227

`A017377(A216298(n+1))`
-/

namespace A216312.P8290969792070998227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A216298 (n + 1)).toNat

end

end A216312.P8290969792070998227

namespace A216312

/-- `A017377(A216298(n+1))` -/
def P8290969792070998227.Spec : Prop :=
  ∀ n, P8290969792070998227.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P7072877353227783078

`p?[A017377(A216292(n+1))]`
-/

namespace A216312.P7072877353227783078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A216292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216312.P7072877353227783078

namespace A216312

/-- `p?[A017377(A216292(n+1))]` -/
def P7072877353227783078.Spec : Prop :=
  ∀ n, P7072877353227783078.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P12380435490517894480

`p?[A038800(n)+A017365(n)]`
-/

namespace A216312.P12380435490517894480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216312.P12380435490517894480

namespace A216312

/-- `p?[A038800(n)+A017365(n)]` -/
def P12380435490517894480.Spec : Prop :=
  ∀ n, P12380435490517894480.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P11231354715135329868

`A122072(A216298(n+1)+1)`
-/

namespace A216312.P11231354715135329868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (A216298 (n + 1) + 1).toNat

end

end A216312.P11231354715135329868

namespace A216312

/-- `A122072(A216298(n+1)+1)` -/
def P11231354715135329868.Spec : Prop :=
  ∀ n, P11231354715135329868.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P2384513610401567277

`∩[A078494(n+1), A017377(n)]`
-/

namespace A216312.P2384513610401567277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P2384513610401567277

namespace A216312

/-- `∩[A078494(n+1), A017377(n)]` -/
def P2384513610401567277.Spec : Prop :=
  ∀ n, (P2384513610401567277.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P1310522156595133419

`p?[A017353(n)+A038800(n)+1]`
-/

namespace A216312.P1310522156595133419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + (A038800 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216312.P1310522156595133419

namespace A216312

/-- `p?[A017353(n)+A038800(n)+1]` -/
def P1310522156595133419.Spec : Prop :=
  ∀ n, P1310522156595133419.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P4172451284565376001

`∩[A078494(n+1), A017353(n)+2]`
-/

namespace A216312.P4172451284565376001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P4172451284565376001

namespace A216312

/-- `∩[A078494(n+1), A017353(n)+2]` -/
def P4172451284565376001.Spec : Prop :=
  ∀ n, (P4172451284565376001.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P6560503725406169790

`∩[A078494(n+1), A017281(n)-2]`
-/

namespace A216312.P6560503725406169790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P6560503725406169790

namespace A216312

/-- `∩[A078494(n+1), A017281(n)-2]` -/
def P6560503725406169790.Spec : Prop :=
  ∀ n, (P6560503725406169790.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P2998392642445890740

`∩[A078494(n+1), A160912(n+1)+2]`
-/

namespace A216312.P2998392642445890740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P2998392642445890740

namespace A216312

/-- `∩[A078494(n+1), A160912(n+1)+2]` -/
def P2998392642445890740.Spec : Prop :=
  ∀ n, (P2998392642445890740.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P7784617683084745105

`A017377(eq[A017377(n), A179816(n)])`
-/

namespace A216312.P7784617683084745105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216312.P7784617683084745105

namespace A216312

/-- `A017377(eq[A017377(n), A179816(n)])` -/
def P7784617683084745105.Spec : Prop :=
  ∀ n, P7784617683084745105.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P647561255341223009

`A218255(eq[A218255(n), A268488(n+1)])`
-/

namespace A216312.P647561255341223009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216312.P647561255341223009

namespace A216312

/-- `A218255(eq[A218255(n), A268488(n+1)])` -/
def P647561255341223009.Spec : Prop :=
  ∀ n, P647561255341223009.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P9207490069847586288

`A179816(eq[A017353(n)+2, A179816(n)])`
-/

namespace A216312.P9207490069847586288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216312.P9207490069847586288

namespace A216312

/-- `A179816(eq[A017353(n)+2, A179816(n)])` -/
def P9207490069847586288.Spec : Prop :=
  ∀ n, P9207490069847586288.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P5048482849199084613

`A179816(eq[2, A179816(n)-A017353(n)])`
-/

namespace A216312.P5048482849199084613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n - A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216312.P5048482849199084613

namespace A216312

/-- `A179816(eq[2, A179816(n)-A017353(n)])` -/
def P5048482849199084613.Spec : Prop :=
  ∀ n, P5048482849199084613.a n = A216312 (n + 1)

end A216312

/-! ## A216312.P1003371331220519149

`∩[A078494(n+1), A190876(n+1)]`
-/

namespace A216312.P1003371331220519149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P1003371331220519149

namespace A216312

/-- `∩[A078494(n+1), A190876(n+1)]` -/
def P1003371331220519149.Spec : Prop :=
  ∀ n, (P1003371331220519149.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P16222401246853830908

`∩[A078494(n+1), A277596(n+1)]`
-/

namespace A216312.P16222401246853830908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P16222401246853830908

namespace A216312

/-- `∩[A078494(n+1), A277596(n+1)]` -/
def P16222401246853830908.Spec : Prop :=
  ∀ n, (P16222401246853830908.a n : ℤ) = A216312 (n + 1)

end A216312

/-! ## A216312.P8862270336382130975

`∩[A078494(n+1), A277594(n+1)+2]`
-/

namespace A216312.P8862270336382130975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P8862270336382130975

namespace A216312

/-- `∩[A078494(n+1), A277594(n+1)+2]` -/
def P8862270336382130975.Spec : Prop :=
  ∀ n, (P8862270336382130975.a n : ℤ) = A216312 (n + 1)

end A216312

/-!
# A216313: Total number of cycles in all partial permutations of {1,2,...,n}.

The programs for A216313, there is no canonical definition to state claims against.
-/

/-! ## A216313.P17445667216810234298

`A355267(A000124(n))-floor(acot(n))`
-/

namespace A216313.P17445667216810234298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355267 (A000124 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A216313.P17445667216810234298

/-! ## A216313.P7006174663682927296

`A355267(A000124(n))-A000007(n)`
-/

namespace A216313.P7006174663682927296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355267 (A000124 n).toNat - A000007 n

end

end A216313.P7006174663682927296

/-! ## A216313.P2087376273395918385

`A355267(A000124(n))%A004700(n)`
-/

namespace A216313.P2087376273395918385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355267 (A000124 n).toNat) (A004700 n)

end

end A216313.P2087376273395918385

/-! ## A216313.P2195555816143360300

`lcm(A056926(n), A355267(A000124(n)))`
-/

namespace A216313.P2195555816143360300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056926 n) (A355267 (A000124 n).toNat)

end

end A216313.P2195555816143360300

/-!
# A216314: G.f. satisfies A(x) = (1 + x*A(x)) * (1 + 2*x*A(x)^2).

The programs for A216314, there is no canonical definition to state claims against.
-/

/-! ## A216314.P11057555195700502342

`or(A057979(n), A200144(A014206(n)))`
-/

namespace A216314.P11057555195700502342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057979 n) (A200144 (A014206 n).toNat)

end

end A216314.P11057555195700502342

/-! ## A216314.P8144373527465285656

`or(A133684(n), A200144(A014206(n)))`
-/

namespace A216314.P8144373527465285656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133684 n) (A200144 (A014206 n).toNat)

end

end A216314.P8144373527465285656

/-!
# A216315: Primes congruent to 1 mod 59.

The programs for A216315, the canonical program `A216315.P17924968363353530023` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216315 has offset 1).

The definition of A216315 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A216315.anchor (n : ℕ) (hn : 1 ≤ n) : A216315 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 1) (n - 1) : ℤ)` in `Proof.A216.A216315`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216315.P17924968363353530023

`p?[59*n+1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216315

/-- `p?[59*n+1]` -/
def P17924968363353530023.Spec : Prop :=
  ∀ n, (P17924968363353530023.a n : ℤ) = A216315 (n + 1)

theorem P17924968363353530023.correct : P17924968363353530023.Spec := by
  intro n
  simp only [A216315, Nat.add_sub_cancel]

end A216315

/-! ## A216315.P9416437169563855783

`∪[A059312(n+1), A216363(n+1)]`
-/

namespace A216315.P9416437169563855783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216315.P9416437169563855783

namespace A216315

/-- `∪[A059312(n+1), A216363(n+1)]` -/
def P9416437169563855783.Spec : Prop :=
  ∀ n, (P9416437169563855783.a n : ℤ) = A216315 (n + 1)

end A216315

/-! ## A216315.P8781758958058498002

`A000038(n+1)+p?[A249674(n)+A248572(n)]`
-/

namespace A216315.P8781758958058498002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216315.P8781758958058498002

namespace A216315

/-- `A000038(n+1)+p?[A249674(n)+A248572(n)]` -/
def P8781758958058498002.Spec : Prop :=
  ∀ n, P8781758958058498002.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P2123039557455108875

`p?[A249674(n)+A248572(n)]%A162143(n+1)`
-/

namespace A216315.P2123039557455108875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A162143 (n + 1))

end

end A216315.P2123039557455108875

namespace A216315

/-- `p?[A249674(n)+A248572(n)]%A162143(n+1)` -/
def P2123039557455108875.Spec : Prop :=
  ∀ n, P2123039557455108875.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P16157119741809947020

`p?[A249674(n)+A248572(n)]/A020742(n)%2`
-/

namespace A216315.P16157119741809947020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A020742 n) 2 : ℚ)

end

end A216315.P16157119741809947020

namespace A216315

/-- `p?[A249674(n)+A248572(n)]/A020742(n)%2` -/
def P16157119741809947020.Spec : Prop :=
  ∀ n, P16157119741809947020.a n = (A216315 (n + 1) : ℚ)

end A216315

/-! ## A216315.P17886822087946976912

`A000027(p?[A161714(n)+A135631(n)])`
-/

namespace A216315.P17886822087946976912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P17886822087946976912

namespace A216315

/-- `A000027(p?[A161714(n)+A135631(n)])` -/
def P17886822087946976912.Spec : Prop :=
  ∀ n, P17886822087946976912.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P6381132808434203363

`A000027(p?[A249674(n)+A248572(n)])`
-/

namespace A216315.P6381132808434203363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P6381132808434203363

namespace A216315

/-- `A000027(p?[A249674(n)+A248572(n)])` -/
def P6381132808434203363.Spec : Prop :=
  ∀ n, P6381132808434203363.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P10841298290331619680

`A000265(p?[A227863(n+1)-n])`
-/

namespace A216315.P10841298290331619680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P10841298290331619680

namespace A216315

/-- `A000265(p?[A227863(n+1)-n])` -/
def P10841298290331619680.Spec : Prop :=
  ∀ n, P10841298290331619680.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P12459739132049197449

`A007913(p?[A227863(n+1)-n])`
-/

namespace A216315.P12459739132049197449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P12459739132049197449

namespace A216315

/-- `A007913(p?[A227863(n+1)-n])` -/
def P12459739132049197449.Spec : Prop :=
  ∀ n, P12459739132049197449.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P10088147725187438974

`A007947(p?[A227863(n+1)-n])`
-/

namespace A216315.P10088147725187438974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P10088147725187438974

namespace A216315

/-- `A007947(p?[A227863(n+1)-n])` -/
def P10088147725187438974.Spec : Prop :=
  ∀ n, P10088147725187438974.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P4523570400476906556

`A000265(p?[A161714(n)+A135631(n)])`
-/

namespace A216315.P4523570400476906556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P4523570400476906556

namespace A216315

/-- `A000265(p?[A161714(n)+A135631(n)])` -/
def P4523570400476906556.Spec : Prop :=
  ∀ n, P4523570400476906556.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P2584633767575356396

`A007913(p?[A161714(n)+A135631(n)])`
-/

namespace A216315.P2584633767575356396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P2584633767575356396

namespace A216315

/-- `A007913(p?[A161714(n)+A135631(n)])` -/
def P2584633767575356396.Spec : Prop :=
  ∀ n, P2584633767575356396.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P11530152975009081644

`A007947(p?[A161714(n)+A135631(n)])`
-/

namespace A216315.P11530152975009081644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P11530152975009081644

namespace A216315

/-- `A007947(p?[A161714(n)+A135631(n)])` -/
def P11530152975009081644.Spec : Prop :=
  ∀ n, P11530152975009081644.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P14064744064235774866

`A000265(p?[A249674(n)+A248572(n)])`
-/

namespace A216315.P14064744064235774866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P14064744064235774866

namespace A216315

/-- `A000265(p?[A249674(n)+A248572(n)])` -/
def P14064744064235774866.Spec : Prop :=
  ∀ n, P14064744064235774866.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P14015473465028372715

`A001414(p?[A249674(n)+A248572(n)])`
-/

namespace A216315.P14015473465028372715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P14015473465028372715

namespace A216315

/-- `A001414(p?[A249674(n)+A248572(n)])` -/
def P14015473465028372715.Spec : Prop :=
  ∀ n, P14015473465028372715.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P12551894976708027923

`A007913(p?[A249674(n)+A248572(n)])`
-/

namespace A216315.P12551894976708027923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P12551894976708027923

namespace A216315

/-- `A007913(p?[A249674(n)+A248572(n)])` -/
def P12551894976708027923.Spec : Prop :=
  ∀ n, P12551894976708027923.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P16564334096049361451

`A052410(p?[A249674(n)+A248572(n)])`
-/

namespace A216315.P16564334096049361451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P16564334096049361451

namespace A216315

/-- `A052410(p?[A249674(n)+A248572(n)])` -/
def P16564334096049361451.Spec : Prop :=
  ∀ n, P16564334096049361451.a n = A216315 (n + 1)

end A216315

/-! ## A216315.P218013980684576622

`A034699(p?[A161714(n)+A135631(n)])`
-/

namespace A216315.P218013980684576622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216315.P218013980684576622

namespace A216315

/-- `A034699(p?[A161714(n)+A135631(n)])` -/
def P218013980684576622.Spec : Prop :=
  ∀ n, P218013980684576622.a n = A216315 (n + 1)

end A216315

/-!
# A216316: G.f.: 1/( (1-8*x)*(1+x)^2 )^(1/3).

The programs for A216316, there is no canonical definition to state claims against.
-/

/-! ## A216316.P4815263166954305267

`A361881(n)-a(n-1)` with `a(0)=1`
-/

namespace A216316.P4815263166954305267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A361881 n - a (n - 1)

end

end A216316.P4815263166954305267

/-! ## A216316.P15156844968231207377

`A079726(A028310(n)+A023000(n))`
-/

namespace A216316.P15156844968231207377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079726 (A028310 n + A023000 n).toNat

end

end A216316.P15156844968231207377

/-!
# A216317: G.f.: 1/( (1-8*x)*(1+x)^2 )^(1/6).

The programs for A216317, there is no canonical definition to state claims against.
-/

/-! ## A216317.P2950468566831132516

`A276796(A156181(n)-n)`
-/

namespace A216317.P2950468566831132516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A156181 n - (n : ℤ)).toNat

end

end A216317.P2950468566831132516

/-! ## A216317.P5736538773391580384

`A087712(A289201(n+1)+A280490(n+1))`
-/

namespace A216317.P5736538773391580384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A289201 (n + 1) + A280490 (n + 1)).toNat

end

end A216317.P5736538773391580384

/-!
# A216318: Number of peaks in all Dyck n-paths after changing each valley to a peak by the transform DU -> UD.

The programs for A216318, the canonical program `A216318.P9466305550885392496` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216318 has offset 0).

The definition of A216318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216318.P9466305550885392496

`ceil(A028270(n)/2)-A000108(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A216318

/-- `ceil(A028270(n)/2)-A000108(n)` -/
def P9466305550885392496.Spec : Prop :=
  ∀ n, P9466305550885392496.a n = A216318 n

theorem P9466305550885392496.correct : P9466305550885392496.Spec := by
  intro n
  simp only [A216318]

end A216318

/-! ## A216318.P5933639072865417590

`ceil(A028270(n)/2)-A028303(2*n)`
-/

namespace A216318.P5933639072865417590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028270 n : ℚ) / 2⌉ - A028303 (2 * n)

end

end A216318.P5933639072865417590

namespace A216318

/-- `ceil(A028270(n)/2)-A028303(2*n)` -/
def P5933639072865417590.Spec : Prop :=
  ∀ n, P5933639072865417590.a n = A216318 n

end A216318

/-! ## A216318.P2316200308433091704

`A001791(n)-Δ[A057977(A004274(n))]`
-/

namespace A216318.P2316200308433091704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A004274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - (f1 (n + 1) - f1 n)

end

end A216318.P2316200308433091704

namespace A216318

/-- `A001791(n)-Δ[A057977(A004274(n))]` -/
def P2316200308433091704.Spec : Prop :=
  ∀ n, P2316200308433091704.a n = A216318 n

end A216318

/-! ## A216318.P8529138591441905565

`A001791(n)-Δ[A210736(A004275(n))]`
-/

namespace A216318.P8529138591441905565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - (f1 (n + 1) - f1 n)

end

end A216318.P8529138591441905565

namespace A216318

/-- `A001791(n)-Δ[A210736(A004275(n))]` -/
def P8529138591441905565.Spec : Prop :=
  ∀ n, P8529138591441905565.a n = A216318 n

end A216318

/-! ## A216318.P15457998029177544684

`A097613(n+1)-A026619(A028310(n))`
-/

namespace A216318.P15457998029177544684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) - A026619 (A028310 n).toNat

end

end A216318.P15457998029177544684

namespace A216318

/-- `A097613(n+1)-A026619(A028310(n))` -/
def P15457998029177544684.Spec : Prop :=
  ∀ n, P15457998029177544684.a n = A216318 n

end A216318

/-!
# A216319: Irregular triangle: row n lists the odd numbers of the reduced residue system modulo n.

The programs for A216319, the canonical program `A216319.P7848709272495986412` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216319 has offset 1).

The definition of A216319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216319.P8455012882910913585

`filter[A038566(n+1), A000035(#)]`
-/

namespace A216319.P8455012882910913585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A216319.P8455012882910913585

namespace A216319

/-- `filter[A038566(n+1), A000035(#)]` -/
def P8455012882910913585.Spec : Prop :=
  ∀ n, P8455012882910913585.a n = A216319 (n + 1)

end A216319

/-! ## A216319.P17832642902573875687

`filter[A038569(2*n), A000035(#)]`
-/

namespace A216319.P17832642902573875687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A216319.P17832642902573875687

namespace A216319

/-- `filter[A038569(2*n), A000035(#)]` -/
def P17832642902573875687.Spec : Prop :=
  ∀ n, P17832642902573875687.a n = A216319 (n + 1)

end A216319

/-! ## A216319.P7848709272495986412

`A038566(eq[1, A038566(n+1)%2]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216319

/-- `A038566(eq[1, A038566(n+1)%2]+1)` -/
def P7848709272495986412.Spec : Prop :=
  ∀ n, P7848709272495986412.a n = A216319 (n + 1)

theorem P7848709272495986412.correct : P7848709272495986412.Spec := by
  intro n
  simp only [A216319, Nat.add_sub_cancel]

end A216319

/-! ## A216319.P16432783417054068615

`A038566(eq[1, gcd(2, A038566(n+1))]+1)`
-/

namespace A216319.P16432783417054068615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A038566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A216319.P16432783417054068615

namespace A216319

/-- `A038566(eq[1, gcd(2, A038566(n+1))]+1)` -/
def P16432783417054068615.Spec : Prop :=
  ∀ n, P16432783417054068615.a n = A216319 (n + 1)

end A216319

/-! ## A216319.P6270340137802249009

`A038566(eq[1, and(1, A038566(n+1))]+1)`
-/

namespace A216319.P6270340137802249009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216319.P6270340137802249009

namespace A216319

/-- `A038566(eq[1, and(1, A038566(n+1))]+1)` -/
def P6270340137802249009.Spec : Prop :=
  ∀ n, P6270340137802249009.a n = A216319 (n + 1)

end A216319

/-! ## A216319.P7348201186707617288

`A038566(record[n*and(1, A038566(n+1))]+1)`
-/

namespace A216319.P7348201186707617288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A038566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A216319.P7348201186707617288

namespace A216319

/-- `A038566(record[n*and(1, A038566(n+1))]+1)` -/
def P7348201186707617288.Spec : Prop :=
  ∀ n, P7348201186707617288.a n = A216319 (n + 1)

end A216319

/-! ## A216319.P7818913808007310313

`filter[A127368(n+1), A000035(#)]`
-/

namespace A216319.P7818913808007310313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A216319.P7818913808007310313

namespace A216319

/-- `filter[A127368(n+1), A000035(#)]` -/
def P7818913808007310313.Spec : Prop :=
  ∀ n, P7818913808007310313.a n = A216319 (n + 1)

end A216319

/-! ## A216319.P10673252559849474849

`filter[A317988(2*n+1), A000035(#)]`
-/

namespace A216319.P10673252559849474849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A216319.P10673252559849474849

namespace A216319

/-- `filter[A317988(2*n+1), A000035(#)]` -/
def P10673252559849474849.Spec : Prop :=
  ∀ n, P10673252559849474849.a n = A216319 (n + 1)

end A216319

/-! ## A216319.P2150754094274483221

`A193738(eq[A119963(n), A179317(n+1)])`
-/

namespace A216319.P2150754094274483221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216319.P2150754094274483221

namespace A216319

/-- `A193738(eq[A119963(n), A179317(n+1)])` -/
def P2150754094274483221.Spec : Prop :=
  ∀ n, P2150754094274483221.a n = A216319 (n + 1)

end A216319

/-!
# A216320: Irregular triangle: row n lists the Modd n order of the odd members of the reduced smallest nonnegative residue class modulo n.

The programs for A216320, there is no canonical definition to state claims against.
-/

/-! ## A216320.P15750088672386278601

`A337279(xor(A337260(n+1), A337280(n+1)))`
-/

namespace A216320.P15750088672386278601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337279 (Int.xor (A337260 (n + 1)) (A337280 (n + 1))).toNat

end

end A216320.P15750088672386278601

/-! ## A216320.P7782832943397958795

`A000120(A055372(3*n)+A017907(n))`
-/

namespace A216320.P7782832943397958795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A055372 (3 * n) + A017907 n).toNat

end

end A216320.P7782832943397958795

/-! ## A216320.P5635412497684237598

`A043276(A359902(n+1)+A108558(3*n))`
-/

namespace A216320.P5635412497684237598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A359902 (n + 1) + A108558 (3 * n)).toNat

end

end A216320.P5635412497684237598

/-! ## A216320.P3176860726192744101

`A055642(A162206(n+1)*A299321(3*n+1))`
-/

namespace A216320.P3176860726192744101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A162206 (n + 1) * A299321 (3 * n + 1)).toNat

end

end A216320.P3176860726192744101

/-! ## A216320.P12145623390290564087

`A055642(A296990(3*n+1)+A195581(n+3))`
-/

namespace A216320.P12145623390290564087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A296990 (3 * n + 1) + A195581 (n + 3)).toNat

end

end A216320.P12145623390290564087

/-!
# A216321: phi(delta(n)), n >= 1, with phi = A000010 (Euler's totient) and delta = A055034 (degree of minimal polynomials with coefficients given in A187360).

The programs for A216321, the canonical program `A216321.P6307569186183926854` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216321 has offset 1).

The definition of A216321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216321.P6307569186183926854

`A000010(ceil(A000010(2*(n+1))/2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216321

/-- `A000010(ceil(A000010(2*(n+1))/2))` -/
def P6307569186183926854.Spec : Prop :=
  ∀ n, P6307569186183926854.a n = A216321 (n + 1)

theorem P6307569186183926854.correct : P6307569186183926854.Spec := by
  intro n
  simp only [A216321, Nat.add_sub_cancel]

end A216321

/-! ## A216321.P17705707427085165258

`A000010(A055034(n+1))`
-/

namespace A216321.P17705707427085165258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055034 (n + 1)).toNat

end

end A216321.P17705707427085165258

namespace A216321

/-- `A000010(A055034(n+1))` -/
def P17705707427085165258.Spec : Prop :=
  ∀ n, P17705707427085165258.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P9410240593008234958

`A057828(A055034(n+1)²)`
-/

namespace A216321.P9410240593008234958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A055034 (n + 1) ^ 2).toNat

end

end A216321.P9410240593008234958

namespace A216321

/-- `A057828(A055034(n+1)²)` -/
def P9410240593008234958.Spec : Prop :=
  ∀ n, P9410240593008234958.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P7507932157057828104

`A000010(A023022(2*(n+1)))`
-/

namespace A216321.P7507932157057828104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A023022 (2 * (n + 1))).toNat

end

end A216321.P7507932157057828104

namespace A216321

/-- `A000010(A023022(2*(n+1)))` -/
def P7507932157057828104.Spec : Prop :=
  ∀ n, P7507932157057828104.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P17382086594235969145

`A089929(2*A055034(n+1))`
-/

namespace A216321.P17382086594235969145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (2 * A055034 (n + 1)).toNat

end

end A216321.P17382086594235969145

namespace A216321

/-- `A089929(2*A055034(n+1))` -/
def P17382086594235969145.Spec : Prop :=
  ∀ n, P17382086594235969145.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P18158250543909877262

`A055034(lcm(2, A055034(n+1)))`
-/

namespace A216321.P18158250543909877262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A055034 (n + 1)))

end

end A216321.P18158250543909877262

namespace A216321

/-- `A055034(lcm(2, A055034(n+1)))` -/
def P18158250543909877262.Spec : Prop :=
  ∀ n, P18158250543909877262.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P6215696712339763754

`A023022(lcm(4, A062570(n+1)))`
-/

namespace A216321.P6215696712339763754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Int.lcm 4 (A062570 (n + 1)))

end

end A216321.P6215696712339763754

namespace A216321

/-- `A023022(lcm(4, A062570(n+1)))` -/
def P6215696712339763754.Spec : Prop :=
  ∀ n, P6215696712339763754.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P2628220707110367591

`A000010(Δ[ceil(A049690(n)/2)])`
-/

namespace A216321.P2628220707110367591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049690 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A216321.P2628220707110367591

namespace A216321

/-- `A000010(Δ[ceil(A049690(n)/2)])` -/
def P2628220707110367591.Spec : Prop :=
  ∀ n, P2628220707110367591.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P13768984045052267109

`A000010(ceil(A062570(n+1)/2))`
-/

namespace A216321.P13768984045052267109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A062570 (n + 1) : ℚ) / 2⌉.toNat

end

end A216321.P13768984045052267109

namespace A216321

/-- `A000010(ceil(A062570(n+1)/2))` -/
def P13768984045052267109.Spec : Prop :=
  ∀ n, P13768984045052267109.a n = A216321 (n + 1)

end A216321

/-! ## A216321.P4750923839974830561

`A349137(or(1, A109606(2*(n+1))))`
-/

namespace A216321.P4750923839974830561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (Int.lor 1 (A109606 (2 * (n + 1)))).toNat

end

end A216321.P4750923839974830561

namespace A216321

/-- `A349137(or(1, A109606(2*(n+1))))` -/
def P4750923839974830561.Spec : Prop :=
  ∀ n, P4750923839974830561.a n = A216321 (n + 1)

end A216321

/-!
# A216323: Values for b in abc-triples with a=1.

The programs for A216323, there is no canonical definition to state claims against.
-/

/-! ## A216323.P12683203016664147745

`record[ratio[A225426(n+1)]]`
-/

namespace A216323.P12683203016664147745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216323.P12683203016664147745

/-! ## A216323.P10864167292787667777

`record[A225426(n+2)/A225426(n+1)]`
-/

namespace A216323.P10864167292787667777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225426 (n + 2) : ℚ) / (A225426 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216323.P10864167292787667777

/-! ## A216323.P17818699202251728175

`A130510(eq[1, A130511(n+1)]+1)-1`
-/

namespace A216323.P17818699202251728175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A216323.P17818699202251728175

/-! ## A216323.P1290000628354400362

`record[(A130510(n+1)-1)/A130511(n+1)]`
-/

namespace A216323.P1290000628354400362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130510 (n + 1) - 1 : ℚ) / (A130511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216323.P1290000628354400362

/-! ## A216323.P16312006140521406655

`A225426(record[A016789(n)/A130511(n+1)])`
-/

namespace A216323.P16312006140521406655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n : ℚ) / (A130511 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A216323.P16312006140521406655

/-!
# A216324: One half of the radical (squarefree kernel) of the abc-triples (a=1, b(n) = A216323(n), c(n) = 1 + b(n)).

The programs for A216324, there is no canonical definition to state claims against.
-/

/-! ## A216324.P1323679627871924997

`A078636(A216323(n+1))/2`
-/

namespace A216324.P1323679627871924997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078636 (A216323 (n + 1)).toNat : ℚ) / 2

end

end A216324.P1323679627871924997

/-! ## A216324.P16995032444688343196

`A078636(record[(A130510(n+1)-1)/A130511(n+1)])/2`
-/

namespace A216324.P16995032444688343196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130510 (n + 1) - 1 : ℚ) / (A130511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078636 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℚ) / 2

end

end A216324.P16995032444688343196

/-!
# A216325: Number of divisors of the degree of the minimal polynomial for 2*cos(Pi/n), n >= 1.

The programs for A216325, there is no canonical definition to state claims against.
-/

/-! ## A216325.P4469186859818898558

`∏{e}[A055034(n+1), #+1]`
-/

namespace A216325.P4469186859818898558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216325.P4469186859818898558

/-! ## A216325.P3392150840794537170

`A193386(abs(2-n)+4+n)`
-/

namespace A216325.P3392150840794537170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (|2 - (n : ℤ)| + 4 + (n : ℤ)).toNat

end

end A216325.P3392150840794537170

/-! ## A216325.P10540698989125750266

`∏{e}[floor(A000010(2*(n+1))/2), #+1]`
-/

namespace A216325.P10540698989125750266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (2 * (n + 1)) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216325.P10540698989125750266

/-! ## A216325.P3297524240896848572

`∏{e}[ceil(A000010(2*n+2)/2), #+1]`
-/

namespace A216325.P3297524240896848572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (2 * n + 2) : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216325.P3297524240896848572

/-! ## A216325.P6256956350097910829

`A320111(Δ[A049690(n)])`
-/

namespace A216325.P6256956350097910829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (f1 (n + 1) - f1 n).toNat

end

end A216325.P6256956350097910829

/-! ## A216325.P13177217322291912969

`A000005(A055034(n+1))`
-/

namespace A216325.P13177217322291912969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055034 (n + 1)).toNat

end

end A216325.P13177217322291912969

/-! ## A216325.P12042158366316287871

`A320111(A062570(n+1))`
-/

namespace A216325.P12042158366316287871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A062570 (n + 1)).toNat

end

end A216325.P12042158366316287871

/-! ## A216325.P3383341492198334020

`A000005(A023022(2*(n+1)))`
-/

namespace A216325.P3383341492198334020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A023022 (2 * (n + 1))).toNat

end

end A216325.P3383341492198334020

/-! ## A216325.P10258059378166507166

`A320111(A000010(2*(n+1)))`
-/

namespace A216325.P10258059378166507166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A000010 (2 * (n + 1))).toNat

end

end A216325.P10258059378166507166

/-! ## A216325.P3502694656423217766

`A320111(A082953(n+1)/A000010(n+1))`
-/

namespace A216325.P3502694656423217766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (SequenceMachineLib.roundAway ((A082953 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))).toNat

end

end A216325.P3502694656423217766

/-!
# A216326: Number of divisors of the degree of the minimal polynomial of 2*cos(Pi/prime(n)), with prime = A000040, n >= 1.

The programs for A216326, there is no canonical definition to state claims against.
-/

/-! ## A216326.P16725664942136640167

`∏{e}[A102781(n+1), #+1]`
-/

namespace A216326.P16725664942136640167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216326.P16725664942136640167

/-! ## A216326.P10005328652287033687

`∏{e}[A130290(n+1), #+1]`
-/

namespace A216326.P10005328652287033687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216326.P10005328652287033687

/-! ## A216326.P8203594944855691765

`∏{e}[1-A111333(n+1), #+1]`
-/

namespace A216326.P8203594944855691765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A111333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216326.P8203594944855691765

/-! ## A216326.P15395054176649048110

`∏{e}[floor(A000040(n+1)/2), #+1]`
-/

namespace A216326.P15395054176649048110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216326.P15395054176649048110

/-! ## A216326.P16188020490156954693

`∏{e}[ceil(A006093(n+1)/2), #+1]`
-/

namespace A216326.P16188020490156954693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006093 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216326.P16188020490156954693

/-! ## A216326.P14555663155472671397

`∏{e}[(A006005(n+1)-1)/2, #+1]`
-/

namespace A216326.P14555663155472671397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - 1 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A216326.P14555663155472671397

/-! ## A216326.P9486903020945949740

`∏{e}[eq[1, A066839(2*n+1)], #+1]`
-/

namespace A216326.P9486903020945949740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A216326.P9486903020945949740

/-! ## A216326.P14413205121113165024

`∏{e}[record[floor(A001414(n+1)/2)], #+1]`
-/

namespace A216326.P14413205121113165024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001414 (n + 1) : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A216326.P14413205121113165024

/-! ## A216326.P6330312914580501079

`A069157(A039915(n+1))`
-/

namespace A216326.P6330312914580501079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A039915 (n + 1)).toNat

end

end A216326.P6330312914580501079

/-! ## A216326.P16185358708300541529

`A000005(A130290(n+1))`
-/

namespace A216326.P16185358708300541529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130290 (n + 1)).toNat

end

end A216326.P16185358708300541529

/-!
# A216327: Irregular triangle of multiplicative orders mod n for the elements of the smallest positive reduced residue system mod n.

The programs for A216327, there is no canonical definition to state claims against.
-/

/-! ## A216327.P1370175571052626512

`A139366(A169581(ceil(acot(n)+n)))`
-/

namespace A216327.P1370175571052626512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (A169581 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat).toNat

end

end A216327.P1370175571052626512

/-! ## A216327.P10780829581718391967

`A139366(A169581(abs(1-n)+2))`
-/

namespace A216327.P10780829581718391967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (A169581 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A216327.P10780829581718391967

/-! ## A216327.P17415140590958460741

`A139366(A169581(n+1))^floor(atan(n))`
-/

namespace A216327.P17415140590958460741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139366 (A169581 (n + 1)).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A216327.P17415140590958460741

/-! ## A216327.P4370298598655683940

`A139366(A169581(n+1)+A000007(n))`
-/

namespace A216327.P4370298598655683940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (A169581 (n + 1) + A000007 n).toNat

end

end A216327.P4370298598655683940

/-! ## A216327.P6188638411561554828

`∏{d}[A139366(A169581(n+1)), A014963(#)]`
-/

namespace A216327.P6188638411561554828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (A169581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A216327.P6188638411561554828

/-! ## A216327.P11376012851523711296

`A139366(A169581(n+1))^A057428(n)²`
-/

namespace A216327.P11376012851523711296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139366 (A169581 (n + 1)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A216327.P11376012851523711296

/-! ## A216327.P6690957507416782940

`A139366(A169581(n+1))+A000005(n²+1)%2`
-/

namespace A216327.P6690957507416782940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (A169581 (n + 1)).toNat + Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A216327.P6690957507416782940

/-! ## A216327.P8189604538326508730

`A139366(A169581(n+1))-A008683(2*(n+1)²)`
-/

namespace A216327.P8189604538326508730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (A169581 (n + 1)).toNat - A008683 (2 * (n + 1) ^ 2)

end

end A216327.P8189604538326508730

/-! ## A216327.P875713545036000725

`A139366(A169581(n+1)+A151878(n))`
-/

namespace A216327.P875713545036000725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (A169581 (n + 1) + A151878 n).toNat

end

end A216327.P875713545036000725

/-!
# A216329: Decades whose prime pattern is the same as the prime pattern in the next decade, with at least one prime.

The programs for A216329, there is no canonical definition to state claims against.
-/

/-! ## A216329.P11907762400322683119

`A219997(n+1)-1`
-/

namespace A216329.P11907762400322683119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219997 (n + 1) - 1

end

end A216329.P11907762400322683119

/-! ## A216329.P14593905903118227818

`abs(A219997(n+1)+A008683(A020483(n)))`
-/

namespace A216329.P14593905903118227818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A219997 (n + 1) + A008683 (A020483 n).toNat|

end

end A216329.P14593905903118227818

/-! ## A216329.P9867785472505906511

`A004483(A219997(n+1))`
-/

namespace A216329.P9867785472505906511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A219997 (n + 1)).toNat

end

end A216329.P9867785472505906511

/-! ## A216329.P8984839032212492186

`A023443(A219997(n+1)%A164987(n+1))`
-/

namespace A216329.P8984839032212492186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A219997 (n + 1)) (A164987 (n + 1))).toNat

end

end A216329.P8984839032212492186

/-! ## A216329.P6875552248326516744

`A321804(A135481(n))+A219997(n+1)`
-/

namespace A216329.P6875552248326516744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A135481 n).toNat + A219997 (n + 1)

end

end A216329.P6875552248326516744

/-!
# A216330: Squares equal to the difference between two successive primes of the form n^2+1.

The programs for A216330, there is no canonical definition to state claims against.
-/

/-! ## A216330.P2388855260656972420

`filter[A193558(n+1), A010052(#)]`
-/

namespace A216330.P2388855260656972420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A216330.P2388855260656972420

/-!
# A216331: Number of horizontal and antidiagonal neighbor colorings of the even squares of an n X n array with new integer colors introduced in row major order.

The programs for A216331, there is no canonical definition to state claims against.
-/

/-! ## A216331.P9620056502542963679

`A216338((n+1)²+n²)`
-/

namespace A216331.P9620056502542963679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 ((n + 1) ^ 2 + n ^ 2)

end

end A216331.P9620056502542963679

/-! ## A216331.P16139854080572444678

`record[gcd(A166040(n), A216338(n+1))]`
-/

namespace A216331.P16139854080572444678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A216338 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216331.P16139854080572444678

/-! ## A216331.P1630061452136581831

`A326591(n)+A216338(A001844(n))`
-/

namespace A216331.P1630061452136581831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326591 n + A216338 (A001844 n).toNat

end

end A216331.P1630061452136581831

/-! ## A216331.P5469462443260060720

`A216338(A001844(n))*A295679(n)`
-/

namespace A216331.P5469462443260060720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A001844 n).toNat * A295679 n

end

end A216331.P5469462443260060720

/-!
# A216332: Number of horizontal and antidiagonal neighbor colorings of the even squares of an n X 2 array with new integer colors introduced in row major order.

The programs for A216332, there is no canonical definition to state claims against.
-/

/-! ## A216332.P3899193646002813047

`A011972(ceil(n²/2))`
-/

namespace A216332.P3899193646002813047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

end

end A216332.P3899193646002813047

/-! ## A216332.P5461131906771884415

`A011971(∑[n%2+n])`
-/

namespace A216332.P5461131906771884415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216332.P5461131906771884415

/-! ## A216332.P16185679429235683399

`A011971(∑[and(1, n)+n])`
-/

namespace A216332.P16185679429235683399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216332.P16185679429235683399

/-! ## A216332.P17606154390826888081

`A011971(∑[2*ceil(n/2)])`
-/

namespace A216332.P17606154390826888081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216332.P17606154390826888081

/-! ## A216332.P3156183039676919894

`A182930(A080476(n+2))`
-/

namespace A216332.P3156183039676919894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A080476 (n + 2)).toNat

end

end A216332.P3156183039676919894

/-! ## A216332.P778468949835633321

`A123346(A007590(n)+n)`
-/

namespace A216332.P778468949835633321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A007590 n + (n : ℤ)).toNat

end

end A216332.P778468949835633321

/-! ## A216332.P717025250994471546

`A363452(n)+A000110(n)`
-/

namespace A216332.P717025250994471546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363452 n + A000110 n

end

end A216332.P717025250994471546

/-! ## A216332.P14466162019908631375

`A106436(A018837((n+2)²))`
-/

namespace A216332.P14466162019908631375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A018837 ((n + 2) ^ 2)).toNat

end

end A216332.P14466162019908631375

/-! ## A216332.P16882198653766828799

`A106436(A110654((n+2)²))`
-/

namespace A216332.P16882198653766828799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A110654 ((n + 2) ^ 2)).toNat

end

end A216332.P16882198653766828799

/-! ## A216332.P7393548393868349676

`A182930(A047838(n+2)+1)`
-/

namespace A216332.P7393548393868349676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A047838 (n + 2) + 1).toNat

end

end A216332.P7393548393868349676

/-!
# A216333: Number of horizontal and antidiagonal neighbor colorings of the even squares of an nX3 array with new integer colors introduced in row major order.

The programs for A216333, there is no canonical definition to state claims against.
-/

/-! ## A216333.P2759772492469505726

`A000110(comp[3*n])`
-/

namespace A216333.P2759772492469505726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A216333.P2759772492469505726

/-! ## A216333.P6748457792460402780

`A188164(3*n+1)`
-/

namespace A216333.P6748457792460402780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (3 * n + 1)

end

end A216333.P6748457792460402780

/-! ## A216333.P4000173007621261701

`A285013(or(1, 3*n))`
-/

namespace A216333.P4000173007621261701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285013 (Nat.lor 1 (3 * n))

end

end A216333.P4000173007621261701

/-! ## A216333.P2139774948432987876

`abs(A292935(comp[3*n]))`
-/

namespace A216333.P2139774948432987876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A216333.P2139774948432987876

/-! ## A216333.P13723692416860640561

`record[root(A000110(n), gcd(3, n))]`
-/

namespace A216333.P13723692416860640561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℝ) ^ (1 / (Nat.gcd 3 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216333.P13723692416860640561

/-! ## A216333.P17219941921627539006

`record[A293024(2*n+n+2)]`
-/

namespace A216333.P17219941921627539006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216333.P17219941921627539006

/-! ## A216333.P10520992913637543762

`record[Δ[A005001(n)]^(n²%3)]`
-/

namespace A216333.P10520992913637543762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ (n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216333.P10520992913637543762

/-! ## A216333.P15614590414784238923

`A123081(A198392(n))`
-/

namespace A216333.P15614590414784238923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A198392 n).toNat

end

end A216333.P15614590414784238923

/-! ## A216333.P3939466550288384865

`A123081(A213479(n))`
-/

namespace A216333.P3939466550288384865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A213479 n).toNat

end

end A216333.P3939466550288384865

/-! ## A216333.P6230019648656662797

`A363550(A047270(n+1))`
-/

namespace A216333.P6230019648656662797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363550 (A047270 (n + 1)).toNat

end

end A216333.P6230019648656662797

/-!
# A216334: Number of horizontal and antidiagonal neighbor colorings of the even squares of an n X 4 array with new integer colors introduced in row major order.

The programs for A216334, there is no canonical definition to state claims against.
-/

/-! ## A216334.P18238841280478891105

`A216338(A141214(n+1))`
-/

namespace A216334.P18238841280478891105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A141214 (n + 1)).toNat

end

end A216334.P18238841280478891105

/-! ## A216334.P2732168330988366491

`A216338(A155212(n)+5)`
-/

namespace A216334.P2732168330988366491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A155212 n + 5).toNat

end

end A216334.P2732168330988366491

/-! ## A216334.P4154972329319133258

`A216338(A056000(n)+7)`
-/

namespace A216334.P4154972329319133258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A056000 n + 7).toNat

end

end A216334.P4154972329319133258

/-! ## A216334.P886486185882036084

`A216338(eq[3, A193592(n)])`
-/

namespace A216334.P886486185882036084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216334.P886486185882036084

/-! ## A216334.P8217414154653439551

`A216338(A052905(n+1)+2)`
-/

namespace A216334.P8217414154653439551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A052905 (n + 1) + 2).toNat

end

end A216334.P8217414154653439551

/-!
# A216335: Number of horizontal and antidiagonal neighbor colorings of the even squares of an n X 5 array with new integer colors introduced in row major order.

The programs for A216335, there is no canonical definition to state claims against.
-/

/-! ## A216335.P16445343161782486044

`A216338(∑[n+5]+6)`
-/

namespace A216335.P16445343161782486044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A216335.P16445343161782486044

/-!
# A216336: Number of horizontal and antidiagonal neighbor colorings of the even squares of an nX6 array with new integer colors introduced in row major order.

The programs for A216336, there is no canonical definition to state claims against.
-/

/-! ## A216336.P11025909732840948275

`A216025(3*(n+1))`
-/

namespace A216336.P11025909732840948275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216025 (3 * (n + 1))

end

end A216336.P11025909732840948275

/-! ## A216336.P9059649506427981167

`A216338(eq[3, A219347(n)])`
-/

namespace A216336.P9059649506427981167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216336.P9059649506427981167

/-! ## A216336.P8735405656118175748

`A216338(eq[5, A193592(n)])`
-/

namespace A216336.P8735405656118175748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216336.P8735405656118175748

/-! ## A216336.P5931722191759735505

`A216338(A155212(n+2)+3)`
-/

namespace A216336.P5931722191759735505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A155212 (n + 2) + 3).toNat

end

end A216336.P5931722191759735505

/-! ## A216336.P14797528723477627056

`A216338(eq[6, A200370(n+1)])`
-/

namespace A216336.P14797528723477627056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216336.P14797528723477627056

/-!
# A216337: Number of horizontal and antidiagonal neighbor colorings of the even squares of an nX7 array with new integer colors introduced in row major order.

The programs for A216337, there is no canonical definition to state claims against.
-/

/-! ## A216337.P12489406723643962486

`A216338(eq[4, A219347(n)])`
-/

namespace A216337.P12489406723643962486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216337.P12489406723643962486

/-! ## A216337.P5151798664399145521

`A216338(A005408(n)+A046691(n+3)+10)`
-/

namespace A216337.P5151798664399145521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A005408 n + (A046691 (n + 3) + 10)).toNat

end

end A216337.P5151798664399145521

/-!
# A216339: Number of horizontal and antidiagonal neighbor colorings of the even squares of a 3Xn array with new integer colors introduced in row major order.

The programs for A216339, there is no canonical definition to state claims against.
-/

/-! ## A216339.P16977865295791662087

`A216338(∑[n+2]+4)`
-/

namespace A216339.P16977865295791662087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216339.P16977865295791662087

/-! ## A216339.P9771887232492385473

`A216338(A167614(n+1))+A185264(n)`
-/

namespace A216339.P9771887232492385473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A167614 (n + 1)).toNat + A185264 n

end

end A216339.P9771887232492385473

/-! ## A216339.P2409307063848545405

`A216338(A167614(n+1))+A185284(n)`
-/

namespace A216339.P2409307063848545405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A167614 (n + 1)).toNat + A185284 n

end

end A216339.P2409307063848545405

/-! ## A216339.P11918018920473264984

`A235044(n)+A216338(A167614(n+1))`
-/

namespace A216339.P11918018920473264984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A216338 (A167614 (n + 1)).toNat

end

end A216339.P11918018920473264984

/-! ## A216339.P1313753118892656790

`A216338(A167614(n+1))%A293144(n)`
-/

namespace A216339.P1313753118892656790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216338 (A167614 (n + 1)).toNat) (A293144 n)

end

end A216339.P1313753118892656790

/-!
# A216340: Number of horizontal and antidiagonal neighbor colorings of the even squares of a 4Xn array with new integer colors introduced in row major order.

The programs for A216340, there is no canonical definition to state claims against.
-/

/-! ## A216340.P627612736020068067

`A216338(A141214(n)+7)`
-/

namespace A216340.P627612736020068067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A141214 n + 7).toNat

end

end A216340.P627612736020068067

/-! ## A216340.P2383524861605050325

`A216338(A052905(n)+9)`
-/

namespace A216340.P2383524861605050325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A052905 n + 9).toNat

end

end A216340.P2383524861605050325

/-! ## A216340.P4860283301040784545

`A216338(A055999(n)+10)`
-/

namespace A216340.P4860283301040784545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A055999 n + 10).toNat

end

end A216340.P4860283301040784545

/-! ## A216340.P813884087614216643

`A216338(A167614(n+2)+1)`
-/

namespace A216340.P813884087614216643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A167614 (n + 2) + 1).toNat

end

end A216340.P813884087614216643

/-! ## A216340.P9410975102254075516

`A216338(eq[5, A131818(n+1)])`
-/

namespace A216340.P9410975102254075516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216340.P9410975102254075516

/-!
# A216341: Number of horizontal and antidiagonal neighbor colorings of the even squares of a 5Xn array with new integer colors introduced in row major order.

The programs for A216341, there is no canonical definition to state claims against.
-/

/-! ## A216341.P311404471734162781

`A216338(A155212(n)+13)`
-/

namespace A216341.P311404471734162781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A155212 n + 13).toNat

end

end A216341.P311404471734162781

/-! ## A216341.P533465210095308942

`A216338(A056000(n)+15)`
-/

namespace A216341.P533465210095308942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A056000 n + 15).toNat

end

end A216341.P533465210095308942

/-! ## A216341.P11092268192677189993

`A216338(eq[7, A066657(n)])`
-/

namespace A216341.P11092268192677189993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216341.P11092268192677189993

/-! ## A216341.P8148063143071147701

`A216338(eq[6, A131818(n+1)])`
-/

namespace A216341.P8148063143071147701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216341.P8148063143071147701

/-! ## A216341.P500956152198484768

`A216338(eq[4, A057728(n+1)]+8)`
-/

namespace A216341.P500956152198484768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8)

end

end A216341.P500956152198484768

/-!
# A216342: Number of horizontal and antidiagonal neighbor colorings of the even squares of a 6Xn array with new integer colors introduced in row major order.

The programs for A216342, there is no canonical definition to state claims against.
-/

/-! ## A216342.P15181883585332496861

`A216338(A000217(n+5)+6)`
-/

namespace A216342.P15181883585332496861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A000217 (n + 5) + 6).toNat

end

end A216342.P15181883585332496861

/-! ## A216342.P11158735182284883438

`A216338(A141214(n+2)+9)`
-/

namespace A216342.P11158735182284883438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A141214 (n + 2) + 9).toNat

end

end A216342.P11158735182284883438

/-! ## A216342.P11755880156811188506

`A216338(A046691(n+3)+10)`
-/

namespace A216342.P11755880156811188506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A046691 (n + 3) + 10).toNat

end

end A216342.P11755880156811188506

/-! ## A216342.P1867661648848385047

`A216338(eq[7, A131818(n+1)])`
-/

namespace A216342.P1867661648848385047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216342.P1867661648848385047

/-! ## A216342.P1440608831369639924

`A216338(eq[5, A144328(n+1)]+1)`
-/

namespace A216342.P1440608831369639924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216342.P1440608831369639924

/-!
# A216343: Number of horizontal and antidiagonal neighbor colorings of the even squares of a 7Xn array with new integer colors introduced in row major order.

The programs for A216343, there is no canonical definition to state claims against.
-/

/-! ## A216343.P682652936169491238

`A216338(A161680(n+7)+7)`
-/

namespace A216343.P682652936169491238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (A161680 (n + 7) + 7).toNat

end

end A216343.P682652936169491238

/-! ## A216343.P2851459538155613092

`A216338(eq[6, A002262(n)]+1)`
-/

namespace A216343.P2851459538155613092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216343.P2851459538155613092

/-! ## A216343.P311806368885305915

`A216338(eq[8, A131818(n+1)])`
-/

namespace A216343.P311806368885305915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216343.P311806368885305915

/-!
# A216344: Triangle T(n,k), read by rows, given by (0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, 0, -1, 1, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938 .

The programs for A216344, there is no canonical definition to state claims against.
-/

/-! ## A216344.P88352978889045732

`A301461(3*A106566(n))`
-/

namespace A216344.P88352978889045732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301461 (3 * A106566 n).toNat

end

end A216344.P88352978889045732

/-! ## A216344.P3099571506045623874

`∑{e}[A153176(A132062(n)), #]`
-/

namespace A216344.P3099571506045623874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153176 (A132062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A216344.P3099571506045623874

/-! ## A216344.P4335505059927804416

`A062110(n)-A100950(A288972(n))`
-/

namespace A216344.P4335505059927804416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 n - A100950 (A288972 n).toNat

end

end A216344.P4335505059927804416

/-! ## A216344.P4960259592985765143

`A360737(A266599(n+2))`
-/

namespace A216344.P4960259592985765143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360737 (A266599 (n + 2)).toNat

end

end A216344.P4960259592985765143

/-! ## A216344.P5660175432085397216

`A122896(n)-A284977(A155971(n))`
-/

namespace A216344.P5660175432085397216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122896 n - A284977 (A155971 n).toNat

end

end A216344.P5660175432085397216

/-!
# A216345: Position of the beginning of the n-th run in A000002.

The programs for A216345, the canonical program `A216345.P281146645686861327` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216345 has offset 1).

The definition of A216345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216345.P16259115910927091671

`comp[A078649(n+1)]+1`
-/

namespace A216345.P16259115910927091671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A216345.P16259115910927091671

namespace A216345

/-- `comp[A078649(n+1)]+1` -/
def P16259115910927091671.Spec : Prop :=
  ∀ n, (P16259115910927091671.a n : ℤ) = A216345 (n + 1)

end A216345

/-! ## A216345.P12000671685544785097

`A000002(n)+a(n-1)` with `a(0)=1`
-/

namespace A216345.P12000671685544785097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000002 n + a (n - 1)

end

end A216345.P12000671685544785097

namespace A216345

/-- `A000002(n)+a(n-1)` -/
def P12000671685544785097.Spec : Prop :=
  ∀ n, P12000671685544785097.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P10176201698019276570

`∑[char[A013948(n+1)]+1]`
-/

namespace A216345.P10176201698019276570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216345.P10176201698019276570

namespace A216345

/-- `∑[char[A013948(n+1)]+1]` -/
def P10176201698019276570.Spec : Prop :=
  ∀ n, (P10176201698019276570.a n : ℤ) = A216345 (n + 1)

end A216345

/-! ## A216345.P8973415906611691103

`∑[A000002(round(sqrt(n²+1)))]`
-/

namespace A216345.P8973415906611691103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216345.P8973415906611691103

namespace A216345

/-- `∑[A000002(round(sqrt(n²+1)))]` -/
def P8973415906611691103.Spec : Prop :=
  ∀ n, P8973415906611691103.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P17163106202322879090

`comp[comp[A013947(n+1)]+n]`
-/

namespace A216345.P17163106202322879090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A216345.P17163106202322879090

namespace A216345

/-- `comp[comp[A013947(n+1)]+n]` -/
def P17163106202322879090.Spec : Prop :=
  ∀ n, (P17163106202322879090.a n : ℤ) = A216345 (n + 1)

end A216345

/-! ## A216345.P281146645686861327

`a(n-1)+gcd(2, A156253(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216345

/-- `a(n-1)+gcd(2, A156253(n))` -/
def P281146645686861327.Spec : Prop :=
  ∀ n, (P281146645686861327.a n : ℤ) = A216345 (n + 1)

theorem P281146645686861327.correct : P281146645686861327.Spec := by
  intro n
  simp only [A216345, Nat.add_sub_cancel]

end A216345

/-! ## A216345.P15605126349409107136

`A078880(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A216345.P15605126349409107136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A078880 (n - 1) + a (n - 1)

end

end A216345.P15605126349409107136

namespace A216345

/-- `A078880(n-1)+a(n-1)` -/
def P15605126349409107136.Spec : Prop :=
  ∀ n, P15605126349409107136.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P5843905691760228876

`A074286(A028310(n))+1+n`
-/

namespace A216345.P5843905691760228876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A028310 n).toNat + 1 + (n : ℤ)

end

end A216345.P5843905691760228876

namespace A216345

/-- `A074286(A028310(n))+1+n` -/
def P5843905691760228876.Spec : Prop :=
  ∀ n, P5843905691760228876.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P10392583232085070634

`A054353(n+1)-log2(A000002(n+1))`
-/

namespace A216345.P10392583232085070634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054353 (n + 1) : ℝ) - Real.logb 2 (A000002 (n + 1) : ℝ)

end

end A216345.P10392583232085070634

namespace A216345

/-- `A054353(n+1)-log2(A000002(n+1))` -/
def P10392583232085070634.Spec : Prop :=
  ∀ n, P10392583232085070634.a n = (A216345 (n + 1) : ℝ)

end A216345

/-! ## A216345.P12226920869402368980

`A054353(n+1)+A078650(n+1)-1`
-/

namespace A216345.P12226920869402368980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) + (A078650 (n + 1) - 1)

end

end A216345.P12226920869402368980

namespace A216345

/-- `A054353(n+1)+A078650(n+1)-1` -/
def P12226920869402368980.Spec : Prop :=
  ∀ n, P12226920869402368980.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P15573726123722223405

`A049705(n+1)+A054353(n+1)-2`
-/

namespace A216345.P15573726123722223405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1) + (A054353 (n + 1) - 2)

end

end A216345.P15573726123722223405

namespace A216345

/-- `A049705(n+1)+A054353(n+1)-2` -/
def P15573726123722223405.Spec : Prop :=
  ∀ n, P15573726123722223405.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P18116915585304964136

`A074286(n+1)+A078650(n+1)+n`
-/

namespace A216345.P18116915585304964136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + (A078650 (n + 1) + (n : ℤ))

end

end A216345.P18116915585304964136

namespace A216345

/-- `A074286(n+1)+A078650(n+1)+n` -/
def P18116915585304964136.Spec : Prop :=
  ∀ n, P18116915585304964136.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P6454316665959917883

`∑[A000002(n+1)]+A049705(n+1)-2`
-/

namespace A216345.P6454316665959917883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A049705 (n + 1) - 2)

end

end A216345.P6454316665959917883

namespace A216345

/-- `∑[A000002(n+1)]+A049705(n+1)-2` -/
def P6454316665959917883.Spec : Prop :=
  ∀ n, P6454316665959917883.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P18398325669508744464

`A054353(n+1)+A054354(n+1)-A157686(n+1)`
-/

namespace A216345.P18398325669508744464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) + (A054354 (n + 1) - A157686 (n + 1))

end

end A216345.P18398325669508744464

namespace A216345

/-- `A054353(n+1)+A054354(n+1)-A157686(n+1)` -/
def P18398325669508744464.Spec : Prop :=
  ∀ n, P18398325669508744464.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P10971160130769517219

`A054354(n+1)+∑[A000002(n+1)-A054354(n+1)]`
-/

namespace A216345.P10971160130769517219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216345.P10971160130769517219

namespace A216345

/-- `A054354(n+1)+∑[A000002(n+1)-A054354(n+1)]` -/
def P10971160130769517219.Spec : Prop :=
  ∀ n, P10971160130769517219.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P8685845109523751462

`A054353(n+2)-(A157686(n+1)+A000002(n+1))`
-/

namespace A216345.P8685845109523751462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 2) - (A157686 (n + 1) + A000002 (n + 1))

end

end A216345.P8685845109523751462

namespace A216345

/-- `A054353(n+2)-(A157686(n+1)+A000002(n+1))` -/
def P8685845109523751462.Spec : Prop :=
  ∀ n, P8685845109523751462.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P3586279411341712023

`∑[A123594(n+2)]+n`
-/

namespace A216345.P3586279411341712023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A216345.P3586279411341712023

namespace A216345

/-- `∑[A123594(n+2)]+n` -/
def P3586279411341712023.Spec : Prop :=
  ∀ n, P3586279411341712023.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P6318439212204414029

`A054353(n+1)-A123594(n+3)`
-/

namespace A216345.P6318439212204414029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - A123594 (n + 3)

end

end A216345.P6318439212204414029

namespace A216345

/-- `A054353(n+1)-A123594(n+3)` -/
def P6318439212204414029.Spec : Prop :=
  ∀ n, P6318439212204414029.a n = A216345 (n + 1)

end A216345

/-! ## A216345.P11770460606040934751

`eq[1, Δ[A123594(n+1)]²]`
-/

namespace A216345.P11770460606040934751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216345.P11770460606040934751

namespace A216345

/-- `eq[1, Δ[A123594(n+1)]²]` -/
def P11770460606040934751.Spec : Prop :=
  ∀ n, (P11770460606040934751.a n : ℤ) = A216345 (n + 1)

end A216345

/-!
# A216348: Numbers that appear in either both A156242(n) + 1 and A156243(n) or both A156242(n) and A156243(n) + 1.

The programs for A216348, there is no canonical definition to state claims against.
-/

/-! ## A216348.P14666337279161139150

`eq[2, A078929(n+1)]+2`
-/

namespace A216348.P14666337279161139150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A216348.P14666337279161139150

/-! ## A216348.P10066971143691248709

`2*A022297(n+2)-n`
-/

namespace A216348.P10066971143691248709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022297 (n + 2) - (n : ℤ)

end

end A216348.P10066971143691248709

/-! ## A216348.P1211081670061022316

`∑[2*A327239(n+1)]-n`
-/

namespace A216348.P1211081670061022316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A216348.P1211081670061022316

/-! ## A216348.P7995499341937614480

`2*A013947(n+2)-(n+2)`
-/

namespace A216348.P7995499341937614480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013947 (n + 2) - (n + 2 : ℤ)

end

end A216348.P7995499341937614480

/-! ## A216348.P14356972687561292167

`2*∑[A248806(n+1)]+n+2`
-/

namespace A216348.P14356972687561292167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 2 : ℤ)

end

end A216348.P14356972687561292167

/-!
# A216349: Triangle T(n,k) in which n-th row lists the values of the n-th derivative at x=1 of all functions that are representable as x^x^...^x with n x's and parentheses inserted in all possible ways; n>=1, 1<=k<=A000081(n).

The programs for A216349, there is no canonical definition to state claims against.
-/

/-! ## A216349.P10461998230702151032

`A384377(a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A216349.P10461998230702151032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A384377 (a (n - 1)).toNat - 1

end

end A216349.P10461998230702151032

/-!
# A216351: n-th derivative of x^(x^(n-1)) at x=1.

The programs for A216351, there is no canonical definition to state claims against.
-/

/-! ## A216351.P7841469799255881909

`A216349(∑[A000081(abs(1-n))])`
-/

namespace A216351.P7841469799255881909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216349 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216351.P7841469799255881909

/-! ## A216351.P555402564816602089

`A216350(A331783(n+1))+A000007(A033917(n))`
-/

namespace A216351.P555402564816602089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216350 (A331783 (n + 1)).toNat + A000007 (A033917 n).toNat

end

end A216351.P555402564816602089

/-! ## A216351.P13241255465270600178

`A216350(A331783(n+1))+A000007(A136461(n))`
-/

namespace A216351.P13241255465270600178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216350 (A331783 (n + 1)).toNat + A000007 (A136461 n).toNat

end

end A216351.P13241255465270600178

/-!
# A216356: a(n) = A000172(n^2), where Franel number A000172(n) = Sum_{k=0..n} C(n,k)^3.

The programs for A216356, there is no canonical definition to state claims against.
-/

/-! ## A216356.P1970296636360977447

`A000172(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216356.P1970296636360977447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 (n ^ 2)

end

end A216356.P1970296636360977447

/-! ## A216356.P17092747307181438489

`record[A000172(n)*A010052(n)]`
-/

namespace A216356.P17092747307181438489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n * A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216356.P17092747307181438489

/-! ## A216356.P11526320627415630517

`record[gcd(A000172(n), A316649(n))]`
-/

namespace A216356.P11526320627415630517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000172 n) (A316649 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216356.P11526320627415630517

/-! ## A216356.P16734448495488204922

`A185036(n)+A000172(A000290(n))`
-/

namespace A216356.P16734448495488204922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + A000172 (A000290 n).toNat

end

end A216356.P16734448495488204922

/-! ## A216356.P3143949763735232219

`A000172(A000290(n))*A046552(n+1)`
-/

namespace A216356.P3143949763735232219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 (A000290 n).toNat * A046552 (n + 1)

end

end A216356.P3143949763735232219

/-!
# A216357: Expansion of 1/( (1-16*x)*(1+4*x)^2 )^(1/4).

The programs for A216357, the canonical program `A216357.P11040272788375143837` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216357 has offset 0).

The definition of A216357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216357.P11040272788375143837

`((64*n-80)*a(n-2)+(12*n-10)*a(n-1))/n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216357

/-- `((64*n-80)*a(n-2)+(12*n-10)*a(n-1))/n` -/
def P11040272788375143837.Spec : Prop :=
  ∀ n, P11040272788375143837.a n = (A216357 n : ℚ)

end A216357

/-!
# A216359: G.f. satisfies: A(x) = (1 + x*A(x)^2) * (1 + x/A(x)).

The programs for A216359, there is no canonical definition to state claims against.
-/

/-! ## A216359.P10908884423072179655

`A106432(A149223(n+1))`
-/

namespace A216359.P10908884423072179655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149223 (n + 1)).toNat

end

end A216359.P10908884423072179655

/-!
# A216360: a(n) = (A059312(n) - 1)/118.

The programs for A216360, there is no canonical definition to state claims against.
-/

/-! ## A216360.P17507714574073301665

`(A059312(n+1)-1)/118`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216360.P17507714574073301665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059312 (n + 1) - 1 : ℚ) / 118

end

end A216360.P17507714574073301665

/-! ## A216360.P8611575119777082158

`A216361(A063775(A256248(n+1))+n)`
-/

namespace A216360.P8611575119777082158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216361 (A063775 (A256248 (n + 1)).toNat + (n : ℤ)).toNat

end

end A216360.P8611575119777082158

/-! ## A216360.P3873150099777059863

`and(A152388(n+1), A216361(n+1))`
-/

namespace A216360.P3873150099777059863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A216361 (n + 1))

end

end A216360.P3873150099777059863

/-! ## A216360.P5689899254428966566

`A216361(n+1)%A216366(2*(n+2))`
-/

namespace A216360.P5689899254428966566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216361 (n + 1)) (A216366 (2 * (n + 2)))

end

end A216360.P5689899254428966566

/-! ## A216360.P12300063139252324592

`eq[1, A001222(2*59*n+1)]%Δ[A165948(n)]`
-/

namespace A216360.P12300063139252324592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (59 * n) + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (f3 (n + 1) - f3 n)

end

end A216360.P12300063139252324592

/-!
# A216361: a(n) = (A216315(n) - 1)/118.

The programs for A216361, the canonical program `A216361.P16207929651444496318` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216361 has offset 1).

The definition of A216361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216361.P16207929651444496318

`(A216315(n+1)-1)/118`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216361

/-- `(A216315(n+1)-1)/118` -/
def P16207929651444496318.Spec : Prop :=
  ∀ n, P16207929651444496318.a n = (A216361 (n + 1) : ℚ)

end A216361

/-! ## A216361.P8032539122406560096

`eq[1, A237053(59*n)]`
-/

namespace A216361.P8032539122406560096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (59 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P8032539122406560096

namespace A216361

/-- `eq[1, A237053(59*n)]` -/
def P8032539122406560096.Spec : Prop :=
  ∀ n, (P8032539122406560096.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P16369369728039506460

`eq[2, A305973(A249674(n)+A248572(n))]`
-/

namespace A216361.P16369369728039506460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A249674 n + A248572 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P16369369728039506460

namespace A216361

/-- `eq[2, A305973(A249674(n)+A248572(n))]` -/
def P16369369728039506460.Spec : Prop :=
  ∀ n, (P16369369728039506460.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P9147865370540342571

`∪[A216360(n+1), A216380(n+1)]%A216363(n+1)`
-/

namespace A216361.P9147865370540342571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216380 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A216363 (n + 1))

end

end A216361.P9147865370540342571

namespace A216361

/-- `∪[A216360(n+1), A216380(n+1)]%A216363(n+1)` -/
def P9147865370540342571.Spec : Prop :=
  ∀ n, P9147865370540342571.a n = A216361 (n + 1)

end A216361

/-! ## A216361.P3720811582650545319

`eq[1, A062173(2*59*n+1)]`
-/

namespace A216361.P3720811582650545319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (2 * (59 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P3720811582650545319

namespace A216361

/-- `eq[1, A062173(2*59*n+1)]` -/
def P3720811582650545319.Spec : Prop :=
  ∀ n, (P3720811582650545319.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P16583972512387742416

`eq[1, A101264(59*n)]`
-/

namespace A216361.P16583972512387742416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (59 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P16583972512387742416

namespace A216361

/-- `eq[1, A101264(59*n)]` -/
def P16583972512387742416.Spec : Prop :=
  ∀ n, (P16583972512387742416.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P11029955210036028128

`eq[1, A001222(2*59*n+1)]`
-/

namespace A216361.P11029955210036028128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (59 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P11029955210036028128

namespace A216361

/-- `eq[1, A001222(2*59*n+1)]` -/
def P11029955210036028128.Spec : Prop :=
  ∀ n, (P11029955210036028128.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P12927242695522798709

`eq[1, A010051(2*59*n+1)]`
-/

namespace A216361.P12927242695522798709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (59 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P12927242695522798709

namespace A216361

/-- `eq[1, A010051(2*59*n+1)]` -/
def P12927242695522798709.Spec : Prop :=
  ∀ n, (P12927242695522798709.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P16159580356983301968

`eq[2, A000005(2*59*n+1)]`
-/

namespace A216361.P16159580356983301968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (59 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P16159580356983301968

namespace A216361

/-- `eq[2, A000005(2*59*n+1)]` -/
def P16159580356983301968.Spec : Prop :=
  ∀ n, (P16159580356983301968.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P3335163981655583541

`eq[2*59*n, A000010(2*59*n+1)]`
-/

namespace A216361.P3335163981655583541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (59 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (59 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P3335163981655583541

namespace A216361

/-- `eq[2*59*n, A000010(2*59*n+1)]` -/
def P3335163981655583541.Spec : Prop :=
  ∀ n, (P3335163981655583541.a n : ℤ) = A216361 (n + 1)

end A216361

/-! ## A216361.P2666377221496166390

`eq[2, A319696(2*59*n+1)]`
-/

namespace A216361.P2666377221496166390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (2 * (59 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216361.P2666377221496166390

namespace A216361

/-- `eq[2, A319696(2*59*n+1)]` -/
def P2666377221496166390.Spec : Prop :=
  ∀ n, (P2666377221496166390.a n : ℤ) = A216361 (n + 1)

end A216361

/-!
# A216362: Primes of the form 2^(k-1)*k^2-(-1)^k.

The programs for A216362, there is no canonical definition to state claims against.
-/

/-! ## A216362.P13323895338047097601

`p?[A014477(n)+(-1)^n]`
-/

namespace A216362.P13323895338047097601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216362.P13323895338047097601

/-! ## A216362.P14537545717781863996

`p?[abs(n²*A123344(n)+1)]`
-/

namespace A216362.P14537545717781863996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A123344 n + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216362.P14537545717781863996

/-! ## A216362.P12130214523212396292

`p?[abs(1-n²*A117575(2*n))]`
-/

namespace A216362.P12130214523212396292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ) * A117575 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216362.P12130214523212396292

/-! ## A216362.P786594715445894236

`p?[n²*A011782(n)-(-1)^n]`
-/

namespace A216362.P786594715445894236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A011782 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216362.P786594715445894236

/-! ## A216362.P10814923324156566494

`p?[A014503(n)+A014477(n)]`
-/

namespace A216362.P10814923324156566494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014503 n + A014477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216362.P10814923324156566494

/-!
# A216364: Fermat pseudoprimes to base 2 divisible by 15.

The programs for A216364, there is no canonical definition to state claims against.
-/

/-! ## A216364.P3714011837632064028

`filter[A216023(n+1), A182581(#)]`
-/

namespace A216364.P3714011837632064028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A216364.P3714011837632064028

/-!
# A216365: Numbers n such that tau(n)*sigma(n) sets a new record.

The programs for A216365, there is no canonical definition to state claims against.
-/

/-! ## A216365.P8353341513961615677

`lt[A141218(n+2)-3, A035116(n+1)]+1`
-/

namespace A216365.P8353341513961615677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141218 (n + 2) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A216365.P8353341513961615677

/-! ## A216365.P12038544257351514154

`record[A070172(A281543(A027691(n)))]`
-/

namespace A216365.P12038544257351514154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A281543 (A027691 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216365.P12038544257351514154

/-! ## A216365.P1287567613898771422

`record[A329004(n+1)-A165071(A331844(n))]`
-/

namespace A216365.P1287567613898771422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (n + 1) - A165071 (A331844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216365.P1287567613898771422

/-!
# A216366: Lesser of pairs of odd numbers (n, n+2) such that the product of invertible quadratic residues == (n+1)(-1)^((n+1)/2) (modulo n(n+2)).

The programs for A216366, there is no canonical definition to state claims against.
-/

/-! ## A216366.P1084808129896624707

`∑[A046523(∑[A259118(n+1)])]`
-/

namespace A216366.P1084808129896624707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259118 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216366.P1084808129896624707

/-! ## A216366.P8350259264033386663

`∑[A139770(∑[A259118(n+1)])]`
-/

namespace A216366.P8350259264033386663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259118 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216366.P8350259264033386663

/-! ## A216366.P1712046810666113579

`record[A060332(n+2)%A060369(n+2)]`
-/

namespace A216366.P1712046810666113579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060332 (n + 2)) (A060369 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216366.P1712046810666113579

/-! ## A216366.P6643973711528242776

`A061345(lt[A352108(n+1), A196394(3*n+1)])`
-/

namespace A216366.P6643973711528242776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196394 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216366.P6643973711528242776

/-!
# A216367: G.f.: Sum_{n>=0} x^n / Product_{k=0..n} (1 - k*x)^2.

The programs for A216367, there is no canonical definition to state claims against.
-/

/-! ## A216367.P5249565204059242751

`A005185(A326294(n)+A296964(n))`
-/

namespace A216367.P5249565204059242751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A326294 n + A296964 n).toNat

end

end A216367.P5249565204059242751

/-! ## A216367.P3684317119268670863

`A004525(A245373(n))-A349053(n)`
-/

namespace A216367.P3684317119268670863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A245373 n).toNat - A349053 n

end

end A216367.P3684317119268670863

/-! ## A216367.P3155751702579759018

`A065033(xor(A241342(n), A242154(n+2)))`
-/

namespace A216367.P3155751702579759018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.xor (A241342 n) (A242154 (n + 2))).toNat

end

end A216367.P3155751702579759018

/-!
# A216368: Number T(n,k) of distinct values taken by k-th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A216368, there is no canonical definition to state claims against.
-/

/-! ## A216368.P9019592957084348117

`A048766(A177029(A071946(n)²))`
-/

namespace A216368.P9019592957084348117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A177029 (A071946 n ^ 2).toNat).toNat

end

end A216368.P9019592957084348117

/-! ## A216368.P9670739565381857936

`A319951(A071945(n)+A028657(n))`
-/

namespace A216368.P9670739565381857936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A071945 n + A028657 n).toNat

end

end A216368.P9670739565381857936

/-! ## A216368.P13614523982834508457

`A319951(A086617(n)+A071945(n))`
-/

namespace A216368.P13614523982834508457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A086617 n + A071945 n).toNat

end

end A216368.P13614523982834508457

/-! ## A216368.P16099190687562615891

`A319951(A088699(n)+A071945(n))`
-/

namespace A216368.P16099190687562615891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A088699 n + A071945 n).toNat

end

end A216368.P16099190687562615891

/-! ## A216368.P2474384289522161914

`ceil((A046693(A046651(n))-1)/2)`
-/

namespace A216368.P2474384289522161914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046693 (A046651 n).toNat - 1 : ℚ) / 2⌉

end

end A216368.P2474384289522161914

/-!
# A216369: a(n) = !(n-1) mod n.

The programs for A216369, the canonical program `A216369.P502427347791430248` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216369 has offset 1).

The definition of A216369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216369.P502427347791430248

`(A049782(n+1)*A114112(n+1))%(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A216369

/-- `(A049782(n+1)*A114112(n+1))%(n+1)` -/
def P502427347791430248.Spec : Prop :=
  ∀ n, P502427347791430248.a n = A216369 (n + 1)

theorem P502427347791430248.correct : P502427347791430248.Spec := by
  intro n
  simp only [A216369, Nat.add_sub_cancel]

end A216369

/-! ## A216369.P15822039954257561682

`A000166(n)%(n+1)`
-/

namespace A216369.P15822039954257561682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000166 n) (n + 1 : ℤ)

end

end A216369.P15822039954257561682

namespace A216369

/-- `A000166(n)%(n+1)` -/
def P15822039954257561682.Spec : Prop :=
  ∀ n, P15822039954257561682.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P75182843368785037

`abs(A182386(n)%(n+1))`
-/

namespace A216369.P75182843368785037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A182386 n) (n + 1 : ℤ)|

end

end A216369.P75182843368785037

namespace A216369

/-- `abs(A182386(n)%(n+1))` -/
def P75182843368785037.Spec : Prop :=
  ∀ n, P75182843368785037.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P7109093267872009562

`A008290(∑[n])%(n+1)`
-/

namespace A216369.P7109093267872009562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008290 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A216369.P7109093267872009562

namespace A216369

/-- `A008290(∑[n])%(n+1)` -/
def P7109093267872009562.Spec : Prop :=
  ∀ n, P7109093267872009562.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P3536960200728720260

`A068106(∑[n])%(n+1)`
-/

namespace A216369.P3536960200728720260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068106 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A216369.P3536960200728720260

namespace A216369

/-- `A068106(∑[n])%(n+1)` -/
def P3536960200728720260.Spec : Prop :=
  ∀ n, P3536960200728720260.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P2242541996834672063

`A060475(A000096(n))%(n+1)`
-/

namespace A216369.P2242541996834672063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060475 (A000096 n).toNat) (n + 1 : ℤ)

end

end A216369.P2242541996834672063

namespace A216369

/-- `A060475(A000096(n))%(n+1)` -/
def P2242541996834672063.Spec : Prop :=
  ∀ n, P2242541996834672063.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P5928428361769621660

`(A216779(n)+A216778(n))%(n+1)`
-/

namespace A216369.P5928428361769621660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216779 n + A216778 n) (n + 1 : ℤ)

end

end A216369.P5928428361769621660

namespace A216369

/-- `(A216779(n)+A216778(n))%(n+1)` -/
def P5928428361769621660.Spec : Prop :=
  ∀ n, P5928428361769621660.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P5868582042475892121

`(A002741(n+1)+A002741(n))%(n+1)`
-/

namespace A216369.P5868582042475892121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002741 (n + 1) + A002741 n) (n + 1 : ℤ)

end

end A216369.P5868582042475892121

namespace A216369

/-- `(A002741(n+1)+A002741(n))%(n+1)` -/
def P5868582042475892121.Spec : Prop :=
  ∀ n, P5868582042475892121.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P1029136083777483302

`A055790(n)%(n+1)`
-/

namespace A216369.P1029136083777483302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055790 n) (n + 1 : ℤ)

end

end A216369.P1029136083777483302

namespace A216369

/-- `A055790(n)%(n+1)` -/
def P1029136083777483302.Spec : Prop :=
  ∀ n, P1029136083777483302.a n = A216369 (n + 1)

end A216369

/-! ## A216369.P16051392056006979395

`(2*A000153(n))%(n+1)`
-/

namespace A216369.P16051392056006979395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000153 n) (n + 1 : ℤ)

end

end A216369.P16051392056006979395

namespace A216369

/-- `(2*A000153(n))%(n+1)` -/
def P16051392056006979395.Spec : Prop :=
  ∀ n, P16051392056006979395.a n = A216369 (n + 1)

end A216369

/-!
# A216371: Odd primes with one coach: primes p such that A135303((p-1)/2) = 1.

The programs for A216371, there is no canonical definition to state claims against.
-/

/-! ## A216371.P499874012664851474

`2*A054639(n+1)+1`
-/

namespace A216371.P499874012664851474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054639 (n + 1) + 1

end

end A216371.P499874012664851474

/-! ## A216371.P13821279567744961536

`p?[A179538(n+1)]`
-/

namespace A216371.P13821279567744961536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216371.P13821279567744961536

/-! ## A216371.P2451136737200515884

`∩[A015919(n+1), A179538(n+1)]`
-/

namespace A216371.P2451136737200515884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P2451136737200515884

/-! ## A216371.P15286334301254932174

`p?[A007885(n+3)]`
-/

namespace A216371.P15286334301254932174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216371.P15286334301254932174

/-! ## A216371.P11615083502055990858

`A007885(A009005(n+1))`
-/

namespace A216371.P11615083502055990858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (A009005 (n + 1)).toNat

end

end A216371.P11615083502055990858

/-! ## A216371.P4111980687556074394

`∩[A179538(n+1), A007885(n+1)]`
-/

namespace A216371.P4111980687556074394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P4111980687556074394

/-! ## A216371.P11448091302630945169

`∩[A007885(n+1), A045395(n+1)]`
-/

namespace A216371.P11448091302630945169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P11448091302630945169

/-! ## A216371.P11319949833742005982

`∩[A045395(n+1), A179538(n+1)]`
-/

namespace A216371.P11319949833742005982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P11319949833742005982

/-! ## A216371.P7875517978027308526

`filter[A007885(n+2), A266112(#)]`
-/

namespace A216371.P7875517978027308526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266112 (f1 j).toNat = 1) n)

end

end A216371.P7875517978027308526

/-! ## A216371.P17051822162938967070

`∩[A007885(n+1), A065091(n+1)]`
-/

namespace A216371.P17051822162938967070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P17051822162938967070

/-! ## A216371.P16671068710959763371

`∩[A000040(n+1), A179538(n+1)]`
-/

namespace A216371.P16671068710959763371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P16671068710959763371

/-! ## A216371.P713086973520751010

`∩[A006005(n+1), A179538(n+1)]`
-/

namespace A216371.P713086973520751010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P713086973520751010

/-! ## A216371.P721879547715686233

`∩[A067126(n+1), A179538(n+1)]`
-/

namespace A216371.P721879547715686233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P721879547715686233

/-! ## A216371.P1076942661575430557

`∩[A062972(n+1), A179538(n+1)]`
-/

namespace A216371.P1076942661575430557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P1076942661575430557

/-! ## A216371.P5228118087293778165

`∩[A140826(n+1), A179538(n+1)]`
-/

namespace A216371.P5228118087293778165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P5228118087293778165

/-! ## A216371.P11877826306398786923

`∩[A007885(n+1), A064728(n+1)]`
-/

namespace A216371.P11877826306398786923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P11877826306398786923

/-! ## A216371.P2400532732443937812

`∩[A007885(n+1), A075763(n+1)]`
-/

namespace A216371.P2400532732443937812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P2400532732443937812

/-! ## A216371.P15540580081589701131

`∩[A055977(n+1), A179538(n+1)]`
-/

namespace A216371.P15540580081589701131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P15540580081589701131

/-! ## A216371.P5769535301589382964

`∩[A007885(n+1), A050150(n+1)]`
-/

namespace A216371.P5769535301589382964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P5769535301589382964

/-! ## A216371.P5663436480163690624

`∩[A179538(n+1), A260442(n)]`
-/

namespace A216371.P5663436480163690624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216371.P5663436480163690624

/-!
# A216372: Sigma(n) values in A115920.

The programs for A216372, there is no canonical definition to state claims against.
-/

/-! ## A216372.P17934825605973272003

`∑{d}[A115920(n+1), #]`
-/

namespace A216372.P17934825605973272003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A216372.P17934825605973272003

/-! ## A216372.P16827025305298103778

`A000203(A115920(n+1))`
-/

namespace A216372.P16827025305298103778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A115920 (n + 1)).toNat

end

end A216372.P16827025305298103778

/-! ## A216372.P8798704799840386933

`A000203(∩[A247315(n+1), A249899(n+1)])`
-/

namespace A216372.P8798704799840386933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249899 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A216372.P8798704799840386933

/-! ## A216372.P7797485413139085388

`A074400(∩[A247315(n+1), A249899(n+1)])/2`
-/

namespace A216372.P7797485413139085388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249899 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A216372.P7797485413139085388

/-!
# A216373: G.f.: Sum_{n>=0} x^n / Product_{k=0..n} (1 - (2*k-1)*x)^2.

The programs for A216373, there is no canonical definition to state claims against.
-/

/-! ## A216373.P12948825835061495008

`a(n-2)+n*A193406(a(n-1))+2-n` with `a(0)=1, a(1)=1`
-/

namespace A216373.P12948825835061495008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ((n : ℤ) * A193406 (a (n - 1)).toNat + 2 - (n : ℤ))

end

end A216373.P12948825835061495008

/-! ## A216373.P8824830254062292546

`∑[A126257(A348802(n))]`
-/

namespace A216373.P8824830254062292546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A348802 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216373.P8824830254062292546

/-!
# A216374: Number of ways to express the square of the n-th prime as the sum of four nonzero squares.

The programs for A216374, there is no canonical definition to state claims against.
-/

/-! ## A216374.P17384203424866994422

`A025428(A001248(n+1))`
-/

namespace A216374.P17384203424866994422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A001248 (n + 1)).toNat

end

end A216374.P17384203424866994422

/-! ## A216374.P3453082577125247731

`floor(A008742(A000040(n+1)+2)/2)`
-/

namespace A216374.P3453082577125247731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008742 (A000040 (n + 1) + 2).toNat : ℚ) / 2⌋

end

end A216374.P3453082577125247731

/-! ## A216374.P1645431070488621761

`A008615(A117142(Δ[A007504(n)]))`
-/

namespace A216374.P1645431070488621761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A117142 (f1 (n + 1) - f1 n).toNat).toNat

end

end A216374.P1645431070488621761

/-! ## A216374.P9233479769199864434

`A008615(A134519(record[A051698(n)]))`
-/

namespace A216374.P9233479769199864434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A134519 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A216374.P9233479769199864434

/-! ## A216374.P8288265704884402392

`A008615(A117142(p?[A001057(n)]))`
-/

namespace A216374.P8288265704884402392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A117142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A216374.P8288265704884402392

/-! ## A216374.P2226609119793093744

`A008615(A117142(p?[A006370(n)]))`
-/

namespace A216374.P2226609119793093744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A117142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A216374.P2226609119793093744

/-! ## A216374.P3286830694141034563

`A008615(A117142(p?[A014681(n)]))`
-/

namespace A216374.P3286830694141034563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A117142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A216374.P3286830694141034563

/-! ## A216374.P112266171321172105

`A008615(A134519(p?[A001057(n)]))`
-/

namespace A216374.P112266171321172105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A134519 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A216374.P112266171321172105

/-! ## A216374.P13620423477510543286

`A008615(A117142(p?[A057979(n)]))`
-/

namespace A216374.P13620423477510543286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A117142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A216374.P13620423477510543286

/-! ## A216374.P15886262875372407702

`A008615(A117142(p?[A064429(n)]))`
-/

namespace A216374.P15886262875372407702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A117142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A216374.P15886262875372407702

/-!
# A216380: a(n) = (A216363(n) - 1)/118.

The programs for A216380, there is no canonical definition to state claims against.
-/

/-! ## A216380.P7901772038933246437

`(A216363(n+1)-1)/118`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216380.P7901772038933246437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216363 (n + 1) - 1 : ℚ) / 118

end

end A216380.P7901772038933246437

/-!
# A216381: Phi(n) values in A115921.

The programs for A216381, there is no canonical definition to state claims against.
-/

/-! ## A216381.P16815305747446947971

`A000010(A115921(n+1))`
-/

namespace A216381.P16815305747446947971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A115921 (n + 1)).toNat

end

end A216381.P16815305747446947971

/-! ## A216381.P5653843206378713442

`∑{d}[A115921(n+1), A007431(#)]`
-/

namespace A216381.P5653843206378713442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A216381.P5653843206378713442

/-! ## A216381.P156961966347697531

`A039649(A115921(n+1))-A007318(∑[n])`
-/

namespace A216381.P156961966347697531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A115921 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216381.P156961966347697531

/-! ## A216381.P1262398152213633241

`A039649(A115921(n+1))-A007318(C(n, 2))²`
-/

namespace A216381.P1262398152213633241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A115921 (n + 1)).toNat - A007318 (Nat.choose n 2) ^ 2

end

end A216381.P1262398152213633241

/-! ## A216381.P10359463992593581440

`A109606(A115921(n+1))+A057427(3*n+1)`
-/

namespace A216381.P10359463992593581440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A115921 (n + 1)).toNat + A057427 (3 * n + 1)

end

end A216381.P10359463992593581440

/-!
# A216383: Sigma(n)-n values in A085844.

The programs for A216383, there is no canonical definition to state claims against.
-/

/-! ## A216383.P15682712488450520438

`∑{d}[A085844(n+1), #]-A085844(n+1)`
-/

namespace A216383.P15682712488450520438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A085844 (n + 1)

end

end A216383.P15682712488450520438

/-! ## A216383.P636813745514498861

`A000203(A085844(n+1))-A085844(n+1)`
-/

namespace A216383.P636813745514498861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A085844 (n + 1)).toNat - A085844 (n + 1)

end

end A216383.P636813745514498861

/-! ## A216383.P15348723983843795872

`A178645(A085844(n+1))`
-/

namespace A216383.P15348723983843795872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178645 (A085844 (n + 1)).toNat

end

end A216383.P15348723983843795872

/-! ## A216383.P3129398151310732186

`A091818(A085844(n+1))/A000122((n+1)²)`
-/

namespace A216383.P3129398151310732186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A085844 (n + 1)).toNat : ℚ) / (A000122 ((n + 1) ^ 2) : ℚ)

end

end A216383.P3129398151310732186

/-! ## A216383.P5010978981086098982

`A091818(A085844(n+1))/A020639(2*(n+2))`
-/

namespace A216383.P5010978981086098982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A085844 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 2)) : ℚ)

end

end A216383.P5010978981086098982

/-!
# A216385: Number of values of k for which phi(k) is a permutation of decimal digits of k, for k < 10^n.

The programs for A216385, there is no canonical definition to state claims against.
-/

/-! ## A216385.P3590162597972058810

`∑[A216387(n+1)]`
-/

namespace A216385.P3590162597972058810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216385.P3590162597972058810

/-! ## A216385.P16448524206399894266

`A029931(A376311(n+1))+A028244(n+1)`
-/

namespace A216385.P16448524206399894266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A376311 (n + 1)).toNat + A028244 (n + 1)

end

end A216385.P16448524206399894266

/-!
# A216386: Number of values of k for which sigma(k)-k is a permutation of decimal digits of k, for 10^(n-1) < k < 10^n.

The programs for A216386, there is no canonical definition to state claims against.
-/

/-! ## A216386.P11970788336885948381

`Δ[∪[2*A216399(n+1), A216388(n+1)]]`
-/

namespace A216386.P11970788336885948381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216399 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216388 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216386.P11970788336885948381

/-! ## A216386.P6367716301597057947

`A008611(∑[A030222(n+1)]-A304705(n))`
-/

namespace A216386.P6367716301597057947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j - A304705 n).toNat

end

end A216386.P6367716301597057947

/-!
# A216387: Number of values of k for which phi(k) is a permutation of decimal digits of k, for 10^(n-1) < k < 10^n.

The programs for A216387, there is no canonical definition to state claims against.
-/

/-! ## A216387.P4042192559243358842

`A216385(n+1)-∪[A216385(n+1), A216399(n+1)]`
-/

namespace A216387.P4042192559243358842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216399 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216385 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A216387.P4042192559243358842

/-! ## A216387.P10577780246553446793

`A216385(n+1)-∪[A216385(n+1), A216400(n+1)]`
-/

namespace A216387.P10577780246553446793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216400 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216385 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A216387.P10577780246553446793

/-!
# A216388: Number of values of k for which sigma(k)-k is a permutation of decimal digits of k, for k < 10^n.

The programs for A216388, there is no canonical definition to state claims against.
-/

/-! ## A216388.P12671155669984565335

`∑[A216386(n+1)]`
-/

namespace A216388.P12671155669984565335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216388.P12671155669984565335

/-! ## A216388.P3639308521548755015

`A194529((n+3)²*a(n-1))` with `a(0)=1`
-/

namespace A216388.P3639308521548755015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194529 (((n + 3) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A216388.P3639308521548755015

/-!
# A216389: Number of values of k for which sigma(k) is a permutation of decimal digits of k, for k < 10^n.

The programs for A216389, there is no canonical definition to state claims against.
-/

/-! ## A216389.P9212739610154868729

`∑[A216390(n+1)]`
-/

namespace A216389.P9212739610154868729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216389.P9212739610154868729

/-! ## A216389.P16396877181866096615

`A365907(n)+A325599(A322700(n))`
-/

namespace A216389.P16396877181866096615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365907 n + A325599 (A322700 n).toNat

end

end A216389.P16396877181866096615

/-! ## A216389.P12833187978329739694

`A378397(A375154(n+1))+A365907(n)`
-/

namespace A216389.P12833187978329739694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378397 (A375154 (n + 1)).toNat + A365907 n

end

end A216389.P12833187978329739694

/-!
# A216390: Number of values of k for which sigma(k) is a permutation of decimal digits of k, for 10^(n-1) < k < 10^n.

The programs for A216390, there is no canonical definition to state claims against.
-/

/-! ## A216390.P10972711306823232394

`A160556(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=10`
-/

namespace A216390.P10972711306823232394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 10] fun n a =>
  A160556 (a (n - 1)).toNat

end

end A216390.P10972711306823232394

/-!
# A216391: Number of values of k for which phi(k) is a permutation of decimal digits of k, for k < 2^n.

The programs for A216391, there is no canonical definition to state claims against.
-/

/-! ## A216391.P14250454482187805749

`∑[A216394(n+1)]`
-/

namespace A216391.P14250454482187805749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216391.P14250454482187805749

/-!
# A216392: Number of values of k for which sigma(k) is a permutation of decimal digits of k, for k < 2^n.

The programs for A216392, there is no canonical definition to state claims against.
-/

/-! ## A216392.P5113438121932912976

`∑[A216395(n+1)]`
-/

namespace A216392.P5113438121932912976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216392.P5113438121932912976

/-! ## A216392.P140253115411513576

`a(n-1)+A216395(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A216392.P140253115411513576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A216395 (n + 1) + A000007 n)

end

end A216392.P140253115411513576

/-!
# A216393: Number of values of k for which sigma(k)-k is a permutation of decimal digits of k, for k < 2^n.

The programs for A216393, there is no canonical definition to state claims against.
-/

/-! ## A216393.P3987905589227883368

`∑[A216396(n+1)]`
-/

namespace A216393.P3987905589227883368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216393.P3987905589227883368

/-!
# A216394: Number of values of k for which phi(k) is a permutation of decimal digits of k, for 2^(n-1) < k < 2^n.

The programs for A216394, there is no canonical definition to state claims against.
-/

/-! ## A216394.P12440546437266945727

`Δ[A216391(A028310(n))%(2^n)]`
-/

namespace A216394.P12440546437266945727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216391 (A028310 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216394.P12440546437266945727

/-! ## A216394.P2814332350281727029

`A000007(n)+Δ[A216391(A028310(n))]`
-/

namespace A216394.P2814332350281727029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216391 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A216394.P2814332350281727029

/-! ## A216394.P13740390286157112493

`Δ[A216391(A028310(n))+A057427(n)]`
-/

namespace A216394.P13740390286157112493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216391 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216394.P13740390286157112493

/-! ## A216394.P13309272903949946794

`Δ[A216391(A028310(n))-A014963((2*n)²+2)]`
-/

namespace A216394.P13309272903949946794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216391 (A028310 n).toNat - A014963 ((2 * n) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216394.P13309272903949946794

/-!
# A216396: Number of values of k for which sigma(k)-k is a permutation of decimal digits of k, for 2^(n-1) < k < 2^n.

The programs for A216396, there is no canonical definition to state claims against.
-/

/-! ## A216396.P2586420086059004558

`Δ[A216393(round(acot(n)+n))]`
-/

namespace A216396.P2586420086059004558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216393 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216396.P2586420086059004558

/-! ## A216396.P3922085509331080611

`Δ[A216393(floor(sqrt(n²+1)))]`
-/

namespace A216396.P3922085509331080611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216393 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216396.P3922085509331080611

/-! ## A216396.P16011011318694766945

`A216393(n+1)-A216393(round(acot(n)+n))`
-/

namespace A216396.P16011011318694766945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216393 (n + 1) - A216393 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A216396.P16011011318694766945

/-! ## A216396.P14474150224937182959

`A216393(n+1)-A216393(round(sqrt(n²+1)))`
-/

namespace A216396.P14474150224937182959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216393 (n + 1) - A216393 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A216396.P14474150224937182959

