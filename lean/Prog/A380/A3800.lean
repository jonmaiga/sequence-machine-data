import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A380001: Fixed points of A378299.

The programs for A380001, the canonical program `A380001.P16133234715623773460` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380001 has offset 0).

The definition of A380001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380001.P16038651189370550348

`ogf((x+4x^2)/(1-9x+8x^2))`
-/

namespace A380001.P16038651189370550348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -9, 8] n

end

end A380001.P16038651189370550348

namespace A380001

/-- `ogf((x+4x^2)/(1-9x+8x^2))` -/
def P16038651189370550348.Spec : Prop :=
  ∀ n, P16038651189370550348.a n = A380001 n

end A380001

/-! ## A380001.P16133234715623773460

`8*a(n-1)+5` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380001

/-- `8*a(n-1)+5` -/
def P16133234715623773460.Spec : Prop :=
  ∀ n, (P16133234715623773460.a n : ℤ) = A380001 n

theorem P16133234715623773460.correct : P16133234715623773460.Spec := by
  intro n
  simp only [A380001]

end A380001

/-! ## A380001.P17632100782280252625

`lcm(8, a(n-1))+5` with `a(0)=0, a(1)=1`
-/

namespace A380001.P17632100782280252625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 5

end

end A380001.P17632100782280252625

namespace A380001

/-- `lcm(8, a(n-1))+5` -/
def P17632100782280252625.Spec : Prop :=
  ∀ n, (P17632100782280252625.a n : ℤ) = A380001 n

end A380001

/-! ## A380001.P10685454734384009140

