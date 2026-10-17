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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A172101: Triangle, read by rows, given by [0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, ...] DELTA [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, ...] where DELTA is the operator defined in A084938.

The programs for A172101, there is no canonical definition to state claims against.
-/

/-! ## A172101.P17481097080120340565

`A184955(A097805(n))+A053735(A090181(n))`
-/

namespace A172101.P17481097080120340565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A097805 n).toNat + A053735 (A090181 n).toNat

end

end A172101.P17481097080120340565

/-! ## A172101.P3467861112969288009

`A184955(A135225(n))+A053735(A090181(n))`
-/

namespace A172101.P3467861112969288009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A135225 n).toNat + A053735 (A090181 n).toNat

end

end A172101.P3467861112969288009

/-! ## A172101.P8330010015048936817

`A257564(A090181(n))`
-/

namespace A172101.P8330010015048936817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A090181 n).toNat

end

end A172101.P8330010015048936817

/-! ## A172101.P8373600919204679908

`A048766(A123125(n))%A338796(3*n+5)`
-/

namespace A172101.P8373600919204679908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048766 (A123125 n).toNat) (A338796 (3 * n + 5))

end

end A172101.P8373600919204679908

/-! ## A172101.P9353086082819681325

`A010876(A088990(n))`
-/

namespace A172101.P9353086082819681325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A088990 n).toNat

end

end A172101.P9353086082819681325

/-!
# A172102: Primes in A118482.

The programs for A172102, there is no canonical definition to state claims against.
-/

/-! ## A172102.P4503558000749397386

`p?[A118482(n)]`
-/

namespace A172102.P4503558000749397386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172102.P4503558000749397386

/-! ## A172102.P3035659555775039167

`p?[∑[A109611(n+1)]+1]`
-/

namespace A172102.P3035659555775039167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172102.P3035659555775039167

/-! ## A172102.P17470497093076441430

`p?[A109611(n)+a(n-1)]` with `a(0)=1`
-/

namespace A172102.P17470497093076441430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A109611 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172102.P17470497093076441430

/-! ## A172102.P18290079222992684936

`p?[a(n-1)+A139690(n+1)-2]` with `a(0)=3`
-/

namespace A172102.P18290079222992684936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (A139690 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172102.P18290079222992684936

/-! ## A172102.P7809415944942518146

`p?[∑[A109613(A109611(n+1))]]`
-/

namespace A172102.P7809415944942518146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A109611 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172102.P7809415944942518146

/-!
# A172103: Partial sums of A167020 where A167020(n)=1 iff 6*n-1 is prime.

The programs for A172103, the canonical program `A172103.P4958777154767503428` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172103 has offset 1).

The definition of A172103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172103.P4958777154767503428

`∑[C(C(2, ∑{e}[6*n+5, #]), 2)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172103

/-- `∑[C(C(2, ∑{e}[6*n+5, #]), 2)]` -/
def P4958777154767503428.Spec : Prop :=
  ∀ n, (P4958777154767503428.a n : ℤ) = A172103 (n + 1)

theorem P4958777154767503428.correct : P4958777154767503428.Spec := by
  intro n
  simp only [A172103, Nat.add_sub_cancel]

end A172103

/-! ## A172103.P966469564217846190

`A340767(n)-1`
-/

namespace A172103.P966469564217846190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340767 n - 1

end

end A172103.P966469564217846190

namespace A172103

/-- `A340767(n)-1` -/
def P966469564217846190.Spec : Prop :=
  ∀ n, P966469564217846190.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P15384148103080256112

`∑[A167020(n+1)]`
-/

namespace A172103.P15384148103080256112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P15384148103080256112

namespace A172103

/-- `∑[A167020(n+1)]` -/
def P15384148103080256112.Spec : Prop :=
  ∀ n, P15384148103080256112.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P17058752084865798964

`∑[A075743(Δ[n²])]`
-/

namespace A172103.P17058752084865798964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P17058752084865798964

namespace A172103

/-- `∑[A075743(Δ[n²])]` -/
def P17058752084865798964.Spec : Prop :=
  ∀ n, P17058752084865798964.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P12067313463554516315

`∑[char[A059325(n+1)]]`
-/

namespace A172103.P12067313463554516315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P12067313463554516315

namespace A172103

/-- `∑[char[A059325(n+1)]]` -/
def P12067313463554516315.Spec : Prop :=
  ∀ n, (P12067313463554516315.a n : ℤ) = A172103 (n + 1)

end A172103

/-! ## A172103.P8709531172728946470

`∑[abs(A156706(Δ[n²]))]`
-/

namespace A172103.P8709531172728946470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156706 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P8709531172728946470

namespace A172103

/-- `∑[abs(A156706(Δ[n²]))]` -/
def P8709531172728946470.Spec : Prop :=
  ∀ n, P8709531172728946470.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P6264211849570220295

`∑[A101264(3*n+2)]`
-/

namespace A172103.P6264211849570220295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P6264211849570220295

namespace A172103

/-- `∑[A101264(3*n+2)]` -/
def P6264211849570220295.Spec : Prop :=
  ∀ n, P6264211849570220295.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P10974391668470378837

`∑[A010051(6*n+5)]`
-/

namespace A172103.P10974391668470378837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P10974391668470378837

namespace A172103

/-- `∑[A010051(6*n+5)]` -/
def P10974391668470378837.Spec : Prop :=
  ∀ n, P10974391668470378837.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P6558923533442531715

`∑[-A156706(2*n+1)]`
-/

namespace A172103.P6558923533442531715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156706 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P6558923533442531715

namespace A172103

/-- `∑[-A156706(2*n+1)]` -/
def P6558923533442531715.Spec : Prop :=
  ∀ n, P6558923533442531715.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P15277969140040721177

`∑[A156706(n+1+n)²]`
-/

namespace A172103.P15277969140040721177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P15277969140040721177

namespace A172103

/-- `∑[A156706(n+1+n)²]` -/
def P15277969140040721177.Spec : Prop :=
  ∀ n, P15277969140040721177.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P14125484349214172086

`A323011(n+1)+A172104(n+1)`
-/

namespace A172103.P14125484349214172086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323011 (n + 1) + A172104 (n + 1)

end

end A172103.P14125484349214172086

namespace A172103

/-- `A323011(n+1)+A172104(n+1)` -/
def P14125484349214172086.Spec : Prop :=
  ∀ n, P14125484349214172086.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P8396192758582059893

`∑[A106549(3*(n+1))²]`
-/

namespace A172103.P8396192758582059893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106549 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P8396192758582059893

namespace A172103

/-- `∑[A106549(3*(n+1))²]` -/
def P8396192758582059893.Spec : Prop :=
  ∀ n, P8396192758582059893.a n = A172103 (n + 1)

end A172103

/-! ## A172103.P10654664194921066955

`∑[A296028(4*(n+1))]`
-/

namespace A172103.P10654664194921066955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296028 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172103.P10654664194921066955

namespace A172103

/-- `∑[A296028(4*(n+1))]` -/
def P10654664194921066955.Spec : Prop :=
  ∀ n, P10654664194921066955.a n = A172103 (n + 1)

end A172103

/-!
# A172104: Partial sums of A167021 where A167021(n)=1 iff 6*n+1 is prime.

The programs for A172104, the canonical program `A172104.P14938239825212054674` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172104 has offset 1).

The definition of A172104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172104.P15780084944900059028

`∑[char[eq[1, ∑{e}[6*n+7, #]]]]`
-/

namespace A172104.P15780084944900059028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 7

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P15780084944900059028

namespace A172104

/-- `∑[char[eq[1, ∑{e}[6*n+7, #]]]]` -/
def P15780084944900059028.Spec : Prop :=
  ∀ n, (P15780084944900059028.a n : ℤ) = A172104 (n + 1)

end A172104

/-! ## A172104.P14938239825212054674

`∑[C(2, ∏{e}[5*n+n+7, #+1])]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172104

/-- `∑[C(2, ∏{e}[5*n+n+7, #+1])]` -/
def P14938239825212054674.Spec : Prop :=
  ∀ n, (P14938239825212054674.a n : ℤ) = A172104 (n + 1)

theorem P14938239825212054674.correct : P14938239825212054674.Spec := by
  intro n
  simp only [A172104, Nat.add_sub_cancel]

end A172104

/-! ## A172104.P12872400923327704493

`∑[A167021(n+1)]`
-/

namespace A172104.P12872400923327704493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P12872400923327704493

namespace A172104

/-- `∑[A167021(n+1)]` -/
def P12872400923327704493.Spec : Prop :=
  ∀ n, P12872400923327704493.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P5323198142074715

`∑[char[A153218(n+1)]]`
-/

namespace A172104.P5323198142074715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P5323198142074715

namespace A172104

/-- `∑[char[A153218(n+1)]]` -/
def P5323198142074715.Spec : Prop :=
  ∀ n, (P5323198142074715.a n : ℤ) = A172104 (n + 1)

end A172104

/-! ## A172104.P10547607961477380464

`∑[A075743(2*(n+1))]`
-/

namespace A172104.P10547607961477380464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P10547607961477380464

namespace A172104

/-- `∑[A075743(2*(n+1))]` -/
def P10547607961477380464.Spec : Prop :=
  ∀ n, P10547607961477380464.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P15021744151161143296

`∑[A156706(2*(n+1))]`
-/

namespace A172104.P15021744151161143296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P15021744151161143296

namespace A172104

/-- `∑[A156706(2*(n+1))]` -/
def P15021744151161143296.Spec : Prop :=
  ∀ n, P15021744151161143296.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P13459101860530654694

`∑[A101264(3*(n+1))]`
-/

namespace A172104.P13459101860530654694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P13459101860530654694

namespace A172104

/-- `∑[A101264(3*(n+1))]` -/
def P13459101860530654694.Spec : Prop :=
  ∀ n, P13459101860530654694.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P12020679116734274576

`∑[A156707(3*(n+1))²]`
-/

namespace A172104.P12020679116734274576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P12020679116734274576

namespace A172104

/-- `∑[A156707(3*(n+1))²]` -/
def P12020679116734274576.Spec : Prop :=
  ∀ n, P12020679116734274576.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P17576593225933983725

`A172103(n+1)-A323011(n+1)`
-/

namespace A172104.P17576593225933983725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172103 (n + 1) - A323011 (n + 1)

end

end A172104.P17576593225933983725

namespace A172104

/-- `A172103(n+1)-A323011(n+1)` -/
def P17576593225933983725.Spec : Prop :=
  ∀ n, P17576593225933983725.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P5456779099006253706

`∑[A067849(3*(n+1))]`
-/

namespace A172104.P5456779099006253706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067849 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P5456779099006253706

namespace A172104

/-- `∑[A067849(3*(n+1))]` -/
def P5456779099006253706.Spec : Prop :=
  ∀ n, P5456779099006253706.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P3613341049364088894

`∑[A101808(3*(n+1))]`
-/

namespace A172104.P3613341049364088894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P3613341049364088894

namespace A172104

/-- `∑[A101808(3*(n+1))]` -/
def P3613341049364088894.Spec : Prop :=
  ∀ n, P3613341049364088894.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P15337013160647248480

`∑[A354499(3*(n+1))]`
-/

namespace A172104.P15337013160647248480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354499 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P15337013160647248480

namespace A172104

/-- `∑[A354499(3*(n+1))]` -/
def P15337013160647248480.Spec : Prop :=
  ∀ n, P15337013160647248480.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P8308783168293460206

`∑[A112448(3*(n+1))²]`
-/

namespace A172104.P8308783168293460206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112448 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172104.P8308783168293460206

namespace A172104

/-- `∑[A112448(3*(n+1))²]` -/
def P8308783168293460206.Spec : Prop :=
  ∀ n, P8308783168293460206.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P10357428553581041387

`A082650(Δ[3*(n+1)²])`
-/

namespace A172104.P10357428553581041387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082650 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A172104.P10357428553581041387

namespace A172104

/-- `A082650(Δ[3*(n+1)²])` -/
def P10357428553581041387.Spec : Prop :=
  ∀ n, P10357428553581041387.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P1388462673053408392

`A340763(A016921(n+1))`
-/

namespace A172104.P1388462673053408392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A016921 (n + 1)).toNat

end

end A172104.P1388462673053408392

namespace A172104

/-- `A340763(A016921(n+1))` -/
def P1388462673053408392.Spec : Prop :=
  ∀ n, P1388462673053408392.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P7673101911106204442

`A340763(A016933(n+1))`
-/

namespace A172104.P7673101911106204442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A016933 (n + 1)).toNat

end

end A172104.P7673101911106204442

namespace A172104

/-- `A340763(A016933(n+1))` -/
def P7673101911106204442.Spec : Prop :=
  ∀ n, P7673101911106204442.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P9051443101983099865

`A340763(A016957(n+1))`
-/

namespace A172104.P9051443101983099865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A016957 (n + 1)).toNat

end

end A172104.P9051443101983099865

namespace A172104

/-- `A340763(A016957(n+1))` -/
def P9051443101983099865.Spec : Prop :=
  ∀ n, P9051443101983099865.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P3158493747694872413

`A340763(A271114(n+1))`
-/

namespace A172104.P3158493747694872413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A271114 (n + 1)).toNat

end

end A172104.P3158493747694872413

namespace A172104

/-- `A340763(A271114(n+1))` -/
def P3158493747694872413.Spec : Prop :=
  ∀ n, P3158493747694872413.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P1843948077057310990

`A340763(A295821(n+1))`
-/

namespace A172104.P1843948077057310990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A295821 (n + 1)).toNat

end

end A172104.P1843948077057310990

namespace A172104

/-- `A340763(A295821(n+1))` -/
def P1843948077057310990.Spec : Prop :=
  ∀ n, P1843948077057310990.a n = A172104 (n + 1)

end A172104

/-! ## A172104.P7762680392490324880

`A340763(A304803(n+1))`
-/

namespace A172104.P7762680392490324880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A304803 (n + 1)).toNat

end

end A172104.P7762680392490324880

namespace A172104

/-- `A340763(A304803(n+1))` -/
def P7762680392490324880.Spec : Prop :=
  ∀ n, P7762680392490324880.a n = A172104 (n + 1)

end A172104

/-!
# A172105: Numbers k such that k-th partial sum of A167020 - k-th partial sum of A167021 = 0 (or A172103(k) - A172104(k) = 0).

The programs for A172105, there is no canonical definition to state claims against.
-/

/-! ## A172105.P17972128079427985584

`floor(A096449(n+2)/6)`
-/

namespace A172105.P17972128079427985584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096449 (n + 2) : ℚ) / 6⌋

end

end A172105.P17972128079427985584

/-! ## A172105.P16524974146555005973

`floor(A098044(n+2)/6)`
-/

namespace A172105.P16524974146555005973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098044 (n + 2) : ℚ) / 6⌋

end

end A172105.P16524974146555005973

/-! ## A172105.P11786789414982147133

`eq[0, A323011(n+1)]+1`
-/

namespace A172105.P11786789414982147133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A172105.P11786789414982147133

/-! ## A172105.P13012737262343542068

`record[A205696(n²+1+n)]`
-/

namespace A172105.P13012737262343542068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205696 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172105.P13012737262343542068

/-! ## A172105.P8783927911233655446

`eq[0, A156709(2*(n+1))]+1`
-/

namespace A172105.P8783927911233655446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156709 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A172105.P8783927911233655446

/-!
# A172106: The triangle T_2(n, m), where T_2(n, m) is the number of surjective multi-valued functions from {1, 1, 2, 3, ..., n-1} to {1, 2, 3, ..., m} by rows (n >= 1, 1 <= m <= n).

The programs for A172106, there is no canonical definition to state claims against.
-/

/-! ## A172106.P7799828707402051013

`floor((A131689(n+1)+A019538(n+1))/2)`
-/

namespace A172106.P7799828707402051013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131689 (n + 1) + A019538 (n + 1) : ℚ) / 2⌋

end

end A172106.P7799828707402051013

/-! ## A172106.P15813006373459099339

`A004526(A131689(n+1)+A019538(n+1))`
-/

namespace A172106.P15813006373459099339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131689 (n + 1) + A019538 (n + 1)).toNat

end

end A172106.P15813006373459099339

/-!
# A172109: a(n) is the number of ordered partitions of {1,1,2,3,...,n-1}.

The programs for A172109, there is no canonical definition to state claims against.
-/

/-! ## A172109.P1364884309698192770

`and(-2, A005649(n))`
-/

namespace A172109.P1364884309698192770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A005649 n)

end

end A172109.P1364884309698192770

/-! ## A172109.P2582287461729697009

`∑{d}[2*n, A327879(#)]`
-/

namespace A172109.P2582287461729697009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327879 d

end

end A172109.P2582287461729697009

/-! ## A172109.P14258235949116760638

`or(1, A327868(2*n))-1`
-/

namespace A172109.P14258235949116760638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A327868 (2 * n)) - 1

end

end A172109.P14258235949116760638

/-! ## A172109.P18108218760585023651

`A122101(A027379(n)+1)`
-/

namespace A172109.P18108218760585023651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (A027379 n + 1).toNat

end

end A172109.P18108218760585023651

/-! ## A172109.P12661401378055292038

`A005649(n)-A000007(n)`
-/

namespace A172109.P12661401378055292038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n - A000007 n

end

end A172109.P12661401378055292038

/-! ## A172109.P10521075056495028527

`A005649(n)%A036691(n)`
-/

namespace A172109.P10521075056495028527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005649 n) (A036691 n)

end

end A172109.P10521075056495028527

/-! ## A172109.P8251436461704845364

`A057428(n)²*A005649(n)`
-/

namespace A172109.P8251436461704845364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A005649 n

end

end A172109.P8251436461704845364

/-! ## A172109.P8265286210459500458

`A005649(n)-A244120(∑[n])`
-/

namespace A172109.P8265286210459500458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n - A244120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172109.P8265286210459500458

/-! ## A172109.P13932866931055435596

`Δ[A000670(n)]-A052876(n)`
-/

namespace A172109.P13932866931055435596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052876 n

end

end A172109.P13932866931055435596

/-! ## A172109.P1911925719978287484

`A000670(n+1)-A069321(n)`
-/

namespace A172109.P1911925719978287484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) - A069321 n

end

end A172109.P1911925719978287484

/-!
# A172110: a(n) is the number of ordered partitions of {1, 1, 1, 2, 3, ..., n-2}.

The programs for A172110, there is no canonical definition to state claims against.
-/

/-! ## A172110.P3495843289435792066

`A074206(A102476(n))%A132618(n)`
-/

namespace A172110.P3495843289435792066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074206 (A102476 n).toNat) (A132618 n)

end

end A172110.P3495843289435792066

/-! ## A172110.P9674639363184811220

`A074206(A102476(n)%A343331(n))`
-/

namespace A172110.P9674639363184811220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Int.tmod (A102476 n) (A343331 n)).toNat

end

end A172110.P9674639363184811220

/-! ## A172110.P18252751496818574000

`A074206(lcm(A004526(n), A102476(n)))`
-/

namespace A172110.P18252751496818574000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Int.lcm (A004526 n) (A102476 n))

end

end A172110.P18252751496818574000

/-!
# A172111: a(n) is the number of ordered partitions of {1, 1, 1, 1, 2, 3, ..., n-3}.

The programs for A172111, there is no canonical definition to state claims against.
-/

/-! ## A172111.P12338782388614462318

`and(-4, A052419(A191810(n)))`
-/

namespace A172111.P12338782388614462318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A052419 (A191810 n).toNat)

end

end A172111.P12338782388614462318

/-! ## A172111.P1849172834344631955

`A074206(A059204(n)*A212526(n+1))`
-/

namespace A172111.P1849172834344631955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A059204 n * A212526 (n + 1)).toNat

end

end A172111.P1849172834344631955

/-! ## A172111.P16009960412667718679

`A005843(and(A001489(n), A001506(n+1)))`
-/

namespace A172111.P16009960412667718679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.land (A001489 n) (A001506 (n + 1))).toNat

end

end A172111.P16009960412667718679

/-!
# A172112: Partial sums of A023200.

The programs for A172112, there is no canonical definition to state claims against.
-/

/-! ## A172112.P1863926316340656029

`∑[A015913(n+1)]`
-/

namespace A172112.P1863926316340656029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P1863926316340656029

/-! ## A172112.P12113599639476348215

`∑[A087679(n+1)-2]`
-/

namespace A172112.P12113599639476348215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P12113599639476348215

/-! ## A172112.P4654723591807029767

`∑[A046132(n+1)-4]`
-/

namespace A172112.P4654723591807029767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P4654723591807029767

/-! ## A172112.P7347585745126325809

`∑[A165986(n+1)/2]`
-/

namespace A172112.P7347585745126325809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P7347585745126325809

/-! ## A172112.P5240830554486228485

`A029710(n)+a(n-1)` with `a(0)=3`
-/

namespace A172112.P5240830554486228485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A029710 n + a (n - 1)

end

end A172112.P5240830554486228485

/-! ## A172112.P7091090482623800168

`∑[A172238(n+2)]`
-/

namespace A172112.P7091090482623800168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P7091090482623800168

/-! ## A172112.P13672680978501427744

`∑[p?[A056772(n+1)]]`
-/

namespace A172112.P13672680978501427744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P13672680978501427744

/-! ## A172112.P6837163796618117503

`∑[A094343(2*n+1)]`
-/

namespace A172112.P6837163796618117503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P6837163796618117503

/-! ## A172112.P954464703465210170

`∑[A072541(2*n+1)-1]`
-/

namespace A172112.P954464703465210170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P954464703465210170

/-! ## A172112.P6333047865541350921

`∑[p?[p?[2*n+1]-4]]`
-/

namespace A172112.P6333047865541350921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P6333047865541350921

/-! ## A172112.P3456358662676902133

`∑[p?[A172367(n+1)]]`
-/

namespace A172112.P3456358662676902133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P3456358662676902133

/-! ## A172112.P2550990280316451786

`∑[p?[A086304(n+1)+2]]`
-/

namespace A172112.P2550990280316451786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P2550990280316451786

/-! ## A172112.P15380526813326657932

`∑[p?[A118538(n+1)+2]]`
-/

namespace A172112.P15380526813326657932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P15380526813326657932

/-! ## A172112.P15203343987823533532

`∑[p?[A040976(n+1)-2]]`
-/

namespace A172112.P15203343987823533532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P15203343987823533532

/-! ## A172112.P9313613476711628376

`∑[p?[A000040(n+1)-4]]`
-/

namespace A172112.P9313613476711628376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P9313613476711628376

/-! ## A172112.P7793074116871530362

`∑[p?[∑[A001223(n+1)]-2]]`
-/

namespace A172112.P7793074116871530362
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P7793074116871530362

/-! ## A172112.P13658589599589627189

`∑[record[A006530(A000040(n+4)-4)]]`
-/

namespace A172112.P13658589599589627189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 4) - 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P13658589599589627189

/-! ## A172112.P9373910482400511458

`∑[record[A020639(A000040(n+4)-4)]]`
-/

namespace A172112.P9373910482400511458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 4) - 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P9373910482400511458

/-! ## A172112.P15635948042222347418

`∑[p?[A282354(n+1)]]`
-/

namespace A172112.P15635948042222347418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P15635948042222347418

/-! ## A172112.P5230513395822888519

`∑[A006530(A165986(n+1))]`
-/

namespace A172112.P5230513395822888519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A165986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172112.P5230513395822888519

/-!
# A172113: Partial sums of the generalized Cuban primes A007645.

The programs for A172113, the canonical program `A172113.P7388546787936950256` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172113 has offset 1).

The definition of A172113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172113.P7388546787936950256

`∑[p?[or(1, 3*n)]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172113

/-- `∑[p?[or(1, 3*n)]]` -/
def P7388546787936950256.Spec : Prop :=
  ∀ n, (P7388546787936950256.a n : ℤ) = A172113 (n + 1)

theorem P7388546787936950256.correct : P7388546787936950256.Spec := by
  intro n
  simp only [A172113, Nat.add_sub_cancel]

end A172113

/-! ## A172113.P15205017840859112527

`∑[p?[xor(1, 3*n)]]+1`
-/

namespace A172113.P15205017840859112527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172113.P15205017840859112527

namespace A172113

/-- `∑[p?[xor(1, 3*n)]]+1` -/
def P15205017840859112527.Spec : Prop :=
  ∀ n, (P15205017840859112527.a n : ℤ) = A172113 (n + 1)

end A172113

/-! ## A172113.P16946859651661240529

`∑[p?[a(n-1)+3]]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A172113.P16946859651661240529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P16946859651661240529

namespace A172113

/-- `∑[p?[a(n-1)+3]]` -/
def P16946859651661240529.Spec : Prop :=
  ∀ n, (P16946859651661240529.a n : ℤ) = A172113 (n + 1)

end A172113

/-! ## A172113.P848355519770505258

`∑[A007645(n+1)]`
-/

namespace A172113.P848355519770505258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P848355519770505258

namespace A172113

/-- `∑[A007645(n+1)]` -/
def P848355519770505258.Spec : Prop :=
  ∀ n, P848355519770505258.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P12851392511763946578

`∑[A045375(n+1)]+1`
-/

namespace A172113.P12851392511763946578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172113.P12851392511763946578

namespace A172113

/-- `∑[A045375(n+1)]+1` -/
def P12851392511763946578.Spec : Prop :=
  ∀ n, P12851392511763946578.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P4383804327216783680

`∑[A123365(n+1)]+2`
-/

namespace A172113.P4383804327216783680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A172113.P4383804327216783680

namespace A172113

/-- `∑[A123365(n+1)]+2` -/
def P4383804327216783680.Spec : Prop :=
  ∀ n, P4383804327216783680.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P13281808552868495864

`A002476(n)+a(n-1)` with `a(0)=3`
-/

