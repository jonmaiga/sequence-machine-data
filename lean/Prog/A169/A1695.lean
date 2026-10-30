import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A169544: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^35 = I.

The programs for A169544, there is no canonical definition to state claims against.
-/

/-! ## A169544.P3167506983983786624

`A003945(n)-A169585(A031285(n+1))`
-/

namespace A169544.P3167506983983786624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A169585 (A031285 (n + 1)).toNat

end

end A169544.P3167506983983786624

/-!
# A169580: Squares of the form x^2 + y^2 + z^2 with x, y, z as positive integers.

The programs for A169580, the canonical program `A169580.P12857166296506877919` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169580 has offset 1).

The definition of A169580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169580.P11074480983824345889

`comp[2*a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A169580.P11074480983824345889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  2 * f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A169580.P11074480983824345889

namespace A169580

/-- `comp[2*a(n-2)]²` -/
def P11074480983824345889.Spec : Prop :=
  ∀ n, (P11074480983824345889.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P5702213481003697382

`comp[2*a(n-2)]^2` with `a(0)=1, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A169580.P5702213481003697382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 5] fun n f1 =>
  2 * f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A169580.P5702213481003697382

namespace A169580

/-- `comp[2*a(n-2)]^2` -/
def P5702213481003697382.Spec : Prop :=
  ∀ n, (P5702213481003697382.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P9139730625066306175

`comp[2*a(n-2)]*comp[2*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A169580.P9139730625066306175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 5] fun n f1 =>
  2 * f1 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 5] fun n f2 =>
  2 * f2 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A169580.P9139730625066306175

namespace A169580

/-- `comp[2*a(n-2)]*comp[2*a(n-2)]` -/
def P9139730625066306175.Spec : Prop :=
  ∀ n, (P9139730625066306175.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P12857166296506877919

`A005767(1+n)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A169580

/-- `A005767(1+n)²` -/
def P12857166296506877919.Spec : Prop :=
  ∀ n, P12857166296506877919.a n = A169580 (n + 1)

theorem P12857166296506877919.correct : P12857166296506877919.Spec := by
  intro n
  simp only [A169580, Nat.add_sub_cancel]

end A169580

/-! ## A169580.P5066502517137573003

`lt[A292895(n), n]²`
-/

namespace A169580.P5066502517137573003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292895 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A169580.P5066502517137573003

namespace A169580

/-- `lt[A292895(n), n]²` -/
def P5066502517137573003.Spec : Prop :=
  ∀ n, (P5066502517137573003.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P12531450155947876431

`lt[4, A286599(2*n)]²`
-/

namespace A169580.P12531450155947876431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286599 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A169580.P12531450155947876431

namespace A169580

/-- `lt[4, A286599(2*n)]²` -/
def P12531450155947876431.Spec : Prop :=
  ∀ n, (P12531450155947876431.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P15288985349847788240

`lt[1, A343044(A331743(n))]²`
-/

namespace A169580.P15288985349847788240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343044 (A331743 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A169580.P15288985349847788240

namespace A169580

/-- `lt[1, A343044(A331743(n))]²` -/
def P15288985349847788240.Spec : Prop :=
  ∀ n, (P15288985349847788240.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P11969922024269908699

`∪[A020742(n), A065940(n)]²`
-/

namespace A169580.P11969922024269908699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A169580.P11969922024269908699

namespace A169580

/-- `∪[A020742(n), A065940(n)]²` -/
def P11969922024269908699.Spec : Prop :=
  ∀ n, (P11969922024269908699.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P7964920069757359595

`∪[A004169(n+1), A065940(n)]²`
-/

namespace A169580.P7964920069757359595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A169580.P7964920069757359595

namespace A169580

/-- `∪[A004169(n+1), A065940(n)]²` -/
def P7964920069757359595.Spec : Prop :=
  ∀ n, (P7964920069757359595.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P7837743431002201277

`∪[A005818(n+1), A065940(n)]²`
-/

namespace A169580.P7837743431002201277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A169580.P7837743431002201277

namespace A169580

/-- `∪[A005818(n+1), A065940(n)]²` -/
def P7837743431002201277.Spec : Prop :=
  ∀ n, (P7837743431002201277.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P17294931828246350789

`∪[A055741(n+1), A065940(n)]²`
-/

namespace A169580.P17294931828246350789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A169580.P17294931828246350789

namespace A169580

/-- `∪[A055741(n+1), A065940(n)]²` -/
def P17294931828246350789.Spec : Prop :=
  ∀ n, (P17294931828246350789.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P17751396714194202789

`∪[A161992(n+1), A065940(n)]²`
-/

namespace A169580.P17751396714194202789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A169580.P17751396714194202789

namespace A169580

/-- `∪[A161992(n+1), A065940(n)]²` -/
def P17751396714194202789.Spec : Prop :=
  ∀ n, (P17751396714194202789.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P15692072416762604941

`comp[and(A029747(n+1), A029749(n))]²`
-/

namespace A169580.P15692072416762604941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029747 (n + 1)) (A029749 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A169580.P15692072416762604941

namespace A169580

/-- `comp[and(A029747(n+1), A029749(n))]²` -/
def P15692072416762604941.Spec : Prop :=
  ∀ n, (P15692072416762604941.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P743588864538275821

`∪[A004169(n+1), A085837(n+1)]²`
-/

namespace A169580.P743588864538275821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A169580.P743588864538275821

namespace A169580

/-- `∪[A004169(n+1), A085837(n+1)]²` -/
def P743588864538275821.Spec : Prop :=
  ∀ n, (P743588864538275821.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P15099322378824027325

`∪[A004749(n+1), A085837(n+1)]²`
-/

namespace A169580.P15099322378824027325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A169580.P15099322378824027325

namespace A169580

/-- `∪[A004749(n+1), A085837(n+1)]²` -/
def P15099322378824027325.Spec : Prop :=
  ∀ n, (P15099322378824027325.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P9033208280048338541

`lt[0, A181786(n)]²`
-/

namespace A169580.P9033208280048338541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A169580.P9033208280048338541

namespace A169580

/-- `lt[0, A181786(n)]²` -/
def P9033208280048338541.Spec : Prop :=
  ∀ n, (P9033208280048338541.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P13685850210512053963

`lt[A087808(n), A283165(n)]²`
-/

namespace A169580.P13685850210512053963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A169580.P13685850210512053963

namespace A169580

/-- `lt[A087808(n), A283165(n)]²` -/
def P13685850210512053963.Spec : Prop :=
  ∀ n, (P13685850210512053963.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P5684818801409766883

`lt[A283187(n), A283165(n)]²`
-/

namespace A169580.P5684818801409766883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A169580.P5684818801409766883

namespace A169580

/-- `lt[A283187(n), A283165(n)]²` -/
def P5684818801409766883.Spec : Prop :=
  ∀ n, (P5684818801409766883.a n : ℤ) = A169580 (n + 1)

end A169580

/-! ## A169580.P13537436923186330694

`A000290(A005767(∑[n+1]-∑[n]))`
-/

namespace A169580.P13537436923186330694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A005767 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A169580.P13537436923186330694

namespace A169580

/-- `A000290(A005767(∑[n+1]-∑[n]))` -/
def P13537436923186330694.Spec : Prop :=
  ∀ n, P13537436923186330694.a n = A169580 (n + 1)

end A169580

/-! ## A169580.P4854835652049668113

`lt[2, xor(2, A233905(n))]²`
-/

namespace A169580.P4854835652049668113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A233905 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A169580.P4854835652049668113

namespace A169580

/-- `lt[2, xor(2, A233905(n))]²` -/
def P4854835652049668113.Spec : Prop :=
  ∀ n, (P4854835652049668113.a n : ℤ) = A169580 (n + 1)

end A169580

/-!
# A169581: Positions in A002260(n) and A002024(n) when canonically enumerating A038566(n)/A038567(n), the positive rational numbers <= 1.

The programs for A169581, the canonical program `A169581.P5880074655837136645` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169581 has offset 1).

The definition of A169581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169581.P10046271922511062321

`eq[1, gcd(row(n)+1, col(n)+1)]+1`
-/

namespace A169581.P10046271922511062321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A169581.P10046271922511062321

namespace A169581

/-- `eq[1, gcd(row(n)+1, col(n)+1)]+1` -/
def P10046271922511062321.Spec : Prop :=
  ∀ n, (P10046271922511062321.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P206911586189269852

`eq[1, A050873(n+1)]+1`
-/

namespace A169581.P206911586189269852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169581.P206911586189269852

namespace A169581

/-- `eq[1, A050873(n+1)]+1` -/
def P206911586189269852.Spec : Prop :=
  ∀ n, (P206911586189269852.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P6251813292666740213

`eq[1, A051194(n+1)]+1`
-/

namespace A169581.P6251813292666740213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169581.P6251813292666740213

namespace A169581

/-- `eq[1, A051194(n+1)]+1` -/
def P6251813292666740213.Spec : Prop :=
  ∀ n, (P6251813292666740213.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P9973626210610702112

`lt[0, A054521(n+1)]+1`
-/

namespace A169581.P9973626210610702112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169581.P9973626210610702112

namespace A169581

/-- `lt[0, A054521(n+1)]+1` -/
def P9973626210610702112.Spec : Prop :=
  ∀ n, (P9973626210610702112.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P8849577894972303103

`eq[1, A231425(n+1)]+1`
-/

namespace A169581.P8849577894972303103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169581.P8849577894972303103

namespace A169581

/-- `eq[1, A231425(n+1)]+1` -/
def P8849577894972303103.Spec : Prop :=
  ∀ n, (P8849577894972303103.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P14050782000631651919

`eq[1, A215200(n+1)²]+1`
-/

namespace A169581.P14050782000631651919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169581.P14050782000631651919

namespace A169581

/-- `eq[1, A215200(n+1)²]+1` -/
def P14050782000631651919.Spec : Prop :=
  ∀ n, (P14050782000631651919.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P8862099228423482679

`record[(n+1)/A046143(n+1)]`
-/

namespace A169581.P8862099228423482679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A046143 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169581.P8862099228423482679

namespace A169581

/-- `record[(n+1)/A046143(n+1)]` -/
def P8862099228423482679.Spec : Prop :=
  ∀ n, P8862099228423482679.a n = (A169581 (n + 1) : ℚ)

end A169581

/-! ## A169581.P14641458651970084201

`lt[n, A054531(n+1)²]+1`
-/

namespace A169581.P14641458651970084201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169581.P14641458651970084201

namespace A169581

/-- `lt[n, A054531(n+1)²]+1` -/
def P14641458651970084201.Spec : Prop :=
  ∀ n, (P14641458651970084201.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P15880205055547234601

`lt[n, A127449(n+1)²]+1`
-/

namespace A169581.P15880205055547234601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169581.P15880205055547234601

namespace A169581

/-- `lt[n, A127449(n+1)²]+1` -/
def P15880205055547234601.Spec : Prop :=
  ∀ n, (P15880205055547234601.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P6251328013214585964

`filter[A132999(n+1), A054521(#)]`
-/

namespace A169581.P6251328013214585964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054521 (f1 j).toNat = 1) n)

end

end A169581.P6251328013214585964

namespace A169581

/-- `filter[A132999(n+1), A054521(#)]` -/
def P6251328013214585964.Spec : Prop :=
  ∀ n, P6251328013214585964.a n = A169581 (n + 1)

end A169581

/-! ## A169581.P1626251826291877437

`filter[A183301(n+1), A054521(#)]`
-/

namespace A169581.P1626251826291877437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054521 (f1 j).toNat = 1) n)

end

end A169581.P1626251826291877437

namespace A169581

/-- `filter[A183301(n+1), A054521(#)]` -/
def P1626251826291877437.Spec : Prop :=
  ∀ n, P1626251826291877437.a n = A169581 (n + 1)

end A169581

/-! ## A169581.P2360965076647995550

`lt[A025581(n), A127449(n+1)]+1`
-/

namespace A169581.P2360965076647995550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A169581.P2360965076647995550

namespace A169581

/-- `lt[A025581(n), A127449(n+1)]+1` -/
def P2360965076647995550.Spec : Prop :=
  ∀ n, (P2360965076647995550.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P15585076964757324594

`record[A005408(n)-n*A050873(n+1)]`
-/

namespace A169581.P15585076964757324594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169581.P15585076964757324594

namespace A169581

/-- `record[A005408(n)-n*A050873(n+1)]` -/
def P15585076964757324594.Spec : Prop :=
  ∀ n, P15585076964757324594.a n = A169581 (n + 1)

end A169581

/-! ## A169581.P9778557319753447805

`eq[A002024(n+1), A054531(n+1)]+1`
-/

namespace A169581.P9778557319753447805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A169581.P9778557319753447805

namespace A169581

/-- `eq[A002024(n+1), A054531(n+1)]+1` -/
def P9778557319753447805.Spec : Prop :=
  ∀ n, (P9778557319753447805.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P2086826241472330601

`eq[A002260(n+1), A164306(n+1)]+1`
-/

namespace A169581.P2086826241472330601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A169581.P2086826241472330601

namespace A169581

/-- `eq[A002260(n+1), A164306(n+1)]+1` -/
def P2086826241472330601.Spec : Prop :=
  ∀ n, (P2086826241472330601.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P5880074655837136645

`lt[gcd(A002260(n+1), A025581(n)), 2]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A169581

/-- `lt[gcd(A002260(n+1), A025581(n)), 2]+1` -/
def P5880074655837136645.Spec : Prop :=
  ∀ n, (P5880074655837136645.a n : ℤ) = A169581 (n + 1)

theorem P5880074655837136645.correct : P5880074655837136645.Spec := by
  intro n
  simp only [A169581, Nat.add_sub_cancel]

end A169581

/-! ## A169581.P13515474103528121015

`eq[A123578(n), A277227(n+1)]`
-/

namespace A169581.P13515474103528121015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169581.P13515474103528121015

namespace A169581

/-- `eq[A123578(n), A277227(n+1)]` -/
def P13515474103528121015.Spec : Prop :=
  ∀ n, (P13515474103528121015.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P8262822586878607253

`filter[A066182(n+1), A054521(#)]`
-/

namespace A169581.P8262822586878607253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054521 (f1 j).toNat = 1) n)

end

end A169581.P8262822586878607253

namespace A169581

/-- `filter[A066182(n+1), A054521(#)]` -/
def P8262822586878607253.Spec : Prop :=
  ∀ n, P8262822586878607253.a n = A169581 (n + 1)

end A169581

/-! ## A169581.P4065180745760848221

`eq[1, A132442(n+1)]+1`
-/

namespace A169581.P4065180745760848221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169581.P4065180745760848221

namespace A169581

/-- `eq[1, A132442(n+1)]+1` -/
def P4065180745760848221.Spec : Prop :=
  ∀ n, (P4065180745760848221.a n : ℤ) = A169581 (n + 1)

end A169581

/-! ## A169581.P610602561011017476

`eq[1, A245717(n+1)]+1`
-/

namespace A169581.P610602561011017476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169581.P610602561011017476

namespace A169581

/-- `eq[1, A245717(n+1)]+1` -/
def P610602561011017476.Spec : Prop :=
  ∀ n, (P610602561011017476.a n : ℤ) = A169581 (n + 1)

end A169581

/-!
# A169582: Complement of A169581.

The programs for A169582, the canonical program `A169582.P7193217553231682850` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169582 has offset 1).

The definition of A169582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169582.P7193217553231682850

`lt[A277227(n+1)², n]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A169582

/-- `lt[A277227(n+1)², n]` -/
def P7193217553231682850.Spec : Prop :=
  ∀ n, (P7193217553231682850.a n : ℤ) = A169582 (n + 1)

theorem P7193217553231682850.correct : P7193217553231682850.Spec := by
  intro n
  simp only [A169582, Nat.add_sub_cancel]

end A169582

/-! ## A169582.P4971265783948844902

`eq[0, A054521(n+1)]+1`
-/

namespace A169582.P4971265783948844902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169582.P4971265783948844902

namespace A169582

/-- `eq[0, A054521(n+1)]+1` -/
def P4971265783948844902.Spec : Prop :=
  ∀ n, (P4971265783948844902.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P15244100414940917329

`eq[0, A215200(n+1)]+1`
-/

namespace A169582.P15244100414940917329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169582.P15244100414940917329

namespace A169582

/-- `eq[0, A215200(n+1)]+1` -/
def P15244100414940917329.Spec : Prop :=
  ∀ n, (P15244100414940917329.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P11000054073923447346

`lt[0, A349317(n+1)]+1`
-/

namespace A169582.P11000054073923447346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169582.P11000054073923447346

namespace A169582

/-- `lt[0, A349317(n+1)]+1` -/
def P11000054073923447346.Spec : Prop :=
  ∀ n, (P11000054073923447346.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P7711454016801929276

`lt[1, A050873(n+1)]+1`
-/

namespace A169582.P7711454016801929276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A169582.P7711454016801929276

namespace A169582

/-- `lt[1, A050873(n+1)]+1` -/
def P7711454016801929276.Spec : Prop :=
  ∀ n, (P7711454016801929276.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P1299987249133841937

`lt[A127449(n+1), 1]+1`
-/

namespace A169582.P1299987249133841937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A169582.P1299987249133841937

namespace A169582

/-- `lt[A127449(n+1), 1]+1` -/
def P1299987249133841937.Spec : Prop :=
  ∀ n, (P1299987249133841937.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P17277102205035014368

`lt[A143614(n+1), 1]+1`
-/

namespace A169582.P17277102205035014368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143614 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A169582.P17277102205035014368

namespace A169582

/-- `lt[A143614(n+1), 1]+1` -/
def P17277102205035014368.Spec : Prop :=
  ∀ n, (P17277102205035014368.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P12585956358201989531

`lt[A054531(n+1)², n]+1`
-/

namespace A169582.P12585956358201989531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A169582.P12585956358201989531

namespace A169582

/-- `lt[A054531(n+1)², n]+1` -/
def P12585956358201989531.Spec : Prop :=
  ∀ n, (P12585956358201989531.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P13186065148800070979

`eq[0, A180227(n+1)+1]+1`
-/

namespace A169582.P13186065148800070979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180227 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169582.P13186065148800070979

namespace A169582

/-- `eq[0, A180227(n+1)+1]+1` -/
def P13186065148800070979.Spec : Prop :=
  ∀ n, (P13186065148800070979.a n : ℤ) = A169582 (n + 1)

end A169582

/-! ## A169582.P5137477856552158891

`filter[A080036(n), A349317(#)]`
-/

namespace A169582.P5137477856552158891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P5137477856552158891

namespace A169582

/-- `filter[A080036(n), A349317(#)]` -/
def P5137477856552158891.Spec : Prop :=
  ∀ n, P5137477856552158891.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P13143244654387814468

`filter[A152271(n), A349317(#)]`
-/

namespace A169582.P13143244654387814468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P13143244654387814468

namespace A169582

/-- `filter[A152271(n), A349317(#)]` -/
def P13143244654387814468.Spec : Prop :=
  ∀ n, P13143244654387814468.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P15024066497865422571

`filter[A158416(n), A349317(#)]`
-/

namespace A169582.P15024066497865422571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P15024066497865422571

namespace A169582

/-- `filter[A158416(n), A349317(#)]` -/
def P15024066497865422571.Spec : Prop :=
  ∀ n, P15024066497865422571.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P7906057797014357815

`filter[A344180(n), A349317(#)]`
-/

namespace A169582.P7906057797014357815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P7906057797014357815

namespace A169582

/-- `filter[A344180(n), A349317(#)]` -/
def P7906057797014357815.Spec : Prop :=
  ∀ n, P7906057797014357815.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P1099913142695716406

`filter[A003619(n+1), A349317(#)]`
-/

namespace A169582.P1099913142695716406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P1099913142695716406

namespace A169582

/-- `filter[A003619(n+1), A349317(#)]` -/
def P1099913142695716406.Spec : Prop :=
  ∀ n, P1099913142695716406.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P8459297839572534798

`filter[A007401(n+1), A349317(#)]`
-/

namespace A169582.P8459297839572534798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P8459297839572534798

namespace A169582

/-- `filter[A007401(n+1), A349317(#)]` -/
def P8459297839572534798.Spec : Prop :=
  ∀ n, P8459297839572534798.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P3123658513062596464

`filter[A066181(n+1), A349317(#)]`
-/

namespace A169582.P3123658513062596464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P3123658513062596464

namespace A169582

/-- `filter[A066181(n+1), A349317(#)]` -/
def P3123658513062596464.Spec : Prop :=
  ∀ n, P3123658513062596464.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P3052363874142848819

`filter[A092942(n+1), A349317(#)]`
-/

namespace A169582.P3052363874142848819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P3052363874142848819

namespace A169582

/-- `filter[A092942(n+1), A349317(#)]` -/
def P3052363874142848819.Spec : Prop :=
  ∀ n, P3052363874142848819.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P1953087860460314812

`filter[A122797(n+1), A349317(#)]`
-/

namespace A169582.P1953087860460314812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P1953087860460314812

namespace A169582

/-- `filter[A122797(n+1), A349317(#)]` -/
def P1953087860460314812.Spec : Prop :=
  ∀ n, P1953087860460314812.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P5697603975501493974

`filter[A133622(n+1), A349317(#)]`
-/

namespace A169582.P5697603975501493974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349317 (f1 j).toNat = 1) n)

end

end A169582.P5697603975501493974

namespace A169582

/-- `filter[A133622(n+1), A349317(#)]` -/
def P5697603975501493974.Spec : Prop :=
  ∀ n, P5697603975501493974.a n = A169582 (n + 1)

end A169582

/-! ## A169582.P11632620419579224038

`lt[A054521(n+1), tanh(A005811(n))]+1`
-/

namespace A169582.P11632620419579224038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A005811 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A169582.P11632620419579224038

namespace A169582

/-- `lt[A054521(n+1), tanh(A005811(n))]+1` -/
def P11632620419579224038.Spec : Prop :=
  ∀ n, (P11632620419579224038.a n : ℤ) = A169582 (n + 1)

end A169582

/-!
# A169583: n-th prime*8-7 is the square of a prime.

The programs for A169583, there is no canonical definition to state claims against.
-/

/-! ## A169583.P14786282909744892149

`A000720(p?[A000124(A005097(n+1))])`
-/

namespace A169583.P14786282909744892149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A005097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A169583.P14786282909744892149

/-! ## A169583.P11049754743488300210

`A000720(p?[A036406(A000040(n+1))])`
-/

namespace A169583.P11049754743488300210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A169583.P11049754743488300210

/-! ## A169583.P7363497738450774331

`A000720(p?[A036406(A008578(n+1))])`
-/

namespace A169583.P7363497738450774331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A169583.P7363497738450774331

/-! ## A169583.P13003221597178146968

`A061395(p?[A036406(A000040(n+1))])`
-/

namespace A169583.P13003221597178146968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A169583.P13003221597178146968

/-! ## A169583.P7099320541011601418

`A000720(p?[A000124(n*A101264(n))])`
-/

namespace A169583.P7099320541011601418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n : ℤ) * A101264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A169583.P7099320541011601418

/-!
# A169584: Number of 2-noncrossing permutations of n elements.

The programs for A169584, there is no canonical definition to state claims against.
-/

/-! ## A169584.P3880523124806397624

`A193938(n+3)-A000108(n+3)`
-/

namespace A169584.P3880523124806397624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193938 (n + 3) - A000108 (n + 3)

end

end A169584.P3880523124806397624

/-!
# A169585: A000004 preceded by 1, 3.

The programs for A169585, the canonical program `A169585.P4651247576418713524` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169585 has offset 0).

The definition of A169585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169585.P4651247576418713524

`T(n-1,k+1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A169585

/-- `T(n-1,k+1)` -/
def P4651247576418713524.Spec : Prop :=
  ∀ n, (P4651247576418713524.a n : ℤ) = A169585 n

theorem P4651247576418713524.correct : P4651247576418713524.Spec := by
  intro n
  simp only [A169585]

end A169585

/-!
# A169586: Primes p in A168540 for which q = 3^3 + 10^2*p^3 (A168487) is prime.

The programs for A169586, there is no canonical definition to state claims against.
-/

/-! ## A169586.P17864025877733204780

`p?[A168540(n+1)]`
-/

namespace A169586.P17864025877733204780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169586.P17864025877733204780

/-! ## A169586.P811257189258903362

`p?[record[A168540(A028920(n))]]`
-/

namespace A169586.P811257189258903362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168540 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169586.P811257189258903362

/-! ## A169586.P2549117252646945967

`record[A006530(A168540(n+2))]`
-/

namespace A169586.P2549117252646945967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A168540 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169586.P2549117252646945967

/-! ## A169586.P1961514668004889014

`record[A014963(A168540(n+3))]`
-/

namespace A169586.P1961514668004889014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A168540 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169586.P1961514668004889014

/-! ## A169586.P7764986122439534035

`filter[A168540(n+1), A010051(#)]`
-/

namespace A169586.P7764986122439534035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A169586.P7764986122439534035

/-!
# A169587: The total number of ways of partitioning the multiset {1,1,1,2,3,...,n-2}.

The programs for A169587, the canonical program `A169587.P13831751519427972780` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169587 has offset 3).

The definition of A169587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169587.P13831751519427972780

`(A000110(n+3)+3*A000110(n+2)+5*A000110(n+1)+2*A000110(n))/6`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A169587

/-- `(A000110(n+3)+3*A000110(n+2)+5*A000110(n+1)+2*A000110(n))/6` -/
def P13831751519427972780.Spec : Prop :=
  ∀ n, P13831751519427972780.a n = (A169587 (n + 3) : ℚ)

end A169587

/-! ## A169587.P1696637572588549736

`A346426(A167614(2+n))`
-/

namespace A169587.P1696637572588549736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167614 (2 + n)).toNat

end

end A169587.P1696637572588549736

namespace A169587

/-- `A346426(A167614(2+n))` -/
def P1696637572588549736.Spec : Prop :=
  ∀ n, P1696637572588549736.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P9072887970408756026

`A346426(A052905(n)+8)`
-/

namespace A169587.P9072887970408756026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A052905 n + 8).toNat

end

end A169587.P9072887970408756026

namespace A169587

/-- `A346426(A052905(n)+8)` -/
def P9072887970408756026.Spec : Prop :=
  ∀ n, P9072887970408756026.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P6295778059012760635

`A346426(A055999(n)+9)`
-/

namespace A169587.P6295778059012760635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A055999 n + 9).toNat

end

end A169587.P6295778059012760635

namespace A169587

/-- `A346426(A055999(n)+9)` -/
def P6295778059012760635.Spec : Prop :=
  ∀ n, P6295778059012760635.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P15501861554840902259

`A346426(eq[3, A002262(n)])`
-/

namespace A169587.P15501861554840902259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169587.P15501861554840902259

namespace A169587

/-- `A346426(eq[3, A002262(n)])` -/
def P15501861554840902259.Spec : Prop :=
  ∀ n, P15501861554840902259.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P11815755823050331995

`A346426(Δ[A005286(n)]+4)`
-/

namespace A169587.P11815755823050331995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (f1 (n + 1) - f1 n + 4).toNat

end

end A169587.P11815755823050331995

namespace A169587

/-- `A346426(Δ[A005286(n)]+4)` -/
def P11815755823050331995.Spec : Prop :=
  ∀ n, P11815755823050331995.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P8816971624423209298

`A346426(Δ[A006503(n)]+6)`
-/

namespace A169587.P8816971624423209298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (f1 (n + 1) - f1 n + 6).toNat

end

end A169587.P8816971624423209298

namespace A169587

/-- `A346426(Δ[A006503(n)]+6)` -/
def P8816971624423209298.Spec : Prop :=
  ∀ n, P8816971624423209298.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P2716912863724238423

`record[A346426(lt[3, A193588(n)])]`
-/

namespace A169587.P2716912863724238423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169587.P2716912863724238423

namespace A169587

/-- `record[A346426(lt[3, A193588(n)])]` -/
def P2716912863724238423.Spec : Prop :=
  ∀ n, P2716912863724238423.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P7503685936055193804

`A346426(A340266(n+2)+1)`
-/

namespace A169587.P7503685936055193804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A340266 (n + 2) + 1).toNat

end

end A169587.P7503685936055193804

namespace A169587

/-- `A346426(A340266(n+2)+1)` -/
def P7503685936055193804.Spec : Prop :=
  ∀ n, P7503685936055193804.a n = A169587 (n + 3)

end A169587

/-! ## A169587.P13109329244960226069

`A346426(A166136(n+2)-3)`
-/

namespace A169587.P13109329244960226069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A166136 (n + 2) - 3).toNat

end

end A169587.P13109329244960226069

namespace A169587

/-- `A346426(A166136(n+2)-3)` -/
def P13109329244960226069.Spec : Prop :=
  ∀ n, P13109329244960226069.a n = A169587 (n + 3)

end A169587

/-!
# A169588: The total number of ways of partitioning the multiset {1,1,1,1,2,3,...,n-3}.

The programs for A169588, the canonical program `A169588.P10908447194775848419` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169588 has offset 4).

The definition of A169588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169588.P10908447194775848419

`(A000110(n+4)+6*A000110(n+3)+17*A000110(n+2)+20*A000110(n+1)+21*A000110(n))/24`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A169588

/-- `(A000110(n+4)+6*A000110(n+3)+17*A000110(n+2)+20*A000110(n+1)+21*A000110(n))/24` -/
def P10908447194775848419.Spec : Prop :=
  ∀ n, P10908447194775848419.a n = (A169588 (n + 4) : ℚ)

end A169588

/-! ## A169588.P628285106990136356

`A035098(n+2)+A346814(n)+A000110(n)`
-/

namespace A169588.P628285106990136356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035098 (n + 2) + (A346814 n + A000110 n)

end

end A169588.P628285106990136356

namespace A169588

/-- `A035098(n+2)+A346814(n)+A000110(n)` -/
def P628285106990136356.Spec : Prop :=
  ∀ n, P628285106990136356.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P6111547684356632745

`A346426(A155212(n)+12)`
-/

namespace A169588.P6111547684356632745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A155212 n + 12).toNat

end

end A169588.P6111547684356632745

namespace A169588

/-- `A346426(A155212(n)+12)` -/
def P6111547684356632745.Spec : Prop :=
  ∀ n, P6111547684356632745.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P4970051783300364746

`A346426(eq[4, A002262(n)])`
-/

namespace A169588.P4970051783300364746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169588.P4970051783300364746

namespace A169588

/-- `A346426(eq[4, A002262(n)])` -/
def P4970051783300364746.Spec : Prop :=
  ∀ n, P4970051783300364746.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P7531260451016583021

`A346426(A167614(n+3)+1)`
-/

namespace A169588.P7531260451016583021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167614 (n + 3) + 1).toNat

end

end A169588.P7531260451016583021

namespace A169588

/-- `A346426(A167614(n+3)+1)` -/
def P7531260451016583021.Spec : Prop :=
  ∀ n, P7531260451016583021.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P8049053669625068421

`A346426(A167499(n+3)-1)`
-/

namespace A169588.P8049053669625068421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A167499 (n + 3) - 1).toNat

end

end A169588.P8049053669625068421

namespace A169588

/-- `A346426(A167499(n+3)-1)` -/
def P8049053669625068421.Spec : Prop :=
  ∀ n, P8049053669625068421.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P17393408115815808203

`A346426(A000124(n+4)+3)`
-/

namespace A169588.P17393408115815808203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000124 (n + 4) + 3).toNat

end

end A169588.P17393408115815808203

namespace A169588

/-- `A346426(A000124(n+4)+3)` -/
def P17393408115815808203.Spec : Prop :=
  ∀ n, P17393408115815808203.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P12617012926541059163

`A346426(A000217(n+4)+4)`
-/

namespace A169588.P12617012926541059163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000217 (n + 4) + 4).toNat

end

end A169588.P12617012926541059163

namespace A169588

/-- `A346426(A000217(n+4)+4)` -/
def P12617012926541059163.Spec : Prop :=
  ∀ n, P12617012926541059163.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P12800788700020537821

`A346426(A034856(n+3)+6)`
-/

namespace A169588.P12800788700020537821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A034856 (n + 3) + 6).toNat

end

end A169588.P12800788700020537821

namespace A169588

/-- `A346426(A034856(n+3)+6)` -/
def P12800788700020537821.Spec : Prop :=
  ∀ n, P12800788700020537821.a n = A169588 (n + 4)

end A169588

/-! ## A169588.P12381001193438226165

`A346426(A055998(n+2)+7)`
-/

namespace A169588.P12381001193438226165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A055998 (n + 2) + 7).toNat

end

end A169588.P12381001193438226165

namespace A169588

/-- `A346426(A055998(n+2)+7)` -/
def P12381001193438226165.Spec : Prop :=
  ∀ n, P12381001193438226165.a n = A169588 (n + 4)

end A169588

/-!
# A169589: A number triangle with repeated columns of triangle in A039599.

The programs for A169589, there is no canonical definition to state claims against.
-/

/-! ## A169589.P3524840560717230444

`A106471(n)-A106493(A140303(n))`
-/

namespace A169589.P3524840560717230444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106471 n - A106493 (A140303 n).toNat

end

end A169589.P3524840560717230444

/-!
# A169590: Triangle T(n,k) with : column n = A000034 if n even and column n = A000007 if n odd.

The programs for A169590, the canonical program `A169590.P4661821685391733255` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169590 has offset 0).

The definition of A169590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169590.P4661821685391733255

`T(T(n-1,k), (T(n-1,k)+T(n-1,k+1))*T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A169590

/-- `T(T(n-1,k), (T(n-1,k)+T(n-1,k+1))*T(n-1,k-1))` -/
def P4661821685391733255.Spec : Prop :=
  ∀ n, (P4661821685391733255.a n : ℤ) = A169590 n

theorem P4661821685391733255.correct : P4661821685391733255.Spec := by
  intro n
  simp only [A169590]

end A169590

/-! ## A169590.P14348149522499921440

`T(T(n-1,k), (T(n-1,k+1)-T(n-1,k))*T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A169590.P14348149522499921440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) ((((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) * ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ))

end

end A169590.P14348149522499921440

namespace A169590

/-- `T(T(n-1,k), (T(n-1,k+1)-T(n-1,k))*T(n-1,k-1))` -/
def P14348149522499921440.Spec : Prop :=
  ∀ n, (P14348149522499921440.a n : ℤ) = A169590 n

end A169590

/-! ## A169590.P11024806931595950138

`T(T(T(n-1,k+1), T(n-1,k))+T(n-1,k), T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A169590.P11024806931595950138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) + SequenceMachineLib.triUp a n : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)

end

end A169590.P11024806931595950138

namespace A169590

/-- `T(T(T(n-1,k+1), T(n-1,k))+T(n-1,k), T(n-1,k-1))` -/
def P11024806931595950138.Spec : Prop :=
  ∀ n, (P11024806931595950138.a n : ℤ) = A169590 n

end A169590

/-! ## A169590.P14310934898069874303

`T(T(n-1,k), T(T(n-1,k+1), T(n-1,k))-T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A169590.P14310934898069874303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) (((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) - ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ))

end

end A169590.P14310934898069874303

namespace A169590

/-- `T(T(n-1,k), T(T(n-1,k+1), T(n-1,k))-T(n-1,k-1))` -/
def P14310934898069874303.Spec : Prop :=
  ∀ n, (P14310934898069874303.a n : ℤ) = A169590 n

end A169590

/-! ## A169590.P5701371838384685111

`T(T(T(T(n-1,k-1), T(n-1,k+1)*T(n-1,k+1)), T(n-1,k)), T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A169590.P5701371838384685111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (SequenceMachineLib.triUpRight a n * SequenceMachineLib.triUpRight a n : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)

end

end A169590.P5701371838384685111

namespace A169590

/-- `T(T(T(T(n-1,k-1), T(n-1,k+1)*T(n-1,k+1)), T(n-1,k)), T(n-1,k-1))` -/
def P5701371838384685111.Spec : Prop :=
  ∀ n, (P5701371838384685111.a n : ℤ) = A169590 n

end A169590

/-! ## A169590.P12203045150098971850

`T(T(T(n-1,k+1), T(T(n-1,k+1), T(1, T(n-1,k)))), T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A169590.P12203045150098971850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) : ℕ) : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)

end

end A169590.P12203045150098971850

namespace A169590

/-- `T(T(T(n-1,k+1), T(T(n-1,k+1), T(1, T(n-1,k)))), T(n-1,k-1))` -/
def P12203045150098971850.Spec : Prop :=
  ∀ n, (P12203045150098971850.a n : ℤ) = A169590 n

end A169590

/-! ## A169590.P8264501492120718886

`T(T(n-1,k), (col(n)-row(n))*T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A169590.P8264501492120718886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) (((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ))

end

end A169590.P8264501492120718886

namespace A169590

/-- `T(T(n-1,k), (col(n)-row(n))*T(n-1,k-1))` -/
def P8264501492120718886.Spec : Prop :=
  ∀ n, (P8264501492120718886.a n : ℤ) = A169590 n

end A169590

/-! ## A169590.P9587073043595958711

`C(2, T(n-1,k)+(row(n)+1-col(n))²*T(n,k-1))` with `a(0)=1`
-/

namespace A169590.P9587073043595958711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (((SequenceMachineLib.triUp a n : ℕ) : ℤ) + ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 * ((SequenceMachineLib.triLeft a n : ℕ) : ℤ)).toNat

end

end A169590.P9587073043595958711

namespace A169590

/-- `C(2, T(n-1,k)+(row(n)+1-col(n))²*T(n,k-1))` -/
def P9587073043595958711.Spec : Prop :=
  ∀ n, (P9587073043595958711.a n : ℤ) = A169590 n

end A169590

/-! ## A169590.P9155621328044776110

`gcd(2, comp[∑[4*n]])*A070909(n)`
-/

namespace A169590.P9155621328044776110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * A070909 n

end

end A169590.P9155621328044776110

namespace A169590

/-- `gcd(2, comp[∑[4*n]])*A070909(n)` -/
def P9155621328044776110.Spec : Prop :=
  ∀ n, P9155621328044776110.a n = A169590 n

end A169590

/-! ## A169590.P1052170006550769337

`((A059268(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1)))%3`
-/

namespace A169590.P1052170006550769337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A059268 n + 1 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))) 3

end

end A169590.P1052170006550769337

namespace A169590

/-- `((A059268(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1)))%3` -/
def P1052170006550769337.Spec : Prop :=
  ∀ n, P1052170006550769337.a n = A169590 n

end A169590

/-! ## A169590.P7010560969738105141

`((2^A002262(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1)))%3`
-/

namespace A169590.P7010560969738105141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((2 : ℚ) ^ (A002262 n : ℤ) + 1) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))) 3

end

end A169590.P7010560969738105141

namespace A169590

/-- `((2^A002262(n)+1)^(C(comp[∑[n]]-n, 2)-(n+1)))%3` -/
def P7010560969738105141.Spec : Prop :=
  ∀ n, P7010560969738105141.a n = A169590 n

end A169590

/-! ## A169590.P2486573804500067567

`A084091(A089633(n))+1`
-/

namespace A169590.P2486573804500067567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A089633 n).toNat + 1

end

end A169590.P2486573804500067567

namespace A169590

/-- `A084091(A089633(n))+1` -/
def P2486573804500067567.Spec : Prop :=
  ∀ n, P2486573804500067567.a n = A169590 n

end A169590

/-! ## A169590.P13706727006107644248

`A233775(A173787(n))%3`
-/

namespace A169590.P13706727006107644248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233775 (A173787 n).toNat) 3

end

end A169590.P13706727006107644248

namespace A169590

/-- `A233775(A173787(n))%3` -/
def P13706727006107644248.Spec : Prop :=
  ∀ n, P13706727006107644248.a n = A169590 n

end A169590

/-! ## A169590.P3998824077189181462

`A328479(A099884(n))%3`
-/

namespace A169590.P3998824077189181462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328479 (A099884 n).toNat) 3

end

end A169590.P3998824077189181462

namespace A169590

/-- `A328479(A099884(n))%3` -/
def P3998824077189181462.Spec : Prop :=
  ∀ n, P3998824077189181462.a n = A169590 n

end A169590

/-! ## A169590.P13163938110506166213

`A070909(n)*A131406(n+1)`
-/

namespace A169590.P13163938110506166213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A131406 (n + 1)

end

end A169590.P13163938110506166213

namespace A169590

/-- `A070909(n)*A131406(n+1)` -/
def P13163938110506166213.Spec : Prop :=
  ∀ n, P13163938110506166213.a n = A169590 n

end A169590

/-! ## A169590.P14572887066941480824

`A130321(n)%(A070909(n)+2)`
-/

namespace A169590.P14572887066941480824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n) (A070909 n + 2)

end

end A169590.P14572887066941480824

namespace A169590

/-- `A130321(n)%(A070909(n)+2)` -/
def P14572887066941480824.Spec : Prop :=
  ∀ n, P14572887066941480824.a n = A169590 n

end A169590

/-! ## A169590.P9596853002940123645

`and(A130321(n), A193845(n))%3`
-/

namespace A169590.P9596853002940123645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A130321 n) (A193845 n)) 3

end

end A169590.P9596853002940123645

namespace A169590

/-- `and(A130321(n), A193845(n))%3` -/
def P9596853002940123645.Spec : Prop :=
  ∀ n, P9596853002940123645.a n = A169590 n

end A169590

/-! ## A169590.P5607732902705826010

`A134451(round(ratio[A173261(n+2)]))`
-/

namespace A169590.P5607732902705826010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173261 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A169590.P5607732902705826010

namespace A169590

/-- `A134451(round(ratio[A173261(n+2)]))` -/
def P5607732902705826010.Spec : Prop :=
  ∀ n, P5607732902705826010.a n = A169590 n

end A169590

/-! ## A169590.P5496478105048055825

`A328479(∑[A057728(n+1)])%3`
-/

namespace A169590.P5496478105048055825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328479 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 3

end

end A169590.P5496478105048055825

namespace A169590

/-- `A328479(∑[A057728(n+1)])%3` -/
def P5496478105048055825.Spec : Prop :=
  ∀ n, P5496478105048055825.a n = A169590 n

end A169590

/-! ## A169590.P15422707727654335077

`(2-A128174(n+1))*A070909(n)`
-/

namespace A169590.P15422707727654335077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A128174 (n + 1)) * A070909 n

end

end A169590.P15422707727654335077

namespace A169590

/-- `(2-A128174(n+1))*A070909(n)` -/
def P15422707727654335077.Spec : Prop :=
  ∀ n, P15422707727654335077.a n = A169590 n

end A169590

/-!
# A169591: Triangle T(n,k) with column n = A059841 if n even and column n = A000007 if n odd.

The programs for A169591, the canonical program `A169591.P17396559832658325281` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169591 has offset 0).

The definition of A169591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169591.P17396559832658325281

`(T(n-1,k-1)+T(n-2,k))*(1-T(n-1,k+1)*T(n-1,k-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A169591

/-- `(T(n-1,k-1)+T(n-2,k))*(1-T(n-1,k+1)*T(n-1,k-1))` -/
def P17396559832658325281.Spec : Prop :=
  ∀ n, P17396559832658325281.a n = A169591 n

theorem P17396559832658325281.correct : P17396559832658325281.Spec := by
  intro n
  simp only [A169591]

end A169591

/-! ## A169591.P13179915362003425739

`T(col(n)*T(T(n-1,k+1), T(n-1,k-1)+T(n-1,k)), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P13179915362003425739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n : ℤ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P13179915362003425739

namespace A169591

/-- `T(col(n)*T(T(n-1,k+1), T(n-1,k-1)+T(n-1,k)), T(n-1,k))` -/
def P13179915362003425739.Spec : Prop :=
  ∀ n, (P13179915362003425739.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P2265199085045965627

`T(col(n)*T(T(n-1,k+1)-T(n-1,k), T(n-1,k-1)), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P2265199085045965627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n * SequenceMachineLib.triAt a (((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P2265199085045965627

namespace A169591

/-- `T(col(n)*T(T(n-1,k+1)-T(n-1,k), T(n-1,k-1)), T(n-1,k))` -/
def P2265199085045965627.Spec : Prop :=
  ∀ n, (P2265199085045965627.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P8726619537008581632

`(1-(T(n-1,k)+T(n-1,k+1)*T(n-1,k-1)))*(1-T(n,k-1))` with `a(0)=1`
-/

namespace A169591.P8726619537008581632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpRight a n * SequenceMachineLib.triUpLeft a n)) * (1 - SequenceMachineLib.triLeft a n)

end

end A169591.P8726619537008581632

namespace A169591

/-- `(1-(T(n-1,k)+T(n-1,k+1)*T(n-1,k-1)))*(1-T(n,k-1))` -/
def P8726619537008581632.Spec : Prop :=
  ∀ n, P8726619537008581632.a n = A169591 n

end A169591

/-! ## A169591.P13292889513174220091

`(1-T(n-1,k))*(1-T(n,k-1))-T(n-1,k+1)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A169591.P13292889513174220091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - SequenceMachineLib.triUp a n) * (1 - SequenceMachineLib.triLeft a n) - SequenceMachineLib.triUpRight a n * SequenceMachineLib.triUpLeft a n

end

end A169591.P13292889513174220091

namespace A169591

/-- `(1-T(n-1,k))*(1-T(n,k-1))-T(n-1,k+1)*T(n-1,k-1)` -/
def P13292889513174220091.Spec : Prop :=
  ∀ n, P13292889513174220091.a n = A169591 n

end A169591

/-! ## A169591.P5658924068901202018

`(1-(T(n-1,k)+T(n-1,k+1)*T(n-1,k-1)))*(1-T(n-2,k-1))` with `a(0)=1`
-/

namespace A169591.P5658924068901202018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpRight a n * SequenceMachineLib.triUpLeft a n)) * (1 - SequenceMachineLib.triUp2Left a n)

end

end A169591.P5658924068901202018

namespace A169591

/-- `(1-(T(n-1,k)+T(n-1,k+1)*T(n-1,k-1)))*(1-T(n-2,k-1))` -/
def P5658924068901202018.Spec : Prop :=
  ∀ n, P5658924068901202018.a n = A169591 n

end A169591

/-! ## A169591.P5738826438606953291

`(1-T(n-1,k+1))*T(n-1,k-1)-(T(n-1,k-1)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A169591.P5738826438606953291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - SequenceMachineLib.triUpRight a n) * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - 1) * SequenceMachineLib.triUp2 a n

end

end A169591.P5738826438606953291

namespace A169591

/-- `(1-T(n-1,k+1))*T(n-1,k-1)-(T(n-1,k-1)-1)*T(n-2,k)` -/
def P5738826438606953291.Spec : Prop :=
  ∀ n, P5738826438606953291.a n = A169591 n

end A169591

/-! ## A169591.P15989720629142272840

`(1-T(n-1,k))*(1-T(n-2,k-1))-T(n-1,k+1)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A169591.P15989720629142272840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - SequenceMachineLib.triUp a n) * (1 - SequenceMachineLib.triUp2Left a n) - SequenceMachineLib.triUpRight a n * SequenceMachineLib.triUpLeft a n

end

end A169591.P15989720629142272840

namespace A169591

/-- `(1-T(n-1,k))*(1-T(n-2,k-1))-T(n-1,k+1)*T(n-1,k-1)` -/
def P15989720629142272840.Spec : Prop :=
  ∀ n, P15989720629142272840.a n = A169591 n

end A169591

/-! ## A169591.P10352633793234349373

`T(col(n)-(T(n-1,k-1)+T(n-1,k))*row(n), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P10352633793234349373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * SequenceMachineLib.triRow n : ℤ)) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P10352633793234349373

namespace A169591

/-- `T(col(n)-(T(n-1,k-1)+T(n-1,k))*row(n), T(n-1,k))` -/
def P10352633793234349373.Spec : Prop :=
  ∀ n, (P10352633793234349373.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P18032889594476423135

`T(col(n)*T(T(n-1,k+1), T(n-1,k-1)), row(n)*T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P18032889594476423135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) : ℤ) (SequenceMachineLib.triRow n * SequenceMachineLib.triUp a n : ℤ)

end

end A169591.P18032889594476423135

namespace A169591

/-- `T(col(n)*T(T(n-1,k+1), T(n-1,k-1)), row(n)*T(n-1,k))` -/
def P18032889594476423135.Spec : Prop :=
  ∀ n, (P18032889594476423135.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P4472483953477278911

`T(col(n)-row(n)*T(n-1,k-1), row(n)*T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P4472483953477278911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n * SequenceMachineLib.triUpLeft a n : ℤ)) (SequenceMachineLib.triRow n * SequenceMachineLib.triUp a n : ℤ)

end

end A169591.P4472483953477278911

namespace A169591

/-- `T(col(n)-row(n)*T(n-1,k-1), row(n)*T(n-1,k))` -/
def P4472483953477278911.Spec : Prop :=
  ∀ n, (P4472483953477278911.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P8847708217405120642

`T(T(n-1,k+1), T(T(n-1,k)-T(col(n), T(n-1,k+1)), T(n-1,k-1))+T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P8847708217405120642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (SequenceMachineLib.triAt a (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - ((SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) : ℕ) : ℤ)) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) + SequenceMachineLib.triUp a n : ℤ)

end

end A169591.P8847708217405120642

namespace A169591

/-- `T(T(n-1,k+1), T(T(n-1,k)-T(col(n), T(n-1,k+1)), T(n-1,k-1))+T(n-1,k))` -/
def P8847708217405120642.Spec : Prop :=
  ∀ n, (P8847708217405120642.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P15548781045034298896

`T(T(n-1,k+1)-T(T(n-1,k)-T(col(n), T(n-1,k+1)), T(n-1,k-1)), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P15548781045034298896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) - ((SequenceMachineLib.triAt a (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - ((SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) : ℕ) : ℤ)) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) : ℕ) : ℤ)) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P15548781045034298896

namespace A169591

/-- `T(T(n-1,k+1)-T(T(n-1,k)-T(col(n), T(n-1,k+1)), T(n-1,k-1)), T(n-1,k))` -/
def P15548781045034298896.Spec : Prop :=
  ∀ n, (P15548781045034298896.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P2442829613840857807

`T(col(n)*T(T(n-1,k-1)*T(T(n-1,k+1), T(n-1,k)), T(n-1,k)), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P2442829613840857807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n * SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P2442829613840857807

namespace A169591

/-- `T(col(n)*T(T(n-1,k-1)*T(T(n-1,k+1), T(n-1,k)), T(n-1,k)), T(n-1,k))` -/
def P2442829613840857807.Spec : Prop :=
  ∀ n, (P2442829613840857807.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P478948216005793268

`T(col(n)*T(T(n-1,k+1)+row(n)-2, 2), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P478948216005793268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n + SequenceMachineLib.triRow n : ℤ) - 2) 2 : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P478948216005793268

namespace A169591

/-- `T(col(n)*T(T(n-1,k+1)+row(n)-2, 2), T(n-1,k))` -/
def P478948216005793268.Spec : Prop :=
  ∀ n, (P478948216005793268.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P5218194611585495768

`T(T(row(n)-T(n-1,k+1), col(n)-1), 2*T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P5218194611585495768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ)) ((SequenceMachineLib.triCol n : ℤ) - 1) : ℕ) : ℤ) (2 * SequenceMachineLib.triUp a n : ℤ)

end

end A169591.P5218194611585495768

namespace A169591

/-- `T(T(row(n)-T(n-1,k+1), col(n)-1), 2*T(n-1,k))` -/
def P5218194611585495768.Spec : Prop :=
  ∀ n, (P5218194611585495768.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P7536516698629792094

`T(T(n-1,k+1), T(row(n)-(col(n)+1), T(n-1,k-1)+T(n-1,k+1)))` with `a(0)=1`
-/

namespace A169591.P7536516698629792094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)) (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n : ℤ) : ℕ) : ℤ)

end

end A169591.P7536516698629792094

namespace A169591

/-- `T(T(n-1,k+1), T(row(n)-(col(n)+1), T(n-1,k-1)+T(n-1,k+1)))` -/
def P7536516698629792094.Spec : Prop :=
  ∀ n, (P7536516698629792094.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P512178417940764446

`T(T(row(n)-T(n-1,k+1), col(n)-(T(n-1,k)+1)), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P512178417940764446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ)) ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triUp a n + 1 : ℤ)) : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P512178417940764446

namespace A169591

/-- `T(T(row(n)-T(n-1,k+1), col(n)-(T(n-1,k)+1)), T(n-1,k))` -/
def P512178417940764446.Spec : Prop :=
  ∀ n, (P512178417940764446.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P7733240981557108290

`T(col(n)-T(row(n)-1, T(n-1,k)-T(n-1,k+1)), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P7733240981557108290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ)) : ℕ) : ℤ)) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P7733240981557108290

namespace A169591

/-- `T(col(n)-T(row(n)-1, T(n-1,k)-T(n-1,k+1)), T(n-1,k))` -/
def P7733240981557108290.Spec : Prop :=
  ∀ n, (P7733240981557108290.a n : ℤ) = A169591 n

end A169591

/-! ## A169591.P5558889605892796882

`T(T(row(n)-(T(n-1,k-1)+col(n)+1), T(n-1,k)), T(n-1,k))` with `a(0)=1`
-/

namespace A169591.P5558889605892796882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triCol n + 1 : ℤ)) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A169591.P5558889605892796882

namespace A169591

/-- `T(T(row(n)-(T(n-1,k-1)+col(n)+1), T(n-1,k)), T(n-1,k))` -/
def P5558889605892796882.Spec : Prop :=
  ∀ n, (P5558889605892796882.a n : ℤ) = A169591 n

end A169591

/-!
# A169592: Expansion of 1/((1-x)*(1-x^2-x^4)) + x/(1-3*x^3).

The programs for A169592, the canonical program `A169592.P2600812424008536487` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169592 has offset 0).

The definition of A169592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2-4x^3+x^4-x^5+x^6)/(1-x-x^2-2x^3+2x^4+4x^5-3x^6+3x^7-3x^8))` (program `A169592.P2600812424008536487`, by `A169592.P2600812424008536487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169592.P2600812424008536487

`ogf((1+x-x^2-4x^3+x^4-x^5+x^6)/(1-x-x^2-2x^3+2x^4+4x^5-3x^6+3x^7-3x^8))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A169592

/-- `ogf((1+x-x^2-4x^3+x^4-x^5+x^6)/(1-x-x^2-2x^3+2x^4+4x^5-3x^6+3x^7-3x^8))` -/
def P2600812424008536487.Spec : Prop :=
  ∀ n, P2600812424008536487.a n = A169592 n

theorem P2600812424008536487.correct : P2600812424008536487.Spec := by
  intro n
  simp only [A169592]

end A169592

/-!
# A169594: Number of divisors of n, counting divisor multiplicity in n.

The programs for A169594, the canonical program `A169594.P8490939100282389348` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169594 has offset 1).

The definition of A169594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169594.P1999459021366258237

`A309891(n+1)+1`
-/

namespace A169594.P1999459021366258237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1) + 1

end

end A169594.P1999459021366258237

namespace A169594

/-- `A309891(n+1)+1` -/
def P1999459021366258237.Spec : Prop :=
  ∀ n, P1999459021366258237.a n = A169594 (n + 1)

theorem P1999459021366258237.correct : P1999459021366258237.Spec := by
  intro n
  simp only [A169594, Nat.add_sub_cancel, A169594.P1999459021366258237.a, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A089723, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A309891, A309891.P3186262545884816110.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169594

/-! ## A169594.P13883692678401515498

`A351923(n+1)-n`
-/

namespace A169594.P13883692678401515498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351923 (n + 1) - (n : ℤ)

end

end A169594.P13883692678401515498

namespace A169594

/-- `A351923(n+1)-n` -/
def P13883692678401515498.Spec : Prop :=
  ∀ n, P13883692678401515498.a n = A169594 (n + 1)

theorem P13883692678401515498.correct : P13883692678401515498.Spec := by
  intro n
  simp only [A169594, Nat.add_sub_cancel, A169594.P13883692678401515498.a, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A089723, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A351923, A351923.P5900735276508586646.a, A052409, A052409.P7338948793466901153.a, A309891, A309891.P3186262545884816110.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169594

/-! ## A169594.P8490939100282389348

`∑{d}[n+1, A089723(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A169594

/-- `∑{d}[n+1, A089723(#)]` -/
def P8490939100282389348.Spec : Prop :=
  ∀ n, P8490939100282389348.a n = A169594 (n + 1)

theorem P8490939100282389348.correct : P8490939100282389348.Spec := by
  intro n
  simp only [A169594, Nat.add_sub_cancel]

end A169594

/-! ## A169594.P10614244220510142048

`A342929(A101296(n+1))`
-/

namespace A169594.P10614244220510142048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342929 (A101296 (n + 1)).toNat

end

end A169594.P10614244220510142048

namespace A169594

/-- `A342929(A101296(n+1))` -/
def P10614244220510142048.Spec : Prop :=
  ∀ n, P10614244220510142048.a n = A169594 (n + 1)

end A169594

/-! ## A169594.P2235995340208063744

`∑{d}[n+1, A000005(A253641(#))]`
-/

namespace A169594.P2235995340208063744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A253641 d).toNat

end

end A169594.P2235995340208063744

namespace A169594

/-- `∑{d}[n+1, A000005(A253641(#))]` -/
def P2235995340208063744.Spec : Prop :=
  ∀ n, P2235995340208063744.a n = A169594 (n + 1)

end A169594

/-! ## A169594.P808471418010635286

`A001478(n+1)+A351923(n+1)+1`
-/

namespace A169594.P808471418010635286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A351923 (n + 1) + 1)

end

end A169594.P808471418010635286

namespace A169594

/-- `A001478(n+1)+A351923(n+1)+1` -/
def P808471418010635286.Spec : Prop :=
  ∀ n, P808471418010635286.a n = A169594 (n + 1)

theorem P808471418010635286.correct : P808471418010635286.Spec := by
  intro n
  simp only [A169594, Nat.add_sub_cancel, A169594.P808471418010635286.a, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A001478, A001478.P11279598861711037921.a, A089723, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A351923, A351923.P5900735276508586646.a, A052409, A052409.P7338948793466901153.a, A309891, A309891.P3186262545884816110.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169594

/-! ## A169594.P2323203546247705575

`A309947(A101296(n+1))+A112865(n)²`
-/

namespace A169594.P2323203546247705575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309947 (A101296 (n + 1)).toNat + A112865 n ^ 2

end

end A169594.P2323203546247705575

namespace A169594

/-- `A309947(A101296(n+1))+A112865(n)²` -/
def P2323203546247705575.Spec : Prop :=
  ∀ n, P2323203546247705575.a n = A169594 (n + 1)

end A169594

/-! ## A169594.P2545548322704292259

`A309947(A101296(n+1))+A173675(A089785(n+1))`
-/

namespace A169594.P2545548322704292259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309947 (A101296 (n + 1)).toNat + A173675 (A089785 (n + 1)).toNat

end

end A169594.P2545548322704292259

namespace A169594

/-- `A309947(A101296(n+1))+A173675(A089785(n+1))` -/
def P2545548322704292259.Spec : Prop :=
  ∀ n, P2545548322704292259.a n = A169594 (n + 1)

end A169594

/-! ## A169594.P7383821439038290653

`A334739(A087560(n+1))+1`
-/

namespace A169594.P7383821439038290653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334739 (A087560 (n + 1)).toNat + 1

end

end A169594.P7383821439038290653

namespace A169594

/-- `A334739(A087560(n+1))+1` -/
def P7383821439038290653.Spec : Prop :=
  ∀ n, P7383821439038290653.a n = A169594 (n + 1)

end A169594

/-! ## A169594.P15595755285439503717

`A056239(A293514(n+1))+1`
-/

namespace A169594.P15595755285439503717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat + 1

end

end A169594.P15595755285439503717

namespace A169594

/-- `A056239(A293514(n+1))+1` -/
def P15595755285439503717.Spec : Prop :=
  ∀ n, P15595755285439503717.a n = A169594 (n + 1)

end A169594

/-!
# A169595: Primes p such that sigma(p+2)=sigma(p-2).

The programs for A169595, there is no canonical definition to state claims against.
-/

/-! ## A169595.P17335818497753325692

`p?[A223091(n+1)]`
-/

namespace A169595.P17335818497753325692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169595.P17335818497753325692

/-! ## A169595.P11077445325081602295

`p?[A015863(n+1)+2]`
-/

namespace A169595.P11077445325081602295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015863 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169595.P11077445325081602295

/-! ## A169595.P2909018913428615936

`record[p?[A223091(A065648(n))]]`
-/

namespace A169595.P2909018913428615936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169595.P2909018913428615936

/-!
# A169596: Primes p such that sigma(p+3) = sigma(p-3).

The programs for A169596, there is no canonical definition to state claims against.
-/

/-! ## A169596.P6907581595440263705

`p?[A015866(n+1)+3]`
-/

namespace A169596.P6907581595440263705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015866 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169596.P6907581595440263705

/-! ## A169596.P12940590376679785213

`record[A020639(A015866(n+1)+3)]`
-/

namespace A169596.P12940590376679785213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A015866 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169596.P12940590376679785213

/-!
# A169597: Numbers that are congruent to {2, 15} mod 19.

The programs for A169597, the canonical program `A169597.P16863427561022920987` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169597 has offset 1).

The definition of A169597 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A169597.anchor (n : ℕ) (hn : 1 ≤ n) : A169597 n = (Nat.nth (fun k => k % 19 ∈ ({2, 15} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A169.A169597`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169597.P18191491618929755591

`ogf((2+13x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A169597.P18191491618929755591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 13, 4] [1, -1, -1, 1] n

end

end A169597.P18191491618929755591

namespace A169597

/-- `ogf((2+13x+4x^2)/(1-x-x^2+x^3))` -/
def P18191491618929755591.Spec : Prop :=
  ∀ n, P18191491618929755591.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P16863427561022920987

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=15, a(2)=21`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A169597

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16863427561022920987.Spec : Prop :=
  ∀ n, P16863427561022920987.a n = A169597 (n + 1)

theorem P16863427561022920987.correct : P16863427561022920987.Spec := by
  intro n
  simp only [A169597, Nat.add_sub_cancel]

end A169597

/-! ## A169597.P164132172785251738

`(38*(n+1)+7*(-1)^(n+1)-23)/4`
-/

namespace A169597.P164132172785251738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((38 * (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) - 23 : ℚ) / 4

end

end A169597.P164132172785251738

namespace A169597

/-- `(38*(n+1)+7*(-1)^(n+1)-23)/4` -/
def P164132172785251738.Spec : Prop :=
  ∀ n, P164132172785251738.a n = (A169597 (n + 1) : ℚ)

theorem P164132172785251738.correct : P164132172785251738.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169597, Nat.add_sub_cancel, A169597.P164132172785251738.a, A169597.P16863427561022920987.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169597, Nat.add_sub_cancel, A169597.P164132172785251738.a, A169597.P16863427561022920987.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A169597

/-! ## A169597.P17047203019598561133

`a(n-2)+19` with `a(0)=2, a(1)=15`
-/

namespace A169597.P17047203019598561133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 15] fun n a =>
  a (n - 2) + 19

end

end A169597.P17047203019598561133

namespace A169597

/-- `a(n-2)+19` -/
def P17047203019598561133.Spec : Prop :=
  ∀ n, (P17047203019598561133.a n : ℤ) = A169597 (n + 1)

end A169597

/-! ## A169597.P17208364705197173524

`∑[19-a(n-1)]` with `a(0)=2, a(1)=13`
-/

namespace A169597.P17208364705197173524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 13] fun n f1 =>
  19 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169597.P17208364705197173524

namespace A169597

/-- `∑[19-a(n-1)]` -/
def P17208364705197173524.Spec : Prop :=
  ∀ n, P17208364705197173524.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P6724834403445585377

`∑[7*n%2+6]-4`
-/

namespace A169597.P6724834403445585377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n % 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A169597.P6724834403445585377

namespace A169597

/-- `∑[7*n%2+6]-4` -/
def P6724834403445585377.Spec : Prop :=
  ∀ n, P6724834403445585377.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P705791530039751976

`19*n-2-a(n-1)` with `a(0)=2`
-/

namespace A169597.P705791530039751976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (19 * n : ℤ) - 2 - a (n - 1)

end

end A169597.P705791530039751976

namespace A169597

/-- `19*n-2-a(n-1)` -/
def P705791530039751976.Spec : Prop :=
  ∀ n, P705791530039751976.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P2909844059451402833

`∑[gcd(2, n+1)^3+5]-4`
-/

namespace A169597.P2909844059451402833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A169597.P2909844059451402833

namespace A169597

/-- `∑[gcd(2, n+1)^3+5]-4` -/
def P2909844059451402833.Spec : Prop :=
  ∀ n, P2909844059451402833.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P7048304913538946618

`A177964(n+1)+2*n`
-/

namespace A169597.P7048304913538946618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (n + 1) + (2 * n : ℤ)

end

end A169597.P7048304913538946618

namespace A169597

/-- `A177964(n+1)+2*n` -/
def P7048304913538946618.Spec : Prop :=
  ∀ n, P7048304913538946618.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P7491340407927377693

`A169598(n+1)-Δ[n²]`
-/

namespace A169597.P7491340407927377693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A169597.P7491340407927377693

namespace A169597

/-- `A169598(n+1)-Δ[n²]` -/
def P7491340407927377693.Spec : Prop :=
  ∀ n, P7491340407927377693.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P14143162923644834280

`∑[A010689(n)+1]+4*n`
-/

namespace A169597.P14143162923644834280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ)

end

end A169597.P14143162923644834280

namespace A169597

/-- `∑[A010689(n)+1]+4*n` -/
def P14143162923644834280.Spec : Prop :=
  ∀ n, P14143162923644834280.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P7145602570753802336

`A168333(n+1)+5*n+n`
-/

namespace A169597.P7145602570753802336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) + (5 * n : ℤ) + (n : ℤ)

end

end A169597.P7145602570753802336

namespace A169597

/-- `A168333(n+1)+5*n+n` -/
def P7145602570753802336.Spec : Prop :=
  ∀ n, P7145602570753802336.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P1586986457052206664

`A106389(n+1)+A016777(n)`
-/

namespace A169597.P1586986457052206664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (n + 1) + A016777 n

end

end A169597.P1586986457052206664

namespace A169597

/-- `A106389(n+1)+A016777(n)` -/
def P1586986457052206664.Spec : Prop :=
  ∀ n, P1586986457052206664.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P6351383777060679396

`A166539(n+1)+A008589(n)`
-/

namespace A169597.P6351383777060679396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1) + A008589 n

end

end A169597.P6351383777060679396

namespace A169597

/-- `A166539(n+1)+A008589(n)` -/
def P6351383777060679396.Spec : Prop :=
  ∀ n, P6351383777060679396.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P17910566666151200087

`A168333(n+1)+A008588(n)`
-/

namespace A169597.P17910566666151200087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) + A008588 n

end

end A169597.P17910566666151200087

namespace A169597

/-- `A168333(n+1)+A008588(n)` -/
def P17910566666151200087.Spec : Prop :=
  ∀ n, P17910566666151200087.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P8058129646252738167

`A168337(n+1)+A016921(n)`
-/

namespace A169597.P8058129646252738167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + A016921 n

end

end A169597.P8058129646252738167

namespace A169597

/-- `A168337(n+1)+A016921(n)` -/
def P8058129646252738167.Spec : Prop :=
  ∀ n, P8058129646252738167.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P16631421018369689140

`A168198(n+1)+A017077(n)`
-/

namespace A169597.P16631421018369689140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (n + 1) + A017077 n

end

end A169597.P16631421018369689140

namespace A169597

/-- `A168198(n+1)+A017077(n)` -/
def P16631421018369689140.Spec : Prop :=
  ∀ n, P16631421018369689140.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P2143676971922415055

`A168374(n+1)+A016933(n)`
-/

namespace A169597.P2143676971922415055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + A016933 n

end

end A169597.P2143676971922415055

namespace A169597

/-- `A168374(n+1)+A016933(n)` -/
def P2143676971922415055.Spec : Prop :=
  ∀ n, P2143676971922415055.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P18332966619188359555

`A168230(n+1)+A017185(n)`
-/

namespace A169597.P18332966619188359555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (n + 1) + A017185 n

end

end A169597.P18332966619188359555

namespace A169597

/-- `A168230(n+1)+A017185(n)` -/
def P18332966619188359555.Spec : Prop :=
  ∀ n, P18332966619188359555.a n = A169597 (n + 1)

end A169597

/-! ## A169597.P4334620790574017206

`A175885(n+1)+A016813(n)`
-/

namespace A169597.P4334620790574017206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) + A016813 n

end

end A169597.P4334620790574017206

namespace A169597

/-- `A175885(n+1)+A016813(n)` -/
def P4334620790574017206.Spec : Prop :=
  ∀ n, P4334620790574017206.a n = A169597 (n + 1)

end A169597

/-!
# A169598: Numbers that are congruent to {3,18} mod 23.

The programs for A169598, the canonical program `A169598.P16274772301720858273` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169598 has offset 1).

The definition of A169598 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A169598.anchor (n : ℕ) (hn : 1 ≤ n) : A169598 n = (Nat.nth (fun k => k % 23 ∈ ({3, 18} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A169.A169598`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169598.P14102349715942578410

`ogf((3+15x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A169598.P14102349715942578410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 15, 5] [1, -1, -1, 1] n

end

end A169598.P14102349715942578410

namespace A169598

/-- `ogf((3+15x+5x^2)/(1-x-x^2+x^3))` -/
def P14102349715942578410.Spec : Prop :=
  ∀ n, P14102349715942578410.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P16274772301720858273

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=18, a(2)=26`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A169598

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16274772301720858273.Spec : Prop :=
  ∀ n, P16274772301720858273.a n = A169598 (n + 1)

theorem P16274772301720858273.correct : P16274772301720858273.Spec := by
  intro n
  simp only [A169598, Nat.add_sub_cancel]

end A169598

/-! ## A169598.P17116796440232832413

`(46*(n+1)+7*(-1)^(n+1)-27)/4`
-/

namespace A169598.P17116796440232832413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((46 * (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) - 27 : ℚ) / 4

end

end A169598.P17116796440232832413

namespace A169598

/-- `(46*(n+1)+7*(-1)^(n+1)-27)/4` -/
def P17116796440232832413.Spec : Prop :=
  ∀ n, P17116796440232832413.a n = (A169598 (n + 1) : ℚ)

theorem P17116796440232832413.correct : P17116796440232832413.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169598, Nat.add_sub_cancel, A169598.P17116796440232832413.a, A169598.P16274772301720858273.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169598, Nat.add_sub_cancel, A169598.P17116796440232832413.a, A169598.P16274772301720858273.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A169598

/-! ## A169598.P5679920809534809504

`a(n-2)+23` with `a(0)=3, a(1)=18`
-/

namespace A169598.P5679920809534809504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 18] fun n a =>
  a (n - 2) + 23

end

end A169598.P5679920809534809504

namespace A169598

/-- `a(n-2)+23` -/
def P5679920809534809504.Spec : Prop :=
  ∀ n, (P5679920809534809504.a n : ℤ) = A169598 (n + 1)

end A169598

/-! ## A169598.P5330615571391265290

`∑[23-a(n-1)]` with `a(0)=3, a(1)=15`
-/

namespace A169598.P5330615571391265290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 15] fun n f1 =>
  23 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169598.P5330615571391265290

namespace A169598

/-- `∑[23-a(n-1)]` -/
def P5330615571391265290.Spec : Prop :=
  ∀ n, P5330615571391265290.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P2190988367072912389

`23*n-2-a(n-1)` with `a(0)=3`
-/

namespace A169598.P2190988367072912389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (23 * n : ℤ) - 2 - a (n - 1)

end

end A169598.P2190988367072912389

namespace A169598

/-- `23*n-2-a(n-1)` -/
def P2190988367072912389.Spec : Prop :=
  ∀ n, P2190988367072912389.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P15613251941933835769

`A169597(n+1)+Δ[n²]`
-/

namespace A169598.P15613251941933835769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169597 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A169598.P15613251941933835769

namespace A169598

/-- `A169597(n+1)+Δ[n²]` -/
def P15613251941933835769.Spec : Prop :=
  ∀ n, P15613251941933835769.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P4062281684598958755

`∑[A103947(n)²]-(n-2)`
-/

namespace A169598.P4062281684598958755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 2)

end

end A169598.P4062281684598958755

namespace A169598

/-- `∑[A103947(n)²]-(n-2)` -/
def P4062281684598958755.Spec : Prop :=
  ∀ n, P4062281684598958755.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P11787810444762128680

`A168333(n+1)+8*n+1`
-/

namespace A169598.P11787810444762128680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) + (8 * n + 1 : ℤ)

end

end A169598.P11787810444762128680

namespace A169598

/-- `A168333(n+1)+8*n+1` -/
def P11787810444762128680.Spec : Prop :=
  ∀ n, P11787810444762128680.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P12853384995813192331

`A106389(n+1)+A016873(n)`
-/

namespace A169598.P12853384995813192331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (n + 1) + A016873 n

end

end A169598.P12853384995813192331

namespace A169598

/-- `A106389(n+1)+A016873(n)` -/
def P12853384995813192331.Spec : Prop :=
  ∀ n, P12853384995813192331.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P2317435200535394712

`A168331(n+1)+A008590(n)`
-/

namespace A169598.P2317435200535394712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168331 (n + 1) + A008590 n

end

end A169598.P2317435200535394712

namespace A169598

/-- `A168331(n+1)+A008590(n)` -/
def P2317435200535394712.Spec : Prop :=
  ∀ n, P2317435200535394712.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P930819950041898137

`A166539(n+1)+A017173(n)`
-/

namespace A169598.P930819950041898137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1) + A017173 n

end

end A169598.P930819950041898137

namespace A169598

/-- `A166539(n+1)+A017173(n)` -/
def P930819950041898137.Spec : Prop :=
  ∀ n, P930819950041898137.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P4051271811723710019

`A168337(n+1)+A017089(n)`
-/

namespace A169598.P4051271811723710019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + A017089 n

end

end A169598.P4051271811723710019

namespace A169598

/-- `A168337(n+1)+A017089(n)` -/
def P4051271811723710019.Spec : Prop :=
  ∀ n, P4051271811723710019.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P11968626392832934947

`A168374(n+1)+A017101(n)`
-/

namespace A169598.P11968626392832934947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + A017101 n

end

end A169598.P11968626392832934947

namespace A169598

/-- `A168374(n+1)+A017101(n)` -/
def P11968626392832934947.Spec : Prop :=
  ∀ n, P11968626392832934947.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P12530462724249109141

`A168198(n+1)+A017293(n)`
-/

namespace A169598.P12530462724249109141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (n + 1) + A017293 n

end

end A169598.P12530462724249109141

namespace A169598

/-- `A168198(n+1)+A017293(n)` -/
def P12530462724249109141.Spec : Prop :=
  ∀ n, P12530462724249109141.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P8542431080422937941

`A168230(n+1)+A017425(n)`
-/

namespace A169598.P8542431080422937941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (n + 1) + A017425 n

end

end A169598.P8542431080422937941

namespace A169598

/-- `A168230(n+1)+A017425(n)` -/
def P8542431080422937941.Spec : Prop :=
  ∀ n, P8542431080422937941.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P13144602707381758558

`A175885(n+1)+A016933(n)`
-/

namespace A169598.P13144602707381758558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) + A016933 n

end

end A169598.P13144602707381758558

namespace A169598

/-- `A175885(n+1)+A016933(n)` -/
def P13144602707381758558.Spec : Prop :=
  ∀ n, P13144602707381758558.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P9128228456560099687

`A177964(n+1)+A016813(n)`
-/

namespace A169598.P9128228456560099687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (n + 1) + A016813 n

end

end A169598.P9128228456560099687

namespace A169598

/-- `A177964(n+1)+A016813(n)` -/
def P9128228456560099687.Spec : Prop :=
  ∀ n, P9128228456560099687.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P9015310788297606463

`A274406(n+1)+A017017(n)`
-/

namespace A169598.P9015310788297606463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) + A017017 n

end

end A169598.P9015310788297606463

namespace A169598

/-- `A274406(n+1)+A017017(n)` -/
def P9015310788297606463.Spec : Prop :=
  ∀ n, P9015310788297606463.a n = A169598 (n + 1)

end A169598

/-! ## A169598.P16169755406335571542

`A306279(n+1)+A004526(n)`
-/

namespace A169598.P16169755406335571542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306279 (n + 1) + A004526 n

end

end A169598.P16169755406335571542

namespace A169598

/-- `A306279(n+1)+A004526(n)` -/
def P16169755406335571542.Spec : Prop :=
  ∀ n, P16169755406335571542.a n = A169598 (n + 1)

end A169598

/-!
# A169599: Numbers that are congruent to {4, 23} mod 29.

The programs for A169599, the canonical program `A169599.P14272095727077025928` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169599 has offset 1).

The definition of A169599 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A169599.anchor (n : ℕ) (hn : 1 ≤ n) : A169599 n = (Nat.nth (fun k => k % 29 ∈ ({4, 23} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A169.A169599`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169599.P7283427071912758077

`ogf((4+19x+6x^2)/(1-x-x^2+x^3))`
-/

namespace A169599.P7283427071912758077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 19, 6] [1, -1, -1, 1] n

end

end A169599.P7283427071912758077

namespace A169599

/-- `ogf((4+19x+6x^2)/(1-x-x^2+x^3))` -/
def P7283427071912758077.Spec : Prop :=
  ∀ n, P7283427071912758077.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P14272095727077025928

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=23, a(2)=33`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A169599

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P14272095727077025928.Spec : Prop :=
  ∀ n, P14272095727077025928.a n = A169599 (n + 1)

theorem P14272095727077025928.correct : P14272095727077025928.Spec := by
  intro n
  simp only [A169599, Nat.add_sub_cancel]

end A169599

/-! ## A169599.P17245689036067862884

`(58*(n+1)+9*(-1)^(n+1)-33)/4`
-/

namespace A169599.P17245689036067862884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((58 * (n + 1) : ℤ) + 9 * (-1) ^ (n + 1) - 33 : ℚ) / 4

end

end A169599.P17245689036067862884

namespace A169599

/-- `(58*(n+1)+9*(-1)^(n+1)-33)/4` -/
def P17245689036067862884.Spec : Prop :=
  ∀ n, P17245689036067862884.a n = (A169599 (n + 1) : ℚ)

theorem P17245689036067862884.correct : P17245689036067862884.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169599, Nat.add_sub_cancel, A169599.P17245689036067862884.a, A169599.P14272095727077025928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169599, Nat.add_sub_cancel, A169599.P17245689036067862884.a, A169599.P14272095727077025928.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A169599

/-! ## A169599.P10249415564453583340

`a(n-2)+29` with `a(0)=4, a(1)=23`
-/

namespace A169599.P10249415564453583340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 23] fun n a =>
  a (n - 2) + 29

end

end A169599.P10249415564453583340

namespace A169599

/-- `a(n-2)+29` -/
def P10249415564453583340.Spec : Prop :=
  ∀ n, (P10249415564453583340.a n : ℤ) = A169599 (n + 1)

end A169599

/-! ## A169599.P12416997557790234932

`∑[29-a(n-1)]` with `a(0)=4, a(1)=19`
-/

namespace A169599.P12416997557790234932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 19] fun n f1 =>
  29 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169599.P12416997557790234932

namespace A169599

/-- `∑[29-a(n-1)]` -/
def P12416997557790234932.Spec : Prop :=
  ∀ n, P12416997557790234932.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P5513828511104707054

`29*n-2-a(n-1)` with `a(0)=4`
-/

namespace A169599.P5513828511104707054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (29 * n : ℤ) - 2 - a (n - 1)

end

end A169599.P5513828511104707054

namespace A169599

/-- `29*n-2-a(n-1)` -/
def P5513828511104707054.Spec : Prop :=
  ∀ n, P5513828511104707054.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P1001640555062084319

`3*A301451(n+1)+n+1`
-/

namespace A169599.P1001640555062084319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A301451 (n + 1) + (n + 1 : ℤ)

end

end A169599.P1001640555062084319

namespace A169599

/-- `3*A301451(n+1)+n+1` -/
def P1001640555062084319.Spec : Prop :=
  ∀ n, P1001640555062084319.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P10896676060667118203

`A168401(n+1)+A008592(n)`
-/

namespace A169599.P10896676060667118203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168401 (n + 1) + A008592 n

end

end A169599.P10896676060667118203

namespace A169599

/-- `A168401(n+1)+A008592(n)` -/
def P10896676060667118203.Spec : Prop :=
  ∀ n, P10896676060667118203.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P7191119162533558452

`A168410(n+1)+A017281(n)`
-/

namespace A169599.P7191119162533558452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168410 (n + 1) + A017281 n

end

end A169599.P7191119162533558452

namespace A169599

/-- `A168410(n+1)+A017281(n)` -/
def P7191119162533558452.Spec : Prop :=
  ∀ n, P7191119162533558452.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P6457583173926732465

`A168413(n+1)+A017293(n)`
-/

namespace A169599.P6457583173926732465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (n + 1) + A017293 n

end

end A169599.P6457583173926732465

namespace A169599

/-- `A168413(n+1)+A017293(n)` -/
def P6457583173926732465.Spec : Prop :=
  ∀ n, P6457583173926732465.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P15715305618638711877

`A168416(n+1)+A017305(n)`
-/

namespace A169599.P15715305618638711877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168416 (n + 1) + A017305 n

end

end A169599.P15715305618638711877

namespace A169599

/-- `A168416(n+1)+A017305(n)` -/
def P15715305618638711877.Spec : Prop :=
  ∀ n, P15715305618638711877.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P1664801684041668631

`A168419(n+1)+A017317(n)`
-/

namespace A169599.P1664801684041668631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (n + 1) + A017317 n

end

end A169599.P1664801684041668631

namespace A169599

/-- `A168419(n+1)+A017317(n)` -/
def P1664801684041668631.Spec : Prop :=
  ∀ n, P1664801684041668631.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P4212218461481818278

`A175886(n+1)+A017101(n)`
-/

namespace A169599.P4212218461481818278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (n + 1) + A017101 n

end

end A169599.P4212218461481818278

namespace A169599

/-- `A175886(n+1)+A017101(n)` -/
def P4212218461481818278.Spec : Prop :=
  ∀ n, P4212218461481818278.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P14759875477292709847

`A306285(n+1)+A007494(n)`
-/

namespace A169599.P14759875477292709847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + A007494 n

end

end A169599.P14759875477292709847

namespace A169599

/-- `A306285(n+1)+A007494(n)` -/
def P14759875477292709847.Spec : Prop :=
  ∀ n, P14759875477292709847.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P13518809966594159042

`A084967(n+1)-A080513(n)`
-/

namespace A169599.P13518809966594159042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 1) - A080513 n

end

end A169599.P13518809966594159042

namespace A169599

/-- `A084967(n+1)-A080513(n)` -/
def P13518809966594159042.Spec : Prop :=
  ∀ n, P13518809966594159042.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P3412690709335276908

`A156674(n+1)-A017341(n)`
-/

namespace A169599.P3412690709335276908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - A017341 n

end

end A169599.P3412690709335276908

namespace A169599

/-- `A156674(n+1)-A017341(n)` -/
def P3412690709335276908.Spec : Prop :=
  ∀ n, P3412690709335276908.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P11614900081617001029

`A147587(n)+A152832(n)-1`
-/

namespace A169599.P11614900081617001029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n + (A152832 n - 1)

end

end A169599.P11614900081617001029

namespace A169599

/-- `A147587(n)+A152832(n)-1` -/
def P11614900081617001029.Spec : Prop :=
  ∀ n, P11614900081617001029.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P8675122874790549387

`A152832(n)+A186113(n)+n`
-/

namespace A169599.P8675122874790549387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 n + (A186113 n + (n : ℤ))

end

end A169599.P8675122874790549387

namespace A169599

/-- `A152832(n)+A186113(n)+n` -/
def P8675122874790549387.Spec : Prop :=
  ∀ n, P8675122874790549387.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P3161043356243812078

`A169598(n+1)+A007310(n+1)`
-/

namespace A169599.P3161043356243812078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169598 (n + 1) + A007310 (n + 1)

end

end A169599.P3161043356243812078

namespace A169599

/-- `A169598(n+1)+A007310(n+1)` -/
def P3161043356243812078.Spec : Prop :=
  ∀ n, P3161043356243812078.a n = A169599 (n + 1)

end A169599

/-! ## A169599.P12556737210004254043

`A134965(n+1)+A106389(n+1)`
-/

namespace A169599.P12556737210004254043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134965 (n + 1) + A106389 (n + 1)

end

end A169599.P12556737210004254043

namespace A169599

/-- `A134965(n+1)+A106389(n+1)` -/
def P12556737210004254043.Spec : Prop :=
  ∀ n, P12556737210004254043.a n = A169599 (n + 1)

end A169599

