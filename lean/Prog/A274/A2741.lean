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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A274100: Number of partitions of 2^n into at most four parts.

The programs for A274100, there is no canonical definition to state claims against.
-/

/-! ## A274100.P9823070930788383233

`A014126(floor(2^(n-1)))`
-/

namespace A274100.P9823070930788383233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A274100.P9823070930788383233

/-! ## A274100.P4530163744637468800

`record[A014126(Δ[2^floor(n/2)])]`
-/

namespace A274100.P4530163744637468800
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274100.P4530163744637468800

/-! ## A274100.P16784286439777195890

`A014126(A011782(n))-A000007(n)`
-/

namespace A274100.P16784286439777195890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (A011782 n).toNat - A000007 n

end

end A274100.P16784286439777195890

/-! ## A274100.P13873219672891838559

`A014126(A131577(n))%A001020(n+1)`
-/

namespace A274100.P13873219672891838559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014126 (A131577 n).toNat) (A001020 (n + 1))

end

end A274100.P13873219672891838559

/-! ## A274100.P1583042750467632605

`A001400(2^n)`
-/

namespace A274100.P1583042750467632605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (2 ^ n)

end

end A274100.P1583042750467632605

/-!
# A274102: a(n) = nearest integer to k*sin(sqrt(k)+j*Pi) where n = 2*k+j, j=0 or 1.

The programs for A274102, there is no canonical definition to state claims against.
-/

/-! ## A274102.P12491252530248818552

`A274101(2*n)`
-/

namespace A274102.P12491252530248818552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (2 * n)

end

end A274102.P12491252530248818552

/-! ## A274102.P3719875996741528317

`A274101(A004277(n))%(n+1)`
-/

namespace A274102.P3719875996741528317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274101 (A004277 n).toNat) (n + 1 : ℤ)

end

end A274102.P3719875996741528317

/-! ## A274102.P531485447212173588

`A274101(A005843(n))%(n+1)`
-/

namespace A274102.P531485447212173588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274101 (A005843 n).toNat) (n + 1 : ℤ)

end

end A274102.P531485447212173588

/-! ## A274102.P8747543231874355256

`A274101(A005843(n))/A054977(n+2)`
-/

namespace A274102.P8747543231874355256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274101 (A005843 n).toNat : ℚ) / (A054977 (n + 2) : ℚ)

end

end A274102.P8747543231874355256

/-! ## A274102.P8148431676113920638

`A274101(A004277(n))+val(A001844(n)+1, 4)`
-/

namespace A274102.P8148431676113920638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (A004277 n).toNat + (SequenceMachineLib.valuation (A001844 n + 1).toNat 4 : ℤ)

end

end A274102.P8148431676113920638

/-! ## A274102.P4605729380802393365

`A274101(A004277(n))+C(A297044(n+1), 5)`
-/

namespace A274102.P4605729380802393365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (A004277 n).toNat + (Nat.choose (A297044 (n + 1)).toNat 5 : ℤ)

end

end A274102.P4605729380802393365

/-! ## A274102.P17338427900634324222

`∑{e}[A025584(n+1), A274101(A004277(n))/#]`
-/

namespace A274102.P17338427900634324222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A274101 (A004277 n).toNat : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A274102.P17338427900634324222

/-! ## A274102.P6164410760279909307

`A274101(n+n)+A185705((n+1)²)`
-/

namespace A274102.P6164410760279909307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (n + n) + A185705 ((n + 1) ^ 2)

end

end A274102.P6164410760279909307

/-! ## A274102.P2201437216325651443

`A274101(A004277(n))/A014963(A103558(n+1))`
-/

namespace A274102.P2201437216325651443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274101 (A004277 n).toNat : ℚ) / (A014963 (A103558 (n + 1)).toNat : ℚ)

end

end A274102.P2201437216325651443

/-!
# A274104: a(n) = Sum_{k=0..n} (3*k+2)*Catalan(k).

The programs for A274104, the canonical program `A274104.P7123589224199202206` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274104 has offset 0).

The definition of A274104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274104.P2854629816205877202

`A006134(n)+A006134(n+1)/2-1/2`
-/

namespace A274104.P2854629816205877202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n : ℚ) + (A006134 (n + 1) : ℚ) / 2 - (1 : ℚ) / 2

end

end A274104.P2854629816205877202

namespace A274104

/-- `A006134(n)+A006134(n+1)/2-1/2` -/
def P2854629816205877202.Spec : Prop :=
  ∀ n, P2854629816205877202.a n = (A274104 n : ℚ)

end A274104

/-! ## A274104.P7123589224199202206

`A014137(n+1)+(n+1)*A000108(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274104

/-- `A014137(n+1)+(n+1)*A000108(n+1)-1` -/
def P7123589224199202206.Spec : Prop :=
  ∀ n, P7123589224199202206.a n = A274104 n

theorem P7123589224199202206.correct : P7123589224199202206.Spec := by
  intro n
  simp only [A274104]

end A274104

/-! ## A274104.P7439323881082408480

`∑[A051960(n)]`
-/

namespace A274104.P7439323881082408480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P7439323881082408480

namespace A274104

/-- `∑[A051960(n)]` -/
def P7439323881082408480.Spec : Prop :=
  ∀ n, P7439323881082408480.a n = A274104 n

end A274104

/-! ## A274104.P2627526014373898291

`A036256(Δ[n²])`
-/

namespace A274104.P2627526014373898291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A274104.P2627526014373898291

namespace A274104

/-- `A036256(Δ[n²])` -/
def P2627526014373898291.Spec : Prop :=
  ∀ n, P2627526014373898291.a n = A274104 n

end A274104

/-! ## A274104.P11865330798429381429

`∑[A050168(Δ[n²])]`
-/

namespace A274104.P11865330798429381429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P11865330798429381429

namespace A274104

/-- `∑[A050168(Δ[n²])]` -/
def P11865330798429381429.Spec : Prop :=
  ∀ n, P11865330798429381429.a n = A274104 n

end A274104

/-! ## A274104.P9490409067684652460

`∑[A208976(2*n)+1]`
-/

namespace A274104.P9490409067684652460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P9490409067684652460

namespace A274104

/-- `∑[A208976(2*n)+1]` -/
def P9490409067684652460.Spec : Prop :=
  ∀ n, P9490409067684652460.a n = A274104 n

end A274104

/-! ## A274104.P5459182209458563315

`∑[A028283(n+1)/2]`
-/

namespace A274104.P5459182209458563315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028283 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P5459182209458563315

namespace A274104

/-- `∑[A028283(n+1)/2]` -/
def P5459182209458563315.Spec : Prop :=
  ∀ n, P5459182209458563315.a n = (A274104 n : ℚ)

end A274104

/-! ## A274104.P4006066736187814705

`Δ[(n+1)*A014138(n)]`
-/

namespace A274104.P4006066736187814705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274104.P4006066736187814705

namespace A274104

/-- `Δ[(n+1)*A014138(n)]` -/
def P4006066736187814705.Spec : Prop :=
  ∀ n, P4006066736187814705.a n = A274104 n

end A274104

/-! ## A274104.P1357616521119956804

`A072100(2*n+3)-1`
-/

namespace A274104.P1357616521119956804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (2 * n + 3) - 1

end

end A274104.P1357616521119956804

namespace A274104

/-- `A072100(2*n+3)-1` -/
def P1357616521119956804.Spec : Prop :=
  ∀ n, P1357616521119956804.a n = A274104 n

end A274104

/-! ## A274104.P13149892650292058380

`∑[(3*n+2)*A000108(n)]`
-/

namespace A274104.P13149892650292058380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P13149892650292058380

namespace A274104

/-- `∑[(3*n+2)*A000108(n)]` -/
def P13149892650292058380.Spec : Prop :=
  ∀ n, P13149892650292058380.a n = A274104 n

end A274104

/-! ## A274104.P6848489586487329571

`∑[abs(Δ[A072100(2*n+1)])]`
-/

namespace A274104.P6848489586487329571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P6848489586487329571

namespace A274104

/-- `∑[abs(Δ[A072100(2*n+1)])]` -/
def P6848489586487329571.Spec : Prop :=
  ∀ n, P6848489586487329571.a n = A274104 n

end A274104

/-! ## A274104.P11984260921196485901

`∑[root(A050168(2*n+1), 2)²]`
-/

namespace A274104.P11984260921196485901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A050168 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P11984260921196485901

namespace A274104

/-- `∑[root(A050168(2*n+1), 2)²]` -/
def P11984260921196485901.Spec : Prop :=
  ∀ n, P11984260921196485901.a n = (A274104 n : ℝ)

end A274104

/-! ## A274104.P15169430257865652527

`A038665(n)-A279557(n)`
-/

namespace A274104.P15169430257865652527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038665 n - A279557 n

end

end A274104.P15169430257865652527

namespace A274104

/-- `A038665(n)-A279557(n)` -/
def P15169430257865652527.Spec : Prop :=
  ∀ n, P15169430257865652527.a n = A274104 n

end A274104

/-! ## A274104.P14496697710655255540

`∑[A001700(n)+A000984(n)]`
-/

namespace A274104.P14496697710655255540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P14496697710655255540

namespace A274104

/-- `∑[A001700(n)+A000984(n)]` -/
def P14496697710655255540.Spec : Prop :=
  ∀ n, P14496697710655255540.a n = A274104 n

end A274104

/-! ## A274104.P17964040923589476230

`A001700(n)+∑[A029651(n)]`
-/

namespace A274104.P17964040923589476230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P17964040923589476230

namespace A274104

/-- `A001700(n)+∑[A029651(n)]` -/
def P17964040923589476230.Spec : Prop :=
  ∀ n, P17964040923589476230.a n = A274104 n

end A274104

/-! ## A274104.P14329272187883249989

`∑[A000108(n)*A016789(n)]`
-/

namespace A274104.P14329272187883249989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P14329272187883249989

namespace A274104

/-- `∑[A000108(n)*A016789(n)]` -/
def P14329272187883249989.Spec : Prop :=
  ∀ n, P14329272187883249989.a n = A274104 n

end A274104

/-! ## A274104.P15519304088320698324

`A014138(n)+A000984(n+1)`
-/

namespace A274104.P15519304088320698324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + A000984 (n + 1)

end

end A274104.P15519304088320698324

namespace A274104

/-- `A014138(n)+A000984(n+1)` -/
def P15519304088320698324.Spec : Prop :=
  ∀ n, P15519304088320698324.a n = A274104 n

end A274104

/-! ## A274104.P17019617635765335556

`A030662(n+1)+A014137(n)`
-/

namespace A274104.P17019617635765335556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1) + A014137 n

end

end A274104.P17019617635765335556

namespace A274104

/-- `A030662(n+1)+A014137(n)` -/
def P17019617635765335556.Spec : Prop :=
  ∀ n, P17019617635765335556.a n = A274104 n

end A274104

/-! ## A274104.P3616795074572003632

`A079309(n+1)+A006134(n)`
-/

namespace A274104.P3616795074572003632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079309 (n + 1) + A006134 n

end

end A274104.P3616795074572003632

namespace A274104

/-- `A079309(n+1)+A006134(n)` -/
def P3616795074572003632.Spec : Prop :=
  ∀ n, P3616795074572003632.a n = A274104 n

end A274104

/-! ## A274104.P9707313292777565213

`A079309(n+1)+∑[A000984(n)]`
-/

namespace A274104.P9707313292777565213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079309 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274104.P9707313292777565213

namespace A274104

/-- `A079309(n+1)+∑[A000984(n)]` -/
def P9707313292777565213.Spec : Prop :=
  ∀ n, P9707313292777565213.a n = A274104 n

end A274104

/-!
# A274107: (Balanced ternary representation of n) - (reversed balanced ternary representation of n).

The programs for A274107, there is no canonical definition to state claims against.
-/

/-! ## A274107.P3463167302919744512

`A117966(n)-A134028(n)`
-/

namespace A274107.P3463167302919744512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n - A134028 n

end

end A274107.P3463167302919744512

/-! ## A274107.P9372248039897401377

`A004488(n)-(A134028(n)+n)`
-/

namespace A274107.P9372248039897401377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (A134028 n + (n : ℤ))

end

end A274107.P9372248039897401377

/-! ## A274107.P6007864062883407505

`A001489(n)-(A134028(n)-A004488(n))`
-/

namespace A274107.P6007864062883407505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n - (A134028 n - A004488 n)

end

end A274107.P6007864062883407505

/-! ## A274107.P15111828992218788239

`A117966(n)-A327252(A117967(n))`
-/

namespace A274107.P15111828992218788239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n - A327252 (A117967 n).toNat

end

end A274107.P15111828992218788239

/-! ## A274107.P14141503560527947680

`A327252(A117967(n)+n)+A117966(n)`
-/

namespace A274107.P14141503560527947680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 (A117967 n + (n : ℤ)).toNat + A117966 n

end

end A274107.P14141503560527947680

/-! ## A274107.P16483184704743017425

`A319047(∑[n]+n)-A134028(n)`
-/

namespace A274107.P16483184704743017425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A134028 n

end

end A274107.P16483184704743017425

/-!
# A274108: Number of partitions of n into parts with exactly two different sizes, the sizes being relatively prime.

The programs for A274108, there is no canonical definition to state claims against.
-/

/-! ## A274108.P17599750592556368632

`∑{d}[n+1, A002133(#)*A008683((n+1)/#)]`
-/

namespace A274108.P17599750592556368632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002133 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A274108.P17599750592556368632

/-! ## A274108.P17582925448886332109

`A110571(n+1)/2-(n+1)`
-/

namespace A274108.P17582925448886332109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110571 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A274108.P17582925448886332109

/-! ## A274108.P6378311507453712547

`A001478(n+1)+A110571(n+1)/2`
-/

namespace A274108.P6378311507453712547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) : ℚ) + (A110571 (n + 1) : ℚ) / 2

end

end A274108.P6378311507453712547

/-! ## A274108.P2196198821054562323

`A014682(A110571(n+1))-(n+1)`
-/

namespace A274108.P2196198821054562323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A110571 (n + 1)).toNat - (n + 1 : ℤ)

end

end A274108.P2196198821054562323

/-! ## A274108.P11518334308931562160

`A065423(A110571(n+1)-2*n)`
-/

namespace A274108.P11518334308931562160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A110571 (n + 1) - (2 * n : ℤ)).toNat

end

end A274108.P11518334308931562160

/-! ## A274108.P12175969468006431828

`A004526(A110571(n+1)-2*(n+1))`
-/

namespace A274108.P12175969468006431828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110571 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A274108.P12175969468006431828

/-! ## A274108.P1992453462792282970

`A084964(A110571(n+1)-(2*n+1))`
-/

namespace A274108.P1992453462792282970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A110571 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A274108.P1992453462792282970

/-! ## A274108.P17722085817005392788

`A001281(A110571(n+1)-A005843(n+1))`
-/

namespace A274108.P17722085817005392788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A110571 (n + 1) - A005843 (n + 1)).toNat

end

end A274108.P17722085817005392788

/-! ## A274108.P4500546887892363861

`A065423(A110571(n+1))-n`
-/

namespace A274108.P4500546887892363861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A110571 (n + 1)).toNat - (n : ℤ)

end

end A274108.P4500546887892363861

/-! ## A274108.P3956342684219167462

`A000463(A049835(n+1))-(n+1)`
-/

namespace A274108.P3956342684219167462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A049835 (n + 1)).toNat - (n + 1 : ℤ)

end

end A274108.P3956342684219167462

/-! ## A274108.P14199850601445333303

`A004526(A110571(n+1)-1)-n`
-/

namespace A274108.P14199850601445333303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110571 (n + 1) - 1).toNat - (n : ℤ)

end

end A274108.P14199850601445333303

/-! ## A274108.P13197038966812136041

`A008619(A110571(n+1))-A000027(n+2)`
-/

