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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B014.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A166003: Primes p such that p+-1, p+-2 and p+-3 are not squarefree.

The programs for A166003, there is no canonical definition to state claims against.
-/

/-! ## A166003.P5314251390606463171

`∩[A153214(n+1), A153215(n+1)]`
-/

namespace A166003.P5314251390606463171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166003.P5314251390606463171

/-! ## A166003.P17352677243742638396

`∩[A153214(n+1), A268332(n+1)]`
-/

namespace A166003.P17352677243742638396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166003.P17352677243742638396

/-! ## A166003.P9304583077978640192

`∩[A153215(n+1), A268332(n+1)]`
-/

namespace A166003.P9304583077978640192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166003.P9304583077978640192

/-! ## A166003.P1712125343526269926

`p?[A268332(n+1)]`
-/

namespace A166003.P1712125343526269926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166003.P1712125343526269926

/-! ## A166003.P4675620368239050271

`p?[record[A268332(A052938(n))]]`
-/

namespace A166003.P4675620368239050271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268332 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166003.P4675620368239050271

/-!
# A166005: Primes p such that 8*p+15 is also a prime.

The programs for A166005, the canonical program `A166005.P10496347403771617545` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166005 has offset 1).

The definition of A166005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166005.P10496347403771617545

`p?[floor(p?[8*n-1]/8)-1]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166005

/-- `p?[floor(p?[8*n-1]/8)-1]` -/
def P10496347403771617545.Spec : Prop :=
  ∀ n, P10496347403771617545.a n = A166005 (n + 1)

theorem P10496347403771617545.correct : P10496347403771617545.Spec := by
  intro n
  simp only [A166005, Nat.add_sub_cancel]

end A166005

/-! ## A166005.P14140836639567042185

`p?[A139487(n+1)-1]`
-/

namespace A166005.P14140836639567042185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P14140836639567042185

namespace A166005

/-- `p?[A139487(n+1)-1]` -/
def P14140836639567042185.Spec : Prop :=
  ∀ n, P14140836639567042185.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P4231789689647960723

`p?[A005122(n+1)-2]`
-/

namespace A166005.P4231789689647960723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P4231789689647960723

namespace A166005

/-- `p?[A005122(n+1)-2]` -/
def P4231789689647960723.Spec : Prop :=
  ∀ n, P4231789689647960723.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P12223593465389560926

`p?[A153766(n+1)-3]`
-/

namespace A166005.P12223593465389560926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P12223593465389560926

namespace A166005

/-- `p?[A153766(n+1)-3]` -/
def P12223593465389560926.Spec : Prop :=
  ∀ n, P12223593465389560926.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P3542396626804577925

`p?[floor(A045382(n+1)/8)-1]`
-/

namespace A166005.P3542396626804577925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045382 (n + 1) : ℚ) / 8⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P3542396626804577925

namespace A166005

/-- `p?[floor(A045382(n+1)/8)-1]` -/
def P3542396626804577925.Spec : Prop :=
  ∀ n, P3542396626804577925.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P11872374420206378415

`p?[ceil(A007522(n+1)/8)-2]`
-/

namespace A166005.P11872374420206378415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007522 (n + 1) : ℚ) / 8⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P11872374420206378415

namespace A166005

/-- `p?[ceil(A007522(n+1)/8)-2]` -/
def P11872374420206378415.Spec : Prop :=
  ∀ n, P11872374420206378415.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P6815166513595684104

`record[A020639(A139487(n+4)-1)]`
-/

namespace A166005.P6815166513595684104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139487 (n + 4) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166005.P6815166513595684104

namespace A166005

/-- `record[A020639(A139487(n+4)-1)]` -/
def P6815166513595684104.Spec : Prop :=
  ∀ n, P6815166513595684104.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P15090491648846296221

`∩[A000040(n+1), A139487(n+1)-1]`
-/

namespace A166005.P15090491648846296221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166005.P15090491648846296221

namespace A166005

/-- `∩[A000040(n+1), A139487(n+1)-1]` -/
def P15090491648846296221.Spec : Prop :=
  ∀ n, (P15090491648846296221.a n : ℤ) = A166005 (n + 1)

end A166005

/-! ## A166005.P4668517757367806834

`∩[A000040(n+1), A005122(n+1)-2]`
-/

namespace A166005.P4668517757367806834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166005.P4668517757367806834

namespace A166005

/-- `∩[A000040(n+1), A005122(n+1)-2]` -/
def P4668517757367806834.Spec : Prop :=
  ∀ n, (P4668517757367806834.a n : ℤ) = A166005 (n + 1)

end A166005

/-! ## A166005.P15393095358551435060

`∩[A005122(n+1)-2, A045319(n+1)]`
-/

namespace A166005.P15393095358551435060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166005.P15393095358551435060

namespace A166005

/-- `∩[A005122(n+1)-2, A045319(n+1)]` -/
def P15393095358551435060.Spec : Prop :=
  ∀ n, (P15393095358551435060.a n : ℤ) = A166005 (n + 1)

end A166005

/-! ## A166005.P8357295169109010981

`∩[A008578(n+2), A139487(n+2)-1]`
-/

namespace A166005.P8357295169109010981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166005.P8357295169109010981

namespace A166005

/-- `∩[A008578(n+2), A139487(n+2)-1]` -/
def P8357295169109010981.Spec : Prop :=
  ∀ n, (P8357295169109010981.a n : ℤ) = A166005 (n + 1)

end A166005

/-! ## A166005.P537192779104410182

`record[A020639(abs(4-A186303(n+4)/4)+2)]`
-/

namespace A166005.P537192779104410182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (|4 - (A186303 (n + 4) : ℚ) / 4| + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166005.P537192779104410182

namespace A166005

/-- `record[A020639(abs(4-A186303(n+4)/4)+2)]` -/
def P537192779104410182.Spec : Prop :=
  ∀ n, P537192779104410182.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P5591855199804574973

`p?[n-A258835((n+1)%A258835(n))]`
-/

namespace A166005.P5591855199804574973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A258835 (Int.tmod (n + 1 : ℤ) (A258835 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P5591855199804574973

namespace A166005

/-- `p?[n-A258835((n+1)%A258835(n))]` -/
def P5591855199804574973.Spec : Prop :=
  ∀ n, P5591855199804574973.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P3551499247741976032

`p?[A101264(A004769(n))+A005843(n)]`
-/

namespace A166005.P3551499247741976032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004769 n).toNat + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P3551499247741976032

namespace A166005

/-- `p?[A101264(A004769(n))+A005843(n)]` -/
def P3551499247741976032.Spec : Prop :=
  ∀ n, P3551499247741976032.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P15234177997658955650

`p?[A261931(A005122(n+1))]`
-/

namespace A166005.P15234177997658955650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261931 (A005122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P15234177997658955650

namespace A166005

/-- `p?[A261931(A005122(n+1))]` -/
def P15234177997658955650.Spec : Prop :=
  ∀ n, P15234177997658955650.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P6997247658590481380

`p?[A143051(A139487(n+1))]`
-/

namespace A166005.P6997247658590481380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A139487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P6997247658590481380

namespace A166005

/-- `p?[A143051(A139487(n+1))]` -/
def P6997247658590481380.Spec : Prop :=
  ∀ n, P6997247658590481380.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P2123574938117448216

`p?[A246425(A095278(n+1))-2]`
-/

namespace A166005.P2123574938117448216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A095278 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P2123574938117448216

namespace A166005

/-- `p?[A246425(A095278(n+1))-2]` -/
def P2123574938117448216.Spec : Prop :=
  ∀ n, P2123574938117448216.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P7527676115380290806

`p?[n*A001222(A004771(n+1))]`
-/

namespace A166005.P7527676115380290806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A004771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166005.P7527676115380290806

namespace A166005

/-- `p?[n*A001222(A004771(n+1))]` -/
def P7527676115380290806.Spec : Prop :=
  ∀ n, P7527676115380290806.a n = A166005 (n + 1)

end A166005

/-! ## A166005.P782282832315154149

`p?[eq[3, A136019(2*n+3)]]`
-/

namespace A166005.P782282832315154149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166005.P782282832315154149

namespace A166005

/-- `p?[eq[3, A136019(2*n+3)]]` -/
def P782282832315154149.Spec : Prop :=
  ∀ n, (P782282832315154149.a n : ℤ) = A166005 (n + 1)

end A166005

/-!
# A166006: Distance from the origin using the binary expansion of Pi to walk the number line: Start at the origin; subtract one for each '0' digit, and add one for each '1' digit.

The programs for A166006, there is no canonical definition to state claims against.
-/

/-! ## A166006.P13013291255821396527

`∑[or(1, -A180433(n+1))]`
-/

namespace A166006.P13013291255821396527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A180433 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166006.P13013291255821396527

/-! ## A166006.P3510907817485554432

`∑[2*A004601(n+2)-1]`
-/

namespace A166006.P3510907817485554432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004601 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166006.P3510907817485554432

/-! ## A166006.P4006976871537947390

`∑[A158388(∑[A155482(n)])]`
-/

namespace A166006.P4006976871537947390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166006.P4006976871537947390

/-! ## A166006.P11567516666489802555

`A004273(∑[A004601(n+2)])-n`
-/

namespace A166006.P11567516666489802555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A166006.P11567516666489802555

/-! ## A166006.P2550292174076724285

`A005843(∑[A004601(n+2)])-(n+1)`
-/

namespace A166006.P2550292174076724285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A166006.P2550292174076724285

/-! ## A166006.P3227124029893997070

`∑[A004601(n+2)-A180433(n+1)]`
-/

namespace A166006.P3227124029893997070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2) - A180433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166006.P3227124029893997070

/-! ## A166006.P8947162139596081558

`∑[A309873(A016825(n)+A004601(n+2))]`
-/

namespace A166006.P8947162139596081558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n + A004601 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166006.P8947162139596081558

/-! ## A166006.P5428073115284672076

`∑[A128130(A017077(n)-A004601(n+2))]`
-/

namespace A166006.P5428073115284672076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (A017077 n - A004601 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166006.P5428073115284672076

/-! ## A166006.P4515331010884409282

`A114327(∑[A180433(n+1)+1+n])`
-/

namespace A166006.P4515331010884409282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166006.P4515331010884409282

/-! ## A166006.P91048006236666934

`∑[∑[A006319(n)*A155482(n)]%2]`
-/

namespace A166006.P91048006236666934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n * A155482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166006.P91048006236666934

/-!
# A166007: Number of ones in the binary representation of the middle member q of the prime triple (p,q,r) with p

The programs for A166007, there is no canonical definition to state claims against.
-/

/-! ## A166007.P14790329007454369936

`A035531(A098414(n+1))`
-/

namespace A166007.P14790329007454369936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (A098414 (n + 1)).toNat

end

end A166007.P14790329007454369936

/-! ## A166007.P6889395410513995742

`∑{d}[A151800(A007529(n+1)), A035531(#)]`
-/

namespace A166007.P6889395410513995742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035531 d

end

end A166007.P6889395410513995742

/-! ## A166007.P11608011395486041215

`∏{d}[A007529(n+1), A035531(A151800(#))]`
-/

namespace A166007.P11608011395486041215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A035531 (A151800 d).toNat

end

end A166007.P11608011395486041215

/-! ## A166007.P2439794199635448163

`A035531(∑{p}[A007529(n+1), A151800(#)])`
-/

namespace A166007.P2439794199635448163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p).toNat

end

end A166007.P2439794199635448163

/-! ## A166007.P91329051967825414

`A000523(A001316(p?[A098414(n+1)]))`
-/

namespace A166007.P91329051967825414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A166007.P91329051967825414

/-! ## A166007.P4452097505777100190

`A000523(∑{d}[A098414(n+1), A001316(#)])`
-/

namespace A166007.P4452097505777100190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ d ∈ Nat.divisors (f1 n).natAbs, A001316 d).toNat

end

end A166007.P4452097505777100190

/-! ## A166007.P14807835776903045041

`∑{digits}[A007088(A098414(n+1)), A004525(#)]`
-/

namespace A166007.P14807835776903045041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A098414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004525 x).sum

end

end A166007.P14807835776903045041

/-! ## A166007.P18014729134274051649

`∑{digits}[A007088(A098414(n+1)), A007088(#)]`
-/

namespace A166007.P18014729134274051649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A098414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007088 x).sum

end

end A166007.P18014729134274051649

/-! ## A166007.P13831045867213688307

`A001222(A268444(p?[A098414(n+1)]))`
-/

namespace A166007.P13831045867213688307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A166007.P13831045867213688307

/-! ## A166007.P3314345996671745376

`A072084(p?[A098414(n+1)])`
-/

namespace A166007.P3314345996671745376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166007.P3314345996671745376

/-! ## A166007.P14332095457328768351

`A072084(or(1, A098414(n+1)))`
-/

namespace A166007.P14332095457328768351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (Int.lor 1 (A098414 (n + 1))).toNat

end

end A166007.P14332095457328768351

/-! ## A166007.P2725193387571025957

`A072084(∏{d}[A098414(n+1), #])`
-/

namespace A166007.P2725193387571025957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A166007.P2725193387571025957

/-! ## A166007.P986902253824357886

`A072084(∑{p}[A098414(n+1), #])`
-/

namespace A166007.P986902253824357886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A166007.P986902253824357886

/-! ## A166007.P6092103518675932983

`A000120(A098414(n+1)-1)+1`
-/

namespace A166007.P6092103518675932983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A098414 (n + 1) - 1).toNat + 1

end

end A166007.P6092103518675932983

/-! ## A166007.P6853875205944480086

`A072084(∑{d}[A098414(n+1), #]-1)`
-/

namespace A166007.P6853875205944480086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (∑ d ∈ Nat.divisors (f1 n).natAbs, d - 1)

end

end A166007.P6853875205944480086

/-! ## A166007.P1470944654249852194

`A072084(∑{d}[A098414(n+1), A000010(#)])`
-/

namespace A166007.P1470944654249852194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A166007.P1470944654249852194

/-! ## A166007.P16363337816379000691

`A072084(A098414(n+1))%A004676(n+1)`
-/

namespace A166007.P16363337816379000691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072084 (A098414 (n + 1)).toNat) (A004676 (n + 1))

end

end A166007.P16363337816379000691

/-!
# A166008: Number of ones in the binary representation of the average of twin prime pairs.

The programs for A166008, the canonical program `A166008.P17506385708183436631` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166008 has offset 1).

The definition of A166008 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166008.P17506385708183436631

`A000120(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A166008

/-- `A000120(A014574(n+1))` -/
def P17506385708183436631.Spec : Prop :=
  ∀ n, P17506385708183436631.a n = A166008 (n + 1)

theorem P17506385708183436631.correct : P17506385708183436631.Spec := by
  intro n
  simp only [A166008, Nat.add_sub_cancel]

end A166008

/-! ## A166008.P238465888863946224

`val(A001316(A040040(n+1)), 2)`
-/

namespace A166008.P238465888863946224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A040040 (n + 1)).toNat).toNat 2

end

end A166008.P238465888863946224

namespace A166008

/-- `val(A001316(A040040(n+1)), 2)` -/
def P238465888863946224.Spec : Prop :=
  ∀ n, (P238465888863946224.a n : ℤ) = A166008 (n + 1)

end A166008

/-! ## A166008.P10565982722375821338

`∑{e}[A001316(A014574(n+1)/2), #]`
-/

namespace A166008.P10565982722375821338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A166008.P10565982722375821338

namespace A166008

/-- `∑{e}[A001316(A014574(n+1)/2), #]` -/
def P10565982722375821338.Spec : Prop :=
  ∀ n, (P10565982722375821338.a n : ℤ) = A166008 (n + 1)

end A166008

/-! ## A166008.P11786264612328917441

`A295660(A006512(n+1))`
-/

namespace A166008.P11786264612328917441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A006512 (n + 1)).toNat

end

end A166008.P11786264612328917441

namespace A166008

/-- `A295660(A006512(n+1))` -/
def P11786264612328917441.Spec : Prop :=
  ∀ n, P11786264612328917441.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P16561681028437381973

`A295660(A094743(n+2))`
-/

namespace A166008.P16561681028437381973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A094743 (n + 2)).toNat

end

end A166008.P16561681028437381973

namespace A166008

/-- `A295660(A094743(n+2))` -/
def P16561681028437381973.Spec : Prop :=
  ∀ n, P16561681028437381973.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P27247686900964206

`A295660(A001359(n+1)+2)`
-/

namespace A166008.P27247686900964206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A001359 (n + 1) + 2).toNat

end

end A166008.P27247686900964206

namespace A166008

/-- `A295660(A001359(n+1)+2)` -/
def P27247686900964206.Spec : Prop :=
  ∀ n, P27247686900964206.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P3866785789377428149

`A295660(A176810(n+1)/2)`
-/

namespace A166008.P3866785789377428149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (SequenceMachineLib.roundAway ((A176810 (n + 1) : ℚ) / 2)).toNat

end

end A166008.P3866785789377428149

namespace A166008

/-- `A295660(A176810(n+1)/2)` -/
def P3866785789377428149.Spec : Prop :=
  ∀ n, P3866785789377428149.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P11895637792198734550

`A000005(A001316(A014574(n+1))/2)`
-/

namespace A166008.P11895637792198734550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001316 (A014574 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A166008.P11895637792198734550

namespace A166008

/-- `A000005(A001316(A014574(n+1))/2)` -/
def P11895637792198734550.Spec : Prop :=
  ∀ n, P11895637792198734550.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P11796111186082640823

`A000005(A001316(A014574(n+1)+1))-2`
-/

namespace A166008.P11796111186082640823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 (A014574 (n + 1) + 1).toNat).toNat - 2

end

end A166008.P11796111186082640823

namespace A166008

/-- `A000005(A001316(A014574(n+1)+1))-2` -/
def P11796111186082640823.Spec : Prop :=
  ∀ n, P11796111186082640823.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P18191830254687939877

`A295660(A176810(n+1))`
-/

namespace A166008.P18191830254687939877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A176810 (n + 1)).toNat

end

end A166008.P18191830254687939877

namespace A166008

/-- `A295660(A176810(n+1))` -/
def P18191830254687939877.Spec : Prop :=
  ∀ n, P18191830254687939877.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P5154073061406535468

`A000120(A040040(n+1))`
-/

namespace A166008.P5154073061406535468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A040040 (n + 1)).toNat

end

end A166008.P5154073061406535468

namespace A166008

/-- `A000120(A040040(n+1))` -/
def P5154073061406535468.Spec : Prop :=
  ∀ n, P5154073061406535468.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P15902553586962097515

`A000120(A168497(n+2))`
-/

namespace A166008.P15902553586962097515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A168497 (n + 2)).toNat

end

end A166008.P15902553586962097515

namespace A166008

/-- `A000120(A168497(n+2))` -/
def P15902553586962097515.Spec : Prop :=
  ∀ n, P15902553586962097515.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P13544830494873056484

`A000120((A001359(n+1)+1)/2)`
-/

namespace A166008.P13544830494873056484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A001359 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A166008.P13544830494873056484

namespace A166008

/-- `A000120((A001359(n+1)+1)/2)` -/
def P13544830494873056484.Spec : Prop :=
  ∀ n, P13544830494873056484.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P10346874048653593942

`A175548(A001359(n+1))`
-/

namespace A166008.P10346874048653593942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175548 (A001359 (n + 1)).toNat

end

end A166008.P10346874048653593942

namespace A166008

/-- `A175548(A001359(n+1))` -/
def P10346874048653593942.Spec : Prop :=
  ∀ n, P10346874048653593942.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P248180931302796109

`A175548(A124588(n+2))`
-/

namespace A166008.P248180931302796109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175548 (A124588 (n + 2)).toNat

end

end A166008.P248180931302796109

namespace A166008

/-- `A175548(A124588(n+2))` -/
def P248180931302796109.Spec : Prop :=
  ∀ n, P248180931302796109.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P14909847512362505996

`A175548(A181747(n+2))`
-/

namespace A166008.P14909847512362505996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175548 (A181747 (n + 2)).toNat

end

end A166008.P14909847512362505996

namespace A166008

/-- `A175548(A181747(n+2))` -/
def P14909847512362505996.Spec : Prop :=
  ∀ n, P14909847512362505996.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P7138147395294062963

`A356876(A169643(n+1))`
-/

namespace A166008.P7138147395294062963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356876 (A169643 (n + 1)).toNat

end

end A166008.P7138147395294062963

namespace A166008

/-- `A356876(A169643(n+1))` -/
def P7138147395294062963.Spec : Prop :=
  ∀ n, P7138147395294062963.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P16367857582527139976

`A274009(A067829(n+2))`
-/

namespace A166008.P16367857582527139976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A067829 (n + 2)).toNat

end

end A166008.P16367857582527139976

namespace A166008

/-- `A274009(A067829(n+2))` -/
def P16367857582527139976.Spec : Prop :=
  ∀ n, P16367857582527139976.a n = A166008 (n + 1)

end A166008

/-! ## A166008.P14978741388517033818

`A000120(A054735(n+1))`
-/

namespace A166008.P14978741388517033818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A054735 (n + 1)).toNat

end

end A166008.P14978741388517033818

namespace A166008

/-- `A000120(A054735(n+1))` -/
def P14978741388517033818.Spec : Prop :=
  ∀ n, P14978741388517033818.a n = A166008 (n + 1)

end A166008

/-!
# A166009: Primes of the form 7 + 2*p, where p is a prime.

The programs for A166009, the canonical program `A166009.P17457192223862783149` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166009 has offset 1).

The definition of A166009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023206, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166009.P17457192223862783149

`7+2*A023206(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166009

/-- `7+2*A023206(n+1)` -/
def P17457192223862783149.Spec : Prop :=
  ∀ n, P17457192223862783149.a n = A166009 (n + 1)

theorem P17457192223862783149.correct : P17457192223862783149.Spec := by
  intro n
  simp only [A166009, Nat.add_sub_cancel]

end A166009

/-! ## A166009.P5114058229362477834

`p?[A072055(n+1)+6]`
-/

namespace A166009.P5114058229362477834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P5114058229362477834

namespace A166009

/-- `p?[A072055(n+1)+6]` -/
def P5114058229362477834.Spec : Prop :=
  ∀ n, P5114058229362477834.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P5933075722065263674

`p?[A001747(n+1)+7]`
-/

namespace A166009.P5933075722065263674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P5933075722065263674

namespace A166009

/-- `p?[A001747(n+1)+7]` -/
def P5933075722065263674.Spec : Prop :=
  ∀ n, P5933075722065263674.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P6545658636961262392

`p?[2*A113935(n+1)+1]`
-/

namespace A166009.P6545658636961262392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113935 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P6545658636961262392

namespace A166009

/-- `p?[2*A113935(n+1)+1]` -/
def P6545658636961262392.Spec : Prop :=
  ∀ n, P6545658636961262392.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P15168234633223424293

`p?[2*A175221(n+1)-1]`
-/

namespace A166009.P15168234633223424293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175221 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P15168234633223424293

namespace A166009

/-- `p?[2*A175221(n+1)-1]` -/
def P15168234633223424293.Spec : Prop :=
  ∀ n, P15168234633223424293.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P4762916227093715907

`p?[2*A008864(n+1)+5]`
-/

namespace A166009.P4762916227093715907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P4762916227093715907

namespace A166009

/-- `p?[2*A008864(n+1)+5]` -/
def P4762916227093715907.Spec : Prop :=
  ∀ n, P4762916227093715907.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P13833430060406668351

`p?[2*A000040(n+1)+7]`
-/

namespace A166009.P13833430060406668351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P13833430060406668351

namespace A166009

/-- `p?[2*A000040(n+1)+7]` -/
def P13833430060406668351.Spec : Prop :=
  ∀ n, P13833430060406668351.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P13754364665217765687

`record[A006530(2*A000040(n+1)+7)]`
-/

namespace A166009.P13754364665217765687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000040 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166009.P13754364665217765687

namespace A166009

/-- `record[A006530(2*A000040(n+1)+7)]` -/
def P13754364665217765687.Spec : Prop :=
  ∀ n, P13754364665217765687.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P12140260497320201053

`p?[A088707(n+1)+6]`
-/

namespace A166009.P12140260497320201053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P12140260497320201053

namespace A166009

/-- `p?[A088707(n+1)+6]` -/
def P12140260497320201053.Spec : Prop :=
  ∀ n, P12140260497320201053.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P3640783382862875324

`p?[A323644(n+1)+7]`
-/

namespace A166009.P3640783382862875324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P3640783382862875324

namespace A166009

/-- `p?[A323644(n+1)+7]` -/
def P3640783382862875324.Spec : Prop :=
  ∀ n, P3640783382862875324.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P2490569349629430027

`p?[A037143(n+1)+7]`
-/

namespace A166009.P2490569349629430027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P2490569349629430027

namespace A166009

/-- `p?[A037143(n+1)+7]` -/
def P2490569349629430027.Spec : Prop :=
  ∀ n, P2490569349629430027.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P17298077823625155356

`p?[2*(record[A014963(n+2)]+3)+1]`
-/

namespace A166009.P17298077823625155356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P17298077823625155356

namespace A166009

/-- `p?[2*(record[A014963(n+2)]+3)+1]` -/
def P17298077823625155356.Spec : Prop :=
  ∀ n, P17298077823625155356.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P12151917773208559761

`A020742(A023206(n+1))`
-/

namespace A166009.P12151917773208559761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A023206 (n + 1)).toNat

end

end A166009.P12151917773208559761

namespace A166009

/-- `A020742(A023206(n+1))` -/
def P12151917773208559761.Spec : Prop :=
  ∀ n, P12151917773208559761.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P15777790863609454297

`p?[A020742(A000040(n+1))]`
-/

namespace A166009.P15777790863609454297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P15777790863609454297

namespace A166009

/-- `p?[A020742(A000040(n+1))]` -/
def P15777790863609454297.Spec : Prop :=
  ∀ n, P15777790863609454297.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P9830733716361835970

`p?[A020742(p?[A008620(n)+n])]`
-/

namespace A166009.P9830733716361835970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P9830733716361835970

namespace A166009

/-- `p?[A020742(p?[A008620(n)+n])]` -/
def P9830733716361835970.Spec : Prop :=
  ∀ n, P9830733716361835970.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P10557654904175498947

`record[A076567(A000040(n+1)+2)]`
-/

namespace A166009.P10557654904175498947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166009.P10557654904175498947

namespace A166009

/-- `record[A076567(A000040(n+1)+2)]` -/
def P10557654904175498947.Spec : Prop :=
  ∀ n, P10557654904175498947.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P2718522577934399953

`p?[A005818(A000040(n+1)+2)]`
-/

namespace A166009.P2718522577934399953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P2718522577934399953

namespace A166009

/-- `p?[A005818(A000040(n+1)+2)]` -/
def P2718522577934399953.Spec : Prop :=
  ∀ n, P2718522577934399953.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P16539532925675406942

`record[A076567(A006530(n+2)+2)]`
-/

namespace A166009.P16539532925675406942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A006530 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166009.P16539532925675406942

namespace A166009

/-- `record[A076567(A006530(n+2)+2)]` -/
def P16539532925675406942.Spec : Prop :=
  ∀ n, P16539532925675406942.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P12720978408737021294

`record[A076567(A020639(n+2)+2)]`
-/

namespace A166009.P12720978408737021294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A020639 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166009.P12720978408737021294

namespace A166009

/-- `record[A076567(A020639(n+2)+2)]` -/
def P12720978408737021294.Spec : Prop :=
  ∀ n, P12720978408737021294.a n = A166009 (n + 1)

end A166009

/-! ## A166009.P5956723414815347201

`p?[A005843(A175221(n+1))-1]`
-/

namespace A166009.P5956723414815347201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A175221 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166009.P5956723414815347201

namespace A166009

/-- `p?[A005843(A175221(n+1))-1]` -/
def P5956723414815347201.Spec : Prop :=
  ∀ n, P5956723414815347201.a n = A166009 (n + 1)

end A166009

/-!
# A166010: a(n) = prime(n)^2-4.

The programs for A166010, the canonical program `A166010.P2251698158040960203` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166010 has offset 1).

The definition of A166010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166010.P2251698158040960203

`A001248(n+1)-4`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166010

/-- `A001248(n+1)-4` -/
def P2251698158040960203.Spec : Prop :=
  ∀ n, P2251698158040960203.a n = A166010 (n + 1)

theorem P2251698158040960203.correct : P2251698158040960203.Spec := by
  intro n
  simp only [A166010, Nat.add_sub_cancel]

end A166010

/-! ## A166010.P11719373237859348993

`A040976(n+1)*A052147(n+1)`
-/

namespace A166010.P11719373237859348993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) * A052147 (n + 1)

end

end A166010.P11719373237859348993

namespace A166010

/-- `A040976(n+1)*A052147(n+1)` -/
def P11719373237859348993.Spec : Prop :=
  ∀ n, P11719373237859348993.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P11688493287127656410

`A182200(n+1)-1`
-/

namespace A166010.P11688493287127656410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) - 1

end

end A166010.P11688493287127656410

namespace A166010

/-- `A182200(n+1)-1` -/
def P11688493287127656410.Spec : Prop :=
  ∀ n, P11688493287127656410.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P11303697987976820716

`A049001(n+1)-2`
-/

namespace A166010.P11303697987976820716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) - 2

end

end A166010.P11303697987976820716

namespace A166010

/-- `A049001(n+1)-2` -/
def P11303697987976820716.Spec : Prop :=
  ∀ n, P11303697987976820716.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P6378066659331113987

`A084920(n+1)-3`
-/

namespace A166010.P6378066659331113987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - 3

end

end A166010.P6378066659331113987

namespace A166010

/-- `A084920(n+1)-3` -/
def P6378066659331113987.Spec : Prop :=
  ∀ n, P6378066659331113987.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P13185802984305835285

`A066872(n+1)-5`
-/

namespace A166010.P13185802984305835285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - 5

end

end A166010.P13185802984305835285

namespace A166010

/-- `A066872(n+1)-5` -/
def P13185802984305835285.Spec : Prop :=
  ∀ n, P13185802984305835285.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P13671080723049723321

`A061725(n+1)-6`
-/

namespace A166010.P13671080723049723321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - 6

end

end A166010.P13671080723049723321

namespace A166010

/-- `A061725(n+1)-6` -/
def P13671080723049723321.Spec : Prop :=
  ∀ n, P13671080723049723321.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P14560295388768992861

`A153480(n)/2-2`
-/

namespace A166010.P14560295388768992861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n : ℚ) / 2 - 2

end

end A166010.P14560295388768992861

namespace A166010

/-- `A153480(n)/2-2` -/
def P14560295388768992861.Spec : Prop :=
  ∀ n, P14560295388768992861.a n = (A166010 (n + 1) : ℚ)

end A166010

/-! ## A166010.P11145345601626553297

`A287922(n+1)-8`
-/

namespace A166010.P11145345601626553297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1) - 8

end

end A166010.P11145345601626553297

namespace A166010

/-- `A287922(n+1)-8` -/
def P11145345601626553297.Spec : Prop :=
  ∀ n, P11145345601626553297.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P2375559703123786713

`A000040(n+1)²-4`
-/

namespace A166010.P2375559703123786713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - 4

end

end A166010.P2375559703123786713

namespace A166010

/-- `A000040(n+1)²-4` -/
def P2375559703123786713.Spec : Prop :=
  ∀ n, P2375559703123786713.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P711555116353511429

`A273960(n+1)²-4`
-/

namespace A166010.P711555116353511429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 - 4

end

end A166010.P711555116353511429

namespace A166010

/-- `A273960(n+1)²-4` -/
def P711555116353511429.Spec : Prop :=
  ∀ n, P711555116353511429.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P14827774806269983181

`sqrt(A030514(n+1))-4`
-/

namespace A166010.P14827774806269983181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ) - 4

end

end A166010.P14827774806269983181

namespace A166010

/-- `sqrt(A030514(n+1))-4` -/
def P14827774806269983181.Spec : Prop :=
  ∀ n, P14827774806269983181.a n = (A166010 (n + 1) : ℝ)

end A166010

/-! ## A166010.P3027134842262522502

`A079704(n+1)/2-4`
-/

namespace A166010.P3027134842262522502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 - 4

end

end A166010.P3027134842262522502

namespace A166010

/-- `A079704(n+1)/2-4` -/
def P3027134842262522502.Spec : Prop :=
  ∀ n, P3027134842262522502.a n = (A166010 (n + 1) : ℚ)

end A166010

/-! ## A166010.P14948763983358800065

`A079705(n+1)/3-4`
-/

namespace A166010.P14948763983358800065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 3 - 4

end

end A166010.P14948763983358800065

namespace A166010

/-- `A079705(n+1)/3-4` -/
def P14948763983358800065.Spec : Prop :=
  ∀ n, P14948763983358800065.a n = (A166010 (n + 1) : ℚ)

end A166010

/-! ## A166010.P11483684689095482809

`A069262(n+1)/4-4`
-/

namespace A166010.P11483684689095482809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 4 - 4

end

end A166010.P11483684689095482809

namespace A166010

/-- `A069262(n+1)/4-4` -/
def P11483684689095482809.Spec : Prop :=
  ∀ n, P11483684689095482809.a n = (A166010 (n + 1) : ℚ)

end A166010

/-! ## A166010.P1240471663395289352

`A182174(n+1)-3+n`
-/

namespace A166010.P1240471663395289352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) - 3 + (n : ℤ)

end

end A166010.P1240471663395289352

namespace A166010

/-- `A182174(n+1)-3+n` -/
def P1240471663395289352.Spec : Prop :=
  ∀ n, P1240471663395289352.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P3071443056879861367

`abs(A000040(2*n-(n-1))²-4)`
-/

namespace A166010.P3071443056879861367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2 - 4|

end

end A166010.P3071443056879861367

namespace A166010

/-- `abs(A000040(2*n-(n-1))²-4)` -/
def P3071443056879861367.Spec : Prop :=
  ∀ n, P3071443056879861367.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P1360086454927884029

`A182174(n+1)+A023445(n)`
-/

namespace A166010.P1360086454927884029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + A023445 n

end

end A166010.P1360086454927884029

namespace A166010

/-- `A182174(n+1)+A023445(n)` -/
def P1360086454927884029.Spec : Prop :=
  ∀ n, P1360086454927884029.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P16609866407149625841

`A182174(n+1)-A022959(n)`
-/

namespace A166010.P16609866407149625841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) - A022959 n

end

end A166010.P16609866407149625841

namespace A166010

/-- `A182174(n+1)-A022959(n)` -/
def P16609866407149625841.Spec : Prop :=
  ∀ n, P16609866407149625841.a n = A166010 (n + 1)

end A166010

/-! ## A166010.P17006326057469304520

`A153480(n)%A001248(n+1)`
-/

namespace A166010.P17006326057469304520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153480 n) (A001248 (n + 1))

end

end A166010.P17006326057469304520

namespace A166010

/-- `A153480(n)%A001248(n+1)` -/
def P17006326057469304520.Spec : Prop :=
  ∀ n, P17006326057469304520.a n = A166010 (n + 1)

end A166010

/-!
# A166011: Least common multiple of prime(n)-3 and prime(n)+3.

The programs for A166011, the canonical program `A166011.P11749173426815385151` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166011 has offset 1).

The definition of A166011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166011.P10149304892277168458

`lcm(2, 9-A000040(n+1)²)/2`
-/

namespace A166011.P10149304892277168458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (9 - A000040 (n + 1) ^ 2) : ℚ) / 2

end

end A166011.P10149304892277168458

namespace A166011

/-- `lcm(2, 9-A000040(n+1)²)/2` -/
def P10149304892277168458.Spec : Prop :=
  ∀ n, P10149304892277168458.a n = (A166011 (n + 1) : ℚ)

end A166011

/-! ## A166011.P11749173426815385151

`lcm(A086801(n+1), A113935(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166011

/-- `lcm(A086801(n+1), A113935(n+1))` -/
def P11749173426815385151.Spec : Prop :=
  ∀ n, (P11749173426815385151.a n : ℤ) = A166011 (n + 1)

theorem P11749173426815385151.correct : P11749173426815385151.Spec := by
  intro n
  simp only [A166011, Nat.add_sub_cancel]

end A166011

/-! ## A166011.P18275580782303927653

`A110494(n+1)-a(A000038(n))` with `a(0)=5`
-/

namespace A166011.P18275580782303927653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A110494 (n + 1) - a (A000038 n).toNat

end

end A166011.P18275580782303927653

namespace A166011

/-- `A110494(n+1)-a(A000038(n))` -/
def P18275580782303927653.Spec : Prop :=
  ∀ n, P18275580782303927653.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P1951204288301378002

`A066872(n+1)%(A084921(n+1)+6)`
-/

namespace A166011.P1951204288301378002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066872 (n + 1)) (A084921 (n + 1) + 6)

end

end A166011.P1951204288301378002

namespace A166011

/-- `A066872(n+1)%(A084921(n+1)+6)` -/
def P1951204288301378002.Spec : Prop :=
  ∀ n, P1951204288301378002.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P1108336483769924728

`gcd(A084921(n+1), A165471(n))*A084921(n+1)-4`
-/

namespace A166011.P1108336483769924728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A084921 (n + 1)) (A165471 n) : ℤ) * A084921 (n + 1) - 4

