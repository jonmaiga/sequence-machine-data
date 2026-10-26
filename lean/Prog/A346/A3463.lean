import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A346300: Positions of words in A076478 in which #0's > #1's.

The programs for A346300, the canonical program `A346300.P14645886359202068424` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346300 has offset 1).

The definition of A346300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346300.P14645886359202068424

`lt[a(floor((n-1)/2))+(-1)^n, 1]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346300

/-- `lt[a(floor((n-1)/2))+(-1)^n, 1]` -/
def P14645886359202068424.Spec : Prop :=
  ∀ n, (P14645886359202068424.a n : ℤ) = A346300 (n + 1)

theorem P14645886359202068424.correct : P14645886359202068424.Spec := by
  intro n
  simp only [A346300, Nat.add_sub_cancel]

end A346300

/-! ## A346300.P5444488475500327352

`lt[a(floor(n/2))-(-1)^n, 0]-1` with `a(0)=0, a(1)=0`
-/

namespace A346300.P5444488475500327352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A346300.P5444488475500327352

namespace A346300

/-- `lt[a(floor(n/2))-(-1)^n, 0]-1` -/
def P5444488475500327352.Spec : Prop :=
  ∀ n, P5444488475500327352.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P1123067638466616928

`A072602(n+1)-1`
-/

namespace A346300.P1123067638466616928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1) - 1

end

end A346300.P1123067638466616928

namespace A346300

/-- `A072602(n+1)-1` -/
def P1123067638466616928.Spec : Prop :=
  ∀ n, P1123067638466616928.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P1312985486368398129

`lt[C(A001316(n), 2), n]-1`
-/

namespace A346300.P1312985486368398129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001316 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A346300.P1312985486368398129

namespace A346300

/-- `lt[C(A001316(n), 2), n]-1` -/
def P1312985486368398129.Spec : Prop :=
  ∀ n, P1312985486368398129.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P16794929706320248242

`∪[A031443(n+1), A072603(n+1)]-1`
-/

namespace A346300.P16794929706320248242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A346300.P16794929706320248242

namespace A346300

/-- `∪[A031443(n+1), A072603(n+1)]-1` -/
def P16794929706320248242.Spec : Prop :=
  ∀ n, P16794929706320248242.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P14254192465359509006

`lt[A016825(n+1), A267584(n+1)²]`
-/

namespace A346300.P14254192465359509006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346300.P14254192465359509006

namespace A346300

/-- `lt[A016825(n+1), A267584(n+1)²]` -/
def P14254192465359509006.Spec : Prop :=
  ∀ n, (P14254192465359509006.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P10663646426060251904

`lt[A145037(n+1), 1]`
-/

namespace A346300.P10663646426060251904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A346300.P10663646426060251904

namespace A346300

/-- `lt[A145037(n+1), 1]` -/
def P10663646426060251904.Spec : Prop :=
  ∀ n, (P10663646426060251904.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P15433542309971996439

`lt[A296062(n), A296062(n+1)]`
-/

namespace A346300.P15433542309971996439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346300.P15433542309971996439

namespace A346300

/-- `lt[A296062(n), A296062(n+1)]` -/
def P15433542309971996439.Spec : Prop :=
  ∀ n, (P15433542309971996439.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P635201173673301031

`A076723(A308551(2*n+3))+A072602(n+1)`
-/

namespace A346300.P635201173673301031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076723 (A308551 (2 * n + 3)).toNat + A072602 (n + 1)

end

end A346300.P635201173673301031

namespace A346300

/-- `A076723(A308551(2*n+3))+A072602(n+1)` -/
def P635201173673301031.Spec : Prop :=
  ∀ n, P635201173673301031.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P34036964091325907

`eq[0, A115516(n+1)]`
-/

namespace A346300.P34036964091325907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346300.P34036964091325907

namespace A346300

/-- `eq[0, A115516(n+1)]` -/
def P34036964091325907.Spec : Prop :=
  ∀ n, (P34036964091325907.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P9330325386302455208

`lt[1, A265917(n+1)]`
-/

namespace A346300.P9330325386302455208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346300.P9330325386302455208

namespace A346300

/-- `lt[1, A265917(n+1)]` -/
def P9330325386302455208.Spec : Prop :=
  ∀ n, (P9330325386302455208.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P7226651220932067175

`lt[1, A037861(n+1)+2]`
-/

namespace A346300.P7226651220932067175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346300.P7226651220932067175

namespace A346300

/-- `lt[1, A037861(n+1)+2]` -/
def P7226651220932067175.Spec : Prop :=
  ∀ n, (P7226651220932067175.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P17765969491744143133

`lt[4^A000120(n), 2*n+1]-1`
-/

namespace A346300.P17765969491744143133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n : ℤ) - 1

end

end A346300.P17765969491744143133

namespace A346300

/-- `lt[4^A000120(n), 2*n+1]-1` -/
def P17765969491744143133.Spec : Prop :=
  ∀ n, P17765969491744143133.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P12522457034661039451

`eq[A000038(n), A115516(n)]-1`
-/

namespace A346300.P12522457034661039451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A346300.P12522457034661039451

namespace A346300

/-- `eq[A000038(n), A115516(n)]-1` -/
def P12522457034661039451.Spec : Prop :=
  ∀ n, P12522457034661039451.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P5847729993118690849

`eq[A115516(n), A127802(n)]-1`
-/

namespace A346300.P5847729993118690849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A346300.P5847729993118690849

namespace A346300

/-- `eq[A115516(n), A127802(n)]-1` -/
def P5847729993118690849.Spec : Prop :=
  ∀ n, P5847729993118690849.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P15480845700595463714

`lt[A001316(n)², A005408(n)]-1`
-/

namespace A346300.P15480845700595463714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A346300.P15480845700595463714

namespace A346300

/-- `lt[A001316(n)², A005408(n)]-1` -/
def P15480845700595463714.Spec : Prop :=
  ∀ n, P15480845700595463714.a n = A346300 (n + 1)

end A346300

/-! ## A346300.P6736507405679395546

`lt[log2(A048896(n)), A023416(n+1)]`
-/

namespace A346300.P6736507405679395546
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A048896 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A346300.P6736507405679395546

namespace A346300

/-- `lt[log2(A048896(n)), A023416(n+1)]` -/
def P6736507405679395546.Spec : Prop :=
  ∀ n, (P6736507405679395546.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P6731336112839671986

`eq[A000120(n+1), A152723(n+1)]`
-/

namespace A346300.P6731336112839671986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346300.P6731336112839671986

namespace A346300

/-- `eq[A000120(n+1), A152723(n+1)]` -/
def P6731336112839671986.Spec : Prop :=
  ∀ n, (P6731336112839671986.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P13285625957051435402

`eq[A023416(n+1), A152724(n+1)]`
-/

namespace A346300.P13285625957051435402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346300.P13285625957051435402

namespace A346300

/-- `eq[A023416(n+1), A152724(n+1)]` -/
def P13285625957051435402.Spec : Prop :=
  ∀ n, (P13285625957051435402.a n : ℤ) = A346300 (n + 1)

end A346300

/-! ## A346300.P3422918812920090232

`lt[A001316(n+1)², A005408(n+1)]`
-/

namespace A346300.P3422918812920090232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346300.P3422918812920090232

namespace A346300

/-- `lt[A001316(n+1)², A005408(n+1)]` -/
def P3422918812920090232.Spec : Prop :=
  ∀ n, (P3422918812920090232.a n : ℤ) = A346300 (n + 1)

end A346300

/-!
# A346301: Positions of words in A076478 such that first digit = last digit.

The programs for A346301, the canonical program `A346301.P9845907532047520644` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346301 has offset 1).

The definition of A346301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346301.P9845907532047520644

`2*n+1-floor(xor(n, 2*n)/(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346301

/-- `2*n+1-floor(xor(n, 2*n)/(n+1))` -/
def P9845907532047520644.Spec : Prop :=
  ∀ n, P9845907532047520644.a n = A346301 (n + 1)

theorem P9845907532047520644.correct : P9845907532047520644.Spec := by
  intro n
  simp only [A346301, Nat.add_sub_cancel]

end A346301

/-! ## A346301.P16280497285376023000

`ceil(2*n+1-xor(n, 2*n)/(n+1))`
-/

namespace A346301.P16280497285376023000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) - (Nat.xor n (2 * n) : ℚ) / (n + 1 : ℚ)⌉

end

end A346301.P16280497285376023000

namespace A346301

/-- `ceil(2*n+1-xor(n, 2*n)/(n+1))` -/
def P16280497285376023000.Spec : Prop :=
  ∀ n, P16280497285376023000.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P17638299929260068104

`n-1+a(floor(n/2))+a(n%2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A346301.P17638299929260068104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (n : ℤ) - 1 + (a ⌊(n : ℚ) / 2⌋.toNat + a (n % 2))

end

end A346301.P17638299929260068104

namespace A346301

/-- `n-1+a(floor(n/2))+a(n%2)` -/
def P17638299929260068104.Spec : Prop :=
  ∀ n, P17638299929260068104.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P13512632143814747358

`a(floor(n/2))+(1-(-1)^n)/2+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A346301.P13512632143814747358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2 + (n : ℚ)

end

end A346301.P13512632143814747358

namespace A346301

/-- `a(floor(n/2))+(1-(-1)^n)/2+n` -/
def P13512632143814747358.Spec : Prop :=
  ∀ n, P13512632143814747358.a n = (A346301 (n + 1) : ℚ)

end A346301

/-! ## A346301.P10095793209311301634

`A171781(n+1)-1`
-/

namespace A346301.P10095793209311301634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171781 (n + 1) - 1

end

end A346301.P10095793209311301634

namespace A346301

/-- `A171781(n+1)-1` -/
def P10095793209311301634.Spec : Prop :=
  ∀ n, P10095793209311301634.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P8097349274969015991

`comp[A346302(n+1)-1]+1`
-/

namespace A346301.P8097349274969015991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346302 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A346301.P8097349274969015991

namespace A346301

/-- `comp[A346302(n+1)-1]+1` -/
def P8097349274969015991.Spec : Prop :=
  ∀ n, (P8097349274969015991.a n : ℤ) = A346301 (n + 1)

end A346301

/-! ## A346301.P14073829330246784738

`abs(and(1, A145342(n+1))-2*n)`
-/

namespace A346301.P14073829330246784738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A145342 (n + 1)) - (2 * n : ℤ)|

end

end A346301.P14073829330246784738

namespace A346301

/-- `abs(and(1, A145342(n+1))-2*n)` -/
def P14073829330246784738.Spec : Prop :=
  ∀ n, P14073829330246784738.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P294908927773706028

`comp[Δ[A294456(n+2)]+2*n+1]+1`
-/

namespace A346301.P294908927773706028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A346301.P294908927773706028

namespace A346301

/-- `comp[Δ[A294456(n+2)]+2*n+1]+1` -/
def P294908927773706028.Spec : Prop :=
  ∀ n, (P294908927773706028.a n : ℤ) = A346301 (n + 1)

end A346301

/-! ## A346301.P17552682670438309566

`∪[A080565(n+1), A171757(n+1)]-1`
-/

namespace A346301.P17552682670438309566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A346301.P17552682670438309566

namespace A346301

/-- `∪[A080565(n+1), A171757(n+1)]-1` -/
def P17552682670438309566.Spec : Prop :=
  ∀ n, P17552682670438309566.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P2779391083817712413

`lt[val(abs(A049773(n+1)-n)+1, 2), 1]`
-/

namespace A346301.P2779391083817712413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|A049773 (n + 1) - (n : ℤ)| + 1).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346301.P2779391083817712413

namespace A346301

/-- `lt[val(abs(A049773(n+1)-n)+1, 2), 1]` -/
def P2779391083817712413.Spec : Prop :=
  ∀ n, (P2779391083817712413.a n : ℤ) = A346301 (n + 1)

end A346301

/-! ## A346301.P11943640399949009580

`eq[A065264(n+1), A271478(n)]`
-/

namespace A346301.P11943640399949009580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346301.P11943640399949009580

namespace A346301

/-- `eq[A065264(n+1), A271478(n)]` -/
def P11943640399949009580.Spec : Prop :=
  ∀ n, (P11943640399949009580.a n : ℤ) = A346301 (n + 1)

end A346301

/-! ## A346301.P12474853350464182561

`eq[A065288(n+1), A271478(n)]`
-/

namespace A346301.P12474853350464182561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346301.P12474853350464182561

namespace A346301

/-- `eq[A065288(n+1), A271478(n)]` -/
def P12474853350464182561.Spec : Prop :=
  ∀ n, (P12474853350464182561.a n : ℤ) = A346301 (n + 1)

end A346301

/-! ## A346301.P16769296884310543105

`eq[2, A020639(A346302(n+1)+n)]+1`
-/

namespace A346301.P16769296884310543105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A346302 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346301.P16769296884310543105

namespace A346301

/-- `eq[2, A020639(A346302(n+1)+n)]+1` -/
def P16769296884310543105.Spec : Prop :=
  ∀ n, (P16769296884310543105.a n : ℤ) = A346301 (n + 1)

end A346301

/-! ## A346301.P6913785695183786216

`A109613(2*n)+2-A096269(2*n+1)`
-/

namespace A346301.P6913785695183786216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n) + (2 - A096269 (2 * n + 1))

end

end A346301.P6913785695183786216

namespace A346301

/-- `A109613(2*n)+2-A096269(2*n+1)` -/
def P6913785695183786216.Spec : Prop :=
  ∀ n, P6913785695183786216.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P14042165945840996509

`A023443(A171781(n+1))`
-/

namespace A346301.P14042165945840996509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A171781 (n + 1)).toNat

end

end A346301.P14042165945840996509

namespace A346301

/-- `A023443(A171781(n+1))` -/
def P14042165945840996509.Spec : Prop :=
  ∀ n, P14042165945840996509.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P14302062629031278231

`A005942(n+1)-A006165(2*n+1)`
-/

namespace A346301.P14302062629031278231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 1) - A006165 (2 * n + 1)

end

end A346301.P14302062629031278231

namespace A346301

/-- `A005942(n+1)-A006165(2*n+1)` -/
def P14302062629031278231.Spec : Prop :=
  ∀ n, P14302062629031278231.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P7079114665925866270

`eq[1, A021913(A056539(n+1))]`
-/

namespace A346301.P7079114665925866270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A056539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346301.P7079114665925866270

namespace A346301

/-- `eq[1, A021913(A056539(n+1))]` -/
def P7079114665925866270.Spec : Prop :=
  ∀ n, (P7079114665925866270.a n : ℤ) = A346301 (n + 1)

end A346301

/-! ## A346301.P11886743269168031096

`eq[1, A021913(A056539(n))]-1`
-/

namespace A346301.P11886743269168031096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A056539 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A346301.P11886743269168031096

namespace A346301

/-- `eq[1, A021913(A056539(n))]-1` -/
def P11886743269168031096.Spec : Prop :=
  ∀ n, P11886743269168031096.a n = A346301 (n + 1)

end A346301

/-! ## A346301.P6619513537850693513

`A065276(A065269(2*n+1))-1`
-/

namespace A346301.P6619513537850693513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065276 (A065269 (2 * n + 1)).toNat - 1

end

end A346301.P6619513537850693513

namespace A346301

/-- `A065276(A065269(2*n+1))-1` -/
def P6619513537850693513.Spec : Prop :=
  ∀ n, P6619513537850693513.a n = A346301 (n + 1)

end A346301

/-!
# A346302: Positions of words in A076478 such that first digit != last digit.

The programs for A346302, the canonical program `A346302.P10648476138040848442` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346302 has offset 1).

The definition of A346302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346302.P10648476138040848442

