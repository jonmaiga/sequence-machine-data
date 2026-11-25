import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A380001: Fixed points of A378299.

The programs for A380001, the canonical program `A380001.P16133234715623773460` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380001 has offset 0).

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

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A380001

/-- `8*a(n-1)+5` -/
def P16133234715623773460.Spec : Prop :=
  ∀ n, (P16133234715623773460.a n : ℤ) = A380001 n

theorem P16133234715623773460.correct : P16133234715623773460.Spec := by
  intro n
  simp only [A380001]

end A380001

/-! ## A380001.P4250242303901022823

`record[5+8*T(n-1,k)]` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A380001.P4250242303901022823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n f1 =>
  5 + 8 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380001.P4250242303901022823

namespace A380001

/-- `record[5+8*T(n-1,k)]` -/
def P4250242303901022823.Spec : Prop :=
  ∀ n, P4250242303901022823.a n = A380001 n

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

The programs for A380007, the canonical program `A380007.P11055340700919016870` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380007 has offset 1).

The definition of A380007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380007.P11055340700919016870

`∩[A128896(n+1), A000384(n)]`

The canonical program, it is in `Seq.B011.C000`.
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

/-! ## A380015.P10959587658826721858

`A005843(A161630(n))-A093101(n)`
-/

namespace A380015.P10959587658826721858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A161630 n).toNat - A093101 n

end

end A380015.P10959587658826721858

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

The programs for A380023, the canonical program `A380023.P4998226135438457502` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380023 has offset 1).

The definition of A380023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380023.P4998226135438457502

`a(n-1)*a(n-2)*(1-2/((n+1)*n))` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A380023.P15685989479698536835

`ratio[(n+1)*A230053(n)]`
-/

namespace A380023.P15685989479698536835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A230053 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A380023.P15685989479698536835

namespace A380023

/-- `ratio[(n+1)*A230053(n)]` -/
def P15685989479698536835.Spec : Prop :=
  ∀ n, P15685989479698536835.a n = (A380023 (n + 1) : ℚ)

end A380023

/-!
# A380024: a(n) = 4^n - 3^n - binomial(n,2)*3^(n-2).

The programs for A380024, the canonical program `A380024.P5760216429569687360` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380024 has offset 0).

The definition of A380024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380024.P5760216429569687360

`4^n-3^n-C(n, 2)*3^(n-2)`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A380024.P2150533331958678641

`4^n-A081909(n)`
-/

namespace A380024.P2150533331958678641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A081909 n

end

end A380024.P2150533331958678641

namespace A380024

/-- `4^n-A081909(n)` -/
def P2150533331958678641.Spec : Prop :=
  ∀ n, P2150533331958678641.a n = A380024 n

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

/-! ## A380026.P2099804203179184872

`∑[A136351(A002865(n)+1)]`
-/

namespace A380026.P2099804203179184872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136351 (A002865 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380026.P2099804203179184872

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

/-! ## A380029.P167031950710601597

`A028609(A134956(n))-A000312(n)`
-/

namespace A380029.P167031950710601597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (A134956 n).toNat - A000312 n

end

end A380029.P167031950710601597

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

/-! ## A380032.P16588305781069869146

`A394362(gcd(A374008(n+1), A394411(n)))`
-/

namespace A380032.P16588305781069869146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394362 (Int.gcd (A374008 (n + 1)) (A394411 n))

end

end A380032.P16588305781069869146

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

/-! ## A380035.P7604923367794641481

`A194206(1+n^(1+n))+1`
-/

namespace A380035.P7604923367794641481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194206 (1 + n ^ (1 + n)) + 1

end

end A380035.P7604923367794641481

/-!
# A380037: For n >= 1, if there exists an m < n such that a(m) = a(n), take the largest such m and set a(n+1) as 1 more than the number of positive terms between a(m+1) and a(n-1). Otherwise, a(n+1) = -1. Start with a(1) = 0.

The programs for A380037, there is no canonical definition to state claims against.
-/

/-! ## A380037.P1647429136633667445

`A032742(n+1)-A245920(A100967(n+1))`
-/

namespace A380037.P1647429136633667445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) - A245920 (A100967 (n + 1)).toNat

end

end A380037.P1647429136633667445

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

/-! ## A380042.P10492548400057640702

`A004277(A161629(n))-A087188(n)`
-/

namespace A380042.P10492548400057640702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A161629 n).toNat - A087188 n

end