namespace A274108.P13197038966812136041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A110571 (n + 1)).toNat - A000027 (n + 2)

end

end A274108.P13197038966812136041

/-!
# A274109: Triangle read by rows: T(n,k) = number of partitions of n into exactly k parts with exactly two different sizes, the sizes being relatively prime (n >= 3, 2 <= k <= n-1).

The programs for A274109, there is no canonical definition to state claims against.
-/

/-! ## A274109.P10733657000451387005

`A124734(A272565(A280785(n+1)²))`
-/

namespace A274109.P10733657000451387005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (A272565 (A280785 (n + 1) ^ 2).toNat).toNat

end

end A274109.P10733657000451387005

/-! ## A274109.P11418837559581850689

`A376109(A033842(n))`
-/

namespace A274109.P11418837559581850689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A033842 n).toNat

end

end A274109.P11418837559581850689

/-! ## A274109.P17361989955026609129

`A160801(A280785(n+1))`
-/

namespace A274109.P17361989955026609129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160801 (A280785 (n + 1)).toNat

end

end A274109.P17361989955026609129

/-! ## A274109.P8151399342399780227

`2-A016011(A028338(n))`
-/

namespace A274109.P8151399342399780227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A016011 (A028338 n).toNat

end

end A274109.P8151399342399780227

/-! ## A274109.P1524332934897643600

`A193509(2*A071207(n))`
-/

namespace A274109.P1524332934897643600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193509 (2 * A071207 n).toNat

end

end A274109.P1524332934897643600

/-!
# A274110: Number of equivalence classes of ballot paths of length n for the string uu.

The programs for A274110, the canonical program `A274110.P7575641764630496997` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274110 has offset 1).

The definition of A274110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274110.P7575641764630496997

`2*a(n-1)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274110

/-- `2*a(n-1)-a(n-3)+a(n-4)-a(n-5)` -/
def P7575641764630496997.Spec : Prop :=
  ∀ n, P7575641764630496997.a n = A274110 (n + 1)

theorem P7575641764630496997.correct : P7575641764630496997.Spec := by
  intro n
  simp only [A274110, Nat.add_sub_cancel]

end A274110

/-! ## A274110.P17159225135782135410

`∑[ogf(-x/(-1+x+x^2+x^4))]+1`
-/

namespace A274110.P17159225135782135410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274110.P17159225135782135410

namespace A274110

/-- `∑[ogf(-x/(-1+x+x^2+x^4))]+1` -/
def P17159225135782135410.Spec : Prop :=
  ∀ n, P17159225135782135410.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P17851017489681625907

`∑[a(n-1)+a(n-2)+a(n-4)]+1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A274110.P17851017489681625907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274110.P17851017489681625907

namespace A274110

/-- `∑[a(n-1)+a(n-2)+a(n-4)]+1` -/
def P17851017489681625907.Spec : Prop :=
  ∀ n, (P17851017489681625907.a n : ℤ) = A274110 (n + 1)

end A274110

/-! ## A274110.P17562719033608548901

`A368299(n)+1`
-/

namespace A274110.P17562719033608548901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368299 n + 1

end

end A274110.P17562719033608548901

namespace A274110

/-- `A368299(n)+1` -/
def P17562719033608548901.Spec : Prop :=
  ∀ n, P17562719033608548901.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P11382748140493555875

`∑[A181532(n)]+1`
-/

namespace A274110.P11382748140493555875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274110.P11382748140493555875

namespace A274110

/-- `∑[A181532(n)]+1` -/
def P11382748140493555875.Spec : Prop :=
  ∀ n, P11382748140493555875.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P13857369453521382625

`∑[A060945(abs(1-n))]`
-/

namespace A274110.P13857369453521382625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274110.P13857369453521382625

namespace A274110

/-- `∑[A060945(abs(1-n))]` -/
def P13857369453521382625.Spec : Prop :=
  ∀ n, P13857369453521382625.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P17448280976056911800

`∑[A017818(record[xor(1, n+1)])]`
-/

namespace A274110.P17448280976056911800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274110.P17448280976056911800

namespace A274110

/-- `∑[A017818(record[xor(1, n+1)])]` -/
def P17448280976056911800.Spec : Prop :=
  ∀ n, P17448280976056911800.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P1860808063516848289

`A005314(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A274110.P1860808063516848289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005314 n + a (n - 2)

end

end A274110.P1860808063516848289

namespace A274110

/-- `A005314(n)+a(n-2)` -/
def P1860808063516848289.Spec : Prop :=
  ∀ n, P1860808063516848289.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P11996332215703412272

`∑[A017818(2*n+1)]+1`
-/

namespace A274110.P11996332215703412272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274110.P11996332215703412272

namespace A274110

/-- `∑[A017818(2*n+1)]+1` -/
def P11996332215703412272.Spec : Prop :=
  ∀ n, P11996332215703412272.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P15042034229375265740

`A060945(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A274110.P15042034229375265740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060945 (n - 1) + a (n - 1)

end

end A274110.P15042034229375265740

namespace A274110

/-- `A060945(n-1)+a(n-1)` -/
def P15042034229375265740.Spec : Prop :=
  ∀ n, P15042034229375265740.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P423496392941984732

`A020736(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A274110.P423496392941984732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020736 (n - 2) - a (n - 1)

end

end A274110.P423496392941984732

namespace A274110

/-- `A020736(n-2)-a(n-1)` -/
def P423496392941984732.Spec : Prop :=
  ∀ n, P423496392941984732.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P18093942642796369527

`A193771(2*n)+1-A017818(2*n)`
-/

namespace A274110.P18093942642796369527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n) + (1 - A017818 (2 * n))

end

end A274110.P18093942642796369527

namespace A274110

/-- `A193771(2*n)+1-A017818(2*n)` -/
def P18093942642796369527.Spec : Prop :=
  ∀ n, P18093942642796369527.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P17371580241499425134

`A233522(2*n+1)+1-A017830(2*n)`
-/

namespace A274110.P17371580241499425134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (2 * n + 1) + (1 - A017830 (2 * n))

end

end A274110.P17371580241499425134

namespace A274110

/-- `A233522(2*n+1)+1-A017830(2*n)` -/
def P17371580241499425134.Spec : Prop :=
  ∀ n, P17371580241499425134.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P16088155026908012588

`(A307677(n+3)+1)/2`
-/

namespace A274110.P16088155026908012588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307677 (n + 3) + 1 : ℚ) / 2

end

end A274110.P16088155026908012588

namespace A274110

/-- `(A307677(n+3)+1)/2` -/
def P16088155026908012588.Spec : Prop :=
  ∀ n, P16088155026908012588.a n = (A274110 (n + 1) : ℚ)

end A274110

/-! ## A274110.P14438165618655549980

`A000035(n)+Δ[A060945(n+1)]`
-/

namespace A274110.P14438165618655549980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f1 (n + 1) - f1 n)

end

end A274110.P14438165618655549980

namespace A274110

/-- `A000035(n)+Δ[A060945(n+1)]` -/
def P14438165618655549980.Spec : Prop :=
  ∀ n, P14438165618655549980.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P16985603020705255496

`∑[A060945(n)]+1-A060945(n)`
-/

namespace A274110.P16985603020705255496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A060945 n)

end

end A274110.P16985603020705255496

namespace A274110

/-- `∑[A060945(n)]+1-A060945(n)` -/
def P16985603020705255496.Spec : Prop :=
  ∀ n, P16985603020705255496.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P15720876261912704275

`A060945(n+2)-A193771(2*n)`
-/

namespace A274110.P15720876261912704275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 2) - A193771 (2 * n)

end

end A274110.P15720876261912704275

namespace A274110

/-- `A060945(n+2)-A193771(2*n)` -/
def P15720876261912704275.Spec : Prop :=
  ∀ n, P15720876261912704275.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P4630260728907832421

`A247907(2*n)+1-A003520(2*n)`
-/

namespace A274110.P4630260728907832421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247907 (2 * n) + (1 - A003520 (2 * n))

end

end A274110.P4630260728907832421

namespace A274110

/-- `A247907(2*n)+1-A003520(2*n)` -/
def P4630260728907832421.Spec : Prop :=
  ∀ n, P4630260728907832421.a n = A274110 (n + 1)

end A274110

/-! ## A274110.P8530459892297229753

`A164001(2*(n+1))-A193771(2*n+1)`
-/

namespace A274110.P8530459892297229753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * (n + 1)) - A193771 (2 * n + 1)

end

end A274110.P8530459892297229753

namespace A274110

/-- `A164001(2*(n+1))-A193771(2*n+1)` -/
def P8530459892297229753.Spec : Prop :=
  ∀ n, P8530459892297229753.a n = A274110 (n + 1)

end A274110

/-!
# A274112: Number of equivalence classes of ballot paths of length n for the string ddu.

The programs for A274112, there is no canonical definition to state claims against.
-/

/-! ## A274112.P1129361066878124179

`A000196(A027336(A001972(n)))`
-/

namespace A274112.P1129361066878124179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A027336 (A001972 n).toNat).toNat

end

end A274112.P1129361066878124179

/-! ## A274112.P7143015981814673465

`A000196(A027336(∑[A008621(n)]))`
-/

namespace A274112.P7143015981814673465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A027336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A274112.P7143015981814673465

/-! ## A274112.P5010564880596665271

`A003005(A143951(n))+∑[A194698(n+1)]`
-/

namespace A274112.P5010564880596665271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A143951 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274112.P5010564880596665271

/-! ## A274112.P14478685676653929182

`A356944(A113439(n))`
-/

namespace A274112.P14478685676653929182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A113439 n).toNat

end

end A274112.P14478685676653929182

/-! ## A274112.P16184413183218532004

`A178798(A304405(n))+A029032(A029032(n))`
-/

namespace A274112.P16184413183218532004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A304405 n).toNat + A029032 (A029032 n).toNat

end

end A274112.P16184413183218532004

/-!
# A274113: Number of equivalence classes of ballot paths of length n for the string dud.

The programs for A274113, there is no canonical definition to state claims against.
-/

/-! ## A274113.P6645100801799516597

`A079487(eq[0, A181940(n)])`
-/

namespace A274113.P6645100801799516597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274113.P6645100801799516597

/-! ## A274113.P12759182080470254883

`round(A320353(n)/A332109(n+1))`
-/

namespace A274113.P12759182080470254883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A320353 n : ℚ) / (A332109 (n + 1) : ℚ))

end

end A274113.P12759182080470254883

/-! ## A274113.P13635657189210613820

`round(A320353(n)/A353511(n+1))`
-/

namespace A274113.P13635657189210613820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A320353 n : ℚ) / (A353511 (n + 1) : ℚ))

end

end A274113.P13635657189210613820

/-! ## A274113.P2658928007133583139

`A247973(A329703(n))`
-/

namespace A274113.P2658928007133583139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A329703 n).toNat

end

end A274113.P2658928007133583139

/-! ## A274113.P12978788433179440077

`A350350(A083198(n+5))`
-/

namespace A274113.P12978788433179440077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350350 (A083198 (n + 5)).toNat

end

end A274113.P12978788433179440077

/-!
# A274114: Number of equivalence classes of Dyck paths of semilength n for the string uuu.

The programs for A274114, there is no canonical definition to state claims against.
-/

/-! ## A274114.P12157303200592562365

`A024417(A190139(abs(1-n)))`
-/

namespace A274114.P12157303200592562365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A190139 |1 - (n : ℤ)|.toNat).toNat

end

end A274114.P12157303200592562365

/-! ## A274114.P17540939061681880777

`A051742(A221586(n+1))`
-/

namespace A274114.P17540939061681880777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A221586 (n + 1)).toNat

end

end A274114.P17540939061681880777

/-! ## A274114.P8622894658294420469

`A051742(A351437(n+1))`
-/

namespace A274114.P8622894658294420469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A351437 (n + 1)).toNat

end

end A274114.P8622894658294420469

/-! ## A274114.P2791800175889789946

`A008651(6*A024557(n))`
-/

namespace A274114.P2791800175889789946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (6 * A024557 n).toNat

end

end A274114.P2791800175889789946

/-! ## A274114.P4688242449928489172

`A243283(A174145(n)+A000988(n))`
-/

namespace A274114.P4688242449928489172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A174145 n + A000988 n).toNat

end

end A274114.P4688242449928489172

/-!
# A274115: Number of equivalence classes of Dyck paths of semilength n for the string duu.

The programs for A274115, there is no canonical definition to state claims against.
-/

/-! ## A274115.P12261061003357531942

`A274112(lcm(2, 2*(1-n)))`
-/

namespace A274115.P12261061003357531942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (Int.lcm 2 (2 * (1 - (n : ℤ))))

end

end A274115.P12261061003357531942

/-! ## A274115.P9563997512301613012

`A274112(2*(n-1)%(n+1))`
-/

namespace A274115.P9563997512301613012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (2 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A274115.P9563997512301613012

/-! ## A274115.P1004158470144684974

`A274112(n-2%(n+1)+n)`
-/

namespace A274115.P1004158470144684974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A274115.P1004158470144684974

/-! ## A274115.P9121483970903006823

`A274112(A004275(n))`
-/

namespace A274115.P9121483970903006823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A004275 n).toNat

end

end A274115.P9121483970903006823

/-! ## A274115.P17371426957852611722

`A274112(A092535(n))`
-/

namespace A274115.P17371426957852611722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A092535 n).toNat

end

end A274115.P17371426957852611722

/-! ## A274115.P895956470726164682

`A274112(A004271(n+1))`
-/

namespace A274115.P895956470726164682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A004271 (n + 1)).toNat

end

end A274115.P895956470726164682

/-! ## A274115.P2637354029332409634

`A274112(A004278(n+1))`
-/

namespace A274115.P2637354029332409634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A004278 (n + 1)).toNat

end

end A274115.P2637354029332409634

/-! ## A274115.P7722391177160264154

`A274112(A058992(n+1))`
-/

namespace A274115.P7722391177160264154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A058992 (n + 1)).toNat

end

end A274115.P7722391177160264154

/-! ## A274115.P16126078599251974693

`A274112(A300576(n+1))`
-/

namespace A274115.P16126078599251974693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A300576 (n + 1)).toNat

end

end A274115.P16126078599251974693

/-! ## A274115.P2283321613583057242

`A274112(xor(1, A004273(n)))`
-/

namespace A274115.P2283321613583057242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (Int.xor 1 (A004273 n)).toNat

end

end A274115.P2283321613583057242

/-! ## A274115.P15226337238267138907

`A274112(A004271(2*n)/2)`
-/

namespace A274115.P15226337238267138907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (SequenceMachineLib.roundAway ((A004271 (2 * n) : ℚ) / 2)).toNat

end

end A274115.P15226337238267138907

/-! ## A274115.P9811294267057910130

`A274112(xor(1, A130824(n)/2))`
-/

namespace A274115.P9811294267057910130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (Int.xor 1 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2))).toNat

end

end A274115.P9811294267057910130

/-! ## A274115.P7539401260818629092

`A274112(2*(A004273(n)-n))`
-/

namespace A274115.P7539401260818629092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (2 * (A004273 n - (n : ℤ))).toNat

end

end A274115.P7539401260818629092

/-! ## A274115.P16500246686307984886

`A274112(2*(n-A057427(n)))`
-/

namespace A274115.P16500246686307984886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (2 * ((n : ℤ) - A057427 n)).toNat

end

end A274115.P16500246686307984886

/-! ## A274115.P8119104780946581378

`A274112(A130824(n)-2*n)`
-/

namespace A274115.P8119104780946581378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A130824 n - (2 * n : ℤ)).toNat

end

end A274115.P8119104780946581378

/-! ## A274115.P10461660180751306832

`A274112(A130824(n)-n-n)`
-/

namespace A274115.P10461660180751306832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A130824 n - (n : ℤ) - (n : ℤ)).toNat

end

end A274115.P10461660180751306832

/-! ## A274115.P14764553072116827224

`A274112(A111284(n+1)-2*n)`
-/

namespace A274115.P14764553072116827224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A111284 (n + 1) - (2 * n : ℤ)).toNat

end

end A274115.P14764553072116827224

/-! ## A274115.P7969282120479709819

`A274112(A111284(n+1)-n-n)`
-/

namespace A274115.P7969282120479709819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A111284 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A274115.P7969282120479709819

/-! ## A274115.P8490048774227139888

`A274112(A004273(n)-A057427(n))`
-/

namespace A274115.P8490048774227139888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (A004273 n - A057427 n).toNat

end

end A274115.P8490048774227139888

/-! ## A274115.P724593935817000126

`A274112(eq[A026741(n), A110654(n)])`
-/

namespace A274115.P724593935817000126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274115.P724593935817000126

/-!
# A274116: (1+e)-sigma amicable numbers.

The programs for A274116, there is no canonical definition to state claims against.
-/

/-! ## A274116.P16940112896931524417

`∪[A333929(n+1), A222210(A333930(n+1))]`
-/

namespace A274116.P16940112896931524417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A333930 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274116.P16940112896931524417

/-!
# A274119: a(n) = (Product_{i=0..4}(i*n+2) - Product_{i=0..4}(-i*n-1))/(4*n+3).

The programs for A274119, the canonical program `A274119.P17210466815887565835` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274119 has offset 0).

The definition of A274119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274119.P17210466815887565835

`11+42*n+49*n²+18*n^3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274119

/-- `11+42*n+49*n²+18*n^3` -/
def P17210466815887565835.Spec : Prop :=
  ∀ n, (P17210466815887565835.a n : ℤ) = A274119 n

theorem P17210466815887565835.correct : P17210466815887565835.Spec := by
  intro n
  simp only [A274119]

end A274119

/-! ## A274119.P2691237758799660917

`Δ[n²]*A147296(n+1)`
-/

namespace A274119.P2691237758799660917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A147296 (n + 1)

end

end A274119.P2691237758799660917

namespace A274119

/-- `Δ[n²]*A147296(n+1)` -/
def P2691237758799660917.Spec : Prop :=
  ∀ n, P2691237758799660917.a n = A274119 n

theorem P2691237758799660917.correct : P2691237758799660917.Spec := by
  intro n
  simp only [A274119, Nat.add_sub_cancel, A274119.P2691237758799660917.f1, A274119.P2691237758799660917.a, A274119.P17210466815887565835.a, A147296, A147296.P3605709138452781436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274119

/-! ## A274119.P8671948278218886246

`∑[A017101(n)+A005897(3*n+1)]`
-/

namespace A274119.P8671948278218886246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n + A005897 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274119.P8671948278218886246

namespace A274119

/-- `∑[A017101(n)+A005897(3*n+1)]` -/
def P8671948278218886246.Spec : Prop :=
  ∀ n, P8671948278218886246.a n = A274119 n

end A274119

/-! ## A274119.P18154763800881996075

`∑[A080859(3*n+1)-4*n]`
-/

namespace A274119.P18154763800881996075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 (3 * n + 1) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274119.P18154763800881996075

namespace A274119

/-- `∑[A080859(3*n+1)-4*n]` -/
def P18154763800881996075.Spec : Prop :=
  ∀ n, P18154763800881996075.a n = A274119 n

end A274119

/-! ## A274119.P7698891833573124614

`∑[A051682(3*n+2)+∑[n]+13*n²]`
-/

namespace A274119.P7698891833573124614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (3 * n + 2) + ((∑ j ∈ Finset.range (n + 1), f2 j + 13 * n ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274119.P7698891833573124614

namespace A274119

/-- `∑[A051682(3*n+2)+∑[n]+13*n²]` -/
def P7698891833573124614.Spec : Prop :=
  ∀ n, P7698891833573124614.a n = A274119 n

end A274119

/-! ## A274119.P9692928715227504163

`(2*n+1)*A144454(A017173(n+1))`
-/

namespace A274119.P9692928715227504163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A144454 (A017173 (n + 1)).toNat

end

end A274119.P9692928715227504163

namespace A274119

/-- `(2*n+1)*A144454(A017173(n+1))` -/
def P9692928715227504163.Spec : Prop :=
  ∀ n, P9692928715227504163.a n = A274119 n

end A274119

/-!
# A274120: Squares that are the sum of the first k odd primes for some k.

The programs for A274120, there is no canonical definition to state claims against.
-/

/-! ## A274120.P6540833635442093566

`∩[(n+1)², A007504(n)-2]`
-/

namespace A274120.P6540833635442093566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274120.P6540833635442093566

/-!
# A274121: The gap prime(n+1) - prime(n) occurs for the a(n)-th time.

The programs for A274121, there is no canonical definition to state claims against.
-/

/-! ## A274121.P16932006546025411819

`A373891(n+1)+1`
-/

namespace A274121.P16932006546025411819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373891 (n + 1) + 1

end

end A274121.P16932006546025411819

/-! ## A274121.P10869214246695977319

`A081604(A001753(n+1))-A001223(n+1)`
-/

namespace A274121.P10869214246695977319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A001753 (n + 1)).toNat - A001223 (n + 1)

end

end A274121.P10869214246695977319

/-! ## A274121.P8939358920980522589

`A007814(A179216(C(n, 2)))`
-/

namespace A274121.P8939358920980522589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A179216 (Nat.choose n 2)).toNat

end

end A274121.P8939358920980522589

/-! ## A274121.P13067062700662787412

`val(A086958(A025487(n+1)), 2)`
-/

namespace A274121.P13067062700662787412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086958 (A025487 (n + 1)).toNat).toNat 2

end

end A274121.P13067062700662787412

/-! ## A274121.P11600675856853551036

`A051282(n+1)-A010815(A029542(n+1))`
-/

namespace A274121.P11600675856853551036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (n + 1) - A010815 (A029542 (n + 1)).toNat

end

end A274121.P11600675856853551036

/-!
# A274122: Let F(g,p) be the frequency of g up to prime nextprime(p+1). Primes p such that F(2,p) = F(4,p) and g = 2 or 4.

The programs for A274122, there is no canonical definition to state claims against.
-/

/-! ## A274122.P8964098080283108311

`A279857(A166503(n+2))`
-/

namespace A274122.P8964098080283108311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279857 (A166503 (n + 2)).toNat

end

end A274122.P8964098080283108311

/-!
# A274124: Numbers n such that (product of digits of n) is divisible by (sum of digits of n) and digits of n are in nondecreasing order.

The programs for A274124, there is no canonical definition to state claims against.
-/

/-! ## A274124.P12372998254248633810

`∩[A061013(n+1), A179239(n)]`
-/

namespace A274124.P12372998254248633810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274124.P12372998254248633810

/-! ## A274124.P512988450503209899

`∩[A009994(n+1), A061013(n+1)]`
-/

namespace A274124.P512988450503209899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274124.P512988450503209899

/-! ## A274124.P11470094603408777220

`∩[A061013(n+1), A249443(n+1)]`
-/

namespace A274124.P11470094603408777220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274124.P11470094603408777220

/-! ## A274124.P8851310042729618725

`∩[A061013(n+1), A381509(n+1)]`
-/

namespace A274124.P8851310042729618725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274124.P8851310042729618725

/-! ## A274124.P4640835942619722889

`∩[A009994(n+1), A038367(n+1)]`
-/

namespace A274124.P4640835942619722889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274124.P4640835942619722889

/-! ## A274124.P17844992523685703496

`∩[A038367(n+1), A249443(n+1)]`
-/

namespace A274124.P17844992523685703496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274124.P17844992523685703496

/-! ## A274124.P18202937929995281613

`record[A004185(A038367(n+1))]`
-/

namespace A274124.P18202937929995281613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A038367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274124.P18202937929995281613

/-! ## A274124.P8923104813113558746

`record[A004185(A061013(n+1))]`
-/

namespace A274124.P8923104813113558746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A061013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274124.P8923104813113558746

/-! ## A274124.P12434942178540718563

`record[A004185(record[gcd(n+1, A007954(n+1)%A007953(n+1))])]`
-/

namespace A274124.P12434942178540718563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A007954 (n + 1)) (A007953 (n + 1)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274124.P12434942178540718563

/-!
# A274125: Numbers having digits in nondecreasing order and sum of digits greater than or equal to the product of digits.

The programs for A274125, there is no canonical definition to state claims against.
-/

/-! ## A274125.P9962013377716213763

`∩[A009994(n+1), A254621(n+1)]`
-/

namespace A274125.P9962013377716213763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274125.P9962013377716213763

/-! ## A274125.P10866288637261069138

`∩[A254621(n+1), A381509(n+1)]`
-/

namespace A274125.P10866288637261069138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274125.P10866288637261069138

/-! ## A274125.P17387674359995714642

`∩[A254621(n+1), A179239(n)]`
-/

namespace A274125.P17387674359995714642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274125.P17387674359995714642

/-! ## A274125.P6686347423721946459

`∩[A009994(n+1), A062996(n+1)]`
-/

namespace A274125.P6686347423721946459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274125.P6686347423721946459

/-! ## A274125.P13471763496137706824

`record[A004185(A254621(n+1))]`
-/

namespace A274125.P13471763496137706824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A254621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274125.P13471763496137706824

/-!
# A274129: Sum of all numbers that appear when we interpret an ordered subset of [0,1,...,n] containing n as the digits, possibly larger than nine, of a base ten number, with the smallest element being the least significant.

The programs for A274129, there is no canonical definition to state claims against.
-/

/-! ## A274129.P3550300445769029691

`10*(n+1)*11^(n+1)/9-11*(11^(n+1)-2^(n+1))/81`
-/

namespace A274129.P3550300445769029691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) * 11 ^ (n + 1) : ℚ) / 9 - (11 * ((11 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)) : ℚ) / 81