`2*n+5-A079882(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A346302

/-- `2*n+5-A079882(n)` -/
def P10648476138040848442.Spec : Prop :=
  ∀ n, P10648476138040848442.a n = A346302 (n + 1)

theorem P10648476138040848442.correct : P10648476138040848442.Spec := by
  intro n
  simp only [A346302, Nat.add_sub_cancel]

end A346302

/-! ## A346302.P6887627838545201147

`A086694(n+1)+2*n+3`
-/

namespace A346302.P6887627838545201147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (n + 1) + (2 * n + 3 : ℤ)

end

end A346302.P6887627838545201147

namespace A346302

/-- `A086694(n+1)+2*n+3` -/
def P6887627838545201147.Spec : Prop :=
  ∀ n, P6887627838545201147.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P9835294823635588873

`2*(n+2)-char[A004760(n+1)-2]`
-/

namespace A346302.P9835294823635588873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A346302.P9835294823635588873

namespace A346302

/-- `2*(n+2)-char[A004760(n+1)-2]` -/
def P9835294823635588873.Spec : Prop :=
  ∀ n, P9835294823635588873.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P3049406641891634801

`A020735(n+1)-A079882(n)`
-/

namespace A346302.P3049406641891634801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1) - A079882 n

end

end A346302.P3049406641891634801

namespace A346302

/-- `A020735(n+1)-A079882(n)` -/
def P3049406641891634801.Spec : Prop :=
  ∀ n, P3049406641891634801.a n = A346302 (n + 1)

theorem P3049406641891634801.correct : P3049406641891634801.Spec := by
  intro n
  simp only [A346302, Nat.add_sub_cancel, A346302.P3049406641891634801.a, A346302.P10648476138040848442.a, A020735, A020735.P10040868782378236279.a, A079882, A079882.P12778706361266125530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A346302

/-! ## A346302.P10478014267033804644

`A144396(n+1)+A086694(n+1)`
-/

namespace A346302.P10478014267033804644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A086694 (n + 1)

end

end A346302.P10478014267033804644

namespace A346302

/-- `A144396(n+1)+A086694(n+1)` -/
def P10478014267033804644.Spec : Prop :=
  ∀ n, P10478014267033804644.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P8916341165369698990

`A080637(n+1)+A066997(n+2)`
-/

namespace A346302.P8916341165369698990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (n + 1) + A066997 (n + 2)

end

end A346302.P8916341165369698990

namespace A346302

/-- `A080637(n+1)+A066997(n+2)` -/
def P8916341165369698990.Spec : Prop :=
  ∀ n, P8916341165369698990.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P11618107167487575756

`A007378(n+2)+A066997(n+2)-1`
-/

namespace A346302.P11618107167487575756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 2) + (A066997 (n + 2) - 1)

end

end A346302.P11618107167487575756

namespace A346302

/-- `A007378(n+2)+A066997(n+2)-1` -/
def P11618107167487575756.Spec : Prop :=
  ∀ n, P11618107167487575756.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P13759373658737069753

`A078881(n+1)+A007378(n+2)-A079944(n)`
-/

namespace A346302.P13759373658737069753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1) + (A007378 (n + 2) - A079944 n)

end

end A346302.P13759373658737069753

namespace A346302

/-- `A078881(n+1)+A007378(n+2)-A079944(n)` -/
def P13759373658737069753.Spec : Prop :=
  ∀ n, P13759373658737069753.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P4083152085958314632

`Δ[A078881(n+1)+(n+1)²]`
-/

namespace A346302.P4083152085958314632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346302.P4083152085958314632

namespace A346302

/-- `Δ[A078881(n+1)+(n+1)²]` -/
def P4083152085958314632.Spec : Prop :=
  ∀ n, P4083152085958314632.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P12045547598986479934

`Δ[A279521(n+1)+(n+1)²]`
-/

namespace A346302.P12045547598986479934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346302.P12045547598986479934

namespace A346302

/-- `Δ[A279521(n+1)+(n+1)²]` -/
def P12045547598986479934.Spec : Prop :=
  ∀ n, P12045547598986479934.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P3570628763726588566

`Δ[(n+2)²-A007378(n+2)]`
-/

namespace A346302.P3570628763726588566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A007378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346302.P3570628763726588566

namespace A346302

/-- `Δ[(n+2)²-A007378(n+2)]` -/
def P3570628763726588566.Spec : Prop :=
  ∀ n, P3570628763726588566.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P13921468273988185495

`2*(n+1)+gcd(2, A059893(n+2))`
-/

namespace A346302.P13921468273988185495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + Int.gcd 2 (A059893 (n + 2))

end

end A346302.P13921468273988185495

namespace A346302

/-- `2*(n+1)+gcd(2, A059893(n+2))` -/
def P13921468273988185495.Spec : Prop :=
  ∀ n, (P13921468273988185495.a n : ℤ) = A346302 (n + 1)

end A346302

/-! ## A346302.P3918474319755055063

`A279521(n+2)+A007378(n+2)`
-/

namespace A346302.P3918474319755055063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (n + 2) + A007378 (n + 2)

end

end A346302.P3918474319755055063

namespace A346302

/-- `A279521(n+2)+A007378(n+2)` -/
def P3918474319755055063.Spec : Prop :=
  ∀ n, P3918474319755055063.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P1113707546467597779

`A006165(n+2)+A007378(n+2)-A079944(n)`
-/

namespace A346302.P1113707546467597779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) + (A007378 (n + 2) - A079944 n)

end

end A346302.P1113707546467597779

namespace A346302

/-- `A006165(n+2)+A007378(n+2)-A079944(n)` -/
def P1113707546467597779.Spec : Prop :=
  ∀ n, P1113707546467597779.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P10257691110845474165

`A069895(n+2)/A001511(n+2)-A079944(n)`
-/

namespace A346302.P10257691110845474165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069895 (n + 2) : ℚ) / (A001511 (n + 2) : ℚ) - (A079944 n : ℚ)

end

end A346302.P10257691110845474165

namespace A346302

/-- `A069895(n+2)/A001511(n+2)-A079944(n)` -/
def P10257691110845474165.Spec : Prop :=
  ∀ n, P10257691110845474165.a n = (A346302 (n + 1) : ℚ)

end A346302

/-! ## A346302.P985750331427279345

`Δ[A006165(n+2)+(n+1)²]`
-/

namespace A346302.P985750331427279345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346302.P985750331427279345

namespace A346302

/-- `Δ[A006165(n+2)+(n+1)²]` -/
def P985750331427279345.Spec : Prop :=
  ∀ n, P985750331427279345.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P3588490556659657582

`Δ[A294456(n+2)]+2*(n+1)`
-/

namespace A346302.P3588490556659657582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 * (n + 1) : ℤ)

end

end A346302.P3588490556659657582

namespace A346302

/-- `Δ[A294456(n+2)]+2*(n+1)` -/
def P3588490556659657582.Spec : Prop :=
  ∀ n, P3588490556659657582.a n = A346302 (n + 1)

end A346302

/-! ## A346302.P3312680496928262681

`∑[Δ[Δ[A294456(n+1)]]+2]+1`
-/

namespace A346302.P3312680496928262681
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A346302.P3312680496928262681

namespace A346302

/-- `∑[Δ[Δ[A294456(n+1)]]+2]+1` -/
def P3312680496928262681.Spec : Prop :=
  ∀ n, P3312680496928262681.a n = A346302 (n + 1)

end A346302

/-!
# A346303: Positions of words in A076478 that start with 0 and end with 0.

The programs for A346303, the canonical program `A346303.P7451042653333269412` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346303 has offset 1).

The definition of A346303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346303.P7451042653333269412

`or(a(n-1)+2, and(n, -n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346303

/-- `or(a(n-1)+2, and(n, -n))` -/
def P7451042653333269412.Spec : Prop :=
  ∀ n, P7451042653333269412.a n = A346303 (n + 1)

theorem P7451042653333269412.correct : P7451042653333269412.Spec := by
  intro n
  simp only [A346303, Nat.add_sub_cancel]

end A346303

/-! ## A346303.P17178466593651884087

`(a(n-1)+2)%n+3*n` with `a(0)=1`
-/

namespace A346303.P17178466593651884087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) % n + 3 * n

end

end A346303.P17178466593651884087

namespace A346303

/-- `(a(n-1)+2)%n+3*n` -/
def P17178466593651884087.Spec : Prop :=
  ∀ n, (P17178466593651884087.a n : ℤ) = A346303 (n + 1)

end A346303

/-! ## A346303.P2814861250256195109

`or(a(n-1)+1, xor(n, n-1))` with `a(0)=1`
-/

namespace A346303.P2814861250256195109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1) + 1) (Int.xor (n : ℤ) ((n : ℤ) - 1))

end

end A346303.P2814861250256195109

namespace A346303

/-- `or(a(n-1)+1, xor(n, n-1))` -/
def P2814861250256195109.Spec : Prop :=
  ∀ n, P2814861250256195109.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P11741998935512191710

`2*lt[2*n, xor(n, 2*n)]-1`
-/

namespace A346303.P11741998935512191710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A346303.P11741998935512191710

namespace A346303

/-- `2*lt[2*n, xor(n, 2*n)]-1` -/
def P11741998935512191710.Spec : Prop :=
  ∀ n, P11741998935512191710.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P14647641043506370076

`record[(2*n+1)%xor(n, 2*(n+1))]`
-/

namespace A346303.P14647641043506370076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.xor n (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346303.P14647641043506370076

namespace A346303

/-- `record[(2*n+1)%xor(n, 2*(n+1))]` -/
def P14647641043506370076.Spec : Prop :=
  ∀ n, (P14647641043506370076.a n : ℤ) = A346303 (n + 1)

end A346303

/-! ## A346303.P2875994752864098979

`comp[2*(n+1)]+2^ceil(log2(n+1))`
-/

namespace A346303.P2875994752864098979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) + (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A346303.P2875994752864098979

namespace A346303

/-- `comp[2*(n+1)]+2^ceil(log2(n+1))` -/
def P2875994752864098979.Spec : Prop :=
  ∀ n, P2875994752864098979.a n = (A346303 (n + 1) : ℚ)

end A346303

/-! ## A346303.P1704084722157493081

`or(1, A171757(n+1)-1)`
-/

namespace A346303.P1704084722157493081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171757 (n + 1) - 1)

end

end A346303.P1704084722157493081

namespace A346303

/-- `or(1, A171757(n+1)-1)` -/
def P1704084722157493081.Spec : Prop :=
  ∀ n, P1704084722157493081.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P8523171639549309842

`A006257(A318934(n+1)-1)`
-/

namespace A346303.P8523171639549309842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A318934 (n + 1) - 1).toNat

end

end A346303.P8523171639549309842

namespace A346303

/-- `A006257(A318934(n+1)-1)` -/
def P8523171639549309842.Spec : Prop :=
  ∀ n, P8523171639549309842.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P1604530041431186501

`abs(A004277(n)+2*n-A006257(n))`
-/

namespace A346303.P1604530041431186501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 n + ((2 * n : ℤ) - A006257 n)|

end

end A346303.P1604530041431186501

namespace A346303

/-- `abs(A004277(n)+2*n-A006257(n))` -/
def P1604530041431186501.Spec : Prop :=
  ∀ n, P1604530041431186501.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P8509475587778138482

`record[A065276(n+1)-1]`
-/

namespace A346303.P8509475587778138482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065276 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346303.P8509475587778138482

namespace A346303

/-- `record[A065276(n+1)-1]` -/
def P8509475587778138482.Spec : Prop :=
  ∀ n, P8509475587778138482.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P7667451565699962956

`record[A163509(n+1)+n]`
-/

namespace A346303.P7667451565699962956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163509 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346303.P7667451565699962956

namespace A346303

/-- `record[A163509(n+1)+n]` -/
def P7667451565699962956.Spec : Prop :=
  ∀ n, P7667451565699962956.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P7679589499011379826

`A004273(A004761(n+2))`
-/

namespace A346303.P7679589499011379826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004761 (n + 2)).toNat

end

end A346303.P7679589499011379826

namespace A346303

/-- `A004273(A004761(n+2))` -/
def P7679589499011379826.Spec : Prop :=
  ∀ n, P7679589499011379826.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P16406613019821606389

`∩[2*n+1, A346301(n+1)]`
-/

namespace A346303.P16406613019821606389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346303.P16406613019821606389

namespace A346303

/-- `∩[2*n+1, A346301(n+1)]` -/
def P16406613019821606389.Spec : Prop :=
  ∀ n, (P16406613019821606389.a n : ℤ) = A346303 (n + 1)

end A346303

/-! ## A346303.P5647868193840956879

`∩[A346301(n+1), A004273(n)]`
-/

namespace A346303.P5647868193840956879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346303.P5647868193840956879

namespace A346303

/-- `∩[A346301(n+1), A004273(n)]` -/
def P5647868193840956879.Spec : Prop :=
  ∀ n, (P5647868193840956879.a n : ℤ) = A346303 (n + 1)

end A346303

/-! ## A346303.P7798470235274844035

`∩[A346301(n+1), A060747(n)]`
-/

namespace A346303.P7798470235274844035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346303.P7798470235274844035

namespace A346303

/-- `∩[A346301(n+1), A060747(n)]` -/
def P7798470235274844035.Spec : Prop :=
  ∀ n, (P7798470235274844035.a n : ℤ) = A346303 (n + 1)

end A346303

/-! ## A346303.P12362950697019076066

`record[A065290(n+1)-1]`
-/

namespace A346303.P12362950697019076066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065290 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346303.P12362950697019076066

namespace A346303

/-- `record[A065290(n+1)-1]` -/
def P12362950697019076066.Spec : Prop :=
  ∀ n, P12362950697019076066.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P1708670659044847520

`∩[2*n+1, A092754(n+1)]`
-/

namespace A346303.P1708670659044847520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346303.P1708670659044847520

namespace A346303

/-- `∩[2*n+1, A092754(n+1)]` -/
def P1708670659044847520.Spec : Prop :=
  ∀ n, (P1708670659044847520.a n : ℤ) = A346303 (n + 1)

end A346303

/-! ## A346303.P5974984872926615400

`A092754(A004277(n))`
-/

namespace A346303.P5974984872926615400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (A004277 n).toNat

end

end A346303.P5974984872926615400

namespace A346303

/-- `A092754(A004277(n))` -/
def P5974984872926615400.Spec : Prop :=
  ∀ n, P5974984872926615400.a n = A346303 (n + 1)

end A346303

/-! ## A346303.P13862361872491467857

`A092754(A004275(n+1))`
-/

namespace A346303.P13862361872491467857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (A004275 (n + 1)).toNat

end

end A346303.P13862361872491467857

namespace A346303

/-- `A092754(A004275(n+1))` -/
def P13862361872491467857.Spec : Prop :=
  ∀ n, P13862361872491467857.a n = A346303 (n + 1)

end A346303

/-!
# A346304: Positions of words in A076478 that start with 1 and end with 0.

The programs for A346304, the canonical program `A346304.P13208104467639866605` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346304 has offset 1).

The definition of A346304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346304.P13208104467639866605