end

end A166011.P1108336483769924728

namespace A166011

/-- `gcd(A084921(n+1), A165471(n))*A084921(n+1)-4` -/
def P1108336483769924728.Spec : Prop :=
  ∀ n, P1108336483769924728.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P50975878974302908

`A249860(p?[comp[n²]])`
-/

namespace A166011.P50975878974302908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A166011.P50975878974302908

namespace A166011

/-- `A249860(p?[comp[n²]])` -/
def P50975878974302908.Spec : Prop :=
  ∀ n, P50975878974302908.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P13629917490490278740

`A249860(Δ[A007504(n)])`
-/

namespace A166011.P13629917490490278740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (f1 (n + 1) - f1 n).toNat

end

end A166011.P13629917490490278740

namespace A166011

/-- `A249860(Δ[A007504(n)])` -/
def P13629917490490278740.Spec : Prop :=
  ∀ n, P13629917490490278740.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P2907774375659347691

`A249860(A000040(n+1))`
-/

namespace A166011.P2907774375659347691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (A000040 (n + 1)).toNat

end

end A166011.P2907774375659347691

namespace A166011

/-- `A249860(A000040(n+1))` -/
def P2907774375659347691.Spec : Prop :=
  ∀ n, P2907774375659347691.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P1454106571743988775

`A249860(A008578(n+2))`
-/

namespace A166011.P1454106571743988775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (A008578 (n + 2)).toNat

end

end A166011.P1454106571743988775

namespace A166011

/-- `A249860(A008578(n+2))` -/
def P1454106571743988775.Spec : Prop :=
  ∀ n, P1454106571743988775.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P6052745154899087328

`A249860(A182986(n+2))`
-/

namespace A166011.P6052745154899087328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (A182986 (n + 2)).toNat

end

end A166011.P6052745154899087328

namespace A166011

/-- `A249860(A182986(n+2))` -/
def P6052745154899087328.Spec : Prop :=
  ∀ n, P6052745154899087328.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P6041622988142109764

`A249860(record[A006530(n+2)])`
-/

namespace A166011.P6041622988142109764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166011.P6041622988142109764

namespace A166011

/-- `A249860(record[A006530(n+2)])` -/
def P6041622988142109764.Spec : Prop :=
  ∀ n, P6041622988142109764.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P3274181698957023241

`A249860(record[A014963(n+2)])`
-/

namespace A166011.P3274181698957023241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166011.P3274181698957023241

namespace A166011

/-- `A249860(record[A014963(n+2)])` -/
def P3274181698957023241.Spec : Prop :=
  ∀ n, P3274181698957023241.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P7060530667830869006

`A249860(record[A020639(n+2)])`
-/

namespace A166011.P7060530667830869006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166011.P7060530667830869006

namespace A166011

/-- `A249860(record[A020639(n+2)])` -/
def P7060530667830869006.Spec : Prop :=
  ∀ n, P7060530667830869006.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P15991594107852074237

`A249860(eq[n, A002322(n+1)]+1)`
-/

namespace A166011.P15991594107852074237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A166011.P15991594107852074237

namespace A166011

/-- `A249860(eq[n, A002322(n+1)]+1)` -/
def P15991594107852074237.Spec : Prop :=
  ∀ n, P15991594107852074237.a n = A166011 (n + 1)

end A166011

/-! ## A166011.P16028352030382367831

`A249860(A007504(n+1)-A007504(n))`
-/

namespace A166011.P16028352030382367831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (A007504 (n + 1) - A007504 n).toNat

end

end A166011.P16028352030382367831

namespace A166011

/-- `A249860(A007504(n+1)-A007504(n))` -/
def P16028352030382367831.Spec : Prop :=
  ∀ n, P16028352030382367831.a n = A166011 (n + 1)

end A166011

/-!
# A166012: a(n) = 2*(A000045(n)-(n mod 2)) + 1 + (n mod 2).

The programs for A166012, the canonical program `A166012.P13999599850181004342` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166012 has offset 0).

The definition of A166012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166012.P13999599850181004342

`2*floor(a(n-1)/2)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166012

/-- `2*floor(a(n-1)/2)+a(n-2)` -/
def P13999599850181004342.Spec : Prop :=
  ∀ n, P13999599850181004342.a n = A166012 n

theorem P13999599850181004342.correct : P13999599850181004342.Spec := by
  intro n
  simp only [A166012]

end A166012

/-! ## A166012.P11663412968332258099

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A166012.P11663412968332258099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A166012.P11663412968332258099

namespace A166012

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P11663412968332258099.Spec : Prop :=
  ∀ n, P11663412968332258099.a n = A166012 n

end A166012

/-! ## A166012.P1099272599759797945

`ogf((1+x-x^2-2x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A166012.P1099272599759797945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -2] [1, -1, -2, 1, 1] n

end

end A166012.P1099272599759797945

namespace A166012

/-- `ogf((1+x-x^2-2x^3)/(1-x-2x^2+x^3+x^4))` -/
def P1099272599759797945.Spec : Prop :=
  ∀ n, P1099272599759797945.a n = A166012 n

end A166012

/-! ## A166012.P16866655426933794258

`a(n-2)+and(-2, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A166012.P16866655426933794258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.land (-2) (a (n - 1))

end

end A166012.P16866655426933794258

namespace A166012

/-- `a(n-2)+and(-2, a(n-1))` -/
def P16866655426933794258.Spec : Prop :=
  ∀ n, P16866655426933794258.a n = A166012 n

end A166012

/-! ## A166012.P18102750277036614654

`a(n-1)-or(1, -a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A166012.P18102750277036614654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.lor 1 (-a (n - 2))

end

end A166012.P18102750277036614654

namespace A166012

/-- `a(n-1)-or(1, -a(n-2))` -/
def P18102750277036614654.Spec : Prop :=
  ∀ n, P18102750277036614654.a n = A166012 n

end A166012

/-! ## A166012.P6046500293588534014

`a(n-1)+a(n-2)-n%2` with `a(0)=1, a(1)=2`
-/

namespace A166012.P6046500293588534014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - ((n % 2 : ℕ) : ℤ))

end

end A166012.P6046500293588534014

namespace A166012

/-- `a(n-1)+a(n-2)-n%2` -/
def P6046500293588534014.Spec : Prop :=
  ∀ n, P6046500293588534014.a n = A166012 n

end A166012

/-! ## A166012.P8693926271114093225

`a(n-1)+a(n-2)-and(1, n)` with `a(0)=1, a(1)=2`
-/

namespace A166012.P8693926271114093225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - (Nat.land 1 n : ℤ))

end

end A166012.P8693926271114093225

namespace A166012

/-- `a(n-1)+a(n-2)-and(1, n)` -/
def P8693926271114093225.Spec : Prop :=
  ∀ n, P8693926271114093225.a n = A166012 n

end A166012

/-! ## A166012.P17045595258207694406

`a(n-1)-(and(1, n)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A166012.P17045595258207694406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ((Nat.land 1 n : ℤ) - a (n - 2))

end

end A166012.P17045595258207694406

namespace A166012

/-- `a(n-1)-(and(1, n)-a(n-2))` -/
def P17045595258207694406.Spec : Prop :=
  ∀ n, P17045595258207694406.a n = A166012 n

end A166012

/-! ## A166012.P16397280930223977486

`2*a(n-2)+a(n-3)-1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A166012.P16397280930223977486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 2) + (a (n - 3) - 1)

end

end A166012.P16397280930223977486

namespace A166012

/-- `2*a(n-2)+a(n-3)-1` -/
def P16397280930223977486.Spec : Prop :=
  ∀ n, P16397280930223977486.a n = A166012 n

end A166012

/-! ## A166012.P17351147208316858745

`2*a(n-2)-(1-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A166012.P17351147208316858745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 2) - (1 - a (n - 3))

end

end A166012.P17351147208316858745

namespace A166012

/-- `2*a(n-2)-(1-a(n-3))` -/
def P17351147208316858745.Spec : Prop :=
  ∀ n, P17351147208316858745.a n = A166012 n

end A166012

/-! ## A166012.P18443690343247035398

`gcd(2, n)-2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A166012.P18443690343247035398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.gcd 2 n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A166012.P18443690343247035398

namespace A166012

/-- `gcd(2, n)-2+a(n-1)+a(n-2)` -/
def P18443690343247035398.Spec : Prop :=
  ∀ n, P18443690343247035398.a n = A166012 n

end A166012

/-! ## A166012.P11500743078520872362

`a(n-1)-((n-2)%2-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A166012.P11500743078520872362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - 2) 2 - a (n - 2))

end

end A166012.P11500743078520872362

namespace A166012

/-- `a(n-1)-((n-2)%2-a(n-2))` -/
def P11500743078520872362.Spec : Prop :=
  ∀ n, P11500743078520872362.a n = A166012 n

end A166012

/-! ## A166012.P5943249746816471198

`a(n-2)-1+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A166012.P5943249746816471198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - 1 + (a (n - 2) + a (n - 3))

end

end A166012.P5943249746816471198

namespace A166012

/-- `a(n-2)-1+a(n-2)+a(n-3)` -/
def P5943249746816471198.Spec : Prop :=
  ∀ n, P5943249746816471198.a n = A166012 n

end A166012

/-! ## A166012.P15121740593032580862

`a(n-2)-(1-a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A166012.P15121740593032580862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - (1 - a (n - 2) - a (n - 3))

end

end A166012.P15121740593032580862

namespace A166012

/-- `a(n-2)-(1-a(n-2)-a(n-3))` -/
def P15121740593032580862.Spec : Prop :=
  ∀ n, P15121740593032580862.a n = A166012 n

end A166012

/-! ## A166012.P11117244517961942122

`A062114(n)+1`
-/

namespace A166012.P11117244517961942122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 n + 1

end

end A166012.P11117244517961942122

namespace A166012

/-- `A062114(n)+1` -/
def P11117244517961942122.Spec : Prop :=
  ∀ n, P11117244517961942122.a n = A166012 n

end A166012

/-! ## A166012.P6778123938247588259

`A066983(n)+a(n-1)` with `a(0)=1`
-/

namespace A166012.P6778123938247588259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066983 n + a (n - 1)

end

end A166012.P6778123938247588259

namespace A166012

/-- `A066983(n)+a(n-1)` -/
def P6778123938247588259.Spec : Prop :=
  ∀ n, P6778123938247588259.a n = A166012 n

end A166012

/-! ## A166012.P12706475686482196559

`char[2*n]+2*A000045(n)`
-/

namespace A166012.P12706475686482196559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A000045 n

end

end A166012.P12706475686482196559

namespace A166012

/-- `char[2*n]+2*A000045(n)` -/
def P12706475686482196559.Spec : Prop :=
  ∀ n, P12706475686482196559.a n = A166012 n

end A166012

/-! ## A166012.P15820609946000569294

`A006355(n+1)+(n+1)%2`
-/

namespace A166012.P15820609946000569294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)

end

end A166012.P15820609946000569294

namespace A166012

/-- `A006355(n+1)+(n+1)%2` -/
def P15820609946000569294.Spec : Prop :=
  ∀ n, P15820609946000569294.a n = A166012 n

end A166012

/-! ## A166012.P5197079881067806102

`A109522(n)+A008346(n)`
-/

namespace A166012.P5197079881067806102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 n + A008346 n

end

end A166012.P5197079881067806102

namespace A166012

/-- `A109522(n)+A008346(n)` -/
def P5197079881067806102.Spec : Prop :=
  ∀ n, P5197079881067806102.a n = A166012 n

end A166012

/-! ## A166012.P14572668997621987261

`A253198(n)+A115357(n)`
-/

namespace A166012.P14572668997621987261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253198 n + A115357 n

end

end A166012.P14572668997621987261

namespace A166012

/-- `A253198(n)+A115357(n)` -/
def P14572668997621987261.Spec : Prop :=
  ∀ n, P14572668997621987261.a n = A166012 n

end A166012

/-!
# A166014: Inverse permutation to A138607.

The programs for A166014, there is no canonical definition to state claims against.
-/

/-! ## A166014.P9653779109809387032

`A166013(n+2)-A108775(A049884(n+1))`
-/

namespace A166014.P9653779109809387032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 2) - A108775 (A049884 (n + 1)).toNat

end

end A166014.P9653779109809387032

/-! ## A166014.P8758049261124380923

`A166013(n+2)-A035185(A011782(n))`
-/

namespace A166014.P8758049261124380923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 2) - A035185 (A011782 n).toNat

end

end A166014.P8758049261124380923

/-! ## A166014.P9397376217903197673

`A166013(n+2)-A308608(A030458(n+1))`
-/

namespace A166014.P9397376217903197673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 2) - A308608 (A030458 (n + 1)).toNat

end

end A166014.P9397376217903197673

/-! ## A166014.P15709255382540653811

`A166013(n+2)-A010684(A096850(2*n+5))`
-/

namespace A166014.P15709255382540653811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 2) - A010684 (A096850 (2 * n + 5)).toNat

end

end A166014.P15709255382540653811

/-! ## A166014.P8052678886534115774

`A166013(n+2)-A056753(A032374(n+1))`
-/

namespace A166014.P8052678886534115774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (n + 2) - A056753 (A032374 (n + 1)).toNat

end

end A166014.P8052678886534115774

/-!
# A166016: Inverse permutation to A138609.

The programs for A166016, there is no canonical definition to state claims against.
-/

/-! ## A166016.P9624649979921262100

`A116942(xor(n, 3*∑[n]%2))+1`
-/

namespace A166016.P9624649979921262100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (Nat.xor n (3 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2))) + 1

end

end A166016.P9624649979921262100

/-! ## A166016.P10477204935744527207

`A116942(A080412(n))+1`
-/

namespace A166016.P10477204935744527207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (A080412 n).toNat + 1

end

end A166016.P10477204935744527207

/-! ## A166016.P15172307488550329866

`A116942(A116966(n)-1)+1`
-/

namespace A166016.P15172307488550329866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (A116966 n - 1).toNat + 1

end

end A166016.P15172307488550329866

/-! ## A166016.P2506811431859452279

`1-(A002262(C(n, 2))-A116942(A080412(n)))`
-/

namespace A166016.P2506811431859452279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A002262 (Nat.choose n 2) - A116942 (A080412 n).toNat)

end

end A166016.P2506811431859452279

/-! ## A166016.P9794255704459090641

`A008619(2*n)-(n-A116942(A080412(n)))`
-/

namespace A166016.P9794255704459090641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - A116942 (A080412 n).toNat)

end

end A166016.P9794255704459090641

/-! ## A166016.P15348365958070628334

`and(A116942(A080412(n))-(1-4/2), A107955(n))`
-/

namespace A166016.P15348365958070628334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A116942 (A080412 n).toNat : ℚ) - (1 - (4 : ℚ) / 2))) (A107955 n)

end

end A166016.P15348365958070628334

/-!
# A166018: Left edge of triangular table A138612.

The programs for A166018, there is no canonical definition to state claims against.
-/

/-! ## A166018.P5528567310356630220

`A138612(A000124(n))`
-/

namespace A166018.P5528567310356630220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138612 (A000124 n).toNat

end

end A166018.P5528567310356630220

/-! ## A166018.P11249862413965768342

`A138612(∑[n]+1)`
-/

namespace A166018.P11249862413965768342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138612 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166018.P11249862413965768342

/-! ## A166018.P14618282070406540224

`or(char[2], A138612(A000217(n)+1))`
-/

namespace A166018.P14618282070406540224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A138612 (A000217 n + 1).toNat)

end

end A166018.P14618282070406540224

/-! ## A166018.P13142265825241499254

`record[A138612(n+1)/A046899(n)]`
-/

namespace A166018.P13142265825241499254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138612 (n + 1) : ℚ) / (A046899 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166018.P13142265825241499254

/-! ## A166018.P6848377816354132385

`record[gcd(A002262(n), A138612(n+1))]`
-/

namespace A166018.P6848377816354132385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A138612 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166018.P6848377816354132385

/-! ## A166018.P16939447168475004677

`∏{d}[A138612(A000217(n)+1), A014963(#)]`
-/

namespace A166018.P16939447168475004677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138612 (A000217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A166018.P16939447168475004677

/-! ## A166018.P3464247332338836443

`A138612(A000217(n)+1)%A000040(n+1)`
-/

namespace A166018.P3464247332338836443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138612 (A000217 n + 1).toNat) (A000040 (n + 1))

end

end A166018.P3464247332338836443

/-!
# A166019: Right edge of triangular table A138612.

The programs for A166019, there is no canonical definition to state claims against.
-/

/-! ## A166019.P2090408926078665216

`A138612(∑[n+1])`
-/

namespace A166019.P2090408926078665216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138612 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166019.P2090408926078665216

/-! ## A166019.P3517726158817003254

`record[A138612(abs(A145063(n)))]`
-/

namespace A166019.P3517726158817003254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138612 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166019.P3517726158817003254

/-! ## A166019.P15186761036037621384

`record[A138612(A038722(n+1))]`
-/

namespace A166019.P15186761036037621384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138612 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166019.P15186761036037621384

/-! ## A166019.P2411966233446848756

`record[A138612(A278504(n+1))]`
-/

namespace A166019.P2411966233446848756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138612 (A278504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166019.P2411966233446848756

/-! ## A166019.P8155411643244443810

`record[A138612(n+1)/A093562(n)]`
-/

namespace A166019.P8155411643244443810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138612 (n + 1) : ℚ) / (A093562 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166019.P8155411643244443810

/-!
# A166020: Row sums of triangular table A138612.

The programs for A166020, there is no canonical definition to state claims against.
-/

/-! ## A166020.P2135509415499551187

`A340282(A393677(n+1))`
-/

namespace A166020.P2135509415499551187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340282 (A393677 (n + 1)).toNat

end

end A166020.P2135509415499551187

/-! ## A166020.P2572856414386038031

`∑[A321318(∑[A008534(n)])]`
-/

namespace A166020.P2572856414386038031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321318 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166020.P2572856414386038031

/-!
# A166021: a(n) = 2*A000124(A003056(n-1)) if A002262(n-1)=0, otherwise a(n-1)+1.

The programs for A166021, there is no canonical definition to state claims against.
-/

/-! ## A166021.P9797664927899872309

`C(∑[char[∑[n]]], 2)+2+n`
-/

namespace A166021.P9797664927899872309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 2 + n

end

end A166021.P9797664927899872309

/-! ## A166021.P2227669667156335945

`lt[abs(1-n), round(sqrt(n))²]+1`
-/

namespace A166021.P2227669667156335945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166021.P2227669667156335945

/-! ## A166021.P6413019741702021880

`record[n%round(sqrt(n+1))²]+2`
-/

namespace A166021.P6413019741702021880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A166021.P6413019741702021880

/-! ## A166021.P12623839097365658130

`C(round(sqrt(Δ[n²])), 2)+n+2`
-/

namespace A166021.P12623839097365658130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))).toNat 2 + (n + 2)

end

end A166021.P12623839097365658130

/-! ## A166021.P16147353053926373822

`∑[ratio[-round(sqrt(2*n))!]]+1`
-/

namespace A166021.P16147353053926373822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166021.P16147353053926373822

/-! ## A166021.P7903390545407482858

`comp[C(comp[∑[n]]-n, 2)+n]+2`
-/

namespace A166021.P7903390545407482858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A166021.P7903390545407482858

/-! ## A166021.P11839756434410486025

`eq[0, ceil(2*sqrt(n+1))%2]+2`
-/

namespace A166021.P11839756434410486025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A166021.P11839756434410486025

/-! ## A166021.P6470867136601073906

`ratio[-round(sqrt(2*n))!]+a(n-1)` with `a(0)=2`
-/

namespace A166021.P6470867136601073906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + a (n - 1)

end

end A166021.P6470867136601073906

/-! ## A166021.P1420282102043033017

`2*n-(n-2-C(∑[char[∑[n]]], 2))`
-/

namespace A166021.P1420282102043033017
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 2 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A166021.P1420282102043033017

/-! ## A166021.P10464893983712701433

`A061885(n)+2`
-/

namespace A166021.P10464893983712701433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n + 2

end

end A166021.P10464893983712701433

/-!
# A166022: a(n) = 3*a(n-1) -2*a(n-2) -a(n-3) +3*a(n-4) -2*a(n-5) for n > 4, with initial values as shown.

The programs for A166022, the canonical program `A166022.P17021660783972476654` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166022 has offset 0).

The definition of A166022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)-a(n-3)+3*a(n-4)-2*a(n-5)` (program `A166022.P17021660783972476654`, by `A166022.P17021660783972476654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166022.P17021660783972476654

`3*a(n-1)-2*a(n-2)-a(n-3)+3*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166022

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+3*a(n-4)-2*a(n-5)` -/
def P17021660783972476654.Spec : Prop :=
  ∀ n, P17021660783972476654.a n = A166022 n

theorem P17021660783972476654.correct : P17021660783972476654.Spec := by
  intro n
  simp only [A166022]

end A166022

/-! ## A166022.P17323428014382267142

`A166249(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A166022.P17323428014382267142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A166249 (n - 1) + a (n - 1)

end

end A166022.P17323428014382267142

namespace A166022

/-- `A166249(n-1)+a(n-1)` -/
def P17323428014382267142.Spec : Prop :=
  ∀ n, P17323428014382267142.a n = A166022 n

end A166022

/-! ## A166022.P4685929881174326332

`A088911(n)+A131708(n)-1`
-/

namespace A166022.P4685929881174326332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n + (A131708 n - 1)

end

end A166022.P4685929881174326332

namespace A166022

/-- `A088911(n)+A131708(n)-1` -/
def P4685929881174326332.Spec : Prop :=
  ∀ n, P4685929881174326332.a n = A166022 n

end A166022

/-! ## A166022.P7455175077202815597

`∑[A132780(n)]-(A113405(n)+1)`
-/

namespace A166022.P7455175077202815597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A113405 n + 1)

end

end A166022.P7455175077202815597

namespace A166022

/-- `∑[A132780(n)]-(A113405(n)+1)` -/
def P7455175077202815597.Spec : Prop :=
  ∀ n, P7455175077202815597.a n = A166022 n

end A166022

/-! ## A166022.P16871083660746387043

`A001045(n)+A128834(n)-A000035(n)`
-/

namespace A166022.P16871083660746387043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A128834 n - A000035 n)

end

end A166022.P16871083660746387043

namespace A166022

/-- `A001045(n)+A128834(n)-A000035(n)` -/
def P16871083660746387043.Spec : Prop :=
  ∀ n, P16871083660746387043.a n = A166022 n

end A166022

/-! ## A166022.P289137049861349923

`A194272(n+1)+A130707(n)-A194272(n+2)`
-/

namespace A166022.P289137049861349923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194272 (n + 1) + (A130707 n - A194272 (n + 2))

end

end A166022.P289137049861349923

namespace A166022

/-- `A194272(n+1)+A130707(n)-A194272(n+2)` -/
def P289137049861349923.Spec : Prop :=
  ∀ n, P289137049861349923.a n = A166022 n

end A166022

/-! ## A166022.P9392646502341502779

`∑[A166249(n)]-A166249(n)`
-/

namespace A166022.P9392646502341502779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A166249 n

end

end A166022.P9392646502341502779

namespace A166022

/-- `∑[A166249(n)]-A166249(n)` -/
def P9392646502341502779.Spec : Prop :=
  ∀ n, P9392646502341502779.a n = A166022 n

end A166022

/-! ## A166022.P14536198610563105638

`A000975(n)+A128834(n)-A001045(n)`
-/

namespace A166022.P14536198610563105638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A128834 n - A001045 n)

end

end A166022.P14536198610563105638

namespace A166022

/-- `A000975(n)+A128834(n)-A001045(n)` -/
def P14536198610563105638.Spec : Prop :=
  ∀ n, P14536198610563105638.a n = A166022 n

end A166022

/-! ## A166022.P9107251026596427256

`A000975(n)+A010892(n)-A166249(n)`
-/

namespace A166022.P9107251026596427256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A010892 n - A166249 n)

end

end A166022.P9107251026596427256

namespace A166022

/-- `A000975(n)+A010892(n)-A166249(n)` -/
def P9107251026596427256.Spec : Prop :=
  ∀ n, P9107251026596427256.a n = A166022 n

end A166022

/-! ## A166022.P13403447989234571439

`A130752(n)-A171231(n)`
-/

namespace A166022.P13403447989234571439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n - A171231 n

end

end A166022.P13403447989234571439

namespace A166022

/-- `A130752(n)-A171231(n)` -/
def P13403447989234571439.Spec : Prop :=
  ∀ n, P13403447989234571439.a n = A166022 n

end A166022

/-! ## A166022.P2662242556684800559

`A000975(n+1)-(A024495(n)+A024493(n+1))`
-/

namespace A166022.P2662242556684800559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) - (A024495 n + A024493 (n + 1))

end

end A166022.P2662242556684800559

namespace A166022

/-- `A000975(n+1)-(A024495(n)+A024493(n+1))` -/
def P2662242556684800559.Spec : Prop :=
  ∀ n, P2662242556684800559.a n = A166022 n

end A166022

/-! ## A166022.P10521785297917090536

`A000975(n+1)-(A166249(n+1)+A001045(n))`
-/

namespace A166022.P10521785297917090536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) - (A166249 (n + 1) + A001045 n)

end

end A166022.P10521785297917090536

namespace A166022

/-- `A000975(n+1)-(A166249(n+1)+A001045(n))` -/
def P10521785297917090536.Spec : Prop :=
  ∀ n, P10521785297917090536.a n = A166022 n

end A166022

/-!
# A166023: a(n) = 6*a(n-2) for n > 2; a(1) = 1, a(2) = 5.

The programs for A166023, the canonical program `A166023.P16099367301674105979` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166023 has offset 1).

The definition of A166023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)` (program `A166023.P16099367301674105979`, by `A166023.P16099367301674105979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166023.P16099367301674105979

`6*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166023

/-- `6*a(n-2)` -/
def P16099367301674105979.Spec : Prop :=
  ∀ n, (P16099367301674105979.a n : ℤ) = A166023 (n + 1)

theorem P16099367301674105979.correct : P16099367301674105979.Spec := by
  intro n
  simp only [A166023, Nat.add_sub_cancel]

end A166023

/-! ## A166023.P11080103113783873791

`ogf((1+5x)/(1-6x^2))`
-/

namespace A166023.P11080103113783873791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 0, -6] n