`or(5, 8*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A380001.P10685454734384009140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lor 5 (8 * a (n - 1))

end

end A380001.P10685454734384009140

namespace A380001

/-- `or(5, 8*a(n-1))` -/
def P10685454734384009140.Spec : Prop :=
  ∀ n, (P10685454734384009140.a n : ℤ) = A380001 n

end A380001

/-! ## A380001.P16316885625689705956

`xor(5, 8*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A380001.P16316885625689705956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 5 (8 * a (n - 1))

end

end A380001.P16316885625689705956

namespace A380001

/-- `xor(5, 8*a(n-1))` -/
def P16316885625689705956.Spec : Prop :=
  ∀ n, (P16316885625689705956.a n : ℤ) = A380001 n

end A380001

/-! ## A380001.P2695023889746814615

`∑[8*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A380001.P2695023889746814615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 12] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380001.P2695023889746814615

namespace A380001

/-- `∑[8*a(n-1)]` -/
def P2695023889746814615.Spec : Prop :=
  ∀ n, (P2695023889746814615.a n : ℤ) = A380001 n

end A380001

/-! ## A380001.P10917719474905064493

`floor(A083713(n)/2)`
-/

namespace A380001.P10917719474905064493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083713 n : ℚ) / 2⌋

end

end A380001.P10917719474905064493

namespace A380001

/-- `floor(A083713(n)/2)` -/
def P10917719474905064493.Spec : Prop :=
  ∀ n, P10917719474905064493.a n = A380001 n

end A380001

/-! ## A380001.P3061942482658838778

`∑[A206917(2*n+1)]-A206917(2*n+1)`
-/

namespace A380001.P3061942482658838778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A206917 (2 * n + 1)

end

end A380001.P3061942482658838778

namespace A380001

/-- `∑[A206917(2*n+1)]-A206917(2*n+1)` -/
def P3061942482658838778.Spec : Prop :=
  ∀ n, P3061942482658838778.a n = A380001 n

end A380001

/-!
# A380007: Hexagonal numbers that are sphenic numbers.

The programs for A380007, the canonical program `A380007.P11055340700919016870` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380007 has offset 1).

The definition of A380007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380007.P11055340700919016870

`∩[A128896(n+1), A000384(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A380007

/-- `∩[A128896(n+1), A000384(n)]` -/
def P11055340700919016870.Spec : Prop :=
  ∀ n, (P11055340700919016870.a n : ℤ) = A380007 (n + 1)

theorem P11055340700919016870.correct : P11055340700919016870.Spec := by
  intro n
  simp only [A380007, Nat.add_sub_cancel]

end A380007

/-! ## A380007.P13406860642569393222

`∩[A128896(n+1), A084265(n)]`
-/

namespace A380007.P13406860642569393222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P13406860642569393222

namespace A380007

/-- `∩[A128896(n+1), A084265(n)]` -/
def P13406860642569393222.Spec : Prop :=
  ∀ n, (P13406860642569393222.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P3782527195165472279

`∩[A128896(n+1), A260699(n)]`
-/

namespace A380007.P3782527195165472279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P3782527195165472279

namespace A380007

/-- `∩[A128896(n+1), A260699(n)]` -/
def P3782527195165472279.Spec : Prop :=
  ∀ n, (P3782527195165472279.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P9803753450932029867

`∩[A128896(n+1), A265225(n)]`
-/

namespace A380007.P9803753450932029867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P9803753450932029867

namespace A380007

/-- `∩[A128896(n+1), A265225(n)]` -/
def P9803753450932029867.Spec : Prop :=
  ∀ n, (P9803753450932029867.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P1546720128210584099

`∩[A128896(n+1), A266304(n)]`
-/

namespace A380007.P1546720128210584099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P1546720128210584099

namespace A380007

/-- `∩[A128896(n+1), A266304(n)]` -/
def P1546720128210584099.Spec : Prop :=
  ∀ n, (P1546720128210584099.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P10243563808104641377

`∩[A128896(n+1), A266665(n)]`
-/

namespace A380007.P10243563808104641377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P10243563808104641377

namespace A380007

/-- `∩[A128896(n+1), A266665(n)]` -/
def P10243563808104641377.Spec : Prop :=
  ∀ n, (P10243563808104641377.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P14037445699718605422

`∩[A128896(n+1), A267353(n)]`
-/

namespace A380007.P14037445699718605422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P14037445699718605422

namespace A380007

/-- `∩[A128896(n+1), A267353(n)]` -/
def P14037445699718605422.Spec : Prop :=
  ∀ n, (P14037445699718605422.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P15693532469588392062

`∩[A031940(n+1), A128896(n+1)]`
-/

namespace A380007.P15693532469588392062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P15693532469588392062

namespace A380007

/-- `∩[A031940(n+1), A128896(n+1)]` -/
def P15693532469588392062.Spec : Prop :=
  ∀ n, (P15693532469588392062.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P7191373500741227907

`∩[A093005(n+1), A128896(n+1)]`
-/

namespace A380007.P7191373500741227907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P7191373500741227907

namespace A380007

/-- `∩[A093005(n+1), A128896(n+1)]` -/
def P7191373500741227907.Spec : Prop :=
  ∀ n, (P7191373500741227907.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P566076369407008163

`∩[A075875(n+1), A324973(n+1)]`
-/

namespace A380007.P566076369407008163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P566076369407008163

namespace A380007

/-- `∩[A075875(n+1), A324973(n+1)]` -/
def P566076369407008163.Spec : Prop :=
  ∀ n, (P566076369407008163.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P15922538465852571623

`∩[A128896(n+1), A324973(n+1)]`
-/

namespace A380007.P15922538465852571623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P15922538465852571623

namespace A380007

/-- `∩[A128896(n+1), A324973(n+1)]` -/
def P15922538465852571623.Spec : Prop :=
  ∀ n, (P15922538465852571623.a n : ℤ) = A380007 (n + 1)

end A380007

/-! ## A380007.P14498905573128153315

`∩[A324973(n+1), A330809(n+1)]`
-/

namespace A380007.P14498905573128153315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380007.P14498905573128153315

namespace A380007

/-- `∩[A324973(n+1), A330809(n+1)]` -/
def P14498905573128153315.Spec : Prop :=
  ∀ n, (P14498905573128153315.a n : ℤ) = A380007 (n + 1)

end A380007

/-!
# A380008: Numbers t whose binary expansion Sum 2^e_i has exponents e_i which are odious numbers (A000069).

The programs for A380008, there is no canonical definition to state claims against.
-/

/-! ## A380008.P5205696283243430888

`A057300(A380009(n))`
-/

namespace A380008.P5205696283243430888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A380009 n).toNat

end

end A380008.P5205696283243430888

/-! ## A380008.P12855208899097231427

`A001196(n)-A380009(n)`
-/

namespace A380008.P12855208899097231427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n - A380009 n

end

end A380008.P12855208899097231427

/-! ## A380008.P15913179873412049471

`eq[A063787(n+1), A104145(n+1)]`
-/

namespace A380008.P15913179873412049471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380008.P15913179873412049471

/-! ## A380008.P7462755602682122712

`eq[1, A104145(n+1)-A000120(n)]`
-/

namespace A380008.P7462755602682122712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104145 (n + 1) - A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380008.P7462755602682122712

/-! ## A380008.P18428633591287615369

`A057300(eq[A000120(n), A137412(n+1)])`
-/

namespace A380008.P18428633591287615369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A380008.P18428633591287615369

/-!
# A380009: Numbers t whose binary expansion Sum 2^e_i has exponents e_i which are evil numbers (A001969).

The programs for A380009, there is no canonical definition to state claims against.
-/

/-! ## A380009.P12926606932615329052

`A057300(A380008(n))`
-/

namespace A380009.P12926606932615329052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A380008 n).toNat

end

end A380009.P12926606932615329052

/-! ## A380009.P5646164132877624857

`A001196(n)-A380008(n)`
-/

namespace A380009.P5646164132877624857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n - A380008 n

end

end A380009.P5646164132877624857

/-! ## A380009.P15585518280865568820

`eq[A000120(n), A137412(n+1)]`
-/

namespace A380009.P15585518280865568820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380009.P15585518280865568820

/-! ## A380009.P12872969419734804545

`eq[A007302(n), A137412(n+1)]`
-/

namespace A380009.P12872969419734804545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380009.P12872969419734804545

/-! ## A380009.P12300787889174272737

`eq[A137412(n+1), A160385(n)]`
-/

namespace A380009.P12300787889174272737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380009.P12300787889174272737

/-!
# A380014: Expansion of e.g.f. 1/sqrt(exp(-2*x) - 2*x).

The programs for A380014, there is no canonical definition to state claims against.
-/

/-! ## A380014.P14662032837560988596

`∑[∑[A130481(A346668(n))]]`
-/

namespace A380014.P14662032837560988596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A346668 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380014.P14662032837560988596

/-!
# A380015: Expansion of e.g.f. 1/sqrt(1 - 2*x*exp(x)).

The programs for A380015, there is no canonical definition to state claims against.
-/

/-! ## A380015.P183024148829954548

`A004277(A161630(n))-A087188(n)`
-/

namespace A380015.P183024148829954548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A161630 n).toNat - A087188 n

end

end A380015.P183024148829954548

/-! ## A380015.P13306020929759668849

`A005843(A161630(n))-A384244(n+1)`
-/

namespace A380015.P13306020929759668849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A161630 n).toNat - A384244 (n + 1)

end

end A380015.P13306020929759668849

/-!
# A380016: Expansion of e.g.f. 1/(exp(-3*x) - 3*x)^(1/3).

The programs for A380016, there is no canonical definition to state claims against.
-/

/-! ## A380016.P4536760593042071319

`A037915(xor(n, A383875(n)))`
-/

namespace A380016.P4536760593042071319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (Int.xor (n : ℤ) (A383875 n)).toNat

end

end A380016.P4536760593042071319

/-!
# A380017: Expansion of e.g.f. 1/(1 - 3*x*exp(x))^(1/3).

The programs for A380017, there is no canonical definition to state claims against.
-/

/-! ## A380017.P16601951659178003393

`A060367((n+1)*n^n)`
-/

namespace A380017.P16601951659178003393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060367 ((n + 1) * n ^ n)

end

end A380017.P16601951659178003393

/-!
# A380018: Expansion of e.g.f. 1/(exp(-4*x) - 4*x)^(1/4).

The programs for A380018, there is no canonical definition to state claims against.
-/

/-! ## A380018.P5254410534301272609

`A006165(A134958(n+1))`
-/

namespace A380018.P5254410534301272609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A134958 (n + 1)).toNat

end

end A380018.P5254410534301272609

/-!
# A380019: Expansion of e.g.f. 1/(1 - 4*x*exp(x))^(1/4).

The programs for A380019, there is no canonical definition to state claims against.
-/

/-! ## A380019.P6022365387085531699

`A184903(n!²)`
-/

namespace A380019.P6022365387085531699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184903 (Nat.factorial n ^ 2)

end

end A380019.P6022365387085531699

/-!
# A380020: Expansion of e.g.f. 1/sqrt(exp(-2*x) - 2*x*exp(-x)).

The programs for A380020, there is no canonical definition to state claims against.
-/

/-! ## A380020.P10178267475387084721

`A004825(A001222(n+1)+A001147(n)+1)`
-/

namespace A380020.P10178267475387084721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004825 (A001222 (n + 1) + A001147 n + 1).toNat

end

end A380020.P10178267475387084721

/-!
# A380021: Expansion of e.g.f. 1/(exp(-3*x) - 3*x*exp(-2*x))^(1/3).

The programs for A380021, there is no canonical definition to state claims against.
-/

/-! ## A380021.P9386471270815667144

`∑[A054385(A307362(n))]`
-/

namespace A380021.P9386471270815667144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A307362 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380021.P9386471270815667144

/-!
# A380022: Expansion of e.g.f. 1/(exp(-4*x) - 4*x*exp(-3*x))^(1/4).

The programs for A380022, there is no canonical definition to state claims against.
-/

/-! ## A380022.P12282099764546611917

`A129231(A129256(n)+A048379(n))`
-/

namespace A380022.P12282099764546611917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129231 (A129256 n + A048379 n).toNat

end

end A380022.P12282099764546611917

/-!
# A380023: a(n) = a(n-1) * a(n-2) * (1 - 2 / (n * (n-1))), with a(1) = 2, a(2) = 3.

The programs for A380023, the canonical program `A380023.P4998226135438457502` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380023 has offset 1).

The definition of A380023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380023.P4998226135438457502

`a(n-1)*a(n-2)*(1-2/((n+1)*n))` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380023

/-- `a(n-1)*a(n-2)*(1-2/((n+1)*n))` -/
def P4998226135438457502.Spec : Prop :=
  ∀ n, P4998226135438457502.a n = (A380023 (n + 1) : ℚ)

end A380023

/-! ## A380023.P7977157216165646704

`(a(n-1)-a(n-1)/∑[n])*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A380023.P7977157216165646704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 1) - a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * a (n - 2)

end

end A380023.P7977157216165646704

namespace A380023

/-- `(a(n-1)-a(n-1)/∑[n])*a(n-2)` -/
def P7977157216165646704.Spec : Prop :=
  ∀ n, P7977157216165646704.a n = (A380023 (n + 1) : ℚ)

end A380023

/-! ## A380023.P9928872523825732435

`A072042(n+3)/A072042(n+1)`
-/

namespace A380023.P9928872523825732435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072042 (n + 3) : ℚ) / (A072042 (n + 1) : ℚ)

end

end A380023.P9928872523825732435

namespace A380023

/-- `A072042(n+3)/A072042(n+1)` -/
def P9928872523825732435.Spec : Prop :=
  ∀ n, P9928872523825732435.a n = (A380023 (n + 1) : ℚ)

end A380023

/-!
# A380024: a(n) = 4^n - 3^n - binomial(n,2)*3^(n-2).

The programs for A380024, the canonical program `A380024.P5760216429569687360` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380024 has offset 0).

The definition of A380024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380024.P5760216429569687360

`4^n-3^n-C(n, 2)*3^(n-2)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380024

/-- `4^n-3^n-C(n, 2)*3^(n-2)` -/
def P5760216429569687360.Spec : Prop :=
  ∀ n, P5760216429569687360.a n = (A380024 n : ℚ)

end A380024

/-! ## A380024.P18420986420899929081

`4^n-(C(n, 2)/9+1)*3^n`
-/

namespace A380024.P18420986420899929081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - ((Nat.choose n 2 : ℚ) / 9 + 1) * (3 ^ n : ℚ)

end

end A380024.P18420986420899929081

namespace A380024

/-- `4^n-(C(n, 2)/9+1)*3^n` -/
def P18420986420899929081.Spec : Prop :=
  ∀ n, P18420986420899929081.a n = (A380024 n : ℚ)

end A380024

/-! ## A380024.P15665101121809232966

`A380249(n)-3^n`
-/

namespace A380024.P15665101121809232966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380249 n - (3 ^ n : ℤ)

end

end A380024.P15665101121809232966

namespace A380024

/-- `A380249(n)-3^n` -/
def P15665101121809232966.Spec : Prop :=
  ∀ n, P15665101121809232966.a n = A380024 n

end A380024

/-! ## A380024.P6479371624975351947

`A000302(n)-A081909(n)`
-/

namespace A380024.P6479371624975351947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A081909 n

end

end A380024.P6479371624975351947

namespace A380024

/-- `A000302(n)-A081909(n)` -/
def P6479371624975351947.Spec : Prop :=
  ∀ n, P6479371624975351947.a n = A380024 n

end A380024

/-! ## A380024.P13513816909627994978

`A000079(n)²-A081909(n)`
-/

namespace A380024.P13513816909627994978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A081909 n

end

end A380024.P13513816909627994978

namespace A380024

/-- `A000079(n)²-A081909(n)` -/
def P13513816909627994978.Spec : Prop :=
  ∀ n, P13513816909627994978.a n = A380024 n

end A380024

/-! ## A380024.P13484144509119044224

`A384415(n)+A027471(n+1)`
-/

namespace A380024.P13484144509119044224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384415 n + A027471 (n + 1)

end

end A380024.P13484144509119044224

namespace A380024

/-- `A384415(n)+A027471(n+1)` -/
def P13484144509119044224.Spec : Prop :=
  ∀ n, P13484144509119044224.a n = A380024 n

end A380024

/-! ## A380024.P14032510187708550078

`A000079(2*n)-A081909(n)`
-/

namespace A380024.P14032510187708550078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A081909 n

end

end A380024.P14032510187708550078

namespace A380024

/-- `A000079(2*n)-A081909(n)` -/
def P14032510187708550078.Spec : Prop :=
  ∀ n, P14032510187708550078.a n = A380024 n

end A380024

/-! ## A380024.P14848761968640952829

`A086443(n)+A380249(n)-A380651(n)`
-/

namespace A380024.P14848761968640952829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086443 n + (A380249 n - A380651 n)

end

end A380024.P14848761968640952829

namespace A380024

/-- `A086443(n)+A380249(n)-A380651(n)` -/
def P14848761968640952829.Spec : Prop :=
  ∀ n, P14848761968640952829.a n = A380024 n

end A380024

/-!
# A380026: a(n) is the smallest prime p such that p - a(n-1) is a primorial, starting with a(1)=2.

The programs for A380026, there is no canonical definition to state claims against.
-/

/-! ## A380026.P2860691089210367577

`a(n-1)+A002110(A100380(A000720(a(n-1))))` with `a(0)=2`
-/

namespace A380026.P2860691089210367577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A002110 (A100380 (A000720 (a (n - 1)).toNat).toNat).toNat

end

end A380026.P2860691089210367577

/-! ## A380026.P5122665519219625438

`∑[A346093(2*(a(n-2)+1))]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A380026.P5122665519219625438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  A346093 (2 * (f1 (n - 2) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380026.P5122665519219625438

/-! ## A380026.P2189097252923718088

`∑[A293756(A002865(n))]`
-/

namespace A380026.P2189097252923718088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293756 (A002865 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380026.P2189097252923718088

/-!
# A380027: a(n) is the largest prime p such that p - a(n-1) is a primorial, starting with a(1) = 2.

The programs for A380027, there is no canonical definition to state claims against.
-/

/-! ## A380027.P12346530467626972008

`a(n-1)+A002110(A265109(A000720(a(n-1))))` with `a(0)=2`
-/

namespace A380027.P12346530467626972008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A002110 (A265109 (A000720 (a (n - 1)).toNat).toNat).toNat

end

end A380027.P12346530467626972008

/-!
# A380029: Expansion of e.g.f. (1 - 3*x*exp(x))^(1/3).

The programs for A380029, there is no canonical definition to state claims against.
-/

/-! ## A380029.P10969290376064294070

`A095051(n)-A004273(A072654(n))`
-/

namespace A380029.P10969290376064294070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095051 n - A004273 (A072654 n).toNat

end

end A380029.P10969290376064294070

/-!
# A380030: Expansion of e.g.f. (1 - 3*x*exp(x))^(2/3).

The programs for A380030, there is no canonical definition to state claims against.
-/

/-! ## A380030.P1097941543062157177

`A008441(A021114(n))-A002110(n)`
-/

namespace A380030.P1097941543062157177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A021114 n).toNat - A002110 n

end

end A380030.P1097941543062157177

/-!
# A380032: Number of pairs (d, k/d), d | k, d < k/d, such that gcd(d, k/d) > 1 and d | k/d but rad(k/d) does not divide d, where k is in A126706.

The programs for A380032, there is no canonical definition to state claims against.
-/

/-! ## A380032.P13733251831028690166

`gcd(A000096(n), A049705(A088898(2*n+3)))`
-/

namespace A380032.P13733251831028690166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 n) (A049705 (A088898 (2 * n + 3)).toNat)

end

end A380032.P13733251831028690166

/-! ## A380032.P11316067219165238879

`A051903(lt[A109004(n+1), A333381(n)])`
-/

namespace A380032.P11316067219165238879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A380032.P11316067219165238879

/-! ## A380032.P3267056212767228599

`gcd(∑{p}[n+1, gcd(n, #)]!, A308964(3*n+5))`
-/

namespace A380032.P3267056212767228599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ) (A308964 (3 * n + 5))

end

end A380032.P3267056212767228599

/-! ## A380032.P11383082829286723448

`A159631(A192114(n+2))`
-/

namespace A380032.P11383082829286723448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A192114 (n + 2)).toNat

end

end A380032.P11383082829286723448

/-! ## A380032.P4999287011992595464

`A339047(A034036(n+2))`
-/

namespace A380032.P4999287011992595464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339047 (A034036 (n + 2)).toNat

end

end A380032.P4999287011992595464

/-!
# A380033: Numbers that set records in A380032.

The programs for A380033, there is no canonical definition to state claims against.
-/

/-! ## A380033.P16956900059471761071

`A046523(18*A006139(n))`
-/

namespace A380033.P16956900059471761071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (18 * A006139 n).toNat

end

end A380033.P16956900059471761071

/-!
# A380035: E.g.f. A(x) satisfies A(x) = 1/sqrt( 1 - 2*x*exp(x*A(x)) ).

The programs for A380035, there is no canonical definition to state claims against.
-/

/-! ## A380035.P11558984292403616058

`A347646(A149440(n))`
-/

namespace A380035.P11558984292403616058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347646 (A149440 n).toNat

end

end A380035.P11558984292403616058

/-!
# A380037: For n >= 1, if there exists an m < n such that a(m) = a(n), take the largest such m and set a(n+1) as 1 more than the number of positive terms between a(m+1) and a(n-1). Otherwise, a(n+1) = -1. Start with a(1) = 0.

The programs for A380037, there is no canonical definition to state claims against.
-/

/-! ## A380037.P692006025426555088

`A378531(n+1)-A326072(A077772(3*n+2))`
-/

namespace A380037.P692006025426555088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378531 (n + 1) - A326072 (A077772 (3 * n + 2)).toNat

end

end A380037.P692006025426555088

/-!
# A380038: Triangle read by rows: T(n, k) = T(n-k, k) - T(n-k+1, k-1), T(n, 0) = A010815(n-1), and T(0, 0) = 1.

The programs for A380038, there is no canonical definition to state claims against.
-/

/-! ## A380038.P7870679320505626421

`A254612(A000076(n))`
-/

namespace A380038.P7870679320505626421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254612 (A000076 n).toNat

end

end A380038.P7870679320505626421

/-! ## A380038.P8698094544073920031

`A121373(and(n, A038666(2*(n+1))))`
-/

namespace A380038.P8698094544073920031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Int.land (n : ℤ) (A038666 (2 * (n + 1)))).toNat

end

end A380038.P8698094544073920031

/-! ## A380038.P12536794153125316344

`A038498(A144553(n+3)+A027928(n+3))`
-/

namespace A380038.P12536794153125316344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A144553 (n + 3) + A027928 (n + 3)).toNat

end

end A380038.P12536794153125316344

/-! ## A380038.P9278531199518616337

`A014911(A388281(n+1))`
-/

namespace A380038.P9278531199518616337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014911 (A388281 (n + 1)).toNat

end

end A380038.P9278531199518616337

/-! ## A380038.P4042864424385763940

`A008683(A003114(n)*A005578(n))`
-/

namespace A380038.P4042864424385763940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003114 n * A005578 n).toNat

end

end A380038.P4042864424385763940

/-!
# A380039: E.g.f. A(x) satisfies A(x) = 1/( 1 - 3*x*exp(x*A(x)) )^(1/3).

The programs for A380039, there is no canonical definition to state claims against.
-/

/-! ## A380039.P5107867743142671580

`A047263(A145162(n)+1)`
-/

namespace A380039.P5107867743142671580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A145162 n + 1).toNat

end

end A380039.P5107867743142671580

/-!
# A380040: E.g.f. A(x) satisfies A(x) = 1/( 1 - 3*x*exp(x*A(x)) )^(2/3).

The programs for A380040, there is no canonical definition to state claims against.
-/

/-! ## A380040.P16442845937913398330

`A333571(A296294(n))`
-/

namespace A380040.P16442845937913398330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333571 (A296294 n).toNat

end

end A380040.P16442845937913398330

/-!
# A380041: E.g.f. A(x) satisfies A(x) = 1/( 1 - 3*x*exp(x*A(x)^2) )^(1/3).

The programs for A380041, there is no canonical definition to state claims against.
-/

/-! ## A380041.P18402344440112396187

`A329833(A234294(n))`
-/

namespace A380041.P18402344440112396187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329833 (A234294 n).toNat

end

end A380041.P18402344440112396187

/-!
# A380042: E.g.f. A(x) satisfies A(x) = 1/sqrt( 1 - 2*x*exp(x*A(x)^2) ).

The programs for A380042, there is no canonical definition to state claims against.
-/

/-! ## A380042.P342252560965185538

`A004277(A161629(n))-A093921(n+1)`
-/

namespace A380042.P342252560965185538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A161629 n).toNat - A093921 (n + 1)

end

end A380042.P342252560965185538

/-!
# A380043: E.g.f. A(x) satisfies A(x) = 1/( 1 - 3*x*exp(x*A(x)^3) )^(1/3).

The programs for A380043, there is no canonical definition to state claims against.
-/

/-! ## A380043.P15713676413904414631

`A372251(n)-A184964(A327879(n))`
-/

namespace A380043.P15713676413904414631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372251 n - A184964 (A327879 n).toNat

end

end A380043.P15713676413904414631

/-! ## A380043.P3147593319129206446

`A372251(n)-A376514(A212722(n))`
-/

namespace A380043.P3147593319129206446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372251 n - A376514 (A212722 n).toNat

end

end A380043.P3147593319129206446

/-!
# A380044: E.g.f. A(x) satisfies A(x) = 1/sqrt( 1 - 2*x*exp(x)*A(x) ).

The programs for A380044, there is no canonical definition to state claims against.
-/

/-! ## A380044.P11920966013676561487

`A161206(A094558(n))`
-/

namespace A380044.P11920966013676561487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161206 (A094558 n).toNat

end

end A380044.P11920966013676561487

/-!
# A380045: E.g.f. A(x) satisfies A(x) = 1/( 1 - 3*x*exp(x)*A(x) )^(1/3).

The programs for A380045, there is no canonical definition to state claims against.
-/

/-! ## A380045.P9718049733978253670

`A303064(n)+A004526(A064092(n))`
-/

namespace A380045.P9718049733978253670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303064 n + A004526 (A064092 n).toNat

end

end A380045.P9718049733978253670

/-!
# A380046: E.g.f. A(x) satisfies A(x) = 1 + 2*x*exp(x)*A(x)^(1/2).

The programs for A380046, there is no canonical definition to state claims against.
-/

/-! ## A380046.P6370569843414101904

`A023022(or(n, 5^n+3^n)-n)`
-/

namespace A380046.P6370569843414101904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Nat.lor n (5 ^ n + 3 ^ n) - n)

end

end A380046.P6370569843414101904

/-! ## A380046.P3545801529452022760

`A023022(A074606(n))`
-/

namespace A380046.P3545801529452022760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A074606 n).toNat