end

end A274129.P3550300445769029691

/-!
# A274130: Irregular triangle T(n,m), numerators of coefficients in a power/Fourier series expansion of the plane pendulum's exact time dependence.

The programs for A274130, there is no canonical definition to state claims against.
-/

/-! ## A274130.P12579823712743400301

`A283464(A283474(3*n+1)+A283437(2*n))`
-/

namespace A274130.P12579823712743400301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A283474 (3 * n + 1) + A283437 (2 * n)).toNat

end

end A274130.P12579823712743400301

/-!
# A274131: Irregular triangle T(n,m), denominators of coefficients in a power/Fourier series expansion of the plane pendulum's exact time dependence.

The programs for A274131, there is no canonical definition to state claims against.
-/

/-! ## A274131.P7427968481353534701

`A001616(A155630(n))*A140880(2*n+1)`
-/

namespace A274131.P7427968481353534701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A155630 n).toNat * A140880 (2 * n + 1)

end

end A274131.P7427968481353534701

/-!
# A274134: Primes p such that both ror(p) and rol(p) are also primes, where ror(x)=A038572(x) is x rotated one binary place to the right, rol(x)=A006257(x) is x rotated one binary place to the left.

The programs for A274134, there is no canonical definition to state claims against.
-/

/-! ## A274134.P11301871088560765585

`∩[A359567(n+1), A389481(n+1)]`
-/

namespace A274134.P11301871088560765585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274134.P11301871088560765585

/-! ## A274134.P2971239039809804874

`∩[A333764(n+1), A389481(n+1)]`
-/

namespace A274134.P2971239039809804874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274134.P2971239039809804874

/-! ## A274134.P4671639905742429246

`∩[A333943(n+1), A389481(n+1)]`
-/

namespace A274134.P4671639905742429246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274134.P4671639905742429246

/-! ## A274134.P7694335818724026287

`∩[A334273(n+1), A389481(n+1)]`
-/

namespace A274134.P7694335818724026287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274134.P7694335818724026287

/-! ## A274134.P12716814197990223692

`p?[record[A006257(A162707(n+1))]]`
-/

namespace A274134.P12716814197990223692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A162707 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274134.P12716814197990223692

/-!
# A274135: Numbers n such that 6^n + 5^(n+1) is prime.

The programs for A274135, there is no canonical definition to state claims against.
-/

/-! ## A274135.P1116433837992572192

`record[A326152(2*n+1)+A248601(n+1)]`
-/

namespace A274135.P1116433837992572192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 (2 * n + 1) + A248601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274135.P1116433837992572192

/-! ## A274135.P16074278923978354465

`A272269(A162735(n+1)+1)`
-/

namespace A274135.P16074278923978354465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272269 (A162735 (n + 1) + 1).toNat

end

end A274135.P16074278923978354465

/-! ## A274135.P5863117237717743190

`A194812(A038754(n))+3*n`
-/

namespace A274135.P5863117237717743190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194812 (A038754 n).toNat + (3 * n : ℤ)

end

end A274135.P5863117237717743190

/-! ## A274135.P4092501205208581290

`A274878(A241543(n))+3*n`
-/

namespace A274135.P4092501205208581290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274878 (A241543 n).toNat + (3 * n : ℤ)

end

end A274135.P4092501205208581290

/-! ## A274135.P5428373062405769368

`A054522(A208355(2*n+1))+3*n`
-/

namespace A274135.P5428373062405769368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (A208355 (2 * n + 1)).toNat + (3 * n : ℤ)

end

end A274135.P5428373062405769368

/-!
# A274136: a(n) = (n+1)*(2*n+2)!/(n+2).

The programs for A274136, the canonical program `A274136.P3892622646470870` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274136 has offset 0).

The definition of A274136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274136.P3892622646470870

`(n+1)*(2*n+2)!/(n+2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274136

/-- `(n+1)*(2*n+2)!/(n+2)` -/
def P3892622646470870.Spec : Prop :=
  ∀ n, P3892622646470870.a n = (A274136 n : ℚ)

end A274136

/-! ## A274136.P1263522528432781319

`(2*(n+1))!/ratio[n+1]`
-/

namespace A274136.P1263522528432781319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A274136.P1263522528432781319

namespace A274136

/-- `(2*(n+1))!/ratio[n+1]` -/
def P1263522528432781319.Spec : Prop :=
  ∀ n, P1263522528432781319.a n = (A274136 n : ℚ)

end A274136

/-! ## A274136.P9269586888581501206

`A152663(2*(n+1))`
-/

namespace A274136.P9269586888581501206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152663 (2 * (n + 1))

end

end A274136.P9269586888581501206

namespace A274136

/-- `A152663(2*(n+1))` -/
def P9269586888581501206.Spec : Prop :=
  ∀ n, P9269586888581501206.a n = A274136 n

end A274136

/-! ## A274136.P16847022640077343801

`A152665(2*(n+1))`
-/

namespace A274136.P16847022640077343801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152665 (2 * (n + 1))

end

end A274136.P16847022640077343801

namespace A274136

/-- `A152665(2*(n+1))` -/
def P16847022640077343801.Spec : Prop :=
  ∀ n, P16847022640077343801.a n = A274136 n

end A274136

/-! ## A274136.P5677148687519820499

`(n+1)!*A092956(n)`
-/

namespace A274136.P5677148687519820499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A092956 n

end

end A274136.P5677148687519820499

namespace A274136

/-- `(n+1)!*A092956(n)` -/
def P5677148687519820499.Spec : Prop :=
  ∀ n, P5677148687519820499.a n = A274136 n

end A274136

/-!
# A274138: Triangle read by rows: Domination number for rectangular queens' graph Q(n,m), 1 <= n <= m.

The programs for A274138, there is no canonical definition to state claims against.
-/

/-! ## A274138.P7944085222758733584

`A055642(A078812(n)+A069270(n))`
-/

namespace A274138.P7944085222758733584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A078812 n + A069270 n).toNat

end

end A274138.P7944085222758733584

/-! ## A274138.P14492248447518745411

`A055642(A223092(n)+A029653(n))`
-/

namespace A274138.P14492248447518745411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A223092 n + A029653 n).toNat

end

end A274138.P14492248447518745411

/-! ## A274138.P5450311766924003651

`A055642(A070940(3*n+1)*A080955(n))`
-/

namespace A274138.P5450311766924003651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A070940 (3 * n + 1) * A080955 n).toNat

end

end A274138.P5450311766924003651

/-! ## A274138.P3478845947071174237

`A262438(A285268(n+1))`
-/

namespace A274138.P3478845947071174237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262438 (A285268 (n + 1)).toNat

end

end A274138.P3478845947071174237

/-! ## A274138.P10545586195536437715

`A043565(A212508(3*(n+1))%A367210(n+1))`
-/

namespace A274138.P10545586195536437715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 (Int.tmod (A212508 (3 * (n + 1))) (A367210 (n + 1))).toNat

end

end A274138.P10545586195536437715

/-!
# A274139: a(n) = 2^A000265(n) = 2^numerator(n/2^n), a sequence related to Oresme numbers.

The programs for A274139, the canonical program `A274139.P8346514154262221856` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274139 has offset 1).

The definition of A274139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274139.P6829965133111296719

`2^((n+1)/2^val(n+1, 2))`
-/

namespace A274139.P6829965133111296719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)

end

end A274139.P6829965133111296719

namespace A274139

/-- `2^((n+1)/2^val(n+1, 2))` -/
def P6829965133111296719.Spec : Prop :=
  ∀ n, P6829965133111296719.a n = (A274139 (n + 1) : ℝ)

end A274139

/-! ## A274139.P8346514154262221856

`2^A000265(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274139

/-- `2^A000265(n+1)` -/
def P8346514154262221856.Spec : Prop :=
  ∀ n, P8346514154262221856.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P13751271007684032687

`2^((n+1)/and(n+1, -(n+1)))`
-/

namespace A274139.P13751271007684032687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) : ℝ)