end

end A166023.P11080103113783873791

namespace A166023

/-- `ogf((1+5x)/(1-6x^2))` -/
def P11080103113783873791.Spec : Prop :=
  ∀ n, P11080103113783873791.a n = A166023 (n + 1)

end A166023

/-! ## A166023.P12158711600935347387

`∏[6/a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A166023.P12158711600935347387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  6 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166023.P12158711600935347387

namespace A166023

/-- `∏[6/a(n-1)]` -/
def P12158711600935347387.Spec : Prop :=
  ∀ n, P12158711600935347387.a n = (A166023 (n + 1) : ℚ)

end A166023

/-! ## A166023.P17168479391437321499

`a(n-2)/(1-5/6)` with `a(0)=1, a(1)=5`
-/

namespace A166023.P17168479391437321499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) / (1 - (5 : ℚ) / 6)

end

end A166023.P17168479391437321499

namespace A166023

/-- `a(n-2)/(1-5/6)` -/
def P17168479391437321499.Spec : Prop :=
  ∀ n, P17168479391437321499.a n = (A166023 (n + 1) : ℚ)

end A166023

/-! ## A166023.P16375582495458323859

`A166027(n)+a(n-1)` with `a(0)=1`
-/

namespace A166023.P16375582495458323859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A166027 n + a (n - 1)

end

end A166023.P16375582495458323859

namespace A166023

/-- `A166027(n)+a(n-1)` -/
def P16375582495458323859.Spec : Prop :=
  ∀ n, P16375582495458323859.a n = A166023 (n + 1)

end A166023

/-! ## A166023.P12430693836798859040

`A016116(n)*A166465(n+1)`
-/

namespace A166023.P12430693836798859040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A166465 (n + 1)

end

end A166023.P12430693836798859040

namespace A166023

/-- `A016116(n)*A166465(n+1)` -/
def P12430693836798859040.Spec : Prop :=
  ∀ n, P12430693836798859040.a n = A166023 (n + 1)

end A166023

/-! ## A166023.P2501553835646525385

`∪[A026549(2*n), A052934(n)]`
-/

namespace A166023.P2501553835646525385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166023.P2501553835646525385

namespace A166023

/-- `∪[A026549(2*n), A052934(n)]` -/
def P2501553835646525385.Spec : Prop :=
  ∀ n, (P2501553835646525385.a n : ℤ) = A166023 (n + 1)

end A166023

/-! ## A166023.P9219325399859097843

`(A164532(n+1)+A056452(n))/2`
-/

namespace A166023.P9219325399859097843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164532 (n + 1) + A056452 n : ℚ) / 2

end

end A166023.P9219325399859097843

namespace A166023

/-- `(A164532(n+1)+A056452(n))/2` -/
def P9219325399859097843.Spec : Prop :=
  ∀ n, P9219325399859097843.a n = (A166023 (n + 1) : ℚ)

end A166023

/-! ## A166023.P10189488676605569489

`2*A164532(n+1)-A026532(n+1)`
-/

namespace A166023.P10189488676605569489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164532 (n + 1) - A026532 (n + 1)

end

end A166023.P10189488676605569489

namespace A166023

/-- `2*A164532(n+1)-A026532(n+1)` -/
def P10189488676605569489.Spec : Prop :=
  ∀ n, P10189488676605569489.a n = A166023 (n + 1)

end A166023

/-! ## A166023.P15362483557576949390

`2*A026532(n+1)-A026532(A109613(n))`
-/

namespace A166023.P15362483557576949390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026532 (n + 1) - A026532 (A109613 n).toNat

end

end A166023.P15362483557576949390

namespace A166023

/-- `2*A026532(n+1)-A026532(A109613(n))` -/
def P15362483557576949390.Spec : Prop :=
  ∀ n, P15362483557576949390.a n = A166023 (n + 1)

end A166023

/-! ## A166023.P10033394869960549022

`A026549(n+1)-A026549(n)/A000034(n)`
-/

namespace A166023.P10033394869960549022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026549 (n + 1) : ℚ) - (A026549 n : ℚ) / (A000034 n : ℚ)

end

end A166023.P10033394869960549022

namespace A166023

/-- `A026549(n+1)-A026549(n)/A000034(n)` -/
def P10033394869960549022.Spec : Prop :=
  ∀ n, P10033394869960549022.a n = (A166023 (n + 1) : ℚ)

end A166023

/-! ## A166023.P4621657606454125580

`A026532(n+1)+A164532(n+1)-A026549(n)`
-/

namespace A166023.P4621657606454125580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (n + 1) + (A164532 (n + 1) - A026549 n)

end

end A166023.P4621657606454125580

namespace A166023

/-- `A026532(n+1)+A164532(n+1)-A026549(n)` -/
def P4621657606454125580.Spec : Prop :=
  ∀ n, P4621657606454125580.a n = A166023 (n + 1)

end A166023

/-! ## A166023.P11537749923351748374

`A117858(n+1)/A176260(n)`
-/

namespace A166023.P11537749923351748374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117858 (n + 1) : ℚ) / (A176260 n : ℚ)

end

end A166023.P11537749923351748374

namespace A166023

/-- `A117858(n+1)/A176260(n)` -/
def P11537749923351748374.Spec : Prop :=
  ∀ n, P11537749923351748374.a n = (A166023 (n + 1) : ℚ)

end A166023

/-! ## A166023.P7661253918698092600

`A026565(n+1)-2*A026549(n)`
-/

namespace A166023.P7661253918698092600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 (n + 1) - 2 * A026549 n

end

end A166023.P7661253918698092600

namespace A166023

/-- `A026565(n+1)-2*A026549(n)` -/
def P7661253918698092600.Spec : Prop :=
  ∀ n, P7661253918698092600.a n = A166023 (n + 1)

end A166023

/-! ## A166023.P5259530212367675655

`∑[A166027(n+1)]+1-A166027(n+1)`
-/

namespace A166023.P5259530212367675655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A166027 (n + 1))

end

end A166023.P5259530212367675655

namespace A166023

/-- `∑[A166027(n+1)]+1-A166027(n+1)` -/
def P5259530212367675655.Spec : Prop :=
  ∀ n, P5259530212367675655.a n = A166023 (n + 1)

end A166023

/-!
# A166025: a(0) = 6, a(1) = 17, a(n+1) = a(n) + a(n-1) for n>0.

The programs for A166025, the canonical program `A166025.P6999648749179387122` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166025 has offset 0).

The definition of A166025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166025.P6999648749179387122

`6*A000045(n+1)+11*A000045(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166025

/-- `6*A000045(n+1)+11*A000045(n)` -/
def P6999648749179387122.Spec : Prop :=
  ∀ n, P6999648749179387122.a n = A166025 n

theorem P6999648749179387122.correct : P6999648749179387122.Spec := by
  intro n
  simp only [A166025]

end A166025

/-! ## A166025.P3845641593406191576

`ogf((6+11x)/(1-x-x^2))`
-/

namespace A166025.P3845641593406191576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 11] [1, -1, -1] n

end

end A166025.P3845641593406191576

namespace A166025

/-- `ogf((6+11x)/(1-x-x^2))` -/
def P3845641593406191576.Spec : Prop :=
  ∀ n, P3845641593406191576.a n = A166025 n

end A166025

/-! ## A166025.P2353851235416555050

`a(n-1)+a(n-2)` with `a(0)=6, a(1)=17`
-/

namespace A166025.P2353851235416555050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A166025.P2353851235416555050

namespace A166025

/-- `a(n-1)+a(n-2)` -/
def P2353851235416555050.Spec : Prop :=
  ∀ n, (P2353851235416555050.a n : ℤ) = A166025 n

end A166025

/-! ## A166025.P18433837458138055936

`A022138(n)+A000285(n)`
-/

namespace A166025.P18433837458138055936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A000285 n

end

end A166025.P18433837458138055936

namespace A166025

/-- `A022138(n)+A000285(n)` -/
def P18433837458138055936.Spec : Prop :=
  ∀ n, P18433837458138055936.a n = A166025 n

end A166025

/-! ## A166025.P17066443662457558933

`A022381(n)+A013655(n)`
-/

namespace A166025.P17066443662457558933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n + A013655 n

end

end A166025.P17066443662457558933

namespace A166025

/-- `A022381(n)+A013655(n)` -/
def P17066443662457558933.Spec : Prop :=
  ∀ n, P17066443662457558933.a n = A166025 n

end A166025

/-! ## A166025.P9114261820735276008

`A022099(n)+A020712(n)`
-/

namespace A166025.P9114261820735276008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A020712 n

end

end A166025.P9114261820735276008

namespace A166025

/-- `A022099(n)+A020712(n)` -/
def P9114261820735276008.Spec : Prop :=
  ∀ n, P9114261820735276008.a n = A166025 n

end A166025

/-! ## A166025.P8839432115097227173

`A022313(n)+A020717(n)`
-/

namespace A166025.P8839432115097227173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A020717 n

end

end A166025.P8839432115097227173

namespace A166025

/-- `A022313(n)+A020717(n)` -/
def P8839432115097227173.Spec : Prop :=
  ∀ n, P8839432115097227173.a n = A166025 n

end A166025

/-! ## A166025.P2380499966859253278

`A022380(n)+A020701(n)`
-/

namespace A166025.P2380499966859253278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022380 n + A020701 n

end

end A166025.P2380499966859253278

namespace A166025

/-- `A022380(n)+A020701(n)` -/
def P2380499966859253278.Spec : Prop :=
  ∀ n, P2380499966859253278.a n = A166025 n

end A166025

/-! ## A166025.P16985852955174769708

`A022383(n)+A020695(n)`
-/

namespace A166025.P16985852955174769708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022383 n + A020695 n

end

end A166025.P16985852955174769708

namespace A166025

/-- `A022383(n)+A020695(n)` -/
def P16985852955174769708.Spec : Prop :=
  ∀ n, P16985852955174769708.a n = A166025 n

end A166025

/-! ## A166025.P4067758265302541944

`A022136(n)+A022096(n)`
-/

namespace A166025.P4067758265302541944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A022096 n

end

end A166025.P4067758265302541944

namespace A166025

/-- `A022136(n)+A022096(n)` -/
def P4067758265302541944.Spec : Prop :=
  ∀ n, P4067758265302541944.a n = A166025 n

end A166025

/-! ## A166025.P1129813660217768040

`A022137(n)+A022095(n)`
-/

namespace A166025.P1129813660217768040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A022095 n

end

end A166025.P1129813660217768040

namespace A166025

/-- `A022137(n)+A022095(n)` -/
def P1129813660217768040.Spec : Prop :=
  ∀ n, P1129813660217768040.a n = A166025 n

end A166025

/-! ## A166025.P8188133953103156822

`A022122(n)+A022120(n)`
-/

namespace A166025.P8188133953103156822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022120 n

end

end A166025.P8188133953103156822

namespace A166025

/-- `A022122(n)+A022120(n)` -/
def P8188133953103156822.Spec : Prop :=
  ∀ n, P8188133953103156822.a n = A166025 n

end A166025

/-! ## A166025.P15601135133321494360

`A022131(n)+A022112(n)`
-/

namespace A166025.P15601135133321494360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022112 n

end

end A166025.P15601135133321494360

namespace A166025

/-- `A022131(n)+A022112(n)` -/
def P15601135133321494360.Spec : Prop :=
  ∀ n, P15601135133321494360.a n = A166025 n

end A166025

/-! ## A166025.P14262051979349373147

`A022388(n)+A022087(n)`
-/

namespace A166025.P14262051979349373147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022388 n + A022087 n

end

end A166025.P14262051979349373147

namespace A166025

/-- `A022388(n)+A022087(n)` -/
def P14262051979349373147.Spec : Prop :=
  ∀ n, P14262051979349373147.a n = A166025 n

end A166025

/-! ## A166025.P4160267290763017983

`A022379(n)+A022121(n)`
-/

namespace A166025.P4160267290763017983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022121 n

end

end A166025.P4160267290763017983

namespace A166025

/-- `A022379(n)+A022121(n)` -/
def P4160267290763017983.Spec : Prop :=
  ∀ n, P4160267290763017983.a n = A166025 n

end A166025

/-! ## A166025.P5136261185490044646

`A022382(n)+A022113(n)`
-/

namespace A166025.P5136261185490044646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A022113 n

end

end A166025.P5136261185490044646

namespace A166025

/-- `A022382(n)+A022113(n)` -/
def P5136261185490044646.Spec : Prop :=
  ∀ n, P5136261185490044646.a n = A166025 n

end A166025

/-! ## A166025.P12472903081082127028

`A104449(n)+A022126(n)`
-/

namespace A166025.P12472903081082127028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022126 n

end

end A166025.P12472903081082127028

namespace A166025

/-- `A104449(n)+A022126(n)` -/
def P12472903081082127028.Spec : Prop :=
  ∀ n, P12472903081082127028.a n = A166025 n

end A166025

/-! ## A166025.P14273641599113559202

`A118658(n)+A022134(n)`
-/

namespace A166025.P14273641599113559202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022134 n

end

end A166025.P14273641599113559202

namespace A166025

/-- `A118658(n)+A022134(n)` -/
def P14273641599113559202.Spec : Prop :=
  ∀ n, P14273641599113559202.a n = A166025 n

end A166025

/-! ## A166025.P3947586544722840189

`A152163(n)+A022142(n)`
-/

namespace A166025.P3947586544722840189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022142 n

end

end A166025.P3947586544722840189

namespace A166025

/-- `A152163(n)+A022142(n)` -/
def P3947586544722840189.Spec : Prop :=
  ∀ n, P3947586544722840189.a n = A166025 n

end A166025

/-! ## A166025.P7512593380876299914

`A212804(n)+A022141(n)`
-/

namespace A166025.P7512593380876299914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022141 n

end

end A166025.P7512593380876299914

namespace A166025

/-- `A212804(n)+A022141(n)` -/
def P7512593380876299914.Spec : Prop :=
  ∀ n, P7512593380876299914.a n = A166025 n

end A166025

/-!
# A166027: a(n) = 6*a(n-2) for n > 2; a(1) = 4, a(2) = 1.

The programs for A166027, the canonical program `A166027.P6883810811267819966` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166027 has offset 1).

The definition of A166027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)` (program `A166027.P6883810811267819966`, by `A166027.P6883810811267819966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166027.P6883810811267819966

`6*a(n-2)` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166027

/-- `6*a(n-2)` -/
def P6883810811267819966.Spec : Prop :=
  ∀ n, (P6883810811267819966.a n : ℤ) = A166027 (n + 1)

theorem P6883810811267819966.correct : P6883810811267819966.Spec := by
  intro n
  simp only [A166027, Nat.add_sub_cancel]

end A166027

/-! ## A166027.P3349097100697111049

`ogf((4+x)/(1-6x^2))`
-/

namespace A166027.P3349097100697111049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, 0, -6] n

end

end A166027.P3349097100697111049

namespace A166027

/-- `ogf((4+x)/(1-6x^2))` -/
def P3349097100697111049.Spec : Prop :=
  ∀ n, P3349097100697111049.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P3046112171871180153

`a(n-2)/(1-5/6)` with `a(0)=4, a(1)=1`
-/

namespace A166027.P3046112171871180153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) / (1 - (5 : ℚ) / 6)

end

end A166027.P3046112171871180153

namespace A166027

/-- `a(n-2)/(1-5/6)` -/
def P3046112171871180153.Spec : Prop :=
  ∀ n, P3046112171871180153.a n = (A166027 (n + 1) : ℚ)

end A166027

/-! ## A166027.P7486990256453400261

`a(n-2)+lcm(5, a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A166027.P7486990256453400261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + Nat.lcm 5 (a (n - 2))

end

end A166027.P7486990256453400261

namespace A166027

/-- `a(n-2)+lcm(5, a(n-2))` -/
def P7486990256453400261.Spec : Prop :=
  ∀ n, (P7486990256453400261.a n : ℤ) = A166027 (n + 1)

end A166027

/-! ## A166027.P14357481168135451538

`Δ[A166023(n+1)]`
-/

namespace A166027.P14357481168135451538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166027.P14357481168135451538

namespace A166027

/-- `Δ[A166023(n+1)]` -/
def P14357481168135451538.Spec : Prop :=
  ∀ n, P14357481168135451538.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P6686018368145375666

`A164532(xor(1, n)+1)`
-/

namespace A166027.P6686018368145375666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (Nat.xor 1 n + 1)

end

end A166027.P6686018368145375666

namespace A166027

/-- `A164532(xor(1, n)+1)` -/
def P6686018368145375666.Spec : Prop :=
  ∀ n, P6686018368145375666.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P91310440130780463

`A164532(A014681(n+1))`
-/

namespace A166027.P91310440130780463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (A014681 (n + 1)).toNat

end

end A166027.P91310440130780463

namespace A166027

/-- `A164532(A014681(n+1))` -/
def P91310440130780463.Spec : Prop :=
  ∀ n, P91310440130780463.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P9438982678642596518

`A164532(A103889(n+1))`
-/

namespace A166027.P9438982678642596518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (A103889 (n + 1)).toNat

end

end A166027.P9438982678642596518

namespace A166027

/-- `A164532(A103889(n+1))` -/
def P9438982678642596518.Spec : Prop :=
  ∀ n, P9438982678642596518.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P5868106273890224840

`A108411(n)*A112032(n)`
-/

namespace A166027.P5868106273890224840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A112032 n

end

end A166027.P5868106273890224840

namespace A166027

/-- `A108411(n)*A112032(n)` -/
def P5868106273890224840.Spec : Prop :=
  ∀ n, P5868106273890224840.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P17168050202826495292

`Δ[A016116(n)*A166465(n+1)]`
-/

namespace A166027.P17168050202826495292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A166465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166027.P17168050202826495292

namespace A166027

/-- `Δ[A016116(n)*A166465(n+1)]` -/
def P17168050202826495292.Spec : Prop :=
  ∀ n, P17168050202826495292.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P8279441441108870112

`A117858(n+1)-A164532(n+1)`
-/

namespace A166027.P8279441441108870112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117858 (n + 1) - A164532 (n + 1)

end

end A166027.P8279441441108870112

namespace A166027

/-- `A117858(n+1)-A164532(n+1)` -/
def P8279441441108870112.Spec : Prop :=
  ∀ n, P8279441441108870112.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P5107375502996113510

`A166023(n+2)-A166023(n+1)`
-/

namespace A166027.P5107375502996113510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (n + 2) - A166023 (n + 1)

end

end A166027.P5107375502996113510

namespace A166027

/-- `A166023(n+2)-A166023(n+1)` -/
def P5107375502996113510.Spec : Prop :=
  ∀ n, P5107375502996113510.a n = A166027 (n + 1)

end A166027

/-! ## A166027.P2719804292326863627

`A067411(n)/a(n-1)` with `a(0)=4`
-/

namespace A166027.P2719804292326863627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (A067411 n : ℚ) / a (n - 1)

end

end A166027.P2719804292326863627

namespace A166027

/-- `A067411(n)/a(n-1)` -/
def P2719804292326863627.Spec : Prop :=
  ∀ n, P2719804292326863627.a n = (A166027 (n + 1) : ℚ)

end A166027

/-!
# A166028: a(n) is the starting position of the second occurrence of a string of the initial n decimal digits of e in the decimal expansion of e.

The programs for A166028, there is no canonical definition to state claims against.
-/

/-! ## A166028.P15874422884592488828

`A112788(n+1)-1`
-/

namespace A166028.P15874422884592488828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112788 (n + 1) - 1

end

end A166028.P15874422884592488828

/-! ## A166028.P2253003552694877347

`abs(1-A112788(Δ[n²]-n))`
-/

namespace A166028.P2253003552694877347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A112788 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A166028.P2253003552694877347

/-! ## A166028.P8192662372193693067

`A321800(n)+A112788(n+1)`
-/

namespace A166028.P8192662372193693067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A112788 (n + 1)

end

end A166028.P8192662372193693067

/-! ## A166028.P18442786189798125983

`A321804(n)+A112788(n+1)`
-/

namespace A166028.P18442786189798125983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A112788 (n + 1)

end

end A166028.P18442786189798125983

/-!
# A166031: Continued fraction expansion for x so that the sine integral of x is 1.

The programs for A166031, there is no canonical definition to state claims against.
-/

/-! ## A166031.P10720506939015830111

`A277707(A153783(2*(n+2)))`
-/

namespace A166031.P10720506939015830111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A153783 (2 * (n + 2))).toNat

end

end A166031.P10720506939015830111

/-!
# A166033: a(n) = 11/4 +11*n/2 + 29*(-1)^n/4.

The programs for A166033, the canonical program `A166033.P2166371400738277460` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166033 has offset 1).

The definition of A166033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166033.P2166371400738277460

`11*(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166033

/-- `11*(n+1)-a(n-1)` -/
def P2166371400738277460.Spec : Prop :=
  ∀ n, P2166371400738277460.a n = A166033 (n + 1)

theorem P2166371400738277460.correct : P2166371400738277460.Spec := by
  intro n
  simp only [A166033, Nat.add_sub_cancel]

end A166033

/-! ## A166033.P3496725411339630437

`a(n-2)+11` with `a(0)=1, a(1)=21`
-/

namespace A166033.P3496725411339630437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  a (n - 2) + 11

end

end A166033.P3496725411339630437

namespace A166033

/-- `a(n-2)+11` -/
def P3496725411339630437.Spec : Prop :=
  ∀ n, (P3496725411339630437.a n : ℤ) = A166033 (n + 1)

end A166033

/-! ## A166033.P8191125258164997197

`∑[11-a(n-1)]` with `a(0)=1, a(1)=20`
-/

namespace A166033.P8191125258164997197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166033.P8191125258164997197

namespace A166033

/-- `∑[11-a(n-1)]` -/
def P8191125258164997197.Spec : Prop :=
  ∀ n, P8191125258164997197.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P16277658745527317639

`11-(a(n-1)-11*n)` with `a(0)=1`
-/

namespace A166033.P16277658745527317639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 - (a (n - 1) - (11 * n : ℤ))

end

end A166033.P16277658745527317639

namespace A166033

/-- `11-(a(n-1)-11*n)` -/
def P16277658745527317639.Spec : Prop :=
  ∀ n, P16277658745527317639.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P11837107896053868406

`A166525(n+1)+A030451(n)`
-/

namespace A166033.P11837107896053868406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (n + 1) + A030451 n

end

end A166033.P11837107896053868406

namespace A166033

/-- `A166525(n+1)+A030451(n)` -/
def P11837107896053868406.Spec : Prop :=
  ∀ n, P11837107896053868406.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P2287234500503940034

`A166526(n+1)-A030451(n)`
-/

namespace A166033.P2287234500503940034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166526 (n + 1) - A030451 n

end

end A166033.P2287234500503940034

namespace A166033

/-- `A166526(n+1)-A030451(n)` -/
def P2287234500503940034.Spec : Prop :=
  ∀ n, P2287234500503940034.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P8405805263531185068

`A166524(n+1)+2*A030451(n)`
-/

namespace A166033.P8405805263531185068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1) + 2 * A030451 n

end

end A166033.P8405805263531185068

namespace A166033

/-- `A166524(n+1)+2*A030451(n)` -/
def P8405805263531185068.Spec : Prop :=
  ∀ n, P8405805263531185068.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P9990266920455348064

`2*A166521(n+1)-A008619(n)`
-/

namespace A166033.P9990266920455348064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166521 (n + 1) - A008619 n

end

end A166033.P9990266920455348064

namespace A166033

/-- `2*A166521(n+1)-A008619(n)` -/
def P9990266920455348064.Spec : Prop :=
  ∀ n, P9990266920455348064.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P8967236440196028203

`2*A166523(n+1)-A166520(n+1)`
-/

namespace A166033.P8967236440196028203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166523 (n + 1) - A166520 (n + 1)

end

end A166033.P8967236440196028203

namespace A166033

/-- `2*A166523(n+1)-A166520(n+1)` -/
def P8967236440196028203.Spec : Prop :=
  ∀ n, P8967236440196028203.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P10578914436974365070

`2*A166524(n+1)-A166522(n+1)`
-/

namespace A166033.P10578914436974365070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166524 (n + 1) - A166522 (n + 1)

end

end A166033.P10578914436974365070

namespace A166033

/-- `2*A166524(n+1)-A166522(n+1)` -/
def P10578914436974365070.Spec : Prop :=
  ∀ n, P10578914436974365070.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P14805127107310785692

`2*A166525(n+1)-A166524(n+1)`
-/

namespace A166033.P14805127107310785692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166525 (n + 1) - A166524 (n + 1)

end

end A166033.P14805127107310785692

namespace A166033

/-- `2*A166525(n+1)-A166524(n+1)` -/
def P14805127107310785692.Spec : Prop :=
  ∀ n, P14805127107310785692.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P17093909194125647659

`(A166526(n+1)+A166525(n+1))/2`
-/

namespace A166033.P17093909194125647659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166526 (n + 1) + A166525 (n + 1) : ℚ) / 2

end

end A166033.P17093909194125647659

namespace A166033

/-- `(A166526(n+1)+A166525(n+1))/2` -/
def P17093909194125647659.Spec : Prop :=
  ∀ n, P17093909194125647659.a n = (A166033 (n + 1) : ℚ)

end A166033

/-! ## A166033.P10148824390788099770

`A008619(n)+A008592(A030451(n))`
-/

namespace A166033.P10148824390788099770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A008592 (A030451 n).toNat

end

end A166033.P10148824390788099770

namespace A166033

/-- `A008619(n)+A008592(A030451(n))` -/
def P10148824390788099770.Spec : Prop :=
  ∀ n, P10148824390788099770.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P12514447280737472515

`A166520(n+1)+A166526(n+1)-A166521(n+1)`
-/

namespace A166033.P12514447280737472515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1) + (A166526 (n + 1) - A166521 (n + 1))

end

end A166033.P12514447280737472515

namespace A166033

/-- `A166520(n+1)+A166526(n+1)-A166521(n+1)` -/
def P12514447280737472515.Spec : Prop :=
  ∀ n, P12514447280737472515.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P13590392203462392972

`A166521(n+1)+A166525(n+1)-A166520(n+1)`
-/

namespace A166033.P13590392203462392972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1) + (A166525 (n + 1) - A166520 (n + 1))

end

end A166033.P13590392203462392972

namespace A166033

/-- `A166521(n+1)+A166525(n+1)-A166520(n+1)` -/
def P13590392203462392972.Spec : Prop :=
  ∀ n, P13590392203462392972.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P13347455921768737120

`A166521(n+1)+A166526(n+1)-A166522(n+1)`
-/

namespace A166033.P13347455921768737120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1) + (A166526 (n + 1) - A166522 (n + 1))

end

end A166033.P13347455921768737120

namespace A166033

/-- `A166521(n+1)+A166526(n+1)-A166522(n+1)` -/
def P13347455921768737120.Spec : Prop :=
  ∀ n, P13347455921768737120.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P13819272054924332134

`A166522(n+1)+A166524(n+1)-A166520(n+1)`
-/

namespace A166033.P13819272054924332134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) + (A166524 (n + 1) - A166520 (n + 1))

end

end A166033.P13819272054924332134

namespace A166033

/-- `A166522(n+1)+A166524(n+1)-A166520(n+1)` -/
def P13819272054924332134.Spec : Prop :=
  ∀ n, P13819272054924332134.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P13792537559972726958

`A166522(n+1)+A166525(n+1)-A166521(n+1)`
-/

namespace A166033.P13792537559972726958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) + (A166525 (n + 1) - A166521 (n + 1))

end

end A166033.P13792537559972726958

namespace A166033

/-- `A166522(n+1)+A166525(n+1)-A166521(n+1)` -/
def P13792537559972726958.Spec : Prop :=
  ∀ n, P13792537559972726958.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P8820534510186755125

`A166522(n+1)+A166526(n+1)-A166523(n+1)`
-/

namespace A166033.P8820534510186755125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) + (A166526 (n + 1) - A166523 (n + 1))

end

end A166033.P8820534510186755125

namespace A166033

/-- `A166522(n+1)+A166526(n+1)-A166523(n+1)` -/
def P8820534510186755125.Spec : Prop :=
  ∀ n, P8820534510186755125.a n = A166033 (n + 1)

end A166033

/-! ## A166033.P13834206534014312641

`A166523(n+1)+A166524(n+1)-A166521(n+1)`
-/

namespace A166033.P13834206534014312641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166523 (n + 1) + (A166524 (n + 1) - A166521 (n + 1))

end

end A166033.P13834206534014312641

namespace A166033

/-- `A166523(n+1)+A166524(n+1)-A166521(n+1)` -/
def P13834206534014312641.Spec : Prop :=
  ∀ n, P13834206534014312641.a n = A166033 (n + 1)

end A166033

/-!
# A166034: Primes which are equal to the sum of three consecutive primes minus 2.

The programs for A166034, the canonical program `A166034.P4358169721997023842` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166034 has offset 1).

The definition of A166034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166034.P4358169721997023842