end

end A380046.P3545801529452022760

/-!
# A380047: E.g.f. A(x) satisfies A(x) = 1 + 3*x*exp(x)*A(x)^(1/3).

The programs for A380047, there is no canonical definition to state claims against.
-/

/-! ## A380047.P10899201855697956921

`A116537(A330223(2*n+1))*A330223(n)`
-/

namespace A380047.P10899201855697956921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116537 (A330223 (2 * n + 1)).toNat * A330223 n

end

end A380047.P10899201855697956921

/-!
# A380048: a(n) = A000045(n) * A001003(n).

The programs for A380048, the canonical program `A380048.P12805935202259720765` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380048 has offset 0).

The definition of A380048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380048.P12805935202259720765

`A000045(n)*A001003(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380048

/-- `A000045(n)*A001003(n)` -/
def P12805935202259720765.Spec : Prop :=
  ∀ n, P12805935202259720765.a n = A380048 n

theorem P12805935202259720765.correct : P12805935202259720765.Spec := by
  intro n
  simp only [A380048]

end A380048

/-! ## A380048.P7028531404012569105

`abs(A080243(n))*A000045(n)`
-/

namespace A380048.P7028531404012569105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n| * A000045 n

end

end A380048.P7028531404012569105

namespace A380048

/-- `abs(A080243(n))*A000045(n)` -/
def P7028531404012569105.Spec : Prop :=
  ∀ n, P7028531404012569105.a n = A380048 n

end A380048

/-! ## A380048.P15548119070971120790

`abs(A001003(n)*A236191(n))`
-/

namespace A380048.P15548119070971120790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001003 n * A236191 n|

end

end A380048.P15548119070971120790

namespace A380048

/-- `abs(A001003(n)*A236191(n))` -/
def P15548119070971120790.Spec : Prop :=
  ∀ n, P15548119070971120790.a n = A380048 n

end A380048

/-! ## A380048.P963717744753701868

`sqrt(A007598(n))*A001003(n)`
-/

namespace A380048.P963717744753701868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (A001003 n : ℝ)

end

end A380048.P963717744753701868

namespace A380048

/-- `sqrt(A007598(n))*A001003(n)` -/
def P963717744753701868.Spec : Prop :=
  ∀ n, P963717744753701868.a n = (A380048 n : ℝ)

end A380048

/-! ## A380048.P5797899517553213675

`A001003(n)*A212804(n+1)`
-/

namespace A380048.P5797899517553213675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A212804 (n + 1)

end

end A380048.P5797899517553213675

namespace A380048

/-- `A001003(n)*A212804(n+1)` -/
def P5797899517553213675.Spec : Prop :=
  ∀ n, P5797899517553213675.a n = A380048 n

end A380048

/-! ## A380048.P17111105209103549689

`(A001611(n)-1)*A001003(n)`
-/

namespace A380048.P17111105209103549689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A001003 n

end

end A380048.P17111105209103549689

namespace A380048

/-- `(A001611(n)-1)*A001003(n)` -/
def P17111105209103549689.Spec : Prop :=
  ∀ n, P17111105209103549689.a n = A380048 n

theorem P17111105209103549689.correct : P17111105209103549689.Spec := by
  intro n
  simp only [A380048, Nat.add_sub_cancel, A380048.P17111105209103549689.a, A380048.P12805935202259720765.a, A000045, A000045.P11838749114346432762.a, A001003, A001003.P3652309286495105422.a, A001611, A001611.P16593652898942925329.a, A065096, A065096.P14068809702748564482.f1, A065096.P14068809702748564482.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380048

/-! ## A380048.P5969271645998155616

`A001003(n)*A103609(2*n)`
-/

namespace A380048.P5969271645998155616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A103609 (2 * n)

end

end A380048.P5969271645998155616

namespace A380048

/-- `A001003(n)*A103609(2*n)` -/
def P5969271645998155616.Spec : Prop :=
  ∀ n, P5969271645998155616.a n = A380048 n

end A380048

/-! ## A380048.P5094572434582206163

`A000045(n)/2*A006318(n)`
-/

namespace A380048.P5094572434582206163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A006318 n : ℚ)

end

end A380048.P5094572434582206163

namespace A380048

/-- `A000045(n)/2*A006318(n)` -/
def P5094572434582206163.Spec : Prop :=
  ∀ n, P5094572434582206163.a n = (A380048 n : ℚ)

end A380048

/-! ## A380048.P5099773343615105254

`Δ[A000071(n+1)]*A001003(n)`
-/

namespace A380048.P5099773343615105254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001003 n

end

end A380048.P5099773343615105254

namespace A380048

/-- `Δ[A000071(n+1)]*A001003(n)` -/
def P5099773343615105254.Spec : Prop :=
  ∀ n, P5099773343615105254.a n = A380048 n

end A380048

/-! ## A380048.P14684529927852094785

`A000045(n)*A110440(∑[n]-n)`
-/

namespace A380048.P14684529927852094785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A110440 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A380048.P14684529927852094785

namespace A380048

/-- `A000045(n)*A110440(∑[n]-n)` -/
def P14684529927852094785.Spec : Prop :=
  ∀ n, P14684529927852094785.a n = A380048 n

end A380048

/-! ## A380048.P1293673570204673336

`A006318(n)/2*A212804(n+1)`
-/

namespace A380048.P1293673570204673336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n : ℚ) / 2 * (A212804 (n + 1) : ℚ)

end

end A380048.P1293673570204673336

namespace A380048

/-- `A006318(n)/2*A212804(n+1)` -/
def P1293673570204673336.Spec : Prop :=
  ∀ n, P1293673570204673336.a n = (A380048 n : ℚ)

end A380048

/-! ## A380048.P9177911976123942940

`A000045(n)*A144944(A000096(n))`
-/

namespace A380048.P9177911976123942940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A144944 (A000096 n).toNat

end

end A380048.P9177911976123942940

namespace A380048

/-- `A000045(n)*A144944(A000096(n))` -/
def P9177911976123942940.Spec : Prop :=
  ∀ n, P9177911976123942940.a n = A380048 n

end A380048

/-! ## A380048.P13437056696008222947

`A000045(n)*A172094(A000217(n))`
-/

namespace A380048.P13437056696008222947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A172094 (A000217 n).toNat

end

end A380048.P13437056696008222947

namespace A380048

/-- `A000045(n)*A172094(A000217(n))` -/
def P13437056696008222947.Spec : Prop :=
  ∀ n, P13437056696008222947.a n = A380048 n

end A380048

/-!
# A380049: Partial sums of A072203.

The programs for A380049, the canonical program `A380049.P17814208362061361068` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380049 has offset 1).

The definition of A380049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380049.P14716265671898550026

`∑[1-∑[(-1)^∑{e}[n+1, #]]]`
-/

namespace A380049.P14716265671898550026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P14716265671898550026

namespace A380049

/-- `∑[1-∑[(-1)^∑{e}[n+1, #]]]` -/
def P14716265671898550026.Spec : Prop :=
  ∀ n, P14716265671898550026.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P17814208362061361068

`∑[A072203(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A380049

/-- `∑[A072203(n+1)]` -/
def P17814208362061361068.Spec : Prop :=
  ∀ n, P17814208362061361068.a n = A380049 (n + 1)

theorem P17814208362061361068.correct : P17814208362061361068.Spec := by
  intro n
  simp only [A380049, Nat.add_sub_cancel]

end A380049

/-! ## A380049.P4074774598463009029

`∑[1-A002819(n+1)]`
-/

namespace A380049.P4074774598463009029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P4074774598463009029

namespace A380049

/-- `∑[1-A002819(n+1)]` -/
def P4074774598463009029.Spec : Prop :=
  ∀ n, P4074774598463009029.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P16135328306046456733

`∑[1-∑[A008836(n+1)]]`
-/

namespace A380049.P16135328306046456733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P16135328306046456733

namespace A380049

/-- `∑[1-∑[A008836(n+1)]]` -/
def P16135328306046456733.Spec : Prop :=
  ∀ n, P16135328306046456733.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P1056795773064357672

`∑[∑[A062157(∑{e}[n+1, #])]]`
-/

namespace A380049.P1056795773064357672
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P1056795773064357672

namespace A380049

/-- `∑[∑[A062157(∑{e}[n+1, #])]]` -/
def P1056795773064357672.Spec : Prop :=
  ∀ n, P1056795773064357672.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P18137476572120490563

`∑[∑[A062157(A001222(n+1))]]`
-/

namespace A380049.P18137476572120490563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001222 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P18137476572120490563

namespace A380049

/-- `∑[∑[A062157(A001222(n+1))]]` -/
def P18137476572120490563.Spec : Prop :=
  ∀ n, P18137476572120490563.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P204277044992653818

`∑[∑[A008836(2*(n+1))]+1]`
-/

namespace A380049.P204277044992653818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P204277044992653818

namespace A380049

/-- `∑[∑[A008836(2*(n+1))]+1]` -/
def P204277044992653818.Spec : Prop :=
  ∀ n, P204277044992653818.a n = A380049 (n + 1)

end A380049

/-!
# A380052: a(n) is the largest number whose cube is an n-digit cube which has the maximum sum of digits (A373727(n)).

The programs for A380052, there is no canonical definition to state claims against.
-/

/-! ## A380052.P1463082677827992749

`A099155(n+2)+A002378(A185224(2*(n+2)))`
-/

namespace A380052.P1463082677827992749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099155 (n + 2) + A002378 (A185224 (2 * (n + 2))).toNat

end

end A380052.P1463082677827992749

/-!
# A380054: G.f. A(x) satisfies: A( A(x)^3 - A(x)^4 ) = x*A(x)^2.

The programs for A380054, there is no canonical definition to state claims against.
-/

/-! ## A380054.P10639516498396379849

`A184963(A181153(n))+A157003(n)`
-/

namespace A380054.P10639516498396379849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 (A181153 n).toNat + A157003 n

end

end A380054.P10639516498396379849

/-! ## A380054.P10276023742942355242

`A285957(A147210(n+1))+A157003(n)`
-/

namespace A380054.P10276023742942355242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285957 (A147210 (n + 1)).toNat + A157003 n

end

end A380054.P10276023742942355242

/-! ## A380054.P18356327607469304572

`A355452(A140662(n+3))+A157003(n)`
-/

namespace A380054.P18356327607469304572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355452 (A140662 (n + 3)).toNat + A157003 n

end

end A380054.P18356327607469304572

/-! ## A380054.P10728388636438153768

`or(A010051(A033860(2*n+3)), A157003(n))`
-/

namespace A380054.P10728388636438153768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A033860 (2 * n + 3)).toNat) (A157003 n)

end

end A380054.P10728388636438153768

/-!
# A380056: E.g.f. (exp(x) - 1)/cos(2*x).

The programs for A380056, there is no canonical definition to state claims against.
-/

/-! ## A380056.P11861172254361736616

`A277604(A083212(n+1))`
-/

namespace A380056.P11861172254361736616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277604 (A083212 (n + 1)).toNat

end

end A380056.P11861172254361736616

/-!
# A380058: G.f. A(x) satisfies: A( A(x)^4 - A(x)^5 ) = x*A(x)^3.

The programs for A380058, there is no canonical definition to state claims against.
-/

/-! ## A380058.P3666612415355862973

`A070321(A193114(n))`
-/

namespace A380058.P3666612415355862973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A193114 n).toNat

end

end A380058.P3666612415355862973

/-! ## A380058.P15162978394274621172

`A193114(n)-A184963(A181153(n))`
-/

namespace A380058.P15162978394274621172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193114 n - A184963 (A181153 n).toNat

end

end A380058.P15162978394274621172

/-! ## A380058.P9779180457407134766

`A114509(n)-A181153(A293440(n))`
-/

namespace A380058.P9779180457407134766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114509 n - A181153 (A293440 n).toNat

end

end A380058.P9779180457407134766

/-! ## A380058.P8716128688352069590

`A193114(n)-A285957(A147210(n+1))`
-/

namespace A380058.P8716128688352069590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193114 n - A285957 (A147210 (n + 1)).toNat

end

end A380058.P8716128688352069590

/-! ## A380058.P3100954618956429162

`A193114(n)-A353483(A300276(2*n+3))`
-/

namespace A380058.P3100954618956429162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193114 n - A353483 (A300276 (2 * n + 3)).toNat

end

end A380058.P3100954618956429162

/-!
# A380059: G.f. A(x) satisfies: A(x)^4 = x * A( A(x)^3 + A(x)^4 ).

The programs for A380059, there is no canonical definition to state claims against.
-/

/-! ## A380059.P5803804519471075232

`A198888(n)+A185274(A027187(n))`
-/

namespace A380059.P5803804519471075232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A185274 (A027187 n).toNat

end

end A380059.P5803804519471075232

/-! ## A380059.P12603600784538650657

`A198888(n)+A185264(A032020(n))`
-/

namespace A380059.P12603600784538650657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A185264 (A032020 n).toNat

end

end A380059.P12603600784538650657

/-! ## A380059.P15953196126972645674

`A198888(n)+A137748(A137748(n))`
-/

namespace A380059.P15953196126972645674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A137748 (A137748 n).toNat

end

end A380059.P15953196126972645674

/-! ## A380059.P13803383529945344848

`A277017(A048693(n))+A198888(n)`
-/

namespace A380059.P13803383529945344848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A048693 n).toNat + A198888 n

end

end A380059.P13803383529945344848

/-! ## A380059.P6840235628824400448

`A198888(n)+A000007(A085567(n+1))`
-/

namespace A380059.P6840235628824400448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A000007 (A085567 (n + 1)).toNat

end

end A380059.P6840235628824400448

/-!
# A380060: G.f. A(x) satisfies A(x) = Sum_{n=-oo..+oo} x^(n^2) * (A(x) - x^n)^n/(1 - x^n*A(x))^n.

The programs for A380060, there is no canonical definition to state claims against.
-/

/-! ## A380060.P10575818853312610407

`record[2*(A247357(a(n-1))+a(n-2))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A380060.P10575818853312610407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 1] fun n f1 =>
  2 * (A247357 (f1 (n - 1)).toNat + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380060.P10575818853312610407

/-! ## A380060.P738310944096592438

`A227926(A014329(n))`
-/

namespace A380060.P738310944096592438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227926 (A014329 n).toNat

end

end A380060.P738310944096592438

/-!
# A380061: G.f. A(x) satisfies 1 + 2*A(x) = Sum_{n>=0} (x + A(x)^n)^n.

The programs for A380061, there is no canonical definition to state claims against.
-/

/-! ## A380061.P7146368143578970852

`A115630(A148724(n))`
-/

namespace A380061.P7146368143578970852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115630 (A148724 n).toNat

end

end A380061.P7146368143578970852

/-! ## A380061.P7932496302662147016

`A262689(A243667(n)+A000217(n))`
-/

namespace A380061.P7932496302662147016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A243667 n + A000217 n).toNat

end

end A380061.P7932496302662147016

/-!
# A380062: G.f. A(x) satisfies 1 + 3*A(x) = Sum_{n>=0} (x + 2*A(x)^n)^n.

The programs for A380062, there is no canonical definition to state claims against.
-/

/-! ## A380062.P6344213592642532052

`A281543(A150823(n+1))`
-/

namespace A380062.P6344213592642532052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A150823 (n + 1)).toNat

end

end A380062.P6344213592642532052

/-! ## A380062.P5903835999449994150

`or(A008279(n), A099741(A378465(n)))`
-/

namespace A380062.P5903835999449994150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008279 n) (A099741 (A378465 n).toNat)

end

end A380062.P5903835999449994150

/-!
# A380063: G.f. A(x) satisfies 1 + 4*A(x) = Sum_{n>=0} (x + 3*A(x)^n)^n.

The programs for A380063, there is no canonical definition to state claims against.
-/

/-! ## A380063.P2509493541280468180

`A261957(a(n-1))+4` with `a(0)=1, a(1)=1`
-/

namespace A380063.P2509493541280468180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A261957 (a (n - 1)).toNat + 4

end

end A380063.P2509493541280468180

/-!
# A380064: G.f. A(x) satisfies 1 + 5*A(x) = Sum_{n>=0} (x + 4*A(x)^n)^n.

The programs for A380064, there is no canonical definition to state claims against.
-/

/-! ## A380064.P14578988476398727767

`A163530(∑[(n+1)!²])`
-/

namespace A380064.P14578988476398727767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380064.P14578988476398727767

/-!
# A380065: G.f. A(x) satisfies 2 = Sum_{n=-oo..+oo} x^(2*n) * (A(x) - x^(2*n+1))^(n-1).

The programs for A380065, there is no canonical definition to state claims against.
-/

/-! ## A380065.P16086207542442881067

`A318736(A123109(n))`
-/

namespace A380065.P16086207542442881067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318736 (A123109 n).toNat

end

end A380065.P16086207542442881067

/-!
# A380068: G.f. A(x) satisfies 1/2 = Sum_{n=-oo..+oo} x^n * (A(x) + x^n)^(2*n-1).

The programs for A380068, there is no canonical definition to state claims against.
-/

/-! ## A380068.P15012260485753808736

`A140434(A163948(n+1)-n)`
-/

namespace A380068.P15012260485753808736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (A163948 (n + 1) - (n : ℤ)).toNat

end

end A380068.P15012260485753808736

/-!
# A380069: Semiprime 12-gonal numbers.

The programs for A380069, there is no canonical definition to state claims against.
-/

/-! ## A380069.P16558988315498645090

`A136051(n+1)*A136061(n+1)`
-/

namespace A380069.P16558988315498645090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136051 (n + 1) * A136061 (n + 1)

end

end A380069.P16558988315498645090

/-! ## A380069.P12264134663419818826

`A051624(A136051(n+1))`
-/

namespace A380069.P12264134663419818826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (A136051 (n + 1)).toNat

end

end A380069.P12264134663419818826

/-! ## A380069.P13878798977408842172

`A118015(A136061(n+1)+2)`
-/

namespace A380069.P13878798977408842172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (A136061 (n + 1) + 2).toNat

end

end A380069.P13878798977408842172

/-! ## A380069.P17187717356241651811

`filter[A033574(n), A374128(#)]`
-/

namespace A380069.P17187717356241651811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A380069.P17187717356241651811

/-! ## A380069.P2518619661315239505

`filter[A033574(n+1), A354927(#)]`
-/

namespace A380069.P2518619661315239505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A380069.P2518619661315239505

/-!
# A380070: Square pyramidal numbers sp(n) with a zeroless decimal representation such that (product of decimal digits of sp(n)) / n is an integer.

The programs for A380070, there is no canonical definition to state claims against.
-/

/-! ## A380070.P8225144534552104528

`A104792(A058943(n+1))`
-/

namespace A380070.P8225144534552104528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104792 (A058943 (n + 1)).toNat

end

end A380070.P8225144534552104528

/-!
# A380075: Records in A379899.

The programs for A380075, there is no canonical definition to state claims against.
-/

/-! ## A380075.P14756781396140455304

`record[A379899(n+1)]`
-/

namespace A380075.P14756781396140455304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380075.P14756781396140455304

/-! ## A380075.P16455470780504816258

`A379899(A380076(n+1))`
-/

namespace A380075.P16455470780504816258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379899 (A380076 (n + 1)).toNat

end

end A380075.P16455470780504816258

/-! ## A380075.P11957989263669805603

`eq[A001511(A297571(n+1)), A003415(n)]`
-/

namespace A380075.P11957989263669805603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A297571 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380075.P11957989263669805603

/-! ## A380075.P15017817528496247758

`eq[A018783(n), A027642(A297571(n+1))]`
-/

namespace A380075.P15017817528496247758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A297571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380075.P15017817528496247758

/-! ## A380075.P1732804118778762930

`∩[A023221(n+1), A346132(n+1)]`
-/

namespace A380075.P1732804118778762930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380075.P1732804118778762930

/-!
# A380077: Expansion of e.g.f. (1/x) * Series_Reversion( x * sqrt(1 - 2*x*exp(x)) ).

The programs for A380077, there is no canonical definition to state claims against.
-/

/-! ## A380077.P5310114900253230582

`A289509(A242006(n))-1`
-/

namespace A380077.P5310114900253230582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (A242006 n).toNat - 1

end

end A380077.P5310114900253230582

/-!
# A380078: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - 3*x*exp(x))^(1/3) ).

The programs for A380078, there is no canonical definition to state claims against.
-/

/-! ## A380078.P12561827095144488839

`A229990(A215245(n²))`
-/

namespace A380078.P12561827095144488839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229990 (A215245 (n ^ 2)).toNat

end

end A380078.P12561827095144488839

/-!
# A380079: Start with a list of the positive integers L in increasing order. Then, at turn n>=1, element n jumps from its current position, m, to position m+n. Then a(n) = L(m+1).

The programs for A380079, the canonical program `A380079.P368606423001304580` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380079 has offset 1).

The definition of A380079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380079.P368606423001304580

`A026272(A022342(n+2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380079

/-- `A026272(A022342(n+2))` -/
def P368606423001304580.Spec : Prop :=
  ∀ n, P368606423001304580.a n = A380079 (n + 1)

theorem P368606423001304580.correct : P368606423001304580.Spec := by
  intro n
  simp only [A380079, Nat.add_sub_cancel]

end A380079

/-! ## A380079.P9962087671694767668

`A026272(∑[A001468(n+1)])`
-/

namespace A380079.P9962087671694767668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380079.P9962087671694767668

namespace A380079

/-- `A026272(∑[A001468(n+1)])` -/
def P9962087671694767668.Spec : Prop :=
  ∀ n, P9962087671694767668.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P17143124947225088790

`A026272(A026273(n+1)+1)`
-/

namespace A380079.P17143124947225088790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A026273 (n + 1) + 1).toNat

end

end A380079.P17143124947225088790

namespace A380079

/-- `A026272(A026273(n+1)+1)` -/
def P17143124947225088790.Spec : Prop :=
  ∀ n, P17143124947225088790.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P5902811964599402395

`A193564(A000201(n+2)+1)`
-/

namespace A380079.P5902811964599402395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (A000201 (n + 2) + 1).toNat

end

end A380079.P5902811964599402395

namespace A380079

/-- `A193564(A000201(n+2)+1)` -/
def P5902811964599402395.Spec : Prop :=
  ∀ n, P5902811964599402395.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P3541274139454368773

`A026272(A000201(n+2)-1)`
-/

namespace A380079.P3541274139454368773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A000201 (n + 2) - 1).toNat

end

end A380079.P3541274139454368773

namespace A380079

/-- `A026272(A000201(n+2)-1)` -/
def P3541274139454368773.Spec : Prop :=
  ∀ n, P3541274139454368773.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P13212663160995252452

`A026242(A026351(n+2))-1`
-/

namespace A380079.P13212663160995252452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A026351 (n + 2)).toNat - 1

end

end A380079.P13212663160995252452

namespace A380079

/-- `A026242(A026351(n+2))-1` -/
def P13212663160995252452.Spec : Prop :=
  ∀ n, P13212663160995252452.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P8873044686757302796

`A026272(A026351(n+2)-2)`
-/

namespace A380079.P8873044686757302796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A026351 (n + 2) - 2).toNat

end

end A380079.P8873044686757302796

namespace A380079

/-- `A026272(A026351(n+2)-2)` -/
def P8873044686757302796.Spec : Prop :=
  ∀ n, P8873044686757302796.a n = A380079 (n + 1)

theorem P8873044686757302796.correct : P8873044686757302796.Spec := by
  intro n
  simp only [A380079, Nat.add_sub_cancel, A380079.P8873044686757302796.a, A380079.P368606423001304580.a, A022342, A022342.P1190268710273068250.a, A026272, A026272.P3028833638085150316.a, A026351, A026351.P16838321733923579855.a, A026242, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, A019444, A019444.P809029338349565677.f1, A019444.P809029338349565677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380079

/-! ## A380079.P4510908171662114786

`A026272(A019446(n+2)+n)`
-/

namespace A380079.P4510908171662114786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A019446 (n + 2) + (n : ℤ)).toNat

end

end A380079.P4510908171662114786

namespace A380079

/-- `A026272(A019446(n+2)+n)` -/
def P4510908171662114786.Spec : Prop :=
  ∀ n, P4510908171662114786.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P10739089146147437065

`A026272(A026274(n+1)-(n+1))`
-/

namespace A380079.P10739089146147437065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A026274 (n + 1) - (n + 1 : ℤ)).toNat

end

end A380079.P10739089146147437065

namespace A380079

/-- `A026272(A026274(n+1)-(n+1))` -/
def P10739089146147437065.Spec : Prop :=
  ∀ n, P10739089146147437065.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P16111184705557657706

`A193564(A001950(n+2)-(n+1))`
-/

namespace A380079.P16111184705557657706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (A001950 (n + 2) - (n + 1 : ℤ)).toNat

end

end A380079.P16111184705557657706

namespace A380079

/-- `A193564(A001950(n+2)-(n+1))` -/
def P16111184705557657706.Spec : Prop :=
  ∀ n, P16111184705557657706.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P15461608739606678749

`A026272(A003622(n+2)-(n+2))`
-/

namespace A380079.P15461608739606678749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A003622 (n + 2) - (n + 2 : ℤ)).toNat

end

end A380079.P15461608739606678749

namespace A380079

/-- `A026272(A003622(n+2)-(n+2))` -/
def P15461608739606678749.Spec : Prop :=
  ∀ n, P15461608739606678749.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P2046170244677061678

`A026272(A380960(A072061(2*n+1)))`
-/

namespace A380079.P2046170244677061678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A380960 (A072061 (2 * n + 1)).toNat).toNat

end

end A380079.P2046170244677061678

namespace A380079

/-- `A026272(A380960(A072061(2*n+1)))` -/
def P2046170244677061678.Spec : Prop :=
  ∀ n, P2046170244677061678.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P9198460402585213427

`A026272(A380960(A003622(n+1)-n))`
-/

namespace A380079.P9198460402585213427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A380960 (A003622 (n + 1) - (n : ℤ)).toNat).toNat

end

end A380079.P9198460402585213427

namespace A380079

/-- `A026272(A380960(A003622(n+1)-n))` -/
def P9198460402585213427.Spec : Prop :=
  ∀ n, P9198460402585213427.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P17595052802577052597

`A026272(A380960(A026272(A003622(n+1))))`
-/

namespace A380079.P17595052802577052597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A380960 (A026272 (A003622 (n + 1)).toNat).toNat).toNat

end

end A380079.P17595052802577052597

namespace A380079

/-- `A026272(A380960(A026272(A003622(n+1))))` -/
def P17595052802577052597.Spec : Prop :=
  ∀ n, P17595052802577052597.a n = A380079 (n + 1)

end A380079

/-!
# A380080: Expansion of e.g.f. (1/x) * Series_Reversion( x / sqrt(1 + 2*x*exp(x)) ).

The programs for A380080, there is no canonical definition to state claims against.
-/

/-! ## A380080.P10654267712932930945

`A102548(A181197(n+1))`
-/

namespace A380080.P10654267712932930945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (A181197 (n + 1)).toNat

end

end A380080.P10654267712932930945

/-! ## A380080.P9145977777594090429

`A028310(or(n, A183604(n)))`
-/

namespace A380080.P9145977777594090429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (n : ℤ) (A183604 n)).toNat

end

end A380080.P9145977777594090429

/-!
# A380081: Expansion of e.g.f. (1/x) * Series_Reversion( x / (1 + 3*x*exp(x))^(1/3) ).

The programs for A380081, there is no canonical definition to state claims against.
-/

/-! ## A380081.P10751237182886226211

`row(∑{#}[A095793(n+1), #])`
-/

namespace A380081.P10751237182886226211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A380081.P10751237182886226211

/-! ## A380081.P4685001344415007158

`A352354(a(n-1))-(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A380081.P4685001344415007158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A352354 (a (n - 1)).toNat - (n + 1 : ℤ)

end

end A380081.P4685001344415007158

/-!
# A380082: Number of Boolean intervals of rank 2 in the weak order of the Coxeter group of type C_n, for n >= 2.

The programs for A380082, the canonical program `A380082.P7051629911408973827` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380082 has offset 2).

The definition of A380082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380082.P7051629911408973827

`(n+2)!*C(n+1, 2)*2^n`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380082

/-- `(n+2)!*C(n+1, 2)*2^n` -/
def P7051629911408973827.Spec : Prop :=
  ∀ n, (P7051629911408973827.a n : ℤ) = A380082 (n + 2)

theorem P7051629911408973827.correct : P7051629911408973827.Spec := by
  intro n
  simp only [A380082, Nat.add_sub_cancel]

end A380082

/-! ## A380082.P7860964018798223780

`∏[2*(n+2)]/2*∑[n]`
-/

namespace A380082.P7860964018798223780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A380082.P7860964018798223780

namespace A380082

/-- `∏[2*(n+2)]/2*∑[n]` -/
def P7860964018798223780.Spec : Prop :=
  ∀ n, P7860964018798223780.a n = (A380082 (n + 2) : ℚ)

end A380082

/-!
# A380083: a(n) = Pell(n^2)/Pell(n).

The programs for A380083, the canonical program `A380083.P7207422318684722739` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380083 has offset 1).

The definition of A380083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380083.P7207422318684722739

`A204327(n+1)/A000129(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380083

/-- `A204327(n+1)/A000129(n+1)` -/
def P7207422318684722739.Spec : Prop :=
  ∀ n, P7207422318684722739.a n = (A380083 (n + 1) : ℚ)

end A380083

/-! ## A380083.P9312420725938883051

`A000129((n+1)²)/A000129(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380083.P9312420725938883051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 ((n + 1) ^ 2) : ℚ) / (A000129 (n + 1) : ℚ)

end

end A380083.P9312420725938883051

namespace A380083

/-- `A000129((n+1)²)/A000129(n+1)` -/
def P9312420725938883051.Spec : Prop :=
  ∀ n, P9312420725938883051.a n = (A380083 (n + 1) : ℚ)

end A380083

/-! ## A380083.P6544462003994844845

`A383742(∑[4*(n+1)])`
-/

namespace A380083.P6544462003994844845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383742 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380083.P6544462003994844845

namespace A380083

/-- `A383742(∑[4*(n+1)])` -/
def P6544462003994844845.Spec : Prop :=
  ∀ n, P6544462003994844845.a n = A380083 (n + 1)

end A380083

/-!
# A380084: a(n) is the smallest k such that tau(k*2^n + 1) is equal to 2^n where tau = A000005.

The programs for A380084, there is no canonical definition to state claims against.
-/

/-! ## A380084.P765264755041152557

`A115863(A001250(n)+n)`
-/

namespace A380084.P765264755041152557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115863 (A001250 n + (n : ℤ)).toNat

end

end A380084.P765264755041152557

/-!
# A380085: The largest unitary divisor of n that is a term in A276078.

The programs for A380085, the canonical program `A380085.P1423580461647240188` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380085 has offset 1).

The definition of A380085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380085.P1423580461647240188

`gcd(A005777(n+1), A389455(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A380085

/-- `gcd(A005777(n+1), A389455(n+1))` -/
def P1423580461647240188.Spec : Prop :=
  ∀ n, (P1423580461647240188.a n : ℤ) = A380085 (n + 1)

theorem P1423580461647240188.correct : P1423580461647240188.Spec := by
  intro n
  simp only [A380085, Nat.add_sub_cancel]

end A380085

/-! ## A380085.P16856934902874221356

`and(A375155(n+1), A389455(n+1))`
-/

namespace A380085.P16856934902874221356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A375155 (n + 1)) (A389455 (n + 1))

end

end A380085.P16856934902874221356

namespace A380085

/-- `and(A375155(n+1), A389455(n+1))` -/
def P16856934902874221356.Spec : Prop :=
  ∀ n, P16856934902874221356.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P10252643213465768972

`A389455(n+1)%A004733(n)`
-/

namespace A380085.P10252643213465768972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389455 (n + 1)) (A004733 n)

end

end A380085.P10252643213465768972

namespace A380085

/-- `A389455(n+1)%A004733(n)` -/
def P10252643213465768972.Spec : Prop :=
  ∀ n, P10252643213465768972.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P12486074287974325742

`gcd(A135854(n), A389455(n+1))`
-/

namespace A380085.P12486074287974325742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135854 n) (A389455 (n + 1))

end

end A380085.P12486074287974325742

namespace A380085

/-- `gcd(A135854(n), A389455(n+1))` -/
def P12486074287974325742.Spec : Prop :=
  ∀ n, (P12486074287974325742.a n : ℤ) = A380085 (n + 1)

end A380085

/-! ## A380085.P4749798517753029388

`and(A003261(n+1), A389455(n+1))`
-/

namespace A380085.P4749798517753029388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A389455 (n + 1))

end

end A380085.P4749798517753029388

namespace A380085

/-- `and(A003261(n+1), A389455(n+1))` -/
def P4749798517753029388.Spec : Prop :=
  ∀ n, P4749798517753029388.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P6930403152978403576

`and(A163383(n+1), A389455(n+1))`
-/

namespace A380085.P6930403152978403576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A389455 (n + 1))

end

end A380085.P6930403152978403576

namespace A380085

/-- `and(A163383(n+1), A389455(n+1))` -/
def P6930403152978403576.Spec : Prop :=
  ∀ n, P6930403152978403576.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P8268234819527408187

`and(A063396(n), A389455(n+1))`
-/

namespace A380085.P8268234819527408187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A389455 (n + 1))

end

end A380085.P8268234819527408187

namespace A380085

/-- `and(A063396(n), A389455(n+1))` -/
def P8268234819527408187.Spec : Prop :=
  ∀ n, P8268234819527408187.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P17427373827790502869

`gcd(A014477(n), A389455(n+1))`
-/

namespace A380085.P17427373827790502869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014477 n) (A389455 (n + 1))

end

end A380085.P17427373827790502869

namespace A380085

/-- `gcd(A014477(n), A389455(n+1))` -/
def P17427373827790502869.Spec : Prop :=
  ∀ n, (P17427373827790502869.a n : ℤ) = A380085 (n + 1)

end A380085

/-! ## A380085.P3888434217412336380

`and(A055580(n), A389455(n+1))`
-/

namespace A380085.P3888434217412336380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A389455 (n + 1))

end

end A380085.P3888434217412336380

namespace A380085

/-- `and(A055580(n), A389455(n+1))` -/
def P3888434217412336380.Spec : Prop :=
  ∀ n, P3888434217412336380.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P13950597063443760863

`and(A107392(n), A389455(n+1))`
-/

namespace A380085.P13950597063443760863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A389455 (n + 1))