end

end A274139.P13751271007684032687

namespace A274139

/-- `2^((n+1)/and(n+1, -(n+1)))` -/
def P13751271007684032687.Spec : Prop :=
  ∀ n, P13751271007684032687.a n = (A274139 (n + 1) : ℝ)

end A274139

/-! ## A274139.P17579821198710272407

`2^((n+1)/gcd(n+1, a(n-1)))` with `a(0)=2`
-/

namespace A274139.P17579821198710272407
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (2 : ℝ) ^ ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) : ℝ)

end

end A274139.P17579821198710272407

namespace A274139

/-- `2^((n+1)/gcd(n+1, a(n-1)))` -/
def P17579821198710272407.Spec : Prop :=
  ∀ n, P17579821198710272407.a n = (A274139 (n + 1) : ℝ)

end A274139

/-! ## A274139.P17152276161301403395

`2*A082392(n)²`
-/

namespace A274139.P17152276161301403395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082392 n ^ 2

end

end A274139.P17152276161301403395

namespace A274139

/-- `2*A082392(n)²` -/
def P17152276161301403395.Spec : Prop :=
  ∀ n, P17152276161301403395.a n = A274139 (n + 1)

end A274139

/-! ## A274139.P16248908137454302066

`2^(A153733(n)+1)`
-/

namespace A274139.P16248908137454302066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A153733 n + 1 : ℤ)

end

end A274139.P16248908137454302066

namespace A274139

/-- `2^(A153733(n)+1)` -/
def P16248908137454302066.Spec : Prop :=
  ∀ n, P16248908137454302066.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P9591613096036848422

`2^A086767(Δ[n²])`
-/

namespace A274139.P9591613096036848422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A086767 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A274139.P9591613096036848422

namespace A274139

/-- `2^A086767(Δ[n²])` -/
def P9591613096036848422.Spec : Prop :=
  ∀ n, P9591613096036848422.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P16228438903531850677

`2^A161151(Δ[n²])`
-/

namespace A274139.P16228438903531850677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A161151 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A274139.P16228438903531850677

namespace A274139

/-- `2^A161151(Δ[n²])` -/
def P16228438903531850677.Spec : Prop :=
  ∀ n, P16228438903531850677.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P2814985122420330877

`2^A351565(Δ[n²])`
-/

namespace A274139.P2814985122420330877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A351565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A274139.P2814985122420330877

namespace A274139

/-- `2^A351565(Δ[n²])` -/
def P2814985122420330877.Spec : Prop :=
  ∀ n, P2814985122420330877.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P13666852832562444884

`2^sqrt(A191871(n+1))`
-/

namespace A274139.P13666852832562444884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A191871 (n + 1) : ℝ))

end

end A274139.P13666852832562444884

namespace A274139

/-- `2^sqrt(A191871(n+1))` -/
def P13666852832562444884.Spec : Prop :=
  ∀ n, P13666852832562444884.a n = (A274139 (n + 1) : ℝ)

end A274139

/-! ## A274139.P1109616437345468340

`2^A028234(2*(n+1))`
-/

namespace A274139.P1109616437345468340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A028234 (2 * (n + 1)) : ℤ)

end

end A274139.P1109616437345468340

namespace A274139

/-- `2^A028234(2*(n+1))` -/
def P1109616437345468340.Spec : Prop :=
  ∀ n, P1109616437345468340.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P17020304112349874409

`2^A093803(2*(n+1))`
-/

namespace A274139.P17020304112349874409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A093803 (2 * (n + 1)) : ℤ)

end

end A274139.P17020304112349874409

namespace A274139

/-- `2^A093803(2*(n+1))` -/
def P17020304112349874409.Spec : Prop :=
  ∀ n, P17020304112349874409.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P16769889729444864094

`2^A139391(2*(n+1))`
-/

namespace A274139.P16769889729444864094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A139391 (2 * (n + 1)) : ℤ)

end

end A274139.P16769889729444864094

namespace A274139

/-- `2^A139391(2*(n+1))` -/
def P16769889729444864094.Spec : Prop :=
  ∀ n, P16769889729444864094.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P10493522516854445842

`2^A161150(2*(n+1))`
-/

namespace A274139.P10493522516854445842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A161150 (2 * (n + 1)) : ℤ)

end

end A274139.P10493522516854445842

namespace A274139

/-- `2^A161150(2*(n+1))` -/
def P10493522516854445842.Spec : Prop :=
  ∀ n, P10493522516854445842.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P12947747751134135681

`2^A163575(2*(n+1))`
-/

namespace A274139.P12947747751134135681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A163575 (2 * (n + 1)) : ℤ)

end

end A274139.P12947747751134135681

namespace A274139

/-- `2^A163575(2*(n+1))` -/
def P12947747751134135681.Spec : Prop :=
  ∀ n, P12947747751134135681.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P8996739187442581059

`2^A171435(2*(n+1))`
-/

namespace A274139.P8996739187442581059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A171435 (2 * (n + 1)) : ℤ)

end

end A274139.P8996739187442581059

namespace A274139

/-- `2^A171435(2*(n+1))` -/
def P8996739187442581059.Spec : Prop :=
  ∀ n, P8996739187442581059.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P8512462444248672417

`2^A302034(2*(n+1))`
-/

namespace A274139.P8512462444248672417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A302034 (2 * (n + 1)) : ℤ)

end

end A274139.P8512462444248672417

namespace A274139

/-- `2^A302034(2*(n+1))` -/
def P8512462444248672417.Spec : Prop :=
  ∀ n, P8512462444248672417.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P3449340903243872407

`2^A302044(2*(n+1))`
-/

namespace A274139.P3449340903243872407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A302044 (2 * (n + 1)) : ℤ)

end

end A274139.P3449340903243872407

namespace A274139

/-- `2^A302044(2*(n+1))` -/
def P3449340903243872407.Spec : Prop :=
  ∀ n, P3449340903243872407.a n = (A274139 (n + 1) : ℚ)

end A274139

/-! ## A274139.P10984695752457956643

`2^A306546(2*(n+1))`
-/

namespace A274139.P10984695752457956643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A306546 (2 * (n + 1)) : ℤ)

end

end A274139.P10984695752457956643

namespace A274139

/-- `2^A306546(2*(n+1))` -/
def P10984695752457956643.Spec : Prop :=
  ∀ n, P10984695752457956643.a n = (A274139 (n + 1) : ℚ)

end A274139

/-!
# A274140: Sum of primes dividing n-th triangular number, counted with multiplicity.

The programs for A274140, the canonical program `A274140.P16809713073443717918` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274140 has offset 1).

The definition of A274140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274140.P16809713073443717918

`A001414(A000217(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274140

/-- `A001414(A000217(n+1))` -/
def P16809713073443717918.Spec : Prop :=
  ∀ n, P16809713073443717918.a n = A274140 (n + 1)

theorem P16809713073443717918.correct : P16809713073443717918.Spec := by
  intro n
  simp only [A274140, Nat.add_sub_cancel]

end A274140

/-! ## A274140.P6858810271729917994

`A090341(n+1)-∑[A090341(n+1)]`
-/

namespace A274140.P6858810271729917994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090341 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274140.P6858810271729917994

namespace A274140

/-- `A090341(n+1)-∑[A090341(n+1)]` -/
def P6858810271729917994.Spec : Prop :=
  ∀ n, P6858810271729917994.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P14701140347152776355

`A001414(n+1)+A001414(n+2)-2`
-/

namespace A274140.P14701140347152776355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A001414 (n + 2) - 2)

end

end A274140.P14701140347152776355

namespace A274140

/-- `A001414(n+1)+A001414(n+2)-2` -/
def P14701140347152776355.Spec : Prop :=
  ∀ n, P14701140347152776355.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P18203477369756542075

`A025281(n+2)-(A025281(n)+2)`
-/

namespace A274140.P18203477369756542075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 2) - (A025281 n + 2)

end

end A274140.P18203477369756542075

namespace A274140

/-- `A025281(n+2)-(A025281(n)+2)` -/
def P18203477369756542075.Spec : Prop :=
  ∀ n, P18203477369756542075.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P8378954619816665660

`A075254(n+1)-(A075255(n+2)+1)`
-/

namespace A274140.P8378954619816665660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (A075255 (n + 2) + 1)

end

end A274140.P8378954619816665660

namespace A274140

/-- `A075254(n+1)-(A075255(n+2)+1)` -/
def P8378954619816665660.Spec : Prop :=
  ∀ n, P8378954619816665660.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P8196188275914446087

`A023443(A075254(n+1)-A075255(n+2))`
-/

namespace A274140.P8196188275914446087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075254 (n + 1) - A075255 (n + 2)).toNat

end

end A274140.P8196188275914446087

namespace A274140

/-- `A023443(A075254(n+1)-A075255(n+2))` -/
def P8196188275914446087.Spec : Prop :=
  ∀ n, P8196188275914446087.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P1668622535636398541

`A090343(2*(n+1))-∑[A090343(2*(n+1))]`
-/

namespace A274140.P1668622535636398541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090343 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274140.P1668622535636398541

namespace A274140

/-- `A090343(2*(n+1))-∑[A090343(2*(n+1))]` -/
def P1668622535636398541.Spec : Prop :=
  ∀ n, P1668622535636398541.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P10527995428250347443

`A001414(∑[n+1])`
-/

namespace A274140.P10527995428250347443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274140.P10527995428250347443

namespace A274140

/-- `A001414(∑[n+1])` -/
def P10527995428250347443.Spec : Prop :=
  ∀ n, P10527995428250347443.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P16997392894500305255

`A001414((n+1)*(n+2))-2`
-/

namespace A274140.P16997392894500305255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((n + 1) * (n + 2)) - 2

end

end A274140.P16997392894500305255

namespace A274140

/-- `A001414((n+1)*(n+2))-2` -/
def P16997392894500305255.Spec : Prop :=
  ∀ n, P16997392894500305255.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P14927492137667768564

`sqrt(A074373(∑[n+1]))`
-/

namespace A274140.P14927492137667768564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A274140.P14927492137667768564

namespace A274140

/-- `sqrt(A074373(∑[n+1]))` -/
def P14927492137667768564.Spec : Prop :=
  ∀ n, P14927492137667768564.a n = (A274140 (n + 1) : ℝ)

end A274140

/-! ## A274140.P9091711731946780048

`A036288(∑[n+1])-1`
-/

namespace A274140.P9091711731946780048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A274140.P9091711731946780048

namespace A274140

/-- `A036288(∑[n+1])-1` -/
def P9091711731946780048.Spec : Prop :=
  ∀ n, P9091711731946780048.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P3534585193463524405

`A100006(∑[n+1])-2`
-/

namespace A274140.P3534585193463524405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A274140.P3534585193463524405

namespace A274140

/-- `A100006(∑[n+1])-2` -/
def P3534585193463524405.Spec : Prop :=
  ∀ n, P3534585193463524405.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P2257892817940501799

`∑{d}[∑[n+1], A120007(#)]`
-/

namespace A274140.P2257892817940501799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120007 d

end

end A274140.P2257892817940501799

namespace A274140

/-- `∑{d}[∑[n+1], A120007(#)]` -/
def P2257892817940501799.Spec : Prop :=
  ∀ n, P2257892817940501799.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P10359814204230638148

`∑[n+1]-A075255(∑[n+1])`
-/

namespace A274140.P10359814204230638148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A075255 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A274140.P10359814204230638148

namespace A274140

/-- `∑[n+1]-A075255(∑[n+1])` -/
def P10359814204230638148.Spec : Prop :=
  ∀ n, P10359814204230638148.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P15071219303683330924

`A075254(∑[n+1])-∑[n+1]`
-/

namespace A274140.P15071219303683330924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A274140.P15071219303683330924

namespace A274140

/-- `A075254(∑[n+1])-∑[n+1]` -/
def P15071219303683330924.Spec : Prop :=
  ∀ n, P15071219303683330924.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P10363982246040492631

`∑{d}[∑[n+1], A053650(A014963(#))]`
-/

namespace A274140.P10363982246040492631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053650 (A014963 d).toNat

end

end A274140.P10363982246040492631

namespace A274140

/-- `∑{d}[∑[n+1], A053650(A014963(#))]` -/
def P10363982246040492631.Spec : Prop :=
  ∀ n, P10363982246040492631.a n = A274140 (n + 1)

end A274140

/-! ## A274140.P17669570362827959923

`∑{d}[∑[n+1], A020639(#)%A014963(#)²]`
-/

namespace A274140.P17669570362827959923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A020639 d) (A014963 d ^ 2)

end

end A274140.P17669570362827959923

namespace A274140

/-- `∑{d}[∑[n+1], A020639(#)%A014963(#)²]` -/
def P17669570362827959923.Spec : Prop :=
  ∀ n, P17669570362827959923.a n = A274140 (n + 1)

end A274140

/-!
# A274141: Positive numbers divisible by 3^3 or by the square of some other prime.

The programs for A274141, the canonical program `A274141.P9075115195362516254` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274141 has offset 1).

The definition of A274141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274141.P17080111927156280331

`eq[0, A085097(n+1)]+1`
-/

namespace A274141.P17080111927156280331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274141.P17080111927156280331

namespace A274141