namespace A172113.P13281808552868495864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002476 n + a (n - 1)

end

end A172113.P13281808552868495864

namespace A172113

/-- `A002476(n)+a(n-1)` -/
def P13281808552868495864.Spec : Prop :=
  ∀ n, P13281808552868495864.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P3810499307709951259

`A172235(n+1)+A172188(n+1)`
-/

namespace A172113.P3810499307709951259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172235 (n + 1) + A172188 (n + 1)

end

end A172113.P3810499307709951259

namespace A172113

/-- `A172235(n+1)+A172188(n+1)` -/
def P3810499307709951259.Spec : Prop :=
  ∀ n, P3810499307709951259.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P9959865668651522604

`∑[A045331(n+2)]`
-/

namespace A172113.P9959865668651522604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P9959865668651522604

namespace A172113

/-- `∑[A045331(n+2)]` -/
def P9959865668651522604.Spec : Prop :=
  ∀ n, P9959865668651522604.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P4436942660874715701

`∑[p?[A055664(n+1)]]`
-/

namespace A172113.P4436942660874715701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P4436942660874715701

namespace A172113

/-- `∑[p?[A055664(n+1)]]` -/
def P4436942660874715701.Spec : Prop :=
  ∀ n, P4436942660874715701.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P6413113332803379493

`∑[p?[floor(3*n/2)]]`
-/

namespace A172113.P6413113332803379493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P6413113332803379493

namespace A172113

/-- `∑[p?[floor(3*n/2)]]` -/
def P6413113332803379493.Spec : Prop :=
  ∀ n, P6413113332803379493.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P3593726853770074459

`∑[A000040(A171820(n+1))]`
-/

namespace A172113.P3593726853770074459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A171820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P3593726853770074459

namespace A172113

/-- `∑[A000040(A171820(n+1))]` -/
def P3593726853770074459.Spec : Prop :=
  ∀ n, P3593726853770074459.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P11519178077302564111

`∑[p?[A271114(n)]]+1`
-/

namespace A172113.P11519178077302564111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172113.P11519178077302564111

namespace A172113

/-- `∑[p?[A271114(n)]]+1` -/
def P11519178077302564111.Spec : Prop :=
  ∀ n, P11519178077302564111.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P16982915478953129857

`∑[A024614(A024618(n+1))]`
-/

namespace A172113.P16982915478953129857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (A024618 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P16982915478953129857

namespace A172113

/-- `∑[A024614(A024618(n+1))]` -/
def P16982915478953129857.Spec : Prop :=
  ∀ n, P16982915478953129857.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P15920878503267806466

`∑[A003136(A024679(n+1))]`
-/

namespace A172113.P15920878503267806466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A024679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P15920878503267806466

namespace A172113

/-- `∑[A003136(A024679(n+1))]` -/
def P15920878503267806466.Spec : Prop :=
  ∀ n, P15920878503267806466.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P11284635803679525131

`∑[record[A051544(n+1)]]-1`
-/

namespace A172113.P11284635803679525131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051544 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A172113.P11284635803679525131

namespace A172113

/-- `∑[record[A051544(n+1)]]-1` -/
def P11284635803679525131.Spec : Prop :=
  ∀ n, P11284635803679525131.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P15072502372952528665

`∑[A090368(A177965(n+1))]+2`
-/

namespace A172113.P15072502372952528665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A177965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A172113.P15072502372952528665

namespace A172113

/-- `∑[A090368(A177965(n+1))]+2` -/
def P15072502372952528665.Spec : Prop :=
  ∀ n, P15072502372952528665.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P12236983036824413967

`∑[p?[A100050(n)]]+1`
-/

namespace A172113.P12236983036824413967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172113.P12236983036824413967

namespace A172113

/-- `∑[p?[A100050(n)]]+1` -/
def P12236983036824413967.Spec : Prop :=
  ∀ n, P12236983036824413967.a n = A172113 (n + 1)

end A172113

/-! ## A172113.P10044381984635114848

`∑[A373751(∑[n+2])]`
-/

namespace A172113.P10044381984635114848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373751 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172113.P10044381984635114848

namespace A172113

/-- `∑[A373751(∑[n+2])]` -/
def P10044381984635114848.Spec : Prop :=
  ∀ n, P10044381984635114848.a n = A172113 (n + 1)

end A172113

/-!
# A172114: Partial sums of factorial primes A088054.

The programs for A172114, there is no canonical definition to state claims against.
-/

/-! ## A172114.P9195409213795526420

`∑[A088054(n+1)]`
-/

namespace A172114.P9195409213795526420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172114.P9195409213795526420

/-! ## A172114.P8212343180656039329

`∑[record[A088054(A065648(n))]]`
-/

namespace A172114.P8212343180656039329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088054 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172114.P8212343180656039329

/-! ## A172114.P15979208613875471721

`∑[record[A088054(A158416(n))]]`
-/

namespace A172114.P15979208613875471721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088054 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172114.P15979208613875471721

/-! ## A172114.P4294906930769078147

`∑[record[A088054(A257213(n))]]`
-/

namespace A172114.P4294906930769078147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088054 (A257213 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172114.P4294906930769078147

/-! ## A172114.P10577030263833404134

`∑[record[A088054(A263111(n))]]`
-/

namespace A172114.P10577030263833404134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088054 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172114.P10577030263833404134

/-!
# A172115: Partial sums of A001605.

The programs for A172115, there is no canonical definition to state claims against.
-/

/-! ## A172115.P17354399983968445563

`∑[A001605(n+1)]`
-/

namespace A172115.P17354399983968445563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172115.P17354399983968445563

/-! ## A172115.P2768353267537763585

`A001605(Δ[n²]-n)+a(n-1)` with `a(0)=3`
-/

namespace A172115.P2768353267537763585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A172115.P2768353267537763585

/-! ## A172115.P9440506531798661901

`∑[record[A001605(A065648(n))]]`
-/

namespace A172115.P9440506531798661901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172115.P9440506531798661901

/-! ## A172115.P14409528806623856504

`∑[record[A001605(A126759(n))]]`
-/

namespace A172115.P14409528806623856504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172115.P14409528806623856504

/-! ## A172115.P14391979219059933238

`∑[record[A001605(A152271(n))]]`
-/

namespace A172115.P14391979219059933238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172115.P14391979219059933238

/-! ## A172115.P13485231536100675204

`∑[record[A001605(A344180(n))]]`
-/

namespace A172115.P13485231536100675204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172115.P13485231536100675204

/-! ## A172115.P11048010748868559089

`∑[(A000041(n)%2)!*A001605(Δ[n²]-n)]`
-/

namespace A172115.P11048010748868559089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A001605 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172115.P11048010748868559089

/-! ## A172115.P3729995121174632372

`a(n-1)+A001605(n+1)+A008683(12*n+8)` with `a(0)=3`
-/

namespace A172115.P3729995121174632372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A001605 (n + 1) + A008683 (12 * n + 8))

end

end A172115.P3729995121174632372

/-! ## A172115.P17456129621585652926

`∑[A069744(n+1)+1]`
-/

namespace A172115.P17456129621585652926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172115.P17456129621585652926

/-! ## A172115.P2660429494099938089

`A083668(n)+a(n-1)` with `a(0)=3, a(1)=7`
-/

namespace A172115.P2660429494099938089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  A083668 n + a (n - 1)

end

end A172115.P2660429494099938089

/-!
# A172117: a(n) = n*(n+1)*(20*n-17)/6.

The programs for A172117, the canonical program `A172117.P16262170176713103452` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172117 has offset 0).

The definition of A172117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172117.P14226527654962642869

`n*(n+1)*(20*n-17)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172117.P14226527654962642869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((20 * n : ℤ) - 17 : ℚ) / 6))

end

end A172117.P14226527654962642869

namespace A172117

/-- `n*(n+1)*(20*n-17)/6` -/
def P14226527654962642869.Spec : Prop :=
  ∀ n, P14226527654962642869.a n = (A172117 n : ℚ)

end A172117

/-! ## A172117.P16262170176713103452

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=23, a(3)=86`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172117

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16262170176713103452.Spec : Prop :=
  ∀ n, P16262170176713103452.a n = A172117 n

theorem P16262170176713103452.correct : P16262170176713103452.Spec := by
  intro n
  simp only [A172117]

end A172117

/-! ## A172117.P16277698988668552923

`∑[∑[a(n-1)+20]]` with `a(0)=0, a(1)=1`
-/

namespace A172117.P16277698988668552923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172117.P16277698988668552923

namespace A172117

/-- `∑[∑[a(n-1)+20]]` -/
def P16277698988668552923.Spec : Prop :=
  ∀ n, (P16277698988668552923.a n : ℤ) = A172117 n

end A172117

/-! ## A172117.P1386003658205448812

`∑[A051874(n)]`
-/

namespace A172117.P1386003658205448812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172117.P1386003658205448812

namespace A172117

/-- `∑[A051874(n)]` -/
def P1386003658205448812.Spec : Prop :=
  ∀ n, P1386003658205448812.a n = A172117 n

end A172117

/-! ## A172117.P9596159362329021049

`∑[A152965(n)-n]`
-/

namespace A172117.P9596159362329021049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172117.P9596159362329021049

namespace A172117

/-- `∑[A152965(n)-n]` -/
def P9596159362329021049.Spec : Prop :=
  ∀ n, P9596159362329021049.a n = A172117 n

end A172117

/-! ## A172117.P15765685083154237257

`∑[A152997(n)-n²]`
-/

namespace A172117.P15765685083154237257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172117.P15765685083154237257

namespace A172117

/-- `∑[A152997(n)-n²]` -/
def P15765685083154237257.Spec : Prop :=
  ∀ n, P15765685083154237257.a n = A172117 n

end A172117

/-! ## A172117.P7216228538832442856

`2*A007587(n)-∑[n]`
-/

namespace A172117.P7216228538832442856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007587 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172117.P7216228538832442856

namespace A172117

/-- `2*A007587(n)-∑[n]` -/
def P7216228538832442856.Spec : Prop :=
  ∀ n, P7216228538832442856.a n = A172117 n

end A172117

/-! ## A172117.P12740320004817519038

`∑[A158186(n)]-(n+1)²`
-/

namespace A172117.P12740320004817519038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A172117.P12740320004817519038

namespace A172117

/-- `∑[A158186(n)]-(n+1)²` -/
def P12740320004817519038.Spec : Prop :=
  ∀ n, P12740320004817519038.a n = A172117 n

end A172117

/-! ## A172117.P12971068729439634807

`A237617(n)+A135503(n)`
-/

namespace A172117.P12971068729439634807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237617 n + A135503 n

end

end A172117.P12971068729439634807

namespace A172117

/-- `A237617(n)+A135503(n)` -/
def P12971068729439634807.Spec : Prop :=
  ∀ n, P12971068729439634807.a n = A172117 n

end A172117

/-! ## A172117.P13826739366570820649

`A005902(n)-A081268(n)`
-/

namespace A172117.P13826739366570820649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n - A081268 n

end

end A172117.P13826739366570820649

namespace A172117

/-- `A005902(n)-A081268(n)` -/
def P13826739366570820649.Spec : Prop :=
  ∀ n, P13826739366570820649.a n = A172117 n

end A172117

/-! ## A172117.P12599842077681254504

`A256645(n)-A135503(n)`
-/

namespace A172117.P12599842077681254504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256645 n - A135503 n

end

end A172117.P12599842077681254504

namespace A172117

/-- `A256645(n)-A135503(n)` -/
def P12599842077681254504.Spec : Prop :=
  ∀ n, P12599842077681254504.a n = A172117 n

end A172117

/-! ## A172117.P12268037708375219713

`A035005(n+1)-A152740(n)`
-/

namespace A172117.P12268037708375219713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) - A152740 n

end

end A172117.P12268037708375219713

namespace A172117

/-- `A035005(n+1)-A152740(n)` -/
def P12268037708375219713.Spec : Prop :=
  ∀ n, P12268037708375219713.a n = A172117 n

end A172117

/-! ## A172117.P1705397460652493806

`A172076(n)+2*A135503(n)`
-/

namespace A172117.P1705397460652493806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n + 2 * A135503 n

end

end A172117.P1705397460652493806

namespace A172117

/-- `A172076(n)+2*A135503(n)` -/
def P1705397460652493806.Spec : Prop :=
  ∀ n, P1705397460652493806.a n = A172117 n

end A172117

/-! ## A172117.P16273941429048988829

`2*A050441(n)-A000330(n)`
-/

namespace A172117.P16273941429048988829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050441 n - A000330 n

end

end A172117.P16273941429048988829

namespace A172117

/-- `2*A050441(n)-A000330(n)` -/
def P16273941429048988829.Spec : Prop :=
  ∀ n, P16273941429048988829.a n = A172117 n

end A172117

/-! ## A172117.P10600869598680027756

`2*A172076(n)-A007585(n)`
-/

namespace A172117.P10600869598680027756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172076 n - A007585 n

end

end A172117.P10600869598680027756

namespace A172117

/-- `2*A172076(n)-A007585(n)` -/
def P10600869598680027756.Spec : Prop :=
  ∀ n, P10600869598680027756.a n = A172117 n

end A172117

/-! ## A172117.P13112328713683150992

`2*A237616(n)-A007587(n)`
-/

namespace A172117.P13112328713683150992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A007587 n

end

end A172117.P13112328713683150992

namespace A172117

/-- `2*A237616(n)-A007587(n)` -/
def P13112328713683150992.Spec : Prop :=
  ∀ n, P13112328713683150992.a n = A172117 n

end A172117

/-! ## A172117.P16218569494615888702

`A256648(n)-2*A135503(n)`
-/

namespace A172117.P16218569494615888702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256648 n - 2 * A135503 n

end

end A172117.P16218569494615888702

namespace A172117

/-- `A256648(n)-2*A135503(n)` -/
def P16218569494615888702.Spec : Prop :=
  ∀ n, P16218569494615888702.a n = A172117 n

end A172117

/-! ## A172117.P9040681515973433555

`2*A237618(n)-A172082(n)`
-/

namespace A172117.P9040681515973433555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237618 n - A172082 n

end

end A172117.P9040681515973433555

namespace A172117

/-- `2*A237618(n)-A172082(n)` -/
def P9040681515973433555.Spec : Prop :=
  ∀ n, P9040681515973433555.a n = A172117 n

end A172117

/-! ## A172117.P13501758396702040077

`A007587(n)+A256718(n)-A050441(n)`
-/

namespace A172117.P13501758396702040077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007587 n + (A256718 n - A050441 n)

end

end A172117.P13501758396702040077

namespace A172117

/-- `A007587(n)+A256718(n)-A050441(n)` -/
def P13501758396702040077.Spec : Prop :=
  ∀ n, P13501758396702040077.a n = A172117 n

end A172117

/-! ## A172117.P6067516388262040488

`A172076(n)+A256718(n)-A237616(n)`
-/

namespace A172117.P6067516388262040488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n + (A256718 n - A237616 n)

end

end A172117.P6067516388262040488

namespace A172117

/-- `A172076(n)+A256718(n)-A237616(n)` -/
def P6067516388262040488.Spec : Prop :=
  ∀ n, P6067516388262040488.a n = A172117 n

end A172117

/-!
# A172118: a(n) = n*(n+1)*(5*n^2 - n - 3)/2.

The programs for A172118, the canonical program `A172118.P17021993615267764347` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172118 has offset 0).

The definition of A172118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172118.P17021993615267764347

`∑[(10*n-9)*n²]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172118

/-- `∑[(10*n-9)*n²]` -/
def P17021993615267764347.Spec : Prop :=
  ∀ n, P17021993615267764347.a n = A172118 n

theorem P17021993615267764347.correct : P17021993615267764347.Spec := by
  intro n
  simp only [A172118]

end A172118

/-! ## A172118.P8259129517904548580

`2*A172047(n)-∑[n²]`
-/

namespace A172118.P8259129517904548580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172047 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172118.P8259129517904548580

namespace A172118

/-- `2*A172047(n)-∑[n²]` -/
def P8259129517904548580.Spec : Prop :=
  ∀ n, P8259129517904548580.a n = A172118 n

end A172118

/-! ## A172118.P7919700674380296750

`∑[2*n*A051874(n)]/2`
-/

namespace A172118.P7919700674380296750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A051874 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A172118.P7919700674380296750

namespace A172118

/-- `∑[2*n*A051874(n)]/2` -/
def P7919700674380296750.Spec : Prop :=
  ∀ n, P7919700674380296750.a n = (A172118 n : ℚ)

end A172118

/-! ## A172118.P13709905972549333611

`((n-1)*A016897(n)+1)*∑[n]`
-/

namespace A172118.P13709905972549333611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A016897 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172118.P13709905972549333611

namespace A172118

/-- `((n-1)*A016897(n)+1)*∑[n]` -/
def P13709905972549333611.Spec : Prop :=
  ∀ n, P13709905972549333611.a n = A172118 n

end A172118

/-! ## A172118.P2842213962434015612

`A172075(n)+A035291(n+1)`
-/

namespace A172118.P2842213962434015612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172075 n + A035291 (n + 1)

end

end A172118.P2842213962434015612

namespace A172118

/-- `A172075(n)+A035291(n+1)` -/
def P2842213962434015612.Spec : Prop :=
  ∀ n, P2842213962434015612.a n = A172118 n

end A172118

/-! ## A172118.P10917021936046344523

`A172080(n)+A036464(n+1)`
-/

namespace A172118.P10917021936046344523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172080 n + A036464 (n + 1)

end

end A172118.P10917021936046344523

namespace A172118

/-- `A172080(n)+A036464(n+1)` -/
def P10917021936046344523.Spec : Prop :=
  ∀ n, P10917021936046344523.a n = A172118 n

end A172118

/-! ## A172118.P13383710546628288598

`2*A172075(n)-A103220(n)`
-/

namespace A172118.P13383710546628288598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172075 n - A103220 n

end

end A172118.P13383710546628288598

namespace A172118

/-- `2*A172075(n)-A103220(n)` -/
def P13383710546628288598.Spec : Prop :=
  ∀ n, P13383710546628288598.a n = A172118 n

end A172118

/-! ## A172118.P8453914854559698888

`2*A172080(n)-A172075(n)`
-/

namespace A172118.P8453914854559698888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172080 n - A172075 n

end

end A172118.P8453914854559698888

namespace A172118

/-- `2*A172080(n)-A172075(n)` -/
def P8453914854559698888.Spec : Prop :=
  ∀ n, P8453914854559698888.a n = A172118 n

end A172118

/-! ## A172118.P18277640874118086012

`A103220(n)+2*A035291(n+1)`
-/

namespace A172118.P18277640874118086012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n + 2 * A035291 (n + 1)

end

end A172118.P18277640874118086012

namespace A172118

/-- `A103220(n)+2*A035291(n+1)` -/
def P18277640874118086012.Spec : Prop :=
  ∀ n, P18277640874118086012.a n = A172118 n

end A172118

/-! ## A172118.P16406659973690665233

`A172075(n)+2*A036464(n+1)`
-/

namespace A172118.P16406659973690665233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172075 n + 2 * A036464 (n + 1)

end

end A172118.P16406659973690665233

namespace A172118

/-- `A172075(n)+2*A036464(n+1)` -/
def P16406659973690665233.Spec : Prop :=
  ∀ n, P16406659973690665233.a n = A172118 n

end A172118

/-! ## A172118.P13127186915235394385

`A172085(n)+A036464(n+1)/2`
-/

namespace A172118.P13127186915235394385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172085 n : ℚ) + (A036464 (n + 1) : ℚ) / 2

end

end A172118.P13127186915235394385

namespace A172118

/-- `A172085(n)+A036464(n+1)/2` -/
def P13127186915235394385.Spec : Prop :=
  ∀ n, P13127186915235394385.a n = (A172118 n : ℚ)

end A172118

/-! ## A172118.P8223799210002421398

`A002411(n)*A008587(n)-A077414(n+1)`
-/

namespace A172118.P8223799210002421398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A008587 n - A077414 (n + 1)

end

end A172118.P8223799210002421398

namespace A172118

/-- `A002411(n)*A008587(n)-A077414(n+1)` -/
def P8223799210002421398.Spec : Prop :=
  ∀ n, P8223799210002421398.a n = A172118 n

end A172118

/-! ## A172118.P10785762629426869518

`A204185(2*n)/2-(n²+n)`
-/

namespace A172118.P10785762629426869518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204185 (2 * n) : ℚ) / 2 - (n ^ 2 + n : ℚ)

end

end A172118.P10785762629426869518

namespace A172118

/-- `A204185(2*n)/2-(n²+n)` -/
def P10785762629426869518.Spec : Prop :=
  ∀ n, P10785762629426869518.a n = (A172118 n : ℚ)

end A172118

/-! ## A172118.P4044775787768053665

`A158186(∑[n])-((n+1)*A000567(n)+1)`
-/

namespace A172118.P4044775787768053665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 (∑ j ∈ Finset.range (n + 1), f1 j) - ((n + 1 : ℤ) * A000567 n + 1)

end

end A172118.P4044775787768053665

namespace A172118

/-- `A158186(∑[n])-((n+1)*A000567(n)+1)` -/
def P4044775787768053665.Spec : Prop :=
  ∀ n, P4044775787768053665.a n = A172118 n

end A172118

/-!
# A172119: Sum the k preceding elements in the same column and add 1 every time.

The programs for A172119, there is no canonical definition to state claims against.
-/

/-! ## A172119.P18218429961994739058

`A063938(A052509(n)%A271269(n+4))`
-/

namespace A172119.P18218429961994739058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (Int.tmod (A052509 n) (A271269 (n + 4))).toNat

end

end A172119.P18218429961994739058

/-! ## A172119.P7332888099066517826

`(A033621(A052509(n))%A038013(n+1))%(n+2)`
-/

namespace A172119.P7332888099066517826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A033621 (A052509 n).toNat) (A038013 (n + 1))) (n + 2 : ℤ)

end

end A172119.P7332888099066517826

/-! ## A172119.P8557116358459222229

`A033621(A052509(n))%A251546(A037276(n+1))`
-/

namespace A172119.P8557116358459222229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033621 (A052509 n).toNat) (A251546 (A037276 (n + 1)).toNat)

end

end A172119.P8557116358459222229

/-! ## A172119.P13035874480429432905

`A247397(A052509(n))`
-/

namespace A172119.P13035874480429432905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247397 (A052509 n).toNat

end

end A172119.P13035874480429432905

/-! ## A172119.P3213886900692866326

`A178858(A052509(n))%A225317(n+1)`
-/

namespace A172119.P3213886900692866326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178858 (A052509 n).toNat) (A225317 (n + 1))

end

end A172119.P3213886900692866326

/-!
# A172120: Numbers k for which maxima of the function log(k)/log(N(a, k-a, k)) occurs for two or more distinct values of a. (a < k-a, function N(a, k-a, k) is the squarefree kernel of a*(k-a)*k and gcd(a, k-a, k) = 1.)

The programs for A172120, there is no canonical definition to state claims against.
-/

/-! ## A172120.P17300662711299233119

`A338653(A207651(n))+A007916(2*n+5)`
-/

namespace A172120.P17300662711299233119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A207651 n).toNat + A007916 (2 * n + 5)

end

end A172120.P17300662711299233119

/-!
# A172121: Complement to A172120. Related to the ABC conjecture.

The programs for A172121, there is no canonical definition to state claims against.
-/

/-! ## A172121.P3561927831923530042

`comp[A172120(n+1)-2]+2`
-/

namespace A172121.P3561927831923530042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172120 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A172121.P3561927831923530042

/-! ## A172121.P6794916897789794459

`comp[∪[A172120(n+1), A172139(n+1)]]`
-/

namespace A172121.P6794916897789794459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172120 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172139 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A172121.P6794916897789794459

/-! ## A172121.P12121101688955824197

`comp[A225665(A020701(n+2))]+1`
-/

namespace A172121.P12121101688955824197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225665 (A020701 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A172121.P12121101688955824197

/-! ## A172121.P3126932335769399283

`comp[A066503(n+5)-A144197(2*(n+1))]+1`
-/

namespace A172121.P3126932335769399283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 5) - A144197 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A172121.P3126932335769399283

/-! ## A172121.P10612636529554207111

`lt[A339092(A111801(2*n+1)), A035363(3*n)]`
-/

namespace A172121.P10612636529554207111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339092 (A111801 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A172121.P10612636529554207111

/-!
# A172122: Primes p such that 7*p^2+7*p+1 is also prime.

The programs for A172122, there is no canonical definition to state claims against.
-/

/-! ## A172122.P9293339894025910907

`A239586(A046955(n+1))`
-/

namespace A172122.P9293339894025910907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239586 (A046955 (n + 1)).toNat

end

end A172122.P9293339894025910907

/-! ## A172122.P9964609086819792503

`p?[A130090(n+1)-A091267(n+1)]`
-/

namespace A172122.P9964609086819792503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130090 (n + 1) - A091267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172122.P9964609086819792503

/-!
# A172123: Number of ways to place 2 nonattacking bishops on an n X n board.

The programs for A172123, the canonical program `A172123.P6343047746183582590` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172123 has offset 1).

The definition of A172123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172123.P6343047746183582590

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=26, a(3)=92, a(4)=240`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172123

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6343047746183582590.Spec : Prop :=
  ∀ n, P6343047746183582590.a n = A172123 (n + 1)

theorem P6343047746183582590.correct : P6343047746183582590.Spec := by
  intro n
  simp only [A172123, Nat.add_sub_cancel]

end A172123

/-! ## A172123.P13913641188016398868

`∑[2*(∑[n]+n^3)]`
-/

namespace A172123.P13913641188016398868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j + n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172123.P13913641188016398868

namespace A172123