`2*A062383(n+1)+2*(n+1)-1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A346304

/-- `2*A062383(n+1)+2*(n+1)-1` -/
def P13208104467639866605.Spec : Prop :=
  ∀ n, P13208104467639866605.a n = A346304 (n + 1)

theorem P13208104467639866605.correct : P13208104467639866605.Spec := by
  intro n
  simp only [A346304, Nat.add_sub_cancel]

end A346304

/-! ## A346304.P1341404184482252150

`2*lt[xor(n, floor(n/2)), n]-1`
-/

namespace A346304.P1341404184482252150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A346304.P1341404184482252150

namespace A346304

/-- `2*lt[xor(n, floor(n/2)), n]-1` -/
def P1341404184482252150.Spec : Prop :=
  ∀ n, P1341404184482252150.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P14709078703160212396

`2*lt[n, 2*and(n, 2*n)]-1`
-/

namespace A346304.P14709078703160212396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A346304.P14709078703160212396

namespace A346304

/-- `2*lt[n, 2*and(n, 2*n)]-1` -/
def P14709078703160212396.Spec : Prop :=
  ∀ n, P14709078703160212396.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P15724809643928370570

`or(a(n-1)+3, 2*(n+1))-1` with `a(0)=5`
-/

namespace A346304.P15724809643928370570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor (a (n - 1) + 3) (2 * (n + 1) : ℤ) - 1

end

end A346304.P15724809643928370570

namespace A346304

/-- `or(a(n-1)+3, 2*(n+1))-1` -/
def P15724809643928370570.Spec : Prop :=
  ∀ n, P15724809643928370570.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P6445729716404189180

`2^(floor(log2(n+1))+2)+2*n+1`
-/

namespace A346304.P6445729716404189180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (Nat.log 2 (n + 1) + 2) + (2 * n + 1)

end

end A346304.P6445729716404189180

namespace A346304

/-- `2^(floor(log2(n+1))+2)+2*n+1` -/
def P6445729716404189180.Spec : Prop :=
  ∀ n, (P6445729716404189180.a n : ℤ) = A346304 (n + 1)

end A346304

/-! ## A346304.P16578589109967176788

`abs(1-A079946(n+1))`
-/

namespace A346304.P16578589109967176788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A079946 (n + 1)|

end

end A346304.P16578589109967176788

namespace A346304

/-- `abs(1-A079946(n+1))` -/
def P16578589109967176788.Spec : Prop :=
  ∀ n, P16578589109967176788.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P15454993394179562044

`abs(A004757(n+1)+2*n-n)`
-/

namespace A346304.P15454993394179562044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004757 (n + 1) + ((2 * n : ℤ) - (n : ℤ))|

end

end A346304.P15454993394179562044

namespace A346304

/-- `abs(A004757(n+1)+2*n-n)` -/
def P15454993394179562044.Spec : Prop :=
  ∀ n, P15454993394179562044.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P833813144298129372

`A006257(A004759(n+1)-1)`
-/

namespace A346304.P833813144298129372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A004759 (n + 1) - 1).toNat

end

end A346304.P833813144298129372

namespace A346304

/-- `A006257(A004759(n+1)-1)` -/
def P833813144298129372.Spec : Prop :=
  ∀ n, P833813144298129372.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P5193365350963069614

`A000265(A004757(n+1)+n)`
-/

namespace A346304.P5193365350963069614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004757 (n + 1) + (n : ℤ)).toNat

end

end A346304.P5193365350963069614

namespace A346304

/-- `A000265(A004757(n+1)+n)` -/
def P5193365350963069614.Spec : Prop :=
  ∀ n, P5193365350963069614.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P16225029879951609534

`xor(A079946(n+1), A088837(n+1))`
-/

namespace A346304.P16225029879951609534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079946 (n + 1)) (A088837 (n + 1))

end

end A346304.P16225029879951609534

namespace A346304

/-- `xor(A079946(n+1), A088837(n+1))` -/
def P16225029879951609534.Spec : Prop :=
  ∀ n, P16225029879951609534.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P14074873292068542025

`lt[lcm(2, A063946(n+1)), n]`
-/

namespace A346304.P14074873292068542025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A063946 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346304.P14074873292068542025

namespace A346304

/-- `lt[lcm(2, A063946(n+1)), n]` -/
def P14074873292068542025.Spec : Prop :=
  ∀ n, (P14074873292068542025.a n : ℤ) = A346304 (n + 1)

end A346304

/-! ## A346304.P10318658967197745722

`A006257(A004755(A003817(n+1)+n+1))`
-/

namespace A346304.P10318658967197745722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A004755 (A003817 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A346304.P10318658967197745722

namespace A346304

/-- `A006257(A004755(A003817(n+1)+n+1))` -/
def P10318658967197745722.Spec : Prop :=
  ∀ n, P10318658967197745722.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P7045327637826367215

`A206332(2*(n+1))`
-/

namespace A346304.P7045327637826367215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (2 * (n + 1))

end

end A346304.P7045327637826367215

namespace A346304

/-- `A206332(2*(n+1))` -/
def P7045327637826367215.Spec : Prop :=
  ∀ n, P7045327637826367215.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P4190554781489097421

`Δ[A063915(2*n)+n²]`
-/

namespace A346304.P4190554781489097421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063915 (2 * n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346304.P4190554781489097421

namespace A346304

/-- `Δ[A063915(2*n)+n²]` -/
def P4190554781489097421.Spec : Prop :=
  ∀ n, P4190554781489097421.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P6488688736129438735

`∩[2*n+1, A346302(n+1)]`
-/

namespace A346304.P6488688736129438735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346304.P6488688736129438735

namespace A346304

/-- `∩[2*n+1, A346302(n+1)]` -/
def P6488688736129438735.Spec : Prop :=
  ∀ n, (P6488688736129438735.a n : ℤ) = A346304 (n + 1)

end A346304

/-! ## A346304.P6280086955765727353

`A004273(A004755(n+1))`
-/

namespace A346304.P6280086955765727353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004755 (n + 1)).toNat

end

end A346304.P6280086955765727353

namespace A346304

/-- `A004273(A004755(n+1))` -/
def P6280086955765727353.Spec : Prop :=
  ∀ n, P6280086955765727353.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P12664852252408044629

`A005408(A206332(n+1))`
-/

namespace A346304.P12664852252408044629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A206332 (n + 1)).toNat

end

end A346304.P12664852252408044629

namespace A346304

/-- `A005408(A206332(n+1))` -/
def P12664852252408044629.Spec : Prop :=
  ∀ n, P12664852252408044629.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P12294447316658536120

`A004273(A206332(n+1)+1)`
-/

namespace A346304.P12294447316658536120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A206332 (n + 1) + 1).toNat

end

end A346304.P12294447316658536120

namespace A346304

/-- `A004273(A206332(n+1)+1)` -/
def P12294447316658536120.Spec : Prop :=
  ∀ n, P12294447316658536120.a n = A346304 (n + 1)

end A346304

/-! ## A346304.P2934651344266010655

`A060747(A206332(n+1)+1)`
-/

namespace A346304.P2934651344266010655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A206332 (n + 1) + 1).toNat

end

end A346304.P2934651344266010655

namespace A346304

/-- `A060747(A206332(n+1)+1)` -/
def P2934651344266010655.Spec : Prop :=
  ∀ n, P2934651344266010655.a n = A346304 (n + 1)

end A346304

/-!
# A346305: Positions of words in A076478 that start with 1 and end with 1.

The programs for A346305, there is no canonical definition to state claims against.
-/

/-! ## A346305.P17298652920529235683

`2*or(n, a(floor(n/2)))` with `a(0)=2`
-/

namespace A346305.P17298652920529235683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * Nat.lor n (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A346305.P17298652920529235683

/-! ## A346305.P1107710156758674144

`or(2*n, a(n-1)+2)` with `a(0)=2`
-/

namespace A346305.P1107710156758674144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (2 * n) (a (n - 1) + 2)

end

end A346305.P1107710156758674144

/-! ## A346305.P7555737246243240726

`record[or(n, a(n-2)+2)]` with `a(0)=2, a(1)=0`
-/

namespace A346305.P7555737246243240726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Nat.lor n (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346305.P7555737246243240726

/-! ## A346305.P1556736293765055037

`or(a(n-1)+2, n+n)` with `a(0)=2`
-/

namespace A346305.P1556736293765055037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (a (n - 1) + 2) (n + n)

end

end A346305.P1556736293765055037

/-! ## A346305.P2107107181368096298

`2*(2^ceil(log2(n+1))+n)`
-/

namespace A346305.P2107107181368096298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))

end

end A346305.P2107107181368096298

/-! ## A346305.P16874356812842939047

`A206332(Δ[n²])`
-/

namespace A346305.P16874356812842939047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346305.P16874356812842939047

/-! ## A346305.P546418123350407857

`A085211(∑[n+3])`
-/

namespace A346305.P546418123350407857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085211 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346305.P546418123350407857

/-! ## A346305.P16057182027391490526

`A080565(n+1)-1`
-/

namespace A346305.P16057182027391490526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1) - 1

end

end A346305.P16057182027391490526

/-! ## A346305.P9675226931645471150

`A132196(4*n+1)`
-/

namespace A346305.P9675226931645471150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 (4 * n + 1)

end

end A346305.P9675226931645471150

/-!
# A346306: Position in A076478 of the binary complement of the n-th word in A076478.

The programs for A346306, the canonical program `A346306.P6319894371181344972` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346306 has offset 1).

The definition of A346306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346306.P15858795366130925261

`A054429(n+2)-1`
-/

namespace A346306.P15858795366130925261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 2) - 1

end

end A346306.P15858795366130925261

namespace A346306

/-- `A054429(n+2)-1` -/
def P15858795366130925261.Spec : Prop :=
  ∀ n, P15858795366130925261.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P6319894371181344972

`A004756(n+2)-2*(n+3)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A346306

/-- `A004756(n+2)-2*(n+3)` -/
def P6319894371181344972.Spec : Prop :=
  ∀ n, P6319894371181344972.a n = A346306 (n + 1)

theorem P6319894371181344972.correct : P6319894371181344972.Spec := by
  intro n
  simp only [A346306, Nat.add_sub_cancel]

end A346306

/-! ## A346306.P14399858122675710237

`A063946(A117120(n+2))-1`
-/

namespace A346306.P14399858122675710237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A117120 (n + 2)).toNat - 1

end

end A346306.P14399858122675710237

namespace A346306

/-- `A063946(A117120(n+2))-1` -/
def P14399858122675710237.Spec : Prop :=
  ∀ n, P14399858122675710237.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P2222840727770266936

`A092569(n+2)-Δ[A052928(n)]`
-/

namespace A346306.P2222840727770266936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (n + 2) - (f1 (n + 1) - f1 n)

end

end A346306.P2222840727770266936

namespace A346306

/-- `A092569(n+2)-Δ[A052928(n)]` -/
def P2222840727770266936.Spec : Prop :=
  ∀ n, P2222840727770266936.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P9586791172660396326

`A057428(n+1)+A054429(n+2)`
-/

namespace A346306.P9586791172660396326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A054429 (n + 2)

end

end A346306.P9586791172660396326

namespace A346306

/-- `A057428(n+1)+A054429(n+2)` -/
def P9586791172660396326.Spec : Prop :=
  ∀ n, P9586791172660396326.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P5607351780156956105

`A033484(A000523(n+2))-(n+2)`
-/

namespace A346306.P5607351780156956105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (A000523 (n + 2)).toNat - (n + 2 : ℤ)

end

end A346306.P5607351780156956105

namespace A346306

/-- `A033484(A000523(n+2))-(n+2)` -/
def P5607351780156956105.Spec : Prop :=
  ∀ n, P5607351780156956105.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P249611748689390255

`A005942(A053644(n+2))-(n+2)`
-/

namespace A346306.P249611748689390255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (A053644 (n + 2)).toNat - (n + 2 : ℤ)

end

end A346306.P249611748689390255

namespace A346306

/-- `A005942(A053644(n+2))-(n+2)` -/
def P249611748689390255.Spec : Prop :=
  ∀ n, P249611748689390255.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P6257443790333046655

`A092754(n+2)-A006257(n+2)`
-/

namespace A346306.P6257443790333046655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 2) - A006257 (n + 2)

end

end A346306.P6257443790333046655

namespace A346306

/-- `A092754(n+2)-A006257(n+2)` -/
def P6257443790333046655.Spec : Prop :=
  ∀ n, P6257443790333046655.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P7921195856695350427

`A076877(n+2)-(A062050(n+2)+2)`
-/

namespace A346306.P7921195856695350427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (n + 2) - (A062050 (n + 2) + 2)

end

end A346306.P7921195856695350427

namespace A346306

/-- `A076877(n+2)-(A062050(n+2)+2)` -/
def P7921195856695350427.Spec : Prop :=
  ∀ n, P7921195856695350427.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P3184402266068660487

`A004754(n+2)-2*A062050(n+2)`
-/

namespace A346306.P3184402266068660487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 2) - 2 * A062050 (n + 2)

end

end A346306.P3184402266068660487

namespace A346306

/-- `A004754(n+2)-2*A062050(n+2)` -/
def P3184402266068660487.Spec : Prop :=
  ∀ n, P3184402266068660487.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P18381011476400763827

`A080079(n+2)-A053645(n+2)+n`
-/

namespace A346306.P18381011476400763827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 2) - A053645 (n + 2) + (n : ℤ)

end

end A346306.P18381011476400763827

namespace A346306

/-- `A080079(n+2)-A053645(n+2)+n` -/
def P18381011476400763827.Spec : Prop :=
  ∀ n, P18381011476400763827.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P5696655578951312240

`A337909(n+3)-2`
-/

namespace A346306.P5696655578951312240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337909 (n + 3) - 2

end

end A346306.P5696655578951312240

namespace A346306

/-- `A337909(n+3)-2` -/
def P5696655578951312240.Spec : Prop :=
  ∀ n, P5696655578951312240.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P12944540219485795410

`A092569(A004442(n+2))-1`
-/

namespace A346306.P12944540219485795410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A004442 (n + 2)).toNat - 1

end

end A346306.P12944540219485795410

namespace A346306

/-- `A092569(A004442(n+2))-1` -/
def P12944540219485795410.Spec : Prop :=
  ∀ n, P12944540219485795410.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P7789008505820896616

`A092569(A065190(n+2))-1`
-/

namespace A346306.P7789008505820896616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A065190 (n + 2)).toNat - 1

end

end A346306.P7789008505820896616

namespace A346306

/-- `A092569(A065190(n+2))-1` -/
def P7789008505820896616.Spec : Prop :=
  ∀ n, P7789008505820896616.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P3253043067933887026

`A003188(A180200(n+2))-1`
-/

namespace A346306.P3253043067933887026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A180200 (n + 2)).toNat - 1

end

end A346306.P3253043067933887026

namespace A346306

/-- `A003188(A180200(n+2))-1` -/
def P3253043067933887026.Spec : Prop :=
  ∀ n, P3253043067933887026.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P12539334888528769660

`A006068(A233280(n+2))-1`
-/

namespace A346306.P12539334888528769660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233280 (n + 2)).toNat - 1

end

end A346306.P12539334888528769660

namespace A346306

/-- `A006068(A233280(n+2))-1` -/
def P12539334888528769660.Spec : Prop :=
  ∀ n, P12539334888528769660.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P1358205270888715133

`A059894(A059893(n+2))-1`
-/

namespace A346306.P1358205270888715133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A059893 (n + 2)).toNat - 1

end

end A346306.P1358205270888715133

namespace A346306

/-- `A059894(A059893(n+2))-1` -/
def P1358205270888715133.Spec : Prop :=
  ∀ n, P1358205270888715133.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P10290033160885420711

`A023443(A054429(n+2))`
-/

namespace A346306.P10290033160885420711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054429 (n + 2)).toNat

end

end A346306.P10290033160885420711

namespace A346306

/-- `A023443(A054429(n+2))` -/
def P10290033160885420711.Spec : Prop :=
  ∀ n, P10290033160885420711.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P10630668919289269670

`A014681(A092569(n+2)-1)`
-/

namespace A346306.P10630668919289269670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092569 (n + 2) - 1).toNat

end

end A346306.P10630668919289269670

namespace A346306

/-- `A014681(A092569(n+2)-1)` -/
def P10630668919289269670.Spec : Prop :=
  ∀ n, P10630668919289269670.a n = A346306 (n + 1)

end A346306

/-! ## A346306.P11589384473044814923

`A233279(A003188(n+2))-1`
-/

namespace A346306.P11589384473044814923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A003188 (n + 2)).toNat - 1

end

end A346306.P11589384473044814923

namespace A346306

/-- `A233279(A003188(n+2))-1` -/
def P11589384473044814923.Spec : Prop :=
  ∀ n, P11589384473044814923.a n = A346306 (n + 1)

end A346306

/-!
# A346307: Number of runs in the n-th word in A076478.

The programs for A346307, there is no canonical definition to state claims against.
-/

/-! ## A346307.P7891278729617213960

`A043556(∑[A115716(n)])`
-/

namespace A346307.P7891278729617213960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346307.P7891278729617213960

/-! ## A346307.P8859268338250655856

`A227185(∑[A115716(n)])`
-/

namespace A346307.P8859268338250655856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346307.P8859268338250655856

/-! ## A346307.P2266800214309704935

`A043556(A032804(n+1))`
-/

namespace A346307.P2266800214309704935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A032804 (n + 1)).toNat

end

end A346307.P2266800214309704935

/-! ## A346307.P12075033191981704339

`A043557(A032805(n+1))`
-/

namespace A346307.P12075033191981704339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A032805 (n + 1)).toNat

end

end A346307.P12075033191981704339

/-! ## A346307.P2992266055378052760

`A043557(A032817(n+1))`
-/

namespace A346307.P2992266055378052760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A032817 (n + 1)).toNat

end

end A346307.P2992266055378052760

/-! ## A346307.P11360619011078862256

`A043556(A032911(n+1))`
-/

namespace A346307.P11360619011078862256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A032911 (n + 1)).toNat

end

end A346307.P11360619011078862256

/-! ## A346307.P11423266633601709823

`A043557(A032912(n+1))`
-/

namespace A346307.P11423266633601709823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A032912 (n + 1)).toNat

end

end A346307.P11423266633601709823

/-! ## A346307.P13050286934240727636

`A043555(A032924(n+1))`
-/

namespace A346307.P13050286934240727636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (A032924 (n + 1)).toNat

end

end A346307.P13050286934240727636

/-! ## A346307.P15427172497422316876

`A043556(A032925(n+1))`
-/

namespace A346307.P15427172497422316876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A032925 (n + 1)).toNat

end

end A346307.P15427172497422316876

/-! ## A346307.P9276551101701040759

`A043557(A032926(n+1))`
-/

namespace A346307.P9276551101701040759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A032926 (n + 1)).toNat

end

end A346307.P9276551101701040759

/-!
# A346308: Intersection of Beatty sequences for sqrt(2) and sqrt(3).

The programs for A346308, the canonical program `A346308.P15982199701162537741` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346308 has offset 1).

The definition of A346308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5772 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346308.P15982199701162537741