`p?[A034961(n+1)-2]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166034

/-- `p?[A034961(n+1)-2]` -/
def P4358169721997023842.Spec : Prop :=
  ∀ n, P4358169721997023842.a n = A166034 (n + 1)

theorem P4358169721997023842.correct : P4358169721997023842.Spec := by
  intro n
  simp only [A166034, Nat.add_sub_cancel]

end A166034

/-! ## A166034.P11797388049550186844

`p?[A071148(n+2)-A007504(n)]`
-/

namespace A166034.P11797388049550186844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 2) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P11797388049550186844

namespace A166034

/-- `p?[A071148(n+2)-A007504(n)]` -/
def P11797388049550186844.Spec : Prop :=
  ∀ n, P11797388049550186844.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P2158729148514405488

`p?[A040976(n+1)+A001043(n+2)]`
-/

namespace A166034.P2158729148514405488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A001043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P2158729148514405488

namespace A166034

/-- `p?[A040976(n+1)+A001043(n+2)]` -/
def P2158729148514405488.Spec : Prop :=
  ∀ n, P2158729148514405488.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P1893364454642544835

`p?[A007504(n+2)-A175965(n+1)]`
-/

namespace A166034.P1893364454642544835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P1893364454642544835

namespace A166034

/-- `p?[A007504(n+2)-A175965(n+1)]` -/
def P1893364454642544835.Spec : Prop :=
  ∀ n, P1893364454642544835.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P4440119522519073101

`p?[A001043(n+1)+A004139(n+1)-2]`
-/

namespace A166034.P4440119522519073101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A004139 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P4440119522519073101

namespace A166034

/-- `p?[A001043(n+1)+A004139(n+1)-2]` -/
def P4440119522519073101.Spec : Prop :=
  ∀ n, P4440119522519073101.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P3717592685894628725

`p?[A001043(n+1)+A008578(n+1)-2]`
-/

namespace A166034.P3717592685894628725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A008578 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P3717592685894628725

namespace A166034

/-- `p?[A001043(n+1)+A008578(n+1)-2]` -/
def P3717592685894628725.Spec : Prop :=
  ∀ n, P3717592685894628725.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P15788226778292768711

`p?[A034963(n+1)-(A000040(n+1)+2)]`
-/

namespace A166034.P15788226778292768711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) - (A000040 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P15788226778292768711

namespace A166034

/-- `p?[A034963(n+1)-(A000040(n+1)+2)]` -/
def P15788226778292768711.Spec : Prop :=
  ∀ n, P15788226778292768711.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P13648769356557014973

`p?[A100484(n+2)+A073271(n+1)-1]`
-/

namespace A166034.P13648769356557014973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) + (A073271 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P13648769356557014973

namespace A166034

/-- `p?[A100484(n+2)+A073271(n+1)-1]` -/
def P13648769356557014973.Spec : Prop :=
  ∀ n, P13648769356557014973.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P9068310710038002294

`p?[A001043(n+2)+A000040(n+1)-2]`
-/

namespace A166034.P9068310710038002294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) + (A000040 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P9068310710038002294

namespace A166034

/-- `p?[A001043(n+2)+A000040(n+1)-2]` -/
def P9068310710038002294.Spec : Prop :=
  ∀ n, P9068310710038002294.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P15540166493341268902

`∩[A000040(n+1), A034961(n+1)-2]`
-/

namespace A166034.P15540166493341268902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166034.P15540166493341268902

namespace A166034

/-- `∩[A000040(n+1), A034961(n+1)-2]` -/
def P15540166493341268902.Spec : Prop :=
  ∀ n, (P15540166493341268902.a n : ℤ) = A166034 (n + 1)

end A166034

/-! ## A166034.P232649170965607714

`record[A006530(A034961(n+2)-2)]`
-/

namespace A166034.P232649170965607714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034961 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166034.P232649170965607714

namespace A166034

/-- `record[A006530(A034961(n+2)-2)]` -/
def P232649170965607714.Spec : Prop :=
  ∀ n, P232649170965607714.a n = A166034 (n + 1)

end A166034

/-! ## A166034.P12123777802839232588

`record[A020639(A034961(n+2)-2)]`
-/

namespace A166034.P12123777802839232588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034961 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166034.P12123777802839232588

namespace A166034

/-- `record[A020639(A034961(n+2)-2)]` -/
def P12123777802839232588.Spec : Prop :=
  ∀ n, P12123777802839232588.a n = A166034 (n + 1)

end A166034

/-!
# A166035: a(n) = (3^n+6*(-4)^n)/7.

The programs for A166035, the canonical program `A166035.P1610479233059370148` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166035 has offset 0).

The definition of A166035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166035.P1610479233059370148

`(3^n+6*(-4)^n)/7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166035

/-- `(3^n+6*(-4)^n)/7` -/
def P1610479233059370148.Spec : Prop :=
  ∀ n, P1610479233059370148.a n = (A166035 n : ℚ)

end A166035

/-! ## A166035.P17913511236707800294

`ogf((1-2x)/(1+x-12x^2))`
-/

namespace A166035.P17913511236707800294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 1, -12] n

end

end A166035.P17913511236707800294

namespace A166035

/-- `ogf((1-2x)/(1+x-12x^2))` -/
def P17913511236707800294.Spec : Prop :=
  ∀ n, P17913511236707800294.a n = A166035 n

end A166035

/-! ## A166035.P3767395530936367657

`3^(n-1)-4*a(n-1)` with `a(0)=1`
-/

namespace A166035.P3767395530936367657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 4 * a (n - 1)

end

end A166035.P3767395530936367657

namespace A166035

/-- `3^(n-1)-4*a(n-1)` -/
def P3767395530936367657.Spec : Prop :=
  ∀ n, P3767395530936367657.a n = (A166035 n : ℚ)

end A166035

/-! ## A166035.P6721491045289153284

`3*4*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-3`
-/

namespace A166035.P6721491045289153284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  3 * (4 * a (n - 2)) - a (n - 1)

end

end A166035.P6721491045289153284

namespace A166035

/-- `3*4*a(n-2)-a(n-1)` -/
def P6721491045289153284.Spec : Prop :=
  ∀ n, P6721491045289153284.a n = A166035 n

end A166035

/-! ## A166035.P10182491729230891171

`xor(3*a(n-1), -A081294(n))` with `a(0)=1`
-/

namespace A166035.P10182491729230891171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (3 * a (n - 1)) (-A081294 n)

end

end A166035.P10182491729230891171

namespace A166035

/-- `xor(3*a(n-1), -A081294(n))` -/
def P10182491729230891171.Spec : Prop :=
  ∀ n, P10182491729230891171.a n = A166035 n

end A166035

/-! ## A166035.P1777210383125462680

`xor(3*a(n-1), A123344(2*n))` with `a(0)=1`
-/

namespace A166035.P1777210383125462680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (3 * a (n - 1)) (A123344 (2 * n))

end

end A166035.P1777210383125462680

namespace A166035

/-- `xor(3*a(n-1), A123344(2*n))` -/
def P1777210383125462680.Spec : Prop :=
  ∀ n, P1777210383125462680.a n = A166035 n

end A166035

/-! ## A166035.P1667986141493415341

`3*a(n-1)+3*A009117(n)` with `a(0)=1`
-/

namespace A166035.P1667986141493415341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 3 * A009117 n

end

end A166035.P1667986141493415341

namespace A166035

/-- `3*a(n-1)+3*A009117(n)` -/
def P1667986141493415341.Spec : Prop :=
  ∀ n, P1667986141493415341.a n = A166035 n

end A166035

/-!
# A166036: a(n) = (4^n+8*(-5)^n)/9.

The programs for A166036, the canonical program `A166036.P297882067193729902` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166036 has offset 0).

The definition of A166036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166036.P297882067193729902

`(4^n+8*(-5)^n)/9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166036

/-- `(4^n+8*(-5)^n)/9` -/
def P297882067193729902.Spec : Prop :=
  ∀ n, P297882067193729902.a n = (A166036 n : ℚ)

end A166036

/-! ## A166036.P17061517724642525165

`ogf((1-3x)/(1+x-20x^2))`
-/

namespace A166036.P17061517724642525165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, 1, -20] n

end

end A166036.P17061517724642525165

namespace A166036

/-- `ogf((1-3x)/(1+x-20x^2))` -/
def P17061517724642525165.Spec : Prop :=
  ∀ n, P17061517724642525165.a n = A166036 n

end A166036

/-! ## A166036.P5873526232843873217

`4^(n-1)-5*a(n-1)` with `a(0)=1`
-/

namespace A166036.P5873526232843873217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 5 * a (n - 1)

end

end A166036.P5873526232843873217

namespace A166036

/-- `4^(n-1)-5*a(n-1)` -/
def P5873526232843873217.Spec : Prop :=
  ∀ n, P5873526232843873217.a n = (A166036 n : ℚ)

end A166036

/-! ## A166036.P7054145166327442428

`20*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-4`
-/

namespace A166036.P7054145166327442428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n a =>
  20 * a (n - 2) - a (n - 1)

end

end A166036.P7054145166327442428

namespace A166036

/-- `20*a(n-2)-a(n-1)` -/
def P7054145166327442428.Spec : Prop :=
  ∀ n, P7054145166327442428.a n = A166036 n

end A166036

/-!
# A166037: Numbers that are the sum of 2 successive nonprimes A141468.

The programs for A166037, the canonical program `A166037.P12323289688813525032` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166037 has offset 1).

The definition of A166037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166037.P12323289688813525032

`A141468(n+1)+A141468(n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166037

/-- `A141468(n+1)+A141468(n+2)` -/
def P12323289688813525032.Spec : Prop :=
  ∀ n, P12323289688813525032.a n = A166037 (n + 1)

theorem P12323289688813525032.correct : P12323289688813525032.Spec := by
  intro n
  simp only [A166037, Nat.add_sub_cancel]

end A166037

/-! ## A166037.P4154315897072292314

`A161811(n)+a(n-1)` with `a(0)=1`
-/

namespace A166037.P4154315897072292314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161811 n + a (n - 1)

end

end A166037.P4154315897072292314

namespace A166037

/-- `A161811(n)+a(n-1)` -/
def P4154315897072292314.Spec : Prop :=
  ∀ n, P4154315897072292314.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P1915534832207211929

`comp[A060264(n)]+Δ[A051349(n)]`
-/

namespace A166037.P1915534832207211929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (f2 (n + 1) - f2 n)

end

end A166037.P1915534832207211929

namespace A166037

/-- `comp[A060264(n)]+Δ[A051349(n)]` -/
def P1915534832207211929.Spec : Prop :=
  ∀ n, P1915534832207211929.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P1370826286181045355

`A018252(n+1)+comp[A060264(n)]`
-/

namespace A166037.P1370826286181045355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A166037.P1370826286181045355

namespace A166037

/-- `A018252(n+1)+comp[A060264(n)]` -/
def P1370826286181045355.Spec : Prop :=
  ∀ n, P1370826286181045355.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P16784577525536781543

`A018252(n+1)+comp[A151800(n)]`
-/

namespace A166037.P16784577525536781543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A166037.P16784577525536781543

namespace A166037

/-- `A018252(n+1)+comp[A151800(n)]` -/
def P16784577525536781543.Spec : Prop :=
  ∀ n, P16784577525536781543.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P12762832042132273604

`A018252(n+1)+comp[A162753(n)]`
-/

namespace A166037.P12762832042132273604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A166037.P12762832042132273604

namespace A166037

/-- `A018252(n+1)+comp[A162753(n)]` -/
def P12762832042132273604.Spec : Prop :=
  ∀ n, P12762832042132273604.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P8478196050769053662

`A176100(n+1)+A054546(n+1)`
-/

namespace A166037.P8478196050769053662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1) + A054546 (n + 1)

end

end A166037.P8478196050769053662

namespace A166037

/-- `A176100(n+1)+A054546(n+1)` -/
def P8478196050769053662.Spec : Prop :=
  ∀ n, P8478196050769053662.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P1971395618067881012

`A166039(n+1)-A002808(n+1)`
-/

namespace A166037.P1971395618067881012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) - A002808 (n + 1)

end

end A166037.P1971395618067881012

namespace A166037

/-- `A166039(n+1)-A002808(n+1)` -/
def P1971395618067881012.Spec : Prop :=
  ∀ n, P1971395618067881012.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P5167209511352188783

`A022797(n+1)-A161671(n+1)`
-/

namespace A166037.P5167209511352188783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1) - A161671 (n + 1)

end

end A166037.P5167209511352188783

namespace A166037

/-- `A022797(n+1)-A161671(n+1)` -/
def P5167209511352188783.Spec : Prop :=
  ∀ n, P5167209511352188783.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P12798370206442932573

`A139270(n+1)-A054546(n+1)`
-/

namespace A166037.P12798370206442932573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1) - A054546 (n + 1)

end

end A166037.P12798370206442932573

namespace A166037

/-- `A139270(n+1)-A054546(n+1)` -/
def P12798370206442932573.Spec : Prop :=
  ∀ n, P12798370206442932573.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P7238571694965725424

`A161843(n+1)-A065310(n+1)`
-/

namespace A166037.P7238571694965725424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1) - A065310 (n + 1)

end

end A166037.P7238571694965725424

namespace A166037

/-- `A161843(n+1)-A065310(n+1)` -/
def P7238571694965725424.Spec : Prop :=
  ∀ n, P7238571694965725424.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P7822928885146745430

`A166039(n+1)-A018252(n+2)`
-/

namespace A166037.P7822928885146745430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) - A018252 (n + 2)

end

end A166037.P7822928885146745430

namespace A166037

/-- `A166039(n+1)-A018252(n+2)` -/
def P7822928885146745430.Spec : Prop :=
  ∀ n, P7822928885146745430.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P6052565700646809520

`A163602(n+1)/A054546(n+1)`
-/

namespace A166037.P6052565700646809520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163602 (n + 1) : ℚ) / (A054546 (n + 1) : ℚ)

end

end A166037.P6052565700646809520

namespace A166037

/-- `A163602(n+1)/A054546(n+1)` -/
def P6052565700646809520.Spec : Prop :=
  ∀ n, P6052565700646809520.a n = (A166037 (n + 1) : ℚ)

end A166037

/-! ## A166037.P10827685500902761343

`∪[A167611(n+1), A167915(n+1)]`
-/

namespace A166037.P10827685500902761343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166037.P10827685500902761343

namespace A166037

/-- `∪[A167611(n+1), A167915(n+1)]` -/
def P10827685500902761343.Spec : Prop :=
  ∀ n, (P10827685500902761343.a n : ℤ) = A166037 (n + 1)

end A166037

/-! ## A166037.P2046653803989451090

`A018252(n+1)+comp[Δ[A007504(n)]]`
-/

namespace A166037.P2046653803989451090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A166037.P2046653803989451090

namespace A166037

/-- `A018252(n+1)+comp[Δ[A007504(n)]]` -/
def P2046653803989451090.Spec : Prop :=
  ∀ n, P2046653803989451090.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P11116694316135082117

`comp[A000040(n+1)]+A018252(n+1)`
-/

namespace A166037.P11116694316135082117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A018252 (n + 1)

end

end A166037.P11116694316135082117

namespace A166037

/-- `comp[A000040(n+1)]+A018252(n+1)` -/
def P11116694316135082117.Spec : Prop :=
  ∀ n, P11116694316135082117.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P3194607015917317619

`comp[A006530(n+2)]+A018252(n+1)`
-/

namespace A166037.P3194607015917317619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A018252 (n + 1)

end

end A166037.P3194607015917317619

namespace A166037

/-- `comp[A006530(n+2)]+A018252(n+1)` -/
def P3194607015917317619.Spec : Prop :=
  ∀ n, P3194607015917317619.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P2064527320912406680

`comp[A020639(n+2)]+A018252(n+1)`
-/

namespace A166037.P2064527320912406680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A018252 (n + 1)

end

end A166037.P2064527320912406680

namespace A166037

/-- `comp[A020639(n+2)]+A018252(n+1)` -/
def P2064527320912406680.Spec : Prop :=
  ∀ n, P2064527320912406680.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P12589293098341682803

`2*A018252(n+1)-A054546(n+1)`
-/

namespace A166037.P12589293098341682803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 1) - A054546 (n + 1)

end

end A166037.P12589293098341682803

namespace A166037

/-- `2*A018252(n+1)-A054546(n+1)` -/
def P12589293098341682803.Spec : Prop :=
  ∀ n, P12589293098341682803.a n = A166037 (n + 1)

end A166037

/-! ## A166037.P16380617375411196570

`A018252(n+1)+A176100(n+1)/2`
-/

namespace A166037.P16380617375411196570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) + (A176100 (n + 1) : ℚ) / 2

end

end A166037.P16380617375411196570

namespace A166037

/-- `A018252(n+1)+A176100(n+1)/2` -/
def P16380617375411196570.Spec : Prop :=
  ∀ n, P16380617375411196570.a n = (A166037 (n + 1) : ℚ)

end A166037

/-!
# A166039: Sums of three consecutive nonprimes A141468.

The programs for A166039, the canonical program `A166039.P12293682533427347331` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166039 has offset 1).

The definition of A166039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166039.P12293682533427347331

`A166037(n+1)+A002808(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A166039

/-- `A166037(n+1)+A002808(n+1)` -/
def P12293682533427347331.Spec : Prop :=
  ∀ n, P12293682533427347331.a n = A166039 (n + 1)

theorem P12293682533427347331.correct : P12293682533427347331.Spec := by
  intro n
  simp only [A166039, Nat.add_sub_cancel]

end A166039

/-! ## A166039.P6741003215223456730

`A161843(n+1)+A018252(n+1)`
-/

namespace A166039.P6741003215223456730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1) + A018252 (n + 1)

end

end A166039.P6741003215223456730

namespace A166039

/-- `A161843(n+1)+A018252(n+1)` -/
def P6741003215223456730.Spec : Prop :=
  ∀ n, P6741003215223456730.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P1829208800139407913

`A166037(n+1)+A018252(n+2)`
-/

namespace A166039.P1829208800139407913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) + A018252 (n + 2)

end

end A166039.P1829208800139407913

namespace A166039

/-- `A166037(n+1)+A018252(n+2)` -/
def P1829208800139407913.Spec : Prop :=
  ∀ n, P1829208800139407913.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P11779231085566485060

`A161843(n+1)+A141468(n+2)`
-/

namespace A166039.P11779231085566485060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1) + A141468 (n + 2)

end

end A166039.P11779231085566485060

namespace A166039

/-- `A161843(n+1)+A141468(n+2)` -/
def P11779231085566485060.Spec : Prop :=
  ∀ n, P11779231085566485060.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P17138035344432322350

`A053767(n+1)+A166037(n+1)-A053767(n)`
-/

namespace A166039.P17138035344432322350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1) + (A166037 (n + 1) - A053767 n)

end

end A166039.P17138035344432322350

namespace A166039

/-- `A053767(n+1)+A166037(n+1)-A053767(n)` -/
def P17138035344432322350.Spec : Prop :=
  ∀ n, P17138035344432322350.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P2669831725448064251

`A002808(n+1)+A141468(n+1)+A018252(n+1)`
-/

namespace A166039.P2669831725448064251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A141468 (n + 1) + A018252 (n + 1))

end

end A166039.P2669831725448064251

namespace A166039

/-- `A002808(n+1)+A141468(n+1)+A018252(n+1)` -/
def P2669831725448064251.Spec : Prop :=
  ∀ n, P2669831725448064251.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P16189975086448637183

`A018252(n+1)+A141468(n+1)+A018252(n+2)`
-/

namespace A166039.P16189975086448637183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A141468 (n + 1) + A018252 (n + 2))

end

end A166039.P16189975086448637183

namespace A166039

/-- `A018252(n+1)+A141468(n+1)+A018252(n+2)` -/
def P16189975086448637183.Spec : Prop :=
  ∀ n, P16189975086448637183.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P8480350525970667324

`A022798(n+1)+A166037(n+1)-A008578(n+1)`
-/

namespace A166039.P8480350525970667324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022798 (n + 1) + (A166037 (n + 1) - A008578 (n + 1))

end

end A166039.P8480350525970667324

namespace A166039

/-- `A022798(n+1)+A166037(n+1)-A008578(n+1)` -/
def P8480350525970667324.Spec : Prop :=
  ∀ n, P8480350525970667324.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P17685889844583121739

`A002808(n+1)+A141468(n+1)+A141468(n+2)`
-/

namespace A166039.P17685889844583121739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A141468 (n + 1) + A141468 (n + 2))

end

end A166039.P17685889844583121739

namespace A166039

/-- `A002808(n+1)+A141468(n+1)+A141468(n+2)` -/
def P17685889844583121739.Spec : Prop :=
  ∀ n, P17685889844583121739.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P14076052991683297224

`A079772(n+1)+A166037(n+1)-A056608(n+1)`
-/

namespace A166039.P14076052991683297224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079772 (n + 1) + (A166037 (n + 1) - A056608 (n + 1))

end

end A166039.P14076052991683297224

namespace A166039

/-- `A079772(n+1)+A166037(n+1)-A056608(n+1)` -/
def P14076052991683297224.Spec : Prop :=
  ∀ n, P14076052991683297224.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P1067068909325646793

`A166037(n+2)+A141468(n+1)`
-/

namespace A166039.P1067068909325646793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2) + A141468 (n + 1)

end

end A166039.P1067068909325646793

namespace A166039

/-- `A166037(n+2)+A141468(n+1)` -/
def P1067068909325646793.Spec : Prop :=
  ∀ n, P1067068909325646793.a n = A166039 (n + 1)

end A166039

/-! ## A166039.P11405102407570705437

`A161843(n+1)+A161843(n+2)-A002808(n+2)`
-/

namespace A166039.P11405102407570705437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1) + (A161843 (n + 2) - A002808 (n + 2))

end

end A166039.P11405102407570705437

namespace A166039

/-- `A161843(n+1)+A161843(n+2)-A002808(n+2)` -/
def P11405102407570705437.Spec : Prop :=
  ∀ n, P11405102407570705437.a n = A166039 (n + 1)

end A166039

/-!
# A166041: Permutation of nonnegative integers: a(n) tells which integer is in the same position in the square array A163357 as where n is located in the array A163334.

The programs for A166041, there is no canonical definition to state claims against.
-/

/-! ## A166041.P1459130406841341694

`A163357(A163335(n))`
-/

namespace A166041.P1459130406841341694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163335 n).toNat

end

end A166041.P1459130406841341694

/-! ## A166041.P12310281303869824158

`A163357(A163360(A166043(n)))`
-/

namespace A166041.P12310281303869824158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163360 (A166043 n).toNat).toNat

end

end A166041.P12310281303869824158

/-! ## A166041.P11471511954168926876

`A166043(A166042(A166043(A163358(A163357(n)))))`
-/

namespace A166041.P11471511954168926876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A166042 (A166043 (A163358 (A163357 n).toNat).toNat).toNat).toNat

end

end A166041.P11471511954168926876

/-! ## A166041.P15469785151971059408

`A166043(A166042(A166043(A166043(A166044(n)))))`
-/

namespace A166041.P15469785151971059408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A166042 (A166043 (A166043 (A166044 n).toNat).toNat).toNat).toNat

end

end A166041.P15469785151971059408

/-! ## A166041.P193129358974356974

`A163359(A163337(n))`
-/

namespace A166041.P193129358974356974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163337 n).toNat

end

end A166041.P193129358974356974

/-! ## A166041.P2740910046176724244

`A166043(A342218(n))`
-/

namespace A166041.P2740910046176724244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A342218 n).toNat

end

end A166041.P2740910046176724244

/-! ## A166041.P13798699293159615321

`A163357(A163339(n+1)-1)`
-/

namespace A166041.P13798699293159615321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163339 (n + 1) - 1).toNat

end

end A166041.P13798699293159615321

/-! ## A166041.P13128119297332040503

`A163359(A163341(n+1)-1)`
-/

namespace A166041.P13128119297332040503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163341 (n + 1) - 1).toNat

end

end A166041.P13128119297332040503

/-! ## A166041.P15013352961378936858

`A163357(A163329(A163334(A163329(n))))`
-/

namespace A166041.P15013352961378936858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163329 (A163334 (A163329 n).toNat).toNat).toNat

end

end A166041.P15013352961378936858

/-! ## A166041.P15870039345688781509

`A166043(A163334(A163337(A163337(A163336(n)))))`
-/

namespace A166041.P15870039345688781509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163334 (A163337 (A163337 (A163336 n).toNat).toNat).toNat).toNat

end

end A166041.P15870039345688781509

/-! ## A166041.P8784106851496173212

`A166043(A163336(A163335(A061579(A061579(n)))))`
-/

namespace A166041.P8784106851496173212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163336 (A163335 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A166041.P8784106851496173212

/-! ## A166041.P2033427543869535445

`A166043(A163336(A163335(A163332(A163332(n)))))`
-/

namespace A166041.P2033427543869535445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163336 (A163335 (A163332 (A163332 n).toNat).toNat).toNat).toNat

end

end A166041.P2033427543869535445

/-! ## A166041.P7578218119946904879

`A342217(A166043(n))`
-/

namespace A166041.P7578218119946904879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342217 (A166043 n).toNat

end

end A166041.P7578218119946904879

/-!
# A166042: Permutation of nonnegative integers: a(n) tells which integer is in the same position in the square array A163334 as where n is located in the array A163357.

The programs for A166042, there is no canonical definition to state claims against.
-/

/-! ## A166042.P1980179794882643085

`A166044(A163357(A163360(n)))`
-/

namespace A166042.P1980179794882643085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163357 (A163360 n).toNat).toNat

end

end A166042.P1980179794882643085

/-! ## A166042.P17124437322163057907

`A166044(A166041(A166044(n)))`
-/

namespace A166042.P17124437322163057907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A166041 (A166044 n).toNat).toNat

end

end A166042.P17124437322163057907

/-! ## A166042.P15372716006087135419

`A163334(A163358(n))`
-/

namespace A166042.P15372716006087135419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163358 n).toNat

end

end A166042.P15372716006087135419

/-! ## A166042.P2576342597781642427

`A163334(A163362(n+1)-1)`
-/

namespace A166042.P2576342597781642427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163362 (n + 1) - 1).toNat

end

end A166042.P2576342597781642427

/-! ## A166042.P11563503243573863676

`A163334(A054239(A163356(n)))`
-/

namespace A166042.P11563503243573863676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A054239 (A163356 n).toNat).toNat

end

end A166042.P11563503243573863676

/-! ## A166042.P9123792361329621168

`A163334(A163908(A163355(n)))`
-/

namespace A166042.P9123792361329621168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163908 (A163355 n).toNat).toNat

end

end A166042.P9123792361329621168

/-! ## A166042.P7243161320058246998

`A342218(A166044(n))`
-/

namespace A166042.P7243161320058246998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A166044 n).toNat

end

end A166042.P7243161320058246998

/-! ## A166042.P15186548813453730557

`A166044(A342217(n))`
-/

namespace A166042.P15186548813453730557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A342217 n).toNat

end

end A166042.P15186548813453730557

/-! ## A166042.P3728819004155568023

`A163336(A163360(n))`
-/

namespace A166042.P3728819004155568023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163360 n).toNat

end

end A166042.P3728819004155568023

/-! ## A166042.P9111368369591878529

`A163336(A163364(n+1)-1)`
-/

namespace A166042.P9111368369591878529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163364 (n + 1) - 1).toNat

end

end A166042.P9111368369591878529

/-! ## A166042.P2336203122716507189

`A163336(A061579(A163358(A061579(A061579(n)))))`
-/

namespace A166042.P2336203122716507189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A061579 (A163358 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A166042.P2336203122716507189

/-!
# A166043: Permutation of nonnegative integers: a(n) tells which integer is in the same position in the square array A163357 as where n is located in the array A163336.

The programs for A166043, there is no canonical definition to state claims against.
-/

/-! ## A166043.P6002952355855481503

`A163359(A163335(n))`
-/

namespace A166043.P6002952355855481503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163335 n).toNat

end

end A166043.P6002952355855481503

/-! ## A166043.P7608943378985183961

`A163359(A163358(A166041(n)))`
-/

namespace A166043.P7608943378985183961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163358 (A166041 n).toNat).toNat

end

end A166043.P7608943378985183961

/-! ## A166043.P4776684997624146107

`A166041(A166044(A166041(A163358(A163357(n)))))`
-/

namespace A166043.P4776684997624146107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A166044 (A166041 (A163358 (A163357 n).toNat).toNat).toNat).toNat

end

end A166043.P4776684997624146107

/-! ## A166043.P3475138136092595723

`A166041(A166044(A166041(A166041(A166042(n)))))`
-/

namespace A166043.P3475138136092595723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A166044 (A166041 (A166041 (A166042 n).toNat).toNat).toNat).toNat

end

end A166043.P3475138136092595723

/-! ## A166043.P10166444400521176520

`A163357(A163337(n))`
-/

namespace A166043.P10166444400521176520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163337 n).toNat

end

end A166043.P10166444400521176520

/-! ## A166043.P11646860432940224667

`A166041(A342218(n))`
-/

namespace A166043.P11646860432940224667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A342218 n).toNat

end

end A166043.P11646860432940224667

/-! ## A166043.P7155851688453168175

`A163359(A163339(n+1)-1)`
-/

namespace A166043.P7155851688453168175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163339 (n + 1) - 1).toNat

end

end A166043.P7155851688453168175

/-! ## A166043.P8303735486830529725

`A163357(A163341(n+1)-1)`
-/

namespace A166043.P8303735486830529725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163341 (n + 1) - 1).toNat

end

end A166043.P8303735486830529725

/-! ## A166043.P4163071531913805010

`A166041(A163334(A163331(A163336(A163331(n)))))`
-/

namespace A166043.P4163071531913805010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163334 (A163331 (A163336 (A163331 n).toNat).toNat).toNat).toNat

end

end A166043.P4163071531913805010

/-! ## A166043.P11066779603961383041

`A166041(A163336(A163335(A163335(A163334(n)))))`
-/

namespace A166043.P11066779603961383041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163336 (A163335 (A163335 (A163334 n).toNat).toNat).toNat).toNat

end

end A166043.P11066779603961383041

/-! ## A166043.P234629370777878969

`A166041(A163336(A163335(A163337(A163336(n)))))`
-/

namespace A166043.P234629370777878969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163336 (A163335 (A163337 (A163336 n).toNat).toNat).toNat).toNat

end

end A166043.P234629370777878969

/-! ## A166043.P9706925390419783540

`A342217(A166041(n))`
-/

namespace A166043.P9706925390419783540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342217 (A166041 n).toNat

end

end A166043.P9706925390419783540

/-!
# A166044: Permutation of nonnegative integers: a(n) tells which integer is in the same position in the square array A163336 as where n is located in the array A163357.

The programs for A166044, there is no canonical definition to state claims against.
-/

/-! ## A166044.P14249460889175046437

`A166042(A163359(A163358(n)))`
-/

namespace A166044.P14249460889175046437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163359 (A163358 n).toNat).toNat

end

end A166044.P14249460889175046437

/-! ## A166044.P4389444747750569718

`A166042(A166043(A166042(n)))`
-/

namespace A166044.P4389444747750569718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A166043 (A166042 n).toNat).toNat

end

end A166044.P4389444747750569718

/-! ## A166044.P7574258662745342878

`A163334(A163360(n))`
-/

namespace A166044.P7574258662745342878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163360 n).toNat

end

end A166044.P7574258662745342878

/-! ## A166044.P9320127669351368443

`A163334(A163364(n+1)-1)`
-/

namespace A166044.P9320127669351368443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163364 (n + 1) - 1).toNat

end

end A166044.P9320127669351368443

/-! ## A166044.P1156809946609588803

`A342218(A166042(n))`
-/

namespace A166044.P1156809946609588803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A166042 n).toNat

end

end A166044.P1156809946609588803

/-! ## A166044.P3906806605463267357

`A166042(A342217(n))`
-/

namespace A166044.P3906806605463267357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A342217 n).toNat

end

end A166044.P3906806605463267357

/-! ## A166044.P13025372491493347630

`A163336(A163358(n))`
-/

namespace A166044.P13025372491493347630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163358 n).toNat

end

end A166044.P13025372491493347630

/-! ## A166044.P7229427709143567178

`A163336(A163362(n+1)-1)`
-/

namespace A166044.P7229427709143567178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163362 (n + 1) - 1).toNat

end

end A166044.P7229427709143567178

/-! ## A166044.P962259996573274111

`A163336(A054239(A163356(n)))`
-/

namespace A166044.P962259996573274111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A054239 (A163356 n).toNat).toNat

end

end A166044.P962259996573274111

/-!
# A166045: Positions of records in A165601.

The programs for A166045, there is no canonical definition to state claims against.
-/

/-! ## A166045.P18346471309517261660

`floor(A166046(n)/4)`
-/

namespace A166045.P18346471309517261660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166046 n : ℚ) / 4⌋

end

end A166045.P18346471309517261660

/-! ## A166045.P9718771770156934521

`ceil(A057428(n+1)+A166046(n)/4)`
-/

namespace A166045.P9718771770156934521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 (n + 1) : ℚ) + (A166046 n : ℚ) / 4⌉

end

end A166045.P9718771770156934521

/-! ## A166045.P2075693099039714716

`round(A134824(n+2)+A166046(n)/4)`
-/

namespace A166045.P2075693099039714716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134824 (n + 2) : ℚ) + (A166046 n : ℚ) / 4)

end

end A166045.P2075693099039714716

/-! ## A166045.P4512999076976425166

`round(A166046(n)/4-A091090(2*n))`
-/

namespace A166045.P4512999076976425166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166046 n : ℚ) / 4 - (A091090 (2 * n) : ℚ))

end

end A166045.P4512999076976425166

/-! ## A166045.P11830485726652743325

`round(A166046(n)/4-A007318(C(2, n)))`
-/

namespace A166045.P11830485726652743325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166046 n : ℚ) / 4 - (A007318 (Nat.choose 2 n) : ℚ))

end

end A166045.P11830485726652743325

/-! ## A166045.P12348449744374227610

`round((-1)^A053755(n)+A166046(n)/4)`
-/

namespace A166045.P12348449744374227610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A053755 n : ℤ) + (A166046 n : ℚ) / 4)

end

end A166045.P12348449744374227610

/-! ## A166045.P10005042570179523111

`round(A166046(n)/4-A008836(n+1)²)`
-/

namespace A166045.P10005042570179523111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166046 n : ℚ) / 4 - (A008836 (n + 1) ^ 2 : ℚ))

end

end A166045.P10005042570179523111

/-! ## A166045.P11031097896699143412

`ceil(A166046(n)/4-A014963(4*n+6))`
-/

namespace A166045.P11031097896699143412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166046 n : ℚ) / 4 - (A014963 (4 * n + 6) : ℚ)⌉

end

end A166045.P11031097896699143412

/-! ## A166045.P907427724967082142

`ceil(A166046(n)/4-A000108(C(2, n+2)))`
-/

namespace A166045.P907427724967082142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166046 n : ℚ) / 4 - (A000108 (Nat.choose 2 (n + 2)) : ℚ)⌉

end

end A166045.P907427724967082142

/-! ## A166045.P1750462912686455810

`round(-A162292(n+1)%2+A166046(n)/4)`
-/

namespace A166045.P1750462912686455810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (-A162292 (n + 1)) 2 : ℚ) + (A166046 n : ℚ) / 4)

end

end A166045.P1750462912686455810

/-! ## A166045.P2750448047238577242

`round(or(-1, A001221(n+1))+A166046(n)/4)`
-/

namespace A166045.P2750448047238577242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor (-1) (A001221 (n + 1)) : ℚ) + (A166046 n : ℚ) / 4)

end

end A166045.P2750448047238577242

/-! ## A166045.P7777170564840169538

`round(A166046(n)/4-A000041(n²%(n+1)))`
-/

namespace A166045.P7777170564840169538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166046 n : ℚ) / 4 - (A000041 (n ^ 2 % (n + 1)) : ℚ))

end

end A166045.P7777170564840169538

/-! ## A166045.P11344673554553107008

`ceil(A166046(n)/4-A246465(A001222(n+1)))`
-/

namespace A166045.P11344673554553107008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166046 n : ℚ) / 4 - (A246465 (A001222 (n + 1)).toNat : ℚ)⌉

end

end A166045.P11344673554553107008

/-!
# A166046: The 4k+3 integers corresponding to the record positions in A165601.

The programs for A166046, there is no canonical definition to state claims against.
-/

/-! ## A166046.P7466532874337742356

`4*A166045(n)+3`
-/

namespace A166046.P7466532874337742356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166045 n + 3

end

end A166046.P7466532874337742356

/-! ## A166046.P4525256147731980595

`or(3, 4*A166045(n))%A017222(n)`
-/

namespace A166046.P4525256147731980595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 3 (4 * A166045 n)) (A017222 n)

end

end A166046.P4525256147731980595

/-! ## A166046.P16934227590422287455

`lcm(or(3, 4*A166045(n)), A033999(n))`
-/

namespace A166046.P16934227590422287455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor 3 (4 * A166045 n)) (A033999 n)

end

end A166046.P16934227590422287455

/-! ## A166046.P2737080029858199613

`or(or(3, 4*A166045(n)), A000007(n))`
-/

namespace A166046.P2737080029858199613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 3 (4 * A166045 n)) (A000007 n)

end

end A166046.P2737080029858199613

/-! ## A166046.P2360727322934094666

`or(3, or(4*A166045(n), A000035(n)))`
-/

namespace A166046.P2360727322934094666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (Int.lor (4 * A166045 n) (A000035 n))

end

end A166046.P2360727322934094666

/-! ## A166046.P3970758757513990927

`or(or(3, 4*A166045(n)), A000038(n))`
-/

namespace A166046.P3970758757513990927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 3 (4 * A166045 n)) (A000038 n)

end

end A166046.P3970758757513990927

/-! ## A166046.P18356264508728372811

`or(or(3, 4*A166045(n)), A021913(n))`
-/

namespace A166046.P18356264508728372811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 3 (4 * A166045 n)) (A021913 n)

end

end A166046.P18356264508728372811

/-! ## A166046.P7021587835963939726

`or(or(3, 4*A166045(n)), A057427(n))`
-/

namespace A166046.P7021587835963939726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 3 (4 * A166045 n)) (A057427 n)

end

end A166046.P7021587835963939726

/-! ## A166046.P1388120305925044497

`or(3, or(4*A166045(n), A121262(n)))`
-/

namespace A166046.P1388120305925044497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (Int.lor (4 * A166045 n) (A121262 n))

end

end A166046.P1388120305925044497

/-! ## A166046.P7034411427607490914

`or(or(3, 4*A166045(n)), A267813(n))`
-/

namespace A166046.P7034411427607490914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 3 (4 * A166045 n)) (A267813 n)

end

end A166046.P7034411427607490914

/-! ## A166046.P1439367168726789442

`or(3, 4*A166045(n))*char[A001057(n)]`
-/

namespace A166046.P1439367168726789442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * A166045 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A166046.P1439367168726789442

/-! ## A166046.P10819870574750469740

`A007318(C(2, n))*or(3, 4*A166045(n))`
-/

namespace A166046.P10819870574750469740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * Int.lor 3 (4 * A166045 n)

end

end A166046.P10819870574750469740

/-! ## A166046.P15843283399801268919

`or(3, 4*A166045(n))*A000010(C(2, n)!)`
-/

namespace A166046.P15843283399801268919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * A166045 n) * A000010 (Nat.factorial (Nat.choose 2 n))

end

end A166046.P15843283399801268919

/-! ## A166046.P3757872231123680811

`A007318(C(n, n²))*xor(3, 4*A166045(n))`
-/

namespace A166046.P3757872231123680811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * Int.xor 3 (4 * A166045 n)

end

end A166046.P3757872231123680811

/-! ## A166046.P5123898723601340761

`A000041(C(2, 2*n))*or(3, 4*A166045(n))`
-/

namespace A166046.P5123898723601340761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * Int.lor 3 (4 * A166045 n)

end

end A166046.P5123898723601340761

/-! ## A166046.P2457215760352287202

`A007318(and(2, n-3))*or(3, 4*A166045(n))`
-/

namespace A166046.P2457215760352287202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 3)).toNat * Int.lor 3 (4 * A166045 n)

end

end A166046.P2457215760352287202

/-! ## A166046.P13308329441091315176

`or(-1, A000041(n))²*or(3, 4*A166045(n))`
-/

namespace A166046.P13308329441091315176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) ^ 2 * Int.lor 3 (4 * A166045 n)

end

end A166046.P13308329441091315176

/-! ## A166046.P1273984088205375282

`or(3, 4*A166045(n))*A000045((-1)^(2*n))`
-/

namespace A166046.P1273984088205375282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * A166045 n) * A000045 ((-1) ^ (2 * n)).toNat

end

end A166046.P1273984088205375282

/-! ## A166046.P1841345869396249020

`or(3, 4*A166045(n))/A000005((-1)^(2*n))`
-/

namespace A166046.P1841345869396249020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 3 (4 * A166045 n) : ℚ) / (A000005 ((-1) ^ (2 * n)).toNat : ℚ)

end

end A166046.P1841345869396249020

/-! ## A166046.P782473675310750781

`or(or(3, 4*A166045(n)), A000040((-1)^(2*n)))`
-/

namespace A166046.P782473675310750781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 3 (4 * A166045 n)) (A000040 ((-1) ^ (2 * n)).toNat)

end

end A166046.P782473675310750781

/-!
# A166047: Record values in A165601.

The programs for A166047, there is no canonical definition to state claims against.
-/

/-! ## A166047.P8019567002449914256

`A165601(A166045(n))`
-/

namespace A166047.P8019567002449914256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (A166045 n).toNat

end

end A166047.P8019567002449914256

/-! ## A166047.P14301197322960217093

`A165601(floor(A166046(n)/4))`
-/

namespace A166047.P14301197322960217093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 ⌊(A166046 n : ℚ) / 4⌋.toNat

end

end A166047.P14301197322960217093

/-! ## A166047.P766662870256270111

`A165601(round(A057428(n+1)+A166046(n)/4))`
-/

namespace A166047.P766662870256270111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (SequenceMachineLib.roundAway ((A057428 (n + 1) : ℚ) + (A166046 n : ℚ) / 4)).toNat

end

end A166047.P766662870256270111

/-! ## A166047.P11510232470576026312

`A165601(round(A134824(n+2)+A166046(n)/4))`
-/

namespace A166047.P11510232470576026312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (SequenceMachineLib.roundAway ((A134824 (n + 2) : ℚ) + (A166046 n : ℚ) / 4)).toNat

end

end A166047.P11510232470576026312

/-! ## A166047.P5412622294227912169

`A165601(round((-1)^A053755(n)+A166046(n)/4))`
-/

namespace A166047.P5412622294227912169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A053755 n : ℤ) + (A166046 n : ℚ) / 4)).toNat

end

end A166047.P5412622294227912169

/-! ## A166047.P3304251078867199390

`A165601(round(A166046(n)/4-A008836(n+1)²))`
-/

namespace A166047.P3304251078867199390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (SequenceMachineLib.roundAway ((A166046 n : ℚ) / 4 - (A008836 (n + 1) ^ 2 : ℚ))).toNat

end

end A166047.P3304251078867199390

/-! ## A166047.P1708131532247978627

`A165601(ceil(A166046(n)/4-A014963(4*n+6)))`
-/

namespace A166047.P1708131532247978627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 ⌈(A166046 n : ℚ) / 4 - (A014963 (4 * n + 6) : ℚ)⌉.toNat

end

end A166047.P1708131532247978627

/-! ## A166047.P4995849375617332297

`A165601(round(-A162292(n+1)%2+A166046(n)/4))`
-/

namespace A166047.P4995849375617332297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (SequenceMachineLib.roundAway ((Int.tmod (-A162292 (n + 1)) 2 : ℚ) + (A166046 n : ℚ) / 4)).toNat

end

end A166047.P4995849375617332297

/-! ## A166047.P15582845771478275248

`A165601(round(A166046(n)/4-A000041(n²%(n+1))))`
-/

namespace A166047.P15582845771478275248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (SequenceMachineLib.roundAway ((A166046 n : ℚ) / 4 - (A000041 (n ^ 2 % (n + 1)) : ℚ))).toNat

end

end A166047.P15582845771478275248

/-! ## A166047.P14148191830616880853

`record[A165601(n)]`
-/

namespace A166047.P14148191830616880853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166047.P14148191830616880853

/-!
# A166048: a(n) = (A166049(n)-1)/4.

The programs for A166048, there is no canonical definition to state claims against.
-/

/-! ## A166048.P5244691962123704261

`(A166049(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166048.P5244691962123704261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166049 (n + 1) - 1 : ℚ) / 4

end

end A166048.P5244691962123704261

/-! ## A166048.P14825074171862603691

`floor(A166049(n+1)/4)`
-/

namespace A166048.P14825074171862603691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166049 (n + 1) : ℚ) / 4⌋