/-- `eq[0, A085097(n+1)]+1` -/
def P17080111927156280331.Spec : Prop :=
  ∀ n, (P17080111927156280331.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P9075115195362516254

`eq[1, A294619(A336551(n+1))]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A274141

/-- `eq[1, A294619(A336551(n+1))]+1` -/
def P9075115195362516254.Spec : Prop :=
  ∀ n, (P9075115195362516254.a n : ℤ) = A274141 (n + 1)

theorem P9075115195362516254.correct : P9075115195362516254.Spec := by
  intro n
  simp only [A274141, Nat.add_sub_cancel]

end A274141

/-! ## A274141.P533467461895709337

`lt[1, A004086(A183097(n+1))]+1`
-/

namespace A274141.P533467461895709337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A183097 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A274141.P533467461895709337

namespace A274141

/-- `lt[1, A004086(A183097(n+1))]+1` -/
def P533467461895709337.Spec : Prop :=
  ∀ n, (P533467461895709337.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P7842840189377311604

`lt[3, gcd(n, A003415(n))]`
-/

namespace A274141.P7842840189377311604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003415 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274141.P7842840189377311604

namespace A274141

/-- `lt[3, gcd(n, A003415(n))]` -/
def P7842840189377311604.Spec : Prop :=
  ∀ n, (P7842840189377311604.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P7876191826669745724

`lt[3, A085731(n+1)]+1`
-/

namespace A274141.P7876191826669745724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A274141.P7876191826669745724

namespace A274141

/-- `lt[3, A085731(n+1)]+1` -/
def P7876191826669745724.Spec : Prop :=
  ∀ n, (P7876191826669745724.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P16837298013313843259

`eq[3, gcd(3, A321322(n+1))]+1`
-/

namespace A274141.P16837298013313843259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A321322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274141.P16837298013313843259

namespace A274141

/-- `eq[3, gcd(3, A321322(n+1))]+1` -/
def P16837298013313843259.Spec : Prop :=
  ∀ n, (P16837298013313843259.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P805625299436476710

`lt[3, A085731(A028310(n))]`
-/

namespace A274141.P805625299436476710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A274141.P805625299436476710

namespace A274141

/-- `lt[3, A085731(A028310(n))]` -/
def P805625299436476710.Spec : Prop :=
  ∀ n, (P805625299436476710.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P17606220231687567407

`lt[1, ∏{e}[A130724(n), #]]`
-/

namespace A274141.P17606220231687567407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274141.P17606220231687567407

namespace A274141

/-- `lt[1, ∏{e}[A130724(n), #]]` -/
def P17606220231687567407.Spec : Prop :=
  ∀ n, (P17606220231687567407.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P16029970104433061213

`eq[1, A249442(A051176(n))]`
-/

namespace A274141.P16029970104433061213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A051176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274141.P16029970104433061213

namespace A274141

/-- `eq[1, A249442(A051176(n))]` -/
def P16029970104433061213.Spec : Prop :=
  ∀ n, (P16029970104433061213.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P10407383501192264307

`lt[1, A351219(abs(1-A130724(n))+1)]`
-/

namespace A274141.P10407383501192264307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (|1 - A130724 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A274141.P10407383501192264307

namespace A274141

/-- `lt[1, A351219(abs(1-A130724(n))+1)]` -/
def P10407383501192264307.Spec : Prop :=
  ∀ n, (P10407383501192264307.a n : ℤ) = A274141 (n + 1)

end A274141

/-! ## A274141.P8070994869103906677

`eq[1, A178226(A003557(n+1)²)]+1`
-/

namespace A274141.P8070994869103906677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A003557 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274141.P8070994869103906677

namespace A274141

/-- `eq[1, A178226(A003557(n+1)²)]+1` -/
def P8070994869103906677.Spec : Prop :=
  ∀ n, (P8070994869103906677.a n : ℤ) = A274141 (n + 1)

end A274141

/-!
# A274142: Number of integers in n-th generation of tree T(1/2) defined in Comments.

The programs for A274142, there is no canonical definition to state claims against.
-/

/-! ## A274142.P5595732563915941172

`A204164(A179255(∑[n]))`
-/

namespace A274142.P5595732563915941172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A179255 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274142.P5595732563915941172

/-! ## A274142.P5694993997303706506

`A204164(A061481(n)*A274147(n))`
-/

namespace A274142.P5694993997303706506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A061481 n * A274147 n).toNat

end

end A274142.P5694993997303706506

/-! ## A274142.P3500550589298094464

`A135660(C(A165941(n+1), A369929(n)))`
-/

namespace A274142.P3500550589298094464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Nat.choose (A165941 (n + 1)).toNat (A369929 n).toNat)

end

end A274142.P3500550589298094464

/-! ## A274142.P177363913550772185

`A178798(A189287(3*n+2))+A078465(n+1)`
-/

namespace A274142.P177363913550772185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A189287 (3 * n + 2)).toNat + A078465 (n + 1)

end

end A274142.P177363913550772185

/-! ## A274142.P17092415545068894623

`A135660(A049917(n+2)+2*A049937(n+1)-A049941(n+1))`
-/

namespace A274142.P17092415545068894623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A049917 (n + 2) + (2 * A049937 (n + 1) - A049941 (n + 1))).toNat

end

end A274142.P17092415545068894623

/-!
# A274143: Number of integers in n-th generation of tree T(1/3) defined in Comments.

The programs for A274143, there is no canonical definition to state claims against.
-/

/-! ## A274143.P13576170487650350219

`abs(Δ[A274194(abs(1-n))])`
-/

namespace A274143.P13576170487650350219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274194 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A274143.P13576170487650350219

/-! ## A274143.P15538906456926706842

`Δ[record[A182009(A342331(n))]]`
-/

namespace A274143.P15538906456926706842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182009 (A342331 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274143.P15538906456926706842

/-!
# A274144: Number of integers in n-th generation of tree T(1/4) defined in Comments.

The programs for A274144, there is no canonical definition to state claims against.
-/

/-! ## A274144.P11064191608260401461

`A103372(lt[A103354(n+1), A103356(3*n+1)])`
-/

namespace A274144.P11064191608260401461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103356 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274144.P11064191608260401461

/-! ## A274144.P7434918247487532314

`A103373(A103355(2*n+3)%A103405(n+2))`
-/

namespace A274144.P7434918247487532314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (Int.tmod (A103355 (2 * n + 3)) (A103405 (n + 2))).toNat

end

end A274144.P7434918247487532314

/-! ## A274144.P17010200872116664426

`A103373(A103355(2*n+3))%A302497(3*n+2)`
-/

namespace A274144.P17010200872116664426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103373 (A103355 (2 * n + 3)).toNat) (A302497 (3 * n + 2))

end

end A274144.P17010200872116664426

/-!
# A274145: Number of integers in n-th generation of tree T(2/3) defined in Comments.

The programs for A274145, there is no canonical definition to state claims against.
-/

/-! ## A274145.P10570580227444977754

`A167743(floor(sqrt(A000288(n))))`
-/

namespace A274145.P10570580227444977754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (Int.sqrt (A000288 n)).toNat

end

end A274145.P10570580227444977754

/-! ## A274145.P13941976628810719122

`Δ[A216256(A048815(n+1))]`
-/

namespace A274145.P13941976628810719122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A048815 (n + 1 + 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274145.P13941976628810719122

/-! ## A274145.P12918747076867242400

`Δ[A003057(A073031(n+2))]`
-/

namespace A274145.P12918747076867242400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A073031 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274145.P12918747076867242400

/-! ## A274145.P10939842979751186355

`A105224(A089098(n+1)+2*n)`
-/

namespace A274145.P10939842979751186355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A089098 (n + 1) + (2 * n : ℤ)).toNat

end

end A274145.P10939842979751186355

/-! ## A274145.P8508971384211237311

`A105224(A089098(n+1)+n+n)`
-/

namespace A274145.P8508971384211237311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A089098 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A274145.P8508971384211237311

/-!
# A274146: Number of integers in n-th generation of tree T(3/4) defined in Comments.

The programs for A274146, there is no canonical definition to state claims against.
-/

/-! ## A274146.P2844204734873914551

`A185284(2*n+1)+A185224(n+3)+1`
-/

namespace A274146.P2844204734873914551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + (A185224 (n + 3) + 1)

end

end A274146.P2844204734873914551

/-! ## A274146.P8778759067478100197

`A028310(A185284(2*n+1)+A008484(n+3))`
-/

namespace A274146.P8778759067478100197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A185284 (2 * n + 1) + A008484 (n + 3)).toNat

end

end A274146.P8778759067478100197

/-! ## A274146.P13466201787739665560

`A351831(A185224(n+3)+2)`
-/

namespace A274146.P13466201787739665560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A185224 (n + 3) + 2).toNat

end

end A274146.P13466201787739665560

/-! ## A274146.P16072347970625883409

`A103298(floor(sqrt(A007748(n+1))))`
-/

namespace A274146.P16072347970625883409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (Int.sqrt (A007748 (n + 1))).toNat

end

end A274146.P16072347970625883409

/-! ## A274146.P13185739980438683547

`A008484((n+3)%A146625(n+1))`
-/

namespace A274146.P13185739980438683547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (Int.tmod (n + 3 : ℤ) (A146625 (n + 1))).toNat

end

end A274146.P13185739980438683547

/-!
# A274147: Number of integers in n-th generation of tree T(-1/2) defined in Comments.

The programs for A274147, there is no canonical definition to state claims against.
-/

/-! ## A274147.P6848572095330689614

`A204164(A379378(n+1))`
-/

namespace A274147.P6848572095330689614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A379378 (n + 1)).toNat

end

end A274147.P6848572095330689614

/-! ## A274147.P11983130832167443723

`A351846(A385906(n+1))`
-/

namespace A274147.P11983130832167443723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A385906 (n + 1)).toNat

end

end A274147.P11983130832167443723

/-! ## A274147.P10034862368200880965

`A329548(A083198(n+5))`
-/

namespace A274147.P10034862368200880965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A083198 (n + 5)).toNat

end

end A274147.P10034862368200880965

/-! ## A274147.P13525798900850585737

`ceil(ceil(A193358(A114203(n))/2)/2)`
-/

namespace A274147.P13525798900850585737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A193358 (A114203 n).toNat : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A274147.P13525798900850585737

/-! ## A274147.P12731585698843101097

`A055642(A001006(n))+A004695(n)`
-/

namespace A274147.P12731585698843101097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001006 n).toNat + A004695 n

end

end A274147.P12731585698843101097

/-!
# A274148: Number of integers in n-th generation of tree T(-1/3) defined in Comments.

The programs for A274148, there is no canonical definition to state claims against.
-/

/-! ## A274148.P12045295540011627089

`A000196(A098482(n)+A046716(n))`
-/

namespace A274148.P12045295540011627089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A098482 n + A046716 n).toNat

end

end A274148.P12045295540011627089

/-! ## A274148.P14862343969885456028

`A000196(A123915(n)+A022166(n))`
-/

namespace A274148.P14862343969885456028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A123915 n + A022166 n).toNat

end

end A274148.P14862343969885456028

/-! ## A274148.P10646332748382827608

`A000196(A144089(n)+A098482(n))`
-/

namespace A274148.P10646332748382827608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A144089 n + A098482 n).toNat

end

end A274148.P10646332748382827608

/-! ## A274148.P7136587024086493662

`A000196(A146955(n)+A098482(n))`
-/

namespace A274148.P7136587024086493662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A146955 n + A098482 n).toNat

end

end A274148.P7136587024086493662

/-! ## A274148.P6555907065894301434

`A000196(A146955(n)+A123915(n))`
-/

namespace A274148.P6555907065894301434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A146955 n + A123915 n).toNat

end

end A274148.P6555907065894301434

/-!
# A274149: Number of integers in n-th generation of tree T(-1/4) defined in Comments.

The programs for A274149, there is no canonical definition to state claims against.
-/

/-! ## A274149.P15313785590997457859

`A105224(A049085(n)+A018162(n))`
-/

namespace A274149.P15313785590997457859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A049085 n + A018162 n).toNat

end

end A274149.P15313785590997457859

/-! ## A274149.P12539248807840799482

`A105224(or(A004526(n), A018162(n)))`
-/

namespace A274149.P12539248807840799482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (Int.lor (A004526 n) (A018162 n)).toNat

end

end A274149.P12539248807840799482

/-! ## A274149.P9897900516843547095

`A105224(or(A004526(n), A018164(n)))`
-/

namespace A274149.P9897900516843547095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (Int.lor (A004526 n) (A018164 n)).toNat

end

end A274149.P9897900516843547095

/-! ## A274149.P15419838255967093965

`A105224(or(A011371(n), A018162(n)))`
-/

namespace A274149.P15419838255967093965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (Int.lor (A011371 n) (A018162 n)).toNat

end

end A274149.P15419838255967093965

/-! ## A274149.P13242676300091297741

`A105224(A018162(n)+A105224(n+1)²)`
-/

namespace A274149.P13242676300091297741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A018162 n + A105224 (n + 1) ^ 2).toNat

end

end A274149.P13242676300091297741

/-!
# A274152: Number of integers in n-th generation of tree T(3/2) defined in Comments.

The programs for A274152, there is no canonical definition to state claims against.
-/

/-! ## A274152.P14770536563940490796

`A096491(A001190(n+1))`
-/

namespace A274152.P14770536563940490796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A001190 (n + 1)).toNat

end

end A274152.P14770536563940490796

/-! ## A274152.P13064968081970847738

`A096491(A316500(n+1))`
-/

namespace A274152.P13064968081970847738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A316500 (n + 1)).toNat

end

end A274152.P13064968081970847738

/-! ## A274152.P2874961626724799126

`A174342(A125189(n))`
-/

namespace A274152.P2874961626724799126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174342 (A125189 n).toNat

end

end A274152.P2874961626724799126

/-! ## A274152.P17518143256879555636

`A096491(A036650(n+1))`
-/

namespace A274152.P17518143256879555636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A036650 (n + 1)).toNat

end

end A274152.P17518143256879555636

/-! ## A274152.P6981438862050714485

`A157282(A116975(n+1))`
-/

namespace A274152.P6981438862050714485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157282 (A116975 (n + 1)).toNat

end

end A274152.P6981438862050714485

/-!
# A274153: Number of integers in n-th generation of tree T(5/2) defined in Comments.

The programs for A274153, there is no canonical definition to state claims against.
-/

/-! ## A274153.P14567453530161593776

`A000930(n)-A144595(A000930(2*n))`
-/

namespace A274153.P14567453530161593776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A144595 (A000930 (2 * n)).toNat

end

end A274153.P14567453530161593776

/-! ## A274153.P18202425438525401279

`A111651(A037444(n))+A080679(A127640(n+1))`
-/

namespace A274153.P18202425438525401279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A037444 n).toNat + A080679 (A127640 (n + 1)).toNat

end

end A274153.P18202425438525401279

/-! ## A274153.P7326629900006669052

`A370813(A008955(n))+A274154(n)`
-/

namespace A274153.P7326629900006669052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A008955 n).toNat + A274154 n

end

end A274153.P7326629900006669052

/-! ## A274153.P12350057706449106197

`A105224(A333229(n+1)+A026778(n))`
-/

namespace A274153.P12350057706449106197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A333229 (n + 1) + A026778 n).toNat

end

end A274153.P12350057706449106197

/-!
# A274154: Number of integers in n-th generation of tree T(-3/2) defined in Comments.

The programs for A274154, there is no canonical definition to state claims against.
-/

/-! ## A274154.P8273854400942220973

`A111651(A037444(n))`
-/

namespace A274154.P8273854400942220973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A037444 n).toNat

end

end A274154.P8273854400942220973

/-! ## A274154.P15342174183295564103

`A204164(A274147(n)*A302016(n))`
-/

namespace A274154.P15342174183295564103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A274147 n * A302016 n).toNat

end

end A274154.P15342174183295564103

/-! ## A274154.P11437326343238545834

`A135660(A323867(n)+A175304(n+1))`
-/

namespace A274154.P11437326343238545834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A323867 n + A175304 (n + 1)).toNat

end

end A274154.P11437326343238545834

/-! ## A274154.P358088628002318101

`A135660(A323867(n)+A189287(n+1))`
-/

namespace A274154.P358088628002318101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A323867 n + A189287 (n + 1)).toNat

end

end A274154.P358088628002318101

/-! ## A274154.P15982985686732619467

`A135661(A083329(n)+A004169(n+2))`
-/

namespace A274154.P15982985686732619467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A083329 n + A004169 (n + 2)).toNat

end

end A274154.P15982985686732619467

/-!
# A274155: Number of integers in n-th generation of tree T(-5/2) defined in Comments.