/-- `∑[2*(∑[n]+n^3)]` -/
def P13913641188016398868.Spec : Prop :=
  ∀ n, (P13913641188016398868.a n : ℤ) = A172123 (n + 1)

end A172123

/-! ## A172123.P5490791533458914876

`∑[(2*n)²]+C(n², 2)`
-/

namespace A172123.P5490791533458914876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n ^ 2) 2

end

end A172123.P5490791533458914876

namespace A172123

/-- `∑[(2*n)²]+C(n², 2)` -/
def P5490791533458914876.Spec : Prop :=
  ∀ n, (P5490791533458914876.a n : ℤ) = A172123 (n + 1)

end A172123

/-! ## A172123.P13307405355981758646

`∑[lcm(2*n+1, n²)]+∑[n]`
-/

namespace A172123.P13307405355981758646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A172123.P13307405355981758646

namespace A172123

/-- `∑[lcm(2*n+1, n²)]+∑[n]` -/
def P13307405355981758646.Spec : Prop :=
  ∀ n, (P13307405355981758646.a n : ℤ) = A172123 (n + 1)

end A172123

/-! ## A172123.P7992224772644253276

`floor(∑[n*∑[a(n-1)+4]])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A172123.P7992224772644253276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172123.P7992224772644253276

namespace A172123

/-- `floor(∑[n*∑[a(n-1)+4]])` -/
def P7992224772644253276.Spec : Prop :=
  ∀ n, (P7992224772644253276.a n : ℤ) = A172123 (n + 1)

end A172123

/-! ## A172123.P18277091331670279605

`∑[n*C(2*n+1, 2)]+∑[n]`
-/

namespace A172123.P18277091331670279605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A172123.P18277091331670279605

namespace A172123

/-- `∑[n*C(2*n+1, 2)]+∑[n]` -/
def P18277091331670279605.Spec : Prop :=
  ∀ n, (P18277091331670279605.a n : ℤ) = A172123 (n + 1)

end A172123

/-! ## A172123.P10934314085223288843

`(2*n+1)*n²+a(n-1)+n` with `a(0)=0`
-/

namespace A172123.P10934314085223288843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1) * n ^ 2 + (a (n - 1) + n)

end

end A172123.P10934314085223288843

namespace A172123

/-- `(2*n+1)*n²+a(n-1)+n` -/
def P10934314085223288843.Spec : Prop :=
  ∀ n, (P10934314085223288843.a n : ℤ) = A172123 (n + 1)

end A172123

/-! ## A172123.P11501643649500882296

`2*A176060(n)`
-/

namespace A172123.P11501643649500882296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176060 n

end

end A172123.P11501643649500882296

namespace A172123

/-- `2*A176060(n)` -/
def P11501643649500882296.Spec : Prop :=
  ∀ n, P11501643649500882296.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P9316142763654626683

`A035288(n+1)/2`
-/

namespace A172123.P9316142763654626683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035288 (n + 1) : ℚ) / 2

end

end A172123.P9316142763654626683

namespace A172123

/-- `A035288(n+1)/2` -/
def P9316142763654626683.Spec : Prop :=
  ∀ n, P9316142763654626683.a n = (A172123 (n + 1) : ℚ)

end A172123

/-! ## A172123.P8793283076986194376

`A110450(n)+∑[n²]`
-/

namespace A172123.P8793283076986194376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172123.P8793283076986194376

namespace A172123

/-- `A110450(n)+∑[n²]` -/
def P8793283076986194376.Spec : Prop :=
  ∀ n, P8793283076986194376.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P3293150882392050721

`A152457(n)+∑[n]²`
-/

namespace A172123.P3293150882392050721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152457 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A172123.P3293150882392050721

namespace A172123

/-- `A152457(n)+∑[n]²` -/
def P3293150882392050721.Spec : Prop :=
  ∀ n, P3293150882392050721.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P1294134138947729827

`∑[A027444(n)]+∑[n]²`
-/

namespace A172123.P1294134138947729827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A172123.P1294134138947729827

namespace A172123

/-- `∑[A027444(n)]+∑[n]²` -/
def P1294134138947729827.Spec : Prop :=
  ∀ n, P1294134138947729827.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P7533189052638954981

`2*∑[∑[A000567(n)+1]-1]`
-/

namespace A172123.P7533189052638954981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172123.P7533189052638954981

namespace A172123

/-- `2*∑[∑[A000567(n)+1]-1]` -/
def P7533189052638954981.Spec : Prop :=
  ∀ n, P7533189052638954981.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P16358551794398986592

`a(n-1)+A099721(n)+n` with `a(0)=0`
-/

namespace A172123.P16358551794398986592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A099721 n + (n : ℤ))

end

end A172123.P16358551794398986592

namespace A172123

/-- `a(n-1)+A099721(n)+n` -/
def P16358551794398986592.Spec : Prop :=
  ∀ n, P16358551794398986592.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P12451083877646795365

`A103220(n)+A016061(n)`
-/

namespace A172123.P12451083877646795365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n + A016061 n

end

end A172123.P12451083877646795365

namespace A172123

/-- `A103220(n)+A016061(n)` -/
def P12451083877646795365.Spec : Prop :=
  ∀ n, P12451083877646795365.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P4452253625953820564

`A132124(n)+A027441(n)`
-/

namespace A172123.P4452253625953820564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + A027441 n

end

end A172123.P4452253625953820564

namespace A172123

/-- `A132124(n)+A027441(n)` -/
def P4452253625953820564.Spec : Prop :=
  ∀ n, P4452253625953820564.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P13143232459820002211

`A220212(n)+A006503(n)`
-/

namespace A172123.P13143232459820002211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 n + A006503 n

end

end A172123.P13143232459820002211

namespace A172123

/-- `A220212(n)+A006503(n)` -/
def P13143232459820002211.Spec : Prop :=
  ∀ n, P13143232459820002211.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P14289365925512362423

`A212560(n)+A059270(n)`
-/

namespace A172123.P14289365925512362423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n + A059270 n

end

end A172123.P14289365925512362423

namespace A172123

/-- `A212560(n)+A059270(n)` -/
def P14289365925512362423.Spec : Prop :=
  ∀ n, P14289365925512362423.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P2809657493210068251

`A215646(n)+A100855(n)`
-/

namespace A172123.P2809657493210068251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n + A100855 n

end

end A172123.P2809657493210068251

namespace A172123

/-- `A215646(n)+A100855(n)` -/
def P2809657493210068251.Spec : Prop :=
  ∀ n, P2809657493210068251.a n = A172123 (n + 1)

end A172123

/-! ## A172123.P4244821265099556914

`A289643(n)+A071239(n)`
-/

namespace A172123.P4244821265099556914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A071239 n

end

end A172123.P4244821265099556914

namespace A172123

/-- `A289643(n)+A071239(n)` -/
def P4244821265099556914.Spec : Prop :=
  ∀ n, P4244821265099556914.a n = A172123 (n + 1)

end A172123

/-!
# A172126: Terms of A181666 of the form 3*k+1.

The programs for A172126, there is no canonical definition to state claims against.
-/

/-! ## A172126.P17427557247389199589

`3*A172143(n+1)+1`
-/

namespace A172126.P17427557247389199589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A172143 (n + 1) + 1

end

end A172126.P17427557247389199589

/-! ## A172126.P16516728105325535296

`filter[A181666(n+1), A373977(#)]`
-/

namespace A172126.P16516728105325535296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A172126.P16516728105325535296

/-! ## A172126.P16120083322429538133

`A016777(A172143(n+1))`
-/

namespace A172126.P16120083322429538133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A172143 (n + 1)).toNat

end

end A172126.P16120083322429538133

/-! ## A172126.P16666604403011676939

`∩[A181666(n+1), A016777(n)]`
-/

namespace A172126.P16666604403011676939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172126.P16666604403011676939

/-! ## A172126.P2059935731432286

`∩[A055047(n+1), A181666(n+1)]`
-/

namespace A172126.P2059935731432286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172126.P2059935731432286

/-!
# A172127: Number of ways to place 4 nonattacking bishops on an n X n board.

The programs for A172127, there is no canonical definition to state claims against.
-/

/-! ## A172127.P15814982422716500875

`A005178(n)*A159786(A015889(n+1))`
-/

namespace A172127.P15814982422716500875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 n * A159786 (A015889 (n + 1)).toNat

end

end A172127.P15814982422716500875

/-!
# A172128: a(n) = floor(phi^n/n), where phi = golden ratio = (1+sqrt(5))/2.

The programs for A172128, the canonical program `A172128.P9847462736047019527` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172128 has offset 1).

The definition of A172128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172128.P12297636092357561304

`floor(ϕ^(n+1)/(n+1))`
-/

namespace A172128.P12297636092357561304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n + 1) / (n + 1 : ℝ)⌋

end

end A172128.P12297636092357561304

namespace A172128

/-- `floor(ϕ^(n+1)/(n+1))` -/
def P12297636092357561304.Spec : Prop :=
  ∀ n, P12297636092357561304.a n = A172128 (n + 1)

end A172128

/-! ## A172128.P9847462736047019527

`ceil(record[A000032(n)]/(n+1))-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A172128

/-- `ceil(record[A000032(n)]/(n+1))-1` -/
def P9847462736047019527.Spec : Prop :=
  ∀ n, P9847462736047019527.a n = A172128 (n + 1)

theorem P9847462736047019527.correct : P9847462736047019527.Spec := by
  intro n
  simp only [A172128, Nat.add_sub_cancel]

end A172128

/-! ## A172128.P118771298203762645

`floor(acot(n))+floor(A001610(n)/(n+1))`
-/

namespace A172128.P118771298203762645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ⌊(A001610 n : ℚ) / (n + 1 : ℚ)⌋

end

end A172128.P118771298203762645

namespace A172128

/-- `floor(acot(n))+floor(A001610(n)/(n+1))` -/
def P118771298203762645.Spec : Prop :=
  ∀ n, P118771298203762645.a n = A172128 (n + 1)

end A172128

/-! ## A172128.P4264053351250255934

`floor((A000032(n+1)+floor(acot(n)+n))/(n+1))-1`
-/

namespace A172128.P4264053351250255934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ : ℚ) / (n + 1 : ℚ)⌋ - 1

end

end A172128.P4264053351250255934

namespace A172128

/-- `floor((A000032(n+1)+floor(acot(n)+n))/(n+1))-1` -/
def P4264053351250255934.Spec : Prop :=
  ∀ n, P4264053351250255934.a n = A172128 (n + 1)

end A172128

/-! ## A172128.P8587378036666335230

`floor((A000032(n+1)+n)/(n+1))-A165476(n)²`
-/

namespace A172128.P8587378036666335230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋ - A165476 n ^ 2

end

end A172128.P8587378036666335230

namespace A172128

/-- `floor((A000032(n+1)+n)/(n+1))-A165476(n)²` -/
def P8587378036666335230.Spec : Prop :=
  ∀ n, P8587378036666335230.a n = A172128 (n + 1)

end A172128

/-!
# A172129: Number of ways to place 5 nonattacking bishops on an n X n board.

The programs for A172129, there is no canonical definition to state claims against.
-/

/-! ## A172129.P8737161631077590053

`A212051(or(2, A005315(n)))`
-/

namespace A172129.P8737161631077590053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212051 (Int.lor 2 (A005315 n)).toNat

end

end A172129.P8737161631077590053

/-!
# A172130: a(n) = the smallest k such that n(n+1)(n+2)...(n+k-1)-1 is a prime.

The programs for A172130, there is no canonical definition to state claims against.
-/

/-! ## A172130.P12633611723174958678

`A238505(n)-n`
-/

namespace A172130.P12633611723174958678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238505 n - (n : ℤ)

end

end A172130.P12633611723174958678

/-! ## A172130.P14007466720727708555

`abs(A238505(n)+A001489(n))`
-/

namespace A172130.P14007466720727708555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238505 n + A001489 n|

end

end A172130.P14007466720727708555

/-! ## A172130.P9774012454121065868

`A001478(n+1)+A238505(n)+1`
-/

namespace A172130.P9774012454121065868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A238505 n + 1)

end

end A172130.P9774012454121065868

/-! ## A172130.P14139081583933040351

`A001489(n+1)+A238505(n)+1`
-/

namespace A172130.P14139081583933040351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A238505 n + 1)

end

end A172130.P14139081583933040351

/-! ## A172130.P6603989652041684984

`A002260(A238505(n)+∑[n+5]+16)`
-/

namespace A172130.P6603989652041684984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A238505 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 16 : ℕ) : ℤ)).toNat

end

end A172130.P6603989652041684984

/-! ## A172130.P6789962497543006739

`A028310(A238505(n)+A001489(n))`
-/

namespace A172130.P6789962497543006739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A238505 n + A001489 n).toNat

end

end A172130.P6789962497543006739

/-! ## A172130.P1188845664225869407

`A020715(A238505(n))%A020715(n)`
-/

namespace A172130.P1188845664225869407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020715 (A238505 n).toNat) (A020715 n)

end

end A172130.P1188845664225869407

/-! ## A172130.P16191110435631294429

`-A001478(A238505(n)+A001489(n))`
-/

namespace A172130.P16191110435631294429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001478 (A238505 n + A001489 n).toNat

end

end A172130.P16191110435631294429

/-! ## A172130.P12914436766986618832

`A002262(A238505(n)+A167614(n+1))`
-/

namespace A172130.P12914436766986618832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A238505 n + A167614 (n + 1)).toNat

end

end A172130.P12914436766986618832

/-!
# A172131: Partial sums of floor(n^2/9) (A056838).

The programs for A172131, the canonical program `A172131.P2807754268907262714` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172131 has offset 0).

The definition of A172131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172131.P2807754268907262714

`round((2*n^3+3*n²-15*n-8)/54)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172131

/-- `round((2*n^3+3*n²-15*n-8)/54)` -/
def P2807754268907262714.Spec : Prop :=
  ∀ n, P2807754268907262714.a n = A172131 n

theorem P2807754268907262714.correct : P2807754268907262714.Spec := by
  intro n
  simp only [A172131]

end A172131

/-! ## A172131.P17940520886507633733

`a(n-9)+(n-4)²+4` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4, a(6)=8, a(7)=13, a(8)=20`
-/

namespace A172131.P17940520886507633733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 4, 8, 13, 20] fun n a =>
  a (n - 9) + ((n : ℤ) - 4) ^ 2 + 4

end

end A172131.P17940520886507633733

namespace A172131

/-- `a(n-9)+(n-4)²+4` -/
def P17940520886507633733.Spec : Prop :=
  ∀ n, P17940520886507633733.a n = A172131 n

end A172131

/-! ## A172131.P16257207274503266549

`floor(a(n-1)+(n/3)²)` with `a(0)=0`
-/

namespace A172131.P16257207274503266549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 3) ^ 2⌋

end

end A172131.P16257207274503266549

namespace A172131

/-- `floor(a(n-1)+(n/3)²)` -/
def P16257207274503266549.Spec : Prop :=
  ∀ n, P16257207274503266549.a n = A172131 n

end A172131

/-! ## A172131.P487091170978195885

`floor(floor(a(n-1))+(3/n)^(-2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A172131.P487091170978195885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (3 / (n : ℚ)) ^ (-2 : ℤ)⌋

end

end A172131.P487091170978195885

namespace A172131

/-- `floor(floor(a(n-1))+(3/n)^(-2))` -/
def P487091170978195885.Spec : Prop :=
  ∀ n, P487091170978195885.a n = A172131 n

end A172131

/-! ## A172131.P9164489375624463960

`a(n-1)+floor(n/3*n/3)` with `a(0)=0`
-/

namespace A172131.P9164489375624463960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / 3 * ((n : ℚ) / 3)⌋

end

end A172131.P9164489375624463960

namespace A172131

/-- `a(n-1)+floor(n/3*n/3)` -/
def P9164489375624463960.Spec : Prop :=
  ∀ n, P9164489375624463960.a n = A172131 n

end A172131

/-! ## A172131.P6266074539839156943

`∑[floor(n*n/9)]%(n^3-(n+1))`
-/

namespace A172131.P6266074539839156943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n : ℚ) / 9)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n ^ 3 : ℤ) - (n + 1 : ℤ))

end

end A172131.P6266074539839156943

namespace A172131

/-- `∑[floor(n*n/9)]%(n^3-(n+1))` -/
def P6266074539839156943.Spec : Prop :=
  ∀ n, P6266074539839156943.a n = A172131 n

end A172131

/-! ## A172131.P13693499323516322775

`∑[A056838(n)]`
-/

namespace A172131.P13693499323516322775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172131.P13693499323516322775

namespace A172131

/-- `∑[A056838(n)]` -/
def P13693499323516322775.Spec : Prop :=
  ∀ n, P13693499323516322775.a n = A172131 n

end A172131

/-! ## A172131.P3325324377449974431

`∑[A262397(2*n)]`
-/

namespace A172131.P3325324377449974431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172131.P3325324377449974431

namespace A172131

/-- `∑[A262397(2*n)]` -/
def P3325324377449974431.Spec : Prop :=
  ∀ n, P3325324377449974431.a n = A172131 n

end A172131

/-! ## A172131.P1615377404980158843

`∑[A008620(∑[A004523(n)])]-(n+1)`
-/

namespace A172131.P1615377404980158843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A172131.P1615377404980158843

namespace A172131

/-- `∑[A008620(∑[A004523(n)])]-(n+1)` -/
def P1615377404980158843.Spec : Prop :=
  ∀ n, P1615377404980158843.a n = A172131 n

end A172131

/-! ## A172131.P15373696454481611528

`∑[A343609(n²)]`
-/

namespace A172131.P15373696454481611528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172131.P15373696454481611528

namespace A172131

/-- `∑[A343609(n²)]` -/
def P15373696454481611528.Spec : Prop :=
  ∀ n, P15373696454481611528.a n = A172131 n

end A172131

/-!
# A172132: Number of ways to place 2 nonattacking knights on an n X n board.

The programs for A172132, the canonical program `A172132.P8243132994273783104` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172132 has offset 1).

The definition of A172132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172132.P8243132994273783104

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=28, a(3)=96, a(4)=252`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172132

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8243132994273783104.Spec : Prop :=
  ∀ n, P8243132994273783104.a n = A172132 (n + 1)

theorem P8243132994273783104.correct : P8243132994273783104.Spec := by
  intro n
  simp only [A172132, Nat.add_sub_cancel]

end A172132

/-! ## A172132.P8646031585889338228

`n*(n+5)*(C(n, 2)+1)`
-/

namespace A172132.P8646031585889338228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 5) * (Nat.choose n 2 + 1))

end

end A172132.P8646031585889338228

namespace A172132

/-- `n*(n+5)*(C(n, 2)+1)` -/
def P8646031585889338228.Spec : Prop :=
  ∀ n, (P8646031585889338228.a n : ℤ) = A172132 (n + 1)

end A172132

/-! ## A172132.P17974488278307767892

`n*(n+5)*∑[abs(1-n)]`
-/

namespace A172132.P17974488278307767892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172132.P17974488278307767892

namespace A172132

/-- `n*(n+5)*∑[abs(1-n)]` -/
def P17974488278307767892.Spec : Prop :=
  ∀ n, P17974488278307767892.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P8146216269204070947

`A035289(n+1)/2`
-/

namespace A172132.P8146216269204070947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035289 (n + 1) : ℚ) / 2

end

end A172132.P8146216269204070947

namespace A172132

/-- `A035289(n+1)/2` -/
def P8146216269204070947.Spec : Prop :=
  ∀ n, P8146216269204070947.a n = (A172132 (n + 1) : ℚ)

end A172132

/-! ## A172132.P3010335399566370741

`n*(n+5)*A000217(abs(1-n))+n*(n+5)`
-/

namespace A172132.P3010335399566370741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) : ℤ) * A000217 |1 - (n : ℤ)|.toNat + (n * (n + 5) : ℤ)

end

end A172132.P3010335399566370741

namespace A172132

/-- `n*(n+5)*A000217(abs(1-n))+n*(n+5)` -/
def P3010335399566370741.Spec : Prop :=
  ∀ n, P3010335399566370741.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P8546669205731634564

`A212134(n)+A155965(n)`
-/

namespace A172132.P8546669205731634564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + A155965 n

end

end A172132.P8546669205731634564

namespace A172132

/-- `A212134(n)+A155965(n)` -/
def P8546669205731634564.Spec : Prop :=
  ∀ n, P8546669205731634564.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P17265645379167841245

`A058310(n)-A080855(n)`
-/

namespace A172132.P17265645379167841245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058310 n - A080855 n

end

end A172132.P17265645379167841245

namespace A172132

/-- `A058310(n)-A080855(n)` -/
def P17265645379167841245.Spec : Prop :=
  ∀ n, P17265645379167841245.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P5708132219874316597

`A135916(n+1)+A056115(n)`
-/

namespace A172132.P5708132219874316597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135916 (n + 1) + A056115 n

end

end A172132.P5708132219874316597

namespace A172132

/-- `A135916(n+1)+A056115(n)` -/
def P5708132219874316597.Spec : Prop :=
  ∀ n, P5708132219874316597.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P9804543056432827683

`A172200(n+1)+A144945(n+1)`
-/

namespace A172132.P9804543056432827683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172200 (n + 1) + A144945 (n + 1)

end

end A172132.P9804543056432827683

namespace A172132

/-- `A172200(n+1)+A144945(n+1)` -/
def P9804543056432827683.Spec : Prop :=
  ∀ n, P9804543056432827683.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P2188632202348551284

`A289223(n+2)+A054000(n+1)`
-/

namespace A172132.P2188632202348551284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289223 (n + 2) + A054000 (n + 1)

end

end A172132.P2188632202348551284

namespace A172132

/-- `A289223(n+2)+A054000(n+1)` -/
def P2188632202348551284.Spec : Prop :=
  ∀ n, P2188632202348551284.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P3301079256766729901

`A083374(n+1)+n-A001107(n)`
-/

namespace A172132.P3301079256766729901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + ((n : ℤ) - A001107 n)

end

end A172132.P3301079256766729901

namespace A172132

/-- `A083374(n+1)+n-A001107(n)` -/
def P3301079256766729901.Spec : Prop :=
  ∀ n, P3301079256766729901.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P7396992562260647097

`A034856(n+1)*A386480(n)-A386480(n)`
-/

namespace A172132.P7396992562260647097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) * A386480 n - A386480 n

end

end A172132.P7396992562260647097

namespace A172132

/-- `A034856(n+1)*A386480(n)-A386480(n)` -/
def P7396992562260647097.Spec : Prop :=
  ∀ n, P7396992562260647097.a n = A172132 (n + 1)

end A172132

/-! ## A172132.P3715950599827250550

`n*A002411(n+1)-A067998(2*n)`
-/

namespace A172132.P3715950599827250550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002411 (n + 1) - A067998 (2 * n)

end

end A172132.P3715950599827250550

namespace A172132

/-- `n*A002411(n+1)-A067998(2*n)` -/
def P3715950599827250550.Spec : Prop :=
  ∀ n, P3715950599827250550.a n = A172132 (n + 1)

end A172132

/-!
# A172133: Smallest k such that n(n+1)(n+2)...(n+k-1)+1 is prime.

The programs for A172133, there is no canonical definition to state claims against.
-/

/-! ## A172133.P9559621145512390760

`A087565(n+1)+1`
-/

namespace A172133.P9559621145512390760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087565 (n + 1) + 1

end

end A172133.P9559621145512390760

/-! ## A172133.P15429519540910752668

`A231901(n)-n`
-/

namespace A172133.P15429519540910752668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231901 n - (n : ℤ)

end

end A172133.P15429519540910752668

/-! ## A172133.P7601957841523415292

`abs(A231901(n)+A001489(n))`
-/

namespace A172133.P7601957841523415292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A231901 n + A001489 n|

end

end A172133.P7601957841523415292

/-! ## A172133.P18364611556888223896

`abs(A231901(n)+A196199(n²))`
-/

namespace A172133.P18364611556888223896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A231901 n + A196199 (n ^ 2)|

end

end A172133.P18364611556888223896

/-! ## A172133.P4537885461777610744

`abs(A231901(n)+A001057(2*n))`
-/

namespace A172133.P4537885461777610744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A231901 n + A001057 (2 * n)|

end

end A172133.P4537885461777610744

/-! ## A172133.P18293074834987546468

`A001478(n+1)+A231901(n)+1`
-/

namespace A172133.P18293074834987546468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A231901 n + 1)

end

end A172133.P18293074834987546468

/-! ## A172133.P7102171529631780380

`A001489(n+4)+A231901(n)+4`
-/

namespace A172133.P7102171529631780380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 4) + (A231901 n + 4)

end

end A172133.P7102171529631780380

/-! ## A172133.P14735457077048005067

`xor(n, -1)+lcm(A231901(n)+1, A020985(n))`
-/

namespace A172133.P14735457077048005067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (Int.lcm (A231901 n + 1) (A020985 n) : ℤ)

end

end A172133.P14735457077048005067

/-! ## A172133.P4422834298785599058

`xor(n, -1)+(A231901(n)+1)%A126700(n+n+1)`
-/

namespace A172133.P4422834298785599058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + Int.tmod (A231901 n + 1) (A126700 (n + n + 1))

end

end A172133.P4422834298785599058

/-! ## A172133.P5439063143015931032

`A001489(n)+∑{d}[A231901(n), A000010(#)]`
-/

namespace A172133.P5439063143015931032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A172133.P5439063143015931032

/-!
# A172134: Number of ways to place 3 nonattacking knights on an n X n board.

The programs for A172134, there is no canonical definition to state claims against.
-/

/-! ## A172134.P7562834491282024810

`∑[2*n]*A025581(A003209(n))`
-/

namespace A172134.P7562834491282024810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A025581 (A003209 n).toNat

end

end A172134.P7562834491282024810

/-!
# A172136: Number of ways to place 5 nonattacking knights on an n X n board.

The programs for A172136, there is no canonical definition to state claims against.
-/

/-! ## A172136.P4837800062666751472

`A301577(A022629(n))-A109080(A001006(n))`
-/

namespace A172136.P4837800062666751472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301577 (A022629 n).toNat - A109080 (A001006 n).toNat

end

end A172136.P4837800062666751472

/-!
# A172137: Number of ways to place 2 nonattacking zebras on an n X n board.

The programs for A172137, the canonical program `A172137.P6493979831333276600` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172137 has offset 1).

The definition of A172137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172137.P6493979831333276600

`A172132(round(sqrt(n²+1)))+∑[6*n²]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A172137

/-- `A172132(round(sqrt(n²+1)))+∑[6*n²]` -/
def P6493979831333276600.Spec : Prop :=
  ∀ n, P6493979831333276600.a n = A172137 (n + 1)

theorem P6493979831333276600.correct : P6493979831333276600.Spec := by
  intro n
  simp only [A172137, Nat.add_sub_cancel]

end A172137

/-!
# A172141: Number of ways to place 2 nonattacking nightriders on an n X n board.

The programs for A172141, the canonical program `A172141.P13995096406569601543` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172141 has offset 1).

The definition of A172141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172141.P13995096406569601543

`∑[∑[2*(lcm(2, n)+n)]]+∑[4*n*C(n, 2)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172141

/-- `∑[∑[2*(lcm(2, n)+n)]]+∑[4*n*C(n, 2)]` -/
def P13995096406569601543.Spec : Prop :=
  ∀ n, (P13995096406569601543.a n : ℤ) = A172141 (n + 1)

theorem P13995096406569601543.correct : P13995096406569601543.Spec := by
  intro n
  simp only [A172141, Nat.add_sub_cancel]

end A172141

/-! ## A172141.P61042897783265037

`∑[2*(A213498(n)-n²)]`
-/

namespace A172141.P61042897783265037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A213498 n - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172141.P61042897783265037

namespace A172141

/-- `∑[2*(A213498(n)-n²)]` -/
def P61042897783265037.Spec : Prop :=
  ∀ n, P61042897783265037.a n = A172141 (n + 1)

end A172141

/-! ## A172141.P1303198298942421208

`A036464(n+1)+∑[A273365(n)]`
-/

namespace A172141.P1303198298942421208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172141.P1303198298942421208

namespace A172141

/-- `A036464(n+1)+∑[A273365(n)]` -/
def P1303198298942421208.Spec : Prop :=
  ∀ n, P1303198298942421208.a n = A172141 (n + 1)

end A172141

/-! ## A172141.P18156533446761528380

`A036464(n+1)+2*A212967(n)`
-/

namespace A172141.P18156533446761528380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) + 2 * A212967 n

end

end A172141.P18156533446761528380

namespace A172141

/-- `A036464(n+1)+2*A212967(n)` -/
def P18156533446761528380.Spec : Prop :=
  ∀ n, P18156533446761528380.a n = A172141 (n + 1)

end A172141

/-! ## A172141.P13963337466583174872

`A168388(n+1)+A142463(and(n²+n, -2)/2)`
-/

namespace A172141.P13963337466583174872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (n + 1) + A142463 (SequenceMachineLib.roundAway ((Int.land (n ^ 2 + n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A172141.P13963337466583174872

namespace A172141

/-- `A168388(n+1)+A142463(and(n²+n, -2)/2)` -/
def P13963337466583174872.Spec : Prop :=
  ∀ n, P13963337466583174872.a n = A172141 (n + 1)

end A172141

/-! ## A172141.P16305950073386784364

`A168388(n+1)+A142463(xor(1, (2*n+1)²)/8)`
-/

namespace A172141.P16305950073386784364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (n + 1) + A142463 (SequenceMachineLib.roundAway ((Nat.xor 1 ((2 * n + 1) ^ 2) : ℚ) / 8)).toNat

end

end A172141.P16305950073386784364

namespace A172141

/-- `A168388(n+1)+A142463(xor(1, (2*n+1)²)/8)` -/
def P16305950073386784364.Spec : Prop :=
  ∀ n, P16305950073386784364.a n = A172141 (n + 1)

end A172141

/-!
# A172143: Numbers of form 4^(3*k+l+1)/9 - 4^l/9 - 1/3 or 2*4^(3*k+l+2)/9 - 2*4^l/9 - 1/3, k,l>=0.

The programs for A172143, there is no canonical definition to state claims against.
-/

/-! ## A172143.P10090735658580391150

`(A172126(n+1)-1)/3`
-/

namespace A172143.P10090735658580391150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172126 (n + 1) - 1 : ℚ) / 3

end

end A172143.P10090735658580391150

/-! ## A172143.P5439627349826369966

`floor(A172126(n+1)/3)`
-/

namespace A172143.P5439627349826369966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172126 (n + 1) : ℚ) / 3⌋

end

end A172143.P5439627349826369966

/-! ## A172143.P10634524378381533190

`round(A172126(n+1)/3)%A000041(2*n)`
-/

namespace A172143.P10634524378381533190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A172126 (n + 1) : ℚ) / 3)) (A000041 (2 * n))