end

end A380085.P13950597063443760863

namespace A380085

/-- `and(A107392(n), A389455(n+1))` -/
def P13950597063443760863.Spec : Prop :=
  ∀ n, P13950597063443760863.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P7273436328741861057

`and(A107464(n), A389455(n+1))`
-/

namespace A380085.P7273436328741861057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A389455 (n + 1))

end

end A380085.P7273436328741861057

namespace A380085

/-- `and(A107464(n), A389455(n+1))` -/
def P7273436328741861057.Spec : Prop :=
  ∀ n, P7273436328741861057.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P16238014192130993422

`and(A107953(n), A389455(n+1))`
-/

namespace A380085.P16238014192130993422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A389455 (n + 1))

end

end A380085.P16238014192130993422

namespace A380085

/-- `and(A107953(n), A389455(n+1))` -/
def P16238014192130993422.Spec : Prop :=
  ∀ n, P16238014192130993422.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P7038087136051670534

`and(A211386(n), A389455(n+1))`
-/

namespace A380085.P7038087136051670534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211386 n) (A389455 (n + 1))

end

end A380085.P7038087136051670534

namespace A380085

/-- `and(A211386(n), A389455(n+1))` -/
def P7038087136051670534.Spec : Prop :=
  ∀ n, P7038087136051670534.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P15035676520980791884