`∩[A001951(n+1), floor(n*sqrt(3))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A346308

/-- `∩[A001951(n+1), floor(n*sqrt(3))]` -/
def P15982199701162537741.Spec : Prop :=
  ∀ n, (P15982199701162537741.a n : ℤ) = A346308 (n + 1)

theorem P15982199701162537741.correct : P15982199701162537741.Spec := by
  intro n
  simp only [A346308, Nat.add_sub_cancel]

end A346308

/-! ## A346308.P14404141824361831751

`∩[A022838(n+1), A001951(n)]`
-/

namespace A346308.P14404141824361831751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346308.P14404141824361831751

namespace A346308

/-- `∩[A022838(n+1), A001951(n)]` -/
def P14404141824361831751.Spec : Prop :=
  ∀ n, (P14404141824361831751.a n : ℤ) = A346308 (n + 1)

end A346308

/-! ## A346308.P615958762527762910

`∩[A198081(n+1)-1, A097508(n)+n]`
-/

namespace A346308.P615958762527762910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346308.P615958762527762910

namespace A346308

/-- `∩[A198081(n+1)-1, A097508(n)+n]` -/
def P615958762527762910.Spec : Prop :=
  ∀ n, (P615958762527762910.a n : ℤ) = A346308 (n + 1)

end A346308

/-! ## A346308.P7733988231319316784

`record[A001951(A026249(n+1))%A026255(n+1)]`
-/

namespace A346308.P7733988231319316784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001951 (A026249 (n + 1)).toNat) (A026255 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346308.P7733988231319316784

namespace A346308

/-- `record[A001951(A026249(n+1))%A026255(n+1)]` -/
def P7733988231319316784.Spec : Prop :=
  ∀ n, P7733988231319316784.a n = A346308 (n + 1)

end A346308

/-! ## A346308.P4293798440868873255

`record[A049472(A026251(n+1))%A026255(n+1)]`
-/

namespace A346308.P4293798440868873255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049472 (A026251 (n + 1)).toNat) (A026255 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346308.P4293798440868873255

namespace A346308

/-- `record[A049472(A026251(n+1))%A026255(n+1)]` -/
def P4293798440868873255.Spec : Prop :=
  ∀ n, P4293798440868873255.a n = A346308 (n + 1)

end A346308

/-! ## A346308.P14284176099797292132

`∩[A022838(n+1), A004526(A022842(n+1))]`
-/

namespace A346308.P14284176099797292132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022842 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346308.P14284176099797292132

namespace A346308

/-- `∩[A022838(n+1), A004526(A022842(n+1))]` -/
def P14284176099797292132.Spec : Prop :=
  ∀ n, (P14284176099797292132.a n : ℤ) = A346308 (n + 1)

end A346308

/-! ## A346308.P14094574095902640310

`floor(sqrt(3)*A347468(n+1))`
-/

namespace A346308.P14094574095902640310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (A347468 (n + 1) : ℝ)⌋

end

end A346308.P14094574095902640310

namespace A346308

/-- `floor(sqrt(3)*A347468(n+1))` -/
def P14094574095902640310.Spec : Prop :=
  ∀ n, P14094574095902640310.a n = A346308 (n + 1)

end A346308

/-! ## A346308.P5620004313619059856

`A022838(A347468(n+1))`
-/

namespace A346308.P5620004313619059856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A347468 (n + 1)).toNat

end

end A346308.P5620004313619059856

namespace A346308

/-- `A022838(A347468(n+1))` -/
def P5620004313619059856.Spec : Prop :=
  ∀ n, P5620004313619059856.a n = A346308 (n + 1)

end A346308

/-! ## A346308.P4720794766843220874

`A097337(3*A347468(n+1))`
-/

namespace A346308.P4720794766843220874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (3 * A347468 (n + 1)).toNat

end

end A346308.P4720794766843220874

namespace A346308

/-- `A097337(3*A347468(n+1))` -/
def P4720794766843220874.Spec : Prop :=
  ∀ n, P4720794766843220874.a n = A346308 (n + 1)

end A346308

/-! ## A346308.P7186605359856198272

`ceil(sqrt(3)*A347468(n+1)-A007318((-1)^n+1))`
-/

namespace A346308.P7186605359856198272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 : ℝ) * (A347468 (n + 1) : ℝ) - (A007318 ((-1) ^ n + 1).toNat : ℝ)⌉

end

end A346308.P7186605359856198272

namespace A346308

/-- `ceil(sqrt(3)*A347468(n+1)-A007318((-1)^n+1))` -/
def P7186605359856198272.Spec : Prop :=
  ∀ n, P7186605359856198272.a n = A346308 (n + 1)

end A346308

/-!
# A346309: Positions of words in A076478 such that #0's - #1's is odd.

The programs for A346309, there is no canonical definition to state claims against.
-/

/-! ## A346309.P8391758334049800644

`lt[0, floor(log2(n+1))%2]`
-/

namespace A346309.P8391758334049800644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346309.P8391758334049800644

/-! ## A346309.P15954407895035914661

`eq[0, ceil(log2(n+2))%2]`
-/

namespace A346309.P15954407895035914661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346309.P15954407895035914661

/-! ## A346309.P9204946317067395268

`eq[1, gcd(2, floor(log2(n+1)))]`
-/

namespace A346309.P9204946317067395268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.log 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346309.P9204946317067395268

/-! ## A346309.P12921218816130645940

`lt[0, and(1, floor(log2(n+1)))]`
-/

namespace A346309.P12921218816130645940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.log 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346309.P12921218816130645940

/-! ## A346309.P9403248955954103517

`eq[1, and(1, floor(log2(n+1)))]`
-/

namespace A346309.P9403248955954103517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.log 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346309.P9403248955954103517

/-! ## A346309.P9728504583667597549

`eq[7, or(6, floor(log2(n+1)))]`
-/

namespace A346309.P9728504583667597549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (Nat.log 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346309.P9728504583667597549

/-! ## A346309.P8210418090703711672

`record[n^and(1, floor(log2(n+1)))]`
-/

namespace A346309.P8210418090703711672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 (Nat.log 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346309.P8210418090703711672

/-! ## A346309.P16470562154596469507

`comp[A005351(n)-1]`
-/

namespace A346309.P16470562154596469507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346309.P16470562154596469507

/-! ## A346309.P14223854272184263109

`A053754(n+2)-1`
-/

namespace A346309.P14223854272184263109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 2) - 1

end

end A346309.P14223854272184263109

/-!
# A346310: Positions of words in A076478 such that #0's - #1's is even.

The programs for A346310, there is no canonical definition to state claims against.
-/

/-! ## A346310.P4640416490686531141

`lt[xor(84, n+1), 84]`
-/

namespace A346310.P4640416490686531141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 84 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  84

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346310.P4640416490686531141

/-! ## A346310.P6615184092810659146

`eq[2, gcd(10, floor(log2(n+1)))]`
-/

namespace A346310.P6615184092810659146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 (Nat.log 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346310.P6615184092810659146

/-! ## A346310.P13617545546194811525

`lt[1, (-2)^floor(log2(n+1))]`
-/

namespace A346310.P13617545546194811525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ Nat.log 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346310.P13617545546194811525

/-! ## A346310.P11754256585968612645

`comp[n*floor(log2(n+1))%2]`
-/

namespace A346310.P11754256585968612645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.log 2 (n + 1) % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A346310.P11754256585968612645

/-! ## A346310.P17762889784504970564

`comp[n*and(1, floor(log2(n+1)))]`
-/

namespace A346310.P17762889784504970564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (Nat.log 2 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A346310.P17762889784504970564

/-! ## A346310.P16596368315919509534

`A053738(n+2)-1`
-/

namespace A346310.P16596368315919509534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 2) - 1

end

end A346310.P16596368315919509534

/-! ## A346310.P1499702220125943795

`A380788(n+3)-1`
-/

namespace A346310.P1499702220125943795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 3) - 1

end

end A346310.P1499702220125943795

/-! ## A346310.P16856185927186907474

`lt[1, A053985(n)]-1`
-/

namespace A346310.P16856185927186907474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A346310.P16856185927186907474

/-!
# A346313: Sum_{n>=0} a(n) * x^n / (n!)^2 = Product_{n>=1} 1 / (1 + (-x)^n / n^2).

The programs for A346313, there is no canonical definition to state claims against.
-/

/-! ## A346313.P16365779253190399133

`A199639(A099487(n))`
-/

namespace A346313.P16365779253190399133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199639 (A099487 n).toNat

end

end A346313.P16365779253190399133

/-!
# A346314: Sum_{n>=0} a(n) * x^n / (n!)^2 = Product_{n>=1} (1 - x^n / (n!)^2).

The programs for A346314, there is no canonical definition to state claims against.
-/

/-! ## A346314.P14624812635314406408

`A183229(n)-A036586(A066186(3*(n+1)))`
-/

namespace A346314.P14624812635314406408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183229 n - A036586 (A066186 (3 * (n + 1))).toNat

end

end A346314.P14624812635314406408

/-! ## A346314.P2910248801367415075

`A078707(n)-A352515(A324931(3*(n+1)))`
-/

namespace A346314.P2910248801367415075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078707 n - A352515 (A324931 (3 * (n + 1))).toNat

end

end A346314.P2910248801367415075

/-!
# A346315: Sum_{n>=0} a(n) * x^n / (n!)^2 = Product_{n>=1} 1 / (1 + (-x)^n / (n!)^2).

The programs for A346315, there is no canonical definition to state claims against.
-/

/-! ## A346315.P11077671255424785289

`A046100(n²*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A346315.P11077671255424785289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A046100 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A346315.P11077671255424785289

/-!
# A346316: Composite numbers with primitive root 6.

The programs for A346316, there is no canonical definition to state claims against.
-/

/-! ## A346316.P12243644570850425324

`∩[A001597(n+1), A167794(n+1)]`
-/

namespace A346316.P12243644570850425324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346316.P12243644570850425324

/-! ## A346316.P10680143689291066178

`∩[A001694(n+1), A167794(n+1)]`
-/

namespace A346316.P10680143689291066178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346316.P10680143689291066178

/-! ## A346316.P10881993516339674577

`∩[A002760(n+1), A167794(n+1)]`
-/

namespace A346316.P10881993516339674577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346316.P10881993516339674577

/-! ## A346316.P17487458870717221278

`∩[A025475(n+1), A167794(n+1)]`
-/

namespace A346316.P17487458870717221278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346316.P17487458870717221278

/-! ## A346316.P16161183791052929755

`∩[A062739(n+1), A167794(n+1)]`
-/

namespace A346316.P16161183791052929755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346316.P16161183791052929755

/-!
# A346317: Number of permutations of [n] having two cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346317, the canonical program `A346317.P2710394010854551716` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346317 has offset 2).

The definition of A346317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346317.P2710394010854551716

`∑[floor(n*2^(n-3))]+(2^n+4^n)/2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346317

/-- `∑[floor(n*2^(n-3))]+(2^n+4^n)/2` -/
def P2710394010854551716.Spec : Prop :=
  ∀ n, P2710394010854551716.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P4034864814337153331

`(A057711(n+1)+A000079(n)²)/2`
-/

namespace A346317.P4034864814337153331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 (n + 1) + A000079 n ^ 2 : ℚ) / 2

end

end A346317.P4034864814337153331

namespace A346317

/-- `(A057711(n+1)+A000079(n)²)/2` -/
def P4034864814337153331.Spec : Prop :=
  ∀ n, P4034864814337153331.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P451917138267621450

`(A129952(n+1)+A000079(n)²)/2`
-/

namespace A346317.P451917138267621450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129952 (n + 1) + A000079 n ^ 2 : ℚ) / 2

end

end A346317.P451917138267621450

namespace A346317

/-- `(A129952(n+1)+A000079(n)²)/2` -/
def P451917138267621450.Spec : Prop :=
  ∀ n, P451917138267621450.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P14796472521589047436

`(A057711(n+1)+A000079(2*n))/2`
-/

namespace A346317.P14796472521589047436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 (n + 1) + A000079 (2 * n) : ℚ) / 2

end

end A346317.P14796472521589047436

namespace A346317

/-- `(A057711(n+1)+A000079(2*n))/2` -/
def P14796472521589047436.Spec : Prop :=
  ∀ n, P14796472521589047436.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P12983466773192795924

`(A129952(n+1)+A000079(2*n))/2`
-/

namespace A346317.P12983466773192795924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129952 (n + 1) + A000079 (2 * n) : ℚ) / 2

end

end A346317.P12983466773192795924

namespace A346317

/-- `(A129952(n+1)+A000079(2*n))/2` -/
def P12983466773192795924.Spec : Prop :=
  ∀ n, P12983466773192795924.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P1954699025455281265

`(A057711(n+1)+A011782(n+1)²)/2`
-/

namespace A346317.P1954699025455281265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 (n + 1) + A011782 (n + 1) ^ 2 : ℚ) / 2

end

end A346317.P1954699025455281265

namespace A346317

/-- `(A057711(n+1)+A011782(n+1)²)/2` -/
def P1954699025455281265.Spec : Prop :=
  ∀ n, P1954699025455281265.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P13846892886759046384

`(A129952(n+1)+A011782(n+1)²)/2`
-/

namespace A346317.P13846892886759046384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129952 (n + 1) + A011782 (n + 1) ^ 2 : ℚ) / 2

end

end A346317.P13846892886759046384

namespace A346317

/-- `(A129952(n+1)+A011782(n+1)²)/2` -/
def P13846892886759046384.Spec : Prop :=
  ∀ n, P13846892886759046384.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P3084108453076174333

`(A131577(n+1)²+A057711(n+1))/2`
-/

namespace A346317.P3084108453076174333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) ^ 2 + A057711 (n + 1) : ℚ) / 2

end

end A346317.P3084108453076174333

namespace A346317

/-- `(A131577(n+1)²+A057711(n+1))/2` -/
def P3084108453076174333.Spec : Prop :=
  ∀ n, P3084108453076174333.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P3032540893711834828

`(A057711(n+1)+A011782(2*n+1))/2`
-/

namespace A346317.P3032540893711834828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 (n + 1) + A011782 (2 * n + 1) : ℚ) / 2

end

end A346317.P3032540893711834828

namespace A346317

/-- `(A057711(n+1)+A011782(2*n+1))/2` -/
def P3032540893711834828.Spec : Prop :=
  ∀ n, P3032540893711834828.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P17293524266313503683

`(A129952(n+1)+A011782(2*n+1))/2`
-/

namespace A346317.P17293524266313503683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129952 (n + 1) + A011782 (2 * n + 1) : ℚ) / 2

end

end A346317.P17293524266313503683

namespace A346317

/-- `(A129952(n+1)+A011782(2*n+1))/2` -/
def P17293524266313503683.Spec : Prop :=
  ∀ n, P17293524266313503683.a n = (A346317 (n + 2) : ℚ)

end A346317

/-! ## A346317.P3834754398100426994

`(A131577(2*n+1)+A057711(n+1))/2`
-/

namespace A346317.P3834754398100426994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n + 1) + A057711 (n + 1) : ℚ) / 2

end

end A346317.P3834754398100426994

namespace A346317

/-- `(A131577(2*n+1)+A057711(n+1))/2` -/
def P3834754398100426994.Spec : Prop :=
  ∀ n, P3834754398100426994.a n = (A346317 (n + 2) : ℚ)

end A346317

/-!
# A346318: Number of permutations of [n] having three cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346318, there is no canonical definition to state claims against.
-/

/-! ## A346318.P12584658516856886857

`A344855(A167614(n+2))`
-/

namespace A346318.P12584658516856886857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A167614 (n + 2)).toNat

end

end A346318.P12584658516856886857

/-! ## A346318.P12904139748245645820

`A344855(A052905(n)+8)`
-/

namespace A346318.P12904139748245645820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A052905 n + 8).toNat

end

end A346318.P12904139748245645820

/-! ## A346318.P6546154383215980776

`A344855(A055999(n)+9)`
-/

namespace A346318.P6546154383215980776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A055999 n + 9).toNat

end

end A346318.P6546154383215980776

/-! ## A346318.P4184042528563281941

`A344855(eq[3, A002262(n)])`
-/

namespace A346318.P4184042528563281941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346318.P4184042528563281941

/-! ## A346318.P16958559169103776779

`record[A344855(A167499(n)-2)]`
-/

namespace A346318.P16958559169103776779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A167499 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346318.P16958559169103776779

/-! ## A346318.P6681164048664397015

`A344855(A340266(n+2)+1)`
-/

namespace A346318.P6681164048664397015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A340266 (n + 2) + 1).toNat

end

end A346318.P6681164048664397015

/-! ## A346318.P9914131923800000496

`A344855(A000217(n+3)+3)`
-/

namespace A346318.P9914131923800000496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A000217 (n + 3) + 3).toNat

end

end A346318.P9914131923800000496

/-! ## A346318.P4631155079776574547

`record[A344855(∑[A233583(n+1)])]`
-/

namespace A346318.P4631155079776574547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346318.P4631155079776574547

/-! ## A346318.P1965435261225812470

`A344855(eq[1, A144328(n+1)-2])`
-/

namespace A346318.P1965435261225812470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346318.P1965435261225812470

/-! ## A346318.P9493025473660742035

`A344855(eq[2, A002260(n+1)-2])`
-/

namespace A346318.P9493025473660742035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346318.P9493025473660742035

/-!
# A346319: Number of permutations of [n] having four cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346319, there is no canonical definition to state claims against.
-/

/-! ## A346319.P12044270249743029129

`A344855(eq[4, A002262(n)])`
-/

namespace A346319.P12044270249743029129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346319.P12044270249743029129

/-! ## A346319.P3040015231127962536

`A344855(A000217(n+4)+4)`
-/

namespace A346319.P3040015231127962536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A000217 (n + 4) + 4).toNat

end

end A346319.P3040015231127962536

/-! ## A346319.P2822991331806214866

`A344855(eq[5, A002260(n+1)])`
-/

namespace A346319.P2822991331806214866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346319.P2822991331806214866

/-! ## A346319.P10273902187742668420

`A344855(eq[9, A158405(n+1)])`
-/

namespace A346319.P10273902187742668420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346319.P10273902187742668420

/-! ## A346319.P1773949697992106091

`A344855(eq[2, A144328(n+1)-2])`
-/

namespace A346319.P1773949697992106091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346319.P1773949697992106091

/-! ## A346319.P14401327203220399119

`A344855(eq[2, A144328(n+1)/2])`
-/

namespace A346319.P14401327203220399119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A346319.P14401327203220399119

/-! ## A346319.P16943652646179769546

`record[A344855(A153151(A167499(n)))]`
-/

namespace A346319.P16943652646179769546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A153151 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346319.P16943652646179769546

/-!
# A346320: Number of permutations of [n] having five cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346320, there is no canonical definition to state claims against.
-/

/-! ## A346320.P16709780771666517550

`A344855(A167499(n+4))`
-/

namespace A346320.P16709780771666517550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A167499 (n + 4)).toNat

end

end A346320.P16709780771666517550

/-! ## A346320.P12082575156927686186

`A344855(A077169(n+6))`
-/

namespace A346320.P12082575156927686186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A077169 (n + 6)).toNat

end

end A346320.P12082575156927686186

/-! ## A346320.P14949063300571890476

`A344855(eq[5, A002262(n)])`
-/

namespace A346320.P14949063300571890476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346320.P14949063300571890476

/-! ## A346320.P2480495269277186724

`A344855(A000217(n+5)+5)`
-/

namespace A346320.P2480495269277186724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A000217 (n + 5) + 5).toNat

end

end A346320.P2480495269277186724

/-! ## A346320.P16567671129530287189

`A344855(eq[6, A002260(n+1)])`
-/

namespace A346320.P16567671129530287189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346320.P16567671129530287189

/-! ## A346320.P10982815230511883248

`record[A344855(A167499(n)%A009849(n))]`
-/

namespace A346320.P10982815230511883248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (Int.tmod (A167499 n) (A009849 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346320.P10982815230511883248

/-!
# A346321: Number of permutations of [n] having six cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346321, there is no canonical definition to state claims against.
-/

/-! ## A346321.P15243228212146163281

`A344855(eq[6, A002262(n)])`
-/

namespace A346321.P15243228212146163281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346321.P15243228212146163281

/-! ## A346321.P113947443563512011

`A344855(A133263(n+6)+4)`
-/

namespace A346321.P113947443563512011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A133263 (n + 6) + 4).toNat

end

end A346321.P113947443563512011

/-! ## A346321.P14623885921138545783

`A344855(A000096(n+5)+7)`
-/

namespace A346321.P14623885921138545783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A000096 (n + 5) + 7).toNat

end

end A346321.P14623885921138545783

/-! ## A346321.P1258670691332321251

`A344855(eq[7, A002260(n+1)])`
-/

namespace A346321.P1258670691332321251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346321.P1258670691332321251

/-! ## A346321.P13123198519983623961

`A344855(eq[7, A097285(2*n+1)])`
-/

namespace A346321.P13123198519983623961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346321.P13123198519983623961

/-!
# A346322: Number of permutations of [n] having seven cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346322, there is no canonical definition to state claims against.
-/

/-! ## A346322.P7723865261158917015

`A344855(eq[7, A002262(n)])`
-/

namespace A346322.P7723865261158917015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346322.P7723865261158917015

/-! ## A346322.P609693226101529107

`A344855(A000217(n+7)+7)`
-/

namespace A346322.P609693226101529107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (A000217 (n + 7) + 7).toNat

end

end A346322.P609693226101529107

/-! ## A346322.P10875161850554038390

`A344855(eq[7, A144328(n+1)])`
-/

namespace A346322.P10875161850554038390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346322.P10875161850554038390

/-! ## A346322.P154255374992398000

`A344855(eq[8, A002260(n+1)])`
-/

namespace A346322.P154255374992398000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346322.P154255374992398000

/-! ## A346322.P4822879050416798535

`A344855(eq[8, A134868(n+1)])`
-/

namespace A346322.P4822879050416798535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346322.P4822879050416798535

/-! ## A346322.P11269142923977966131

`A344855(eq[19, A037126(n+1)])`
-/

namespace A346322.P11269142923977966131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346322.P11269142923977966131

/-!
# A346323: Number of permutations of [n] having eight cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346323, there is no canonical definition to state claims against.
-/

/-! ## A346323.P8541475198861388735

`A344855(eq[8, A002262(n)])`
-/

namespace A346323.P8541475198861388735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346323.P8541475198861388735

/-! ## A346323.P3228101974110414717

`A344855(eq[8, A144328(n+1)])`
-/

namespace A346323.P3228101974110414717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346323.P3228101974110414717

/-! ## A346323.P16711001936488308691

`A344855(eq[9, A002260(n+1)])`
-/

namespace A346323.P16711001936488308691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346323.P16711001936488308691

/-! ## A346323.P174415241216426662

`A344855(eq[9, A134868(n+1)])`
-/

namespace A346323.P174415241216426662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346323.P174415241216426662

/-! ## A346323.P7059404715947132575

`A344855(eq[23, A037126(n+1)])`
-/

namespace A346323.P7059404715947132575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346323.P7059404715947132575

/-!
# A346324: Number of permutations of [n] having nine cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346324, there is no canonical definition to state claims against.
-/

/-! ## A346324.P12285785928992206124

`A344855(eq[9, A002262(n)])`
-/

namespace A346324.P12285785928992206124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346324.P12285785928992206124

/-! ## A346324.P11773805217409822103

`A344855(eq[9, A144328(n+1)])`
-/

namespace A346324.P11773805217409822103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346324.P11773805217409822103

/-! ## A346324.P17866768439580296348

`A344855(eq[10, A002260(n+1)])`
-/

namespace A346324.P17866768439580296348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346324.P17866768439580296348

/-! ## A346324.P13842347717913973088

`A344855(eq[10, A134868(n+1)])`
-/

namespace A346324.P13842347717913973088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346324.P13842347717913973088

/-! ## A346324.P12044337035267052825

`A344855(eq[19, A158405(n+1)])`
-/

namespace A346324.P12044337035267052825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346324.P12044337035267052825

/-!
# A346325: Number of permutations of [n] having ten cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A346325, there is no canonical definition to state claims against.
-/

/-! ## A346325.P1189817245894599002

`A344855(eq[10, A002262(n)])`
-/

namespace A346325.P1189817245894599002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346325.P1189817245894599002

/-! ## A346325.P9050051007029354773

`A344855(eq[10, A144328(n+1)])`
-/

namespace A346325.P9050051007029354773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346325.P9050051007029354773

/-! ## A346325.P14968466193786985510

`A344855(eq[10, A327844(n+1)])`
-/

namespace A346325.P14968466193786985510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346325.P14968466193786985510

/-! ## A346325.P2481360107307115555

`A344855(eq[11, A002260(n+1)])`
-/

namespace A346325.P2481360107307115555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346325.P2481360107307115555

/-! ## A346325.P17725633931067813023

`A344855(eq[11, A134868(n+1)])`
-/

namespace A346325.P17725633931067813023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346325.P17725633931067813023

/-!
# A346327: 

The programs for A346327, there is no canonical definition to state claims against.
-/

/-! ## A346327.P746471148071953763

`A162742(A059268(n))*A345610(A130446(n+1))`
-/

namespace A346327.P746471148071953763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (A059268 n).toNat * A345610 (A130446 (n + 1)).toNat

end

end A346327.P746471148071953763

/-! ## A346327.P17783682685349525006

`A345610(A111123(C(floor((n+1)/2), 64))+n)`
-/

namespace A346327.P17783682685349525006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345610 (A111123 (Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 64) + (n : ℤ)).toNat

end

end A346327.P17783682685349525006

/-! ## A346327.P4176249350474966785

`A345610(lcm(A055231(n+1), A130446(n+1)))`
-/

namespace A346327.P4176249350474966785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345610 (Int.lcm (A055231 (n + 1)) (A130446 (n + 1)))

end

end A346327.P4176249350474966785

/-!
# A346330: Numbers that are the sum of eight fifth powers in exactly five ways.

The programs for A346330, there is no canonical definition to state claims against.
-/

/-! ## A346330.P3283382269242094359

`A345613(record[1-A339169(n)+n])`
-/

namespace A346330.P3283382269242094359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A339169 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346330.P3283382269242094359

/-! ## A346330.P12367429306907066937

`A345613(A350898(2*n+5)+A187829(n+1))`
-/

namespace A346330.P12367429306907066937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345613 (A350898 (2 * n + 5) + A187829 (n + 1)).toNat

end

end A346330.P12367429306907066937

/-! ## A346330.P17877546306313694487

`record[gcd(A339169(n), A345613(n+1))]`
-/

namespace A346330.P17877546306313694487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339169 n) (A345613 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346330.P17877546306313694487

/-! ## A346330.P6934167385232642352

`A345613(A059561(n+1))%A346332(A373671(n+1))`
-/

namespace A346330.P6934167385232642352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345613 (A059561 (n + 1)).toNat) (A346332 (A373671 (n + 1)).toNat)

end

end A346330.P6934167385232642352

/-!
# A346331: Numbers that are the sum of eight fifth powers in exactly six ways.

The programs for A346331, there is no canonical definition to state claims against.
-/

/-! ## A346331.P13706537202625128849

`A345614(A020664(n+1)%A032559(2*n+3))`
-/

namespace A346331.P13706537202625128849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345614 (Int.tmod (A020664 (n + 1)) (A032559 (2 * n + 3))).toNat

end

end A346331.P13706537202625128849

/-! ## A346331.P771158035436386632

`A345614(A020664(n+1)^A254609(n))`
-/

namespace A346331.P771158035436386632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345614 (SequenceMachineLib.roundAway ((A020664 (n + 1) : ℚ) ^ (A254609 n : ℤ))).toNat

end

end A346331.P771158035436386632

/-! ## A346331.P14324160587942152585

`A345614(A254609(n)²²*A020664(n+1))`
-/

namespace A346331.P14324160587942152585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345614 ((A254609 n ^ 2) ^ 2 * A020664 (n + 1)).toNat

end

end A346331.P14324160587942152585

/-!
# A346332: Numbers that are the sum of eight fifth powers in exactly seven ways.

The programs for A346332, there is no canonical definition to state claims against.
-/

/-! ## A346332.P17556666089351798382

`A345615(∑[A186745(n)!])`
-/

namespace A346332.P17556666089351798382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A186745 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346332.P17556666089351798382

/-!
# A346333: Numbers that are the sum of eight fifth powers in exactly eight ways.

The programs for A346333, there is no canonical definition to state claims against.
-/

/-! ## A346333.P2530589508122563098

`A345616(lt[A188747(2*n+5), A198596(n+1)])`
-/

namespace A346333.P2530589508122563098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345616 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346333.P2530589508122563098

/-! ## A346333.P3102383192916787498

`A345616(A065475(n+1)^A332770(n+1))`
-/

namespace A346333.P3102383192916787498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345616 (SequenceMachineLib.roundAway ((A065475 (n + 1) : ℚ) ^ (A332770 (n + 1) : ℤ))).toNat

end

end A346333.P3102383192916787498

/-! ## A346333.P10947914170610306611

`A345616(A333214(n+1)^A332770(n+1))`
-/

namespace A346333.P10947914170610306611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345616 (SequenceMachineLib.roundAway ((A333214 (n + 1) : ℚ) ^ (A332770 (n + 1) : ℤ))).toNat

end

end A346333.P10947914170610306611

/-! ## A346333.P14011975980818898015

`A345616(A333214(n+1)^A061704(2*n+3))`
-/

namespace A346333.P14011975980818898015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345616 (SequenceMachineLib.roundAway ((A333214 (n + 1) : ℚ) ^ (A061704 (2 * n + 3) : ℤ))).toNat

end

end A346333.P14011975980818898015

/-! ## A346333.P12451879907274129033

`A345616(A332770(n+1)²²*A065475(n+1))`
-/

namespace A346333.P12451879907274129033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345616 ((A332770 (n + 1) ^ 2) ^ 2 * A065475 (n + 1)).toNat

end

end A346333.P12451879907274129033

/-!
# A346334: Numbers that are the sum of eight fifth powers in exactly nine ways.

The programs for A346334, there is no canonical definition to state claims against.
-/

/-! ## A346334.P15923382580650397558

`A345617(comp[(n+1)*Δ[n^3]]+1)`
-/

namespace A346334.P15923382580650397558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345617 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A346334.P15923382580650397558

/-! ## A346334.P138529505449959394

`A345617(A333214(n+1))%A345618(n+1)`
-/

namespace A346334.P138529505449959394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345617 (A333214 (n + 1)).toNat) (A345618 (n + 1))

end

end A346334.P138529505449959394

/-! ## A346334.P10031271920347211192

`lcm(A332770(2*(n+2)), A345617(A333214(n+1)))`
-/

namespace A346334.P10031271920347211192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A332770 (2 * (n + 2))) (A345617 (A333214 (n + 1)).toNat)

end

end A346334.P10031271920347211192

/-! ## A346334.P17770191426190023228

`record[A345617(A065475(n+1)%A249745(3*(n+1)))]`
-/

namespace A346334.P17770191426190023228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345617 (Int.tmod (A065475 (n + 1)) (A249745 (3 * (n + 1)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346334.P17770191426190023228

/-! ## A346334.P16773457494142977998

`A345617(A333214(n+1))%A345631(A332815(n))`
-/

namespace A346334.P16773457494142977998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345617 (A333214 (n + 1)).toNat) (A345631 (A332815 n).toNat)

end

end A346334.P16773457494142977998

/-!
# A346335: Numbers that are the sum of eight fifth powers in exactly ten ways.

The programs for A346335, there is no canonical definition to state claims against.
-/

/-! ## A346335.P15070641156346294709

`A345618(eq[1, A245760(n+1)])`
-/

namespace A346335.P15070641156346294709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346335.P15070641156346294709

/-! ## A346335.P10085705169257261053

`A345618(record[A345594(n+1)%A259176(n+3)])`
-/

namespace A346335.P10085705169257261053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345594 (n + 1)) (A259176 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346335.P10085705169257261053

/-! ## A346335.P6249633658738246915

`A345618(lt[A193725(2*n), A005101(n+1)]+1)`
-/

namespace A346335.P6249633658738246915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A346335.P6249633658738246915

/-! ## A346335.P7593930340495159783

`A345618(lt[A193725(2*n), A358767(2*n+5)]+1)`
-/

namespace A346335.P7593930340495159783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193725 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358767 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A346335.P7593930340495159783

/-!
# A346338: Numbers that are the sum of nine fifth powers in exactly three ways.

The programs for A346338, there is no canonical definition to state claims against.
-/

/-! ## A346338.P9962998857064656508

`A345620(A361395(n+1)%A358950(n+1))`
-/

namespace A346338.P9962998857064656508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345620 (Int.tmod (A361395 (n + 1)) (A358950 (n + 1))).toNat

end

end A346338.P9962998857064656508

/-! ## A346338.P511827094821838571

`A345620(A004709(n+1)%A116629(n+3))`
-/

namespace A346338.P511827094821838571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345620 (Int.tmod (A004709 (n + 1)) (A116629 (n + 3))).toNat

end

end A346338.P511827094821838571

/-!
# A346339: Numbers that are the sum of nine fifth powers in exactly four ways.

The programs for A346339, there is no canonical definition to state claims against.
-/

/-! ## A346339.P6468963035355278561

`A345621(lt[A341408(n+3), n])`
-/

namespace A346339.P6468963035355278561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341408 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345621 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346339.P6468963035355278561

/-!
# A346342: Numbers that are the sum of nine fifth powers in exactly seven ways.

The programs for A346342, there is no canonical definition to state claims against.
-/

/-! ## A346342.P5027109317387704675

`A345624(lt[A106433(n), A043545(n)])`
-/

namespace A346342.P5027109317387704675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345624 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346342.P5027109317387704675

/-! ## A346342.P16075673898941883801

`A345624(lt[A350898(n+1), A043545(n)])`
-/

namespace A346342.P16075673898941883801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345624 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346342.P16075673898941883801

/-! ## A346342.P18443050498462562418

`A345624(lt[A210709(2*n), A043545(n)])`
-/

namespace A346342.P18443050498462562418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345624 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346342.P18443050498462562418

/-! ## A346342.P16353147930743814500

`A345624(A062289(n+1)%A019289(n+3))`
-/

namespace A346342.P16353147930743814500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345624 (Int.tmod (A062289 (n + 1)) (A019289 (n + 3))).toNat

end

end A346342.P16353147930743814500

/-!
# A346343: Numbers that are the sum of nine fifth powers in exactly eight ways.

The programs for A346343, there is no canonical definition to state claims against.
-/

/-! ## A346343.P14672454327665485086

`A345625(A047701(n+1)%A047701(n+5))`
-/

namespace A346343.P14672454327665485086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345625 (Int.tmod (A047701 (n + 1)) (A047701 (n + 5))).toNat

end

end A346343.P14672454327665485086

/-! ## A346343.P18225528783485391910

`A345625(A249745(n+1))%A345617(A293727(n+1))`
-/

namespace A346343.P18225528783485391910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345625 (A249745 (n + 1)).toNat) (A345617 (A293727 (n + 1)).toNat)

end

end A346343.P18225528783485391910

/-! ## A346343.P5369571864349521874

`A345625(A249745(n+1)%A085065(n+1))`
-/

namespace A346343.P5369571864349521874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345625 (Int.tmod (A249745 (n + 1)) (A085065 (n + 1))).toNat

end

end A346343.P5369571864349521874

/-!
# A346345: Numbers that are the sum of nine fifth powers in exactly ten ways.

The programs for A346345, there is no canonical definition to state claims against.
-/

/-! ## A346345.P18148922801712495696

`A345627(∑[A181039(n+1)^A283470(2*n+1)])`
-/

namespace A346345.P18148922801712495696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181039 (n + 1) : ℚ) ^ (A283470 (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345627 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346345.P18148922801712495696

/-! ## A346345.P4645740148716323200

`A345627(A120518(n+1)^A236915(2*(n+5)))`
-/

namespace A346345.P4645740148716323200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345627 (SequenceMachineLib.roundAway ((A120518 (n + 1) : ℚ) ^ (A236915 (2 * (n + 5)) : ℤ))).toNat

end

end A346345.P4645740148716323200

/-! ## A346345.P1907136267416537921

`A345627((comp[2*(A001952(n+1)-1)]+1)%A345617(3*n+4))`
-/

namespace A346345.P1907136267416537921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001952 (n + 1) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345627 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A345617 (3 * n + 4))).toNat

end

end A346345.P1907136267416537921

/-!
# A346353: Numbers that are the sum of ten fifth powers in exactly eight ways.

The programs for A346353, there is no canonical definition to state claims against.
-/

/-! ## A346353.P17130023310977720189

`record[A345640(n+1)/A323719(A323730(n))]`
-/

namespace A346353.P17130023310977720189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345640 (n + 1) : ℚ) / (A323719 (A323730 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346353.P17130023310977720189

/-! ## A346353.P9366140970043835397

`A345640(∑[A337452(n)^A201195(n+1)])`
-/

namespace A346353.P9366140970043835397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337452 n : ℚ) ^ (A201195 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345640 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346353.P9366140970043835397

/-! ## A346353.P3908949597050356386

`A345640(∑[A227578(n+1)^A201195(n+1)])`
-/

namespace A346353.P3908949597050356386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227578 (n + 1) : ℚ) ^ (A201195 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345640 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346353.P3908949597050356386

/-! ## A346353.P9392196390905780244

`A345640(∑[A227578(n+1)^A323410(n+1)])`
-/

namespace A346353.P9392196390905780244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227578 (n + 1) : ℚ) ^ (A323410 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345640 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346353.P9392196390905780244

/-!
# A346354: Numbers that are the sum of ten fifth powers in exactly nine ways.

The programs for A346354, there is no canonical definition to state claims against.
-/

/-! ## A346354.P8182598920036157634

`A345641(lt[A112607(n), A340430(2*(n+1))])`
-/

namespace A346354.P8182598920036157634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340430 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345641 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346354.P8182598920036157634

/-! ## A346354.P8575056381109698902

`A345641(A005100(n+1)%A000372(n))`
-/

namespace A346354.P8575056381109698902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345641 (Int.tmod (A005100 (n + 1)) (A000372 n)).toNat

end

end A346354.P8575056381109698902

/-! ## A346354.P16888804382158974122

`record[A345641(n+1)/A002110(A026799(n+1))]`
-/

namespace A346354.P16888804382158974122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345641 (n + 1) : ℚ) / (A002110 (A026799 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346354.P16888804382158974122

/-! ## A346354.P3111670574621766309

`A345641(∑{e}[∏[A286621(2*(n+2))], #])`
-/

namespace A346354.P3111670574621766309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345641 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A346354.P3111670574621766309

/-!
# A346355: Numbers that are the sum of ten fifth powers in exactly ten ways.

The programs for A346355, there is no canonical definition to state claims against.
-/

/-! ## A346355.P14562975711370381259

`A345642(∑[A324687(n)!])`
-/

namespace A346355.P14562975711370381259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A324687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345642 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346355.P14562975711370381259

/-! ## A346355.P13684785620231978377

`A345642(A113929(n+1))`
-/

namespace A346355.P13684785620231978377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345642 (A113929 (n + 1)).toNat

end

end A346355.P13684785620231978377

/-!
# A346358: 

The programs for A346358, there is no canonical definition to state claims against.
-/

/-! ## A346358.P12597215664221907464

`A345604(n+1)+A010052(A069066(n+4))`
-/

namespace A346358.P12597215664221907464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345604 (n + 1) + A010052 (A069066 (n + 4)).toNat

end

end A346358.P12597215664221907464

/-! ## A346358.P7627760512367571740

`A345604(n+1)+A008966(A129575(n+1))`
-/

namespace A346358.P7627760512367571740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345604 (n + 1) + A008966 (A129575 (n + 1)).toNat

end

end A346358.P7627760512367571740

/-! ## A346358.P5002626373829047653

`A014332(A259177(n+5))*A345604(n+1)`
-/

namespace A346358.P5002626373829047653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014332 (A259177 (n + 5)).toNat * A345604 (n + 1)

end

end A346358.P5002626373829047653

/-! ## A346358.P8576042170582553793

`A345604(n+1)%A104850(A357213(n+1))`
-/

namespace A346358.P8576042170582553793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345604 (n + 1)) (A104850 (A357213 (n + 1)).toNat)

end

end A346358.P8576042170582553793

/-! ## A346358.P8205648603627430912

`A345604(n+1)+A010052(A211684(2*n+1))`
-/

namespace A346358.P8205648603627430912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345604 (n + 1) + A010052 (A211684 (2 * n + 1)).toNat

end

end A346358.P8205648603627430912

/-! ## A346358.P3573546964109709320

`A345604(n+1)+A000007(A002061(n))`
-/

namespace A346358.P3573546964109709320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345604 (n + 1) + A000007 (A002061 n).toNat

end

end A346358.P3573546964109709320

/-! ## A346358.P12617975288822295442

`A133872(A000290(n))*A345604(n+1)`
-/

namespace A346358.P12617975288822295442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A000290 n).toNat * A345604 (n + 1)

end

end A346358.P12617975288822295442

/-! ## A346358.P4158478756471514481

`A345604(n+1)+A121373(A031926(n+1))`
-/

namespace A346358.P4158478756471514481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345604 (n + 1) + A121373 (A031926 (n + 1)).toNat

end

end A346358.P4158478756471514481

/-! ## A346358.P4676543528814589528

`A349447(2*(n²+3))+A345604(n+1)`
-/

namespace A346358.P4676543528814589528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (2 * (n ^ 2 + 3)) + A345604 (n + 1)

end

end A346358.P4676543528814589528

/-! ## A346358.P9994191354613237643

`A133872(A087475(n))*A345604(n+1)`
-/

namespace A346358.P9994191354613237643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A087475 n).toNat * A345604 (n + 1)