end

end A172143.P10634524378381533190

/-! ## A172143.P5421843492940098316

`A002264(A172126(n+1))`
-/

namespace A172143.P5421843492940098316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A172126 (n + 1)).toNat

end

end A172143.P5421843492940098316

/-! ## A172143.P14561700127694458857

`lt[A240883(A067745(n+1)), 1]`
-/

namespace A172143.P14561700127694458857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 (A067745 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A172143.P14561700127694458857

/-!
# A172144: Number of chirotopes resulting from realizable uniform oriented matroids of rank 3 over a ground set of n elements modulo permutations.

The programs for A172144, there is no canonical definition to state claims against.
-/

/-! ## A172144.P7017531868516398033

`A194986(A000027(2*(n+2))^round(n/sqrt(2)))`
-/

namespace A172144.P7017531868516398033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (SequenceMachineLib.roundAway ((A000027 (2 * (n + 2)) : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ)) : ℤ))).toNat

end

end A172144.P7017531868516398033

/-!
# A172145: 

The programs for A172145, there is no canonical definition to state claims against.
-/

/-! ## A172145.P2609833251447657883

`A000045(A003946(n))`
-/

namespace A172145.P2609833251447657883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003946 n).toNat

end

end A172145.P2609833251447657883

/-!
# A172146: Primes of form x^y + y^x + 1 with x <= y < 50.

The programs for A172146, there is no canonical definition to state claims against.
-/

/-! ## A172146.P11445632752244663287

`p?[C(2*(n+1), 51)+n-1+n]`
-/

namespace A172146.P11445632752244663287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) 51 + n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172146.P11445632752244663287

/-! ## A172146.P10835939860428099696

`p?[∑[p?[A131456(n+3)]]+1]`
-/

namespace A172146.P10835939860428099696
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131456 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172146.P10835939860428099696

/-! ## A172146.P1803472816223163956

`p?[∪[comp[2*(n+1)], A335984(n+1)]]`
-/

namespace A172146.P1803472816223163956
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172146.P1803472816223163956

/-! ## A172146.P5339485891754894613

`p?[∑[A194009(A018843(n))]]`
-/

namespace A172146.P5339485891754894613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194009 (A018843 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172146.P5339485891754894613

/-! ## A172146.P14814507328299384560

`A006530(A000040(n+2)*A038752(n))`
-/

namespace A172146.P14814507328299384560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) * A038752 n).toNat

end

end A172146.P14814507328299384560

/-!
# A172147: Numbers k such that 42*k - 5 and 42*k + 5 are prime.

The programs for A172147, there is no canonical definition to state claims against.
-/

/-! ## A172147.P16150467265556664678

`lt[A340853(3*(n+1)), A288386(A095417(3*n+4))]`
-/

namespace A172147.P16150467265556664678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340853 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 (A095417 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A172147.P16150467265556664678

/-!
# A172148: Number of subsets S of {1,2,3,...,n} with the property that if x is a member of S then at least one of x/2 and 2x is also a member of S.

The programs for A172148, there is no canonical definition to state claims against.
-/

/-! ## A172148.P18067683447909497260

`A003963(A227007(n+2)-1)`
-/

namespace A172148.P18067683447909497260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A227007 (n + 2) - 1).toNat

end

end A172148.P18067683447909497260

/-! ## A172148.P15911618979755347170

`∏{p}[A001317(n+1), A045917(#)]`
-/

namespace A172148.P15911618979755347170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A045917 p

end

end A172148.P15911618979755347170

/-! ## A172148.P3954918364819554243

`∏{p}[A045544(n+1), A045917(#)]`
-/

namespace A172148.P3954918364819554243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A045917 p

end

end A172148.P3954918364819554243

/-! ## A172148.P12665745197491362423

`∏{p}[A087756(n), A239218(#-1)]`
-/

namespace A172148.P12665745197491362423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A239218 (p - 1)

end

end A172148.P12665745197491362423

/-! ## A172148.P1675561598941869237

`2*(a(n-2)-A044940(A106805(n)))` with `a(0)=1, a(1)=2`
-/

namespace A172148.P1675561598941869237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) - A044940 (A106805 n).toNat)

end

end A172148.P1675561598941869237

/-!
# A172149: Number of chirotopes resulting from realizable uniform oriented matroids of rank 3 over a ground set of n elements.

The programs for A172149, there is no canonical definition to state claims against.
-/

/-! ## A172149.P7149993509414761289

`∑[A001246(n)]*A224801(n+1)`
-/

namespace A172149.P7149993509414761289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A224801 (n + 1)

end

end A172149.P7149993509414761289

/-!
# A172151: Number of partitions of n into two nonsquares.

The programs for A172151, the canonical program `A172151.P8399012930650727047` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172151 has offset 0).

The definition of A172151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172151.P16828417932373476389

`A110654(A028391(n)-A247367(n))`
-/

namespace A172151.P16828417932373476389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028391 n - A247367 n).toNat

end

end A172151.P16828417932373476389

namespace A172151

/-- `A110654(A028391(n)-A247367(n))` -/
def P16828417932373476389.Spec : Prop :=
  ∀ n, P16828417932373476389.a n = A172151 n

end A172151

/-! ## A172151.P8399012930650727047

`A004526(n)+A025435(n)-A000196(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A172151

/-- `A004526(n)+A025435(n)-A000196(n)` -/
def P8399012930650727047.Spec : Prop :=
  ∀ n, P8399012930650727047.a n = A172151 n

theorem P8399012930650727047.correct : P8399012930650727047.Spec := by
  intro n
  simp only [A172151]

end A172151

/-! ## A172151.P2645413861225517077

`A025435(n)+A028391(n)-A110654(n)`
-/

namespace A172151.P2645413861225517077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n + (A028391 n - A110654 n)

end

end A172151.P2645413861225517077

namespace A172151

/-- `A025435(n)+A028391(n)-A110654(n)` -/
def P2645413861225517077.Spec : Prop :=
  ∀ n, P2645413861225517077.a n = A172151 n

end A172151

/-! ## A172151.P18416075654243015492

`sqrt(A008794(n))+A025435(n)-A000196(n)`
-/

namespace A172151.P18416075654243015492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008794 n : ℝ) + (A025435 n - A000196 n : ℝ)

end

end A172151.P18416075654243015492

namespace A172151

/-- `sqrt(A008794(n))+A025435(n)-A000196(n)` -/
def P18416075654243015492.Spec : Prop :=
  ∀ n, P18416075654243015492.a n = (A172151 n : ℝ)

end A172151

/-! ## A172151.P129933878985180902

`A065033(A028391(n)-A247367(n))%A039960(n)`
-/

namespace A172151.P129933878985180902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A028391 n - A247367 n).toNat) (A039960 n)

end

end A172151.P129933878985180902

namespace A172151

/-- `A065033(A028391(n)-A247367(n))%A039960(n)` -/
def P129933878985180902.Spec : Prop :=
  ∀ n, P129933878985180902.a n = A172151 n

end A172151

/-!
# A172152: Records for number of partitions of n into two nonsquares.

The programs for A172152, there is no canonical definition to state claims against.
-/

/-! ## A172152.P8530108723210331024

`record[A172151(n)]`
-/

namespace A172152.P8530108723210331024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172152.P8530108723210331024

/-! ## A172152.P4344447401084032938

`record[A110654(A028391(n)-A247367(n))]`
-/

namespace A172152.P4344447401084032938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028391 n - A247367 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172152.P4344447401084032938

/-! ## A172152.P2922229892397770984

`record[A004526(n)+A025435(n)-A000196(n)]`
-/

namespace A172152.P2922229892397770984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A025435 n - A000196 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172152.P2922229892397770984

/-! ## A172152.P15869172992686031066

`record[A025435(n)+A028391(n)-A110654(n)]`
-/

namespace A172152.P15869172992686031066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n + (A028391 n - A110654 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172152.P15869172992686031066

/-! ## A172152.P2919643853893060430

`A172151(A172153(n+1))`
-/

namespace A172152.P2919643853893060430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172151 (A172153 (n + 1)).toNat

end

end A172152.P2919643853893060430

/-!
# A172154: Numbers k such that 24*k+-5 are both prime.

The programs for A172154, there is no canonical definition to state claims against.
-/

/-! ## A172154.P13597774097501481809

`∩[A139527(n+1), A139532(n+1)+1]`
-/

namespace A172154.P13597774097501481809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139532 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172154.P13597774097501481809

/-!
# A172155: a(n) = Omega(6*n-1)*Omega(6*n+1).

The programs for A172155, the canonical program `A172155.P7806216134139975295` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172155 has offset 1).

The definition of A172155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172155.P7806216134139975295

`A001222(6*n+5)*A001222(6*n+7)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A172155

/-- `A001222(6*n+5)*A001222(6*n+7)` -/
def P7806216134139975295.Spec : Prop :=
  ∀ n, P7806216134139975295.a n = A172155 (n + 1)

theorem P7806216134139975295.correct : P7806216134139975295.Spec := by
  intro n
  simp only [A172155, Nat.add_sub_cancel]

end A172155

/-! ## A172155.P15079134227538070055

`A091304(3*n+4)*A091304(3*(n+1))`
-/

namespace A172155.P15079134227538070055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (3 * n + 4) * A091304 (3 * (n + 1))

end

end A172155.P15079134227538070055

namespace A172155

/-- `A091304(3*n+4)*A091304(3*(n+1))` -/
def P15079134227538070055.Spec : Prop :=
  ∀ n, P15079134227538070055.a n = A172155 (n + 1)

end A172155

/-! ## A172155.P15728217510751718101

`ceil(A340832(A136017(n+1))/3)`
-/

namespace A172155.P15728217510751718101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340832 (A136017 (n + 1)).toNat : ℚ) / 3⌉

end

end A172155.P15728217510751718101

namespace A172155

/-- `ceil(A340832(A136017(n+1))/3)` -/
def P15728217510751718101.Spec : Prop :=
  ∀ n, P15728217510751718101.a n = A172155 (n + 1)

end A172155

/-! ## A172155.P2336711221494962865

`A003056(A340832(A136017(n+1)))`
-/

namespace A172155.P2336711221494962865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A340832 (A136017 (n + 1)).toNat).toNat

end

end A172155.P2336711221494962865

namespace A172155

/-- `A003056(A340832(A136017(n+1)))` -/
def P2336711221494962865.Spec : Prop :=
  ∀ n, P2336711221494962865.a n = A172155 (n + 1)

end A172155

/-! ## A172155.P4399251881696028980

`A145193(n+1)-A103451(A122890(A322310(n+1)))`
-/

namespace A172155.P4399251881696028980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (n + 1) - A103451 (A122890 (A322310 (n + 1)).toNat).toNat

end

end A172155.P4399251881696028980

namespace A172155

/-- `A145193(n+1)-A103451(A122890(A322310(n+1)))` -/
def P4399251881696028980.Spec : Prop :=
  ∀ n, P4399251881696028980.a n = A172155 (n + 1)

end A172155

/-!
# A172156: Primes in the chain of repeated application of x->2*x+3, starting at x=2.

The programs for A172156, there is no canonical definition to state claims against.
-/

/-! ## A172156.P11427531675224221168

`A173769(n+2)`
-/

namespace A172156.P11427531675224221168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173769 (n + 2)

end

end A172156.P11427531675224221168

/-! ## A172156.P13776824183545899328

`A154117(A058588(n+2)+1)`
-/

namespace A172156.P13776824183545899328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 (A058588 (n + 2) + 1).toNat

end

end A172156.P13776824183545899328

/-! ## A172156.P10740527968995516197

`record[A173769(abs(n-A000038(n)))]`
-/

namespace A172156.P10740527968995516197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173769 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172156.P10740527968995516197

/-! ## A172156.P12617639133097165495

`p?[10*2^n-3]`
-/

namespace A172156.P12617639133097165495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * 2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172156.P12617639133097165495

/-! ## A172156.P2532492099173253561

`or(1, p?[2*a(n-1)+3])` with `a(0)=7`
-/

namespace A172156.P2532492099173253561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A172156.P2532492099173253561

/-!
# A172157: Triangle T(n,m) = numerator of 1/n^2 - 1/m^2, read by rows, with T(n,0) = -1.

The programs for A172157, there is no canonical definition to state claims against.
-/

/-! ## A172157.P16163755992354131396

`A174233(A004202(n+1))`
-/

namespace A172157.P16163755992354131396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174233 (A004202 (n + 1)).toNat

end

end A172157.P16163755992354131396

/-! ## A172157.P3972762264629457879

`A174233(A064801(n+1)+1)`
-/

namespace A172157.P3972762264629457879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174233 (A064801 (n + 1) + 1).toNat

end

end A172157.P3972762264629457879

/-! ## A172157.P14766709893718299419

`A174233(A004736(n+1)+2*n+1)`
-/

namespace A172157.P14766709893718299419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174233 (A004736 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A172157.P14766709893718299419

/-! ## A172157.P6044230025582816646

`-A175779(A014132(A038722(n+1)))`
-/

namespace A172157.P6044230025582816646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A175779 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A172157.P6044230025582816646

/-! ## A172157.P16572300457839926006

`A174233(A005408(n)+A004736(n+1))`
-/

namespace A172157.P16572300457839926006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174233 (A005408 n + A004736 (n + 1)).toNat

end

end A172157.P16572300457839926006

/-!
# A172159: Nonprime Lucas numbers.

The programs for A172159, the canonical program `A172159.P16282636252123325774` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172159 has offset 1).

The definition of A172159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172159.P11785401111944516748

`A000032(comp[A001606(n+1)])`
-/

namespace A172159.P11785401111944516748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A172159.P11785401111944516748

namespace A172159

/-- `A000032(comp[A001606(n+1)])` -/
def P11785401111944516748.Spec : Prop :=
  ∀ n, P11785401111944516748.a n = A172159 (n + 1)

end A172159

/-! ## A172159.P13871391295674177550

`A000032(comp[eq[1, A086599(n)]])`
-/

namespace A172159.P13871391295674177550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A172159.P13871391295674177550

namespace A172159

/-- `A000032(comp[eq[1, A086599(n)]])` -/
def P13871391295674177550.Spec : Prop :=
  ∀ n, P13871391295674177550.a n = A172159 (n + 1)

end A172159

/-! ## A172159.P14517081264143569699

`A000032(comp[eq[2, A272377(n)]])`
-/

namespace A172159.P14517081264143569699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A172159.P14517081264143569699

namespace A172159

/-- `A000032(comp[eq[2, A272377(n)]])` -/
def P14517081264143569699.Spec : Prop :=
  ∀ n, P14517081264143569699.a n = A172159 (n + 1)

end A172159

/-! ## A172159.P16282636252123325774

`A000032(lt[A219187(n), A000032(n)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A172159

/-- `A000032(lt[A219187(n), A000032(n)])` -/
def P16282636252123325774.Spec : Prop :=
  ∀ n, P16282636252123325774.a n = A172159 (n + 1)

theorem P16282636252123325774.correct : P16282636252123325774.Spec := by
  intro n
  simp only [A172159, Nat.add_sub_cancel]

end A172159

/-! ## A172159.P2414674131237445261

`filter[A000032(n), A005171(#)]`
-/

namespace A172159.P2414674131237445261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172159.P2414674131237445261

namespace A172159

/-- `filter[A000032(n), A005171(#)]` -/
def P2414674131237445261.Spec : Prop :=
  ∀ n, P2414674131237445261.a n = A172159 (n + 1)

end A172159

/-!
# A172160: a(0)=1. a(n) = 2^(n-2)*(5-n), for n>0.

The programs for A172160, the canonical program `A172160.P14311145332042819117` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172160 has offset 0).

The definition of A172160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172160.P14311145332042819117

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172160

/-- `4*a(n-1)-4*a(n-2)` -/
def P14311145332042819117.Spec : Prop :=
  ∀ n, P14311145332042819117.a n = A172160 n

theorem P14311145332042819117.correct : P14311145332042819117.Spec := by
  intro n
  simp only [A172160]

end A172160

/-! ## A172160.P14876435725093162103

`floor((5-n)*2^(n-2))`
-/

namespace A172160.P14876435725093162103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 - (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A172160.P14876435725093162103

namespace A172160

/-- `floor((5-n)*2^(n-2))` -/
def P14876435725093162103.Spec : Prop :=
  ∀ n, P14876435725093162103.a n = A172160 n

end A172160

/-! ## A172160.P3488655500925858851

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A172160.P3488655500925858851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A172160.P3488655500925858851

namespace A172160

/-- `4*(a(n-1)-a(n-2))` -/
def P3488655500925858851.Spec : Prop :=
  ∀ n, P3488655500925858851.a n = A172160 n

theorem P3488655500925858851.correct : P3488655500925858851.Spec := by
  intro n
  simp only [A172160, Nat.add_sub_cancel, A172160.P3488655500925858851.a, A172160.P14311145332042819117.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172160

/-! ## A172160.P151706922941928419

`2^n-A139756(n)`
-/

namespace A172160.P151706922941928419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A139756 n

end

end A172160.P151706922941928419

namespace A172160

/-- `2^n-A139756(n)` -/
def P151706922941928419.Spec : Prop :=
  ∀ n, P151706922941928419.a n = A172160 n

end A172160

/-! ## A172160.P7194821842189503435

`2^(n+1)-A045623(n)`
-/

namespace A172160.P7194821842189503435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A045623 n

end

end A172160.P7194821842189503435

namespace A172160

/-- `2^(n+1)-A045623(n)` -/
def P7194821842189503435.Spec : Prop :=
  ∀ n, P7194821842189503435.a n = A172160 n

end A172160

/-! ## A172160.P16191686559890968431

`2*a(n-1)-A034008(n)` with `a(0)=1`
-/

namespace A172160.P16191686559890968431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A034008 n

end

end A172160.P16191686559890968431

namespace A172160

/-- `2*a(n-1)-A034008(n)` -/
def P16191686559890968431.Spec : Prop :=
  ∀ n, P16191686559890968431.a n = A172160 n

end A172160

/-! ## A172160.P10725593973551806989

`A005126(n)-A154222(n)`
-/

namespace A172160.P10725593973551806989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n - A154222 n

end

end A172160.P10725593973551806989

namespace A172160

/-- `A005126(n)-A154222(n)` -/
def P10725593973551806989.Spec : Prop :=
  ∀ n, P10725593973551806989.a n = A172160 n

end A172160

/-! ## A172160.P14249264171547683753

`A104721(n)-A274497(n)`
-/

namespace A172160.P14249264171547683753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 n - A274497 n

end

end A172160.P14249264171547683753

namespace A172160

/-- `A104721(n)-A274497(n)` -/
def P14249264171547683753.Spec : Prop :=
  ∀ n, P14249264171547683753.a n = A172160 n

end A172160

/-! ## A172160.P10733003705586715462

`A000051(n)-(A139756(n)+1)`
-/

namespace A172160.P10733003705586715462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A139756 n + 1)

end

end A172160.P10733003705586715462

namespace A172160

/-- `A000051(n)-(A139756(n)+1)` -/
def P10733003705586715462.Spec : Prop :=
  ∀ n, P10733003705586715462.a n = A172160 n

end A172160

/-! ## A172160.P10894854162988821659

`A006127(n)+1-A154222(n)`
-/

namespace A172160.P10894854162988821659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n + (1 - A154222 n)

end

end A172160.P10894854162988821659

namespace A172160

/-- `A006127(n)+1-A154222(n)` -/
def P10894854162988821659.Spec : Prop :=
  ∀ n, P10894854162988821659.a n = A172160 n

end A172160

/-! ## A172160.P977987853054834359

`A125176(n+1)-A129953(n)`
-/

namespace A172160.P977987853054834359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1) - A129953 n

end

end A172160.P977987853054834359

namespace A172160

/-- `A125176(n+1)-A129953(n)` -/
def P977987853054834359.Spec : Prop :=
  ∀ n, P977987853054834359.a n = A172160 n

end A172160

/-! ## A172160.P18376987686432129238

`A136299(n+1)-A136298(n)`
-/

namespace A172160.P18376987686432129238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136299 (n + 1) - A136298 n

end

end A172160.P18376987686432129238

namespace A172160

/-- `A136299(n+1)-A136298(n)` -/
def P18376987686432129238.Spec : Prop :=
  ∀ n, P18376987686432129238.a n = A172160 n

end A172160

/-! ## A172160.P15691349719569666581

`A257113(n+1)-A129952(n)`
-/

namespace A172160.P15691349719569666581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 1) - A129952 n

end

end A172160.P15691349719569666581

namespace A172160

/-- `A257113(n+1)-A129952(n)` -/
def P15691349719569666581.Spec : Prop :=
  ∀ n, P15691349719569666581.a n = A172160 n

end A172160