The programs for A274155, there is no canonical definition to state claims against.
-/

/-! ## A274155.P761791044396355909

`A000196(A190162(n+1))`
-/

namespace A274155.P761791044396355909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A190162 (n + 1)).toNat

end

end A274155.P761791044396355909

/-! ## A274155.P16620483617403268692

`floor(floor(A324850(A291728(n))^(1/2))^(1/2))`
-/

namespace A274155.P16620483617403268692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A324850 (A291728 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A274155.P16620483617403268692

/-! ## A274155.P7955470747584909354

`A351846(A079437(n)+A011782(n))`
-/

namespace A274155.P7955470747584909354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A079437 n + A011782 n).toNat

end

end A274155.P7955470747584909354

/-! ## A274155.P1595919613232442558

`A133016(A077419(n))`
-/

namespace A274155.P1595919613232442558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133016 (A077419 n).toNat

end

end A274155.P1595919613232442558

/-! ## A274155.P13194575516865735427

`xor(A000930(n), A091381(A172339(n)))`
-/

namespace A274155.P13194575516865735427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000930 n) (A091381 (A172339 n).toNat)

end

end A274155.P13194575516865735427

/-!
# A274156: Number of integers in n-th generation of tree T(2^(-1/2)) defined in Comments.

The programs for A274156, there is no canonical definition to state claims against.
-/

/-! ## A274156.P2181112859223609577

`A000196(A128021(n+1)-A001591(n))`
-/

namespace A274156.P2181112859223609577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A128021 (n + 1) - A001591 n).toNat

end

end A274156.P2181112859223609577

/-! ## A274156.P17106540708566832622

`A000196(A017862(3*n+4)+A017836(n))`
-/

namespace A274156.P17106540708566832622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A017862 (3 * n + 4) + A017836 n).toNat

end

end A274156.P17106540708566832622

/-! ## A274156.P3755916712043632814

`A204551(A297300(n+2))`
-/

namespace A274156.P3755916712043632814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A297300 (n + 2)).toNat

end

end A274156.P3755916712043632814

/-! ## A274156.P11120348769316723422

`A300287(A108895(n))`
-/

namespace A274156.P11120348769316723422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A108895 n).toNat

end

end A274156.P11120348769316723422

/-! ## A274156.P5649742959431107054

`A025126(A144978(n+1))`
-/

namespace A274156.P5649742959431107054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A144978 (n + 1)).toNat

end

end A274156.P5649742959431107054

/-!
# A274157: Number of integers in n-th generation of tree T(3^(-1/2)) defined in Comments.

The programs for A274157, there is no canonical definition to state claims against.
-/

/-! ## A274157.P8456038113411154590

`A000196(A157162(n+2)%A349155(2*n+5))`
-/

namespace A274157.P8456038113411154590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A157162 (n + 2)) (A349155 (2 * n + 5))).toNat

end

end A274157.P8456038113411154590

/-! ## A274157.P15774477726367449829

`A000196(A157162(n+2))%A051221(3*n+5)`
-/

namespace A274157.P15774477726367449829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A157162 (n + 2)).toNat) (A051221 (3 * n + 5))

end

end A274157.P15774477726367449829

/-! ## A274157.P17682349069781144623

`A367329(A168659(n+2))`
-/

namespace A274157.P17682349069781144623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367329 (A168659 (n + 2)).toNat

end

end A274157.P17682349069781144623

/-! ## A274157.P17406867657401002786

`A048766(A187502(2*n)+2)`
-/

namespace A274157.P17406867657401002786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A187502 (2 * n) + 2).toNat

end

end A274157.P17406867657401002786

/-! ## A274157.P14880690447047278081

`A048766(round(A283173(n)/(n+1)))`
-/

namespace A274157.P14880690447047278081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A283173 n : ℚ) / (n + 1 : ℚ))).toNat

end

end A274157.P14880690447047278081

/-!
# A274159: Number of integers in n-th generation of tree T(3^(-1/3)) defined in Comments.

The programs for A274159, there is no canonical definition to state claims against.
-/

/-! ## A274159.P1219866954710748939

`A048766(floor(A018186(n)/(n+1)))`
-/

namespace A274159.P1219866954710748939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ⌊(A018186 n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A274159.P1219866954710748939

/-!
# A274160: Number of real integers in n-th generation of tree T(i) defined in Comments.

The programs for A274160, there is no canonical definition to state claims against.
-/

/-! ## A274160.P6511847667208983444

`ceil(A164146(abs(1-n))/2)`
-/

namespace A274160.P6511847667208983444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A164146 |1 - (n : ℤ)|.toNat : ℚ) / 2⌉

end

end A274160.P6511847667208983444

/-! ## A274160.P6199390631065812897

`round(A164146(abs(n-1))/2)`
-/

namespace A274160.P6199390631065812897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A164146 |(n : ℤ) - 1|.toNat : ℚ) / 2)

end

end A274160.P6199390631065812897

/-! ## A274160.P12601580830654126551

`A164146(abs(char[1]+1-n))/2`
-/

namespace A274160.P12601580830654126551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164146 |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (1 - (n : ℤ))|.toNat : ℚ) / 2

end

end A274160.P12601580830654126551

/-! ## A274160.P14622812868593917323

`floor(A164146(abs(n-A060576(n)))/2)`
-/

namespace A274160.P14622812868593917323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164146 |(n : ℤ) - A060576 n|.toNat : ℚ) / 2⌋

end

end A274160.P14622812868593917323

/-! ## A274160.P888301539475365086

`floor(sqrt((A164146(abs(2*(n+1)-3-n))/2)²+1))`
-/

namespace A274160.P888301539475365086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((A164146 |(2 * (n + 1) : ℤ) - 3 - (n : ℤ)|.toNat : ℚ) / 2) ^ 2 + 1 : ℝ)⌋

end

end A274160.P888301539475365086

/-!
# A274161: Numbers n such that in the edge-delete game on the path P_{n} the first player does not have a winning strategy.

The programs for A274161, there is no canonical definition to state claims against.
-/

/-! ## A274161.P10978553036273419065

`A215721(n+1)+2`
-/

namespace A274161.P10978553036273419065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215721 (n + 1) + 2

end

end A274161.P10978553036273419065

/-! ## A274161.P16906048005429039314

`eq[A071431(n), A165226(n)]+2`
-/

namespace A274161.P16906048005429039314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A274161.P16906048005429039314

/-! ## A274161.P2208401474856252494

`A008475(A002809(3*n+2))-A053761(n+1)`
-/

namespace A274161.P2208401474856252494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A002809 (3 * n + 2)).toNat - A053761 (n + 1)

end

end A274161.P2208401474856252494

/-! ## A274161.P9675680460727757636

`∑[A096179(A242891(n+3))]`
-/

namespace A274161.P9675680460727757636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096179 (A242891 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274161.P9675680460727757636

/-! ## A274161.P1681251423179024328

`A187333(n)+p?[A034868(n)]`
-/

namespace A274161.P1681251423179024328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187333 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274161.P1681251423179024328

/-!
# A274162: Number of real integers in n-th generation of tree T(3i) defined in Comments.

The programs for A274162, there is no canonical definition to state claims against.
-/

/-! ## A274162.P5559074547521198402

`A004275(A001611(n))-A023442(n)`
-/

namespace A274162.P5559074547521198402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A001611 n).toNat - A023442 n

end

end A274162.P5559074547521198402

/-! ## A274162.P18022857809086398616

`A257265(A294561(n))+A000045(n)`
-/

namespace A274162.P18022857809086398616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 (A294561 n).toNat + A000045 n

end

end A274162.P18022857809086398616

/-! ## A274162.P5253774196576773633

`A292547(A385483(n+1))+A000045(n)`
-/

namespace A274162.P5253774196576773633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 (A385483 (n + 1)).toNat + A000045 n

end

end A274162.P5253774196576773633

/-! ## A274162.P15008931121755469155

`A073424(A045822(n))+A000045(n)`
-/

namespace A274162.P15008931121755469155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A045822 n).toNat + A000045 n

end

end A274162.P15008931121755469155

/-! ## A274162.P12336102603685549285

`A105594(A020736(n))+A000045(n)`
-/

namespace A274162.P12336102603685549285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105594 (A020736 n).toNat + A000045 n

end

end A274162.P12336102603685549285

/-!
# A274163: Number of real integers in n-th generation of tree T(4i) defined in Comments.

The programs for A274163, there is no canonical definition to state claims against.
-/

/-! ## A274163.P2793265433178857820

`A298660(A000124(n))+A088156(n)`
-/

namespace A274163.P2793265433178857820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A000124 n).toNat + A088156 n

end

end A274163.P2793265433178857820

/-! ## A274163.P12816169090713124680

`A005206(A326688(n)+A000045(n+1))`
-/

namespace A274163.P12816169090713124680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A326688 n + A000045 (n + 1)).toNat

end

end A274163.P12816169090713124680

/-! ## A274163.P6599022848679527361

`A005206(A326688(n)+A212804(n+2))`
-/

namespace A274163.P6599022848679527361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A326688 n + A212804 (n + 2)).toNat

end

end A274163.P6599022848679527361

/-! ## A274163.P15812132048692799995

`A034450(n+1)+A005206(A000045(n+1))`
-/

namespace A274163.P15812132048692799995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034450 (n + 1) + A005206 (A000045 (n + 1)).toNat

end

end A274163.P15812132048692799995

/-! ## A274163.P6687045436553337369

`A028310(A111855(n+1)+A000045(n))`
-/

namespace A274163.P6687045436553337369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A111855 (n + 1) + A000045 n).toNat

end

end A274163.P6687045436553337369

/-!
# A274165: Number of real integers in n-th generation of tree T(i/3) defined in Comments.

The programs for A274165, there is no canonical definition to state claims against.
-/

/-! ## A274165.P12693807437603148797

`A017885(round((A351319(n+1)+1)/(n+1)+n)+7)`
-/

namespace A274165.P12693807437603148797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017885 (SequenceMachineLib.roundAway ((A351319 (n + 1) + 1 : ℚ) / (n + 1 : ℚ) + (n : ℚ)) + 7).toNat

end

end A274165.P12693807437603148797

/-! ## A274165.P17688920476555885412

`A000027(A017885(round(acot(n)+n)+7))`
-/

namespace A274165.P17688920476555885412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A017885 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 7).toNat).toNat

end

end A274165.P17688920476555885412

/-!
# A274166: Number of real integers in n-th generation of tree T(i+1) defined in Comments.

The programs for A274166, there is no canonical definition to state claims against.
-/

/-! ## A274166.P8223649302304261924

`xor(A302643(n+1), A347457(A316474(n+1)))`
-/

namespace A274166.P8223649302304261924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A302643 (n + 1)) (A347457 (A316474 (n + 1)).toNat)

end

end A274166.P8223649302304261924

/-!
# A274167: Number of real integers in n-th generation of tree T(i-1) defined in Comments.

The programs for A274167, there is no canonical definition to state claims against.
-/

/-! ## A274167.P13666089609664363286

`A125158(A175378(n+1)+1)`
-/

namespace A274167.P13666089609664363286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125158 (A175378 (n + 1) + 1).toNat

end

end A274167.P13666089609664363286

/-!
# A274168: Number of real integers in n-th generation of tree T(r) defined in Comments, where r^2 = -r - 1 (i.e., r = (-1 + sqrt(3))/2).

The programs for A274168, there is no canonical definition to state claims against.
-/

/-! ## A274168.P3939687792863718522

`A106744(A308991(n)+A008619(A008619(n)))`
-/

namespace A274168.P3939687792863718522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A308991 n + A008619 (A008619 n).toNat).toNat

end

end A274168.P3939687792863718522

/-!
# A274170: Christoffel words as binary numbers.

The programs for A274170, there is no canonical definition to state claims against.
-/

/-! ## A274170.P14399096621232364717

`A367745(n+3)`
-/

namespace A274170.P14399096621232364717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367745 (n + 3)

end

end A274170.P14399096621232364717

/-! ## A274170.P13503082460089025140

`eq[A028310(n), A257697(A103517(n))]`
-/

namespace A274170.P13503082460089025140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (A103517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274170.P13503082460089025140

/-! ## A274170.P10659740536571875480

`eq[A080542(2*n+1), A256999(A080541(2*(n+1)))]`
-/

namespace A274170.P10659740536571875480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A080541 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274170.P10659740536571875480

/-! ## A274170.P5465895775496157395

`eq[A080542(2*n+1), A256999(A080542(2*(n+1)))]`
-/

namespace A274170.P5465895775496157395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A080542 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274170.P5465895775496157395

/-! ## A274170.P15641147398005718332

`eq[A163380(2*n+1), A256999(A080541(2*(n+1)))]`
-/

namespace A274170.P15641147398005718332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163380 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A080541 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274170.P15641147398005718332

/-!
# A274171: Number of diagonal Latin squares of order n with the first row in order.

The programs for A274171, there is no canonical definition to state claims against.
-/

/-! ## A274171.P4806757317342870318

`A274806(n+1)/(n+1)!`
-/

namespace A274171.P4806757317342870318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274806 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A274171.P4806757317342870318

/-! ## A274171.P10874544980100791004

`A274806(n+1)/∏[A077168(n)]`
-/

namespace A274171.P10874544980100791004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274806 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A274171.P10874544980100791004

/-! ## A274171.P15496212917560624395

`A274806(n+1)/record[A123361(n)]`
-/

namespace A274171.P15496212917560624395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274806 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A274171.P15496212917560624395

/-! ## A274171.P3283190715724216797

`A305570(n+1)+A305568(n+1)`
-/

namespace A274171.P3283190715724216797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305570 (n + 1) + A305568 (n + 1)

end

end A274171.P3283190715724216797

/-! ## A274171.P6350730130357833750

`A274806(n+1)/∏[A000027(n+1)]`
-/

namespace A274171.P6350730130357833750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274806 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A274171.P6350730130357833750

/-!
# A274172: Nonsquare composites with all prime factors larger than 5.

The programs for A274172, the canonical program `A274172.P8360577516930396545` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274172 has offset 1).

The definition of A274172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274172.P8360577516930396545