end

end A346358.P9994191354613237643

/-! ## A346358.P8349645860880193655

`A345604(n+1)+A066503(A030433(3*n+4))`
-/

namespace A346358.P8349645860880193655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345604 (n + 1) + A066503 (A030433 (3 * n + 4)).toNat

end

end A346358.P8349645860880193655

/-!
# A346360: Numbers that are the sum of six fifth powers in exactly five ways.

The programs for A346360, there is no canonical definition to state claims against.
-/

/-! ## A346360.P15553530066278514264

`A345719(∑[A010893(n)!])`
-/

namespace A346360.P15553530066278514264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010893 (n + 13)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346360.P15553530066278514264

/-!
# A346361: Numbers that are the sum of six fifth powers in exactly six ways.

The programs for A346361, there is no canonical definition to state claims against.
-/

/-! ## A346361.P315336106088573512

`A345720(A020664(n+1)%A345899(n+2))`
-/

namespace A346361.P315336106088573512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345720 (Int.tmod (A020664 (n + 1)) (A345899 (n + 2))).toNat

end

end A346361.P315336106088573512

/-! ## A346361.P14844644111633602487

`A345720(A052382(n+1)%A155173(3*n+5))`
-/

namespace A346361.P14844644111633602487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345720 (Int.tmod (A052382 (n + 1)) (A155173 (3 * n + 5))).toNat