/-! ## A172160.P9436854467104947914

`2*A011782(n)-A097067(n)`
-/

namespace A172160.P9436854467104947914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A097067 n

end

end A172160.P9436854467104947914

namespace A172160

/-- `2*A011782(n)-A097067(n)` -/
def P9436854467104947914.Spec : Prop :=
  ∀ n, P9436854467104947914.a n = A172160 n

end A172160

/-! ## A172160.P13087553571835309449

`A003945(n)-A336102(2*n)`
-/

namespace A172160.P13087553571835309449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A336102 (2 * n)

end

end A172160.P13087553571835309449

namespace A172160

/-- `A003945(n)-A336102(2*n)` -/
def P13087553571835309449.Spec : Prop :=
  ∀ n, P13087553571835309449.a n = A172160 n

end A172160

/-! ## A172160.P2645846655925692596

`A000079(n+1)-∑[A045891(n)]`
-/

namespace A172160.P2645846655925692596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172160.P2645846655925692596

namespace A172160

/-- `A000079(n+1)-∑[A045891(n)]` -/
def P2645846655925692596.Spec : Prop :=
  ∀ n, P2645846655925692596.a n = A172160 n

end A172160

/-! ## A172160.P7848219203857949780

`∑[2*A011782(n)-A045891(n)]`
-/

namespace A172160.P7848219203857949780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A045891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172160.P7848219203857949780

namespace A172160

/-- `∑[2*A011782(n)-A045891(n)]` -/
def P7848219203857949780.Spec : Prop :=
  ∀ n, P7848219203857949780.a n = A172160 n

end A172160

/-! ## A172160.P2017537918553186985

`∑[A045891(n)-n*A034008(n)]`
-/

namespace A172160.P2017537918553186985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n - (n : ℤ) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172160.P2017537918553186985

namespace A172160

/-- `∑[A045891(n)-n*A034008(n)]` -/
def P2017537918553186985.Spec : Prop :=
  ∀ n, P2017537918553186985.a n = A172160 n

end A172160

/-! ## A172160.P7786265647794855970

`A000079(n)+A139790(n)-A136298(n)`
-/

namespace A172160.P7786265647794855970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A139790 n - A136298 n)

end

end A172160.P7786265647794855970

namespace A172160

/-- `A000079(n)+A139790(n)-A136298(n)` -/
def P7786265647794855970.Spec : Prop :=
  ∀ n, P7786265647794855970.a n = A172160 n

end A172160

/-!
# A172161: Greedy Coppersmith-Winograd sequence.

The programs for A172161, there is no canonical definition to state claims against.
-/

/-! ## A172161.P16437177672490787681

`Δ[ceil(3/2*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`
-/

namespace A172161.P16437177672490787681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 7] fun n f1 =>
  ⌈(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172161.P16437177672490787681

/-! ## A172161.P14219457631081901747

`Δ[floor(3*a(n-1)/2)]` with `a(0)=2, a(1)=2, a(2)=3, a(3)=5, a(4)=8`
-/

namespace A172161.P14219457631081901747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 5, 8] fun n f1 =>
  ⌊3 * ((f1 (n - 1) : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172161.P14219457631081901747

/-! ## A172161.P948275393776626703

`Δ[A008619(A022434(a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A172161.P948275393776626703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A008619 (A022434 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172161.P948275393776626703

/-! ## A172161.P404710044345865017

`A001462(A374681(n))%A374681(2*n)`
-/

namespace A172161.P404710044345865017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (A374681 n).toNat) (A374681 (2 * n))

end

end A172161.P404710044345865017

/-! ## A172161.P9007216186805602438

`A307707(A182555(n))`
-/

namespace A172161.P9007216186805602438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A182555 n).toNat

end

end A172161.P9007216186805602438

/-!
# A172162: a(n) = ( A165154(n) + A165155(n) )/2.

The programs for A172162, the canonical program `A172162.P14221209511065570468` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172162 has offset 0).

The definition of A172162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172162.P14221209511065570468

`(A165154(n)+A165155(n))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A172162

/-- `(A165154(n)+A165155(n))/2` -/
def P14221209511065570468.Spec : Prop :=
  ∀ n, P14221209511065570468.a n = (A172162 n : ℚ)

end A172162

/-! ## A172162.P5245139271339973880

`Δ[A172163(n)/10]`
-/

namespace A172162.P5245139271339973880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172163 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172162.P5245139271339973880

namespace A172162

/-- `Δ[A172163(n)/10]` -/
def P5245139271339973880.Spec : Prop :=
  ∀ n, P5245139271339973880.a n = (A172162 n : ℚ)

end A172162

/-! ## A172162.P12365270406425178497

`A172163(n)+A165154(n)`
-/

namespace A172162.P12365270406425178497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172163 n + A165154 n

end

end A172162.P12365270406425178497

namespace A172162

/-- `A172163(n)+A165154(n)` -/
def P12365270406425178497.Spec : Prop :=
  ∀ n, P12365270406425178497.a n = A172162 n

end A172162

/-! ## A172162.P14441864576557804341

`A165155(n)-A172163(n)`
-/

namespace A172162.P14441864576557804341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165155 n - A172163 n

end

end A172162.P14441864576557804341

namespace A172162

/-- `A165155(n)-A172163(n)` -/
def P14441864576557804341.Spec : Prop :=
  ∀ n, P14441864576557804341.a n = A172162 n

end A172162

/-! ## A172162.P6058501786768648919

`A165155(n)+A172163(n)*A316441(A020639(n+1))`
-/

namespace A172162.P6058501786768648919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165155 n + A172163 n * A316441 (A020639 (n + 1)).toNat

end

end A172162.P6058501786768648919

namespace A172162

/-- `A165155(n)+A172163(n)*A316441(A020639(n+1))` -/
def P6058501786768648919.Spec : Prop :=
  ∀ n, P6058501786768648919.a n = A172162 n

end A172162

/-!
# A172163: a(n) = ( A165155(n) - A165154(n) )/2.

The programs for A172163, the canonical program `A172163.P13458640249589125478` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172163 has offset 0).

The definition of A172163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172163.P13458640249589125478

`(A165155(n)-A165154(n))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A172163

/-- `(A165155(n)-A165154(n))/2` -/
def P13458640249589125478.Spec : Prop :=
  ∀ n, P13458640249589125478.a n = (A172163 n : ℚ)

end A172163

/-! ## A172163.P4122070566993586598

`A165155(n)-A172162(n)`
-/

namespace A172163.P4122070566993586598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165155 n - A172162 n

end

end A172163.P4122070566993586598

namespace A172163

/-- `A165155(n)-A172162(n)` -/
def P4122070566993586598.Spec : Prop :=
  ∀ n, P4122070566993586598.a n = A172163 n

end A172163

/-! ## A172163.P8506952604470719855

`A172162(n)-A165154(n)`
-/

namespace A172163.P8506952604470719855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172162 n - A165154 n

end

end A172163.P8506952604470719855

namespace A172163

/-- `A172162(n)-A165154(n)` -/
def P8506952604470719855.Spec : Prop :=
  ∀ n, P8506952604470719855.a n = A172163 n

end A172163

/-! ## A172163.P10326869853619972332

`A165155(n)%A172162(A151933(n)+n)`
-/

namespace A172163.P10326869853619972332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165155 n) (A172162 (A151933 n + (n : ℤ)).toNat)

end

end A172163.P10326869853619972332

namespace A172163

/-- `A165155(n)%A172162(A151933(n)+n)` -/
def P10326869853619972332.Spec : Prop :=
  ∀ n, P10326869853619972332.a n = A172163 n

end A172163

/-! ## A172163.P7087924725934648295

`A165155(n)+A008683(A240710(n+1))*A172162(n)`
-/

namespace A172163.P7087924725934648295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165155 n + A008683 (A240710 (n + 1)).toNat * A172162 n

end

end A172163.P7087924725934648295

namespace A172163

/-- `A165155(n)+A008683(A240710(n+1))*A172162(n)` -/
def P7087924725934648295.Spec : Prop :=
  ∀ n, P7087924725934648295.a n = A172163 n

end A172163

/-! ## A172163.P608187591698972147

`A165155(n)+A172162(n)/A008683(A240710(n+2))`
-/

namespace A172163.P608187591698972147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165155 n : ℚ) + (A172162 n : ℚ) / (A008683 (A240710 (n + 2)).toNat : ℚ)

end

end A172163.P608187591698972147

namespace A172163

/-- `A165155(n)+A172162(n)/A008683(A240710(n+2))` -/
def P608187591698972147.Spec : Prop :=
  ∀ n, P608187591698972147.a n = (A172163 n : ℚ)

end A172163

/-!
# A172164: Differences between numbers of triangles entirely contained in two consecutive turns of Pythagoras's snail (Theodorus spiral).

The programs for A172164, there is no canonical definition to state claims against.
-/

/-! ## A172164.P7150148839410164507

`Δ[A072895(n+1)]-A295338(n+1)`
-/

namespace A172164.P7150148839410164507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A295338 (n + 1)

end

end A172164.P7150148839410164507

/-! ## A172164.P974375080919898878

`A072895(n+2)-(A295338(n+1)+A072895(n+1))`
-/

namespace A172164.P974375080919898878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (n + 2) - (A295338 (n + 1) + A072895 (n + 1))

end

end A172164.P974375080919898878

/-! ## A172164.P15987295219446344655

`Δ[A295338(n+1)]`
-/

namespace A172164.P15987295219446344655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172164.P15987295219446344655

/-! ## A172164.P3518771866355114524

`Δ[record[A295338(A065648(n))]]`
-/

namespace A172164.P3518771866355114524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172164.P3518771866355114524

/-! ## A172164.P1799374612258601503

`Δ[record[A295338(A106466(n))]]`
-/

namespace A172164.P1799374612258601503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172164.P1799374612258601503

/-!
# A172165: A simple sequence a(n) = n + n^(n-1).

The programs for A172165, there is no canonical definition to state claims against.
-/

/-! ## A172165.P1478255262566971355

`n+1+(n+1)^n`
-/

namespace A172165.P1478255262566971355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (n + 1) ^ n

end

end A172165.P1478255262566971355

/-! ## A172165.P9308102838538882585

`∑[A178922(n)+1]`
-/

namespace A172165.P9308102838538882585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178922 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172165.P9308102838538882585

/-! ## A172165.P4599554799176951383

`xor(1, A066141(n+1))`
-/

namespace A172165.P4599554799176951383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A066141 (n + 1))

end

end A172165.P4599554799176951383

/-! ## A172165.P15268166482980546529

`lcm(2, A173235(n+1)+1)`
-/

namespace A172165.P15268166482980546529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A173235 (n + 1) + 1)

end

end A172165.P15268166482980546529

/-! ## A172165.P8776901087845528330

`∑[Δ[n*A000272(n)]+1]`
-/

namespace A172165.P8776901087845528330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172165.P8776901087845528330

/-! ## A172165.P2108590429354010968

`(Δ[A173249(n)]+1)*(n+1)`
-/

namespace A172165.P2108590429354010968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (n + 1 : ℤ)

end

end A172165.P2108590429354010968

/-! ## A172165.P15079668230792232874

`(n+1)*(A000272(n+1)+1)`
-/

namespace A172165.P15079668230792232874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000272 (n + 1) + 1)

end

end A172165.P15079668230792232874

/-! ## A172165.P6180838074562176946

`2/(n+1)*A214647(n+1)`
-/

namespace A172165.P6180838074562176946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A214647 (n + 1) : ℚ)

end

end A172165.P6180838074562176946

/-! ## A172165.P17928416384770923445

`record[A158416(n)+A000169(A158416(n))]`
-/

namespace A172165.P17928416384770923445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + A000169 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172165.P17928416384770923445

/-! ## A172165.P6590434518638089851

`record[A291769(n)+A000169(A291769(n))]`
-/

namespace A172165.P6590434518638089851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n + A000169 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172165.P6590434518638089851

/-!
# A172166: Partial sums of A028388 good primes (version 2).

The programs for A172166, there is no canonical definition to state claims against.
-/

/-! ## A172166.P2998444696203410376

`∑[A028388(n+1)]`
-/

namespace A172166.P2998444696203410376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172166.P2998444696203410376

/-! ## A172166.P1277734971711782980

`∑[record[A028388(A022446(n))]]`
-/

namespace A172166.P1277734971711782980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172166.P1277734971711782980

/-! ## A172166.P12480170560237282064

`∑[record[A028388(A065648(n))]]`
-/

namespace A172166.P12480170560237282064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172166.P12480170560237282064

/-! ## A172166.P17357123205912357656

`∑[record[A028388(A117910(n))]]`
-/

namespace A172166.P17357123205912357656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172166.P17357123205912357656

/-! ## A172166.P14179029300745579300

`∑[record[A028388(A133310(n))]]`
-/

namespace A172166.P14179029300745579300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172166.P14179029300745579300

/-!
# A172167: Partial sums of A005109.

The programs for A172167, there is no canonical definition to state claims against.
-/

/-! ## A172167.P8843131064971568415

`∑[A005109(n+1)]`
-/

namespace A172167.P8843131064971568415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P8843131064971568415

/-! ## A172167.P1336110562389481480

`∑[record[A005109(A100727(n))]]`
-/

namespace A172167.P1336110562389481480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P1336110562389481480

/-! ## A172167.P12000152223196126823

`∑[record[A005109(A106466(n))]]`
-/

namespace A172167.P12000152223196126823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P12000152223196126823

/-! ## A172167.P10643364509795524917

`∑[record[A005109(A126759(n))]]`
-/

namespace A172167.P10643364509795524917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P10643364509795524917

/-! ## A172167.P12445194866813574153

`∑[record[A005109(A133310(n))]]`
-/

namespace A172167.P12445194866813574153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P12445194866813574153

/-! ## A172167.P724679792286481484

`∑[record[A005109(A134478(n))]]`
-/

namespace A172167.P724679792286481484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P724679792286481484

/-! ## A172167.P3256698918494315724

`∑[record[A005109(A154958(n))]]`
-/

namespace A172167.P3256698918494315724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P3256698918494315724

/-! ## A172167.P4704315345824240336

`∑[record[A005109(A158416(n))]]`
-/

namespace A172167.P4704315345824240336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P4704315345824240336

/-! ## A172167.P17495297813514650979

`∑[record[A005109(A286552(n))]]`
-/

namespace A172167.P17495297813514650979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (A286552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172167.P17495297813514650979

/-!
# A172170: 1 followed by the duplicated entries of A090368.

The programs for A172170, there is no canonical definition to state claims against.
-/

/-! ## A172170.P4381339346400683107

`A020639(abs(or(1, -n)))`
-/

namespace A172170.P4381339346400683107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |Int.lor 1 (-(n : ℤ))|.toNat

end

end A172170.P4381339346400683107

/-! ## A172170.P8593186367494951963

`A020639(or(1, abs(1-n)))`
-/

namespace A172170.P8593186367494951963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 |1 - (n : ℤ)|).toNat

end

end A172170.P8593186367494951963

/-! ## A172170.P17096970174769840025

`A020639(∏{p}[or(1, -n), #])`
-/

namespace A172170.P17096970174769840025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A172170.P17096970174769840025

/-! ## A172170.P13265526236631765982

`A020639((1-n)%2+n)`
-/

namespace A172170.P13265526236631765982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)).toNat

end

end A172170.P13265526236631765982

/-! ## A172170.P7855483092785222228

`A020639(n-(n-1)%2)`
-/

namespace A172170.P7855483092785222228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n : ℤ) - Int.tmod ((n : ℤ) - 1) 2).toNat

end

end A172170.P7855483092785222228

/-! ## A172170.P13200388139645453583

`A020639(abs(n-log2(gcd(2, n))))`
-/

namespace A172170.P13200388139645453583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway |(n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)|).toNat

end

end A172170.P13200388139645453583

/-! ## A172170.P8266576725917067315

`A020639(abs(char[2*n]-n))`
-/

namespace A172170.P8266576725917067315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|.toNat

end

end A172170.P8266576725917067315

/-! ## A172170.P11045009911599258845

`A090368(A065033(n))`
-/

namespace A172170.P11045009911599258845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A065033 n).toNat

end

end A172170.P11045009911599258845

/-! ## A172170.P10096877466799356586

`A267458(n+1)/A032742(A267458(n+1))`
-/

namespace A172170.P10096877466799356586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267458 (n + 1) : ℚ) / (A032742 (A267458 (n + 1)).toNat : ℚ)

end

end A172170.P10096877466799356586

/-! ## A172170.P15096071796910836139

`A096015((A374134(n+1)-n)²)`
-/

namespace A172170.P15096071796910836139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096015 ((A374134 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A172170.P15096071796910836139

/-!
# A172171: (1, 9) Pascal Triangle read by horizontal rows. Same as A093644, but mirrored and without the additional row/column (1, 9, 9, 9, 9, ...).

The programs for A172171, the canonical program `A172171.P2529637419829214897` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172171 has offset 1).

The definition of A172171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172171.P2529637419829214897

`A093644(A099375(n)+1+n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A172171

/-- `A093644(A099375(n)+1+n)` -/
def P2529637419829214897.Spec : Prop :=
  ∀ n, P2529637419829214897.a n = A172171 (n + 1)

theorem P2529637419829214897.correct : P2529637419829214897.Spec := by
  intro n
  simp only [A172171, Nat.add_sub_cancel]

end A172171

/-! ## A172171.P3382064746227987000

`A093644(A114327(n)+comp[C(n, 2)])`
-/

namespace A172171.P3382064746227987000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A114327 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A172171.P3382064746227987000

namespace A172171

/-- `A093644(A114327(n)+comp[C(n, 2)])` -/
def P3382064746227987000.Spec : Prop :=
  ∀ n, P3382064746227987000.a n = A172171 (n + 1)

end A172171

/-! ## A172171.P18084031444806989929

`A093644(A014132(A038722(n+1)))`
-/

namespace A172171.P18084031444806989929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A172171.P18084031444806989929

namespace A172171

/-- `A093644(A014132(A038722(n+1)))` -/
def P18084031444806989929.Spec : Prop :=
  ∀ n, P18084031444806989929.a n = A172171 (n + 1)

end A172171

/-! ## A172171.P3846185736728102604

`A093644(A114327(n)+A014132(n+1))`
-/

namespace A172171.P3846185736728102604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A114327 n + A014132 (n + 1)).toNat

end

end A172171.P3846185736728102604

namespace A172171

/-- `A093644(A114327(n)+A014132(n+1))` -/
def P3846185736728102604.Spec : Prop :=
  ∀ n, P3846185736728102604.a n = A172171 (n + 1)

end A172171

/-! ## A172171.P10562865127105579995

`A093644(A003056(n)+A061579(n)+2)`
-/

namespace A172171.P10562865127105579995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A003056 n + (A061579 n + 2)).toNat

end

end A172171.P10562865127105579995

namespace A172171

/-- `A093644(A003056(n)+A061579(n)+2)` -/
def P10562865127105579995.Spec : Prop :=
  ∀ n, P10562865127105579995.a n = A172171 (n + 1)

end A172171

/-! ## A172171.P18224149573047864559

`A093644(A061579(n)+A003057(n+2))`
-/

namespace A172171.P18224149573047864559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A061579 n + A003057 (n + 2)).toNat

end

end A172171.P18224149573047864559

namespace A172171

/-- `A093644(A061579(n)+A003057(n+2))` -/
def P18224149573047864559.Spec : Prop :=
  ∀ n, P18224149573047864559.a n = A172171 (n + 1)

end A172171

/-! ## A172171.P16461397426285924063

`A093644(A038722(n+1)+∑[A010054(n)])`
-/

namespace A172171.P16461397426285924063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A038722 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172171.P16461397426285924063

namespace A172171

/-- `A093644(A038722(n+1)+∑[A010054(n)])` -/
def P16461397426285924063.Spec : Prop :=
  ∀ n, P16461397426285924063.a n = A172171 (n + 1)

end A172171

/-! ## A172171.P2509288462949925114

`A093644(A038722(n+1)+A002024(n+1))`
-/

namespace A172171.P2509288462949925114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A172171.P2509288462949925114

namespace A172171

/-- `A093644(A038722(n+1)+A002024(n+1))` -/
def P2509288462949925114.Spec : Prop :=
  ∀ n, P2509288462949925114.a n = A172171 (n + 1)

end A172171

/-!
# A172172: Sums of NW-SE diagonals of triangle A172171.

The programs for A172172, the canonical program `A172172.P5783301427378978101` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172172 has offset 0).

The definition of A172172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172172.P5783301427378978101

`a(n-1)+a(n-2)+9` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172172

/-- `a(n-1)+a(n-2)+9` -/
def P5783301427378978101.Spec : Prop :=
  ∀ n, (P5783301427378978101.a n : ℤ) = A172172 n

theorem P5783301427378978101.correct : P5783301427378978101.Spec := by
  intro n
  simp only [A172172]

end A172172

/-! ## A172172.P12700084277499336696

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A172172.P12700084277499336696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A172172.P12700084277499336696

namespace A172172

/-- `2*a(n-1)-a(n-3)` -/
def P12700084277499336696.Spec : Prop :=
  ∀ n, P12700084277499336696.a n = A172172 n

end A172172

/-! ## A172172.P9787639181484905779

`A022313(n+1)-8`
-/

namespace A172172.P9787639181484905779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 (n + 1) - 8

end

end A172172.P9787639181484905779

namespace A172172

/-- `A022313(n+1)-8` -/
def P9787639181484905779.Spec : Prop :=
  ∀ n, P9787639181484905779.a n = A172172 n

end A172172

/-! ## A172172.P8577061136300647435

`A022099(n+1)-9`
-/

namespace A172172.P8577061136300647435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 (n + 1) - 9

end

end A172172.P8577061136300647435

namespace A172172

/-- `A022099(n+1)-9` -/
def P8577061136300647435.Spec : Prop :=
  ∀ n, P8577061136300647435.a n = A172172 n

end A172172

/-! ## A172172.P1411583400113262989

`A180671(n)-A187890(n+1)`
-/

namespace A172172.P1411583400113262989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 n - A187890 (n + 1)

end

end A172172.P1411583400113262989

namespace A172172

/-- `A180671(n)-A187890(n+1)` -/
def P1411583400113262989.Spec : Prop :=
  ∀ n, P1411583400113262989.a n = A172172 n

end A172172

/-! ## A172172.P7309054116720081661

`∑[A022323(n+1)%A022324(n)]`
-/

namespace A172172.P7309054116720081661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022323 (n + 1)) (A022324 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172172.P7309054116720081661

namespace A172172

/-- `∑[A022323(n+1)%A022324(n)]` -/
def P7309054116720081661.Spec : Prop :=
  ∀ n, P7309054116720081661.a n = A172172 n

end A172172

/-! ## A172172.P15664572632115383846

`A000045(n)+9*A000071(n+1)`
-/

namespace A172172.P15664572632115383846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 9 * A000071 (n + 1)

end

end A172172.P15664572632115383846

namespace A172172

/-- `A000045(n)+9*A000071(n+1)` -/
def P15664572632115383846.Spec : Prop :=
  ∀ n, P15664572632115383846.a n = A172172 n

end A172172

/-! ## A172172.P17187402732523077512

`A000071(n+2)+8*A000071(n+1)`
-/

namespace A172172.P17187402732523077512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + 8 * A000071 (n + 1)

end

end A172172.P17187402732523077512

namespace A172172

/-- `A000071(n+2)+8*A000071(n+1)` -/
def P17187402732523077512.Spec : Prop :=
  ∀ n, P17187402732523077512.a n = A172172 n

end A172172

/-! ## A172172.P17863522603275042338

`A172173(n+1)+A172173(n)-A000045(n+1)`
-/

namespace A172172.P17863522603275042338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172173 (n + 1) + (A172173 n - A000045 (n + 1))

end

end A172172.P17863522603275042338

namespace A172172

/-- `A172173(n+1)+A172173(n)-A000045(n+1)` -/
def P17863522603275042338.Spec : Prop :=
  ∀ n, P17863522603275042338.a n = A172172 n

end A172172

/-! ## A172172.P2767267067710328993

`∑[A022092(n)]-A022091(n)`
-/

namespace A172172.P2767267067710328993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022091 n

end

end A172172.P2767267067710328993

namespace A172172

/-- `∑[A022092(n)]-A022091(n)` -/
def P2767267067710328993.Spec : Prop :=
  ∀ n, P2767267067710328993.a n = A172172 n

end A172172

/-! ## A172172.P1533823162124978572

`∑[A022099(n)]-A022099(n)`
-/

namespace A172172.P1533823162124978572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022099 n

end

end A172172.P1533823162124978572

namespace A172172

/-- `∑[A022099(n)]-A022099(n)` -/
def P1533823162124978572.Spec : Prop :=
  ∀ n, P1533823162124978572.a n = A172172 n

end A172172

/-! ## A172172.P5412501528375181330

`(∑[A022371(n)]-A022371(n))/2`
-/

namespace A172172.P5412501528375181330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A022371 n : ℤ) : ℚ) / 2

end

end A172172.P5412501528375181330

namespace A172172

/-- `(∑[A022371(n)]-A022371(n))/2` -/
def P5412501528375181330.Spec : Prop :=
  ∀ n, P5412501528375181330.a n = (A172172 n : ℚ)

end A172172

/-!
# A172173: Sums of NE-SW diagonals of triangle A172171.

The programs for A172173, the canonical program `A172173.P7629917966060860026` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172173 has offset 0).

The definition of A172173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172173.P7629917966060860026

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172173

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P7629917966060860026.Spec : Prop :=
  ∀ n, P7629917966060860026.a n = A172173 n

theorem P7629917966060860026.correct : P7629917966060860026.Spec := by
  intro n
  simp only [A172173]

end A172173

/-! ## A172173.P8121213497374627704

`2*a(n-2)+a(n-3)+9` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A172173.P8121213497374627704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 9)

end

end A172173.P8121213497374627704

namespace A172173

/-- `2*a(n-2)+a(n-3)+9` -/
def P8121213497374627704.Spec : Prop :=
  ∀ n, (P8121213497374627704.a n : ℤ) = A172173 n

end A172173

/-! ## A172173.P5136706393530438062

`a(n-2)+9+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A172173.P5136706393530438062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + 9 + (a (n - 2) + a (n - 3))

end

end A172173.P5136706393530438062

namespace A172173

/-- `a(n-2)+9+a(n-2)+a(n-3)` -/
def P5136706393530438062.Spec : Prop :=
  ∀ n, (P5136706393530438062.a n : ℤ) = A172173 n

end A172173

/-! ## A172173.P15089193357933734383

`Δ[A022100(n)-A168213(n+1)]`
-/

namespace A172173.P15089193357933734383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - A168213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172173.P15089193357933734383

namespace A172173

/-- `Δ[A022100(n)-A168213(n+1)]` -/
def P15089193357933734383.Spec : Prop :=
  ∀ n, P15089193357933734383.a n = A172173 n

end A172173

/-! ## A172173.P102326828355068569

`Δ[A022100(n)-A168413(n+1)]`
-/

namespace A172173.P102326828355068569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - A168413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172173.P102326828355068569

namespace A172173

/-- `Δ[A022100(n)-A168413(n+1)]` -/
def P102326828355068569.Spec : Prop :=
  ∀ n, P102326828355068569.a n = A172173 n

end A172173

/-! ## A172173.P14525381002655861247

`Δ[A022314(n)-A168213(n+1)]`
-/

namespace A172173.P14525381002655861247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n - A168213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172173.P14525381002655861247

namespace A172173

/-- `Δ[A022314(n)-A168213(n+1)]` -/
def P14525381002655861247.Spec : Prop :=
  ∀ n, P14525381002655861247.a n = A172173 n

end A172173

/-! ## A172173.P4486905149636307565

`Δ[A022314(n)-A168413(n+1)]`
-/

namespace A172173.P4486905149636307565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n - A168413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172173.P4486905149636307565

namespace A172173

/-- `Δ[A022314(n)-A168413(n+1)]` -/
def P4486905149636307565.Spec : Prop :=
  ∀ n, P4486905149636307565.a n = A172173 n

end A172173

/-!
# A172174: a(n) = 90*a(n-1) + 1, with a(1) = 1.

The programs for A172174, the canonical program `A172174.P15120699162824637930` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172174 has offset 1).