end

end A166048.P14825074171862603691

/-! ## A166048.P9841457023681144487

`A002265(A166049(n+1))`
-/

namespace A166048.P9841457023681144487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166049 (n + 1)).toNat

end

end A166048.P9841457023681144487

/-! ## A166048.P16857709690345542003

`∑{d}[round(A166049(n+1)/4), A000010(#)]`
-/

namespace A166048.P16857709690345542003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166049 (n + 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A166048.P16857709690345542003

/-!
# A166049: Integers of the form 4n+1 for which Sum_{i=1..u} J(i,4n+1) is never negative for any u in range [1,(2n)], where J(i,k) is the Jacobi symbol.

The programs for A166049, there is no canonical definition to state claims against.
-/

/-! ## A166049.P10910211915324934877

`4*A166048(n+1)+1`
-/

namespace A166049.P10910211915324934877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166048 (n + 1) + 1

end

end A166049.P10910211915324934877

/-! ## A166049.P8207752321124049123

`A016813(A166048(n+1))`
-/

namespace A166049.P8207752321124049123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A166048 (n + 1)).toNat

end

end A166049.P8207752321124049123

/-! ## A166049.P11712878236384539136

`A005408(2*A166048(n+1))`
-/

namespace A166049.P11712878236384539136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A166048 (n + 1)).toNat

end

end A166049.P11712878236384539136

/-! ## A166049.P7946262595878227962

`A157142(2*A166048(n+1))`
-/

namespace A166049.P7946262595878227962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (2 * A166048 (n + 1)).toNat

end

end A166049.P7946262595878227962

/-! ## A166049.P17215557475226556802

`A004442(4*A166048(n+1))`
-/

namespace A166049.P17215557475226556802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * A166048 (n + 1)).toNat

end

end A166049.P17215557475226556802

/-!
# A166050: a(n) = Sum_{i=0..(2n+1)} J(i,12n+7), where J(i,k) is the Jacobi symbol.

The programs for A166050, there is no canonical definition to state claims against.
-/

/-! ## A166050.P15819591220385299499

`A165460(n)-A165605(n)`
-/

namespace A166050.P15819591220385299499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 n - A165605 n

end

end A166050.P15819591220385299499

/-! ## A166050.P3283198183424058966

`A033999(n)/2*A165460(n)`
-/

namespace A166050.P3283198183424058966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 n : ℚ) / 2 * (A165460 n : ℚ)

end

end A166050.P3283198183424058966

/-! ## A166050.P7444877739092622056

`A165460(n)/(2-A010673(n)²)`
-/

namespace A166050.P7444877739092622056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165460 n : ℚ) / (2 - A010673 n ^ 2 : ℚ)

end

end A166050.P7444877739092622056

/-! ## A166050.P18293993387213747972

`A165460(n)-A165601(A016777(n))`
-/

namespace A166050.P18293993387213747972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 n - A165601 (A016777 n).toNat

end

end A166050.P18293993387213747972

/-! ## A166050.P17913251331232466082

`A004526(A165460(n))*A033999(n)`
-/

namespace A166050.P17913251331232466082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165460 n).toNat * A033999 n

end

end A166050.P17913251331232466082

/-! ## A166050.P3595761183389764181

`A165460(n)-A165601(Δ[A000326(n)])`
-/

namespace A166050.P3595761183389764181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 n - A165601 (f1 (n + 1) - f1 n).toNat

end

end A166050.P3595761183389764181

/-! ## A166050.P6888160295827546135

`A165460(n)/A228826(2*n)`
-/

namespace A166050.P6888160295827546135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165460 n : ℚ) / (A228826 (2 * n) : ℚ)

end

end A166050.P6888160295827546135

/-!
# A166051: Nonsquare integers of the form 4n+1 for which Sum_{i=1..u} J(i,4n+1) is never negative for any u in range [1,(2n)], where J(i,k) is the Jacobi symbol.

The programs for A166051, there is no canonical definition to state claims against.
-/

/-! ## A166051.P512892656190681567

`or(4, A166049(Δ[n²]))`
-/

namespace A166051.P512892656190681567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A166049 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A166051.P512892656190681567

/-! ## A166051.P7035897612073581583

`record[∏{p}[A166049(n+2), #]]`
-/

namespace A166051.P7035897612073581583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166049 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166051.P7035897612073581583

/-! ## A166051.P8410752577704598102

`8*A029984(n+1)+5`
-/

namespace A166051.P8410752577704598102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A029984 (n + 1) + 5

end

end A166051.P8410752577704598102

/-!
# A166052: Second row of A166091. Positions of 3's in A166086.

The programs for A166052, there is no canonical definition to state claims against.
-/

/-! ## A166052.P14204255505492603912

`eq[3, A166086(n)]`
-/

namespace A166052.P14204255505492603912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166052.P14204255505492603912

/-! ## A166052.P7644840851798840880

`eq[3, A166040(2*n+1)]`
-/

namespace A166052.P7644840851798840880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166052.P7644840851798840880

/-! ## A166052.P16127103523927219585

`(A166053(n+1)-3)/4`
-/

namespace A166052.P16127103523927219585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166053 (n + 1) - 3 : ℚ) / 4

end

end A166052.P16127103523927219585

/-! ## A166052.P9136764028242324071

`A166091(∑[n+1]+1)`
-/

namespace A166052.P9136764028242324071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166052.P9136764028242324071

/-! ## A166052.P11147735243490355932

`floor(A166092(∑[n+1]+1)/4)`
-/

namespace A166052.P11147735243490355932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 4⌋

end

end A166052.P11147735243490355932

/-! ## A166052.P7880520065507427133

`A174571(A166092(∑[n+1]+1)-3)`
-/

namespace A166052.P7880520065507427133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 3).toNat

end

end A166052.P7880520065507427133

/-!
# A166053: Integers of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) obtains value zero exactly 3 times, when u ranges from 1 to (4n+3). Here J(i,k) is the Jacobi symbol.

The programs for A166053, there is no canonical definition to state claims against.
-/

/-! ## A166053.P15383978793516370054

`4*A166052(n+1)+3`
-/

namespace A166053.P15383978793516370054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166052 (n + 1) + 3

end

end A166053.P15383978793516370054

/-! ## A166053.P14912551907049800053

`A166092(∑[n+1]+1)`
-/

namespace A166053.P14912551907049800053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166053.P14912551907049800053

/-! ## A166053.P3445692627108334674

`4*A166091(∑[n+1]+1)+3`
-/

namespace A166053.P3445692627108334674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166091 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 3

end

end A166053.P3445692627108334674

/-! ## A166053.P17569187827004454431

`A004767(A166052(n+1))`
-/

namespace A166053.P17569187827004454431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A166052 (n + 1)).toNat

end

end A166053.P17569187827004454431

/-! ## A166053.P14595623759007872723

`A004767(eq[3, A166086(n)])`
-/

namespace A166053.P14595623759007872723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166053.P14595623759007872723

/-!
# A166054: Third row of A166091. Positions of 5's in A166086.

The programs for A166054, there is no canonical definition to state claims against.
-/

/-! ## A166054.P12563402896009146746

`eq[5, A166086(n)]`
-/

namespace A166054.P12563402896009146746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166054.P12563402896009146746

/-! ## A166054.P6680065651344727605

`floor(A166055(n+1)/4)`
-/

namespace A166054.P6680065651344727605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166055 (n + 1) : ℚ) / 4⌋

end

end A166054.P6680065651344727605

/-! ## A166054.P3080255458134548097

`A166091(∑[n+2]+3)`
-/

namespace A166054.P3080255458134548097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A166054.P3080255458134548097

/-! ## A166054.P3584129119428064531

`eq[5, A166040(2*n+1)]`
-/

namespace A166054.P3584129119428064531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166054.P3584129119428064531

/-! ## A166054.P6567463193155537855

`floor(A166092(∑[n+2]+3)/4)`
-/

namespace A166054.P6567463193155537855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / 4⌋

end

end A166054.P6567463193155537855

/-! ## A166054.P1340211283827722427

`A002265(A166055(n+1))`
-/

namespace A166054.P1340211283827722427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166055 (n + 1)).toNat

end

end A166054.P1340211283827722427

/-! ## A166054.P8183993192700807798

`A004526(eq[5, A166040(n)])`
-/

namespace A166054.P8183993192700807798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166054.P8183993192700807798

/-! ## A166054.P14349179891039500420

`A057979(eq[5, A166040(n)])`
-/

namespace A166054.P14349179891039500420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166054.P14349179891039500420

/-!
# A166055: Integers of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) obtains value zero exactly 5 times, when u ranges from 1 to (4n+3). Here J(i,k) is the Jacobi symbol.

The programs for A166055, there is no canonical definition to state claims against.
-/

/-! ## A166055.P15947763712823811969

`A004767(A166054(n+1))`
-/

namespace A166055.P15947763712823811969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A166054 (n + 1)).toNat

end

end A166055.P15947763712823811969

/-! ## A166055.P4452529972734093738

`eq[5, A166040(floor(n/(n%2+1)))]`
-/

namespace A166055.P4452529972734093738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166055.P4452529972734093738

/-! ## A166055.P10860093753683394051

`A004767(eq[5, A166086(n)])`
-/

namespace A166055.P10860093753683394051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166055.P10860093753683394051

/-! ## A166055.P9575625658962674489

`A005408(eq[5, A166040(n)])`
-/

namespace A166055.P9575625658962674489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166055.P9575625658962674489

/-! ## A166055.P6725355961650421660

`A166092(∑[n+2]+3)`
-/

namespace A166055.P6725355961650421660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A166055.P6725355961650421660

/-!
# A166056: Fourth row of A166091. Positions of 7's in A166086.

The programs for A166056, there is no canonical definition to state claims against.
-/

/-! ## A166056.P5415788631142068315

`floor(A166057(n+1)/4)`
-/

namespace A166056.P5415788631142068315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166057 (n + 1) : ℚ) / 4⌋

end

end A166056.P5415788631142068315

/-! ## A166056.P3500223834998838970

`A166091(∑[n+3]+6)`
-/

namespace A166056.P3500223834998838970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A166056.P3500223834998838970

/-! ## A166056.P7512504280457139632

`floor(A166092(∑[n+3]+6)/4)`
-/

namespace A166056.P7512504280457139632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 6) : ℚ) / 4⌋

end

end A166056.P7512504280457139632

/-! ## A166056.P17807851109103654716

`or(char[1], A166091(A167614(n+2)))`
-/

namespace A166056.P17807851109103654716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A166091 (A167614 (n + 2)).toNat)

end

end A166056.P17807851109103654716

/-! ## A166056.P13606963302463097084

`A103391(A166092(∑[n+3]+6)-8)`
-/

namespace A166056.P13606963302463097084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 6) - 8).toNat

end

end A166056.P13606963302463097084

/-! ## A166056.P6230385661872523676

`A007318(C(2, n))*A166091(A167614(n+2))`
-/

namespace A166056.P6230385661872523676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A166091 (A167614 (n + 2)).toNat

end

end A166056.P6230385661872523676

/-!
# A166057: Integers of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) obtains value zero exactly 7 times, when u ranges from 1 to (4n+3). Here J(i,k) is the Jacobi symbol.

The programs for A166057, there is no canonical definition to state claims against.
-/

/-! ## A166057.P13631616376955406762

`A166092(∑[n+3]+6)`
-/

namespace A166057.P13631616376955406762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A166057.P13631616376955406762

/-! ## A166057.P6831116446259642119

`4*A166091(∑[n+3]+6)+3`
-/

namespace A166057.P6831116446259642119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166091 (∑ j ∈ Finset.range (n + 1), f1 j + 6) + 3

end

end A166057.P6831116446259642119

/-! ## A166057.P14145318003888565145

`or(1, A166092(A167614(n+2)))`
-/

namespace A166057.P14145318003888565145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166092 (A167614 (n + 2)).toNat)

end

end A166057.P14145318003888565145

/-! ## A166057.P3495058448719356954

`4*A166056(n+1)+3`
-/

namespace A166057.P3495058448719356954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166056 (n + 1) + 3

end

end A166057.P3495058448719356954

/-! ## A166057.P5732817423598226856

`A004767(A166056(n+1))`
-/

namespace A166057.P5732817423598226856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A166056 (n + 1)).toNat

end

end A166057.P5732817423598226856

/-!
# A166058: Fifth row of A166091. Positions of 9's in A166086.

The programs for A166058, there is no canonical definition to state claims against.
-/

/-! ## A166058.P1516351736521651566

`eq[9, A166086(n)]`
-/

namespace A166058.P1516351736521651566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166058.P1516351736521651566

/-! ## A166058.P8357441133738524818

`(A166059(n+1)-3)/4`
-/

namespace A166058.P8357441133738524818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166059 (n + 1) - 3 : ℚ) / 4

end

end A166058.P8357441133738524818

/-! ## A166058.P7099023864505156347

`floor(A166092(∑[n+4]+10)/4)`
-/

namespace A166058.P7099023864505156347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 10) : ℚ) / 4⌋

end

end A166058.P7099023864505156347

/-! ## A166058.P6772056249623536479

`A166091(A155212(n)+12)`
-/

namespace A166058.P6772056249623536479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (A155212 n + 12).toNat

end

end A166058.P6772056249623536479

/-! ## A166058.P4531768754091700742

`A166091(A056000(n)+14)`
-/

namespace A166058.P4531768754091700742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (A056000 n + 14).toNat

end

end A166058.P4531768754091700742

/-! ## A166058.P16429427462622185

`A166091(eq[3, A141169(n)])`
-/

namespace A166058.P16429427462622185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166058.P16429427462622185

/-!
# A166059: Integers of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) obtains value zero exactly 9 times, when u ranges from 1 to (4n+3). Here J(i,k) is the Jacobi symbol.

The programs for A166059, there is no canonical definition to state claims against.
-/

/-! ## A166059.P12277875714085584468

`4*A166058(n+1)+3`
-/

namespace A166059.P12277875714085584468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166058 (n + 1) + 3

end

end A166059.P12277875714085584468

/-! ## A166059.P3212119489121160262

`A166092(∑[n+4]+10)`
-/

namespace A166059.P3212119489121160262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A166059.P3212119489121160262

/-! ## A166059.P4911019169246538955

`or(1, A166092(A155212(n)+12))`
-/

namespace A166059.P4911019169246538955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166092 (A155212 n + 12).toNat)

end

end A166059.P4911019169246538955

/-! ## A166059.P6903460950919333759

`or(1, A166092(A000217(n+4)+4))`
-/

namespace A166059.P6903460950919333759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166092 (A000217 (n + 4) + 4).toNat)

end

end A166059.P6903460950919333759

/-! ## A166059.P8650713877465832201

`A004767(A166058(n+1))`
-/

namespace A166059.P8650713877465832201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A166058 (n + 1)).toNat

end

end A166059.P8650713877465832201

/-!
# A166060: a(n) = 4*3^n - 3*2^n.

The programs for A166060, the canonical program `A166060.P1727466123413902011` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166060 has offset 0).

The definition of A166060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^n-3*2^n` (program `A166060.P1727466123413902011`, by `A166060.P1727466123413902011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166060.P1727466123413902011