end A380042.P10492548400057640702

/-! ## A380042.P13803555884252485522

`A004277(A161629(n))-A001055(n+1)`
-/

namespace A380042.P13803555884252485522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A161629 n).toNat - A001055 (n + 1)

end

end A380042.P13803555884252485522

/-!
# A380043: E.g.f. A(x) satisfies A(x) = 1/( 1 - 3*x*exp(x*A(x)^3) )^(1/3).

The programs for A380043, there is no canonical definition to state claims against.
-/

/-! ## A380043.P7992325195280594593

`A372251(n)-A122179(A212722(n))`
-/

namespace A380043.P7992325195280594593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372251 n - A122179 (A212722 n).toNat

end

end A380043.P7992325195280594593

/-! ## A380043.P15713676413904414631

`A372251(n)-A184964(A327879(n))`
-/

namespace A380043.P15713676413904414631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372251 n - A184964 (A327879 n).toNat

end

end A380043.P15713676413904414631

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

The programs for A380049, the canonical program `A380049.P5942803825482332546` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380049 has offset 1).

The definition of A380049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380049.P10134060482704879566

`∑[1-∑[(-1)^∑{e}[n+1, #]]]`
-/

namespace A380049.P10134060482704879566
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

end A380049.P10134060482704879566

namespace A380049

/-- `∑[1-∑[(-1)^∑{e}[n+1, #]]]` -/
def P10134060482704879566.Spec : Prop :=
  ∀ n, P10134060482704879566.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P8969033332658691668

`∑[1+∑[-(-1)^∑{e}[1+n, #]]]`
-/

namespace A380049.P8969033332658691668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P8969033332658691668

namespace A380049

/-- `∑[1+∑[-(-1)^∑{e}[1+n, #]]]` -/
def P8969033332658691668.Spec : Prop :=
  ∀ n, P8969033332658691668.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P5942803825482332546