The definition of A172174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `90*a(n-1)+1` (program `A172174.P15120699162824637930`, by `A172174.P15120699162824637930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172174.P15120699162824637930

`90*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172174

/-- `90*a(n-1)+1` -/
def P15120699162824637930.Spec : Prop :=
  ∀ n, (P15120699162824637930.a n : ℤ) = A172174 (n + 1)

theorem P15120699162824637930.correct : P15120699162824637930.Spec := by
  intro n
  simp only [A172174, Nat.add_sub_cancel]

end A172174

/-! ## A172174.P2044497175753791493

`∑[90^n]`
-/

namespace A172174.P2044497175753791493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172174.P2044497175753791493

namespace A172174

/-- `∑[90^n]` -/
def P2044497175753791493.Spec : Prop :=
  ∀ n, (P2044497175753791493.a n : ℤ) = A172174 (n + 1)

end A172174

/-! ## A172174.P12526834056747517367

`lcm(90, a(n-1))+1` with `a(0)=1`
-/

namespace A172174.P12526834056747517367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 90 (a (n - 1)) + 1

end

end A172174.P12526834056747517367

namespace A172174

/-- `lcm(90, a(n-1))+1` -/
def P12526834056747517367.Spec : Prop :=
  ∀ n, (P12526834056747517367.a n : ℤ) = A172174 (n + 1)

end A172174

/-! ## A172174.P16330671476016526785

`xor(1, 90*a(n-1))` with `a(0)=1`
-/

namespace A172174.P16330671476016526785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (90 * a (n - 1))

end

end A172174.P16330671476016526785

namespace A172174

/-- `xor(1, 90*a(n-1))` -/
def P16330671476016526785.Spec : Prop :=
  ∀ n, (P16330671476016526785.a n : ℤ) = A172174 (n + 1)

end A172174

/-! ## A172174.P17605311833341455050

`a(n-1)+90^n` with `a(0)=1`
-/

namespace A172174.P17605311833341455050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 90 ^ n

end

end A172174.P17605311833341455050

namespace A172174

/-- `a(n-1)+90^n` -/
def P17605311833341455050.Spec : Prop :=
  ∀ n, (P17605311833341455050.a n : ℤ) = A172174 (n + 1)

end A172174

/-! ## A172174.P1778599154698733089

`floor(∑[90*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A172174.P1778599154698733089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  90 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172174.P1778599154698733089

namespace A172174

/-- `floor(∑[90*a(n-1)])` -/
def P1778599154698733089.Spec : Prop :=
  ∀ n, (P1778599154698733089.a n : ℤ) = A172174 (n + 1)

end A172174

/-! ## A172174.P6660772764055319560

`or(1, 10*9*a(n-1))` with `a(0)=1`
-/

namespace A172174.P6660772764055319560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (10 * (9 * a (n - 1)))

end

end A172174.P6660772764055319560

namespace A172174

/-- `or(1, 10*9*a(n-1))` -/
def P6660772764055319560.Spec : Prop :=
  ∀ n, (P6660772764055319560.a n : ℤ) = A172174 (n + 1)

end A172174

/-! ## A172174.P16663461643440423644

`1-(a(n-1)-91*a(n-1))` with `a(0)=1`
-/

namespace A172174.P16663461643440423644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - 91 * a (n - 1))

end

end A172174.P16663461643440423644

namespace A172174

/-- `1-(a(n-1)-91*a(n-1))` -/
def P16663461643440423644.Spec : Prop :=
  ∀ n, P16663461643440423644.a n = A172174 (n + 1)

end A172174

/-! ## A172174.P7951166903473832005

`A162849(2*(n+1))-A162849(2*n+1)`
-/

namespace A172174.P7951166903473832005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162849 (2 * (n + 1)) - A162849 (2 * n + 1)

end

end A172174.P7951166903473832005

namespace A172174

/-- `A162849(2*(n+1))-A162849(2*n+1)` -/
def P7951166903473832005.Spec : Prop :=
  ∀ n, P7951166903473832005.a n = A172174 (n + 1)

end A172174

/-!
# A172175: a(n) = 110*a(n-1) + 1.

The programs for A172175, the canonical program `A172175.P131867488449568663` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172175 has offset 1).

The definition of A172175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `110*a(n-1)+1` (program `A172175.P131867488449568663`, by `A172175.P131867488449568663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172175.P131867488449568663

`110*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172175

/-- `110*a(n-1)+1` -/
def P131867488449568663.Spec : Prop :=
  ∀ n, (P131867488449568663.a n : ℤ) = A172175 (n + 1)

theorem P131867488449568663.correct : P131867488449568663.Spec := by
  intro n
  simp only [A172175, Nat.add_sub_cancel]

end A172175

/-! ## A172175.P2025441238266212044

`∑[110^n]`
-/

namespace A172175.P2025441238266212044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  110 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172175.P2025441238266212044

namespace A172175

/-- `∑[110^n]` -/
def P2025441238266212044.Spec : Prop :=
  ∀ n, (P2025441238266212044.a n : ℤ) = A172175 (n + 1)

end A172175

/-! ## A172175.P12418769140993125569

`or(1, 10*11*a(n-1))` with `a(0)=1`
-/

namespace A172175.P12418769140993125569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (10 * (11 * a (n - 1)))

end

end A172175.P12418769140993125569

namespace A172175

/-- `or(1, 10*11*a(n-1))` -/
def P12418769140993125569.Spec : Prop :=
  ∀ n, (P12418769140993125569.a n : ℤ) = A172175 (n + 1)

end A172175

/-! ## A172175.P8259588723613685746

`xor(1, 11*10*a(n-1))` with `a(0)=1`
-/

namespace A172175.P8259588723613685746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (11 * (10 * a (n - 1)))

end

end A172175.P8259588723613685746

namespace A172175

/-- `xor(1, 11*10*a(n-1))` -/
def P8259588723613685746.Spec : Prop :=
  ∀ n, (P8259588723613685746.a n : ℤ) = A172175 (n + 1)

end A172175

/-! ## A172175.P13724498737648237676

`a(n-1)-(A000007(n)-10^n*11^n)` with `a(0)=1`
-/

namespace A172175.P13724498737648237676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - (10 ^ n * 11 ^ n : ℤ))

end

end A172175.P13724498737648237676

namespace A172175

/-- `a(n-1)-(A000007(n)-10^n*11^n)` -/
def P13724498737648237676.Spec : Prop :=
  ∀ n, P13724498737648237676.a n = A172175 (n + 1)

end A172175

/-!
# A172177: Triangle T(n, k) = 1 + abs(n! - k!)*abs(n! - (n-k)!), read by rows.

The programs for A172177, there is no canonical definition to state claims against.
-/

/-! ## A172177.P10797976863660721301

`A321721(A081581(n)-1)`
-/

namespace A172177.P10797976863660721301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 (A081581 n - 1).toNat

end

end A172177.P10797976863660721301

/-! ## A172177.P17798986717815963655

`A026233(2^A128564(n))`
-/

namespace A172177.P17798986717815963655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A128564 n : ℤ))).toNat

end

end A172177.P17798986717815963655

/-! ## A172177.P4695685444382854802

`A062298(2^A128564(n))`
-/

namespace A172177.P4695685444382854802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A128564 n : ℤ))).toNat

end

end A172177.P4695685444382854802

/-! ## A172177.P8240259513034785243

`A026233(2^A285192(n))`
-/

namespace A172177.P8240259513034785243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A285192 n : ℤ))).toNat

end

end A172177.P8240259513034785243

/-! ## A172177.P11777792461657784345

`A062298(2^A285192(n))`
-/

namespace A172177.P11777792461657784345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A285192 n : ℤ))).toNat

end

end A172177.P11777792461657784345

/-!
# A172178: a(n) = 99*n + 1.

The programs for A172178, the canonical program `A172178.P7308245242728204060` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172178 has offset 0).

The definition of A172178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `99*n+1` (program `A172178.P7308245242728204060`, by `A172178.P7308245242728204060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172178.P7308245242728204060

`99*n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172178

/-- `99*n+1` -/
def P7308245242728204060.Spec : Prop :=
  ∀ n, (P7308245242728204060.a n : ℤ) = A172178 n

theorem P7308245242728204060.correct : P7308245242728204060.Spec := by
  intro n
  simp only [A172178]

end A172178

/-!
# A172180: The absolute value of n-th prime of the form 3*n-+1 minus n-th nonprime of the form 3*n-+1.

The programs for A172180, the canonical program `A172180.P2099334084590669202` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172180 has offset 1).

The definition of A172180 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045344, A171993, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172180.P2099334084590669202

`abs(A045344(n+1)-A171993(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A172180

/-- `abs(A045344(n+1)-A171993(n+1))` -/
def P2099334084590669202.Spec : Prop :=
  ∀ n, P2099334084590669202.a n = A172180 (n + 1)

theorem P2099334084590669202.correct : P2099334084590669202.Spec := by
  intro n
  simp only [A172180, Nat.add_sub_cancel]

end A172180

/-! ## A172180.P1952802734491451835

`abs(A171993(n+1)-(A176569(n+1)+A033999(n)))`
-/

namespace A172180.P1952802734491451835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171993 (n + 1) - (A176569 (n + 1) + A033999 n)|

end

end A172180.P1952802734491451835

namespace A172180

/-- `abs(A171993(n+1)-(A176569(n+1)+A033999(n)))` -/
def P1952802734491451835.Spec : Prop :=
  ∀ n, P1952802734491451835.a n = A172180 (n + 1)

end A172180

/-! ## A172180.P13818720164717001582

`abs(A065091(n+1)-A000007(n)-A171993(n+1))`
-/

namespace A172180.P13818720164717001582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065091 (n + 1) - A000007 n - A171993 (n + 1)|

end

end A172180.P13818720164717001582

namespace A172180

/-- `abs(A065091(n+1)-A000007(n)-A171993(n+1))` -/
def P13818720164717001582.Spec : Prop :=
  ∀ n, P13818720164717001582.a n = A172180 (n + 1)

end A172180

/-! ## A172180.P11210868688053631265

`abs(A319524(n+1)%A004139(n+1)-A171993(n+1))`
-/

namespace A172180.P11210868688053631265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A319524 (n + 1)) (A004139 (n + 1)) - A171993 (n + 1)|

end

end A172180.P11210868688053631265

namespace A172180

/-- `abs(A319524(n+1)%A004139(n+1)-A171993(n+1))` -/
def P11210868688053631265.Spec : Prop :=
  ∀ n, P11210868688053631265.a n = A172180 (n + 1)

end A172180

/-! ## A172180.P8494623487469620673

`abs(A171993(n+1)-A151800(A040976(n+2)))`
-/

namespace A172180.P8494623487469620673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171993 (n + 1) - A151800 (A040976 (n + 2)).toNat|

end

end A172180.P8494623487469620673

namespace A172180

/-- `abs(A171993(n+1)-A151800(A040976(n+2)))` -/
def P8494623487469620673.Spec : Prop :=
  ∀ n, P8494623487469620673.a n = A172180 (n + 1)

end A172180

/-! ## A172180.P13497884618267808996

`abs(A171993(n+1)-A151800(A000040(n+2)-2))`
-/

namespace A172180.P13497884618267808996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171993 (n + 1) - A151800 (A000040 (n + 2) - 2).toNat|

end

end A172180.P13497884618267808996

namespace A172180

/-- `abs(A171993(n+1)-A151800(A000040(n+2)-2))` -/
def P13497884618267808996.Spec : Prop :=
  ∀ n, P13497884618267808996.a n = A172180 (n + 1)

end A172180

/-! ## A172180.P5111865587142997111

`abs(record[A135506(n+1)]-A171993(n+1))`
-/

namespace A172180.P5111865587142997111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A171993 (n + 1)|

end

end A172180.P5111865587142997111

namespace A172180

/-- `abs(record[A135506(n+1)]-A171993(n+1))` -/
def P5111865587142997111.Spec : Prop :=
  ∀ n, P5111865587142997111.a n = A172180 (n + 1)

end A172180

/-! ## A172180.P13332123835428642479

`abs(A355944(A065091(n+1))-A171993(n+1))`
-/

namespace A172180.P13332123835428642479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355944 (A065091 (n + 1)).toNat - A171993 (n + 1)|

end

end A172180.P13332123835428642479

namespace A172180

/-- `abs(A355944(A065091(n+1))-A171993(n+1))` -/
def P13332123835428642479.Spec : Prop :=
  ∀ n, P13332123835428642479.a n = A172180 (n + 1)

end A172180

/-! ## A172180.P5974709804934011955

`abs(A045344(n+1)-lt[A055672(n), n²%3])`
-/

namespace A172180.P5974709804934011955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045344 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)|

end

end A172180.P5974709804934011955

namespace A172180

/-- `abs(A045344(n+1)-lt[A055672(n), n²%3])` -/
def P5974709804934011955.Spec : Prop :=
  ∀ n, P5974709804934011955.a n = A172180 (n + 1)

end A172180

/-!
# A172181: Odd composites not of the form 6k + 1.

The programs for A172181, the canonical program `A172181.P7608232075966226173` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172181 has offset 1).

The definition of A172181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172181.P15548906385893533778

`eq[gcd(3, 1-n), A107393(n)]`
-/

namespace A172181.P15548906385893533778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172181.P15548906385893533778

namespace A172181