`gcd(A001816(n), A389455(n+1))`
-/

namespace A380085.P15035676520980791884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001816 n) (A389455 (n + 1))

end

end A380085.P15035676520980791884

namespace A380085

/-- `gcd(A001816(n), A389455(n+1))` -/
def P15035676520980791884.Spec : Prop :=
  ∀ n, (P15035676520980791884.a n : ℤ) = A380085 (n + 1)

end A380085

/-! ## A380085.P6576878027369009512

`and(A107954(n), A389455(n+1))`
-/

namespace A380085.P6576878027369009512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A389455 (n + 1))

end

end A380085.P6576878027369009512

namespace A380085

/-- `and(A107954(n), A389455(n+1))` -/
def P6576878027369009512.Spec : Prop :=
  ∀ n, P6576878027369009512.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P14248558885995217899

`and(A107955(n), A389455(n+1))`
-/

namespace A380085.P14248558885995217899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A389455 (n + 1))

end

end A380085.P14248558885995217899

namespace A380085

/-- `and(A107955(n), A389455(n+1))` -/
def P14248558885995217899.Spec : Prop :=
  ∀ n, P14248558885995217899.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P9688888018905763039

`A389455((n+1)*A368329(n+1))`
-/

namespace A380085.P9688888018905763039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389455 ((n + 1 : ℤ) * A368329 (n + 1)).toNat