`4*3^n-3*2^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166060

/-- `4*3^n-3*2^n` -/
def P1727466123413902011.Spec : Prop :=
  ∀ n, P1727466123413902011.a n = A166060 n

theorem P1727466123413902011.correct : P1727466123413902011.Spec := by
  intro n
  simp only [A166060]

end A166060

/-! ## A166060.P7577509108114576135

`ogf((1+x)/(1-5x+6x^2))`
-/

namespace A166060.P7577509108114576135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, 6] n

end

end A166060.P7577509108114576135

namespace A166060

/-- `ogf((1+x)/(1-5x+6x^2))` -/
def P7577509108114576135.Spec : Prop :=
  ∀ n, P7577509108114576135.a n = A166060 n

end A166060

/-! ## A166060.P2134781928135237970

`lcm(3, a(n-1)+2^(n-1))` with `a(0)=1`
-/

namespace A166060.P2134781928135237970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A166060.P2134781928135237970

namespace A166060

/-- `lcm(3, a(n-1)+2^(n-1))` -/
def P2134781928135237970.Spec : Prop :=
  ∀ n, (P2134781928135237970.a n : ℤ) = A166060 n

end A166060

/-! ## A166060.P1119824525127321012

`∑[6*(a(n-1)-a(n-2))-a(n-1)]` with `a(0)=1, a(1)=5, a(2)=18`
-/

namespace A166060.P1119824525127321012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 18] fun n f1 =>
  6 * (f1 (n - 1) - f1 (n - 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166060.P1119824525127321012

namespace A166060

/-- `∑[6*(a(n-1)-a(n-2))-a(n-1)]` -/
def P1119824525127321012.Spec : Prop :=
  ∀ n, P1119824525127321012.a n = A166060 n

end A166060

/-! ## A166060.P14531378324024924257

`2*(A025192(n)+a(n-1))` with `a(0)=1`
-/

namespace A166060.P14531378324024924257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A025192 n + a (n - 1))

end

end A166060.P14531378324024924257

namespace A166060

/-- `2*(A025192(n)+a(n-1))` -/
def P14531378324024924257.Spec : Prop :=
  ∀ n, P14531378324024924257.a n = A166060 n

end A166060

/-! ## A166060.P55993202764988466

`3*(A011782(n)+a(n-1))` with `a(0)=1`
-/

namespace A166060.P55993202764988466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (A011782 n + a (n - 1))

end

end A166060.P55993202764988466

namespace A166060

/-- `3*(A011782(n)+a(n-1))` -/
def P55993202764988466.Spec : Prop :=
  ∀ n, P55993202764988466.a n = A166060 n

end A166060

/-! ## A166060.P9238531727778749873

`3*(A131577(n)+a(n-1))` with `a(0)=1`
-/

namespace A166060.P9238531727778749873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (A131577 n + a (n - 1))

end

end A166060.P9238531727778749873

namespace A166060

/-- `3*(A131577(n)+a(n-1))` -/
def P9238531727778749873.Spec : Prop :=
  ∀ n, P9238531727778749873.a n = A166060 n

end A166060

/-! ## A166060.P16201462163131621833

`3*(a(n-1)+2-A122958(n))` with `a(0)=1`
-/

namespace A166060.P16201462163131621833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + (2 - A122958 n))

end

end A166060.P16201462163131621833

namespace A166060

/-- `3*(a(n-1)+2-A122958(n))` -/
def P16201462163131621833.Spec : Prop :=
  ∀ n, P16201462163131621833.a n = A166060 n

end A166060

/-! ## A166060.P9548107998056967665

`∑[A291012(n)-A000079(n)]`
-/

namespace A166060.P9548107998056967665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291012 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166060.P9548107998056967665

namespace A166060

/-- `∑[A291012(n)-A000079(n)]` -/
def P9548107998056967665.Spec : Prop :=
  ∀ n, P9548107998056967665.a n = A166060 n

end A166060

/-! ## A166060.P6212016198588789664

`∑[Δ[A053581(n)]-A000079(n)]`
-/

namespace A166060.P6212016198588789664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166060.P6212016198588789664

namespace A166060

/-- `∑[Δ[A053581(n)]-A000079(n)]` -/
def P6212016198588789664.Spec : Prop :=
  ∀ n, P6212016198588789664.a n = A166060 n

end A166060

/-! ## A166060.P744202815389288651

`∑[2*A003946(n)-A003945(n)]`
-/

namespace A166060.P744202815389288651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003946 n - A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166060.P744202815389288651

namespace A166060

/-- `∑[2*A003946(n)-A003945(n)]` -/
def P744202815389288651.Spec : Prop :=
  ∀ n, P744202815389288651.a n = A166060 n

end A166060

/-! ## A166060.P6202311065130538909

`Δ[A091344(n)]`
-/

namespace A166060.P6202311065130538909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166060.P6202311065130538909

namespace A166060

/-- `Δ[A091344(n)]` -/
def P6202311065130538909.Spec : Prop :=
  ∀ n, P6202311065130538909.a n = A166060 n

end A166060

/-! ## A166060.P18318076408617914097

`Δ[A245804(n)]`
-/

namespace A166060.P18318076408617914097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166060.P18318076408617914097

namespace A166060

/-- `Δ[A245804(n)]` -/
def P18318076408617914097.Spec : Prop :=
  ∀ n, P18318076408617914097.a n = A166060 n

end A166060

/-! ## A166060.P11175844402219753841

`Δ[Δ[A001117(n)]]`
-/

namespace A166060.P11175844402219753841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166060.P11175844402219753841

namespace A166060

/-- `Δ[Δ[A001117(n)]]` -/
def P11175844402219753841.Spec : Prop :=
  ∀ n, P11175844402219753841.a n = A166060 n

end A166060

/-! ## A166060.P16110068808423991809

`abs(Δ[Δ[A094729(n)]])`
-/

namespace A166060.P16110068808423991809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A166060.P16110068808423991809

namespace A166060

/-- `abs(Δ[Δ[A094729(n)]])` -/
def P16110068808423991809.Spec : Prop :=
  ∀ n, P16110068808423991809.a n = A166060 n

end A166060

/-! ## A166060.P7829344705304256489

`Δ[Δ[3^n]-A033484(n)]`
-/

namespace A166060.P7829344705304256489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166060.P7829344705304256489

namespace A166060

/-- `Δ[Δ[3^n]-A033484(n)]` -/
def P7829344705304256489.Spec : Prop :=
  ∀ n, P7829344705304256489.a n = A166060 n

end A166060

/-! ## A166060.P12555452739181723931

`Δ[A165751(n)-A165746(n)]`
-/

namespace A166060.P12555452739181723931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165751 n - A165746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166060.P12555452739181723931

namespace A166060

/-- `Δ[A165751(n)-A165746(n)]` -/
def P12555452739181723931.Spec : Prop :=
  ∀ n, P12555452739181723931.a n = A166060 n

end A166060

/-! ## A166060.P14780370659369240382

`A169687(n+2)%A005030(n)`
-/

namespace A166060.P14780370659369240382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169687 (n + 2)) (A005030 n)

end

end A166060.P14780370659369240382

namespace A166060

/-- `A169687(n+2)%A005030(n)` -/
def P14780370659369240382.Spec : Prop :=
  ∀ n, P14780370659369240382.a n = A166060 n

end A166060

/-! ## A166060.P6776418040776881570

`Δ[A101052(n)+Δ[A134063(n)]]`
-/

namespace A166060.P6776418040776881570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166060.P6776418040776881570

namespace A166060

/-- `Δ[A101052(n)+Δ[A134063(n)]]` -/
def P6776418040776881570.Spec : Prop :=
  ∀ n, P6776418040776881570.a n = A166060 n

end A166060

/-! ## A166060.P7151073538130240760

`Δ[Δ[A034472(n)-A079583(n)]]`
-/

namespace A166060.P7151073538130240760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A079583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166060.P7151073538130240760

namespace A166060

/-- `Δ[Δ[A034472(n)-A079583(n)]]` -/
def P7151073538130240760.Spec : Prop :=
  ∀ n, P7151073538130240760.a n = A166060 n

end A166060

/-!
# A166061: 19-rough numbers: positive integers that have no prime factors less than 19.

The programs for A166061, the canonical program `A166061.P17363544562752125072` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166061 has offset 1).

The definition of A166061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166061.P6600429312470847005

`A332798(n+1)/19`
-/

namespace A166061.P6600429312470847005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332798 (n + 1) : ℚ) / 19

end

end A166061.P6600429312470847005

namespace A166061

/-- `A332798(n+1)/19` -/
def P6600429312470847005.Spec : Prop :=
  ∀ n, P6600429312470847005.a n = (A166061 (n + 1) : ℚ)

end A166061

/-! ## A166061.P4541498238285319304

`lt[18, A102457(n+2)]+1`
-/

namespace A166061.P4541498238285319304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166061.P4541498238285319304

namespace A166061

/-- `lt[18, A102457(n+2)]+1` -/
def P4541498238285319304.Spec : Prop :=
  ∀ n, (P4541498238285319304.a n : ℤ) = A166061 (n + 1)

end A166061

/-! ## A166061.P17363544562752125072

`∩[A008366(n+1), A160543(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A166061

/-- `∩[A008366(n+1), A160543(n+1)]` -/
def P17363544562752125072.Spec : Prop :=
  ∀ n, (P17363544562752125072.a n : ℤ) = A166061 (n + 1)

theorem P17363544562752125072.correct : P17363544562752125072.Spec := by
  intro n
  simp only [A166061, Nat.add_sub_cancel]

end A166061

/-! ## A166061.P10218399414379833317

`record[(n+1)*A309168(A020639(19*(n+1)))]`
-/

namespace A166061.P10218399414379833317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A309168 (A020639 (19 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166061.P10218399414379833317

namespace A166061

/-- `record[(n+1)*A309168(A020639(19*(n+1)))]` -/
def P10218399414379833317.Spec : Prop :=
  ∀ n, P10218399414379833317.a n = A166061 (n + 1)

end A166061

/-! ## A166061.P15295613521630746814

`record[A109613(n)^A309168(A020639(19*(n+1)))]`
-/

namespace A166061.P15295613521630746814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n : ℚ) ^ (A309168 (A020639 (19 * (n + 1))).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166061.P15295613521630746814

namespace A166061

/-- `record[A109613(n)^A309168(A020639(19*(n+1)))]` -/
def P15295613521630746814.Spec : Prop :=
  ∀ n, P15295613521630746814.a n = (A166061 (n + 1) : ℚ)

end A166061

/-! ## A166061.P3547621887552722765

`record[A052125(A008367(n+1))]`
-/

namespace A166061.P3547621887552722765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A008367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166061.P3547621887552722765

namespace A166061

/-- `record[A052125(A008367(n+1))]` -/
def P3547621887552722765.Spec : Prop :=
  ∀ n, P3547621887552722765.a n = A166061 (n + 1)

end A166061

/-! ## A166061.P13383936287212688369

`record[A052125(A332799(n+1))]`
-/

namespace A166061.P13383936287212688369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A332799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166061.P13383936287212688369

namespace A166061

/-- `record[A052125(A332799(n+1))]` -/
def P13383936287212688369.Spec : Prop :=
  ∀ n, P13383936287212688369.a n = A166061 (n + 1)

end A166061

/-! ## A166061.P15579010614014952329

`A268674(A332797(n+1))/19`
-/

namespace A166061.P15579010614014952329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268674 (A332797 (n + 1)).toNat : ℚ) / 19

end

end A166061.P15579010614014952329

namespace A166061

/-- `A268674(A332797(n+1))/19` -/
def P15579010614014952329.Spec : Prop :=
  ∀ n, P15579010614014952329.a n = (A166061 (n + 1) : ℚ)

end A166061

/-! ## A166061.P15944221590233594324

`A032742(A332798(n+1))`
-/

namespace A166061.P15944221590233594324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A332798 (n + 1)).toNat

end

end A166061.P15944221590233594324

namespace A166061

/-- `A032742(A332798(n+1))` -/
def P15944221590233594324.Spec : Prop :=
  ∀ n, P15944221590233594324.a n = A166061 (n + 1)

end A166061

/-! ## A166061.P16418498480115443748

`A093803(or(1, A332798(n+1)))`
-/

namespace A166061.P16418498480115443748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (Int.lor 1 (A332798 (n + 1))).toNat

end

end A166061.P16418498480115443748

namespace A166061

/-- `A093803(or(1, A332798(n+1)))` -/
def P16418498480115443748.Spec : Prop :=
  ∀ n, P16418498480115443748.a n = A166061 (n + 1)

end A166061

/-!
# A166062: a(n) = denominator(Bernoulli(prime(n) - 1)).

The programs for A166062, the canonical program `A166062.P18383124327508039970` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166062 has offset 1).

The definition of A166062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166062.P17250219977284665121

`A027642(A006093(n+1))`
-/

namespace A166062.P17250219977284665121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A006093 (n + 1)).toNat

end

end A166062.P17250219977284665121

namespace A166062

/-- `A027642(A006093(n+1))` -/
def P17250219977284665121.Spec : Prop :=
  ∀ n, P17250219977284665121.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P3843327231089502189

`A027760(A039915(n+1))`
-/

namespace A166062.P3843327231089502189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (A039915 (n + 1)).toNat

end

end A166062.P3843327231089502189

namespace A166062

/-- `A027760(A039915(n+1))` -/
def P3843327231089502189.Spec : Prop :=
  ∀ n, P3843327231089502189.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P12461776413553077128

`A326579(A000040(n+1))`
-/

namespace A166062.P12461776413553077128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326579 (A000040 (n + 1)).toNat

end

end A166062.P12461776413553077128

namespace A166062

/-- `A326579(A000040(n+1))` -/
def P12461776413553077128.Spec : Prop :=
  ∀ n, P12461776413553077128.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P8780927158958570565

`A326579(A008578(n+2))`
-/

namespace A166062.P8780927158958570565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326579 (A008578 (n + 2)).toNat

end

end A166062.P8780927158958570565

namespace A166062

/-- `A326579(A008578(n+2))` -/
def P8780927158958570565.Spec : Prop :=
  ∀ n, P8780927158958570565.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P6302484750579488983

`A326579(A182986(n+2))`
-/

namespace A166062.P6302484750579488983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326579 (A182986 (n + 2)).toNat

end

end A166062.P6302484750579488983

namespace A166062

/-- `A326579(A182986(n+2))` -/
def P6302484750579488983.Spec : Prop :=
  ∀ n, P6302484750579488983.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P13802651925277057022

`A027642(record[A000010(n+1)])`
-/

namespace A166062.P13802651925277057022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166062.P13802651925277057022

namespace A166062

/-- `A027642(record[A000010(n+1)])` -/
def P13802651925277057022.Spec : Prop :=
  ∀ n, P13802651925277057022.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P11645719337762698256

`A027760(record[A000010(n+1)])`
-/

namespace A166062.P11645719337762698256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166062.P11645719337762698256

namespace A166062

/-- `A027760(record[A000010(n+1)])` -/
def P11645719337762698256.Spec : Prop :=
  ∀ n, P11645719337762698256.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P15346233701174888344

`A027642(record[A002322(n+1)])`
-/

namespace A166062.P15346233701174888344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166062.P15346233701174888344

namespace A166062

/-- `A027642(record[A002322(n+1)])` -/
def P15346233701174888344.Spec : Prop :=
  ∀ n, P15346233701174888344.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P11953660492899207605

`A027642(record[A033879(n+1)])`
-/

namespace A166062.P11953660492899207605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166062.P11953660492899207605

namespace A166062

/-- `A027642(record[A033879(n+1)])` -/
def P11953660492899207605.Spec : Prop :=
  ∀ n, P11953660492899207605.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P16471883032787801519

`A106458(record[A000010(n+1)])`
-/

namespace A166062.P16471883032787801519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166062.P16471883032787801519

namespace A166062

/-- `A106458(record[A000010(n+1)])` -/
def P16471883032787801519.Spec : Prop :=
  ∀ n, P16471883032787801519.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P14150904217413674517

`A141056(record[A000010(n+1)])`
-/

namespace A166062.P14150904217413674517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166062.P14150904217413674517

namespace A166062

/-- `A141056(record[A000010(n+1)])` -/
def P14150904217413674517.Spec : Prop :=
  ∀ n, P14150904217413674517.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P1055685100670369569

`A141056(record[A002322(n+1)])`
-/

namespace A166062.P1055685100670369569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166062.P1055685100670369569

namespace A166062

/-- `A141056(record[A002322(n+1)])` -/
def P1055685100670369569.Spec : Prop :=
  ∀ n, P1055685100670369569.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P11801386288855401852

`A027642(A040976(n+1)+1)`
-/

namespace A166062.P11801386288855401852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A040976 (n + 1) + 1).toNat

end

end A166062.P11801386288855401852

namespace A166062

/-- `A027642(A040976(n+1)+1)` -/
def P11801386288855401852.Spec : Prop :=
  ∀ n, P11801386288855401852.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P15891812011131055292

`A027642(A000040(n+1)-1)`
-/

namespace A166062.P15891812011131055292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A000040 (n + 1) - 1).toNat

end

end A166062.P15891812011131055292

namespace A166062

/-- `A027642(A000040(n+1)-1)` -/
def P15891812011131055292.Spec : Prop :=
  ∀ n, P15891812011131055292.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P6227654757306084508

`A027760(A000040(n+1)-1)`
-/

namespace A166062.P6227654757306084508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (A000040 (n + 1) - 1).toNat

end

end A166062.P6227654757306084508

namespace A166062

/-- `A027760(A000040(n+1)-1)` -/
def P6227654757306084508.Spec : Prop :=
  ∀ n, P6227654757306084508.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P1009690471372762652

`A106458(A000040(n+1)-1)`
-/

namespace A166062.P1009690471372762652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (A000040 (n + 1) - 1).toNat

end

end A166062.P1009690471372762652

namespace A166062

/-- `A106458(A000040(n+1)-1)` -/
def P1009690471372762652.Spec : Prop :=
  ∀ n, P1009690471372762652.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P18383124327508039970

`A141056(A000040(n+1)-1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166062

/-- `A141056(A000040(n+1)-1)` -/
def P18383124327508039970.Spec : Prop :=
  ∀ n, P18383124327508039970.a n = A166062 (n + 1)

theorem P18383124327508039970.correct : P18383124327508039970.Spec := by
  intro n
  simp only [A166062, Nat.add_sub_cancel]

end A166062

/-! ## A166062.P5391275055812481822

`A027642(A008578(n+2)-1)`
-/

namespace A166062.P5391275055812481822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A008578 (n + 2) - 1).toNat

end

end A166062.P5391275055812481822

namespace A166062

/-- `A027642(A008578(n+2)-1)` -/
def P5391275055812481822.Spec : Prop :=
  ∀ n, P5391275055812481822.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P10796991220169471219

`A141056(A008578(n+2)-1)`
-/

namespace A166062.P10796991220169471219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A008578 (n + 2) - 1).toNat

end

end A166062.P10796991220169471219

namespace A166062

/-- `A141056(A008578(n+2)-1)` -/
def P10796991220169471219.Spec : Prop :=
  ∀ n, P10796991220169471219.a n = A166062 (n + 1)

end A166062

/-! ## A166062.P11831326279156684866

`A027642(eq[1, A001222(n+1)])`
-/

namespace A166062.P11831326279156684866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166062.P11831326279156684866

namespace A166062

/-- `A027642(eq[1, A001222(n+1)])` -/
def P11831326279156684866.Spec : Prop :=
  ∀ n, P11831326279156684866.a n = A166062 (n + 1)

end A166062

/-!
# A166063: 23-rough numbers: positive integers that have no prime factors less than 23.

The programs for A166063, there is no canonical definition to state claims against.
-/

/-! ## A166063.P3519120518068079021

`A332797(n+1)/23`
-/

namespace A166063.P3519120518068079021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332797 (n + 1) : ℚ) / 23

end

end A166063.P3519120518068079021

/-! ## A166063.P1187008694617662178

`lt[2, log(log(A090088(n+1)²))]`
-/

namespace A166063.P1187008694617662178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Real.log (A090088 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A166063.P1187008694617662178

/-! ## A166063.P10819483733122020599

`record[A052125(A332798(n+1))]`
-/

namespace A166063.P10819483733122020599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A332798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166063.P10819483733122020599

/-! ## A166063.P11074359037734465329

`record[A052125(19*A166061(n+1))]`
-/

namespace A166063.P11074359037734465329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (19 * A166061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166063.P11074359037734465329

/-! ## A166063.P10846529954080331569

`∩[A160544(n+1), A166061(n+1)]`
-/

namespace A166063.P10846529954080331569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166063.P10846529954080331569

/-! ## A166063.P1867506985913425753

`A000040(n+8)%A166102(n+1)`
-/

namespace A166063.P1867506985913425753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 8)) (A166102 (n + 1))

end

end A166063.P1867506985913425753

/-! ## A166063.P354591379982145420

`record[A014963(A171181(n)+21)]`
-/

namespace A166063.P354591379982145420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A171181 n + 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166063.P354591379982145420

/-! ## A166063.P7616054025536364198

`A014673(A332797(n+1))`
-/

namespace A166063.P7616054025536364198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A332797 (n + 1)).toNat

end

end A166063.P7616054025536364198

/-! ## A166063.P13472067529649502411

`A249738(A332797(n+2))`
-/

namespace A166063.P13472067529649502411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A332797 (n + 2)).toNat

end

end A166063.P13472067529649502411

/-! ## A166063.P18384927715584529466

`A106620(A224534(n+1))`
-/

namespace A166063.P18384927715584529466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A224534 (n + 1)).toNat

end

end A166063.P18384927715584529466

/-!
# A166064: Sum of first n terms divides the concatenation of the first n terms.

The programs for A166064, there is no canonical definition to state claims against.
-/

/-! ## A166064.P6659965067022401473

`and(A002526(n), A262430(A141214(n)))`
-/

namespace A166064.P6659965067022401473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002526 n) (A262430 (A141214 n).toNat)

end

end A166064.P6659965067022401473

/-! ## A166064.P16274280930278548355

`xor(A038198(A000602(n)), A139250(n))`
-/

namespace A166064.P16274280930278548355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038198 (A000602 n).toNat) (A139250 n)

end

end A166064.P16274280930278548355

/-!
# A166065: Triangle, read by rows, given by [0,1,1,0,0,0,0,0,0,0,...] DELTA [2,-1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A166065, the canonical program `A166065.P3490208905278104305` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166065 has offset 0).

The definition of A166065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166065.P8642851032351352495

`A130321(n)*A166124(n)`
-/

namespace A166065.P8642851032351352495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A166124 n

end

end A166065.P8642851032351352495

namespace A166065

/-- `A130321(n)*A166124(n)` -/
def P8642851032351352495.Spec : Prop :=
  ∀ n, P8642851032351352495.a n = A166065 n

end A166065

/-! ## A166065.P15981114160800466269

`A057728(n+1)*A166124(n)`
-/

namespace A166065.P15981114160800466269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A166124 n

end

end A166065.P15981114160800466269

namespace A166065

/-- `A057728(n+1)*A166124(n)` -/
def P15981114160800466269.Spec : Prop :=
  ∀ n, P15981114160800466269.a n = A166065 n

end A166065

/-! ## A166065.P3490208905278104305

`A057728(n+1)+Δ[A010054(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A166065

/-- `A057728(n+1)+Δ[A010054(n)]` -/
def P3490208905278104305.Spec : Prop :=
  ∀ n, P3490208905278104305.a n = A166065 n

theorem P3490208905278104305.correct : P3490208905278104305.Spec := by
  intro n
  simp only [A166065]

end A166065

/-! ## A166065.P16188803358688606606

`A057728(n+1)+Δ[A035214(n)]`
-/

namespace A166065.P16188803358688606606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166065.P16188803358688606606

namespace A166065

/-- `A057728(n+1)+Δ[A035214(n)]` -/
def P16188803358688606606.Spec : Prop :=
  ∀ n, P16188803358688606606.a n = A166065 n

end A166065

/-! ## A166065.P6589202835091612634

`2^A025581(n)*(Δ[A035214(n)]+1)`
-/

namespace A166065.P6589202835091612634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A166065.P6589202835091612634

namespace A166065

/-- `2^A025581(n)*(Δ[A035214(n)]+1)` -/
def P6589202835091612634.Spec : Prop :=
  ∀ n, P6589202835091612634.a n = (A166065 n : ℚ)

end A166065

/-! ## A166065.P9651883431633876691

`A000079(A025581(n))*A166124(n)`
-/

namespace A166065.P9651883431633876691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A166124 n

end

end A166065.P9651883431633876691

namespace A166065

/-- `A000079(A025581(n))*A166124(n)` -/
def P9651883431633876691.Spec : Prop :=
  ∀ n, P9651883431633876691.a n = A166065 n

end A166065

/-! ## A166065.P16079396097951774682

`A059268(A061579(n))*A166124(n)`
-/

namespace A166065.P16079396097951774682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A166124 n

end

end A166065.P16079396097951774682

namespace A166065

/-- `A059268(A061579(n))*A166124(n)` -/
def P16079396097951774682.Spec : Prop :=
  ∀ n, P16079396097951774682.a n = A166065 n

end A166065

/-! ## A166065.P15895314647838838433

`A010054(n+1)+A057728(n+1)-A010054(n)`
-/

namespace A166065.P15895314647838838433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + (A057728 (n + 1) - A010054 n)

end

end A166065.P15895314647838838433

namespace A166065

/-- `A010054(n+1)+A057728(n+1)-A010054(n)` -/
def P15895314647838838433.Spec : Prop :=
  ∀ n, P15895314647838838433.a n = A166065 n

theorem P15895314647838838433.correct : P15895314647838838433.Spec := by
  intro n
  simp only [A166065, Nat.add_sub_cancel, A166065.P15895314647838838433.a, A166065.P3490208905278104305.f1, A166065.P3490208905278104305.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166065

/-! ## A166065.P1311197073280009588

`Δ[A023758(A035214(n)+n)]`
-/

namespace A166065.P1311197073280009588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A035214 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166065.P1311197073280009588

namespace A166065

/-- `Δ[A023758(A035214(n)+n)]` -/
def P1311197073280009588.Spec : Prop :=
  ∀ n, P1311197073280009588.a n = A166065 n

end A166065

/-! ## A166065.P13663669717688342662

`Δ[A023758(n+1)+A010054(n)]`
-/

namespace A166065.P13663669717688342662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1) + A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166065.P13663669717688342662

namespace A166065

/-- `Δ[A023758(n+1)+A010054(n)]` -/
def P13663669717688342662.Spec : Prop :=
  ∀ n, P13663669717688342662.a n = A166065 n

end A166065

/-! ## A166065.P16628479505822358264

`Δ[A023758(n+1)-gcd(2, A018900(n+1))]`
-/

namespace A166065.P16628479505822358264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1) - (Int.gcd 2 (A018900 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166065.P16628479505822358264

namespace A166065

/-- `Δ[A023758(n+1)-gcd(2, A018900(n+1))]` -/
def P16628479505822358264.Spec : Prop :=
  ∀ n, P16628479505822358264.a n = A166065 n

end A166065

/-! ## A166065.P7015840475215081349

`Δ[A006257(A089633(n))]`
-/

namespace A166065.P7015840475215081349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A089633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166065.P7015840475215081349

namespace A166065

/-- `Δ[A006257(A089633(n))]` -/
def P7015840475215081349.Spec : Prop :=
  ∀ n, P7015840475215081349.a n = A166065 n

end A166065

/-!
# A166066: a(n) = (Concatenation of A166064(1..n))/(Sum of A166064(1..n)).

The programs for A166066, there is no canonical definition to state claims against.
-/

/-! ## A166066.P144728481599303012

`A197359(n+1)+A025581(A056573(n))`
-/

namespace A166066.P144728481599303012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197359 (n + 1) + A025581 (A056573 n).toNat

end

end A166066.P144728481599303012

/-!
# A166067: Fibonacci sequence beginning 1, 69.

The programs for A166067, the canonical program `A166067.P8795279629543949953` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166067 has offset 0).

The definition of A166067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166067.P8795279629543949953

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=69`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166067

/-- `a(n-1)+a(n-2)` -/
def P8795279629543949953.Spec : Prop :=
  ∀ n, (P8795279629543949953.a n : ℤ) = A166067 n

theorem P8795279629543949953.correct : P8795279629543949953.Spec := by
  intro n
  simp only [A166067]

end A166067

/-! ## A166067.P884607418042068609

`68*A000045(n)+A000045(n+1)`
-/

namespace A166067.P884607418042068609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  68 * A000045 n + A000045 (n + 1)

end

end A166067.P884607418042068609

namespace A166067

/-- `68*A000045(n)+A000045(n+1)` -/
def P884607418042068609.Spec : Prop :=
  ∀ n, P884607418042068609.a n = A166067 n

end A166067

/-! ## A166067.P668114755091683611

`A282465(n)+A022357(n)`
-/

namespace A166067.P668114755091683611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282465 n + A022357 n

end

end A166067.P668114755091683611

namespace A166067

/-- `A282465(n)+A022357(n)` -/
def P668114755091683611.Spec : Prop :=
  ∀ n, P668114755091683611.a n = A166067 n

end A166067

/-! ## A166067.P12883342669971464310

`A022393(n)+2*A022357(n)`
-/

namespace A166067.P12883342669971464310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022393 n + 2 * A022357 n

end

end A166067.P12883342669971464310

namespace A166067

/-- `A022393(n)+2*A022357(n)` -/
def P12883342669971464310.Spec : Prop :=
  ∀ n, P12883342669971464310.a n = A166067 n

end A166067

/-! ## A166067.P14592174005819191470

`A282465(n)+A282465(n)-A022393(n)`
-/

namespace A166067.P14592174005819191470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282465 n + (A282465 n - A022393 n)

end

end A166067.P14592174005819191470

namespace A166067

/-- `A282465(n)+A282465(n)-A022393(n)` -/
def P14592174005819191470.Spec : Prop :=
  ∀ n, P14592174005819191470.a n = A166067 n

end A166067

/-! ## A166067.P8595142606291687531

`2*A282465(n)-A022393(n)`
-/

namespace A166067.P8595142606291687531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282465 n - A022393 n

end

end A166067.P8595142606291687531

namespace A166067

/-- `2*A282465(n)-A022393(n)` -/
def P8595142606291687531.Spec : Prop :=
  ∀ n, P8595142606291687531.a n = A166067 n

end A166067

/-!
# A166068: a(n) = a(n-1)+ [least square > a(n-1)].

The programs for A166068, the canonical program `A166068.P2577110010453772255` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166068 has offset 1).

The definition of A166068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166068.P2577110010453772255

`a(n-1)+(floor(sqrt(a(n-1)))+1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166068

/-- `a(n-1)+(floor(sqrt(a(n-1)))+1)²` -/
def P2577110010453772255.Spec : Prop :=
  ∀ n, (P2577110010453772255.a n : ℤ) = A166068 (n + 1)

theorem P2577110010453772255.correct : P2577110010453772255.Spec := by
  intro n
  simp only [A166068, Nat.add_sub_cancel]

end A166068

/-! ## A166068.P11274398626676047412

`a(n-1)+ceil(sqrt(a(n-1)+1))²` with `a(0)=1`
-/

namespace A166068.P11274398626676047412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈Real.sqrt (a (n - 1) + 1 : ℝ)⌉ ^ 2

end

end A166068.P11274398626676047412

namespace A166068

/-- `a(n-1)+ceil(sqrt(a(n-1)+1))²` -/
def P11274398626676047412.Spec : Prop :=
  ∀ n, P11274398626676047412.a n = A166068 (n + 1)

end A166068

/-! ## A166068.P4671939314758226517

`∑[A076967(n+1)]`
-/

namespace A166068.P4671939314758226517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166068.P4671939314758226517

namespace A166068

/-- `∑[A076967(n+1)]` -/
def P4671939314758226517.Spec : Prop :=
  ∀ n, P4671939314758226517.a n = A166068 (n + 1)

end A166068

/-! ## A166068.P3864985914160781842

`∑[A076968(n+1)²]`
-/

namespace A166068.P3864985914160781842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166068.P3864985914160781842

namespace A166068

/-- `∑[A076968(n+1)²]` -/
def P3864985914160781842.Spec : Prop :=
  ∀ n, P3864985914160781842.a n = A166068 (n + 1)

end A166068

/-! ## A166068.P18073826566768621364

`∑[A076968(n+1)^gcd(2, A008586(n))]`
-/

namespace A166068.P18073826566768621364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (n + 1) ^ Int.gcd 2 (A008586 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166068.P18073826566768621364

namespace A166068

/-- `∑[A076968(n+1)^gcd(2, A008586(n))]` -/
def P18073826566768621364.Spec : Prop :=
  ∀ n, P18073826566768621364.a n = A166068 (n + 1)

end A166068

/-! ## A166068.P17319808766140665880

`∑[A076968(n+1)^(2%A075726(n+1))]`
-/

namespace A166068.P17319808766140665880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076968 (n + 1) : ℚ) ^ (Int.tmod 2 (A075726 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166068.P17319808766140665880

namespace A166068

/-- `∑[A076968(n+1)^(2%A075726(n+1))]` -/
def P17319808766140665880.Spec : Prop :=
  ∀ n, P17319808766140665880.a n = (A166068 (n + 1) : ℚ)

end A166068

/-!
# A166069: Multiply perfect numbers k such that sigma(k)/k > 2.

The programs for A166069, there is no canonical definition to state claims against.
-/

/-! ## A166069.P7843417592024030289

`∩[A007691(n+1), A117350(n+1)]`
-/

namespace A166069.P7843417592024030289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166069.P7843417592024030289

/-! ## A166069.P5598001233569462647

`A007691(lt[A034690(2*(n+2)), A240219(3*n+2)])`
-/

namespace A166069.P5598001233569462647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240219 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A166069.P5598001233569462647

/-! ## A166069.P12577772384823735392

`A089748(lt[A079390(n+4), A006512(n+1)])`
-/

namespace A166069.P12577772384823735392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079390 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A166069.P12577772384823735392

/-! ## A166069.P636444284865148373

`A089748(lt[A079390(n+4), A060212(n+1)])`
-/

namespace A166069.P636444284865148373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079390 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A166069.P636444284865148373

/-! ## A166069.P18364814106972099426

`A089748(∪[A002808(n+1), A030430(n+1)])`
-/

namespace A166069.P18364814106972099426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A166069.P18364814106972099426

/-!
# A166070: Sorted sequence of primes and multiply perfect numbers.

The programs for A166070, the canonical program `A166070.P1012251332305445958` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166070 has offset 1).

The definition of A166070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166070.P3872691991699334837

`filter[n+1, A323152(#)]`
-/

namespace A166070.P3872691991699334837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j) = 1) n)

end

end A166070.P3872691991699334837

namespace A166070

/-- `filter[n+1, A323152(#)]` -/
def P3872691991699334837.Spec : Prop :=
  ∀ n, (P3872691991699334837.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P6017242082759989358

`eq[1, A323152(n+1)]+1`
-/

namespace A166070.P6017242082759989358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166070.P6017242082759989358

namespace A166070

/-- `eq[1, A323152(n+1)]+1` -/
def P6017242082759989358.Spec : Prop :=
  ∀ n, (P6017242082759989358.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P1012251332305445958

`lt[A054024(n+1), 2]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166070

/-- `lt[A054024(n+1), 2]+1` -/
def P1012251332305445958.Spec : Prop :=
  ∀ n, (P1012251332305445958.a n : ℤ) = A166070 (n + 1)

theorem P1012251332305445958.correct : P1012251332305445958.Spec := by
  intro n
  simp only [A166070, Nat.add_sub_cancel]

end A166070

/-! ## A166070.P6702991353450516658

`lt[A173438(n+1), 2]+1`
-/

namespace A166070.P6702991353450516658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173438 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166070.P6702991353450516658

namespace A166070

/-- `lt[A173438(n+1), 2]+1` -/
def P6702991353450516658.Spec : Prop :=
  ∀ n, (P6702991353450516658.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P14792449522180542848

`lt[A318996(n+1), 2]+1`
-/

namespace A166070.P14792449522180542848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318996 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166070.P14792449522180542848

namespace A166070

/-- `lt[A318996(n+1), 2]+1` -/
def P14792449522180542848.Spec : Prop :=
  ∀ n, (P14792449522180542848.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P5090304929858368910

`lt[A243473(n+1), 3]+1`
-/

namespace A166070.P5090304929858368910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166070.P5090304929858368910

namespace A166070

/-- `lt[A243473(n+1), 3]+1` -/
def P5090304929858368910.Spec : Prop :=
  ∀ n, (P5090304929858368910.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P14398208187875019619

`lt[A000203(n+1)%(n+1), 2]+1`
-/

namespace A166070.P14398208187875019619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166070.P14398208187875019619

namespace A166070

/-- `lt[A000203(n+1)%(n+1), 2]+1` -/
def P14398208187875019619.Spec : Prop :=
  ∀ n, (P14398208187875019619.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P14272339426805309853

`lt[A339965(n+1)%(n+1), 2]+1`
-/

namespace A166070.P14272339426805309853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339965 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166070.P14272339426805309853

namespace A166070

/-- `lt[A339965(n+1)%(n+1), 2]+1` -/
def P14272339426805309853.Spec : Prop :=
  ∀ n, (P14272339426805309853.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P8337059400511636843

`record[A061006(n+1)+A009194(n+1)]`
-/

namespace A166070.P8337059400511636843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1) + A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166070.P8337059400511636843

namespace A166070

/-- `record[A061006(n+1)+A009194(n+1)]` -/
def P8337059400511636843.Spec : Prop :=
  ∀ n, P8337059400511636843.a n = A166070 (n + 1)

end A166070

/-! ## A166070.P5489916376128990593

`record[A009194(n+1)*A014963(n+1)]`
-/

namespace A166070.P5489916376128990593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) * A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166070.P5489916376128990593

namespace A166070

/-- `record[A009194(n+1)*A014963(n+1)]` -/
def P5489916376128990593.Spec : Prop :=
  ∀ n, P5489916376128990593.a n = A166070 (n + 1)

end A166070

/-! ## A166070.P8931558181789064557

`record[A064505(n+1)/A017666(n+1)]`
-/

namespace A166070.P8931558181789064557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064505 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166070.P8931558181789064557

namespace A166070

/-- `record[A064505(n+1)/A017666(n+1)]` -/
def P8931558181789064557.Spec : Prop :=
  ∀ n, P8931558181789064557.a n = (A166070 (n + 1) : ℚ)

end A166070

/-! ## A166070.P10583654498657709650

`eq[1, A019590(A054024(n+1)+1)]+1`
-/

namespace A166070.P10583654498657709650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A054024 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166070.P10583654498657709650

namespace A166070

/-- `eq[1, A019590(A054024(n+1)+1)]+1` -/
def P10583654498657709650.Spec : Prop :=
  ∀ n, (P10583654498657709650.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P828067809946958615

`eq[A010051(n+1), A054024(n+1)]+1`
-/

namespace A166070.P828067809946958615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166070.P828067809946958615

namespace A166070

/-- `eq[A010051(n+1), A054024(n+1)]+1` -/
def P828067809946958615.Spec : Prop :=
  ∀ n, (P828067809946958615.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P14431516983764469491

`eq[A010051(n+1), A272008(n+1)]+1`
-/

namespace A166070.P14431516983764469491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166070.P14431516983764469491

namespace A166070

/-- `eq[A010051(n+1), A272008(n+1)]+1` -/
def P14431516983764469491.Spec : Prop :=
  ∀ n, (P14431516983764469491.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P12462307404528141204

`eq[A173438(n+1), A336387(n+1)]+1`
-/

namespace A166070.P12462307404528141204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166070.P12462307404528141204

namespace A166070

/-- `eq[A173438(n+1), A336387(n+1)]+1` -/
def P12462307404528141204.Spec : Prop :=
  ∀ n, (P12462307404528141204.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P2940137614211224461

`eq[char[A006257(n)+1], A054024(n+1)]+1`
-/

namespace A166070.P2940137614211224461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A166070.P2940137614211224461

namespace A166070

/-- `eq[char[A006257(n)+1], A054024(n+1)]+1` -/
def P2940137614211224461.Spec : Prop :=
  ∀ n, (P2940137614211224461.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P15117501996893367695

`eq[char[A000040(n+1)-1], A054024(n+1)]+1`
-/

namespace A166070.P15117501996893367695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A166070.P15117501996893367695

namespace A166070

/-- `eq[char[A000040(n+1)-1], A054024(n+1)]+1` -/
def P15117501996893367695.Spec : Prop :=
  ∀ n, (P15117501996893367695.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P1045470159673684562

`eq[A001222(A014963(n+1)), A054024(n+1)]+1`
-/

namespace A166070.P1045470159673684562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166070.P1045470159673684562

namespace A166070

/-- `eq[A001222(A014963(n+1)), A054024(n+1)]+1` -/
def P1045470159673684562.Spec : Prop :=
  ∀ n, (P1045470159673684562.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P14252416401606916473

`eq[A272008(A014963(n+1)), A272008(n+1)]+1`
-/

namespace A166070.P14252416401606916473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166070.P14252416401606916473

namespace A166070

/-- `eq[A272008(A014963(n+1)), A272008(n+1)]+1` -/
def P14252416401606916473.Spec : Prop :=
  ∀ n, (P14252416401606916473.a n : ℤ) = A166070 (n + 1)

end A166070

/-! ## A166070.P6203115644608759496

`eq[A007814(A054024(n+1)+1), A054024(n+1)]+1`
-/

namespace A166070.P6203115644608759496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A054024 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166070.P6203115644608759496

namespace A166070

/-- `eq[A007814(A054024(n+1)+1), A054024(n+1)]+1` -/
def P6203115644608759496.Spec : Prop :=
  ∀ n, (P6203115644608759496.a n : ℤ) = A166070 (n + 1)

end A166070

/-!
# A166074: a(n) = n^2 - [largest Fibonacci number <= n^2].

The programs for A166074, the canonical program `A166074.P4614613457811451958` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166074 has offset 1).

The definition of A166074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166074.P4614613457811451958

`A194029((n+1)²)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166074

/-- `A194029((n+1)²)-1` -/
def P4614613457811451958.Spec : Prop :=
  ∀ n, P4614613457811451958.a n = A166074 (n + 1)

theorem P4614613457811451958.correct : P4614613457811451958.Spec := by
  intro n
  simp only [A166074, Nat.add_sub_cancel]

end A166074

/-! ## A166074.P16708186941032050917

`A023443(A194029((n+1)²))`
-/

namespace A166074.P16708186941032050917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194029 ((n + 1) ^ 2)).toNat

end

end A166074.P16708186941032050917

namespace A166074

/-- `A023443(A194029((n+1)²))` -/
def P16708186941032050917.Spec : Prop :=
  ∀ n, P16708186941032050917.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P6520263873042422971

`abs(A194029(A000290(n+1))-1)`
-/

namespace A166074.P6520263873042422971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194029 (A000290 (n + 1)).toNat - 1|

end

end A166074.P6520263873042422971

namespace A166074

/-- `abs(A194029(A000290(n+1))-1)` -/
def P6520263873042422971.Spec : Prop :=
  ∀ n, P6520263873042422971.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P7661133672606337994

`A342297(A342297((n+1)²+1))-1`
-/

namespace A166074.P7661133672606337994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342297 (A342297 ((n + 1) ^ 2 + 1)).toNat - 1

end

end A166074.P7661133672606337994

namespace A166074

/-- `A342297(A342297((n+1)²+1))-1` -/
def P7661133672606337994.Spec : Prop :=
  ∀ n, P7661133672606337994.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P11523668296078034007

`(n+1)²-A087172((n+1)²)`
-/

namespace A166074.P11523668296078034007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A087172 ((n + 1) ^ 2)

end

end A166074.P11523668296078034007

namespace A166074

/-- `(n+1)²-A087172((n+1)²)` -/
def P11523668296078034007.Spec : Prop :=
  ∀ n, P11523668296078034007.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P11548559264499538672

`∑[A005408(n)]%A087172((n+1)²)`
-/

namespace A166074.P11548559264499538672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A087172 ((n + 1) ^ 2))

end

end A166074.P11548559264499538672

namespace A166074

/-- `∑[A005408(n)]%A087172((n+1)²)` -/
def P11548559264499538672.Spec : Prop :=
  ∀ n, P11548559264499538672.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P16569234814987197123

`Δ[A179904(n)]%A087172((n+1)²)`
-/

namespace A166074.P16569234814987197123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A087172 ((n + 1) ^ 2))