/-- `eq[gcd(3, 1-n), A107393(n)]` -/
def P15548906385893533778.Spec : Prop :=
  ∀ n, (P15548906385893533778.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P7608232075966226173

`filter[A047270(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A172181

/-- `filter[A047270(n+1), A005171(#)]` -/
def P7608232075966226173.Spec : Prop :=
  ∀ n, P7608232075966226173.a n = A172181 (n + 1)

theorem P7608232075966226173.correct : P7608232075966226173.Spec := by
  intro n
  simp only [A172181, Nat.add_sub_cancel]

end A172181

/-! ## A172181.P14661935185889576220

`filter[A047270(n+1), A066247(#)]`
-/

namespace A172181.P14661935185889576220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A172181.P14661935185889576220

namespace A172181

/-- `filter[A047270(n+1), A066247(#)]` -/
def P14661935185889576220.Spec : Prop :=
  ∀ n, P14661935185889576220.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P556222596358357962

`filter[A047270(n+1), A202238(#)]`
-/

namespace A172181.P556222596358357962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A172181.P556222596358357962

namespace A172181

/-- `filter[A047270(n+1), A202238(#)]` -/
def P556222596358357962.Spec : Prop :=
  ∀ n, P556222596358357962.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P18252818509102477712

`filter[A047270(n+1), A292438(#)]`
-/

namespace A172181.P18252818509102477712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A172181.P18252818509102477712

namespace A172181

/-- `filter[A047270(n+1), A292438(#)]` -/
def P18252818509102477712.Spec : Prop :=
  ∀ n, P18252818509102477712.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P15624852866991801877

`filter[A047270(n+1), A323162(#)]`
-/

namespace A172181.P15624852866991801877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A172181.P15624852866991801877

namespace A172181

/-- `filter[A047270(n+1), A323162(#)]` -/
def P15624852866991801877.Spec : Prop :=
  ∀ n, P15624852866991801877.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P11524310112632956188

`∩[A014076(n+1), A047270(n+1)]`
-/

namespace A172181.P11524310112632956188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172181.P11524310112632956188

namespace A172181

/-- `∩[A014076(n+1), A047270(n+1)]` -/
def P11524310112632956188.Spec : Prop :=
  ∀ n, (P11524310112632956188.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P6908195037298499384

`∩[A014076(n+1), A047249(n+1)]`
-/

namespace A172181.P6908195037298499384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172181.P6908195037298499384

namespace A172181

/-- `∩[A014076(n+1), A047249(n+1)]` -/
def P6908195037298499384.Spec : Prop :=
  ∀ n, (P6908195037298499384.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P124795724985175879

`∩[or(1, 3*n+2), A002808(n+1)]`
-/

namespace A172181.P124795724985175879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172181.P124795724985175879

namespace A172181

/-- `∩[or(1, 3*n+2), A002808(n+1)]` -/
def P124795724985175879.Spec : Prop :=
  ∀ n, (P124795724985175879.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P7706343887230153785

`∩[or(1, 3*n)+2, A018252(n+1)]`
-/

namespace A172181.P7706343887230153785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172181.P7706343887230153785

namespace A172181

/-- `∩[or(1, 3*n)+2, A018252(n+1)]` -/
def P7706343887230153785.Spec : Prop :=
  ∀ n, (P7706343887230153785.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P7958444058781868437

`eq[A058281(n), A107393(n)]`
-/

namespace A172181.P7958444058781868437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172181.P7958444058781868437

namespace A172181

/-- `eq[A058281(n), A107393(n)]` -/
def P7958444058781868437.Spec : Prop :=
  ∀ n, (P7958444058781868437.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P7287414177910485027

`∩[A014076(n+1), A047254(n+1)]`
-/

namespace A172181.P7287414177910485027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172181.P7287414177910485027

namespace A172181

/-- `∩[A014076(n+1), A047254(n+1)]` -/
def P7287414177910485027.Spec : Prop :=
  ∀ n, (P7287414177910485027.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P12369082239635940159

`∩[A014076(n+1), A047271(n+1)]`
-/

namespace A172181.P12369082239635940159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172181.P12369082239635940159

namespace A172181

/-- `∩[A014076(n+1), A047271(n+1)]` -/
def P12369082239635940159.Spec : Prop :=
  ∀ n, (P12369082239635940159.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P2830431003133701371

`∩[A047270(n+1), A039769(n+1)]`
-/

namespace A172181.P2830431003133701371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172181.P2830431003133701371

namespace A172181

/-- `∩[A047270(n+1), A039769(n+1)]` -/
def P2830431003133701371.Spec : Prop :=
  ∀ n, (P2830431003133701371.a n : ℤ) = A172181 (n + 1)

end A172181

/-! ## A172181.P3350305107154030459

`filter[A047247(2*(n+1)), A005171(#)]`
-/

namespace A172181.P3350305107154030459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172181.P3350305107154030459

namespace A172181

/-- `filter[A047247(2*(n+1)), A005171(#)]` -/
def P3350305107154030459.Spec : Prop :=
  ∀ n, P3350305107154030459.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P17879758734464440165

`filter[A047247(2*(n+1)), A066247(#)]`
-/

namespace A172181.P17879758734464440165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A172181.P17879758734464440165

namespace A172181

/-- `filter[A047247(2*(n+1)), A066247(#)]` -/
def P17879758734464440165.Spec : Prop :=
  ∀ n, P17879758734464440165.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P10910838501947553825

`filter[A047247(2*(n+1)), A202238(#)]`
-/

namespace A172181.P10910838501947553825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A172181.P10910838501947553825

namespace A172181

/-- `filter[A047247(2*(n+1)), A202238(#)]` -/
def P10910838501947553825.Spec : Prop :=
  ∀ n, P10910838501947553825.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P6007685151332372399

`filter[A047250(2*(n+1)), A005171(#)]`
-/

namespace A172181.P6007685151332372399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172181.P6007685151332372399

namespace A172181

/-- `filter[A047250(2*(n+1)), A005171(#)]` -/
def P6007685151332372399.Spec : Prop :=
  ∀ n, P6007685151332372399.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P112131592411884665

`filter[A047250(2*(n+1)), A066247(#)]`
-/

namespace A172181.P112131592411884665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A172181.P112131592411884665

namespace A172181

/-- `filter[A047250(2*(n+1)), A066247(#)]` -/
def P112131592411884665.Spec : Prop :=
  ∀ n, P112131592411884665.a n = A172181 (n + 1)

end A172181

/-! ## A172181.P5834506667355439882

`filter[A047250(2*(n+1)), A202238(#)]`
-/

namespace A172181.P5834506667355439882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A172181.P5834506667355439882

namespace A172181

/-- `filter[A047250(2*(n+1)), A202238(#)]` -/
def P5834506667355439882.Spec : Prop :=
  ∀ n, P5834506667355439882.a n = A172181 (n + 1)

end A172181

/-!
# A172182: Nonprimes of the form 6k + 1 or 6k + 2.

The programs for A172182, the canonical program `A172182.P2648138099945174090` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172182 has offset 1).

The definition of A172182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172182.P2648138099945174090

`filter[A047239(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A172182

/-- `filter[A047239(n+1), A005171(#)]` -/
def P2648138099945174090.Spec : Prop :=
  ∀ n, P2648138099945174090.a n = A172182 (n + 1)

theorem P2648138099945174090.correct : P2648138099945174090.Spec := by
  intro n
  simp only [A172182, Nat.add_sub_cancel]

end A172182

/-! ## A172182.P2608755799274991273

`filter[A047239(n+1), A292438(#)]`
-/

namespace A172182.P2608755799274991273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A172182.P2608755799274991273

namespace A172182

/-- `filter[A047239(n+1), A292438(#)]` -/
def P2608755799274991273.Spec : Prop :=
  ∀ n, P2608755799274991273.a n = A172182 (n + 1)

end A172182

/-! ## A172182.P5807854197996104023

`∩[xor(1, 3*n), A018252(n+1)]`
-/

namespace A172182.P5807854197996104023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P5807854197996104023

namespace A172182

/-- `∩[xor(1, 3*n), A018252(n+1)]` -/
def P5807854197996104023.Spec : Prop :=
  ∀ n, (P5807854197996104023.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P11046529710899101551

`∩[A047239(n+1), A171993(n+1)]`
-/

namespace A172182.P11046529710899101551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P11046529710899101551

namespace A172182

/-- `∩[A047239(n+1), A171993(n+1)]` -/
def P11046529710899101551.Spec : Prop :=
  ∀ n, (P11046529710899101551.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P9289223040220101507

`∩[A047240(n+1), A171993(n+1)]`
-/

namespace A172182.P9289223040220101507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P9289223040220101507

namespace A172182

/-- `∩[A047240(n+1), A171993(n+1)]` -/
def P9289223040220101507.Spec : Prop :=
  ∀ n, (P9289223040220101507.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P11111088276766197812

`∩[A047245(n+1), A171993(n+1)]`
-/

namespace A172182.P11111088276766197812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P11111088276766197812

namespace A172182

/-- `∩[A047245(n+1), A171993(n+1)]` -/
def P11111088276766197812.Spec : Prop :=
  ∀ n, (P11111088276766197812.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P9692088986273140842

`∩[A047246(n+1), A171993(n+1)]`
-/

namespace A172182.P9692088986273140842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P9692088986273140842

namespace A172182

/-- `∩[A047246(n+1), A171993(n+1)]` -/
def P9692088986273140842.Spec : Prop :=
  ∀ n, (P9692088986273140842.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P10143819148591303756

`∩[A047239(n+1), A257586(n+1)]`
-/

namespace A172182.P10143819148591303756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P10143819148591303756

namespace A172182

/-- `∩[A047239(n+1), A257586(n+1)]` -/
def P10143819148591303756.Spec : Prop :=
  ∀ n, (P10143819148591303756.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P11582406960807721621

`∩[A047239(n+1), A164276(n+1)]`
-/

namespace A172182.P11582406960807721621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P11582406960807721621

namespace A172182

/-- `∩[A047239(n+1), A164276(n+1)]` -/
def P11582406960807721621.Spec : Prop :=
  ∀ n, (P11582406960807721621.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P4869666188232431941

`∩[A018252(n+1), A047239(n+1)]`
-/

namespace A172182.P4869666188232431941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P4869666188232431941

namespace A172182

/-- `∩[A018252(n+1), A047239(n+1)]` -/
def P4869666188232431941.Spec : Prop :=
  ∀ n, (P4869666188232431941.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P8592023068782621504

`∩[A047239(n+1), A056653(n+1)]`
-/

namespace A172182.P8592023068782621504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P8592023068782621504

namespace A172182

/-- `∩[A047239(n+1), A056653(n+1)]` -/
def P8592023068782621504.Spec : Prop :=
  ∀ n, (P8592023068782621504.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P6644476296239573602

`∩[A047239(n+1), A141468(n+1)]`
-/

namespace A172182.P6644476296239573602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172182.P6644476296239573602

namespace A172182

/-- `∩[A047239(n+1), A141468(n+1)]` -/
def P6644476296239573602.Spec : Prop :=
  ∀ n, (P6644476296239573602.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P16822462021392505632

`record[A191558(xor(1, 3*n))]`
-/

namespace A172182.P16822462021392505632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (Nat.xor 1 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172182.P16822462021392505632

namespace A172182

/-- `record[A191558(xor(1, 3*n))]` -/
def P16822462021392505632.Spec : Prop :=
  ∀ n, P16822462021392505632.a n = A172182 (n + 1)

end A172182

/-! ## A172182.P11361968601146280492

`record[A005451(xor(1, 3*(n+1)))]`
-/

namespace A172182.P11361968601146280492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (Nat.xor 1 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172182.P11361968601146280492

namespace A172182

/-- `record[A005451(xor(1, 3*(n+1)))]` -/
def P11361968601146280492.Spec : Prop :=
  ∀ n, P11361968601146280492.a n = A172182 (n + 1)

end A172182

/-! ## A172182.P2454546469122953564

`eq[A055672(n)+1, round(sin(n%6))]`
-/

namespace A172182.P2454546469122953564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172182.P2454546469122953564

namespace A172182

/-- `eq[A055672(n)+1, round(sin(n%6))]` -/
def P2454546469122953564.Spec : Prop :=
  ∀ n, (P2454546469122953564.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P1769152672045678311

`record[A181569(xor(1, n)+2*n+5)]`
-/

namespace A172182.P1769152672045678311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (Nat.xor 1 n + (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172182.P1769152672045678311

namespace A172182

/-- `record[A181569(xor(1, n)+2*n+5)]` -/
def P1769152672045678311.Spec : Prop :=
  ∀ n, P1769152672045678311.a n = A172182 (n + 1)

end A172182

/-! ## A172182.P8495580502451873446

`eq[n, A103164(A030118(n))]`
-/

namespace A172182.P8495580502451873446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (A030118 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172182.P8495580502451873446

namespace A172182

/-- `eq[n, A103164(A030118(n))]` -/
def P8495580502451873446.Spec : Prop :=
  ∀ n, (P8495580502451873446.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P10089020565941389955

`eq[A030118(n), A282462(n)]`
-/

namespace A172182.P10089020565941389955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172182.P10089020565941389955

namespace A172182

/-- `eq[A030118(n), A282462(n)]` -/
def P10089020565941389955.Spec : Prop :=
  ∀ n, (P10089020565941389955.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P1135563160657282326

`eq[A109362(n), A370482(n)]`
-/

namespace A172182.P1135563160657282326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172182.P1135563160657282326

namespace A172182

/-- `eq[A109362(n), A370482(n)]` -/
def P1135563160657282326.Spec : Prop :=
  ∀ n, (P1135563160657282326.a n : ℤ) = A172182 (n + 1)

end A172182

/-! ## A172182.P1510572282066568348

`record[A100050(A018252(n+1))]`
-/

namespace A172182.P1510572282066568348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172182.P1510572282066568348

namespace A172182

/-- `record[A100050(A018252(n+1))]` -/
def P1510572282066568348.Spec : Prop :=
  ∀ n, P1510572282066568348.a n = A172182 (n + 1)

end A172182

/-!
# A172183: a(n) is the smallest prime of the form p^q+n, where p and q are prime, or zero if no such prime exists.

The programs for A172183, there is no canonical definition to state claims against.
-/

/-! ## A172183.P12588524978223337433

`A088213(n+1)%A088240(A059154(n))`
-/

namespace A172183.P12588524978223337433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088213 (n + 1)) (A088240 (A059154 n).toNat)

end

end A172183.P12588524978223337433

/-!
# A172185: (9,11) Pascal triangle.

The programs for A172185, the canonical program `A172185.P1009825035298796352` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172185 has offset 0).

The definition of A172185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172185.P1009825035298796352

`5*A029600(n)-A095666(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A172185

/-- `5*A029600(n)-A095666(n)` -/
def P1009825035298796352.Spec : Prop :=
  ∀ n, P1009825035298796352.a n = A172185 n

theorem P1009825035298796352.correct : P1009825035298796352.Spec := by
  intro n
  simp only [A172185]

end A172185

/-! ## A172185.P6907578237058937203

`lcm(A134058(n), A135089(n))-A037012(n)`
-/

namespace A172185.P6907578237058937203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A134058 n) (A135089 n) : ℤ) - A037012 n

end

end A172185.P6907578237058937203

namespace A172185

/-- `lcm(A134058(n), A135089(n))-A037012(n)` -/
def P6907578237058937203.Spec : Prop :=
  ∀ n, P6907578237058937203.a n = A172185 n

end A172185

/-! ## A172185.P12558885281347772650

`A163300(A029600(n))+A135089(n)`
-/

namespace A172185.P12558885281347772650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A029600 n).toNat + A135089 n

end

end A172185.P12558885281347772650

namespace A172185

/-- `A163300(A029600(n))+A135089(n)` -/
def P12558885281347772650.Spec : Prop :=
  ∀ n, P12558885281347772650.a n = A172185 n

end A172185

/-! ## A172185.P14347234352228890347

`A008587(A029600(n))-A095666(n)`
-/

namespace A172185.P14347234352228890347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A029600 n).toNat - A095666 n

end

end A172185.P14347234352228890347

namespace A172185

/-- `A008587(A029600(n))-A095666(n)` -/
def P14347234352228890347.Spec : Prop :=
  ∀ n, P14347234352228890347.a n = A172185 n

end A172185

/-! ## A172185.P833300034671049543

`A163300(A029618(n)+A008482(n))+A135089(n)`
-/

namespace A172185.P833300034671049543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A029618 n + A008482 n).toNat + A135089 n

end

end A172185.P833300034671049543

namespace A172185

/-- `A163300(A029618(n)+A008482(n))+A135089(n)` -/
def P833300034671049543.Spec : Prop :=
  ∀ n, P833300034671049543.a n = A172185 n

end A172185

/-! ## A172185.P12488704861919469138

`A163300(A029618(n)-A037012(n))+A135089(n)`
-/

namespace A172185.P12488704861919469138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A029618 n - A037012 n).toNat + A135089 n

end

end A172185.P12488704861919469138

namespace A172185

/-- `A163300(A029618(n)-A037012(n))+A135089(n)` -/
def P12488704861919469138.Spec : Prop :=
  ∀ n, P12488704861919469138.a n = A172185 n

end A172185

/-! ## A172185.P17606269529565969646

`A195140(A132200(n))+A008482(n)`
-/

namespace A172185.P17606269529565969646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A132200 n).toNat + A008482 n

end

end A172185.P17606269529565969646

namespace A172185

/-- `A195140(A132200(n))+A008482(n)` -/
def P17606269529565969646.Spec : Prop :=
  ∀ n, P17606269529565969646.a n = A172185 n

end A172185

/-! ## A172185.P17186518792915155156

`A195140(A132200(n))-A037012(n)`
-/

namespace A172185.P17186518792915155156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A132200 n).toNat - A037012 n

end

end A172185.P17186518792915155156

namespace A172185

/-- `A195140(A132200(n))-A037012(n)` -/
def P17186518792915155156.Spec : Prop :=
  ∀ n, P17186518792915155156.a n = A172185 n

end A172185

/-! ## A172185.P4510910740079813272

`A163300(A132200(n))+A093560(A061579(n))`
-/

namespace A172185.P4510910740079813272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A132200 n).toNat + A093560 (A061579 n).toNat

end

end A172185.P4510910740079813272

namespace A172185

/-- `A163300(A132200(n))+A093560(A061579(n))` -/
def P4510910740079813272.Spec : Prop :=
  ∀ n, P4510910740079813272.a n = A172185 n

end A172185

/-!
# A172186: Numbers k such that k, k+1 and 2*k+1 are squarefree.

The programs for A172186, the canonical program `A172186.P17237444168487211502` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172186 has offset 1).

The definition of A172186 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172186.P17237444168487211502

`(A179017(n+1)-1)/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A172186

/-- `(A179017(n+1)-1)/2` -/
def P17237444168487211502.Spec : Prop :=
  ∀ n, P17237444168487211502.a n = (A172186 (n + 1) : ℚ)

end A172186

/-! ## A172186.P11533847552916655008

`A179019(n+1)-1`
-/

namespace A172186.P11533847552916655008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179019 (n + 1) - 1

end

end A172186.P11533847552916655008

namespace A172186

/-- `A179019(n+1)-1` -/
def P11533847552916655008.Spec : Prop :=
  ∀ n, P11533847552916655008.a n = A172186 (n + 1)

end A172186

/-! ## A172186.P14824066173493011771

`floor(A179017(n+1)/2)`
-/

namespace A172186.P14824066173493011771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179017 (n + 1) : ℚ) / 2⌋

end

end A172186.P14824066173493011771

namespace A172186

/-- `floor(A179017(n+1)/2)` -/
def P14824066173493011771.Spec : Prop :=
  ∀ n, P14824066173493011771.a n = A172186 (n + 1)

end A172186

/-! ## A172186.P11351312334880194752

`A273943(A179017(n+1)-1)`
-/

namespace A172186.P11351312334880194752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A179017 (n + 1) - 1).toNat

end

end A172186.P11351312334880194752

namespace A172186

/-- `A273943(A179017(n+1)-1)` -/
def P11351312334880194752.Spec : Prop :=
  ∀ n, P11351312334880194752.a n = A172186 (n + 1)

end A172186

/-! ## A172186.P1794251595081938532

`A179017(n+1)%A179019(n+1)`
-/

namespace A172186.P1794251595081938532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179017 (n + 1)) (A179019 (n + 1))

end

end A172186.P1794251595081938532

namespace A172186

/-- `A179017(n+1)%A179019(n+1)` -/
def P1794251595081938532.Spec : Prop :=
  ∀ n, P1794251595081938532.a n = A172186 (n + 1)

end A172186

/-! ## A172186.P7671130170828677939

`∩[A007674(n+1), A117204(n+1)]`
-/

namespace A172186.P7671130170828677939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P7671130170828677939

namespace A172186

/-- `∩[A007674(n+1), A117204(n+1)]` -/
def P7671130170828677939.Spec : Prop :=
  ∀ n, (P7671130170828677939.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P1440968692809231516

`∩[A081083(n+1), A117204(n+1)]`
-/

namespace A172186.P1440968692809231516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P1440968692809231516

namespace A172186

/-- `∩[A081083(n+1), A117204(n+1)]` -/
def P1440968692809231516.Spec : Prop :=
  ∀ n, (P1440968692809231516.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P10515644653427396365

`∩[A117204(n+1), A344312(n+1)]`
-/

namespace A172186.P10515644653427396365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P10515644653427396365

namespace A172186

/-- `∩[A117204(n+1), A344312(n+1)]` -/
def P10515644653427396365.Spec : Prop :=
  ∀ n, (P10515644653427396365.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P1155785026511603778

`∩[A117204(n+1), A344314(n+1)]`
-/

namespace A172186.P1155785026511603778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P1155785026511603778

namespace A172186

/-- `∩[A117204(n+1), A344314(n+1)]` -/
def P1155785026511603778.Spec : Prop :=
  ∀ n, (P1155785026511603778.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P2460894834994700013

`∩[A117204(n+1), A358817(n+1)]`
-/

namespace A172186.P2460894834994700013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P2460894834994700013

namespace A172186

/-- `∩[A117204(n+1), A358817(n+1)]` -/
def P2460894834994700013.Spec : Prop :=
  ∀ n, (P2460894834994700013.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P34976513170799445

`∩[A117204(n+1), A398168(n+1)]`
-/

namespace A172186.P34976513170799445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P34976513170799445

namespace A172186

/-- `∩[A117204(n+1), A398168(n+1)]` -/
def P34976513170799445.Spec : Prop :=
  ∀ n, (P34976513170799445.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P11317080316066888455

`∩[A117204(n+1), A398170(n+1)]`
-/

namespace A172186.P11317080316066888455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P11317080316066888455

namespace A172186

/-- `∩[A117204(n+1), A398170(n+1)]` -/
def P11317080316066888455.Spec : Prop :=
  ∀ n, (P11317080316066888455.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P8959915931677921347

`∩[A079709(n+1), A117204(n+1)]`
-/

namespace A172186.P8959915931677921347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P8959915931677921347

namespace A172186

/-- `∩[A079709(n+1), A117204(n+1)]` -/
def P8959915931677921347.Spec : Prop :=
  ∀ n, (P8959915931677921347.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P3133283561940136459

`∩[A007674(n+1), A264387(n+1)]`
-/

namespace A172186.P3133283561940136459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172186.P3133283561940136459

namespace A172186

/-- `∩[A007674(n+1), A264387(n+1)]` -/
def P3133283561940136459.Spec : Prop :=
  ∀ n, (P3133283561940136459.a n : ℤ) = A172186 (n + 1)

end A172186

/-! ## A172186.P9589844501505541060

`A010848(A179019(n+1))`
-/

namespace A172186.P9589844501505541060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A179019 (n + 1)).toNat

end

end A172186.P9589844501505541060

namespace A172186

/-- `A010848(A179019(n+1))` -/
def P9589844501505541060.Spec : Prop :=
  ∀ n, P9589844501505541060.a n = A172186 (n + 1)

end A172186

/-! ## A172186.P10501642183071702861

`A004524(A179017(n+1))`
-/

namespace A172186.P10501642183071702861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A179017 (n + 1)).toNat

end

end A172186.P10501642183071702861

namespace A172186

/-- `A004524(A179017(n+1))` -/
def P10501642183071702861.Spec : Prop :=
  ∀ n, P10501642183071702861.a n = A172186 (n + 1)

end A172186

/-! ## A172186.P13038718537836485307

`A032742(A179017(n+1)-1)`
-/

namespace A172186.P13038718537836485307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A179017 (n + 1) - 1).toNat

end

end A172186.P13038718537836485307

namespace A172186

/-- `A032742(A179017(n+1)-1)` -/
def P13038718537836485307.Spec : Prop :=
  ∀ n, P13038718537836485307.a n = A172186 (n + 1)

end A172186

/-! ## A172186.P10959527565090473892

`A142150(A179017(n+1)-1)`
-/

namespace A172186.P10959527565090473892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A179017 (n + 1) - 1).toNat

end

end A172186.P10959527565090473892

namespace A172186

/-- `A142150(A179017(n+1)-1)` -/
def P10959527565090473892.Spec : Prop :=
  ∀ n, P10959527565090473892.a n = A172186 (n + 1)

end A172186

/-!
# A172187: Numbers k such that k and k+1 are squarefree but 2*k+1 is not.

The programs for A172187, the canonical program `A172187.P10529955628343830800` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172187 has offset 1).

The definition of A172187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172187.P10529955628343830800

`eq[A105570(n+1), A105597(2*n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A172187

/-- `eq[A105570(n+1), A105597(2*n+1)]` -/
def P10529955628343830800.Spec : Prop :=
  ∀ n, (P10529955628343830800.a n : ℤ) = A172187 (n + 1)

theorem P10529955628343830800.correct : P10529955628343830800.Spec := by
  intro n
  simp only [A172187, Nat.add_sub_cancel]

end A172187

/-! ## A172187.P5238225832271479554

`eq[tan(A105597(2*n+1)), A087049(n+1)]`
-/

namespace A172187.P5238225832271479554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A105597 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A172187.P5238225832271479554

namespace A172187

/-- `eq[tan(A105597(2*n+1)), A087049(n+1)]` -/
def P5238225832271479554.Spec : Prop :=
  ∀ n, (P5238225832271479554.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P17734887271819553370

`eq[A061538(n+1), A383546(n+1)]`
-/

namespace A172187.P17734887271819553370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P17734887271819553370

namespace A172187

/-- `eq[A061538(n+1), A383546(n+1)]` -/
def P17734887271819553370.Spec : Prop :=
  ∀ n, (P17734887271819553370.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P9174123122145910321

`eq[A285328(n+1), A383546(n+1)]`
-/

namespace A172187.P9174123122145910321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P9174123122145910321

namespace A172187

/-- `eq[A285328(n+1), A383546(n+1)]` -/
def P9174123122145910321.Spec : Prop :=
  ∀ n, (P9174123122145910321.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P6641880010761149226

`eq[A351308(n+1), A383546(n+1)]`
-/

namespace A172187.P6641880010761149226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P6641880010761149226

namespace A172187

/-- `eq[A351308(n+1), A383546(n+1)]` -/
def P6641880010761149226.Spec : Prop :=
  ∀ n, (P6641880010761149226.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P17305547157221084401

`eq[A351309(n+1), A383546(n+1)]`
-/

namespace A172187.P17305547157221084401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P17305547157221084401

namespace A172187

/-- `eq[A351309(n+1), A383546(n+1)]` -/
def P17305547157221084401.Spec : Prop :=
  ∀ n, (P17305547157221084401.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P16356270753938002171

`eq[A351310(n+1), A383546(n+1)]`
-/

namespace A172187.P16356270753938002171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P16356270753938002171

namespace A172187

/-- `eq[A351310(n+1), A383546(n+1)]` -/
def P16356270753938002171.Spec : Prop :=
  ∀ n, (P16356270753938002171.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P11550564301669443650

`eq[A351311(n+1), A383546(n+1)]`
-/

namespace A172187.P11550564301669443650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P11550564301669443650

namespace A172187

/-- `eq[A351311(n+1), A383546(n+1)]` -/
def P11550564301669443650.Spec : Prop :=
  ∀ n, (P11550564301669443650.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P11418788225957012079

`eq[A351313(n+1), A383546(n+1)]`
-/

namespace A172187.P11418788225957012079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P11418788225957012079

namespace A172187

/-- `eq[A351313(n+1), A383546(n+1)]` -/
def P11418788225957012079.Spec : Prop :=
  ∀ n, (P11418788225957012079.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P18268757630374597896

`eq[A363919(n+1), A383546(n+1)]`
-/

namespace A172187.P18268757630374597896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P18268757630374597896

namespace A172187

/-- `eq[A363919(n+1), A383546(n+1)]` -/
def P18268757630374597896.Spec : Prop :=
  ∀ n, (P18268757630374597896.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P11641556665603385183

`eq[A007504(A072906(n+1)), A072906(2*n+1)]`
-/

namespace A172187.P11641556665603385183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A072906 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072906 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P11641556665603385183

namespace A172187

/-- `eq[A007504(A072906(n+1)), A072906(2*n+1)]` -/
def P11641556665603385183.Spec : Prop :=
  ∀ n, (P11641556665603385183.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P2154125785182908260

`eq[A178649(n+1), A383546(n+1)]`
-/

namespace A172187.P2154125785182908260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P2154125785182908260

namespace A172187

/-- `eq[A178649(n+1), A383546(n+1)]` -/
def P2154125785182908260.Spec : Prop :=
  ∀ n, (P2154125785182908260.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P9049950469753620729

`eq[log(A285736(2*n+1)), A008966(2*n+1)]`
-/

namespace A172187.P9049950469753620729
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A285736 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A172187.P9049950469753620729

namespace A172187

/-- `eq[log(A285736(2*n+1)), A008966(2*n+1)]` -/
def P9049950469753620729.Spec : Prop :=
  ∀ n, (P9049950469753620729.a n : ℤ) = A172187 (n + 1)

end A172187

/-! ## A172187.P849622928124679393

`eq[A001221(A285718(2*(n+1))), A285736(2*n+1)]`
-/

namespace A172187.P849622928124679393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285718 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285736 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P849622928124679393

namespace A172187

/-- `eq[A001221(A285718(2*(n+1))), A285736(2*n+1)]` -/
def P849622928124679393.Spec : Prop :=
  ∀ n, (P849622928124679393.a n : ℤ) = A172187 (n + 1)

end A172187

/-!
# A172188: Partial sums of primes of the form 3*k-1.

The programs for A172188, the canonical program `A172188.P5979725789800716210` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172188 has offset 1).

The definition of A172188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172188.P5979725789800716210

`∑[p?[3*n-1]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172188

/-- `∑[p?[3*n-1]]` -/
def P5979725789800716210.Spec : Prop :=
  ∀ n, P5979725789800716210.a n = A172188 (n + 1)

theorem P5979725789800716210.correct : P5979725789800716210.Spec := by
  intro n
  simp only [A172188, Nat.add_sub_cancel]

end A172188

/-! ## A172188.P18132937244229427550

`∑[∏{d}[p?[3*n+2], #]]`
-/

namespace A172188.P18132937244229427550
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P18132937244229427550

namespace A172188

/-- `∑[∏{d}[p?[3*n+2], #]]` -/
def P18132937244229427550.Spec : Prop :=
  ∀ n, (P18132937244229427550.a n : ℤ) = A172188 (n + 1)

end A172188

/-! ## A172188.P12194450776563939974

`p?[a(n-1)+3]+a(n-1)` with `a(0)=2`
-/

namespace A172188.P12194450776563939974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + a (n - 1)

end

end A172188.P12194450776563939974

namespace A172188

/-- `p?[a(n-1)+3]+a(n-1)` -/
def P12194450776563939974.Spec : Prop :=
  ∀ n, (P12194450776563939974.a n : ℤ) = A172188 (n + 1)

end A172188

/-! ## A172188.P2736648763960167322

`∑[A003627(n+1)]`
-/

namespace A172188.P2736648763960167322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P2736648763960167322

namespace A172188

/-- `∑[A003627(n+1)]` -/
def P2736648763960167322.Spec : Prop :=
  ∀ n, P2736648763960167322.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P15599251373070128989

`∑[A045410(n+1)]-1`
-/

namespace A172188.P15599251373070128989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A172188.P15599251373070128989

namespace A172188

/-- `∑[A045410(n+1)]-1` -/
def P15599251373070128989.Spec : Prop :=
  ∀ n, P15599251373070128989.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P13520106292320885034

`∑[A112774(n+1)/2]`
-/

namespace A172188.P13520106292320885034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112774 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P13520106292320885034

namespace A172188

/-- `∑[A112774(n+1)/2]` -/
def P13520106292320885034.Spec : Prop :=
  ∀ n, P13520106292320885034.a n = (A172188 (n + 1) : ℚ)

end A172188

/-! ## A172188.P12955624527728634362

`A007528(n)+a(n-1)` with `a(0)=2`
-/

namespace A172188.P12955624527728634362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007528 n + a (n - 1)

end

end A172188.P12955624527728634362

namespace A172188

/-- `A007528(n)+a(n-1)` -/
def P12955624527728634362.Spec : Prop :=
  ∀ n, P12955624527728634362.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P12557211046706048688

`A172113(n+1)-A172235(n+1)`
-/

namespace A172188.P12557211046706048688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172113 (n + 1) - A172235 (n + 1)

end

end A172188.P12557211046706048688

namespace A172188

/-- `A172113(n+1)-A172235(n+1)` -/
def P12557211046706048688.Spec : Prop :=
  ∀ n, P12557211046706048688.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P7544035191526801882

`∑[A007528(n+1)]+2-A007528(n+1)`
-/

namespace A172188.P7544035191526801882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A007528 (n + 1))

end

end A172188.P7544035191526801882

namespace A172188

/-- `∑[A007528(n+1)]+2-A007528(n+1)` -/
def P7544035191526801882.Spec : Prop :=
  ∀ n, P7544035191526801882.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P15856165938292891782

`∑[A045309(n+2)]-1`
-/

namespace A172188.P15856165938292891782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A172188.P15856165938292891782

namespace A172188

/-- `∑[A045309(n+2)]-1` -/
def P15856165938292891782.Spec : Prop :=
  ∀ n, P15856165938292891782.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P8003755164233044886

`∑[A000040(A091177(n+1))]`
-/

namespace A172188.P8003755164233044886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P8003755164233044886

namespace A172188

/-- `∑[A000040(A091177(n+1))]` -/
def P8003755164233044886.Spec : Prop :=
  ∀ n, P8003755164233044886.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P18364976753458732923

`∑[A000040(A133677(n+2))]-1`
-/

namespace A172188.P18364976753458732923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A133677 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A172188.P18364976753458732923

namespace A172188

/-- `∑[A000040(A133677(n+2))]-1` -/
def P18364976753458732923.Spec : Prop :=
  ∀ n, P18364976753458732923.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P6165351676817655002

`∑[record[A006530(3*n+2)]]`
-/

namespace A172188.P6165351676817655002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P6165351676817655002

namespace A172188

/-- `∑[record[A006530(3*n+2)]]` -/
def P6165351676817655002.Spec : Prop :=
  ∀ n, P6165351676817655002.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P12297056249127159434

`∑[record[A020639(3*n+2)]]`
-/

namespace A172188.P12297056249127159434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P12297056249127159434

namespace A172188

/-- `∑[record[A020639(3*n+2)]]` -/
def P12297056249127159434.Spec : Prop :=
  ∀ n, P12297056249127159434.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P14543424442924460820

`∑[A006530(A112774(n+1))]`
-/

namespace A172188.P14543424442924460820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P14543424442924460820

namespace A172188

/-- `∑[A006530(A112774(n+1))]` -/
def P14543424442924460820.Spec : Prop :=
  ∀ n, P14543424442924460820.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P17727425062416533812

`∑[A016789(A024893(n+1))]`
-/

namespace A172188.P17727425062416533812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A024893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P17727425062416533812

namespace A172188

/-- `∑[A016789(A024893(n+1))]` -/
def P17727425062416533812.Spec : Prop :=
  ∀ n, P17727425062416533812.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P10718628691659740109

`∑[record[A000010(A016777(n)+1)]+1]`
-/

namespace A172188.P10718628691659740109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A016777 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P10718628691659740109

namespace A172188

/-- `∑[record[A000010(A016777(n)+1)]+1]` -/
def P10718628691659740109.Spec : Prop :=
  ∀ n, P10718628691659740109.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P13082650986808310498

`∑[record[A051544(2*n+1)]]-2`
-/

namespace A172188.P13082650986808310498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051544 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A172188.P13082650986808310498

namespace A172188

/-- `∑[record[A051544(2*n+1)]]-2` -/
def P13082650986808310498.Spec : Prop :=
  ∀ n, P13082650986808310498.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P12508350544625057445

`∑[record[A331634(3*n+2)]]`
-/

namespace A172188.P12508350544625057445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331634 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P12508350544625057445

namespace A172188

/-- `∑[record[A331634(3*n+2)]]` -/
def P12508350544625057445.Spec : Prop :=
  ∀ n, P12508350544625057445.a n = A172188 (n + 1)

end A172188

/-! ## A172188.P10388485755273973219

`∑[record[A014963(3*n+2)]]`
-/

namespace A172188.P10388485755273973219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172188.P10388485755273973219

namespace A172188

/-- `∑[record[A014963(3*n+2)]]` -/
def P10388485755273973219.Spec : Prop :=
  ∀ n, P10388485755273973219.a n = A172188 (n + 1)

end A172188

/-!
# A172190: a(n) = 2*prime(n)^3.

The programs for A172190, the canonical program `A172190.P11849998515760113505` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172190 has offset 1).

The definition of A172190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172190.P11849998515760113505

`2*A030078(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A172190

/-- `2*A030078(n+1)` -/
def P11849998515760113505.Spec : Prop :=
  ∀ n, P11849998515760113505.a n = A172190 (n + 1)

theorem P11849998515760113505.correct : P11849998515760113505.Spec := by
  intro n
  simp only [A172190, Nat.add_sub_cancel]

end A172190

/-! ## A172190.P457964959224972650

`abs(Δ[2*A242188(n)])`
-/

namespace A172190.P457964959224972650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A242188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A172190.P457964959224972650

namespace A172190

/-- `abs(Δ[2*A242188(n)])` -/
def P457964959224972650.Spec : Prop :=
  ∀ n, P457964959224972650.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P9409885384692338784

`2*sqrt(A030516(n+1))`
-/

namespace A172190.P9409885384692338784
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A030516 (n + 1) : ℝ)

end

end A172190.P9409885384692338784

namespace A172190

/-- `2*sqrt(A030516(n+1))` -/
def P9409885384692338784.Spec : Prop :=
  ∀ n, P9409885384692338784.a n = (A172190 (n + 1) : ℝ)

end A172190

/-! ## A172190.P13587357513858726066

`2*Δ[A007504(n)]^3`
-/

namespace A172190.P13587357513858726066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 3

end

end A172190.P13587357513858726066

namespace A172190

/-- `2*Δ[A007504(n)]^3` -/
def P13587357513858726066.Spec : Prop :=
  ∀ n, P13587357513858726066.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P14649068822379808162

`2*(A153481(n+1)+2)`
-/

namespace A172190.P14649068822379808162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153481 (n + 1) + 2)

end

end A172190.P14649068822379808162

namespace A172190

/-- `2*(A153481(n+1)+2)` -/
def P14649068822379808162.Spec : Prop :=
  ∀ n, P14649068822379808162.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P9019848423872375971

`2*A000040(n+1)^3`
-/

namespace A172190.P9019848423872375971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) ^ 3

end

end A172190.P9019848423872375971

namespace A172190

/-- `2*A000040(n+1)^3` -/
def P9019848423872375971.Spec : Prop :=
  ∀ n, P9019848423872375971.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P5404021351257481234

`2*sqrt(sqrt(A030631(n+1)))`
-/

namespace A172190.P5404021351257481234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (Real.sqrt (A030631 (n + 1) : ℝ))

end

end A172190.P5404021351257481234

namespace A172190

/-- `2*sqrt(sqrt(A030631(n+1)))` -/
def P5404021351257481234.Spec : Prop :=
  ∀ n, P5404021351257481234.a n = (A172190 (n + 1) : ℝ)

end A172190

/-! ## A172190.P14721182583839232342

`ceil(2*sqrt(A138408(n+1)))`
-/

namespace A172190.P14721182583839232342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A138408 (n + 1) : ℝ)⌉

end

end A172190.P14721182583839232342

namespace A172190

/-- `ceil(2*sqrt(A138408(n+1)))` -/
def P14721182583839232342.Spec : Prop :=
  ∀ n, P14721182583839232342.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P14992954056772154128

`A135178(n+1)+A135177(n+1)`
-/

namespace A172190.P14992954056772154128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A135177 (n + 1)

end

end A172190.P14992954056772154128

namespace A172190

/-- `A135178(n+1)+A135177(n+1)` -/
def P14992954056772154128.Spec : Prop :=
  ∀ n, P14992954056772154128.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P15637880160383140572

`A133534(n+1)-A129701(n+1)`
-/

namespace A172190.P15637880160383140572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 1) - A129701 (n + 1)

end

end A172190.P15637880160383140572

namespace A172190

/-- `A133534(n+1)-A129701(n+1)` -/
def P15637880160383140572.Spec : Prop :=
  ∀ n, P15637880160383140572.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P18171484240009590483

`A135181(n+1)-A135179(n+1)`
-/

namespace A172190.P18171484240009590483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A135179 (n + 1)

end

end A172190.P18171484240009590483

namespace A172190

/-- `A135181(n+1)-A135179(n+1)` -/
def P18171484240009590483.Spec : Prop :=
  ∀ n, P18171484240009590483.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P620129673789964577

`A135182(n+1)-A135180(n+1)`
-/

namespace A172190.P620129673789964577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - A135180 (n + 1)

end

end A172190.P620129673789964577

namespace A172190

/-- `A135182(n+1)-A135180(n+1)` -/
def P620129673789964577.Spec : Prop :=
  ∀ n, P620129673789964577.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P4771481558851872553

`A000040(n+1)*A079704(n+1)`
-/

namespace A172190.P4771481558851872553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A079704 (n + 1)

end

end A172190.P4771481558851872553

namespace A172190

/-- `A000040(n+1)*A079704(n+1)` -/
def P4771481558851872553.Spec : Prop :=
  ∀ n, P4771481558851872553.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P3927800993108389340

`A001248(n+1)*A100484(n+1)`
-/

namespace A172190.P3927800993108389340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A100484 (n + 1)

end

end A172190.P3927800993108389340

namespace A172190

/-- `A001248(n+1)*A100484(n+1)` -/
def P3927800993108389340.Spec : Prop :=
  ∀ n, P3927800993108389340.a n = A172190 (n + 1)

end A172190

/-! ## A172190.P14898056663900561244

`A138407(n+1)/A008837(n+1)`
-/

namespace A172190.P14898056663900561244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ)

end

end A172190.P14898056663900561244

namespace A172190

/-- `A138407(n+1)/A008837(n+1)` -/
def P14898056663900561244.Spec : Prop :=
  ∀ n, P14898056663900561244.a n = (A172190 (n + 1) : ℚ)

end A172190

/-! ## A172190.P6412384714699218388

`A172191(n+1)/A000040(n+1)`
-/

namespace A172190.P6412384714699218388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172191 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A172190.P6412384714699218388

namespace A172190

/-- `A172191(n+1)/A000040(n+1)` -/
def P6412384714699218388.Spec : Prop :=
  ∀ n, P6412384714699218388.a n = (A172190 (n + 1) : ℚ)

end A172190

/-! ## A172190.P3649746671183061166

`A138411(n+1)/A127918(n+1)`
-/

namespace A172190.P3649746671183061166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138411 (n + 1) : ℚ) / (A127918 (n + 1) : ℚ)

end

end A172190.P3649746671183061166

namespace A172190

/-- `A138411(n+1)/A127918(n+1)` -/
def P3649746671183061166.Spec : Prop :=
  ∀ n, P3649746671183061166.a n = (A172190 (n + 1) : ℚ)

end A172190

/-! ## A172190.P4923126714658100945

`A138454(n+1)/A127920(n+1)`
-/

namespace A172190.P4923126714658100945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A127920 (n + 1) : ℚ)

end

end A172190.P4923126714658100945

namespace A172190

/-- `A138454(n+1)/A127920(n+1)` -/
def P4923126714658100945.Spec : Prop :=
  ∀ n, P4923126714658100945.a n = (A172190 (n + 1) : ℚ)

end A172190

/-! ## A172190.P11084745510214275897

`A138412(n+1)/A138416(n+1)`
-/

namespace A172190.P11084745510214275897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) : ℚ) / (A138416 (n + 1) : ℚ)

end

end A172190.P11084745510214275897

namespace A172190

/-- `A138412(n+1)/A138416(n+1)` -/
def P11084745510214275897.Spec : Prop :=
  ∀ n, P11084745510214275897.a n = (A172190 (n + 1) : ℚ)

end A172190

/-! ## A172190.P10247707395409697017

`Δ[A007504(n)]²*A100484(n+1)`
-/

namespace A172190.P10247707395409697017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A100484 (n + 1)

end

end A172190.P10247707395409697017

namespace A172190

/-- `Δ[A007504(n)]²*A100484(n+1)` -/
def P10247707395409697017.Spec : Prop :=
  ∀ n, P10247707395409697017.a n = A172190 (n + 1)

end A172190

/-!
# A172191: a(n) = 2*prime(n)^4.

The programs for A172191, the canonical program `A172191.P13979974005733689682` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172191 has offset 1).

The definition of A172191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A172191.P13979974005733689682

`2*A030514(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A172191

/-- `2*A030514(n+1)` -/
def P13979974005733689682.Spec : Prop :=
  ∀ n, P13979974005733689682.a n = A172191 (n + 1)

theorem P13979974005733689682.correct : P13979974005733689682.Spec := by
  intro n
  simp only [A172191, Nat.add_sub_cancel]

end A172191

/-! ## A172191.P15348125037193578173

`2*A001248(n+1)²`
-/

namespace A172191.P15348125037193578173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1) ^ 2

end

end A172191.P15348125037193578173

namespace A172191

/-- `2*A001248(n+1)²` -/
def P15348125037193578173.Spec : Prop :=
  ∀ n, P15348125037193578173.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P16704252251121960198

`A079704(n+1)²/2`
-/

namespace A172191.P16704252251121960198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) ^ 2 : ℚ) / 2

end

end A172191.P16704252251121960198

namespace A172191

/-- `A079704(n+1)²/2` -/
def P16704252251121960198.Spec : Prop :=
  ∀ n, P16704252251121960198.a n = (A172191 (n + 1) : ℚ)

end A172191

/-! ## A172191.P1857613069352220723

`2*sqrt(A179645(n+1))`
-/

namespace A172191.P1857613069352220723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A179645 (n + 1) : ℝ)

end

end A172191.P1857613069352220723

namespace A172191

/-- `2*sqrt(A179645(n+1))` -/
def P1857613069352220723.Spec : Prop :=
  ∀ n, P1857613069352220723.a n = (A172191 (n + 1) : ℝ)

end A172191

/-! ## A172191.P18126765739159926847

`2*Δ[A007504(n)]²²`
-/

namespace A172191.P18126765739159926847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A172191.P18126765739159926847

namespace A172191

/-- `2*Δ[A007504(n)]²²` -/
def P18126765739159926847.Spec : Prop :=
  ∀ n, P18126765739159926847.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P1201579605758239134

`2*Δ[A008348(n)]²²`
-/

namespace A172191.P1201579605758239134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A172191.P1201579605758239134

namespace A172191

/-- `2*Δ[A008348(n)]²²` -/
def P1201579605758239134.Spec : Prop :=
  ∀ n, P1201579605758239134.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P16370388047713979222

`2*Δ[A022837(n)]²²`
-/

namespace A172191.P16370388047713979222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A172191.P16370388047713979222

namespace A172191

/-- `2*Δ[A022837(n)]²²` -/
def P16370388047713979222.Spec : Prop :=
  ∀ n, P16370388047713979222.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P11366093525671973265

`2*Δ[A064365(n)]²²`
-/

namespace A172191.P11366093525671973265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A172191.P11366093525671973265

namespace A172191

/-- `2*Δ[A064365(n)]²²` -/
def P11366093525671973265.Spec : Prop :=
  ∀ n, P11366093525671973265.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P12699129639700583755

`2*Δ[A309222(n)]²²`
-/

namespace A172191.P12699129639700583755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A172191.P12699129639700583755

namespace A172191

/-- `2*Δ[A309222(n)]²²` -/
def P12699129639700583755.Spec : Prop :=
  ∀ n, P12699129639700583755.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P932075180131269683

`2*A000040(n+1)^4`
-/

namespace A172191.P932075180131269683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) ^ 4

end

end A172191.P932075180131269683

namespace A172191

/-- `2*A000040(n+1)^4` -/
def P932075180131269683.Spec : Prop :=
  ∀ n, P932075180131269683.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P3591990787401023612

`2*A273960(n+1)²²`
-/

namespace A172191.P3591990787401023612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A273960 (n + 1) ^ 2) ^ 2

end

end A172191.P3591990787401023612

namespace A172191

/-- `2*A273960(n+1)²²` -/
def P3591990787401023612.Spec : Prop :=
  ∀ n, P3591990787401023612.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P2799361763743579430

`2*A000040(C(n+1, n))²²`
-/

namespace A172191.P2799361763743579430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (Nat.choose (n + 1) n) ^ 2) ^ 2

end

end A172191.P2799361763743579430

namespace A172191

/-- `2*A000040(C(n+1, n))²²` -/
def P2799361763743579430.Spec : Prop :=
  ∀ n, P2799361763743579430.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P6607579766829869539

`2*A000040(2*n+1-n)²²`
-/

namespace A172191.P6607579766829869539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (2 * n + 1 - n) ^ 2) ^ 2

end

end A172191.P6607579766829869539

namespace A172191

/-- `2*A000040(2*n+1-n)²²` -/
def P6607579766829869539.Spec : Prop :=
  ∀ n, P6607579766829869539.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P6534235243906613845

`A133535(n+1)-A276963(n+1)`
-/

namespace A172191.P6534235243906613845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133535 (n + 1) - A276963 (n + 1)

end

end A172191.P6534235243906613845

namespace A172191

/-- `A133535(n+1)-A276963(n+1)` -/
def P6534235243906613845.Spec : Prop :=
  ∀ n, P6534235243906613845.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P15983407636371160338

`A001248(n+1)*A079704(n+1)`
-/

namespace A172191.P15983407636371160338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A079704 (n + 1)

end

end A172191.P15983407636371160338

namespace A172191

/-- `A001248(n+1)*A079704(n+1)` -/
def P15983407636371160338.Spec : Prop :=
  ∀ n, P15983407636371160338.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P2524528443327482719

`A030078(n+1)*A100484(n+1)`
-/

namespace A172191.P2524528443327482719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A100484 (n + 1)

end

end A172191.P2524528443327482719

namespace A172191

/-- `A030078(n+1)*A100484(n+1)` -/
def P2524528443327482719.Spec : Prop :=
  ∀ n, P2524528443327482719.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P7403034452142105938

`A000040(n+1)*A172190(n+1)`
-/

namespace A172191.P7403034452142105938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A172190 (n + 1)

end

end A172191.P7403034452142105938

namespace A172191

/-- `A000040(n+1)*A172190(n+1)` -/
def P7403034452142105938.Spec : Prop :=
  ∀ n, P7403034452142105938.a n = A172191 (n + 1)

end A172191

/-! ## A172191.P13206271719487354790

`A138412(n+1)/A008837(n+1)`
-/

namespace A172191.P13206271719487354790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138412 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ)

end

end A172191.P13206271719487354790

namespace A172191

/-- `A138412(n+1)/A008837(n+1)` -/
def P13206271719487354790.Spec : Prop :=
  ∀ n, P13206271719487354790.a n = (A172191 (n + 1) : ℚ)

end A172191

/-! ## A172191.P16029979189599583163

`A000040(n+1)²*A079704(n+1)`
-/

namespace A172191.P16029979189599583163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A079704 (n + 1)

end

end A172191.P16029979189599583163

namespace A172191

/-- `A000040(n+1)²*A079704(n+1)` -/
def P16029979189599583163.Spec : Prop :=
  ∀ n, P16029979189599583163.a n = A172191 (n + 1)

end A172191

/-!
# A172192: Numbers k such that k^6 - (k+1)^5 is prime.

The programs for A172192, there is no canonical definition to state claims against.
-/

/-! ## A172192.P15556508690410496406

`ceil(root(A171771(n+1), 6))`
-/

namespace A172192.P15556508690410496406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171771 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌉

end

end A172192.P15556508690410496406

/-! ## A172192.P490483846041286902

`floor(root(A171771(C(n+1, n)), 6))+1`
-/

namespace A172192.P490483846041286902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171771 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (6 : ℝ))⌋ + 1

end

end A172192.P490483846041286902

/-! ## A172192.P9403534069252764201

`floor(root(A171771(Δ[n²]-n), 6))+1`
-/

namespace A172192.P9403534069252764201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171771 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (6 : ℝ))⌋ + 1

end

end A172192.P9403534069252764201

/-! ## A172192.P2126657096588534156

`round(A000007(n)+root(A171771(n+1), 6))`
-/

namespace A172192.P2126657096588534156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℝ) + (A171771 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A172192.P2126657096588534156

/-! ## A172192.P8293483056882013644

`floor(root(A171771(n+1), 6)+A020985(n)²)`
-/

namespace A172192.P8293483056882013644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171771 (n + 1) : ℝ) ^ (1 / (6 : ℝ)) + (A020985 n ^ 2 : ℝ)⌋

end

end A172192.P8293483056882013644

/-! ## A172192.P6224670525193905522

`floor(root(A171771(n+1), 6)-A057428(n+1))`
-/

namespace A172192.P6224670525193905522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171771 (n + 1) : ℝ) ^ (1 / (6 : ℝ)) - (A057428 (n + 1) : ℝ)⌋

end

end A172192.P6224670525193905522

/-!
# A172193: a(n) = 5*n^2 + 31*n + 1.

The programs for A172193, the canonical program `A172193.P8894568027527526553` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172193 has offset 0).

The definition of A172193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²+31*n+1` (program `A172193.P8894568027527526553`, by `A172193.P8894568027527526553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172193.P8894568027527526553

`5*n²+31*n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A172193

/-- `5*n²+31*n+1` -/
def P8894568027527526553.Spec : Prop :=
  ∀ n, (P8894568027527526553.a n : ℤ) = A172193 n

theorem P8894568027527526553.correct : P8894568027527526553.Spec := by
  intro n
  simp only [A172193]

end A172193

/-! ## A172193.P9608378594323487321

`∑[a(n-1)+10]` with `a(0)=1, a(1)=36`
-/

namespace A172193.P9608378594323487321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 36] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172193.P9608378594323487321

namespace A172193

/-- `∑[a(n-1)+10]` -/
def P9608378594323487321.Spec : Prop :=
  ∀ n, (P9608378594323487321.a n : ℤ) = A172193 n

end A172193

/-! ## A172193.P2432726528961490812

`or(1, a(n-1)+A160912(n+1)+28)` with `a(0)=1`
-/

namespace A172193.P2432726528961490812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (a (n - 1) + (A160912 (n + 1) + 28))

end

end A172193.P2432726528961490812

namespace A172193

/-- `or(1, a(n-1)+A160912(n+1)+28)` -/
def P2432726528961490812.Spec : Prop :=
  ∀ n, P2432726528961490812.a n = A172193 n

end A172193

/-!
# A172194: Numerators of the inverse binomial transform of the sequence of fractions A172030(n)/A172031(n).

The programs for A172194, there is no canonical definition to state claims against.
-/

/-! ## A172194.P3048645040850745945

`A002145(A341673(a(n-2)+1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A172194.P3048645040850745945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 2] fun n a =>
  A002145 (A341673 (a (n - 2) + 1).toNat).toNat

end

end A172194.P3048645040850745945

/-!
# A172195: Prime numbers for which the absolute difference between the summation of its digits & the product of its digits is a prime.

The programs for A172195, there is no canonical definition to state claims against.
-/

/-! ## A172195.P5667152648334339976

`p?[A117737(n+1)]`
-/

namespace A172195.P5667152648334339976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172195.P5667152648334339976

/-! ## A172195.P18119482035861416419

`filter[A117737(n+1), A010051(#)]`
-/

namespace A172195.P18119482035861416419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A172195.P18119482035861416419

/-! ## A172195.P9032210637785205129

`∩[A000040(n+1), A117737(n+1)]`
-/

namespace A172195.P9032210637785205129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P9032210637785205129

/-! ## A172195.P6397286822724962493

`∩[A004139(n+1), A117737(n+1)]`
-/

namespace A172195.P6397286822724962493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P6397286822724962493

/-! ## A172195.P6937872042249250261

`∩[A006005(n+1), A117737(n+1)]`
-/

namespace A172195.P6937872042249250261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P6937872042249250261

/-! ## A172195.P4255381536279862372

`∩[A008578(n+1), A117737(n+1)]`
-/

namespace A172195.P4255381536279862372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P4255381536279862372

/-! ## A172195.P8193424990510089199

`∩[A045319(n+1), A117737(n+1)]`
-/

namespace A172195.P8193424990510089199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P8193424990510089199

/-! ## A172195.P9822165592103578582

`∩[A045344(n+1), A117737(n+1)]`
-/

namespace A172195.P9822165592103578582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P9822165592103578582

/-! ## A172195.P15802328518696831218

`∩[A046022(n+1), A117737(n+1)]`
-/

namespace A172195.P15802328518696831218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P15802328518696831218

/-! ## A172195.P18019184918765891738

`∩[A051948(n+1), A117737(n+1)]`
-/

namespace A172195.P18019184918765891738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P18019184918765891738

/-! ## A172195.P12802937766812642591

`∩[A062972(n+1), A117737(n+1)]`
-/

namespace A172195.P12802937766812642591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P12802937766812642591

/-! ## A172195.P7854391020790479904

`∩[A065091(n+1), A117737(n+1)]`
-/

namespace A172195.P7854391020790479904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P7854391020790479904

/-! ## A172195.P3216932842123170712

`∩[A066050(n+1), A117737(n+1)]`
-/

namespace A172195.P3216932842123170712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P3216932842123170712

/-! ## A172195.P8848590272487916089

`∩[A067126(n+1), A117737(n+1)]`
-/

namespace A172195.P8848590272487916089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P8848590272487916089

/-! ## A172195.P10153551215371054049

`∩[A071621(n+1), A117737(n+1)]`
-/

namespace A172195.P10153551215371054049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P10153551215371054049

/-! ## A172195.P12388310609832470565

`∩[A083249(n+1), A117737(n+1)]`
-/

namespace A172195.P12388310609832470565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P12388310609832470565

/-! ## A172195.P11722911470578825904

`∩[A116974(n+1), A117737(n+1)]`
-/

namespace A172195.P11722911470578825904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P11722911470578825904

/-! ## A172195.P12032600995907055177

`∩[A117737(n+1), A161346(n+1)]`
-/

namespace A172195.P12032600995907055177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P12032600995907055177

/-! ## A172195.P11801433563816470260

`∩[A161428(n+1), A117737(n+1)]`
-/

namespace A172195.P11801433563816470260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P11801433563816470260

/-! ## A172195.P10666349092452325756

`∩[A117737(n+1), A162788(n+1)]`
-/

namespace A172195.P10666349092452325756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172195.P10666349092452325756

/-!
# A172196: Triangle T(n, k, q) = 1 + abs(c(n,q) - c(k,q))*abs(c(n,q) - c(n-k, q)), where c(n,q) = Product_{j=1..n} (1 - q^j) and q = 2, read by rows.

The programs for A172196, there is no canonical definition to state claims against.
-/

/-! ## A172196.P8000573820935438453

`A174182(Δ[Δ[A275175(n)]])`
-/

namespace A172196.P8000573820935438453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275175 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174182 (f1 (n + 1) - f1 n).toNat

end

end A172196.P8000573820935438453

/-! ## A172196.P10701757796404481745

`A157181(A270879(n)%A270160(n))`
-/

namespace A172196.P10701757796404481745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157181 (Int.tmod (A270879 n) (A270160 n)).toNat

end

end A172196.P10701757796404481745

/-! ## A172196.P12213312911647817722

`A296740(gcd(A003579(n), A078802(n)))`
-/

namespace A172196.P12213312911647817722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296740 (Int.gcd (A003579 n) (A078802 n))

end

end A172196.P12213312911647817722

/-! ## A172196.P11729336065937940787

`A296740(A007318(n)%A171296(n+1))`
-/

namespace A172196.P11729336065937940787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296740 (Int.tmod (A007318 n) (A171296 (n + 1))).toNat

end

end A172196.P11729336065937940787

/-! ## A172196.P5526751985168268922

`A296740(gcd(A077280(n+1), A114225(n)))`
-/

namespace A172196.P5526751985168268922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296740 (Int.gcd (A077280 (n + 1)) (A114225 n))

end

end A172196.P5526751985168268922