end

end A346361.P14844644111633602487

/-! ## A346361.P5175600140229693378

`A345720(or(A020664(n+1), A028240(n)))`
-/

namespace A346361.P5175600140229693378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345720 (Int.lor (A020664 (n + 1)) (A028240 n)).toNat

end

end A346361.P5175600140229693378

/-! ## A346361.P11026755247806759073

`A345720(A020664(n+1)^A008835(n+1))`
-/

namespace A346361.P11026755247806759073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345720 (SequenceMachineLib.roundAway ((A020664 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A346361.P11026755247806759073

/-!
# A346362: Numbers that are the sum of six fifth powers in exactly seven ways.

The programs for A346362, there is no canonical definition to state claims against.
-/

/-! ## A346362.P17647865206676409193

`A345721(∑[A070242(ceil(2^(n-1)))])`
-/

namespace A346362.P17647865206676409193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345721 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346362.P17647865206676409193

/-! ## A346362.P7124094900905599710

`A345721(floor(sqrt(A345716(3*n+2))))`
-/

namespace A346362.P7124094900905599710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345721 (Int.sqrt (A345716 (3 * n + 2))).toNat

end

end A346362.P7124094900905599710

/-! ## A346362.P14452988501317079154

`∩[A345721(n+1), A345720(A350445(n+1))]`
-/

namespace A346362.P14452988501317079154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345720 (A350445 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346362.P14452988501317079154

/-!
# A346363: Numbers that are the sum of six fifth powers in exactly eight ways.

The programs for A346363, there is no canonical definition to state claims against.
-/

/-! ## A346363.P9421686800361315907

`A345722(∑[A136572(n+1)!])`
-/

namespace A346363.P9421686800361315907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A136572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345722 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346363.P9421686800361315907

/-! ## A346363.P8587578489471491776

`record[gcd(A275935(n), A345722(n+1))]`
-/

namespace A346363.P8587578489471491776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275935 n) (A345722 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346363.P8587578489471491776

/-! ## A346363.P11817241171925517928

`A345722(record[A077168(n)-A275935(n)])`
-/

namespace A346363.P11817241171925517928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n - A275935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345722 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346363.P11817241171925517928

/-!
# A346365: Numbers that are the sum of six fifth powers in exactly ten ways.

The programs for A346365, there is no canonical definition to state claims against.
-/

/-! ## A346365.P5672064292002042228

`A344196(∪[A083318(2*n), A043320(n+2)])`
-/

namespace A346365.P5672064292002042228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344196 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A346365.P5672064292002042228

/-!
# A346368: Odd numbers that can be written in a single way as 2*k^2+p, k>0, p prime.

The programs for A346368, there is no canonical definition to state claims against.
-/

/-! ## A346368.P14548562568067269182

`A005408(eq[1, A143539(n+1)])`
-/

namespace A346368.P14548562568067269182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346368.P14548562568067269182

/-! ## A346368.P2345915289238184600

`A144396(eq[1, A143539(n+1)])`
-/

namespace A346368.P2345915289238184600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346368.P2345915289238184600

/-! ## A346368.P13251681682262956287

`eq[1, A143539(A158416(n))]+1`
-/

namespace A346368.P13251681682262956287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (A158416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346368.P13251681682262956287

/-! ## A346368.P12169727021599595262

`A160144(eq[1, A143539(n+1)])`
-/

namespace A346368.P12169727021599595262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346368.P12169727021599595262

/-! ## A346368.P4671514680993150903

`A267872(eq[1, A143539(n+1)])`
-/

namespace A346368.P4671514680993150903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346368.P4671514680993150903

/-! ## A346368.P4421244877094854999

`eq[A143539(A008619(n)), A158416(n)]`
-/

namespace A346368.P4421244877094854999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (A008619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346368.P4421244877094854999

/-! ## A346368.P4791062765109970334

`A328399(A008586(eq[1, A143539(n+1)]))`
-/

namespace A346368.P4791062765109970334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A008586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A346368.P4791062765109970334

/-! ## A346368.P13000359084220377301

`A005408(eq[A101264(n)+1, A046923(n)])`
-/

namespace A346368.P13000359084220377301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346368.P13000359084220377301

/-! ## A346368.P15515484944736481516

`eq[A035363(n)+1, A143539(A008619(n))]`
-/

namespace A346368.P15515484944736481516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346368.P15515484944736481516

/-! ## A346368.P16685951023541056184

`A005408(eq[1, A046923(n)-A101264(n)])`
-/

namespace A346368.P16685951023541056184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n - A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346368.P16685951023541056184

/-!
# A346369: a(n) is the number of steps the Collatz trajectory of -n takes to reach a cycle, or -1 if no cycle is ever reached.

The programs for A346369, there is no canonical definition to state claims against.
-/

/-! ## A346369.P4054407847014728744

`1+A224183(n+1)-A224254(n+1)`
-/

namespace A346369.P4054407847014728744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A224183 (n + 1) - A224254 (n + 1)

end

end A346369.P4054407847014728744

/-! ## A346369.P11091337393493744489

`A224166(n+1)-A224254(n+1)`
-/

namespace A346369.P11091337393493744489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224166 (n + 1) - A224254 (n + 1)

end

end A346369.P11091337393493744489

/-! ## A346369.P6727913438315204621

`A224183(n+1)-A082354(A056957(n+1))`
-/

namespace A346369.P6727913438315204621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224183 (n + 1) - A082354 (A056957 (n + 1)).toNat

end

end A346369.P6727913438315204621

/-! ## A346369.P12887800375209937384

`A224183(n+1)-A002837(A224254(n+1))`
-/

namespace A346369.P12887800375209937384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224183 (n + 1) - A002837 (A224254 (n + 1)).toNat

end

end A346369.P12887800375209937384

/-! ## A346369.P1204335912077838404

`A020725(A224183(n+1))-A014321(A056957(n+1)+1)`
-/

namespace A346369.P1204335912077838404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A224183 (n + 1)).toNat - A014321 (A056957 (n + 1) + 1).toNat

end

end A346369.P1204335912077838404

/-! ## A346369.P4719499932430295926

`A020725(A224183(n+1))-A057508(A056957(n+1)+1)`
-/

namespace A346369.P4719499932430295926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A224183 (n + 1)).toNat - A057508 (A056957 (n + 1) + 1).toNat

end

end A346369.P4719499932430295926

/-! ## A346369.P4897653231004158479

`A020725(A224183(n+1))-A072796(A056957(n+1)+1)`
-/

namespace A346369.P4897653231004158479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A224183 (n + 1)).toNat - A072796 (A056957 (n + 1) + 1).toNat

end

end A346369.P4897653231004158479

/-! ## A346369.P10906656221472216070

`A020725(A224183(n+1))-A132284(A056957(n+1)+1)`
-/

namespace A346369.P10906656221472216070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A224183 (n + 1)).toNat - A132284 (A056957 (n + 1) + 1).toNat

end

end A346369.P10906656221472216070

/-! ## A346369.P6806039570548308438

`A224166(n+1)-A224166(A056957(n+1))`
-/

namespace A346369.P6806039570548308438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224166 (n + 1) - A224166 (A056957 (n + 1)).toNat

end

end A346369.P6806039570548308438

/-! ## A346369.P7608364075865114460

`(A224183(n+1)*A224254(n+1))%A224166(n+1)`
-/

namespace A346369.P7608364075865114460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224183 (n + 1) * A224254 (n + 1)) (A224166 (n + 1))

end

end A346369.P7608364075865114460

/-!
# A346370: Upper bound for the number of solutions of the TRINTUM cube puzzle n X 1 X 1 (cuboid formed by 4n + 2 parts) different by the set of parts, which are distinguished by the amount of surface area they contribute to the assembled cuboid.

The programs for A346370, the canonical program `A346370.P107775122036589245` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346370 has offset 1).

The definition of A346370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346370.P107775122036589245