end

end A380085.P9688888018905763039

namespace A380085

/-- `A389455((n+1)*A368329(n+1))` -/
def P9688888018905763039.Spec : Prop :=
  ∀ n, P9688888018905763039.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P339247477382470202

`A389455((n+1)*A368333(n+1))`
-/

namespace A380085.P339247477382470202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389455 ((n + 1 : ℤ) * A368333 (n + 1)).toNat

end

end A380085.P339247477382470202

namespace A380085

/-- `A389455((n+1)*A368333(n+1))` -/
def P339247477382470202.Spec : Prop :=
  ∀ n, P339247477382470202.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P2799276470875011431

`A389455(n+1)%A001550(n)`
-/

namespace A380085.P2799276470875011431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389455 (n + 1)) (A001550 n)

end

end A380085.P2799276470875011431

namespace A380085

/-- `A389455(n+1)%A001550(n)` -/
def P2799276470875011431.Spec : Prop :=
  ∀ n, P2799276470875011431.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P4622573812292270543

`and(A018886(n+1), A389455(n+1))`
-/

namespace A380085.P4622573812292270543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A389455 (n + 1))

end

end A380085.P4622573812292270543

namespace A380085

/-- `and(A018886(n+1), A389455(n+1))` -/
def P4622573812292270543.Spec : Prop :=
  ∀ n, P4622573812292270543.a n = A380085 (n + 1)