`filter[A038510(n+1), A049240(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A274172

/-- `filter[A038510(n+1), A049240(#)]` -/
def P8360577516930396545.Spec : Prop :=
  ∀ n, P8360577516930396545.a n = A274172 (n + 1)

theorem P8360577516930396545.correct : P8360577516930396545.Spec := by
  intro n
  simp only [A274172, Nat.add_sub_cancel]

end A274172

/-! ## A274172.P963064244099706624

`filter[A038510(n+1), A323158(#)]`
-/

namespace A274172.P963064244099706624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A274172.P963064244099706624

namespace A274172

/-- `filter[A038510(n+1), A323158(#)]` -/
def P963064244099706624.Spec : Prop :=
  ∀ n, P963064244099706624.a n = A274172 (n + 1)

end A274172

/-! ## A274172.P373566267727127392

`filter[A038510(n+1), A324903(#)]`
-/

namespace A274172.P373566267727127392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A274172.P373566267727127392

namespace A274172

/-- `filter[A038510(n+1), A324903(#)]` -/
def P373566267727127392.Spec : Prop :=
  ∀ n, P373566267727127392.a n = A274172 (n + 1)

end A274172

/-! ## A274172.P12950431611049657887

`filter[A038510(n+1), A324908(#)]`
-/

namespace A274172.P12950431611049657887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A274172.P12950431611049657887

namespace A274172

/-- `filter[A038510(n+1), A324908(#)]` -/
def P12950431611049657887.Spec : Prop :=
  ∀ n, P12950431611049657887.a n = A274172 (n + 1)

end A274172

/-! ## A274172.P3719737091791228547

`filter[A038510(n+1), A374474(#)]`
-/

namespace A274172.P3719737091791228547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A274172.P3719737091791228547

namespace A274172

/-- `filter[A038510(n+1), A374474(#)]` -/
def P3719737091791228547.Spec : Prop :=
  ∀ n, P3719737091791228547.a n = A274172 (n + 1)

end A274172

/-! ## A274172.P7715619124675831444

`∩[A374476(n+1), A070884(n)]`
-/

namespace A274172.P7715619124675831444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P7715619124675831444

namespace A274172

/-- `∩[A374476(n+1), A070884(n)]` -/
def P7715619124675831444.Spec : Prop :=
  ∀ n, (P7715619124675831444.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P13868222682016244823

`filter[A082686(n+1), A162289(#)]`
-/

namespace A274172.P13868222682016244823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A274172.P13868222682016244823

namespace A274172

/-- `filter[A082686(n+1), A162289(#)]` -/
def P13868222682016244823.Spec : Prop :=
  ∀ n, P13868222682016244823.a n = A274172 (n + 1)

end A274172

/-! ## A274172.P9594303419743940847

`∩[A082686(n+1), A070884(n)]`
-/

namespace A274172.P9594303419743940847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P9594303419743940847

namespace A274172

/-- `∩[A082686(n+1), A070884(n)]` -/
def P9594303419743940847.Spec : Prop :=
  ∀ n, (P9594303419743940847.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P6367934225003220439

`∩[A007775(n+1), A082686(n+1)]`
-/

namespace A274172.P6367934225003220439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P6367934225003220439

namespace A274172

/-- `∩[A007775(n+1), A082686(n+1)]` -/
def P6367934225003220439.Spec : Prop :=
  ∀ n, (P6367934225003220439.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P9720755281695376133

`∩[A038510(n+1), A082686(n+1)]`
-/

namespace A274172.P9720755281695376133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P9720755281695376133

namespace A274172

/-- `∩[A038510(n+1), A082686(n+1)]` -/
def P9720755281695376133.Spec : Prop :=
  ∀ n, (P9720755281695376133.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P8546748471691574214

`∩[A054403(n+1), A082686(n+1)]`
-/

namespace A274172.P8546748471691574214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P8546748471691574214

namespace A274172

/-- `∩[A054403(n+1), A082686(n+1)]` -/
def P8546748471691574214.Spec : Prop :=
  ∀ n, (P8546748471691574214.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P4473384703648775607

`∩[A038509(n+1), A158942(n+1)]`
-/

namespace A274172.P4473384703648775607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P4473384703648775607

namespace A274172

/-- `∩[A038509(n+1), A158942(n+1)]` -/
def P4473384703648775607.Spec : Prop :=
  ∀ n, (P4473384703648775607.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P1298727270741641014

`∩[A038510(n+1), A158942(n+1)]`
-/

namespace A274172.P1298727270741641014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P1298727270741641014

namespace A274172

/-- `∩[A038510(n+1), A158942(n+1)]` -/
def P1298727270741641014.Spec : Prop :=
  ∀ n, (P1298727270741641014.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P9986535511474035370

`∩[A067793(n+1), A158942(n+1)]`
-/

namespace A274172.P9986535511474035370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P9986535511474035370

namespace A274172

/-- `∩[A067793(n+1), A158942(n+1)]` -/
def P9986535511474035370.Spec : Prop :=
  ∀ n, (P9986535511474035370.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P12683838126666197941

`∩[A090818(n+1), A158942(n+1)]`
-/

namespace A274172.P12683838126666197941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P12683838126666197941

namespace A274172

/-- `∩[A090818(n+1), A158942(n+1)]` -/
def P12683838126666197941.Spec : Prop :=
  ∀ n, (P12683838126666197941.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P8414467698143734387

`∩[A038510(n+1), A374475(n+1)]`
-/

namespace A274172.P8414467698143734387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P8414467698143734387

namespace A274172

/-- `∩[A038510(n+1), A374475(n+1)]` -/
def P8414467698143734387.Spec : Prop :=
  ∀ n, (P8414467698143734387.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P4731450240006736525

`∩[A038510(n+1), A088828(n+1)]`
-/

namespace A274172.P4731450240006736525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P4731450240006736525

namespace A274172

/-- `∩[A038510(n+1), A088828(n+1)]` -/
def P4731450240006736525.Spec : Prop :=
  ∀ n, (P4731450240006736525.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P17619560118776076390

`∩[A038510(n+1), A053868(n+1)]`
-/

namespace A274172.P17619560118776076390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P17619560118776076390

namespace A274172

/-- `∩[A038510(n+1), A053868(n+1)]` -/
def P17619560118776076390.Spec : Prop :=
  ∀ n, (P17619560118776076390.a n : ℤ) = A274172 (n + 1)

end A274172

/-! ## A274172.P16367869614506208328

`∩[A082686(n+1), A229829(n+1)]`
-/

namespace A274172.P16367869614506208328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274172.P16367869614506208328

namespace A274172

/-- `∩[A082686(n+1), A229829(n+1)]` -/
def P16367869614506208328.Spec : Prop :=
  ∀ n, (P16367869614506208328.a n : ℤ) = A274172 (n + 1)

end A274172

/-!
# A274174: Number of compositions of n if all summand runs are kept together.

The programs for A274174, there is no canonical definition to state claims against.
-/

/-! ## A274174.P6031853650914048469

`ceil(2^(n-1)-A335548(n))`
-/

namespace A274174.P6031853650914048469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A335548 n : ℚ)⌉

end

end A274174.P6031853650914048469

/-! ## A274174.P4787988117557386871

`A011782(n)-A335548(n)`
-/

namespace A274174.P4787988117557386871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A335548 n

end

end A274174.P4787988117557386871

/-! ## A274174.P18255122083674554476

`∑[A034008(n)]-A335548(n)`
-/

namespace A274174.P18255122083674554476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A335548 n

end

end A274174.P18255122083674554476

/-! ## A274174.P2378347920101996798

`Δ[A056469(n)]-A335548(n)`
-/

namespace A274174.P2378347920101996798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335548 n

end

end A274174.P2378347920101996798

/-! ## A274174.P17394462742025519997

`Δ[A131577(n)]-A335548(n)`
-/

namespace A274174.P17394462742025519997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335548 n

end

end A274174.P17394462742025519997

/-!
# A274176: Sum of terms in the continued logarithm expansion of n.

The programs for A274176, there is no canonical definition to state claims against.
-/

/-! ## A274176.P2559813355991530798

`A000120(A002229(n+1)*A234840(n))`
-/

namespace A274176.P2559813355991530798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002229 (n + 1) * A234840 n).toNat

end

end A274176.P2559813355991530798

/-! ## A274176.P6310199310247641273

`A056239(A084385(n+1)^A212363(n))`
-/

namespace A274176.P6310199310247641273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A084385 (n + 1) : ℚ) ^ (A212363 n : ℤ))).toNat

end

end A274176.P6310199310247641273

/-! ## A274176.P2850583854033801133

`∑{e}[A034386(A209636(n)), #]`
-/

namespace A274176.P2850583854033801133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A209636 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A274176.P2850583854033801133

/-! ## A274176.P1799871317062064193

`∑{e}[A175351(A332815(n)), #]`
-/

namespace A274176.P1799871317062064193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175351 (A332815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A274176.P1799871317062064193

/-! ## A274176.P13897478261437890645

`A329697(A329886(4*n+1))`
-/

namespace A274176.P13897478261437890645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A329886 (4 * n + 1)).toNat

end

end A274176.P13897478261437890645

/-!
# A274179: Expansion of f(x^1, x^6) in powers of x where f() is Ramanujan's general theta function.

The programs for A274179, the canonical program `A274179.P5668171272729194890` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274179 has offset 0).

The definition of A274179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274179.P10110323718335219305

`abs(A232714(n))`
-/

namespace A274179.P10110323718335219305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232714 n|

end

end A274179.P10110323718335219305

namespace A274179

/-- `abs(A232714(n))` -/
def P10110323718335219305.Spec : Prop :=
  ∀ n, P10110323718335219305.a n = A274179 n

end A274179

/-! ## A274179.P5668171272729194890

`A010052(56*n+25)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274179

/-- `A010052(56*n+25)` -/
def P5668171272729194890.Spec : Prop :=
  ∀ n, P5668171272729194890.a n = A274179 n

theorem P5668171272729194890.correct : P5668171272729194890.Spec := by
  intro n
  simp only [A274179]

end A274179

/-! ## A274179.P4500424056253609572

`and(1, char[A118277(n)])`
-/

namespace A274179.P4500424056253609572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A274179.P4500424056253609572

namespace A274179

/-- `and(1, char[A118277(n)])` -/
def P4500424056253609572.Spec : Prop :=
  ∀ n, (P4500424056253609572.a n : ℤ) = A274179 n

end A274179

/-! ## A274179.P14958537973323220496

`A023531(A017005(n))`
-/

namespace A274179.P14958537973323220496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A017005 n).toNat

end

end A274179.P14958537973323220496

namespace A274179

/-- `A023531(A017005(n))` -/
def P14958537973323220496.Spec : Prop :=
  ∀ n, P14958537973323220496.a n = A274179 n

end A274179

/-! ## A274179.P1107732052862893711

`A232714(n)^A002378(n)`
-/

namespace A274179.P1107732052862893711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232714 n : ℚ) ^ (A002378 n : ℤ)

end

end A274179.P1107732052862893711

namespace A274179

/-- `A232714(n)^A002378(n)` -/
def P1107732052862893711.Spec : Prop :=
  ∀ n, P1107732052862893711.a n = (A274179 n : ℚ)

end A274179

/-! ## A274179.P11683791343774078627

`gcd(A000038(n), A232714(n))`
-/

namespace A274179.P11683791343774078627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A232714 n)

end

end A274179.P11683791343774078627

namespace A274179

/-- `gcd(A000038(n), A232714(n))` -/
def P11683791343774078627.Spec : Prop :=
  ∀ n, (P11683791343774078627.a n : ℤ) = A274179 n

end A274179

/-! ## A274179.P3526792709310516306

`lcm(A010892(n), A232714(n))`
-/

namespace A274179.P3526792709310516306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A232714 n)

end

end A274179.P3526792709310516306

namespace A274179

/-- `lcm(A010892(n), A232714(n))` -/
def P3526792709310516306.Spec : Prop :=
  ∀ n, (P3526792709310516306.a n : ℤ) = A274179 n

end A274179

/-! ## A274179.P16078622210192544324

`A232714(n)^A000010(n+2)`
-/

namespace A274179.P16078622210192544324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232714 n : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A274179.P16078622210192544324

namespace A274179

/-- `A232714(n)^A000010(n+2)` -/
def P16078622210192544324.Spec : Prop :=
  ∀ n, P16078622210192544324.a n = (A274179 n : ℚ)

end A274179

/-! ## A274179.P15596678059255535604

`(A232714(n)^A000040(n+1))²`
-/

namespace A274179.P15596678059255535604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A232714 n : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A274179.P15596678059255535604

namespace A274179

/-- `(A232714(n)^A000040(n+1))²` -/
def P15596678059255535604.Spec : Prop :=
  ∀ n, P15596678059255535604.a n = (A274179 n : ℚ)

end A274179

/-! ## A274179.P5094090929185515602

`(A232714(n)^A000203(n+1))²`
-/

namespace A274179.P5094090929185515602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A232714 n : ℚ) ^ (A000203 (n + 1) : ℤ)) ^ 2

end

end A274179.P5094090929185515602

namespace A274179

/-- `(A232714(n)^A000203(n+1))²` -/
def P5094090929185515602.Spec : Prop :=
  ∀ n, P5094090929185515602.a n = (A274179 n : ℚ)

end A274179

/-! ## A274179.P10605172642062721254

`A115359(7*n+2)`
-/

namespace A274179.P10605172642062721254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (7 * n + 2)

end

end A274179.P10605172642062721254

namespace A274179

/-- `A115359(7*n+2)` -/
def P10605172642062721254.Spec : Prop :=
  ∀ n, P10605172642062721254.a n = A274179 n

end A274179

/-! ## A274179.P10879428035617260331

`A003982(4*A017017(n))`
-/

namespace A274179.P10879428035617260331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (4 * A017017 n).toNat

end

end A274179.P10879428035617260331

namespace A274179

/-- `A003982(4*A017017(n))` -/
def P10879428035617260331.Spec : Prop :=
  ∀ n, P10879428035617260331.a n = A274179 n

end A274179

/-! ## A274179.P11766640840788548146

`floor(3/A002260(7*n+6))`
-/

namespace A274179.P11766640840788548146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (A002260 (7 * n + 6) : ℚ)⌋

end

end A274179.P11766640840788548146

namespace A274179

/-- `floor(3/A002260(7*n+6))` -/
def P11766640840788548146.Spec : Prop :=
  ∀ n, P11766640840788548146.a n = A274179 n

end A274179

/-! ## A274179.P9161785191081414320

`floor(1/A007318(Δ[(2*n)²]-(n+1)))`
-/

namespace A274179.P9161785191081414320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A007318 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋

end

end A274179.P9161785191081414320

namespace A274179

/-- `floor(1/A007318(Δ[(2*n)²]-(n+1)))` -/
def P9161785191081414320.Spec : Prop :=
  ∀ n, P9161785191081414320.a n = A274179 n

end A274179

/-! ## A274179.P3233005095672525722

`A097806(7*n+1)`
-/

namespace A274179.P3233005095672525722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (7 * n + 1)

end

end A274179.P3233005095672525722

namespace A274179

/-- `A097806(7*n+1)` -/
def P3233005095672525722.Spec : Prop :=
  ∀ n, P3233005095672525722.a n = A274179 n

end A274179

/-! ## A274179.P12867697299983382802

`A103451(7*n+2)`
-/

namespace A274179.P12867697299983382802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (7 * n + 2)

end

end A274179.P12867697299983382802

namespace A274179

/-- `A103451(7*n+2)` -/
def P12867697299983382802.Spec : Prop :=
  ∀ n, P12867697299983382802.a n = A274179 n

end A274179

/-! ## A274179.P12429406597496352785

`A103452(7*n+2)`
-/

namespace A274179.P12429406597496352785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (7 * n + 2)

end

end A274179.P12429406597496352785

namespace A274179

/-- `A103452(7*n+2)` -/
def P12429406597496352785.Spec : Prop :=
  ∀ n, P12429406597496352785.a n = A274179 n

end A274179

/-! ## A274179.P16257087910373091643

`A167374(7*n+2)`
-/

namespace A274179.P16257087910373091643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (7 * n + 2)

end

end A274179.P16257087910373091643

namespace A274179

/-- `A167374(7*n+2)` -/
def P16257087910373091643.Spec : Prop :=
  ∀ n, P16257087910373091643.a n = A274179 n

end A274179

/-!
# A274182: Semiprimes that are the sum of the first n odd primes for some n.

The programs for A274182, there is no canonical definition to state claims against.
-/

/-! ## A274182.P15422592123602423329

`∩[A001358(n+1), A071148(n+1)]`
-/

namespace A274182.P15422592123602423329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274182.P15422592123602423329

/-! ## A274182.P5646720949074135724

`∩[A001358(n+1), A007504(n)-2]`
-/

namespace A274182.P5646720949074135724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274182.P5646720949074135724

/-! ## A274182.P7187072950794488997

`∩[A001358(n+1), A262392(n)-A010693(n)-2]`
-/

namespace A274182.P7187072950794488997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 n - A010693 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274182.P7187072950794488997

/-! ## A274182.P9128695120823046383

`filter[A071148(n+1), A064911(#)]`
-/

namespace A274182.P9128695120823046383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A274182.P9128695120823046383

/-! ## A274182.P8612343564450071905

`∩[A071148(n+1), A176540(n+1)]`
-/

namespace A274182.P8612343564450071905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274182.P8612343564450071905

/-!
# A274183: Irregular triangular array having n-th row g(n) defined in Comments.

The programs for A274183, there is no canonical definition to state claims against.
-/

/-! ## A274183.P15087457899748030017

`A193173(n+1)-A297328(A010894(n+1))`
-/

namespace A274183.P15087457899748030017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193173 (n + 1) - A297328 (A010894 (n + 1 + 21)).toNat

end

end A274183.P15087457899748030017

/-! ## A274183.P18283975337468186141

`A193173(n+1)-A151622(n)!`
-/

namespace A274183.P18283975337468186141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193173 (n + 1) - (Nat.factorial (A151622 n).toNat : ℤ)

end

end A274183.P18283975337468186141

/-! ## A274183.P7188015568484889279

`record[A198277(n)]%A193173(n+1)`
-/

namespace A274183.P7188015568484889279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A193173 (n + 1))

end

end A274183.P7188015568484889279

/-! ## A274183.P2048526301892388095

`(A193173(n+1)-1)%A325407(n+1)`
-/

namespace A274183.P2048526301892388095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193173 (n + 1) - 1) (A325407 (n + 1))

end

end A274183.P2048526301892388095

/-! ## A274183.P2994302866796248592

`A193173(n+1)-A353375(A002496(n+1))`
-/

namespace A274183.P2994302866796248592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193173 (n + 1) - A353375 (A002496 (n + 1)).toNat

end

end A274183.P2994302866796248592

/-!
# A274184: Length of row n of the array in A274183.

The programs for A274184, there is no canonical definition to state claims against.
-/

/-! ## A274184.P5838441117201580811

`∑[A274142(n)]`
-/

namespace A274184.P5838441117201580811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274184.P5838441117201580811

/-! ## A274184.P1491189841526693098

`A274142(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A274184.P1491189841526693098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274142 n + a (A023443 n).toNat

end

end A274184.P1491189841526693098

/-! ## A274184.P3087447443266750752

`A274142(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A274184.P3087447443266750752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274142 (A028310 n).toNat + a (n - 1)

end

end A274184.P3087447443266750752

/-! ## A274184.P7814343419986205725

`∑{d}[A000079(n), A274142(A001222(#))]`
-/

namespace A274184.P7814343419986205725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A274142 (A001222 d).toNat

end

end A274184.P7814343419986205725

/-! ## A274184.P16272370964047379835

`A001462(A345372(n+1)+A000045(n))`
-/

namespace A274184.P16272370964047379835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A345372 (n + 1) + A000045 n).toNat

end

end A274184.P16272370964047379835

/-!
# A274185: Irregular triangular array having n-th row g(n) defined in Comments.

The programs for A274185, there is no canonical definition to state claims against.
-/

/-! ## A274185.P15597210851669880364

`A122201(lt[A160464(n+2), A174615(n)])`
-/

namespace A274185.P15597210851669880364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160464 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274185.P15597210851669880364

/-! ## A274185.P9224366689585620649

`A007814(lcm(A001263(n+1), A078440(n+1)))`
-/

namespace A274185.P9224366689585620649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (A001263 (n + 1)) (A078440 (n + 1)))

end

end A274185.P9224366689585620649

/-! ## A274185.P16220944332544069478

`A025581(lt[A123965(n), A010893(2*n+1)])`
-/

namespace A274185.P16220944332544069478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (2 * n + 1 + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274185.P16220944332544069478

/-! ## A274185.P2524396568434653781

`A025581(lt[A159856(n), A010893(2*n+1)])`
-/

namespace A274185.P2524396568434653781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (2 * n + 1 + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274185.P2524396568434653781

/-! ## A274185.P14550676781122625634

`A122200(lt[A159856(n), A010893(2*n+1)])`
-/

namespace A274185.P14550676781122625634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 (2 * n + 1 + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274185.P14550676781122625634

/-!
# A274186: Determinants of the Hankel matrices for the complement of the period-doubling sequence A035263.

The programs for A274186, there is no canonical definition to state claims against.
-/

/-! ## A274186.P17629444068457466729

`A318058((val(n+1, 2)+1)!)`
-/

namespace A274186.P17629444068457466729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318058 (Nat.factorial (SequenceMachineLib.valuation (n + 1) 2 + 1))

end

end A274186.P17629444068457466729

/-! ## A274186.P17408600215578910886

`A318058(val(∑[2*or(3, n)], 2)!)`
-/

namespace A274186.P17408600215578910886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318058 (Nat.factorial (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2))

end

end A274186.P17408600215578910886

/-! ## A274186.P3010597720762695753

`A318058(log2(xor(n, n+1)+1)!)`
-/

namespace A274186.P3010597720762695753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318058 (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ))).toNat)

end

end A274186.P3010597720762695753

/-! ## A274186.P224508109265464583

`A327694((val(n+1, 2)+1)^val(n+1, 2))`
-/

namespace A274186.P224508109265464583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327694 ((SequenceMachineLib.valuation (n + 1) 2 + 1) ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A274186.P224508109265464583

/-! ## A274186.P11217126293931899230

`A274659(ceil((xor(n, n+1)+1)²/6)+3)`
-/

namespace A274186.P11217126293931899230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274659 (⌈((Nat.xor n (n + 1) + 1) ^ 2 : ℚ) / 6⌉ + 3).toNat

end

end A274186.P11217126293931899230

/-!
# A274187: Least number that is the product of n consecutive positive numbers and the product of 2 oblong numbers.

The programs for A274187, there is no canonical definition to state claims against.
-/

/-! ## A274187.P10440628672174474154

`lcm(4, A048765(A205827(n+1)))`
-/

namespace A274187.P10440628672174474154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A048765 (A205827 (n + 1)).toNat)

end

end A274187.P10440628672174474154

/-! ## A274187.P13260241917608505436

`2*A106037(A112778(n+1)+2)`
-/

namespace A274187.P13260241917608505436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106037 (A112778 (n + 1) + 2).toNat

end

end A274187.P13260241917608505436

/-! ## A274187.P4602058040635688123

`2*A106037(A000720(2*(n+2)))`
-/

namespace A274187.P4602058040635688123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106037 (A000720 (2 * (n + 2))).toNat

end

end A274187.P4602058040635688123

/-!
# A274188: Number n such that there is a smaller positive number j == n (mod 5) such that sqrt(j*n) is an integer.

The programs for A274188, there is no canonical definition to state claims against.
-/

/-! ## A274188.P8395069075182186056

`A083891(A308698(2*n+1))+A034023(n+2)`
-/

namespace A274188.P8395069075182186056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (A308698 (2 * n + 1)).toNat + A034023 (n + 2)

end

end A274188.P8395069075182186056

/-! ## A274188.P2860746343755987666

`A382912(A267807(2*n+3)%A326389(3*n+1))`
-/

namespace A274188.P2860746343755987666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382912 (Int.tmod (A267807 (2 * n + 3)) (A326389 (3 * n + 1))).toNat

end

end A274188.P2860746343755987666

/-!
# A274190: Triangular array read by rows: g(n,k) = 1 for n >= 0; g(n,k) = 0 if k > n; g(n,k) = g(n-1,k-1) + g(n-1,2k) for n > 0, k > 1.

The programs for A274190, there is no canonical definition to state claims against.
-/

/-! ## A274190.P15916467127708328690

`A000196(A048004(n))%A199474(2*(n+1))`
-/

namespace A274190.P15916467127708328690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A048004 n).toNat) (A199474 (2 * (n + 1)))

end

end A274190.P15916467127708328690

/-! ## A274190.P17719115472489865864

`A126235(A290222(n)+2)`
-/

namespace A274190.P17719115472489865864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126235 (A290222 n + 2).toNat

end

end A274190.P17719115472489865864

/-! ## A274190.P16288462621057800538

`A126235(or(2, A290222(n)))`
-/

namespace A274190.P16288462621057800538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126235 (Int.lor 2 (A290222 n)).toNat

end

end A274190.P16288462621057800538

/-! ## A274190.P15086635404892267941

`A320065(A104445(n))`
-/

namespace A274190.P15086635404892267941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320065 (A104445 n).toNat

end

end A274190.P15086635404892267941

/-! ## A274190.P13213276501263754382

`A287272(A048003(n+1))`
-/

namespace A274190.P13213276501263754382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A048003 (n + 1)).toNat

end

end A274190.P13213276501263754382

/-!
# A274191: Numbers that are a product of distinct numbers in A022086.

The programs for A274191, there is no canonical definition to state claims against.
-/

/-! ## A274191.P4454495684423445273

`∑[3*A082571(A299272(n))]`
-/

namespace A274191.P4454495684423445273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082571 (A299272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274191.P4454495684423445273

/-! ## A274191.P10332595454303444875

`∑[3*A376657((n+1)²)]`
-/

namespace A274191.P10332595454303444875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A376657 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274191.P10332595454303444875

/-! ## A274191.P8257502409323290969

`3*A265340(A005566(n))`
-/

namespace A274191.P8257502409323290969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A265340 (A005566 n).toNat

end

end A274191.P8257502409323290969

/-! ## A274191.P3708517155381443409

`∑[A005882(A080213(n+1)²)]`
-/

namespace A274191.P3708517155381443409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 (A080213 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274191.P3708517155381443409

/-!
# A274193: Triangular array read by rows: g(n,k) = 1 for n >= 0; g(n,k) = 0 if k > n; g(n,k) = g(n-1,k-1) + g(n-1,3k) for n > 0, k > 1.

The programs for A274193, there is no canonical definition to state claims against.
-/

/-! ## A274193.P9075239116021925207

`A055642(∑{d}[A152157(n), A003016(n)^#])`
-/

namespace A274193.P9075239116021925207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003016 n ^ d).toNat

end

end A274193.P9075239116021925207

/-! ## A274193.P6644918186902094266

`A003056(A152157(n)%A095101(n+1))`
-/

namespace A274193.P6644918186902094266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A152157 n) (A095101 (n + 1))).toNat

end

end A274193.P6644918186902094266

/-! ## A274193.P12810435785161111946

`A055642((A370770(n)+2)²)`
-/

namespace A274193.P12810435785161111946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A370770 n + 2) ^ 2).toNat