end

end A166074.P16569234814987197123

namespace A166074

/-- `Δ[A179904(n)]%A087172((n+1)²)` -/
def P16569234814987197123.Spec : Prop :=
  ∀ n, P16569234814987197123.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P11758723512750994569

`A000290(n+1)%A087172((n+1)²)`
-/

namespace A166074.P11758723512750994569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1)) (A087172 ((n + 1) ^ 2))

end

end A166074.P11758723512750994569

namespace A166074

/-- `A000290(n+1)%A087172((n+1)²)` -/
def P11758723512750994569.Spec : Prop :=
  ∀ n, P11758723512750994569.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P4890530437286547283

`(n+1)²-A000045(A130233((n+1)²))`
-/

namespace A166074.P4890530437286547283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000045 (A130233 ((n + 1) ^ 2)).toNat

end

end A166074.P4890530437286547283

namespace A166074

/-- `(n+1)²-A000045(A130233((n+1)²))` -/
def P4890530437286547283.Spec : Prop :=
  ∀ n, P4890530437286547283.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P7999703879737697187

`∑[A004273(n+1)]%A087172((n+1)²)`
-/

namespace A166074.P7999703879737697187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A087172 ((n + 1) ^ 2))

end

end A166074.P7999703879737697187

namespace A166074

/-- `∑[A004273(n+1)]%A087172((n+1)²)` -/
def P7999703879737697187.Spec : Prop :=
  ∀ n, P7999703879737697187.a n = A166074 (n + 1)

end A166074

/-! ## A166074.P8217334084087572989

`A002620(2*(n+1))%A000045(A130233((n+1)²))`
-/

namespace A166074.P8217334084087572989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 (2 * (n + 1))) (A000045 (A130233 ((n + 1) ^ 2)).toNat)

end

end A166074.P8217334084087572989

namespace A166074

/-- `A002620(2*(n+1))%A000045(A130233((n+1)²))` -/
def P8217334084087572989.Spec : Prop :=
  ∀ n, P8217334084087572989.a n = A166074 (n + 1)

end A166074

/-!
# A166075: Number of reduced words of length n in Coxeter group on 31 generators S_i with relations (S_i)^2 = (S_i S_j)^10 = I.

The programs for A166075, there is no canonical definition to state claims against.
-/

/-! ## A166075.P15528118751543548135

`30*a(n%A119966(n+2)-1)` with `a(0)=1, a(1)=31`
-/

namespace A166075.P15528118751543548135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 31] fun n a =>
  30 * a (Int.tmod (n : ℤ) (A119966 (n + 2)) - 1).toNat

end

end A166075.P15528118751543548135

/-! ## A166075.P12372139807728770231

`A166425(A056142(n))`
-/

namespace A166075.P12372139807728770231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166425 (A056142 n).toNat

end

end A166075.P12372139807728770231

/-! ## A166075.P4414229269184883215

`A166425(A001633(n+1))`
-/

namespace A166075.P4414229269184883215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166425 (A001633 (n + 1)).toNat

end

end A166075.P4414229269184883215

/-! ## A166075.P12901801426071579098

`A166425(n^A132272(n))`
-/

namespace A166075.P12901801426071579098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166425 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A132272 n : ℤ))).toNat

end

end A166075.P12901801426071579098

/-!
# A166076: Expansion of (7+5x-sqrt(1-10x-7x^2))/(2(3+5x+2x^2)).

The programs for A166076, there is no canonical definition to state claims against.
-/

/-! ## A166076.P565712725975358436

`A062108(A060090(n))`
-/

namespace A166076.P565712725975358436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A060090 n).toNat

end

end A166076.P565712725975358436

/-! ## A166076.P9346623771536375014

`A074206(A002110(n))-A001045(n)`
-/

namespace A166076.P9346623771536375014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A002110 n).toNat - A001045 n

end

end A166076.P9346623771536375014

/-!
# A166077: a(n)=2^(n(3n-1)/2).

The programs for A166077, the canonical program `A166077.P7870989169271059968` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166077 has offset 0).

The definition of A166077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166077.P7870989169271059968

`2^(n*(3*n-1)/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166077

/-- `2^(n*(3*n-1)/2)` -/
def P7870989169271059968.Spec : Prop :=
  ∀ n, P7870989169271059968.a n = (A166077 n : ℝ)

end A166077

/-! ## A166077.P8230866452800618807

`∏[2*4*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A166077.P8230866452800618807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166077.P8230866452800618807

namespace A166077

/-- `∏[2*4*a(n-1)]` -/
def P8230866452800618807.Spec : Prop :=
  ∀ n, (P8230866452800618807.a n : ℤ) = A166077 n

end A166077

/-! ## A166077.P6286967732788678232

`floor(2^∑[a(n-1)+3])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A166077.P6286967732788678232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166077.P6286967732788678232

namespace A166077

/-- `floor(2^∑[a(n-1)+3])` -/
def P6286967732788678232.Spec : Prop :=
  ∀ n, (P6286967732788678232.a n : ℤ) = A166077 n

end A166077

/-! ## A166077.P17890636471360536406

`2^(3*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A166077.P17890636471360536406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ ((3 * n : ℤ) - 2 : ℤ) * a (n - 1)

end

end A166077.P17890636471360536406

namespace A166077

/-- `2^(3*n-2)*a(n-1)` -/
def P17890636471360536406.Spec : Prop :=
  ∀ n, P17890636471360536406.a n = (A166077 n : ℚ)

end A166077

/-! ## A166077.P4183417059094421775

`floor(2^(2-∑[a(n-1)-3]))` with `a(0)=2`
-/

namespace A166077.P4183417059094421775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (2 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A166077.P4183417059094421775

namespace A166077

/-- `floor(2^(2-∑[a(n-1)-3]))` -/
def P4183417059094421775.Spec : Prop :=
  ∀ n, P4183417059094421775.a n = A166077 n

end A166077

/-!
# A166078: Expansion of (3(1-x)-sqrt(1+6x-7x^2))/(2(1-x)(1-2x)).

The programs for A166078, there is no canonical definition to state claims against.
-/

/-! ## A166078.P18141378210767828605

`ceil((-2)^n/3)*A156230(A003319(n))`
-/

namespace A166078.P18141378210767828605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((-2) ^ n : ℚ) / 3⌉ * A156230 (A003319 n).toNat

end

end A166078.P18141378210767828605

/-!
# A166079: Given a row of n payphones, all initially unused, how many people can use the payphones, assuming (1) each always chooses one of the most distant payphones from those in use already, (2) the first person takes a phone at the end, and (3) no people use adjacent phones?

The programs for A166079, the canonical program `A166079.P4044278399706627661` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166079 has offset 1).

The definition of A166079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166079.P4044278399706627661

`∑[a(ceil(n/2))²]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166079

/-- `∑[a(ceil(n/2))²]` -/
def P4044278399706627661.Spec : Prop :=
  ∀ n, (P4044278399706627661.a n : ℤ) = A166079 (n + 1)

theorem P4044278399706627661.correct : P4044278399706627661.Spec := by
  intro n
  simp only [A166079, Nat.add_sub_cancel]

end A166079

/-! ## A166079.P12753686535399877724

`∑[floor(a(ceil(n/2)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A166079.P12753686535399877724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166079.P12753686535399877724

namespace A166079

/-- `∑[floor(a(ceil(n/2)))]` -/
def P12753686535399877724.Spec : Prop :=
  ∀ n, (P12753686535399877724.a n : ℤ) = A166079 (n + 1)

end A166079

/-! ## A166079.P2635210755506766191

`∑[ceil(a(round(n/2)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A166079.P2635210755506766191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166079.P2635210755506766191

namespace A166079

/-- `∑[ceil(a(round(n/2)))]` -/
def P2635210755506766191.Spec : Prop :=
  ∀ n, (P2635210755506766191.a n : ℤ) = A166079 (n + 1)

end A166079

/-! ## A166079.P1664138785544171712

`∑[a(ceil(n/2))^4]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A166079.P1664138785544171712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166079.P1664138785544171712

namespace A166079

/-- `∑[a(ceil(n/2))^4]` -/
def P1664138785544171712.Spec : Prop :=
  ∀ n, (P1664138785544171712.a n : ℤ) = A166079 (n + 1)

end A166079

/-! ## A166079.P14448706511757219775

`∑[char[2]+a(ceil(n/2))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A166079.P14448706511757219775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166079.P14448706511757219775

namespace A166079

/-- `∑[char[2]+a(ceil(n/2))]` -/
def P14448706511757219775.Spec : Prop :=
  ∀ n, (P14448706511757219775.a n : ℤ) = A166079 (n + 1)

end A166079

/-! ## A166079.P5009423298903461237

`∑[char[or(n, a(n-1))+1]]+1` with `a(0)=2`
-/

namespace A166079.P5009423298903461237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  Nat.lor n (f2 (n - 1)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166079.P5009423298903461237

namespace A166079

/-- `∑[char[or(n, a(n-1))+1]]+1` -/
def P5009423298903461237.Spec : Prop :=
  ∀ n, (P5009423298903461237.a n : ℤ) = A166079 (n + 1)

end A166079

/-! ## A166079.P954096060748659133

`∑[floor(a(round(n/2)))]/2` with `a(0)=2, a(1)=0, a(2)=2, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A166079.P954096060748659133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 0, 2] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A166079.P954096060748659133

namespace A166079

/-- `∑[floor(a(round(n/2)))]/2` -/
def P954096060748659133.Spec : Prop :=
  ∀ n, P954096060748659133.a n = (A166079 (n + 1) : ℚ)

end A166079

/-! ## A166079.P937356263716314519

`comp[∑[n*char[2^n]+2]]-n+1`
-/

namespace A166079.P937356263716314519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1

end

end A166079.P937356263716314519

namespace A166079

/-- `comp[∑[n*char[2^n]+2]]-n+1` -/
def P937356263716314519.Spec : Prop :=
  ∀ n, P937356263716314519.a n = A166079 (n + 1)

end A166079

/-! ## A166079.P10756294393064989095

`∑[char[comp[A038558(n)+1]]]`
-/

namespace A166079.P10756294393064989095
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166079.P10756294393064989095

namespace A166079

/-- `∑[char[comp[A038558(n)+1]]]` -/
def P10756294393064989095.Spec : Prop :=
  ∀ n, (P10756294393064989095.a n : ℤ) = A166079 (n + 1)

end A166079

/-! ## A166079.P18177162294253054301

`∑[A000045(a(ceil(n/2)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A166079.P18177162294253054301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  A000045 (f1 ⌈(n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166079.P18177162294253054301

namespace A166079

/-- `∑[A000045(a(ceil(n/2)))]` -/
def P18177162294253054301.Spec : Prop :=
  ∀ n, P18177162294253054301.a n = A166079 (n + 1)

end A166079

/-! ## A166079.P10564042468336100423

`A008619(A060973(2*n+1))`
-/

namespace A166079.P10564042468336100423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A060973 (2 * n + 1)).toNat

end

end A166079.P10564042468336100423

namespace A166079

/-- `A008619(A060973(2*n+1))` -/
def P10564042468336100423.Spec : Prop :=
  ∀ n, P10564042468336100423.a n = A166079 (n + 1)

end A166079

/-!
# A166080: Nonprimes of the form (k^2+1)/2.

The programs for A166080, the canonical program `A166080.P16349895722489351659` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166080 has offset 1).

The definition of A166080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166080.P16349895722489351659

`A001844(comp[A027861(n+1)])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A166080

/-- `A001844(comp[A027861(n+1)])` -/
def P16349895722489351659.Spec : Prop :=
  ∀ n, P16349895722489351659.a n = A166080 (n + 1)

theorem P16349895722489351659.correct : P16349895722489351659.Spec := by
  intro n
  simp only [A166080, Nat.add_sub_cancel]

end A166080

/-! ## A166080.P17826056762670117017

`ceil(A180263(n+1)²/2)`
-/

namespace A166080.P17826056762670117017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180263 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A166080.P17826056762670117017

namespace A166080

/-- `ceil(A180263(n+1)²/2)` -/
def P17826056762670117017.Spec : Prop :=
  ∀ n, P17826056762670117017.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P165079792991638329

`A000982(A180263(n+1))`
-/

namespace A166080.P165079792991638329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A180263 (n + 1)).toNat

end

end A166080.P165079792991638329

namespace A166080

/-- `A000982(A180263(n+1))` -/
def P165079792991638329.Spec : Prop :=
  ∀ n, P165079792991638329.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P14618045163402808427

`A001971(2*A180263(n+1))`
-/

namespace A166080.P14618045163402808427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A180263 (n + 1)).toNat

end

end A166080.P14618045163402808427

namespace A166080

/-- `A001971(2*A180263(n+1))` -/
def P14618045163402808427.Spec : Prop :=
  ∀ n, P14618045163402808427.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P6791910642395208350

`record[A171435((n+1)²+n²)]`
-/

namespace A166080.P6791910642395208350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 ((n + 1) ^ 2 + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166080.P6791910642395208350

namespace A166080

/-- `record[A171435((n+1)²+n²)]` -/
def P6791910642395208350.Spec : Prop :=
  ∀ n, P6791910642395208350.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P7851206113948989359

`filter[A001844(n), A373978(#)]`
-/

namespace A166080.P7851206113948989359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P7851206113948989359

namespace A166080

/-- `filter[A001844(n), A373978(#)]` -/
def P7851206113948989359.Spec : Prop :=
  ∀ n, P7851206113948989359.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P1155364984282076935

`filter[A266723(n), A373978(#)]`
-/

namespace A166080.P1155364984282076935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P1155364984282076935

namespace A166080

/-- `filter[A266723(n), A373978(#)]` -/
def P1155364984282076935.Spec : Prop :=
  ∀ n, P1155364984282076935.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P6604165735694461744

`filter[A000982(n+1), A373978(#)]`
-/

namespace A166080.P6604165735694461744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P6604165735694461744

namespace A166080

/-- `filter[A000982(n+1), A373978(#)]` -/
def P6604165735694461744.Spec : Prop :=
  ∀ n, P6604165735694461744.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P16437525239703541282

`filter[A030978(n+1), A373978(#)]`
-/

namespace A166080.P16437525239703541282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P16437525239703541282

namespace A166080

/-- `filter[A030978(n+1), A373978(#)]` -/
def P16437525239703541282.Spec : Prop :=
  ∀ n, P16437525239703541282.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P14594201338917389519

`filter[A087327(n+1), A373978(#)]`
-/

namespace A166080.P14594201338917389519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P14594201338917389519

namespace A166080

/-- `filter[A087327(n+1), A373978(#)]` -/
def P14594201338917389519.Spec : Prop :=
  ∀ n, P14594201338917389519.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P13192686599955196884

`filter[A104563(n+1), A373978(#)]`
-/

namespace A166080.P13192686599955196884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P13192686599955196884

namespace A166080

/-- `filter[A104563(n+1), A373978(#)]` -/
def P13192686599955196884.Spec : Prop :=
  ∀ n, P13192686599955196884.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P8694516320594297899

`filter[A236283(n+1), A373978(#)]`
-/

namespace A166080.P8694516320594297899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P8694516320594297899

namespace A166080

/-- `filter[A236283(n+1), A373978(#)]` -/
def P8694516320594297899.Spec : Prop :=
  ∀ n, P8694516320594297899.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P13789483379307022986

`filter[A266725(n+1), A373978(#)]`
-/

namespace A166080.P13789483379307022986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P13789483379307022986

namespace A166080

/-- `filter[A266725(n+1), A373978(#)]` -/
def P13789483379307022986.Spec : Prop :=
  ∀ n, P13789483379307022986.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P13087069355713548935

`filter[A335298(n+1), A373978(#)]`
-/

namespace A166080.P13087069355713548935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P13087069355713548935

namespace A166080

/-- `filter[A335298(n+1), A373978(#)]` -/
def P13087069355713548935.Spec : Prop :=
  ∀ n, P13087069355713548935.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P3412694077902063988

`filter[A348484(n+1), A373978(#)]`
-/

namespace A166080.P3412694077902063988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P3412694077902063988

namespace A166080

/-- `filter[A348484(n+1), A373978(#)]` -/
def P3412694077902063988.Spec : Prop :=
  ∀ n, P3412694077902063988.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P14383170925940181537

`filter[A340528(n+2), A373978(#)]`
-/

namespace A166080.P14383170925940181537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P14383170925940181537

namespace A166080

/-- `filter[A340528(n+2), A373978(#)]` -/
def P14383170925940181537.Spec : Prop :=
  ∀ n, P14383170925940181537.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P15705640619175216089

`filter[A008818(2*n), A373978(#)]`
-/

namespace A166080.P15705640619175216089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P15705640619175216089

namespace A166080

/-- `filter[A008818(2*n), A373978(#)]` -/
def P15705640619175216089.Spec : Prop :=
  ∀ n, P15705640619175216089.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P293293760067551666

`filter[A269876(2*n), A373978(#)]`
-/

namespace A166080.P293293760067551666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269876 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P293293760067551666

namespace A166080

/-- `filter[A269876(2*n), A373978(#)]` -/
def P293293760067551666.Spec : Prop :=
  ∀ n, P293293760067551666.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P1277893054941991837

`filter[A271391(2*n), A373978(#)]`
-/

namespace A166080.P1277893054941991837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271391 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P1277893054941991837

namespace A166080

/-- `filter[A271391(2*n), A373978(#)]` -/
def P1277893054941991837.Spec : Prop :=
  ∀ n, P1277893054941991837.a n = A166080 (n + 1)

end A166080

/-! ## A166080.P14335549685570819910

`filter[A290268(2*n), A373978(#)]`
-/

namespace A166080.P14335549685570819910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290268 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A166080.P14335549685570819910

namespace A166080

/-- `filter[A290268(2*n), A373978(#)]` -/
def P14335549685570819910.Spec : Prop :=
  ∀ n, P14335549685570819910.a n = A166080 (n + 1)

end A166080

/-!
# A166081: Natural numbers that are not the sum of two distinct primes.

The programs for A166081, there is no canonical definition to state claims against.
-/

/-! ## A166081.P18017681732277955893

`∪[A014092(n+1), A109934(n+1)]`
-/

namespace A166081.P18017681732277955893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166081.P18017681732277955893

/-! ## A166081.P7515625197864494724

`∪[A100962(n+1), A109934(n+1)]`
-/

namespace A166081.P7515625197864494724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166081.P7515625197864494724

/-! ## A166081.P1245031275572326113

`lt[A334768(n), 2*n]`
-/

namespace A166081.P1245031275572326113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166081.P1245031275572326113

/-! ## A166081.P3127528508764938635

`lt[A073610(n+1), 2]+1`
-/

namespace A166081.P3127528508764938635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166081.P3127528508764938635

/-! ## A166081.P11711538896968617973

`eq[A046769(n), A061358(n)]`
-/

namespace A166081.P11711538896968617973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166081.P11711538896968617973

/-!
# A166083: Maximal volume of a closed box created by using at most n voxels as the boundary, skipping values of n for which the volume is the same as for n-1.

The programs for A166083, there is no canonical definition to state claims against.
-/

/-! ## A166083.P9626756153917642357

`record[A166082(n+8)-n%2]`
-/

namespace A166083.P9626756153917642357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166082 (n + 8) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166083.P9626756153917642357

/-! ## A166083.P10124164141418425890

`record[A166082(n+8)+A159075(n)]`
-/

namespace A166083.P10124164141418425890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166082 (n + 8) + A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166083.P10124164141418425890

/-! ## A166083.P3669407242792581581

`record[A166082(n+8)-A000035(n)]`
-/

namespace A166083.P3669407242792581581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166082 (n + 8) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166083.P3669407242792581581

/-! ## A166083.P78829297496904023

`record[A166082(n+8)-A055671(n)]`
-/

namespace A166083.P78829297496904023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166082 (n + 8) - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166083.P78829297496904023

/-! ## A166083.P5055373123176090761

`record[A166082(n+8)-A063524(n)]`
-/

namespace A166083.P5055373123176090761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166082 (n + 8) - A063524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166083.P5055373123176090761

/-!
# A166084: Maximal volume of a closed box created by using at most n voxels as the boundary, skipping values of n for which the volume is the same as for n-1 and also skipping values of n for which volume(n)-n <= volume(n-1)-(n-1). In other words, the empty enclosed space must increase.

The programs for A166084, there is no canonical definition to state claims against.
-/

/-! ## A166084.P6408759105553727495

`A088157(A056182(n+3))+A056196(n+1)`
-/

namespace A166084.P6408759105553727495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 (A056182 (n + 3)).toNat + A056196 (n + 1)

end

end A166084.P6408759105553727495

/-!
# A166085: Number of times Sum_{i=1..u} J(i,4n+1) obtains value zero when u ranges from 1 to (4n+1). Here J(i,k) is the Jacobi symbol.

The programs for A166085, there is no canonical definition to state claims against.
-/

/-! ## A166085.P9173516767126238406

`A166040(2*n)`
-/

namespace A166085.P9173516767126238406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n)

end

end A166085.P9173516767126238406

/-! ## A166085.P13715698129206763134

`lcm(2, A166040(A005843(n)))`
-/

namespace A166085.P13715698129206763134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A166040 (A005843 n).toNat)

end

end A166085.P13715698129206763134

/-! ## A166085.P15183755463910694823

`A166040(n+n)%A057335(n)²`
-/

namespace A166085.P15183755463910694823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166040 (n + n)) (A057335 n ^ 2)