end A380085

/-!
# A380086: The number of unitary divisors of n that are terms in A276078.

The programs for A380086, the canonical program `A380086.P2548824965222019189` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380086 has offset 1).

The definition of A380086 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380086.P2548824965222019189

`A034444(A380085(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A380086

/-- `A034444(A380085(n+1))` -/
def P2548824965222019189.Spec : Prop :=
  ∀ n, P2548824965222019189.a n = A380086 (n + 1)

theorem P2548824965222019189.correct : P2548824965222019189.Spec := by
  intro n
  simp only [A380086, Nat.add_sub_cancel]

end A380086

/-! ## A380086.P14495694857399675917

`A380089(A380085(2*n+1-n))`
-/

namespace A380086.P14495694857399675917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A380085 (2 * n + 1 - n)).toNat

end

end A380086.P14495694857399675917

namespace A380086

/-- `A380089(A380085(2*n+1-n))` -/
def P14495694857399675917.Spec : Prop :=
  ∀ n, P14495694857399675917.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P7359750142076697591

`A380089(A377518(A380085(A377518(n+1))))`
-/

namespace A380086.P7359750142076697591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A377518 (A380085 (A377518 (n + 1)).toNat).toNat).toNat

end

end A380086.P7359750142076697591

namespace A380086

/-- `A380089(A377518(A380085(A377518(n+1))))` -/
def P7359750142076697591.Spec : Prop :=
  ∀ n, P7359750142076697591.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P6888953896436300221

`A380089(A380088(A380085(A380088(n+1))))`
-/

namespace A380086.P6888953896436300221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A380088 (A380085 (A380088 (n + 1)).toNat).toNat).toNat

end

end A380086.P6888953896436300221

namespace A380086

/-- `A380089(A380088(A380085(A380088(n+1))))` -/
def P6888953896436300221.Spec : Prop :=
  ∀ n, P6888953896436300221.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P8857753694828026902

`A380089(A355264(n+1))`
-/

namespace A380086.P8857753694828026902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A355264 (n + 1)).toNat

end

end A380086.P8857753694828026902

namespace A380086

/-- `A380089(A355264(n+1))` -/
def P8857753694828026902.Spec : Prop :=
  ∀ n, P8857753694828026902.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P2129973285730193302

`A380089(A102631(n+1))`
-/

namespace A380086.P2129973285730193302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A102631 (n + 1)).toNat

end

end A380086.P2129973285730193302

namespace A380086

/-- `A380089(A102631(n+1))` -/
def P2129973285730193302.Spec : Prop :=
  ∀ n, P2129973285730193302.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P1242822107503676502

`A380089(A370567(n+1))`
-/

namespace A380086.P1242822107503676502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A370567 (n + 1)).toNat

end

end A380086.P1242822107503676502

namespace A380086

/-- `A380089(A370567(n+1))` -/
def P1242822107503676502.Spec : Prop :=
  ∀ n, P1242822107503676502.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P3510960189961150112

`A365499(A385558(n+1))`
-/

namespace A380086.P3510960189961150112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365499 (A385558 (n + 1)).toNat

end

end A380086.P3510960189961150112

namespace A380086

/-- `A365499(A385558(n+1))` -/
def P3510960189961150112.Spec : Prop :=
  ∀ n, P3510960189961150112.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P13209331496865730318

`A380089(A129202(n))`
-/

namespace A380086.P13209331496865730318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A129202 n).toNat

end

end A380086.P13209331496865730318

namespace A380086

/-- `A380089(A129202(n))` -/
def P13209331496865730318.Spec : Prop :=
  ∀ n, P13209331496865730318.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P15908904481697318199

`A060594(A360541(n+1))`
-/

namespace A380086.P15908904481697318199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A360541 (n + 1)).toNat

end

end A380086.P15908904481697318199

namespace A380086

/-- `A060594(A360541(n+1))` -/
def P15908904481697318199.Spec : Prop :=
  ∀ n, P15908904481697318199.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P11969701917420243154

`A380089(A064549(n+1))`
-/

namespace A380086.P11969701917420243154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A064549 (n + 1)).toNat

end

end A380086.P11969701917420243154

namespace A380086

/-- `A380089(A064549(n+1))` -/
def P11969701917420243154.Spec : Prop :=
  ∀ n, P11969701917420243154.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P14961066002430262201

`A365499(A354258(n+1))`
-/

namespace A380086.P14961066002430262201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365499 (A354258 (n + 1)).toNat

end

end A380086.P14961066002430262201

namespace A380086

/-- `A365499(A354258(n+1))` -/
def P14961066002430262201.Spec : Prop :=
  ∀ n, P14961066002430262201.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P17860243305996437158

`A380089(A046162(n+2))`
-/

namespace A380086.P17860243305996437158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A046162 (n + 2)).toNat

end

end A380086.P17860243305996437158

namespace A380086

/-- `A380089(A046162(n+2))` -/
def P17860243305996437158.Spec : Prop :=
  ∀ n, P17860243305996437158.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P17477203820926954413

`A380089(A377518(A389455(n+1)²))`
-/

namespace A380086.P17477203820926954413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A377518 (A389455 (n + 1) ^ 2).toNat).toNat

end

end A380086.P17477203820926954413

namespace A380086

/-- `A380089(A377518(A389455(n+1)²))` -/
def P17477203820926954413.Spec : Prop :=
  ∀ n, P17477203820926954413.a n = A380086 (n + 1)

end A380086

/-!
# A380087: The sum of the unitary divisors of n that are terms in A276078.

The programs for A380087, the canonical program `A380087.P5366128335327485589` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380087 has offset 1).

The definition of A380087 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A380085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380087.P5366128335327485589

`A034448(A380085(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A380087

/-- `A034448(A380085(n+1))` -/
def P5366128335327485589.Spec : Prop :=
  ∀ n, P5366128335327485589.a n = A380087 (n + 1)

theorem P5366128335327485589.correct : P5366128335327485589.Spec := by
  intro n
  simp only [A380087, Nat.add_sub_cancel]

end A380087

/-! ## A380087.P5628425548773732266

`A380090(A380085(2*n+1-n))`
-/

namespace A380087.P5628425548773732266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (A380085 (2 * n + 1 - n)).toNat

end

end A380087.P5628425548773732266

namespace A380087

/-- `A380090(A380085(2*n+1-n))` -/
def P5628425548773732266.Spec : Prop :=
  ∀ n, P5628425548773732266.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P13556773610073893293

`A380090(A377518(A380085(A377518(n+1))))`
-/

namespace A380087.P13556773610073893293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (A377518 (A380085 (A377518 (n + 1)).toNat).toNat).toNat

end

end A380087.P13556773610073893293

namespace A380087

/-- `A380090(A377518(A380085(A377518(n+1))))` -/
def P13556773610073893293.Spec : Prop :=
  ∀ n, P13556773610073893293.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P14069804633771716936

`A380090(A380088(A380085(A380088(n+1))))`
-/

namespace A380087.P14069804633771716936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (A380088 (A380085 (A380088 (n + 1)).toNat).toNat).toNat

end

end A380087.P14069804633771716936

namespace A380087

/-- `A380090(A380088(A380085(A380088(n+1))))` -/
def P14069804633771716936.Spec : Prop :=
  ∀ n, P14069804633771716936.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P3070315043774644902

`and(A375155(n+1), A389450(n+1))`
-/

namespace A380087.P3070315043774644902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A375155 (n + 1)) (A389450 (n + 1))

end

end A380087.P3070315043774644902

namespace A380087

/-- `and(A375155(n+1), A389450(n+1))` -/
def P3070315043774644902.Spec : Prop :=
  ∀ n, P3070315043774644902.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P9017919694910303831

`A389450(n+1)%A004733(n)`
-/

namespace A380087.P9017919694910303831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389450 (n + 1)) (A004733 n)

end

end A380087.P9017919694910303831

namespace A380087

/-- `A389450(n+1)%A004733(n)` -/
def P9017919694910303831.Spec : Prop :=
  ∀ n, P9017919694910303831.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P15376818716583948386

`and(A003261(n+1), A389450(n+1))`
-/

namespace A380087.P15376818716583948386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A389450 (n + 1))

end

end A380087.P15376818716583948386

namespace A380087

/-- `and(A003261(n+1), A389450(n+1))` -/
def P15376818716583948386.Spec : Prop :=
  ∀ n, P15376818716583948386.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P16883533668208143758

`and(A163383(n+1), A389450(n+1))`
-/

namespace A380087.P16883533668208143758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A389450 (n + 1))

end

end A380087.P16883533668208143758

namespace A380087

/-- `and(A163383(n+1), A389450(n+1))` -/
def P16883533668208143758.Spec : Prop :=
  ∀ n, P16883533668208143758.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P16160337977091163234

`and(A063396(n), A389450(n+1))`
-/

namespace A380087.P16160337977091163234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A389450 (n + 1))

end

end A380087.P16160337977091163234

namespace A380087

/-- `and(A063396(n), A389450(n+1))` -/
def P16160337977091163234.Spec : Prop :=
  ∀ n, P16160337977091163234.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P5446275678004664475

`and(A055580(n), A389450(n+1))`
-/

namespace A380087.P5446275678004664475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A389450 (n + 1))

end

end A380087.P5446275678004664475

namespace A380087

/-- `and(A055580(n), A389450(n+1))` -/
def P5446275678004664475.Spec : Prop :=
  ∀ n, P5446275678004664475.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P11542192885225458673

`and(A107392(n), A389450(n+1))`
-/

namespace A380087.P11542192885225458673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A389450 (n + 1))

end

end A380087.P11542192885225458673

namespace A380087

/-- `and(A107392(n), A389450(n+1))` -/
def P11542192885225458673.Spec : Prop :=
  ∀ n, P11542192885225458673.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P7807202659442296336

`and(A107464(n), A389450(n+1))`
-/

namespace A380087.P7807202659442296336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A389450 (n + 1))