end

end A274193.P12810435785161111946

/-! ## A274193.P629757234117567680

`A003056(A152157(n))%A244072(3*n+5)`
-/

namespace A274193.P629757234117567680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A152157 n).toNat) (A244072 (3 * n + 5))

end

end A274193.P629757234117567680

/-! ## A274193.P8152740745987814771

`floor(sqrt(A119269(n+1)+1))%A178328(n+1)`
-/

namespace A274193.P8152740745987814771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A119269 (n + 1) + 1)) (A178328 (n + 1))

end

end A274193.P8152740745987814771

/-!
# A274194: Row sums of the array A274193, defined by g(n,k) = 1 for n >= 0; g(n,k) = 0 if k > n; g(n,k) = g(n-1,k-1) + g(n-1,3k) for n > 0, k > 1.

The programs for A274194, there is no canonical definition to state claims against.
-/

/-! ## A274194.P10835734076613047380

`∑[A274143(n)]`
-/

namespace A274194.P10835734076613047380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274194.P10835734076613047380

/-! ## A274194.P4487017660707046944

`A274143(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A274194.P4487017660707046944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274143 (n % n ^ 2) + a (n - 1)

end

end A274194.P4487017660707046944

/-! ## A274194.P2993160198559448985

`A274143(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A274194.P2993160198559448985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274143 n + a (A023443 n).toNat

end

end A274194.P2993160198559448985

/-! ## A274194.P13317734008413464058

`A274143(n)+a(n-1)%A000069(a(n-1)+1)` with `a(0)=1`
-/

namespace A274194.P13317734008413464058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274143 n + Int.tmod (a (n - 1)) (A000069 (a (n - 1) + 1).toNat)

end

end A274194.P13317734008413464058

/-! ## A274194.P11124046014967673403

`A002024(A102702(n)-1)`
-/

namespace A274194.P11124046014967673403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A102702 n - 1).toNat

end

end A274194.P11124046014967673403

/-!
# A274196: Triangular array read by rows: g(n,k) = 1 for n >= 0; g(n,k) = 0 if k > n; g(n,k) = g(n-1,k-1) + g(n-1,4k) for n > 0, k > 1.

The programs for A274196, there is no canonical definition to state claims against.
-/

/-! ## A274196.P3166004903541302375

`A055642(A140997(n)%A306186(n+1))`
-/

namespace A274196.P3166004903541302375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A140997 n) (A306186 (n + 1))).toNat

end

end A274196.P3166004903541302375

/-! ## A274196.P3342416549384574585

`A121041(A140996(n)%A337453(n+1))`
-/

namespace A274196.P3342416549384574585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (Int.tmod (A140996 n) (A337453 (n + 1))).toNat

end

end A274196.P3342416549384574585

/-! ## A274196.P13006374610781824881

`A055642(A140997(n)%A293441(n))`
-/

namespace A274196.P13006374610781824881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A140997 n) (A293441 n)).toNat

end

end A274196.P13006374610781824881

/-! ## A274196.P11897962570975343324

`gcd(A055642(A225640(n)), A290971(n+1))`
-/

namespace A274196.P11897962570975343324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A225640 n).toNat) (A290971 (n + 1))

end

end A274196.P11897962570975343324

/-! ## A274196.P4767319353454859856

`A030547(A140996(n))`
-/

namespace A274196.P4767319353454859856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (A140996 n).toNat

end

end A274196.P4767319353454859856

/-!
# A274197: Row sums of the array A274196, defined by g(n,k) = 1 for n >= 0; g(n,k) = 0 if k > n; g(n,k) = g(n-1,k-1) + g(n-1,4k) for n > 0, k > 1.

The programs for A274197, there is no canonical definition to state claims against.
-/

/-! ## A274197.P14477569730000878387

`∑[A175126(2*A274144(n))]`
-/

namespace A274197.P14477569730000878387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * A274144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274197.P14477569730000878387

/-! ## A274197.P3666254410524577056

`∑[A274144(n)%A196724(n+1)]`
-/

namespace A274197.P3666254410524577056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274144 n) (A196724 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274197.P3666254410524577056

/-! ## A274197.P15390824996378323921

`∑[A274144(n)]%A297893(n+1)`
-/

namespace A274197.P15390824996378323921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A297893 (n + 1))

end

end A274197.P15390824996378323921

/-! ## A274197.P4854549508516301161

`∑[A054429(A054429(A274144(n)))]`
-/

namespace A274197.P4854549508516301161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A054429 (A274144 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274197.P4854549508516301161

/-! ## A274197.P12212205154455843583

`∑[A103373(A103355(2*n+3)%A103405(n+2))]`
-/

namespace A274197.P12212205154455843583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (Int.tmod (A103355 (2 * n + 3)) (A103405 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274197.P12212205154455843583

/-!
# A274199: Limiting reverse row of the array A274190.

The programs for A274199, there is no canonical definition to state claims against.
-/

/-! ## A274199.P7431610113141890807

`A274190(∑[4*n])`
-/

namespace A274199.P7431610113141890807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274190 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274199.P7431610113141890807

/-! ## A274199.P10947427355475334114

`or(char[1], A274190(A046092(n)))`
-/

namespace A274199.P10947427355475334114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274190 (A046092 n).toNat)

end

end A274199.P10947427355475334114

/-! ## A274199.P16795572241427886116

`A274190(A046092(n))%A102702(n)`
-/

namespace A274199.P16795572241427886116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274190 (A046092 n).toNat) (A102702 n)

end

end A274199.P16795572241427886116

/-! ## A274199.P12907494818776948700

`A274190(A046092(n))/A007318(∑[n])`
-/

namespace A274199.P12907494818776948700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274190 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A274199.P12907494818776948700

/-! ## A274199.P5725423350978423675

`A274190(A046092(n))+A000007(n+1)`
-/

namespace A274199.P5725423350978423675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274190 (A046092 n).toNat + A000007 (n + 1)

end

end A274199.P5725423350978423675