`∑[1-∑[1-(2*∑{e}[n+1, #])%4]]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A380049

/-- `∑[1-∑[1-(2*∑{e}[n+1, #])%4]]` -/
def P5942803825482332546.Spec : Prop :=
  ∀ n, P5942803825482332546.a n = A380049 (n + 1)

theorem P5942803825482332546.correct : P5942803825482332546.Spec := by
  intro n
  simp only [A380049, Nat.add_sub_cancel]

end A380049

/-! ## A380049.P3212244106079743491

`∑[A072203(1+n)]`
-/

namespace A380049.P3212244106079743491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072203 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P3212244106079743491

namespace A380049

/-- `∑[A072203(1+n)]` -/
def P3212244106079743491.Spec : Prop :=
  ∀ n, P3212244106079743491.a n = A380049 (n + 1)

end A380049

/-! ## A380049.P12887415259892645612

`∑[1-A002819(1+n)]`
-/

namespace A380049.P12887415259892645612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002819 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P12887415259892645612

namespace A380049

/-- `∑[1-A002819(1+n)]` -/
def P12887415259892645612.Spec : Prop :=
  ∀ n, P12887415259892645612.a n = A380049 (n + 1)

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

/-! ## A380054.P8170034991714581901

`A353483(A090899(n+2))+A157003(n)`
-/

namespace A380054.P8170034991714581901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353483 (A090899 (n + 2)).toNat + A157003 n

end

end A380054.P8170034991714581901

/-! ## A380054.P18356327607469304572

`A355452(A140662(n+3))+A157003(n)`
-/

namespace A380054.P18356327607469304572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355452 (A140662 (n + 3)).toNat + A157003 n

end

end A380054.P18356327607469304572

/-! ## A380054.P8864549605738903681

`A265245(A338123(n+3))+A157003(n)`
-/

namespace A380054.P8864549605738903681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265245 (A338123 (n + 3)).toNat + A157003 n

end

end A380054.P8864549605738903681

/-!
# A380056: Expansion of e.g.f. (exp(x) - 1)/cos(2*x).

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

/-! ## A380058.P8227278425177192678

`A193114(n)-A181154(2*n+3)`
-/

namespace A380058.P8227278425177192678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193114 n - A181154 (2 * n + 3)

end

end A380058.P8227278425177192678

/-! ## A380058.P15216699339853319849

`A193114(n)-A083892(A103662(n))`
-/

namespace A380058.P15216699339853319849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193114 n - A083892 (A103662 n).toNat

end

end A380058.P15216699339853319849

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

/-!
# A380059: G.f. A(x) satisfies: A(x)^4 = x * A( A(x)^3 + A(x)^4 ).

The programs for A380059, there is no canonical definition to state claims against.
-/

/-! ## A380059.P13329760902353298534

`A198888(n)+A086011(A007716(n))`
-/

namespace A380059.P13329760902353298534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A086011 (A007716 n).toNat

end

end A380059.P13329760902353298534

/-! ## A380059.P9709217406888780241

`A198888(n)+A102681(A018022(n))`
-/

namespace A380059.P9709217406888780241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A102681 (A018022 n).toNat

end

end A380059.P9709217406888780241

/-! ## A380059.P14693546222706649874

`A198888(n)+A025457(A111433(n))`
-/

namespace A380059.P14693546222706649874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A025457 (A111433 n).toNat

end

end A380059.P14693546222706649874

/-! ## A380059.P2626863443852102444

`A198888(n)+A079944(A071253(n))`
-/

namespace A380059.P2626863443852102444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A079944 (A071253 n).toNat

end

end A380059.P2626863443852102444

/-! ## A380059.P5803804519471075232

`A198888(n)+A185274(A027187(n))`
-/

namespace A380059.P5803804519471075232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198888 n + A185274 (A027187 n).toNat

end

end A380059.P5803804519471075232

/-!
# A380060: G.f. A(x) satisfies A(x) = Sum_{n=-oo..+oo} x^(n^2) * (A(x) - x^n)^n/(1 - x^n*A(x))^n.

The programs for A380060, there is no canonical definition to state claims against.
-/

/-! ## A380060.P9422660092786158713

`A305117(A006139(n)+A002262(n+1))`
-/

namespace A380060.P9422660092786158713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (A006139 n + A002262 (n + 1)).toNat

end

end A380060.P9422660092786158713

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

/-! ## A380061.P4859180149679729310

`A193726(n)+A054900(A227427(n+1))`
-/

namespace A380061.P4859180149679729310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 n + A054900 (A227427 (n + 1)).toNat

end

end A380061.P4859180149679729310

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

/-! ## A380062.P14080257186613722134

`A356843(A326518(n))-A326518(n)`
-/

namespace A380062.P14080257186613722134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356843 (A326518 n).toNat - A326518 n

end

end A380062.P14080257186613722134

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

/-! ## A380068.P2512787089186317227

`A327864(A082181(n)+n+1)`
-/

namespace A380068.P2512787089186317227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (A082181 n + (n + 1 : ℤ)).toNat

end

end A380068.P2512787089186317227

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

/-! ## A380069.P9551512508583842128

`A051624(A136051(1+n))`
-/

namespace A380069.P9551512508583842128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (A136051 (1 + n)).toNat

end

end A380069.P9551512508583842128

/-! ## A380069.P15028332170805809795

`A118015(A136061(1+n)+2)`
-/

namespace A380069.P15028332170805809795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (A136061 (1 + n) + 2).toNat

end

end A380069.P15028332170805809795

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

/-! ## A380075.P11715286475238289647

`record[A379899(1+n)]`
-/

namespace A380075.P11715286475238289647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379899 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380075.P11715286475238289647

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

/-! ## A380075.P1607814743197523036

`record[A151800(and(A303403(1+n), n))]`
-/

namespace A380075.P1607814743197523036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.land (A303403 (1 + n)) (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380075.P1607814743197523036

/-!
# A380076: Indices of records in A379899.

The programs for A380076, there is no canonical definition to state claims against.
-/

/-! ## A380076.P17053164332642178896

`lt[A006093(n+1), A379899(n+1)]+1`
-/

namespace A380076.P17053164332642178896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380076.P17053164332642178896

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

The programs for A380079, the canonical program `A380079.P5902811964599402395` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380079 has offset 1).

The definition of A380079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380079.P13563617206686231618

`A026272(A022342(2+n))`
-/

namespace A380079.P13563617206686231618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A022342 (2 + n)).toNat

end

end A380079.P13563617206686231618

namespace A380079

/-- `A026272(A022342(2+n))` -/
def P13563617206686231618.Spec : Prop :=
  ∀ n, P13563617206686231618.a n = A380079 (n + 1)

end A380079

/-! ## A380079.P5902811964599402395

`A193564(A000201(n+2)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380079

/-- `A193564(A000201(n+2)+1)` -/
def P5902811964599402395.Spec : Prop :=
  ∀ n, P5902811964599402395.a n = A380079 (n + 1)

theorem P5902811964599402395.correct : P5902811964599402395.Spec := by
  intro n
  simp only [A380079, Nat.add_sub_cancel]

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

/-! ## A380080.P11293662733195567142

`A058207(or(1, A105219(n)))`
-/

namespace A380080.P11293662733195567142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (Int.lor 1 (A105219 n)).toNat

end

end A380080.P11293662733195567142

/-!
# A380081: Expansion of e.g.f. (1/x) * Series_Reversion( x / (1 + 3*x*exp(x))^(1/3) ).

The programs for A380081, there is no canonical definition to state claims against.
-/

/-! ## A380081.P15276519085629406664

`A095793(n+1)`
-/

namespace A380081.P15276519085629406664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095793 (n + 1)

end

end A380081.P15276519085629406664

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

The programs for A380082, the canonical program `A380082.P7051629911408973827` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380082 has offset 2).

The definition of A380082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380082.P7051629911408973827

`(n+2)!*C(n+1, 2)*2^n`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A380082.P16511654939353427421

`A000217(n)*A006882(2*(n+2))/4`
-/

namespace A380082.P16511654939353427421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n * A006882 (2 * (n + 2)) : ℚ) / 4

end

end A380082.P16511654939353427421

namespace A380082

/-- `A000217(n)*A006882(2*(n+2))/4` -/
def P16511654939353427421.Spec : Prop :=
  ∀ n, P16511654939353427421.a n = (A380082 (n + 2) : ℚ)

end A380082

/-! ## A380082.P3759219212446640138

`∑{#}[n*(n+2), #*A000165(n)]`
-/

namespace A380082.P3759219212446640138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A000165 n

end

end A380082.P3759219212446640138

namespace A380082

/-- `∑{#}[n*(n+2), #*A000165(n)]` -/
def P3759219212446640138.Spec : Prop :=
  ∀ n, P3759219212446640138.a n = A380082 (n + 2)

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

The programs for A380085, the canonical program `A380085.P4060829416134286925` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380085 has offset 1).

The definition of A380085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380085.P4060829416134286925

`A389455(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A380085

/-- `A389455(n+1)` -/
def P4060829416134286925.Spec : Prop :=
  ∀ n, P4060829416134286925.a n = A380085 (n + 1)

theorem P4060829416134286925.correct : P4060829416134286925.Spec := by
  intro n
  simp only [A380085, Nat.add_sub_cancel]

end A380085

/-! ## A380085.P3170890242551369458

`A380088((n+1)²/A327937(n+1))`
-/

namespace A380085.P3170890242551369458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380088 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A327937 (n + 1) : ℚ))).toNat

end

end A380085.P3170890242551369458

namespace A380085

/-- `A380088((n+1)²/A327937(n+1))` -/
def P3170890242551369458.Spec : Prop :=
  ∀ n, P3170890242551369458.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P13341716192041865087

`A385652(A385653(n+1))/A368333(n+1)`
-/

namespace A380085.P13341716192041865087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385652 (A385653 (n + 1)).toNat : ℚ) / (A368333 (n + 1) : ℚ)

end

end A380085.P13341716192041865087

namespace A380085

/-- `A385652(A385653(n+1))/A368333(n+1)` -/
def P13341716192041865087.Spec : Prop :=
  ∀ n, P13341716192041865087.a n = (A380085 (n + 1) : ℚ)

end A380085

/-! ## A380085.P12810421898068151226

`A380088((n+1)*A368333(n+1))`
-/

namespace A380085.P12810421898068151226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380088 ((n + 1 : ℤ) * A368333 (n + 1)).toNat

end

end A380085.P12810421898068151226

namespace A380085

/-- `A380088((n+1)*A368333(n+1))` -/
def P12810421898068151226.Spec : Prop :=
  ∀ n, P12810421898068151226.a n = A380085 (n + 1)

end A380085

/-! ## A380085.P2442988156995535773

`gcd(A360539(n+1), A365162(n+1))`
-/

namespace A380085.P2442988156995535773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A360539 (n + 1)) (A365162 (n + 1))

end

end A380085.P2442988156995535773

namespace A380085

/-- `gcd(A360539(n+1), A365162(n+1))` -/
def P2442988156995535773.Spec : Prop :=
  ∀ n, (P2442988156995535773.a n : ℤ) = A380085 (n + 1)

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

/-! ## A380086.P10484656923998522004

`A380089(A380085(C(n+1, n)))`
-/

namespace A380086.P10484656923998522004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (A380085 (Nat.choose (n + 1) n)).toNat

end

end A380086.P10484656923998522004

namespace A380086

/-- `A380089(A380085(C(n+1, n)))` -/
def P10484656923998522004.Spec : Prop :=
  ∀ n, P10484656923998522004.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P9916722950172779912

`∏{p}[A380085(n+1), A328236(#)]`
-/

namespace A380086.P9916722950172779912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A328236 p

end

end A380086.P9916722950172779912

namespace A380086

/-- `∏{p}[A380085(n+1), A328236(#)]` -/
def P9916722950172779912.Spec : Prop :=
  ∀ n, P9916722950172779912.a n = A380086 (n + 1)

end A380086

/-! ## A380086.P4962349552787240622

`A380089(A380085(n+1)/1)`
-/

namespace A380086.P4962349552787240622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (SequenceMachineLib.roundAway ((A380085 (n + 1) : ℚ) / 1)).toNat

end

end A380086.P4962349552787240622

namespace A380086

/-- `A380089(A380085(n+1)/1)` -/
def P4962349552787240622.Spec : Prop :=
  ∀ n, P4962349552787240622.a n = A380086 (n + 1)

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

/-! ## A380087.P5246357854127624384

`A380090(A380085(C(n+1, n)))`
-/

namespace A380087.P5246357854127624384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (A380085 (Nat.choose (n + 1) n)).toNat

end

end A380087.P5246357854127624384

namespace A380087

/-- `A380090(A380085(C(n+1, n)))` -/
def P5246357854127624384.Spec : Prop :=
  ∀ n, P5246357854127624384.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P2577412606314458503

`A380090(A380085(n+1)/1)`
-/

namespace A380087.P2577412606314458503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (SequenceMachineLib.roundAway ((A380085 (n + 1) : ℚ) / 1)).toNat

end

end A380087.P2577412606314458503

namespace A380087

/-- `A380090(A380085(n+1)/1)` -/
def P2577412606314458503.Spec : Prop :=
  ∀ n, P2577412606314458503.a n = A380087 (n + 1)

end A380087

/-! ## A380087.P5373609213653301403

`A389450(n+1)`
-/

namespace A380087.P5373609213653301403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389450 (n + 1)

end

end A380087.P5373609213653301403

namespace A380087

/-- `A389450(n+1)` -/
def P5373609213653301403.Spec : Prop :=
  ∀ n, P5373609213653301403.a n = A380087 (n + 1)

end A380087

/-!
# A380088: The largest unitary divisor of n that is a term in A207481.

The programs for A380088, there is no canonical definition to state claims against.
-/

/-! ## A380088.P5309002275938675078

`(1+n)/A368329(n+1)`
-/

namespace A380088.P5309002275938675078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A368329 (n + 1) : ℚ)

end

end A380088.P5309002275938675078

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

/-! ## A380088.P685384206412620633

`gcd(n+1, A241458(2^val(n+1, 2)))`
-/

namespace A380088.P685384206412620633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A241458 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A380088.P685384206412620633

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

/-! ## A380089.P5658667935029551397

`A365499(A390694(n+1))`
-/

namespace A380089.P5658667935029551397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365499 (A390694 (n + 1)).toNat

end

end A380089.P5658667935029551397

/-! ## A380089.P16833423466987957843

`lcm(A107459(n+4), A365498(n+1))`
-/

namespace A380089.P16833423466987957843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107459 (n + 4)) (A365498 (n + 1))

end

end A380089.P16833423466987957843

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

/-! ## A380090.P16057227798101000728

`A034448(n+1)%A243189(A001316(2*n+3))`
-/

namespace A380090.P16057227798101000728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1)) (A243189 (A001316 (2 * n + 3)).toNat)

end

end A380090.P16057227798101000728

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

/-! ## A380092.P1985738314038304714

`and(A269250(n), A324239(n+1))`
-/

namespace A380092.P1985738314038304714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269250 n) (A324239 (n + 1))

end

end A380092.P1985738314038304714

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

The programs for A380097, the canonical program `A380097.P6722204383012852059` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380097 has offset 0).

The definition of A380097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380097.P6722204383012852059

`1/(n+1)*∑{#}[n, 3^#*#^(n-#)*(n+#)!/(#!*(n-#)!)]`

The canonical program, it is in `Seq.B000.C049`.
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