end

end A380087.P7807202659442296336

namespace A380087

/-- `and(A107464(n), A389450(n+1))` -/
def P7807202659442296336.Spec : Prop :=
  ∀ n, P7807202659442296336.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P11981128429843019158

`and(A107953(n), A389450(n+1))`
-/

namespace A380087.P11981128429843019158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A389450 (n + 1))

end

end A380087.P11981128429843019158

namespace A380087

/-- `and(A107953(n), A389450(n+1))` -/
def P11981128429843019158.Spec : Prop :=
  ∀ n, P11981128429843019158.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P1878760928344559364

`and(A211386(n), A389450(n+1))`
-/

namespace A380087.P1878760928344559364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211386 n) (A389450 (n + 1))

end

end A380087.P1878760928344559364

namespace A380087

/-- `and(A211386(n), A389450(n+1))` -/
def P1878760928344559364.Spec : Prop :=
  ∀ n, P1878760928344559364.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P3598462356775472731

`and(A107954(n), A389450(n+1))`
-/

namespace A380087.P3598462356775472731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A389450 (n + 1))

end

end A380087.P3598462356775472731

namespace A380087

/-- `and(A107954(n), A389450(n+1))` -/
def P3598462356775472731.Spec : Prop :=
  ∀ n, P3598462356775472731.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P14268314221218838855

`and(A107955(n), A389450(n+1))`
-/

namespace A380087.P14268314221218838855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A389450 (n + 1))

end

end A380087.P14268314221218838855

namespace A380087

/-- `and(A107955(n), A389450(n+1))` -/
def P14268314221218838855.Spec : Prop :=
  ∀ n, P14268314221218838855.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P8048660670445063933

`A389450((n+1)*A368333(n+1))`
-/

namespace A380087.P8048660670445063933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389450 ((n + 1 : ℤ) * A368333 (n + 1)).toNat

end

end A380087.P8048660670445063933

namespace A380087

/-- `A389450((n+1)*A368333(n+1))` -/
def P8048660670445063933.Spec : Prop :=
  ∀ n, P8048660670445063933.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P16257974651071140522

`gcd(A076001(n+1), A389450(n+1))`
-/

namespace A380087.P16257974651071140522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076001 (n + 1)) (A389450 (n + 1))

end

end A380087.P16257974651071140522

namespace A380087

/-- `gcd(A076001(n+1), A389450(n+1))` -/
def P16257974651071140522.Spec : Prop :=
  ∀ n, (P16257974651071140522.a n : ℤ) = A380087 (n + 1)

end A380087

/-! ## A380087.P2770390864110654614

`gcd(A075998(n+1), A389450(n+1))`
-/

namespace A380087.P2770390864110654614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075998 (n + 1)) (A389450 (n + 1))

end

end A380087.P2770390864110654614

namespace A380087

/-- `gcd(A075998(n+1), A389450(n+1))` -/
def P2770390864110654614.Spec : Prop :=
  ∀ n, (P2770390864110654614.a n : ℤ) = A380087 (n + 1)

end A380087

/-! ## A380087.P8910270980868284894

`A389450(n+1)%A001550(n)`
-/

namespace A380087.P8910270980868284894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389450 (n + 1)) (A001550 n)

end

end A380087.P8910270980868284894

namespace A380087

/-- `A389450(n+1)%A001550(n)` -/
def P8910270980868284894.Spec : Prop :=
  ∀ n, P8910270980868284894.a n = A380087 (n + 1)

end A380087

/-!
# A380088: The largest unitary divisor of n that is a term in A207481.

The programs for A380088, there is no canonical definition to state claims against.
-/

/-! ## A380088.P2241713254437143233

`(n+1)/A368329(n+1)`
-/

namespace A380088.P2241713254437143233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368329 (n + 1) : ℚ)

end

end A380088.P2241713254437143233

/-! ## A380088.P13332257866441441302

`(n+1)/A360540(A360540(n+1)+A133081(n+1))`
-/

namespace A380088.P13332257866441441302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360540 (A360540 (n + 1) + A133081 (n + 1)).toNat : ℚ)

end

end A380088.P13332257866441441302

/-! ## A380088.P9674520275145886522

`(n+1)/2^val(n+1, 2)*A374629(xor(n, n+1)+1)`
-/

namespace A380088.P9674520275145886522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A374629 (Nat.xor n (n + 1) + 1) : ℚ)

end

end A380088.P9674520275145886522

/-! ## A380088.P16076308683447913631

`A000265(n+1)*A374629(xor(n, n+1)+1)`
-/

namespace A380088.P16076308683447913631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A374629 (Nat.xor n (n + 1) + 1)

end

end A380088.P16076308683447913631

/-! ## A380088.P13790505242885216937

`gcd(n+1, A351592(A038712(n+1)))`
-/

namespace A380088.P13790505242885216937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351592 (A038712 (n + 1)).toNat)

end

end A380088.P13790505242885216937

/-!
# A380089: The number of unitary divisors of n that are terms in A207481.

The programs for A380089, there is no canonical definition to state claims against.
-/

/-! ## A380089.P5326633835887775714

`A034444(A380088(n+1))`
-/

namespace A380089.P5326633835887775714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A380088 (n + 1)).toNat

end

end A380089.P5326633835887775714

/-! ## A380089.P15174948087802595459

`A034444((n+1)/A368329(n+1))`
-/

namespace A380089.P15174948087802595459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368329 (n + 1) : ℚ))).toNat

end

end A380089.P15174948087802595459

/-! ## A380089.P17211463380612080650

`A034444(n+1)/A368330(n+1)`
-/

namespace A380089.P17211463380612080650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A368330 (n + 1) : ℚ)

end

end A380089.P17211463380612080650

/-! ## A380089.P11196373706804085580

`A380086(A003961(n+1))`
-/

namespace A380089.P11196373706804085580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380086 (A003961 (n + 1)).toNat

end

end A380089.P11196373706804085580

/-! ## A380089.P7759955353781970183

`A380086(A064988(n+1))`
-/

namespace A380089.P7759955353781970183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380086 (A064988 (n + 1)).toNat

end

end A380089.P7759955353781970183

/-! ## A380089.P17648836507804760975

`A380086(A332818(n+1))`
-/

namespace A380089.P17648836507804760975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380086 (A332818 (n + 1)).toNat

end

end A380089.P17648836507804760975

/-! ## A380089.P7738173048004716018

`A380086(A348746(n+1))`
-/

namespace A380089.P7738173048004716018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380086 (A348746 (n + 1)).toNat

end

end A380089.P7738173048004716018

/-! ## A380089.P5658667935029551397

`A365499(A390694(n+1))`
-/

namespace A380089.P5658667935029551397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365499 (A390694 (n + 1)).toNat

end

end A380089.P5658667935029551397

/-! ## A380089.P11522023867472906204

`A380086(A377515(A380088(n+1)²))`
-/

namespace A380089.P11522023867472906204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380086 (A377515 (A380088 (n + 1) ^ 2).toNat).toNat

end

end A380089.P11522023867472906204

/-!
# A380090: The sum of the unitary divisors of n that are terms in A207481.

The programs for A380090, there is no canonical definition to state claims against.
-/

/-! ## A380090.P9821700214133181691

`A034448(A380088(n+1))`
-/

namespace A380090.P9821700214133181691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A380088 (n + 1)).toNat

end

end A380090.P9821700214133181691

/-! ## A380090.P2408085105798508756

`A034448((n+1)/A368329(n+1))`
-/

namespace A380090.P2408085105798508756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368329 (n + 1) : ℚ))).toNat

end

end A380090.P2408085105798508756

/-!
# A380091: Primes p such that phi(p+1) = 2*phi(p-1) where phi = A000010.

The programs for A380091, there is no canonical definition to state claims against.
-/

/-! ## A380091.P3927304580366140459

`∑[A005179(a(n-1)+4)]` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A380091.P3927304580366140459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  A005179 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380091.P3927304580366140459

/-!
# A380092: Number of consecutive primes after prime(n) before their concatenation fails to produce a prime.

The programs for A380092, there is no canonical definition to state claims against.
-/

/-! ## A380092.P3481684672056075942

`A054522(∑[2*a(n%2)]²)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A380092.P3481684672056075942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 3] fun n f1 =>
  2 * f1 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A380092.P3481684672056075942

/-! ## A380092.P768088340202171429

`A054522((eq[0, lcm(n-2, and(2, n))]+n+1)²)`
-/

namespace A380092.P768088340202171429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)) ^ 2)

end

end A380092.P768088340202171429

/-! ## A380092.P9527359077291557563

`A102448(A146305(n+1))`
-/

namespace A380092.P9527359077291557563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102448 (A146305 (n + 1)).toNat

end

end A380092.P9527359077291557563

/-! ## A380092.P3494259714646822829

`A177063(A140525(n+2))`
-/

namespace A380092.P3494259714646822829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177063 (A140525 (n + 2)).toNat

end

end A380092.P3494259714646822829

/-! ## A380092.P12780112818252634774

`A054153(n)%A175307(n+1)`
-/

namespace A380092.P12780112818252634774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054153 n) (A175307 (n + 1))

end

end A380092.P12780112818252634774

/-!
# A380093: E.g.f. A(x) satisfies A(x) = sqrt( 1 + 2*x*exp(x*A(x)) ).

The programs for A380093, there is no canonical definition to state claims against.
-/

/-! ## A380093.P16527589362974623540

`A121484(A032046(n))`
-/

namespace A380093.P16527589362974623540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121484 (A032046 n).toNat

end

end A380093.P16527589362974623540

/-! ## A380093.P17140500531423210183

`A075530(∑[A059616(n)])`
-/

namespace A380093.P17140500531423210183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380093.P17140500531423210183

/-!
# A380095: E.g.f. A(x) satisfies A(x) = 1/sqrt( 1 - 2*x*A(x)^2*exp(x*A(x)^2) ).

The programs for A380095, there is no canonical definition to state claims against.
-/

/-! ## A380095.P11100037014667063882

`A380516(n)+A131851(A143414(n))`
-/

namespace A380095.P11100037014667063882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380516 n + A131851 (A143414 n).toNat

end

end A380095.P11100037014667063882

/-!
# A380097: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - 3*x*exp(x)) ).

The programs for A380097, the canonical program `A380097.P6722204383012852059` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380097 has offset 0).

The definition of A380097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380097.P6722204383012852059

`1/(n+1)*∑{#}[n, 3^#*#^(n-#)*(n+#)!/(#!*(n-#)!)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380097

/-- `1/(n+1)*∑{#}[n, 3^#*#^(n-#)*(n+#)!/(#!*(n-#)!)]` -/
def P6722204383012852059.Spec : Prop :=
  ∀ n, P6722204383012852059.a n = (A380097 n : ℚ)

end A380097

/-!
# A380098: Numbers whose sum of cubes of distinct prime factors is prime.

The programs for A380098, there is no canonical definition to state claims against.
-/

/-! ## A380098.P13296666636787770891

`∩[A109959(n+1), A336568(n+1)]`
-/

namespace A380098.P13296666636787770891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380098.P13296666636787770891