`(n+3)*(floor((n+1)/2)+1)+floor(floor((n+1)/2)²/4)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346370

/-- `(n+3)*(floor((n+1)/2)+1)+floor(floor((n+1)/2)²/4)` -/
def P107775122036589245.Spec : Prop :=
  ∀ n, P107775122036589245.a n = A346370 (n + 1)

theorem P107775122036589245.correct : P107775122036589245.Spec := by
  intro n
  simp only [A346370, Nat.add_sub_cancel]

end A346370

/-! ## A346370.P8534559194900087840

`Δ[A049778(n+1)+A008804(n)]`
-/

namespace A346370.P8534559194900087840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) + A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346370.P8534559194900087840

namespace A346370

/-- `Δ[A049778(n+1)+A008804(n)]` -/
def P8534559194900087840.Spec : Prop :=
  ∀ n, P8534559194900087840.a n = A346370 (n + 1)

end A346370

/-! ## A346370.P10473851012593343284

`ceil(A132355(n+3)/4)`
-/

namespace A346370.P10473851012593343284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132355 (n + 3) : ℚ) / 4⌉

end

end A346370.P10473851012593343284

namespace A346370

/-- `ceil(A132355(n+3)/4)` -/
def P10473851012593343284.Spec : Prop :=
  ∀ n, P10473851012593343284.a n = A346370 (n + 1)

end A346370

/-! ## A346370.P4102122706076311458

`eq[A055087(n), A114731(n+1)]`
-/

namespace A346370.P4102122706076311458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346370.P4102122706076311458

namespace A346370

/-- `eq[A055087(n), A114731(n+1)]` -/
def P4102122706076311458.Spec : Prop :=
  ∀ n, (P4102122706076311458.a n : ℤ) = A346370 (n + 1)

end A346370

/-! ## A346370.P5357546934690259614

`eq[A025685(n+1), A114731(n+1)]`
-/

namespace A346370.P5357546934690259614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346370.P5357546934690259614

namespace A346370

/-- `eq[A025685(n+1), A114731(n+1)]` -/
def P5357546934690259614.Spec : Prop :=
  ∀ n, (P5357546934690259614.a n : ℤ) = A346370 (n + 1)

end A346370

/-!
# A346371: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp( Sum_{n>=0} x^(2*n+1) / (2*n+1)^2 ).

The programs for A346371, there is no canonical definition to state claims against.
-/

/-! ## A346371.P13426471735984774093

`A033726(A060350(n)-1)`
-/

namespace A346371.P13426471735984774093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033726 (A060350 n - 1).toNat

end

end A346371.P13426471735984774093

/-! ## A346371.P5396551053146382112

`A319534(A052763(A000007(n)+n))`
-/

namespace A346371.P5396551053146382112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319534 (A052763 (A000007 n + (n : ℤ)).toNat).toNat

end

end A346371.P5396551053146382112

/-!
# A346372: a(0) = 1; a(n) = n * a(n-1) + (1/n) * Sum_{k=3..n} (binomial(n,k) * k!)^2 * a(n-k) / k.

The programs for A346372, there is no canonical definition to state claims against.
-/

/-! ## A346372.P2666075206474024406

`A237821(A358831(n))+A027082(2*n+1)`
-/

namespace A346372.P2666075206474024406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (A358831 n).toNat + A027082 (2 * n + 1)

end

end A346372.P2666075206474024406

/-!
# A346373: Lowest edge indices of an edge-connected n-gon chain (beginning with n = 3, and increasing by one for each subsequent n-gon), such that no n-gons in the sequence overlap.

The programs for A346373, there is no canonical definition to state claims against.
-/

/-! ## A346373.P9554828003368601016

`A005369(A069466(n))-∑[and(1, n)-1]`
-/

namespace A346373.P9554828003368601016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A069466 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346373.P9554828003368601016

/-! ## A346373.P17285539060650698768

`A101264(A091461(n+1))+floor(n/2)+1`
-/

namespace A346373.P17285539060650698768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A091461 (n + 1)).toNat + (⌊(n : ℚ) / 2⌋ + 1)

end

end A346373.P17285539060650698768

/-! ## A346373.P3574392607232635144

`A008619(n)+A005369(A069466(n))`
-/

namespace A346373.P3574392607232635144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A005369 (A069466 n).toNat

end

end A346373.P3574392607232635144

/-! ## A346373.P2924699675138186531

`A241216(or(A013915(n), A250120(n)))`
-/

namespace A346373.P2924699675138186531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (Int.lor (A013915 n) (A250120 n)).toNat

end

end A346373.P2924699675138186531

/-! ## A346373.P11936916222326010961

`A064911(A206734(n+1))+A008619(n)`
-/

namespace A346373.P11936916222326010961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A206734 (n + 1)).toNat + A008619 n

end

end A346373.P11936916222326010961

/-!
# A346374: a(n) = f(n,n) where f(0,n) = f(n,0) = n! and f(m,n) = f(m-1,n) + f(m,n-1) + f(m-1,n-1).

The programs for A346374, there is no canonical definition to state claims against.
-/

/-! ## A346374.P11419415635640918762

`A285533(n+5)+A253550(A214764(n))`
-/

namespace A346374.P11419415635640918762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (n + 5) + A253550 (A214764 n).toNat

end

end A346374.P11419415635640918762

/-!
# A346375: a(n) = Sum_{k=0..n} (2^k + 2) * (2^k + 3) / 2.

The programs for A346375, the canonical program `A346375.P17046495757717016596` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346375 has offset 0).

The definition of A346375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346375.P17046495757717016596

`(2^(n+1)+7)*(2^(n+1)+8)/6-9+3*n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346375

/-- `(2^(n+1)+7)*(2^(n+1)+8)/6-9+3*n` -/
def P17046495757717016596.Spec : Prop :=
  ∀ n, P17046495757717016596.a n = (A346375 n : ℚ)

end A346375

/-! ## A346375.P4289612704119837626

`∑[A256873(n)+3]`
-/

namespace A346375.P4289612704119837626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346375.P4289612704119837626

namespace A346375

/-- `∑[A256873(n)+3]` -/
def P4289612704119837626.Spec : Prop :=
  ∀ n, P4289612704119837626.a n = A346375 n

end A346375

/-! ## A346375.P8476089741931852572

`∑[C(2^n+3, 2)]`
-/

namespace A346375.P8476089741931852572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346375.P8476089741931852572

namespace A346375

/-- `∑[C(2^n+3, 2)]` -/
def P8476089741931852572.Spec : Prop :=
  ∀ n, (P8476089741931852572.a n : ℤ) = A346375 n

end A346375

/-! ## A346375.P11763676615205640316

`∑[A000217(A052548(n))]`
-/

namespace A346375.P11763676615205640316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A052548 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346375.P11763676615205640316

namespace A346375

/-- `∑[A000217(A052548(n))]` -/
def P11763676615205640316.Spec : Prop :=
  ∀ n, P11763676615205640316.a n = A346375 n

end A346375

/-! ## A346375.P11055180646658015317

`∑[A000217(A000051(n)+1)]`
-/

namespace A346375.P11055180646658015317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000051 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346375.P11055180646658015317

namespace A346375

/-- `∑[A000217(A000051(n)+1)]` -/
def P11055180646658015317.Spec : Prop :=
  ∀ n, P11055180646658015317.a n = A346375 n

end A346375

/-!
# A346376: a(n) = n^4 + 14*n^3 + 63*n^2 + 98*n + 28.

The programs for A346376, the canonical program `A346376.P13938062219412248412` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346376 has offset 0).

The definition of A346376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+14*n^3+63*n²+98*n+28` (program `A346376.P13938062219412248412`, by `A346376.P13938062219412248412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346376.P13938062219412248412

`n^4+14*n^3+63*n²+98*n+28`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346376

/-- `n^4+14*n^3+63*n²+98*n+28` -/
def P13938062219412248412.Spec : Prop :=
  ∀ n, (P13938062219412248412.a n : ℤ) = A346376 n

theorem P13938062219412248412.correct : P13938062219412248412.Spec := by
  intro n
  simp only [A346376]

end A346376

/-! ## A346376.P9746375967257584164

`xor(1, A028387(n+4)*A028387(n))`
-/

namespace A346376.P9746375967257584164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A028387 (n + 4) * A028387 n)

end

end A346376.P9746375967257584164

namespace A346376

/-- `xor(1, A028387(n+4)*A028387(n))` -/
def P9746375967257584164.Spec : Prop :=
  ∀ n, P9746375967257584164.a n = A346376 n

end A346376

/-! ## A346376.P1971632251769626426

`A346514(2*n)/16`
-/

namespace A346376.P1971632251769626426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346514 (2 * n) : ℚ) / 16

end

end A346376.P1971632251769626426

namespace A346376

/-- `A346514(2*n)/16` -/
def P1971632251769626426.Spec : Prop :=
  ∀ n, P1971632251769626426.a n = (A346376 n : ℚ)

theorem P1971632251769626426.correct : P1971632251769626426.Spec := by
  intro n
  simp only [A346376, Nat.add_sub_cancel, A346376.P1971632251769626426.a, A346376.P13938062219412248412.a, A346514, A346514.P8672318407264149710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A346376

/-! ## A346376.P10906359152328796669

`4*A082111(∑[n+3]-2)`
-/

namespace A346376.P10906359152328796669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082111 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A346376.P10906359152328796669

namespace A346376

/-- `4*A082111(∑[n+3]-2)` -/
def P10906359152328796669.Spec : Prop :=
  ∀ n, P10906359152328796669.a n = A346376 n

end A346376

/-! ## A346376.P10231949371818747949

`lcm(4, A082111(A052905(n)))`
-/

namespace A346376.P10231949371818747949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A082111 (A052905 n).toNat)

end

end A346376.P10231949371818747949

namespace A346376

/-- `lcm(4, A082111(A052905(n)))` -/
def P10231949371818747949.Spec : Prop :=
  ∀ n, (P10231949371818747949.a n : ℤ) = A346376 n

end A346376

/-!
# A346377: a(n) is the number of solutions k to A075254(k) = n.

The programs for A346377, there is no canonical definition to state claims against.
-/

/-! ## A346377.P12705404049799760499

`A105593(A278232(n+2))`
-/

namespace A346377.P12705404049799760499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105593 (A278232 (n + 2)).toNat

end

end A346377.P12705404049799760499

/-! ## A346377.P2996137422460944054

`A217522(A278232(n+2)+1)`
-/

namespace A346377.P2996137422460944054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217522 (A278232 (n + 2) + 1).toNat

end

end A346377.P2996137422460944054

/-! ## A346377.P5257705868477673690

`A340928(∑[A328578(A017185(n))])`
-/

namespace A346377.P5257705868477673690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340928 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346377.P5257705868477673690

/-! ## A346377.P14805420179687668101

`and(A004736(n+1), A322362(A326303(n)))`
-/

namespace A346377.P14805420179687668101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (n + 1)) (A322362 (A326303 n).toNat)

end

end A346377.P14805420179687668101

/-! ## A346377.P12782520817747788873

`A372584(A377123(n+1))`
-/

namespace A346377.P12782520817747788873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372584 (A377123 (n + 1)).toNat

end

end A346377.P12782520817747788873

/-!
# A346378: a(n) is the least k such that there are exactly n numbers i with A075254(i) = k.

The programs for A346378, there is no canonical definition to state claims against.
-/

/-! ## A346378.P8887721444530145291

`A306229(lcm(A005517(n+1), A098558(n)))`
-/

namespace A346378.P8887721444530145291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (Int.lcm (A005517 (n + 1)) (A098558 n))

end

end A346378.P8887721444530145291

/-!
# A346379: The least k such that the number of real roots of Sum_{i=0..j} (i+1)^k*x^i is j for j = 0,1,...,n or -1 if no solution for this n exists.

The programs for A346379, there is no canonical definition to state claims against.
-/

/-! ## A346379.P16891646037171005788

`∑[A082767(n+1)%A154768(A320356(n))]`
-/

namespace A346379.P16891646037171005788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082767 (n + 1)) (A154768 (A320356 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346379.P16891646037171005788

/-! ## A346379.P518696431092682363

`A003056(∑[A063523(n)]-n)`
-/

namespace A346379.P518696431092682363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A346379.P518696431092682363

/-! ## A346379.P9866285145088749921

`∑[A198082(n)%A084121(n+1)]`
-/

namespace A346379.P9866285145088749921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198082 n) (A084121 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346379.P9866285145088749921

/-! ## A346379.P160581177074197563

`∑[A052382(2*n+1)%A089323(n+1)]`
-/

namespace A346379.P160581177074197563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052382 (2 * n + 1)) (A089323 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346379.P160581177074197563

/-! ## A346379.P8515519876680715164

`∑[A067251(2*n+1)%A192744(2*n)]`
-/

namespace A346379.P8515519876680715164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067251 (2 * n + 1)) (A192744 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346379.P8515519876680715164

/-!
# A346380: Complement of A187430 in A000108.

The programs for A346380, there is no canonical definition to state claims against.
-/

/-! ## A346380.P3719240504411029509

`A123880(C(n, 2)+1)`
-/

namespace A346380.P3719240504411029509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123880 (Nat.choose n 2 + 1)

end

end A346380.P3719240504411029509

/-! ## A346380.P3880767591502558942

`A123880(∑[abs(1-n)])`
-/

namespace A346380.P3880767591502558942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123880 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346380.P3880767591502558942

/-! ## A346380.P11044998537786205779

`A120588(n)-A187430(A259361(n²))`
-/

namespace A346380.P11044998537786205779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - A187430 (A259361 (n ^ 2)).toNat

end

end A346380.P11044998537786205779

/-! ## A346380.P2816993607221920108

`abs(A115140(n))-A187430(A259361(n²))`
-/

namespace A346380.P2816993607221920108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n| - A187430 (A259361 (n ^ 2)).toNat

end

end A346380.P2816993607221920108

/-! ## A346380.P14266284790427917132

`A028304(A004275(n))-A187430(A259361(n²))`
-/

namespace A346380.P14266284790427917132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A004275 n).toNat - A187430 (A259361 (n ^ 2)).toNat

end

end A346380.P14266284790427917132

/-!
# A346382: Smallest k such that sum of first k primes has exactly n distinct prime divisors.

The programs for A346382, there is no canonical definition to state claims against.
-/

/-! ## A346382.P16175676433256784483

`A006530(or(A055999(n), A204554(n+1)))`
-/

namespace A346382.P16175676433256784483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (A055999 n) (A204554 (n + 1))).toNat

end

end A346382.P16175676433256784483

/-! ## A346382.P8151832874626057050

`A006530(or(A204554(n+1), A289260(n)))`
-/

namespace A346382.P8151832874626057050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (A204554 (n + 1)) (A289260 n)).toNat

end

end A346382.P8151832874626057050

/-!
# A346385: a(n) = f(n,n) where f(0,n) = f(n,0) = n^n and f(m,n) = f(m-1,n) + f(m,n-1) + f(m-1,n-1).

The programs for A346385, there is no canonical definition to state claims against.
-/

/-! ## A346385.P14584509428111747850

`or(n+1, ∑[A195120(A001079(n))])`
-/

namespace A346385.P14584509428111747850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A001079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346385.P14584509428111747850

/-!
# A346386: Triangular numbers that are sum of squares of two distinct triangular numbers.

The programs for A346386, there is no canonical definition to state claims against.
-/

/-! ## A346386.P6262198966252882312

`A000217(lt[A181803(n+1), A330316(n)])`
-/

namespace A346386.P6262198966252882312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346386.P6262198966252882312

/-! ## A346386.P7387437143342684738

`∩[A289520(n+1), A324600(n+1)]`
-/

namespace A346386.P7387437143342684738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346386.P7387437143342684738

/-!
# A346388: a(n) is the number of proper divisors of A053742(n) ending with 5.

The programs for A346388, there is no canonical definition to state claims against.
-/

/-! ## A346388.P4713337927017802307

`A346392(A053742(n))`
-/

namespace A346388.P4713337927017802307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A053742 n).toNat

end

end A346388.P4713337927017802307

/-! ## A346388.P11546458955661893423

`∑{d}[10*n+5, floor(atan(#))]`
-/

namespace A346388.P11546458955661893423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋

end

end A346388.P11546458955661893423

/-! ## A346388.P15997412770961944635

`∏{e}[10*n+5, #+1]-1`
-/

namespace A346388.P15997412770961944635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A346388.P15997412770961944635

/-! ## A346388.P8068950149959652594

`∑{d}[10*n+5, ceil(acot(#))]-1`
-/

namespace A346388.P8068950149959652594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ - 1

end

end A346388.P8068950149959652594

/-! ## A346388.P4773328780905682941

`∑{d}[10*n+5, 2%(#+1)]/2`
-/

namespace A346388.P4773328780905682941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 2 % (d + 1) : ℕ) : ℚ) / 2

end

end A346388.P4773328780905682941

/-! ## A346388.P10505077137869755791

`A325765(10*n+4)`
-/

namespace A346388.P10505077137869755791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (10 * n + 4)

end

end A346388.P10505077137869755791

/-! ## A346388.P15981661722177035005

`A023645(10*n+5)`
-/

namespace A346388.P15981661722177035005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (10 * n + 5)