end

end A166085.P15183755463910694823

/-! ## A166085.P15649982381728829622

`A245092(A245092(A166040(n+n)))`
-/

namespace A166085.P15649982381728829622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A245092 (A166040 (n + n)).toNat).toNat

end

end A166085.P15649982381728829622

/-! ## A166085.P18283704750644757817

`A166040(A005843(n))%A006352(n)`
-/

namespace A166085.P18283704750644757817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166040 (A005843 n).toNat) (A006352 n)

end

end A166085.P18283704750644757817

/-! ## A166085.P15868351088616080127

`A166040(n+n)+A165601(A165602(n))`
-/

namespace A166085.P15868351088616080127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (n + n) + A165601 (A165602 n).toNat

end

end A166085.P15868351088616080127

/-! ## A166085.P5883183687692124564

`A166040(A005843(n))-A008683(A139280(n+1))`
-/

namespace A166085.P5883183687692124564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A005843 n).toNat - A008683 (A139280 (n + 1)).toNat

end

end A166085.P5883183687692124564

/-! ## A166085.P17485882421660207865

`A166040(n+n)+A166040(A046092(n))`
-/

namespace A166085.P17485882421660207865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (n + n) + A166040 (A046092 n).toNat

end

end A166085.P17485882421660207865

/-! ## A166085.P10350319882029306715

`A166040(A005843(n))/A014963(A097102(n+1))`
-/

namespace A166085.P10350319882029306715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166040 (A005843 n).toNat : ℚ) / (A014963 (A097102 (n + 1)).toNat : ℚ)

end

end A166085.P10350319882029306715

/-!
# A166086: Number of times Sum_{i=1..u} J(i,4n+3) obtains value zero when u ranges from 1 to (4n+3). Here J(i,k) is the Jacobi symbol.

The programs for A166086, there is no canonical definition to state claims against.
-/

/-! ## A166086.P9678747764082979368

`A166040(Δ[n²])`
-/

namespace A166086.P9678747764082979368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166086.P9678747764082979368

/-! ## A166086.P18402469961875166733

`((-1)^n)²*A166040(2*n+1)`
-/

namespace A166086.P18402469961875166733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A166040 (2 * n + 1)

end

end A166086.P18402469961875166733

/-! ## A166086.P7140640138498719466

`A000027(A166040(2*n+1))`
-/

namespace A166086.P7140640138498719466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A166040 (2 * n + 1)).toNat

end

end A166086.P7140640138498719466

/-! ## A166086.P11624870795796605815

`A318516(2*A166040(2*n+1))`
-/

namespace A166086.P11624870795796605815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (2 * A166040 (2 * n + 1)).toNat

end

end A166086.P11624870795796605815

/-! ## A166086.P2428913214451394282

`A166040(2*n+1)+char[A115172(n+1)]`
-/

namespace A166086.P2428913214451394282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115172 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A166086.P2428913214451394282

/-! ## A166086.P1232752191821370329

`A166040(2*n+1)+2*n-A005843(n)`
-/

namespace A166086.P1232752191821370329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n + 1) + ((2 * n : ℤ) - A005843 n)

end

end A166086.P1232752191821370329

/-! ## A166086.P7007816159036608848

`A166040(A005408(n))%A165603(n)`
-/

namespace A166086.P7007816159036608848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166040 (A005408 n).toNat) (A165603 n)

end

end A166086.P7007816159036608848

/-! ## A166086.P16676679186089322892

`gcd(A000038(n), A166040(A005408(n)))`
-/

namespace A166086.P16676679186089322892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A166040 (A005408 n).toNat)

end

end A166086.P16676679186089322892

/-! ## A166086.P15153874513541398528

`or(A000007(n), A166040(A005408(n)))`
-/

namespace A166086.P15153874513541398528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A166040 (A005408 n).toNat)

end

end A166086.P15153874513541398528

/-! ## A166086.P3042201004172602785

`A166040(A005408(n))+A000038(n+1)`
-/

namespace A166086.P3042201004172602785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A005408 n).toNat + A000038 (n + 1)

end

end A166086.P3042201004172602785

/-! ## A166086.P15594328484200408076

`A166040(n+1+n)+A165601(A165602(n))`
-/

namespace A166086.P15594328484200408076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (n + 1 + n) + A165601 (A165602 n).toNat

end

end A166086.P15594328484200408076

/-! ## A166086.P5996129702061621453

`A166040(A005408(n))-A000007(n)*A166040(n)`
-/

namespace A166086.P5996129702061621453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A005408 n).toNat - A000007 n * A166040 n

end

end A166086.P5996129702061621453

/-! ## A166086.P9732733519890634656

`A166040(A005408(n))+A000007(n+1)`
-/

namespace A166086.P9732733519890634656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A005408 n).toNat + A000007 (n + 1)

end

end A166086.P9732733519890634656

/-! ## A166086.P15209941673033500730

`A166040(2*n+1)+A106404(2*n+1)`
-/

namespace A166086.P15209941673033500730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n + 1) + A106404 (2 * n + 1)

end

end A166086.P15209941673033500730

/-! ## A166086.P613333646228328490

`A166040(2*n+1)*A284620(2*(n+1))`
-/

namespace A166086.P613333646228328490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n + 1) * A284620 (2 * (n + 1))

end

end A166086.P613333646228328490

/-! ## A166086.P18064172731412072205

`A166040(n+1+n)+A166040(A046092(n))`
-/

namespace A166086.P18064172731412072205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (n + 1 + n) + A166040 (A046092 n).toNat

end

end A166086.P18064172731412072205

/-! ## A166086.P14390222708479267947

`gcd(A166040(2*n+1)*A202924(2*n+1), A166040(2*n+1))`
-/

namespace A166086.P14390222708479267947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 (2 * n + 1) * A202924 (2 * n + 1)) (A166040 (2 * n + 1))

end

end A166086.P14390222708479267947

/-!
# A166087: a(n) = Position of the first occurrence of n in A166040. -1 if it does not occur there.

The programs for A166087, there is no canonical definition to state claims against.
-/

/-! ## A166087.P15242100240951388759

`floor(A166089(n)/2)`
-/

namespace A166087.P15242100240951388759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166089 n : ℚ) / 2⌋

end

end A166087.P15242100240951388759

/-! ## A166087.P13433690426281193696

`(A166089(or(n, char[1]))-1)/2`
-/

namespace A166087.P13433690426281193696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166089 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) - 1 : ℚ) / 2

end

end A166087.P13433690426281193696

/-! ## A166087.P14900764546898602382

`(A166089(2*n-n)-1)/2`
-/

namespace A166087.P14900764546898602382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166089 (2 * n - n) - 1 : ℚ) / 2

end

end A166087.P14900764546898602382

/-! ## A166087.P14459452256397796931

`A004524(A166089(n))`
-/

namespace A166087.P14459452256397796931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A166089 n).toNat

end

end A166087.P14459452256397796931

/-! ## A166087.P8095367169091443356

`A279119(A166089(n)+1)`
-/

namespace A166087.P8095367169091443356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A166089 n + 1).toNat

end

end A166087.P8095367169091443356

/-! ## A166087.P4226968544850214515

`A001281(A166089(n)-1)`
-/

namespace A166087.P4226968544850214515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A166089 n - 1).toNat

end

end A166087.P4226968544850214515

/-! ## A166087.P6026695375794055385

`A004525(A166089(n)-1)`
-/

namespace A166087.P6026695375794055385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A166089 n - 1).toNat

end

end A166087.P6026695375794055385

/-! ## A166087.P14565219534666795147

`A279119(2*A166089(n))/2`
-/

namespace A166087.P14565219534666795147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279119 (2 * A166089 n).toNat : ℚ) / 2

end

end A166087.P14565219534666795147

/-! ## A166087.P11249063731896039845

`xor(1, A166089(n))/A020639(lcm(2, n+1))`
-/

namespace A166087.P11249063731896039845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A166089 n) : ℚ) / (A020639 (Nat.lcm 2 (n + 1)) : ℚ)

end

end A166087.P11249063731896039845

/-! ## A166087.P13184572075978087446

`xor(1, A166089(n))/A020639(∑[12*(n+2)])`
-/

namespace A166087.P13184572075978087446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A166089 n) : ℚ) / (A020639 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A166087.P13184572075978087446

/-!
# A166088: Odd integers (that is, of the form 2n+1) for which Sum_{i=1..u} J(i,2n+1) obtains value zero exactly 8 times, when u ranges from 1 to (2n+1). Here J(i,k) is the Jacobi symbol.

The programs for A166088, there is no canonical definition to state claims against.
-/

/-! ## A166088.P1679690286499708865

`A005408(eq[8, A166040(n)])`
-/

namespace A166088.P1679690286499708865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166088.P1679690286499708865

/-! ## A166088.P9267340544490574654

`A016813(eq[8, A166085(n)])`
-/

namespace A166088.P9267340544490574654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166088.P9267340544490574654

/-! ## A166088.P8503717044330174185

`eq[8, A166040(A057979(n))]`
-/

namespace A166088.P8503717044330174185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166088.P8503717044330174185

/-! ## A166088.P7492980679975440951

`A144396(eq[8, A166040(n)])`
-/

namespace A166088.P7492980679975440951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166088.P7492980679975440951

/-!
# A166089: a(n) = First odd number 2k+1, for which Sum_{i=1..u} J(i,2k+1) obtains value zero exactly n times when u ranges from 1 to (2k+1). Here J(i,k) is the Jacobi symbol.

The programs for A166089, there is no canonical definition to state claims against.
-/

/-! ## A166089.P3685410123843207800

`2*A166087(n)+1`
-/

namespace A166089.P3685410123843207800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166087 n + 1

end

end A166089.P3685410123843207800

/-! ## A166089.P5624734102758167696

`or(1, 2*A166087(and(n, or(2, n))))`
-/

namespace A166089.P5624734102758167696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A166087 (Nat.land n (Nat.lor 2 n)))

end

end A166089.P5624734102758167696

/-! ## A166089.P6263822905214014661

`A005408(A166087(n))`
-/

namespace A166089.P6263822905214014661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A166087 n).toNat

end

end A166089.P6263822905214014661

/-! ## A166089.P543232549083102859

`A004273(A166087(n)+1)`
-/

namespace A166089.P543232549083102859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A166087 n + 1).toNat

end

end A166089.P543232549083102859

/-! ## A166089.P6735489238046383924

`A004442(2*A166087(n))`
-/

namespace A166089.P6735489238046383924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A166087 n).toNat

end

end A166089.P6735489238046383924

/-! ## A166089.P8195232689135071722

`A133310(3*A166087(n))`
-/

namespace A166089.P8195232689135071722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (3 * A166087 n).toNat

end

end A166089.P8195232689135071722

/-! ## A166089.P13081323970239842800

`A005843(A166087(n)+1)-1`
-/

namespace A166089.P13081323970239842800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A166087 n + 1).toNat - 1

end

end A166089.P13081323970239842800

/-! ## A166089.P8457892075887584472

`or(2*A166087(n), A007318(∑[n]))`
-/

namespace A166089.P8457892075887584472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A166087 n) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A166089.P8457892075887584472

/-! ## A166089.P11231136936497814186

`∑{d}[xor(1, 2*A166087(n)), A000010(#)]`
-/

namespace A166089.P11231136936497814186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A166087 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A166089.P11231136936497814186

/-! ## A166089.P12073789161990520028

`xor(1, 2*A166087(n))-A000045(C(n, 64))`
-/

namespace A166089.P12073789161990520028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A166087 n) - A000045 (Nat.choose n 64)

end

end A166089.P12073789161990520028

/-!
# A166090: a(n) = A016813(A166093(n)).

The programs for A166090, there is no canonical definition to state claims against.
-/

/-! ## A166090.P17714701839602451163

`A016813(A166093(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166090.P17714701839602451163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A166093 n).toNat

end

end A166090.P17714701839602451163

/-! ## A166090.P3382992170649391441

`A005408(2*A166093(n))`
-/

namespace A166090.P3382992170649391441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A166093 n).toNat

end

end A166090.P3382992170649391441

/-! ## A166090.P5703720348971695991

`A004442(4*A166093(n))`
-/

namespace A166090.P5703720348971695991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * A166093 n).toNat

end

end A166090.P5703720348971695991

/-! ## A166090.P4017600602492564989

`A008619(8*A166093(n))`
-/

namespace A166090.P4017600602492564989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * A166093 n).toNat

end

end A166090.P4017600602492564989

/-! ## A166090.P9120841312501616292

`∑{d}[xor(1, 4*A166093(n)), A000010(#)]`
-/

namespace A166090.P9120841312501616292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * A166093 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A166090.P9120841312501616292

/-! ## A166090.P6508752413554841767

`A007318(C(2, n))*xor(1, 4*A166093(n))`
-/

namespace A166090.P6508752413554841767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * Int.xor 1 (4 * A166093 n)

end

end A166090.P6508752413554841767

/-! ## A166090.P4453083625783720850

`xor(A000032(C(n, 64))-1, 4*A166093(n))`
-/

namespace A166090.P4453083625783720850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000032 (Nat.choose n 64) - 1) (4 * A166093 n)

end

end A166090.P4453083625783720850

/-! ## A166090.P13705997831861772779

`xor(1, 4*A166093(n))%Δ[A000041(4*n)]`
-/

namespace A166090.P13705997831861772779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (4 * A166093 n)) (f1 (n + 1) - f1 n)

end

end A166090.P13705997831861772779

/-! ## A166090.P85610447465666032

`xor(1, 4*A166093(n))*A000005(C(n, n²)!)`
-/

namespace A166090.P85610447465666032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * A166093 n) * A000005 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A166090.P85610447465666032

/-!
# A166091: Square array A(row>=0, col>=0) = (A166092(row,col)-3)/4, listed antidiagonally as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A166091, there is no canonical definition to state claims against.
-/

/-! ## A166091.P17228632399067428389

`floor(A166092(n)/4)`
-/

namespace A166091.P17228632399067428389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166092 n : ℚ) / 4⌋

end

end A166091.P17228632399067428389

/-! ## A166091.P915470170267931890

`A103391(A166092(n))-A141310(2*n+1)`
-/

namespace A166091.P915470170267931890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A166092 n).toNat - A141310 (2 * n + 1)

end

end A166091.P915470170267931890

/-! ## A166091.P5755206723044829025

`A249122((A166092(n)-1)/2)`
-/

namespace A166091.P5755206723044829025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (SequenceMachineLib.roundAway ((A166092 n - 1 : ℚ) / 2)).toNat

end

end A166091.P5755206723044829025

/-! ## A166091.P12769005404780851199

`A249122(A249122(A166092(n)))`
-/

namespace A166091.P12769005404780851199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A249122 (A166092 n).toNat).toNat

end

end A166091.P12769005404780851199

/-! ## A166091.P3634433470347451440

`A038572(A038572(A166092(n)-3))`
-/

namespace A166091.P3634433470347451440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038572 (A166092 n - 3).toNat).toNat

end

end A166091.P3634433470347451440

/-! ## A166091.P4365749348845613187

`A038572(A038572(xor(3, A166092(n))))`
-/

namespace A166091.P4365749348845613187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038572 (Int.xor 3 (A166092 n)).toNat).toNat

end

end A166091.P4365749348845613187

/-! ## A166091.P13014190351653856302

`A174571(A166092(n)-3)`
-/

namespace A166091.P13014190351653856302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A166092 n - 3).toNat

end

end A166091.P13014190351653856302

/-! ## A166091.P8457289732190099356

`A174571(xor(3, A166092(n)))`
-/

namespace A166091.P8457289732190099356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (Int.xor 3 (A166092 n)).toNat

end

end A166091.P8457289732190099356

/-! ## A166091.P11454905761665266017

`A175126(A175126(A166092(n)-3))`
-/

namespace A166091.P11454905761665266017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A175126 (A166092 n - 3).toNat).toNat

end

end A166091.P11454905761665266017

/-! ## A166091.P17207144929506368178

`A002265(A166092(n))`
-/

namespace A166091.P17207144929506368178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166092 n).toNat

end

end A166091.P17207144929506368178

/-! ## A166091.P12789928367546473995

`A025480(A166092(n)-2)`
-/

namespace A166091.P12789928367546473995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A166092 n - 2).toNat

end

end A166091.P12789928367546473995

/-! ## A166091.P15017784562946214554

`A025480(xor(2, A166092(n)))`
-/

namespace A166091.P15017784562946214554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 2 (A166092 n)).toNat

end

end A166091.P15017784562946214554

/-!
# A166092: Integers (all of the form 4k+3) organized into an array based on the number of times Sum_{i=1..u} J(i,4k+3) obtains value zero when u ranges from 1 to (4k+3), where J(i,k) is the Jacobi symbol.

The programs for A166092, there is no canonical definition to state claims against.
-/

/-! ## A166092.P9991231310888107992

`4*A166091(n)+3`
-/

namespace A166092.P9991231310888107992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166091 n + 3

end

end A166092.P9991231310888107992

/-! ## A166092.P2181577424356395835

`A016825(A166091(n))+1`
-/

namespace A166092.P2181577424356395835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A166091 n).toNat + 1

end

end A166092.P2181577424356395835

/-! ## A166092.P11639177903498893855

`A004767(A166091(n))`
-/

namespace A166092.P11639177903498893855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A166091 n).toNat

end

end A166092.P11639177903498893855

/-! ## A166092.P10055429265737982114

`A017137(A166091(n))/A020639(A016825(n))`
-/

namespace A166092.P10055429265737982114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017137 (A166091 n).toNat : ℚ) / (A020639 (A016825 n).toNat : ℚ)

end

end A166092.P10055429265737982114

/-! ## A166092.P7167267269122684772

`A017137(A166091(n))/A020639(A017137(n))`
-/

namespace A166092.P7167267269122684772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017137 (A166091 n).toNat : ℚ) / (A020639 (A017137 n).toNat : ℚ)

end

end A166092.P7167267269122684772

/-!
# A166093: a(n) gives the least i, for which A166085(i) = 2n.

The programs for A166093, there is no canonical definition to state claims against.
-/

/-! ## A166093.P13399677052999693857

`floor(A166090(n)/4)`
-/

namespace A166093.P13399677052999693857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166090 n : ℚ) / 4⌋

end

end A166093.P13399677052999693857

/-! ## A166093.P3951538495308383379

`round(A166090(2*n-n)/4)`
-/

namespace A166093.P3951538495308383379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166090 (2 * n - n) : ℚ) / 4)

end

end A166093.P3951538495308383379

/-! ## A166093.P11997761534984345771

`A002265(A166090(n))`
-/

namespace A166093.P11997761534984345771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166090 n).toNat

end

end A166093.P11997761534984345771

/-! ## A166093.P12827558055518216207

`A174571(A166090(n)-1)`
-/

namespace A166093.P12827558055518216207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A166090 n - 1).toNat

end

end A166093.P12827558055518216207

/-! ## A166093.P3092470586764139309

`A360692(A166090(n)+3)`
-/

namespace A166093.P3092470586764139309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A166090 n + 3).toNat

end

end A166093.P3092470586764139309

/-! ## A166093.P5112218112612585684

`round(A166090(n)/4)/A007318(∑[n])`
-/

namespace A166093.P5112218112612585684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A166090 n : ℚ) / 4) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A166093.P5112218112612585684

/-! ## A166093.P10008625364149419604

`round(A166090(n)/4)%∑[A000041(n)]`
-/

namespace A166093.P10008625364149419604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A166090 n : ℚ) / 4)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166093.P10008625364149419604

/-! ## A166093.P13994100732332892150

`or(round(A166090(n)/4), char[A000040(n+2)])`
-/

namespace A166093.P13994100732332892150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A166090 n : ℚ) / 4)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A166093.P13994100732332892150

/-! ## A166093.P1144079212818707456

`(A166090(n)-1)/A020639(2*(n+1))²`
-/

namespace A166093.P1144079212818707456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166090 n - 1 : ℚ) / (A020639 (2 * (n + 1)) ^ 2 : ℚ)

end

end A166093.P1144079212818707456

/-! ## A166093.P2262882057986254618

`round(A166090(n)/4)*A014963(4*n+2)`
-/

namespace A166093.P2262882057986254618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166090 n : ℚ) / 4) * A014963 (4 * n + 2)

end

end A166093.P2262882057986254618

/-!
# A166094: Leftmost column of A166091.

The programs for A166094, there is no canonical definition to state claims against.
-/

/-! ## A166094.P18009900845759383824

`floor(A166096(n)/4)`
-/

namespace A166094.P18009900845759383824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166096 n : ℚ) / 4⌋

end

end A166094.P18009900845759383824

/-! ## A166094.P131137509982421551

`A166091(∑[n]+n)`
-/

namespace A166094.P131137509982421551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166094.P131137509982421551

/-! ## A166094.P12699461239730227657

`floor(A166092(∑[n]+n)/4)`
-/

namespace A166094.P12699461239730227657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166092 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 4⌋

end

end A166094.P12699461239730227657

/-! ## A166094.P11059178468170332969

`A002265(A166096(n))`
-/

namespace A166094.P11059178468170332969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166096 n).toNat

end

end A166094.P11059178468170332969

/-! ## A166094.P15438712922531399407

`A360692(A166096(n)+1)`
-/

namespace A166094.P15438712922531399407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A166096 n + 1).toNat

end

end A166094.P15438712922531399407

/-! ## A166094.P17038797687843940369

`A008624(A166096(n)-2)`
-/

namespace A166094.P17038797687843940369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A166096 n - 2).toNat

end

end A166094.P17038797687843940369

/-! ## A166094.P8265441782330383212

`A025480(A166096(n)-2)`
-/

namespace A166094.P8265441782330383212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A166096 n - 2).toNat

end

end A166094.P8265441782330383212

/-! ## A166094.P9766487690166662658

`A174571(A166096(n)-3)`
-/

namespace A166094.P9766487690166662658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A166096 n - 3).toNat

end

end A166094.P9766487690166662658

/-! ## A166094.P1393969432231663308

`A002265(A166092(∑[n]+n))`
-/

namespace A166094.P1393969432231663308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166092 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A166094.P1393969432231663308

/-! ## A166094.P3340764932119330381

`(A166096(n)-3)/A020639(2*(n+1))²`
-/

namespace A166094.P3340764932119330381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166096 n - 3 : ℚ) / (A020639 (2 * (n + 1)) ^ 2 : ℚ)

end

end A166094.P3340764932119330381

/-!
# A166095: Bisection of A166089.

The programs for A166095, there is no canonical definition to state claims against.
-/

/-! ## A166095.P15974513351219924597

`2*A166087(2*n)+1`
-/

namespace A166095.P15974513351219924597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166087 (2 * n) + 1

end

end A166095.P15974513351219924597

/-! ## A166095.P8013999493249279696

`xor(1, 2*A166087(Δ[n²]-1))`
-/

namespace A166095.P8013999493249279696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A166087 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat)

end

end A166095.P8013999493249279696

/-! ## A166095.P17589970408637577792

`A005408(A166087(2*n))`
-/

namespace A166095.P17589970408637577792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A166087 (2 * n)).toNat

end

end A166095.P17589970408637577792

/-! ## A166095.P16228186753788249096

`A004273(A166087(2*n)+1)`
-/

namespace A166095.P16228186753788249096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A166087 (2 * n) + 1).toNat

end

end A166095.P16228186753788249096

/-! ## A166095.P2010304514813053847

`A004442(2*A166087(2*n))`
-/

namespace A166095.P2010304514813053847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A166087 (2 * n)).toNat

end

end A166095.P2010304514813053847

/-!
# A166096: Bisection of A166089. Leftmost column of A166092.

The programs for A166096, there is no canonical definition to state claims against.
-/

/-! ## A166096.P9096393440581409849

`A166092(∑[n]+n)`
-/

namespace A166096.P9096393440581409849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A166096.P9096393440581409849

/-! ## A166096.P14794438351994698782

`4*A166091(∑[n]+n)+3`
-/

namespace A166096.P14794438351994698782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166091 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 3

end

end A166096.P14794438351994698782

/-! ## A166096.P11298447809015827772

`round(sqrt(A166092(C(n+1, 2)+n)²+1))`
-/

namespace A166096.P11298447809015827772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A166092 (Nat.choose (n + 1) 2 + n) ^ 2 + 1 : ℝ))

end

end A166096.P11298447809015827772

/-! ## A166096.P6066852596617733088

`or(1, A166092(A000096(n)))`
-/

namespace A166096.P6066852596617733088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166092 (A000096 n).toNat)

end

end A166096.P6066852596617733088

/-! ## A166096.P13301636801005598495

`A004767(A166091(∑[n]+n))`
-/

namespace A166096.P13301636801005598495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A166091 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A166096.P13301636801005598495

/-! ## A166096.P5233998459617203754

`A166092(A000096(n))%A016827(n)`
-/

namespace A166096.P5233998459617203754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166092 (A000096 n).toNat) (A016827 n)

end

end A166096.P5233998459617203754

/-! ## A166096.P7533802482488861359

`∑{d}[A166092(A000096(n)), A000010(#)]`
-/

namespace A166096.P7533802482488861359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A166096.P7533802482488861359

/-! ## A166096.P4054115790124672162

`char[A001057(n)]*A166092(A000096(n))`
-/

namespace A166096.P4054115790124672162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A166092 (A000096 n).toNat

end

end A166096.P4054115790124672162

/-! ## A166096.P5568023127863129208

`char[A004442(n)]*A166092(A000096(n))`
-/

namespace A166096.P5568023127863129208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A166092 (A000096 n).toNat

end

end A166096.P5568023127863129208

/-! ## A166096.P17933818135133555300

`A166092(A000096(n))+A000007(n+1)`
-/

namespace A166096.P17933818135133555300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (A000096 n).toNat + A000007 (n + 1)

end

end A166096.P17933818135133555300

/-! ## A166096.P1164536331246723683

`A166092(A000096(n))+A000038(n+1)`
-/

namespace A166096.P1164536331246723683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (A000096 n).toNat + A000038 (n + 1)

end

end A166096.P1164536331246723683

/-! ## A166096.P7101830328390918175

`A166092(A000096(n))+A000035(2*n)`
-/

namespace A166096.P7101830328390918175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (A000096 n).toNat + A000035 (2 * n)

end

end A166096.P7101830328390918175

/-! ## A166096.P741006403661847348

`A166092(A000096(n))+A010673(2*n)`
-/

namespace A166096.P741006403661847348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (A000096 n).toNat + A010673 (2 * n)

end

end A166096.P741006403661847348

/-! ## A166096.P9249036693647465569

`A000034(2*n)*A166092(A000096(n))`
-/

namespace A166096.P9249036693647465569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A166092 (A000096 n).toNat

end

end A166096.P9249036693647465569

/-! ## A166096.P17173324103233499788

`A185237(C(3, n))+A166092(A000096(n))`
-/

namespace A166096.P17173324103233499788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 (Nat.choose 3 n) + A166092 (A000096 n).toNat

end

end A166096.P17173324103233499788

/-! ## A166096.P16027010595383021667

`A007318(C(2, n))*A166092(A000096(n))`
-/

namespace A166096.P16027010595383021667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A166092 (A000096 n).toNat

end

end A166096.P16027010595383021667

/-! ## A166096.P9572533848417895206

`A107249(C(3, n))*A166092(A000096(n))`
-/

namespace A166096.P9572533848417895206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107249 (Nat.choose 3 n) * A166092 (A000096 n).toNat

end

end A166096.P9572533848417895206

/-! ## A166096.P9676514382549938726

`A000108(C(n, n²))*A166092(A000096(n))`
-/

namespace A166096.P9676514382549938726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A166092 (A000096 n).toNat

end

end A166096.P9676514382549938726

/-! ## A166096.P9710935873381385187

`A166092(A000096(n))+A008683(4*(n+1))`
-/

namespace A166096.P9710935873381385187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (A000096 n).toNat + A008683 (4 * (n + 1))

end

end A166096.P9710935873381385187

/-!
# A166097: Positions where A166040 obtains distinct new values.

The programs for A166097, there is no canonical definition to state claims against.
-/

/-! ## A166097.P7236969532583146748

`A166087(A166098(n))`
-/

namespace A166097.P7236969532583146748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166087 (A166098 n).toNat

end

end A166097.P7236969532583146748

/-! ## A166097.P17696345936516485549

`record[A166087(A166040(n))]`
-/

namespace A166097.P17696345936516485549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166087 (A166040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166097.P17696345936516485549

/-! ## A166097.P5059176060284127510

`eq[A005408(n), A166089(A166040(n))]`
-/

namespace A166097.P5059176060284127510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166089 (A166040 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166097.P5059176060284127510

/-! ## A166097.P198538158206150639

`lt[A005843(n), A166089(A166040(n))]`
-/

namespace A166097.P198538158206150639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166089 (A166040 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166097.P198538158206150639

/-! ## A166097.P9741475887065025246

`eq[n, A166087(A166040(n))%A000040(n+2)]`
-/

namespace A166097.P9741475887065025246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166087 (A166040 n).toNat) (A000040 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166097.P9741475887065025246

/-!
# A166098: Distinct values of A166040 in the order of appearance.

The programs for A166098, there is no canonical definition to state claims against.
-/

/-! ## A166098.P4712364023468190129

`A166040(A166097(n))`
-/

namespace A166098.P4712364023468190129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A166097 n).toNat

end

end A166098.P4712364023468190129

/-! ## A166098.P16980722208638207349

`A166040(record[A166087(A166040(n))])`
-/

namespace A166098.P16980722208638207349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166087 (A166040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166098.P16980722208638207349

/-! ## A166098.P8518286985290508890

`A166040(eq[n, A166087(A166040(n))])`
-/

namespace A166098.P8518286985290508890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166087 (A166040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166098.P8518286985290508890