end

end A346388.P15981661722177035005

/-! ## A346388.P10367518710233597777

`A372785(Δ[n²])-1`
-/

namespace A346388.P10367518710233597777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A346388.P10367518710233597777

/-! ## A346388.P13304385451136658614

`A032741(5*(2*n+1))`
-/

namespace A346388.P13304385451136658614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (5 * (2 * n + 1))

end

end A346388.P13304385451136658614

/-! ## A346388.P10564803146191663827

`A069283(5*(2*n+1))`
-/

namespace A346388.P10564803146191663827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (5 * (2 * n + 1))

end

end A346388.P10564803146191663827

/-!
# A346389: a(n) is the number of proper divisors of A324297(n) ending with 6.

The programs for A346389, there is no canonical definition to state claims against.
-/

/-! ## A346389.P11662359085128762615

`A346392(A324297(n+1))`
-/

namespace A346389.P11662359085128762615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A324297 (n + 1)).toNat

end

end A346389.P11662359085128762615

/-! ## A346389.P2982350627538736142

`A330348(A324297(-xor(n, -1)))-1`
-/

namespace A346389.P2982350627538736142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A324297 (-Int.xor (n : ℤ) (-1)).toNat).toNat - 1

end

end A346389.P2982350627538736142

/-! ## A346389.P18143563816199462122

`A330348(A324297(Δ[n²]-n))-1`
-/

namespace A346389.P18143563816199462122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A324297 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A346389.P18143563816199462122

/-! ## A346389.P3124459396798641596

`A346392(A017341(A324298(n+1)))`
-/

namespace A346389.P3124459396798641596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A017341 (A324298 (n + 1)).toNat).toNat

end

end A346389.P3124459396798641596

/-! ## A346389.P2333702955346020908

`(A330348(A324297(n+1))-1)%A040134(n)`
-/

namespace A346389.P2333702955346020908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330348 (A324297 (n + 1)).toNat - 1) (A040134 n)

end

end A346389.P2333702955346020908

/-! ## A346389.P3265122791261870843

`A330348(A324297(n+1))%A002623(n+1)-1`
-/

namespace A346389.P3265122791261870843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330348 (A324297 (n + 1)).toNat) (A002623 (n + 1)) - 1

end

end A346389.P3265122791261870843

/-! ## A346389.P11227397931563699015

`A330348(A324297(n+1))+A014963(10*(n+1))-2`
-/

namespace A346389.P11227397931563699015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A324297 (n + 1)).toNat + A014963 (10 * (n + 1)) - 2

end

end A346389.P11227397931563699015

/-! ## A346389.P2030299222690294502

`A330348(A324297(n+1))+1-A036453((n+1)²+1)`
-/

namespace A346389.P2030299222690294502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A324297 (n + 1)).toNat + 1 - A036453 ((n + 1) ^ 2 + 1)

end

end A346389.P2030299222690294502

/-!
# A346390: Expansion of e.g.f. -log( 1 - (exp(x) - 1)^3 / 3! ).

The programs for A346390, there is no canonical definition to state claims against.
-/

/-! ## A346390.P25844585514814602

`A004183(record[A327504(n)])`
-/

namespace A346390.P25844585514814602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346390.P25844585514814602

/-! ## A346390.P4038503373744727817

`A004184(record[A327504(n)])`
-/

namespace A346390.P4038503373744727817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346390.P4038503373744727817

/-!
# A346391: Number of permutations f of {1,...,n} with f(n) = n and f(n-1) > f(1) such that f(1)*f(2) + ... + f(n-1)*f(n) + f(n)*f(1) == 0 (mod n^2).

The programs for A346391, there is no canonical definition to state claims against.
-/

/-! ## A346391.P7593094387948303411

`A047312(2*C(3*n, n)/(n+1))%A056333(n+1)`
-/

namespace A346391.P7593094387948303411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047312 (SequenceMachineLib.roundAway (2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)))).toNat) (A056333 (n + 1))

end

end A346391.P7593094387948303411

/-! ## A346391.P9446749646094100215

`lcm(A000034(n), A332548(A335788(n)))`
-/

namespace A346391.P9446749646094100215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A332548 (A335788 n).toNat)

end

end A346391.P9446749646094100215

/-! ## A346391.P4984364306857584150

`and(A000244(n), A163575(A000260(n)))`
-/

namespace A346391.P4984364306857584150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000244 n) (A163575 (A000260 n).toNat)

end

end A346391.P4984364306857584150

/-!
# A346392: a(n) is the number of proper divisors of n ending with the same digit as n.

The programs for A346392, there is no canonical definition to state claims against.
-/

/-! ## A346392.P10568496056566256213

`A330348(n+1)-1`
-/

namespace A346392.P10568496056566256213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (n + 1) - 1

end

end A346392.P10568496056566256213

/-! ## A346392.P5620292981848974738

`A023443(A330348(n+1))`
-/

namespace A346392.P5620292981848974738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A330348 (n + 1)).toNat

end

end A346392.P5620292981848974738

/-! ## A346392.P16419580074396461721

`A289207(A330348(n+1)+1)`
-/

namespace A346392.P16419580074396461721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A330348 (n + 1) + 1).toNat

end

end A346392.P16419580074396461721

/-! ## A346392.P10350113070457827746

`A059169(4*A330348(n+1))`
-/

namespace A346392.P10350113070457827746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A330348 (n + 1)).toNat

end

end A346392.P10350113070457827746

/-! ## A346392.P17258197214074848108

`A081331(A330348(n+1)%A001000(3*n+1))`
-/

namespace A346392.P17258197214074848108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081331 (Int.tmod (A330348 (n + 1)) (A001000 (3 * n + 1))).toNat

end

end A346392.P17258197214074848108

/-! ## A346392.P17651505117492340899

`A023645(2^A330348(n+1))`
-/

namespace A346392.P17651505117492340899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A330348 (n + 1) : ℤ))).toNat

end

end A346392.P17651505117492340899

/-! ## A346392.P8648749927775205972

`A046660(2^A330348(n+1))`
-/

namespace A346392.P8648749927775205972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A330348 (n + 1) : ℤ))).toNat

end

end A346392.P8648749927775205972

/-! ## A346392.P15462290648269206044

`A074494(n+1)%A330348(n+1)`
-/

namespace A346392.P15462290648269206044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074494 (n + 1)) (A330348 (n + 1))

end

end A346392.P15462290648269206044

/-! ## A346392.P6752816308027973444

`A070198(n)%A330348(n+1)`
-/

namespace A346392.P6752816308027973444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A330348 (n + 1))

end

end A346392.P6752816308027973444

/-! ## A346392.P17908595659729556833

`A346393(A330348(n+1))+A008683(A002146(n))`
-/

namespace A346392.P17908595659729556833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346393 (A330348 (n + 1)).toNat + A008683 (A002146 n).toNat

end

end A346392.P17908595659729556833

/-! ## A346392.P50795532081090554

`A030494(n+1)%A330348(n+1)`
-/

namespace A346392.P50795532081090554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A330348 (n + 1))

end

end A346392.P50795532081090554

/-! ## A346392.P7915821790194000706

`∑{d}[A330348(n+1)², A053867(A010049(#))]`
-/

namespace A346392.P7915821790194000706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A053867 (A010049 d).toNat

end

end A346392.P7915821790194000706

/-!
# A346394: Expansion of e.g.f. -log(1 - x) * exp(2*x).

The programs for A346394, the canonical program `A346394.P5795565589027397891` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346394 has offset 0).

The definition of A346394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346394.P5795565589027397891

`(n+1)*a(n-1)-2*(n-1)*a(n-2)+2^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346394

/-- `(n+1)*a(n-1)-2*(n-1)*a(n-2)+2^(n-1)` -/
def P5795565589027397891.Spec : Prop :=
  ∀ n, P5795565589027397891.a n = (A346394 n : ℚ)

end A346394

/-! ## A346394.P15572453113317212522

`lcm(A137346(A000124(n)), A330634(n))`
-/

namespace A346394.P15572453113317212522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137346 (A000124 n).toNat) (A330634 n)

end

end A346394.P15572453113317212522

namespace A346394

/-- `lcm(A137346(A000124(n)), A330634(n))` -/
def P15572453113317212522.Spec : Prop :=
  ∀ n, (P15572453113317212522.a n : ℤ) = A346394 n

end A346394

/-!
# A346395: Expansion of e.g.f. -log(1 - x) * exp(3*x).

The programs for A346395, the canonical program `A346395.P7708605795867381827` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346395 has offset 0).

The definition of A346395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346395.P7708605795867381827

`(n+2)*a(n-1)-3*(n-1)*a(n-2)+3^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346395

/-- `(n+2)*a(n-1)-3*(n-1)*a(n-2)+3^(n-1)` -/
def P7708605795867381827.Spec : Prop :=
  ∀ n, P7708605795867381827.a n = (A346395 n : ℚ)

end A346395

/-! ## A346395.P34353132061229078

`A327997(A000124(n))%(7^n)`
-/

namespace A346395.P34353132061229078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327997 (A000124 n).toNat) (7 ^ n : ℤ)

end

end A346395.P34353132061229078

namespace A346395

/-- `A327997(A000124(n))%(7^n)` -/
def P34353132061229078.Spec : Prop :=
  ∀ n, P34353132061229078.a n = A346395 n

end A346395

/-! ## A346395.P10305330432825938464

`A057427(n)*A327997(A000124(n))`
-/

namespace A346395.P10305330432825938464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327997 (A000124 n).toNat

end

end A346395.P10305330432825938464

namespace A346395

/-- `A057427(n)*A327997(A000124(n))` -/
def P10305330432825938464.Spec : Prop :=
  ∀ n, P10305330432825938464.a n = A346395 n

end A346395

/-! ## A346395.P4987400188148915047

`A178334(n)*A327997(A000124(n))`
-/

namespace A346395.P4987400188148915047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A327997 (A000124 n).toNat

end

end A346395.P4987400188148915047

namespace A346395

/-- `A178334(n)*A327997(A000124(n))` -/
def P4987400188148915047.Spec : Prop :=
  ∀ n, P4987400188148915047.a n = A346395 n

end A346395

/-! ## A346395.P7593433960417228264

`A178489(n)*A327997(A000124(n))`
-/

namespace A346395.P7593433960417228264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A327997 (A000124 n).toNat

end

end A346395.P7593433960417228264

namespace A346395

/-- `A178489(n)*A327997(A000124(n))` -/
def P7593433960417228264.Spec : Prop :=
  ∀ n, P7593433960417228264.a n = A346395 n

end A346395

/-!
# A346396: Expansion of e.g.f. -log(1 - x) * exp(4*x).

The programs for A346396, the canonical program `A346396.P1983618304781826940` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346396 has offset 0).

The definition of A346396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346396.P1983618304781826940

`(n+3)*a(n-1)-4*(n-1)*a(n-2)+4^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346396

/-- `(n+3)*a(n-1)-4*(n-1)*a(n-2)+4^(n-1)` -/
def P1983618304781826940.Spec : Prop :=
  ∀ n, P1983618304781826940.a n = (A346396 n : ℚ)

end A346396

/-!
# A346397: Expansion of e.g.f. -log(1 - x) * exp(-2*x).

The programs for A346397, the canonical program `A346397.P7735238271287352728` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346397 has offset 0).

The definition of A346397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346397.P7735238271287352728

`(n-3)*a(n-1)+2*(n-1)*a(n-2)+(-2)^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346397

/-- `(n-3)*a(n-1)+2*(n-1)*a(n-2)+(-2)^(n-1)` -/
def P7735238271287352728.Spec : Prop :=
  ∀ n, P7735238271287352728.a n = (A346397 n : ℚ)

end A346397

/-! ## A346397.P7482054938590587878

`A134833(n)-A122803(n)`
-/

namespace A346397.P7482054938590587878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134833 n - A122803 n

end

end A346397.P7482054938590587878

namespace A346397

/-- `A134833(n)-A122803(n)` -/
def P7482054938590587878.Spec : Prop :=
  ∀ n, P7482054938590587878.a n = A346397 n

end A346397

/-! ## A346397.P6979936184722975171

`A134833(n)+Δ[A140966(n)]`
-/

namespace A346397.P6979936184722975171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134833 n + (f1 (n + 1) - f1 n)

end

end A346397.P6979936184722975171

namespace A346397

/-- `A134833(n)+Δ[A140966(n)]` -/
def P6979936184722975171.Spec : Prop :=
  ∀ n, P6979936184722975171.a n = A346397 n

end A346397

/-! ## A346397.P12579035349573005789

`A134833(n)+Δ[A091000(n)-A091002(n)]`
-/

namespace A346397.P12579035349573005789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091000 n - A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134833 n + (f1 (n + 1) - f1 n)

end

end A346397.P12579035349573005789

namespace A346397

/-- `A134833(n)+Δ[A091000(n)-A091002(n)]` -/
def P12579035349573005789.Spec : Prop :=
  ∀ n, P12579035349573005789.a n = A346397 n

end A346397

/-! ## A346397.P8397369222897650093

`A134833(n)+A335111(n)-A000023(n)`
-/

namespace A346397.P8397369222897650093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134833 n + (A335111 n - A000023 n)

end

end A346397.P8397369222897650093

namespace A346397

/-- `A134833(n)+A335111(n)-A000023(n)` -/
def P8397369222897650093.Spec : Prop :=
  ∀ n, P8397369222897650093.a n = A346397 n

end A346397

/-! ## A346397.P2679119276609712430

`A335111(n)-(A134833(n+1)+A134833(n))`
-/

namespace A346397.P2679119276609712430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335111 n - (A134833 (n + 1) + A134833 n)

end

end A346397.P2679119276609712430

namespace A346397

/-- `A335111(n)-(A134833(n+1)+A134833(n))` -/
def P2679119276609712430.Spec : Prop :=
  ∀ n, P2679119276609712430.a n = A346397 n

end A346397

/-!
# A346398: Expansion of e.g.f. -log(1 - x) * exp(-3*x).

The programs for A346398, the canonical program `A346398.P6126924396964523470` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346398 has offset 0).

The definition of A346398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346398.P6126924396964523470

`(n-4)*a(n-1)+3*(n-1)*a(n-2)+(-3)^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A346398

/-- `(n-4)*a(n-1)+3*(n-1)*a(n-2)+(-3)^(n-1)` -/
def P6126924396964523470.Spec : Prop :=
  ∀ n, P6126924396964523470.a n = (A346398 n : ℚ)

end A346398

/-!
# A346399: a(n) is the number of symmetrically distributed consecutive primes centered at n (including n itself if n is prime).

The programs for A346399, there is no canonical definition to state claims against.
-/

/-! ## A346399.P15128319538305069898

`A035026(n+1)-2*A279103(n+1)`
-/

namespace A346399.P15128319538305069898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) - 2 * A279103 (n + 1)

end

end A346399.P15128319538305069898

/-! ## A346399.P14551130106880888324

`A035026(n+1)-A005843(A279103(n+1))`
-/

namespace A346399.P14551130106880888324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) - A005843 (A279103 (n + 1)).toNat

end

end A346399.P14551130106880888324

/-! ## A346399.P9564498234185748810

`floor(sqrt(4*(A279315(n+1)+char[1])+1))-1`
-/

namespace A346399.P9564498234185748810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (4 * (A279315 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 1) - 1

end

end A346399.P9564498234185748810

/-! ## A346399.P2962318139244715814

`A055086(A279315(n+1)+char[1])`
-/

namespace A346399.P2962318139244715814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A279315 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A346399.P2962318139244715814

/-! ## A346399.P16725506343148963166

`A276581(A279315(n+1)+char[1])`
-/

namespace A346399.P16725506343148963166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A279315 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A346399.P16725506343148963166

/-! ## A346399.P11384270226238571770

`∑{d}[A279315(n+1)+char[1], A344879(#)]`
-/

namespace A346399.P11384270226238571770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279315 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344879 d

end

end A346399.P11384270226238571770

/-! ## A346399.P2378996946655716224

`A063524(n)+A055086(A279315(n+1))`
-/

namespace A346399.P2378996946655716224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A055086 (A279315 (n + 1)).toNat

end

end A346399.P2378996946655716224

/-! ## A346399.P13332821238548877065

`A055086(A279315(n+1))-A159075(n)`
-/

namespace A346399.P13332821238548877065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A279315 (n + 1)).toNat - A159075 n

end

end A346399.P13332821238548877065

/-! ## A346399.P13259533234536297831

`A003056(2*(A279315(n+1)-A159075(n)))`
-/

namespace A346399.P13259533234536297831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * (A279315 (n + 1) - A159075 n)).toNat

end

end A346399.P13259533234536297831

/-! ## A346399.P16270084025568319446

`A055086(or(A010051(n+1), A279315(n+1)))`
-/

namespace A346399.P16270084025568319446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A010051 (n + 1)) (A279315 (n + 1))).toNat

end

end A346399.P16270084025568319446

