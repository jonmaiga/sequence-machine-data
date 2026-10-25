import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A056000: a(n) = n*(n+9)/2.

The programs for A056000, the canonical program `A056000.P2824900671301424584` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056000 has offset 0).

The definition of A056000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+9)/2` (program `A056000.P3586204872576992465`, by `A056000.P3586204872576992465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056000.P3586204872576992465

`n*(n+9)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056000.P3586204872576992465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 9) : ℚ) / 2

end

end A056000.P3586204872576992465

namespace A056000

/-- `n*(n+9)/2` -/
def P3586204872576992465.Spec : Prop :=
  ∀ n, P3586204872576992465.a n = (A056000 n : ℚ)

theorem P3586204872576992465.correct : P3586204872576992465.Spec := by
  intro n
  induction n with
  | zero => simp [A056000, A056000.P3586204872576992465.a, A056000.P2824900671301424584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A056000, Nat.add_sub_cancel, A056000.P3586204872576992465.a, A056000.P2824900671301424584.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A056000

/-! ## A056000.P2824900671301424584

`n+a(n-1)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056000

/-- `n+a(n-1)+4` -/
def P2824900671301424584.Spec : Prop :=
  ∀ n, (P2824900671301424584.a n : ℤ) = A056000 n

theorem P2824900671301424584.correct : P2824900671301424584.Spec := by
  intro n
  simp only [A056000]

end A056000

/-! ## A056000.P17118003707499707355

`A055999(n)+n`
-/

namespace A056000.P17118003707499707355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + (n : ℤ)

end

end A056000.P17118003707499707355

namespace A056000

/-- `A055999(n)+n` -/
def P17118003707499707355.Spec : Prop :=
  ∀ n, P17118003707499707355.a n = A056000 n

end A056000

/-! ## A056000.P9471277722687975806

`A056115(n)-n`
-/

namespace A056000.P9471277722687975806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n - (n : ℤ)

end

end A056000.P9471277722687975806

namespace A056000

/-- `A056115(n)-n` -/
def P9471277722687975806.Spec : Prop :=
  ∀ n, P9471277722687975806.a n = A056000 n

end A056000

/-! ## A056000.P3421093977024199921

`A000217(n+4)-10`
-/

namespace A056000.P3421093977024199921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 4) - 10

end

end A056000.P3421093977024199921

namespace A056000

/-- `A000217(n+4)-10` -/
def P3421093977024199921.Spec : Prop :=
  ∀ n, P3421093977024199921.a n = A056000 n

end A056000

/-! ## A056000.P7700547999195400507

`A000096(n)+3*n`
-/

namespace A056000.P7700547999195400507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (3 * n : ℤ)

end

end A056000.P7700547999195400507

namespace A056000

/-- `A000096(n)+3*n` -/
def P7700547999195400507.Spec : Prop :=
  ∀ n, P7700547999195400507.a n = A056000 n

end A056000

/-! ## A056000.P5810584177377298849

`record[(n-9)*n/2]`
-/

namespace A056000.P5810584177377298849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056000.P5810584177377298849

namespace A056000

/-- `record[(n-9)*n/2]` -/
def P5810584177377298849.Spec : Prop :=
  ∀ n, P5810584177377298849.a n = (A056000 n : ℚ)

end A056000

/-! ## A056000.P7360135536782345719

`4*n+C(n+1, 2)`
-/

namespace A056000.P7360135536782345719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + Nat.choose (n + 1) 2

end

end A056000.P7360135536782345719

namespace A056000

/-- `4*n+C(n+1, 2)` -/
def P7360135536782345719.Spec : Prop :=
  ∀ n, (P7360135536782345719.a n : ℤ) = A056000 n

end A056000

/-! ## A056000.P1020860071778730743

`∑[ogf((5x-4x^2)/(1-2x+x^2))]`
-/

namespace A056000.P1020860071778730743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056000.P1020860071778730743

namespace A056000

/-- `∑[ogf((5x-4x^2)/(1-2x+x^2))]` -/
def P1020860071778730743.Spec : Prop :=
  ∀ n, P1020860071778730743.a n = A056000 n

end A056000

/-! ## A056000.P17241702467711787548

`ogf((5x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056000.P17241702467711787548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -4] [1, -3, 3, -1] n

end

end A056000.P17241702467711787548

namespace A056000

/-- `ogf((5x-4x^2)/(1-3x+3x^2-x^3))` -/
def P17241702467711787548.Spec : Prop :=
  ∀ n, P17241702467711787548.a n = A056000 n

end A056000

/-! ## A056000.P5240369232844365283

`∑[2*2%(n+2)+n]`
-/

namespace A056000.P5240369232844365283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 % (n + 2)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056000.P5240369232844365283

namespace A056000

/-- `∑[2*2%(n+2)+n]` -/
def P5240369232844365283.Spec : Prop :=
  ∀ n, (P5240369232844365283.a n : ℤ) = A056000 n

end A056000

/-! ## A056000.P2478422586053897063

`-(∑[xor(n+3, -1)]+4)`
-/

namespace A056000.P2478422586053897063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 3 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A056000.P2478422586053897063

namespace A056000

/-- `-(∑[xor(n+3, -1)]+4)` -/
def P2478422586053897063.Spec : Prop :=
  ∀ n, P2478422586053897063.a n = A056000 n

end A056000

/-! ## A056000.P13437097916870749465

`Δ[C(n+3, 3)+(2-n)²]`
-/

namespace A056000.P13437097916870749465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056000.P13437097916870749465

namespace A056000

/-- `Δ[C(n+3, 3)+(2-n)²]` -/
def P13437097916870749465.Spec : Prop :=
  ∀ n, P13437097916870749465.a n = A056000 n

end A056000

/-! ## A056000.P545849285790515093

`n-∑[a(n-1)-1]` with `a(0)=0, a(1)=-4`
-/

namespace A056000.P545849285790515093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -4] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056000.P545849285790515093

namespace A056000

/-- `n-∑[a(n-1)-1]` -/
def P545849285790515093.Spec : Prop :=
  ∀ n, P545849285790515093.a n = A056000 n

end A056000

/-! ## A056000.P9944031147297969252

`2*n-(n-4-a(n-1))` with `a(0)=0`
-/

namespace A056000.P9944031147297969252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 4 - a (n - 1))

end

end A056000.P9944031147297969252

namespace A056000

/-- `2*n-(n-4-a(n-1))` -/
def P9944031147297969252.Spec : Prop :=
  ∀ n, P9944031147297969252.a n = A056000 n

end A056000

/-! ## A056000.P14205233474870346200

`A155212(n)-2`
-/

namespace A056000.P14205233474870346200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n - 2

end

end A056000.P14205233474870346200

namespace A056000

/-- `A155212(n)-2` -/
def P14205233474870346200.Spec : Prop :=
  ∀ n, P14205233474870346200.a n = A056000 n

end A056000

/-! ## A056000.P7628598853626848879

`n-(1-A052905(n))`
-/

namespace A056000.P7628598853626848879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A052905 n)

end

end A056000.P7628598853626848879

namespace A056000

/-- `n-(1-A052905(n))` -/
def P7628598853626848879.Spec : Prop :=
  ∀ n, P7628598853626848879.a n = A056000 n

end A056000

/-! ## A056000.P8488028392415024426

`A028563(n)/2+n`
-/

namespace A056000.P8488028392415024426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028563 n : ℚ) / 2 + (n : ℚ)

end

end A056000.P8488028392415024426

namespace A056000

/-- `A028563(n)/2+n` -/
def P8488028392415024426.Spec : Prop :=
  ∀ n, P8488028392415024426.a n = (A056000 n : ℚ)

end A056000

/-! ## A056000.P16495793574052808665

`A056119(n)-2*n`
-/

namespace A056000.P16495793574052808665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n - (2 * n : ℤ)

end

end A056000.P16495793574052808665

namespace A056000

/-- `A056119(n)-2*n` -/
def P16495793574052808665.Spec : Prop :=
  ∀ n, P16495793574052808665.a n = A056000 n

end A056000

/-! ## A056000.P9662305764855426009

`4*n+A000217(n)`
-/

namespace A056000.P9662305764855426009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A000217 n

end

end A056000.P9662305764855426009

namespace A056000

/-- `4*n+A000217(n)` -/
def P9662305764855426009.Spec : Prop :=
  ∀ n, P9662305764855426009.a n = A056000 n

end A056000

/-!
# A056001: a(n) = (n+1)*binomial(n+7, 7).

The programs for A056001, the canonical program `A056001.P7199293198047440355` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056001 has offset 0).

The definition of A056001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*C(n+7, 7)` (program `A056001.P7199293198047440355`, by `A056001.P7199293198047440355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056001.P7199293198047440355

`(n+1)*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056001

/-- `(n+1)*C(n+7, 7)` -/
def P7199293198047440355.Spec : Prop :=
  ∀ n, (P7199293198047440355.a n : ℤ) = A056001 n

theorem P7199293198047440355.correct : P7199293198047440355.Spec := by
  intro n
  simp only [A056001]

end A056001

/-! ## A056001.P9174750476543617928

`(n+1)*∑[∑[∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A056001.P9174750476543617928
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056001.P9174750476543617928

namespace A056001

/-- `(n+1)*∑[∑[∑[∑[∑[∑[n+1]]]]]]` -/
def P9174750476543617928.Spec : Prop :=
  ∀ n, (P9174750476543617928.a n : ℤ) = A056001 n

end A056001

/-! ## A056001.P832506818674013454

`∑[∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]]]` with `a(0)=1`
-/

namespace A056001.P832506818674013454
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f7 =>
  f7 (n - 1) + 8

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056001.P832506818674013454

namespace A056001

/-- `∑[∑[∑[∑[∑[∑[∑[a(n-1)+8]]]]]]]` -/
def P832506818674013454.Spec : Prop :=
  ∀ n, (P832506818674013454.a n : ℤ) = A056001 n

end A056001

/-! ## A056001.P17098073621279812730

`∑[A052226(n)]`
-/

namespace A056001.P17098073621279812730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056001.P17098073621279812730

namespace A056001

/-- `∑[A052226(n)]` -/
def P17098073621279812730.Spec : Prop :=
  ∀ n, P17098073621279812730.a n = A056001 n

end A056001

/-! ## A056001.P8879964401410233437

`∑[∑[A050404(n)]]`
-/

namespace A056001.P8879964401410233437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056001.P8879964401410233437

namespace A056001

/-- `∑[∑[A050404(n)]]` -/
def P8879964401410233437.Spec : Prop :=
  ∀ n, P8879964401410233437.a n = A056001 n

end A056001

/-! ## A056001.P14028290919387880369

`∑[∑[∑[A051878(n)]]]`
-/

namespace A056001.P14028290919387880369
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056001.P14028290919387880369

namespace A056001

/-- `∑[∑[∑[A051878(n)]]]` -/
def P14028290919387880369.Spec : Prop :=
  ∀ n, P14028290919387880369.a n = A056001 n

end A056001

/-! ## A056001.P3571454049590300524

`∑[∑[∑[∑[A051797(n)]]]]`
-/

namespace A056001.P3571454049590300524
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056001.P3571454049590300524

namespace A056001

/-- `∑[∑[∑[∑[A051797(n)]]]]` -/
def P3571454049590300524.Spec : Prop :=
  ∀ n, P3571454049590300524.a n = A056001 n

end A056001

/-! ## A056001.P4141297685311215089

`A027767(n+6)-A253947(n+6)`
-/

namespace A056001.P4141297685311215089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027767 (n + 6) - A253947 (n + 6)

end

end A056001.P4141297685311215089

namespace A056001

/-- `A027767(n+6)-A253947(n+6)` -/
def P4141297685311215089.Spec : Prop :=
  ∀ n, P4141297685311215089.a n = A056001 n

theorem P4141297685311215089.correct : P4141297685311215089.Spec := by
  intro n
  simp only [A056001, Nat.add_sub_cancel, A056001.P4141297685311215089.a, A056001.P7199293198047440355.a, A027767, A027767.P16883382579102568469.a, A253947, A253947.P518104505896872323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056001

/-! ## A056001.P12713857854521011547

`A104670(n)-A000217(n)*A000580(n+7)`
-/

namespace A056001.P12713857854521011547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104670 n - A000217 n * A000580 (n + 7)

end

end A056001.P12713857854521011547

namespace A056001

/-- `A104670(n)-A000217(n)*A000580(n+7)` -/
def P12713857854521011547.Spec : Prop :=
  ∀ n, P12713857854521011547.a n = A056001 n

end A056001

/-! ## A056001.P3097450000352300996

`A000096(n+1)*A000580(n+7)-A104670(n)`
-/

namespace A056001.P3097450000352300996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) * A000580 (n + 7) - A104670 n

end

end A056001.P3097450000352300996

namespace A056001

/-- `A000096(n+1)*A000580(n+7)-A104670(n)` -/
def P3097450000352300996.Spec : Prop :=
  ∀ n, P3097450000352300996.a n = A056001 n

end A056001

/-! ## A056001.P11105353678236757021

`A056122(n+1)-(A056122(n)+A052226(n+1))`
-/

namespace A056001.P11105353678236757021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056122 (n + 1) - (A056122 n + A052226 (n + 1))

end

end A056001.P11105353678236757021

namespace A056001

/-- `A056122(n+1)-(A056122(n)+A052226(n+1))` -/
def P11105353678236757021.Spec : Prop :=
  ∀ n, P11105353678236757021.a n = A056001 n

end A056001

/-! ## A056001.P2938667921639989011

`A253946(n+5)*A253947(n+6)/A253945(n+5)`
-/

namespace A056001.P2938667921639989011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) * A253947 (n + 6) : ℚ) / (A253945 (n + 5) : ℚ)

end

end A056001.P2938667921639989011

namespace A056001

/-- `A253946(n+5)*A253947(n+6)/A253945(n+5)` -/
def P2938667921639989011.Spec : Prop :=
  ∀ n, P2938667921639989011.a n = (A056001 n : ℚ)

end A056001

/-! ## A056001.P14154232812081019521

`A000580(n+7)*A001787(n+1)/A000079(n)`
-/

namespace A056001.P14154232812081019521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) * A001787 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A056001.P14154232812081019521

namespace A056001

/-- `A000580(n+7)*A001787(n+1)/A000079(n)` -/
def P14154232812081019521.Spec : Prop :=
  ∀ n, P14154232812081019521.a n = (A056001 n : ℚ)

end A056001

/-!
# A056002: a(n) = (10^2)*11^(n-2); a(0)=1, a(1)=9.

The programs for A056002, the canonical program `A056002.P6028571122456122413` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056002 has offset 0).

The definition of A056002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056002.P6028571122456122413

`11*a(n-1)` with `a(0)=1, a(1)=9, a(2)=100`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056002

/-- `11*a(n-1)` -/
def P6028571122456122413.Spec : Prop :=
  ∀ n, (P6028571122456122413.a n : ℤ) = A056002 n

theorem P6028571122456122413.correct : P6028571122456122413.Spec := by
  intro n
  simp only [A056002]

end A056002

/-! ## A056002.P16014946750558774669

`ogf((1-2x+x^2)/(1-11x))`
-/

namespace A056002.P16014946750558774669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -11] n

end

end A056002.P16014946750558774669

namespace A056002

/-- `ogf((1-2x+x^2)/(1-11x))` -/
def P16014946750558774669.Spec : Prop :=
  ∀ n, P16014946750558774669.a n = A056002 n

end A056002

/-! ## A056002.P14997699924984591801

`Δ[Δ[round(11^(n-2))]]`
-/

namespace A056002.P14997699924984591801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056002.P14997699924984591801

namespace A056002

/-- `Δ[Δ[round(11^(n-2))]]` -/
def P14997699924984591801.Spec : Prop :=
  ∀ n, P14997699924984591801.a n = A056002 n

end A056002

/-!
# A056003: a(n) = (n+1)*binomial(n+8, 8).

The programs for A056003, the canonical program `A056003.P10626259169423566965` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056003 has offset 0).

The definition of A056003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*C(n+8, 8)` (program `A056003.P10626259169423566965`, by `A056003.P10626259169423566965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056003.P10626259169423566965

`(n+1)*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056003

/-- `(n+1)*C(n+8, 8)` -/
def P10626259169423566965.Spec : Prop :=
  ∀ n, (P10626259169423566965.a n : ℤ) = A056003 n

theorem P10626259169423566965.correct : P10626259169423566965.Spec := by
  intro n
  simp only [A056003]

end A056003

/-! ## A056003.P1617384495244336685

`(n+1)*∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]`
-/

namespace A056003.P1617384495244336685
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056003.P1617384495244336685

namespace A056003

/-- `(n+1)*∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]` -/
def P1617384495244336685.Spec : Prop :=
  ∀ n, (P1617384495244336685.a n : ℤ) = A056003 n

end A056003

/-! ## A056003.P6803330427983247441

`∑[A056117(n)]`
-/

namespace A056003.P6803330427983247441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056003.P6803330427983247441

namespace A056003

/-- `∑[A056117(n)]` -/
def P6803330427983247441.Spec : Prop :=
  ∀ n, P6803330427983247441.a n = A056003 n

end A056003

/-! ## A056003.P7538342673435241335

`∑[∑[A052206(n)]]`
-/

namespace A056003.P7538342673435241335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056003.P7538342673435241335

namespace A056003

/-- `∑[∑[A052206(n)]]` -/
def P7538342673435241335.Spec : Prop :=
  ∀ n, P7538342673435241335.a n = A056003 n

end A056003

/-! ## A056003.P15759982268507655677

`∑[∑[∑[A050405(n)]]]`
-/

namespace A056003.P15759982268507655677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056003.P15759982268507655677

namespace A056003

/-- `∑[∑[∑[A050405(n)]]]` -/
def P15759982268507655677.Spec : Prop :=
  ∀ n, P15759982268507655677.a n = A056003 n

end A056003

/-! ## A056003.P16821715286999728703

`abs(xor(n, -1)*A000581(n+8))`
-/

namespace A056003.P16821715286999728703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A000581 (n + 8)|

end

end A056003.P16821715286999728703

namespace A056003

/-- `abs(xor(n, -1)*A000581(n+8))` -/
def P16821715286999728703.Spec : Prop :=
  ∀ n, P16821715286999728703.a n = A056003 n

end A056003

/-! ## A056003.P11285385297790339241

`A254142(n+1)-(A254142(n)+A056117(n+1))`
-/

namespace A056003.P11285385297790339241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254142 (n + 1) - (A254142 n + A056117 (n + 1))

end

end A056003.P11285385297790339241

namespace A056003

/-- `A254142(n+1)-(A254142(n)+A056117(n+1))` -/
def P11285385297790339241.Spec : Prop :=
  ∀ n, P11285385297790339241.a n = A056003 n

end A056003

/-! ## A056003.P5185220519392747980

`A000581(n+8)*A001787(n+1)/A000079(n)`
-/

namespace A056003.P5185220519392747980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) * A001787 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A056003.P5185220519392747980

namespace A056003

/-- `A000581(n+8)*A001787(n+1)/A000079(n)` -/
def P5185220519392747980.Spec : Prop :=
  ∀ n, P5185220519392747980.a n = (A056003 n : ℚ)

end A056003

/-! ## A056003.P13825684841765668428

`A000142(n+1)*A000581(n+8)/A000142(n)`
-/

namespace A056003.P13825684841765668428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A000581 (n + 8) : ℚ) / (A000142 n : ℚ)

end

end A056003.P13825684841765668428

namespace A056003

/-- `A000142(n+1)*A000581(n+8)/A000142(n)` -/
def P13825684841765668428.Spec : Prop :=
  ∀ n, P13825684841765668428.a n = (A056003 n : ℚ)

end A056003

/-!
# A056004: Initial step in Goodstein sequences: write n in hereditary representation base 2, bump to base 3, then subtract 1.

The programs for A056004, there is no canonical definition to state claims against.
-/

/-! ## A056004.P14546120183755772925

`A222112(n+2)-1`
-/

namespace A056004.P14546120183755772925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222112 (n + 2) - 1

end

end A056004.P14546120183755772925

/-! ## A056004.P5374394241325023620

`∑[ceil(n/(n+1))*Δ[A222112(n+1)]]`
-/

namespace A056004.P5374394241325023620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056004.P5374394241325023620

/-! ## A056004.P9960924249027820404

`∑[Δ[A222112(n+1)]*A057427(n)]`
-/

namespace A056004.P9960924249027820404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056004.P9960924249027820404

/-! ## A056004.P9594149392992312888

`record[A222112(A065033(n))+or(n, -n)]`
-/

namespace A056004.P9594149392992312888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222112 (A065033 n).toNat + Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056004.P9594149392992312888

/-! ## A056004.P17325841319485731658

`record[A222112(A008619(n))-A057427(n)]`
-/

namespace A056004.P17325841319485731658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222112 (A008619 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056004.P17325841319485731658

/-!
# A056005: Number of 3-element ordered antichains on an unlabeled n-element set; T_1-hypergraphs with 3 labeled nodes and n hyperedges.

The programs for A056005, the canonical program `A056005.P10762330929991602812` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056005 has offset 0).

The definition of A056005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056005.P10762330929991602812

`∑[∑[A056078(abs(1-n)+1)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056005

/-- `∑[∑[A056078(abs(1-n)+1)]]` -/
def P10762330929991602812.Spec : Prop :=
  ∀ n, P10762330929991602812.a n = A056005 n

theorem P10762330929991602812.correct : P10762330929991602812.Spec := by
  intro n
  simp only [A056005]

end A056005

/-! ## A056005.P3265726278078770058

`∑[∑[A056078(n+1)]-A056078(n+1)]`
-/

namespace A056005.P3265726278078770058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A056078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056005.P3265726278078770058

namespace A056005

/-- `∑[∑[A056078(n+1)]-A056078(n+1)]` -/
def P3265726278078770058.Spec : Prop :=
  ∀ n, P3265726278078770058.a n = A056005 n

end A056005

/-! ## A056005.P17554732977531323421

`A056865(lt[A187324(n), A277646(n+1)])`
-/

namespace A056005.P17554732977531323421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056005.P17554732977531323421

namespace A056005

/-- `A056865(lt[A187324(n), A277646(n+1)])` -/
def P17554732977531323421.Spec : Prop :=
  ∀ n, P17554732977531323421.a n = A056005 n

end A056005

/-!
# A056006: Numbers k such that k | sigma(k) + 2.

The programs for A056006, there is no canonical definition to state claims against.
-/

/-! ## A056006.P8317840106808414929

`C(p?[2^n+1], 2)`
-/

namespace A056006.P8317840106808414929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) 2

end

end A056006.P8317840106808414929

/-!
# A056007: Difference between 2^n and largest square strictly less than 2^n.

The programs for A056007, the canonical program `A056007.P10071170248464593128` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056007 has offset 0).

The definition of A056007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056007.P3867620009211523795

`2^n-(ceil(2^(n/2))-1)²`
-/

namespace A056007.P3867620009211523795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (⌈(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ - 1) ^ 2

end

end A056007.P3867620009211523795

namespace A056007

/-- `2^n-(ceil(2^(n/2))-1)²` -/
def P3867620009211523795.Spec : Prop :=
  ∀ n, P3867620009211523795.a n = A056007 n

end A056007

/-! ## A056007.P10071170248464593128

`A071797(A000079(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056007

/-- `A071797(A000079(n))` -/
def P10071170248464593128.Spec : Prop :=
  ∀ n, P10071170248464593128.a n = A056007 n

theorem P10071170248464593128.correct : P10071170248464593128.Spec := by
  intro n
  simp only [A056007]

end A056007

/-! ## A056007.P9106440754328586770

`A071797(2^n)`
-/

namespace A056007.P9106440754328586770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (2 ^ n)

end

end A056007.P9106440754328586770

namespace A056007

/-- `A071797(2^n)` -/
def P9106440754328586770.Spec : Prop :=
  ∀ n, P9106440754328586770.a n = A056007 n

end A056007

/-! ## A056007.P746026985513165156

`and(A053186(2^n-1)+1, -1)`
-/

namespace A056007.P746026985513165156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053186 (2 ^ n - 1) + 1) (-1)

end

end A056007.P746026985513165156

namespace A056007

/-- `and(A053186(2^n-1)+1, -1)` -/
def P746026985513165156.Spec : Prop :=
  ∀ n, P746026985513165156.a n = A056007 n

end A056007

/-! ## A056007.P8202648160737153605

`A053186(2^n+2^(∑[n+1]%(n+2))-1)`
-/

namespace A056007.P8202648160737153605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((2 ^ n : ℤ) + ((2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)) : ℤ) - 1)).toNat

end

end A056007.P8202648160737153605

namespace A056007

/-- `A053186(2^n+2^(∑[n+1]%(n+2))-1)` -/
def P8202648160737153605.Spec : Prop :=
  ∀ n, P8202648160737153605.a n = A056007 n

end A056007

/-!
# A056008: Difference between (smallest square strictly greater than 2^n) and 2^n.

The programs for A056008, the canonical program `A056008.P2709149902062380977` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056008 has offset 0).

The definition of A056008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056008.P2709149902062380977

`(floor(2^(n/2))+1)²-2^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056008

/-- `(floor(2^(n/2))+1)²-2^n` -/
def P2709149902062380977.Spec : Prop :=
  ∀ n, P2709149902062380977.a n = A056008 n

theorem P2709149902062380977.correct : P2709149902062380977.Spec := by
  intro n
  simp only [A056008]

end A056008

/-! ## A056008.P11301996374541738294

`A080883(2^n)`
-/

namespace A056008.P11301996374541738294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (2 ^ n)

end

end A056008.P11301996374541738294

namespace A056008

/-- `A080883(2^n)` -/
def P11301996374541738294.Spec : Prop :=
  ∀ n, P11301996374541738294.a n = A056008 n

end A056008

/-! ## A056008.P1648041822497916543

`A080883(A000079(n))%A106839(n)`
-/

namespace A056008.P1648041822497916543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080883 (A000079 n).toNat) (A106839 n)

end

end A056008.P1648041822497916543

namespace A056008

/-- `A080883(A000079(n))%A106839(n)` -/
def P1648041822497916543.Spec : Prop :=
  ∀ n, P1648041822497916543.a n = A056008 n

end A056008

/-! ## A056008.P11429509407760493314

`or(A005369(n), A080883(A000079(n)))`
-/

namespace A056008.P11429509407760493314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A080883 (A000079 n).toNat)

end

end A056008.P11429509407760493314

namespace A056008

/-- `or(A005369(n), A080883(A000079(n)))` -/
def P11429509407760493314.Spec : Prop :=
  ∀ n, P11429509407760493314.a n = A056008 n

end A056008

/-! ## A056008.P617739880615184097

`or(A080883(A000079(n)), A112313(n))`
-/

namespace A056008.P617739880615184097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080883 (A000079 n).toNat) (A112313 n)

end

end A056008.P617739880615184097

namespace A056008

/-- `or(A080883(A000079(n)), A112313(n))` -/
def P617739880615184097.Spec : Prop :=
  ∀ n, P617739880615184097.a n = A056008 n

end A056008

/-!
# A056009: a(n) = (n^n + 1)/ (n^(2^a) + 1), where 2^a is the highest power of 2 dividing n.

The programs for A056009, there is no canonical definition to state claims against.
-/

/-! ## A056009.P15088497193879705281

`A054576(or(floor(n/2), A284926(n+1)))`
-/

namespace A056009.P15088497193879705281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Int.lor ⌊(n : ℚ) / 2⌋ (A284926 (n + 1))).toNat

end

end A056009.P15088497193879705281

/-!
# A056010: Number of words of length n in a simple grammar.

The programs for A056010, there is no canonical definition to state claims against.
-/

/-! ## A056010.P10700281569789151384

`A025262(n+2)`
-/

namespace A056010.P10700281569789151384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025262 (n + 2)

end

end A056010.P10700281569789151384

/-! ## A056010.P12571682338496389906

`A157002(n)+Δ[A157003(n)]`
-/

namespace A056010.P12571682338496389906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157002 n + (f1 (n + 1) - f1 n)

end

end A056010.P12571682338496389906

/-! ## A056010.P6284940746234633972

`A157002(n+1)+A157002(n)`
-/

namespace A056010.P6284940746234633972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157002 (n + 1) + A157002 n

end

end A056010.P6284940746234633972

/-! ## A056010.P12914008296047130303

`Δ[A157100(n)]`
-/

namespace A056010.P12914008296047130303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056010.P12914008296047130303

/-! ## A056010.P10279858404575178595

`abs(Δ[A087626(abs(1-n))])`
-/

namespace A056010.P10279858404575178595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087626 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A056010.P10279858404575178595

/-! ## A056010.P1261303198793319920

`A157100(n+1)-A157100(n)`
-/

namespace A056010.P1261303198793319920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 (n + 1) - A157100 n

end

end A056010.P1261303198793319920

/-!
# A056011: Enumeration of natural numbers by the boustrophedonic diagonal method.

The programs for A056011, the canonical program `A056011.P1549659588632935802` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056011 has offset 1).

The definition of A056011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056011.P14440863451098314292

`A038722(A056023(n+1))`
-/

namespace A056011.P14440863451098314292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A056023 (n + 1)).toNat

end

end A056011.P14440863451098314292

namespace A056011

/-- `A038722(A056023(n+1))` -/
def P14440863451098314292.Spec : Prop :=
  ∀ n, P14440863451098314292.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P1549659588632935802

`A092543(n+1)+A057944(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056011

/-- `A092543(n+1)+A057944(n)` -/
def P1549659588632935802.Spec : Prop :=
  ∀ n, P1549659588632935802.a n = A056011 (n + 1)

theorem P1549659588632935802.correct : P1549659588632935802.Spec := by
  intro n
  simp only [A056011, Nat.add_sub_cancel]

end A056011

/-! ## A056011.P7946787394613278616

`A377809(n+1)-A082233(n)`
-/

namespace A056011.P7946787394613278616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - A082233 n

end

end A056011.P7946787394613278616

namespace A056011

/-- `A377809(n+1)-A082233(n)` -/
def P7946787394613278616.Spec : Prop :=
  ∀ n, P7946787394613278616.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P1506612681641594330

`A265129(n+1)-A056023(n+1)`
-/

namespace A056011.P1506612681641594330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A056023 (n + 1)

end

end A056011.P1506612681641594330

namespace A056011

/-- `A265129(n+1)-A056023(n+1)` -/
def P1506612681641594330.Spec : Prop :=
  ∀ n, P1506612681641594330.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P12845783742977327070

`A093995(n+1)+1-A056023(n+1)`
-/

namespace A056011.P12845783742977327070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A056023 (n + 1))

end

end A056011.P12845783742977327070

namespace A056011

/-- `A093995(n+1)+1-A056023(n+1)` -/
def P12845783742977327070.Spec : Prop :=
  ∀ n, P12845783742977327070.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P5185822109868315509

`A002024(n+1)²+1-A056023(n+1)`
-/

namespace A056011.P5185822109868315509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (1 - A056023 (n + 1))

end

end A056011.P5185822109868315509

namespace A056011

/-- `A002024(n+1)²+1-A056023(n+1)` -/
def P5185822109868315509.Spec : Prop :=
  ∀ n, P5185822109868315509.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P7465412557377708780

`A221215(n+1)+n+1-A211394(n+1)`
-/

namespace A056011.P7465412557377708780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (n + 1) + ((n + 1 : ℤ) - A211394 (n + 1))

end

end A056011.P7465412557377708780

namespace A056011

/-- `A221215(n+1)+n+1-A211394(n+1)` -/
def P7465412557377708780.Spec : Prop :=
  ∀ n, P7465412557377708780.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P1455107068454353587

`A092543(n+1)+A000217(A003056(n))`
-/

namespace A056011.P1455107068454353587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) + A000217 (A003056 n).toNat

end

end A056011.P1455107068454353587

namespace A056011

/-- `A092543(n+1)+A000217(A003056(n))` -/
def P1455107068454353587.Spec : Prop :=
  ∀ n, P1455107068454353587.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P5181473792482920742

`A092543(n+1)+A000217(A002024(n+1)-1)`
-/

namespace A056011.P5181473792482920742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) + A000217 (A002024 (n + 1) - 1).toNat

end

end A056011.P5181473792482920742

namespace A056011

/-- `A092543(n+1)+A000217(A002024(n+1)-1)` -/
def P5181473792482920742.Spec : Prop :=
  ∀ n, P5181473792482920742.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P9983842070019395011

`A064578(n+1)+A064789(n+1)-A056023(n+1)`
-/

namespace A056011.P9983842070019395011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1) + (A064789 (n + 1) - A056023 (n + 1))

end

end A056011.P9983842070019395011

namespace A056011

/-- `A064578(n+1)+A064789(n+1)-A056023(n+1)` -/
def P9983842070019395011.Spec : Prop :=
  ∀ n, P9983842070019395011.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P1311519715510939650

`A385406(A185180(n+1))`
-/

namespace A056011.P1311519715510939650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385406 (A185180 (n + 1)).toNat

end

end A056011.P1311519715510939650

namespace A056011

/-- `A385406(A185180(n+1))` -/
def P1311519715510939650.Spec : Prop :=
  ∀ n, P1311519715510939650.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P13027074995392483921

`A056023(A093995(n+1)-n)`
-/

namespace A056011.P13027074995392483921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A056011.P13027074995392483921

namespace A056011

/-- `A056023(A093995(n+1)-n)` -/
def P13027074995392483921.Spec : Prop :=
  ∀ n, P13027074995392483921.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P16000346753244196722

`A056023(A002024(n+1)²-n)`
-/

namespace A056011.P16000346753244196722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A056011.P16000346753244196722

namespace A056011

/-- `A056023(A002024(n+1)²-n)` -/
def P16000346753244196722.Spec : Prop :=
  ∀ n, P16000346753244196722.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P15409894292501738839

`A221217(A221216(n+1))`
-/

namespace A056011.P15409894292501738839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A221216 (n + 1)).toNat

end

end A056011.P15409894292501738839

namespace A056011

/-- `A221217(A221216(n+1))` -/
def P15409894292501738839.Spec : Prop :=
  ∀ n, P15409894292501738839.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P15478988256010307638

`A221217(A221215(A221217(A211394(n+1))))`
-/

namespace A056011.P15478988256010307638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A221215 (A221217 (A211394 (n + 1)).toNat).toNat).toNat

end

end A056011.P15478988256010307638

namespace A056011

/-- `A221217(A221215(A221217(A211394(n+1))))` -/
def P15478988256010307638.Spec : Prop :=
  ∀ n, P15478988256010307638.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P12178033023464602

`A110654(A002024(n+1)²)+A010751(n)`
-/

namespace A056011.P12178033023464602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (n + 1) ^ 2).toNat + A010751 n

end

end A056011.P12178033023464602

namespace A056011

/-- `A110654(A002024(n+1)²)+A010751(n)` -/
def P12178033023464602.Spec : Prop :=
  ∀ n, P12178033023464602.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P11864099034959163730

`A056023(A000194(2*n+1)²-n)`
-/

namespace A056011.P11864099034959163730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A056011.P11864099034959163730

namespace A056011

/-- `A056023(A000194(2*n+1)²-n)` -/
def P11864099034959163730.Spec : Prop :=
  ∀ n, P11864099034959163730.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P8321828346409673534

`A194280(A060734(n+1))+A188568(n+1)-A056023(n+1)`
-/

namespace A056011.P8321828346409673534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A060734 (n + 1)).toNat + (A188568 (n + 1) - A056023 (n + 1))

end

end A056011.P8321828346409673534

namespace A056011

/-- `A194280(A060734(n+1))+A188568(n+1)-A056023(n+1)` -/
def P8321828346409673534.Spec : Prop :=
  ∀ n, P8321828346409673534.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P13430608538567393898

`A000096(A003056(n))+2-A092542(n+1)`
-/

namespace A056011.P13430608538567393898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat + (2 - A092542 (n + 1))

end

end A056011.P13430608538567393898

namespace A056011

/-- `A000096(A003056(n))+2-A092542(n+1)` -/
def P13430608538567393898.Spec : Prop :=
  ∀ n, P13430608538567393898.a n = A056011 (n + 1)

end A056011

/-! ## A056011.P5591348420189406245

`A000217(A002024(n+1))+1-A092542(n+1)`
-/

namespace A056011.P5591348420189406245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat + (1 - A092542 (n + 1))

end

end A056011.P5591348420189406245

namespace A056011

/-- `A000217(A002024(n+1))+1-A092542(n+1)` -/
def P5591348420189406245.Spec : Prop :=
  ∀ n, P5591348420189406245.a n = A056011 (n + 1)

end A056011

/-!
# A056012: Numbers n such that n | Sigma(n) + d(n) + Phi(n).

The programs for A056012, there is no canonical definition to state claims against.
-/

/-! ## A056012.P13608253656852399817

`eq[A008486(n), A233541(A028310(n))]`
-/

namespace A056012.P13608253656852399817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056012.P13608253656852399817

/-! ## A056012.P16685214395797924001

`record[gcd(A181391(3*n+5), A262935(n+1))]`
-/

namespace A056012.P16685214395797924001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181391 (3 * n + 5)) (A262935 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056012.P16685214395797924001

/-!
# A056014: a(n) = (Fibonacci(2n-1) - Fibonacci(n+1))/2.

The programs for A056014, the canonical program `A056014.P5555984189579534083` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056014 has offset 0).

The definition of A056014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056014.P5555984189579534083

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056014

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P5555984189579534083.Spec : Prop :=
  ∀ n, P5555984189579534083.a n = A056014 n

theorem P5555984189579534083.correct : P5555984189579534083.Spec := by
  intro n
  simp only [A056014]

end A056014

/-! ## A056014.P8190413787985973225

`(A001519(n)-A000045(n+1))/2`
-/

namespace A056014.P8190413787985973225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001519 n - A000045 (n + 1) : ℚ) / 2

end

end A056014.P8190413787985973225

namespace A056014

/-- `(A001519(n)-A000045(n+1))/2` -/
def P8190413787985973225.Spec : Prop :=
  ∀ n, P8190413787985973225.a n = (A056014 n : ℚ)

end A056014

/-! ## A056014.P8992135025614944097

`ogf(x^3/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A056014.P8992135025614944097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -4, 3, 2, -1] n

end

end A056014.P8992135025614944097

namespace A056014

/-- `ogf(x^3/(1-4x+3x^2+2x^3-x^4))` -/
def P8992135025614944097.Spec : Prop :=
  ∀ n, P8992135025614944097.a n = A056014 n

end A056014

/-! ## A056014.P6417025157575469157

`∑[A094292(abs(1-n))]`
-/

namespace A056014.P6417025157575469157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056014.P6417025157575469157

namespace A056014

/-- `∑[A094292(abs(1-n))]` -/
def P6417025157575469157.Spec : Prop :=
  ∀ n, P6417025157575469157.a n = A056014 n

end A056014

/-! ## A056014.P17071654600638797522

`A094292(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A056014.P17071654600638797522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A094292 (n - 1) + a (n - 1)

end

end A056014.P17071654600638797522

namespace A056014

/-- `A094292(n-1)+a(n-1)` -/
def P17071654600638797522.Spec : Prop :=
  ∀ n, P17071654600638797522.a n = A056014 n

end A056014

/-! ## A056014.P17936145091493165727

`A059512(n)-A000045(n)`
-/

namespace A056014.P17936145091493165727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 n - A000045 n

end

end A056014.P17936145091493165727

namespace A056014

/-- `A059512(n)-A000045(n)` -/
def P17936145091493165727.Spec : Prop :=
  ∀ n, P17936145091493165727.a n = A056014 n

end A056014

/-! ## A056014.P8931922715544648543

`A005207(n)-A000045(n+1)`
-/

namespace A056014.P8931922715544648543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 n - A000045 (n + 1)

end

end A056014.P8931922715544648543

namespace A056014

/-- `A005207(n)-A000045(n+1)` -/
def P8931922715544648543.Spec : Prop :=
  ∀ n, P8931922715544648543.a n = A056014 n

end A056014

/-! ## A056014.P8460922214193956785

`A059512(n)-A212804(n+1)`
-/

namespace A056014.P8460922214193956785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 n - A212804 (n + 1)

end

end A056014.P8460922214193956785

namespace A056014

/-- `A059512(n)-A212804(n+1)` -/
def P8460922214193956785.Spec : Prop :=
  ∀ n, P8460922214193956785.a n = A056014 n

end A056014

/-! ## A056014.P9193215589143723905

`A005207(n)-A212804(n+2)`
-/

namespace A056014.P9193215589143723905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 n - A212804 (n + 2)

end

end A056014.P9193215589143723905

namespace A056014

/-- `A005207(n)-A212804(n+2)` -/
def P9193215589143723905.Spec : Prop :=
  ∀ n, P9193215589143723905.a n = A056014 n

end A056014

/-! ## A056014.P5621471666357364872

`A106511(2*n)-A094686(n)`
-/

namespace A056014.P5621471666357364872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * n) - A094686 n

end

end A056014.P5621471666357364872

namespace A056014

/-- `A106511(2*n)-A094686(n)` -/
def P5621471666357364872.Spec : Prop :=
  ∀ n, P5621471666357364872.a n = A056014 n

end A056014

/-! ## A056014.P8145485808891526079

`A293014(2*n+1)-A004695(n+1)`
-/

namespace A056014.P8145485808891526079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (2 * n + 1) - A004695 (n + 1)

end

end A056014.P8145485808891526079

namespace A056014

/-- `A293014(2*n+1)-A004695(n+1)` -/
def P8145485808891526079.Spec : Prop :=
  ∀ n, P8145485808891526079.a n = A056014 n

end A056014

/-! ## A056014.P15507059841135802327

`A191797(abs(A024000(n)))+A191797(n)`
-/

namespace A056014.P15507059841135802327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 |A024000 n|.toNat + A191797 n

end

end A056014.P15507059841135802327

namespace A056014

/-- `A191797(abs(A024000(n)))+A191797(n)` -/
def P15507059841135802327.Spec : Prop :=
  ∀ n, P15507059841135802327.a n = A056014 n

end A056014

/-! ## A056014.P4969918634356359521

`A004695(A004273(n))-A004695(n+1)`
-/

namespace A056014.P4969918634356359521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A004273 n).toNat - A004695 (n + 1)

end

end A056014.P4969918634356359521

namespace A056014

/-- `A004695(A004273(n))-A004695(n+1)` -/
def P4969918634356359521.Spec : Prop :=
  ∀ n, P4969918634356359521.a n = A056014 n

end A056014

/-! ## A056014.P14319447946327283174

`abs(Δ[A108140(n)])`
-/

namespace A056014.P14319447946327283174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A056014.P14319447946327283174

namespace A056014

/-- `abs(Δ[A108140(n)])` -/
def P14319447946327283174.Spec : Prop :=
  ∀ n, P14319447946327283174.a n = A056014 n

end A056014

/-! ## A056014.P6524866209044562397

`A001519(n)-A005207(n)`
-/

namespace A056014.P6524866209044562397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - A005207 n

end

end A056014.P6524866209044562397

namespace A056014

/-- `A001519(n)-A005207(n)` -/
def P6524866209044562397.Spec : Prop :=
  ∀ n, P6524866209044562397.a n = A056014 n

end A056014

/-! ## A056014.P7870996668105868397

`∑[A094292(n)]-A094292(n)`
-/

namespace A056014.P7870996668105868397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A094292 n

end

end A056014.P7870996668105868397

namespace A056014

/-- `∑[A094292(n)]-A094292(n)` -/
def P7870996668105868397.Spec : Prop :=
  ∀ n, P7870996668105868397.a n = A056014 n

end A056014

/-! ## A056014.P18351434349774114715

`A175395(n)-A162460(n+1)`
-/

namespace A056014.P18351434349774114715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - A162460 (n + 1)

end

end A056014.P18351434349774114715

namespace A056014

/-- `A175395(n)-A162460(n+1)` -/
def P18351434349774114715.Spec : Prop :=
  ∀ n, P18351434349774114715.a n = A056014 n

end A056014

/-! ## A056014.P8908099004297956414

`A212804(2*n)-A005207(n)`
-/

namespace A056014.P8908099004297956414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) - A005207 n

end

end A056014.P8908099004297956414

namespace A056014

/-- `A212804(2*n)-A005207(n)` -/
def P8908099004297956414.Spec : Prop :=
  ∀ n, P8908099004297956414.a n = A056014 n

end A056014

/-! ## A056014.P15073952657722579785

`abs(A108140(n+1)-A108140(n))`
-/

namespace A056014.P15073952657722579785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108140 (n + 1) - A108140 n|

end

end A056014.P15073952657722579785

namespace A056014

/-- `abs(A108140(n+1)-A108140(n))` -/
def P15073952657722579785.Spec : Prop :=
  ∀ n, P15073952657722579785.a n = A056014 n

end A056014

/-! ## A056014.P8903879743492804655

`2*A000045(n)²-A162460(n+1)`
-/

namespace A056014.P8903879743492804655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 - A162460 (n + 1)

end

end A056014.P8903879743492804655

namespace A056014

/-- `2*A000045(n)²-A162460(n+1)` -/
def P8903879743492804655.Spec : Prop :=
  ∀ n, P8903879743492804655.a n = A056014 n

end A056014

/-!
# A056015: a(n) = 6*a(n-1) - 5*a(n-2) - 4*a(n-3) - 3*a(n-4) + 2*a(n-5) + a(n-6), with a(0)=...=a(4)=0, a(5)=1.

The programs for A056015, there is no canonical definition to state claims against.
-/

/-! ## A056015.P11756521771356028079

`A102826(A187257(n+1))`
-/

namespace A056015.P11756521771356028079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102826 (A187257 (n + 1)).toNat

end

end A056015.P11756521771356028079

/-! ## A056015.P2321973088771802897

`floor(A270919(n)/A354774((n+2)²²))`
-/

namespace A056015.P2321973088771802897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270919 n : ℚ) / (A354774 (((n + 2) ^ 2) ^ 2) : ℚ)⌋

end

end A056015.P2321973088771802897

/-!
# A056016: a(n) = -2*a(n - 1) -a(n - 2) -a(n - 3), a(0) = a(1) = a(2) = 1.

The programs for A056016, the canonical program `A056016.P10273815723962134562` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056016 has offset 0).

The definition of A056016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)-a(n-2)-a(n-3)` (program `A056016.P10273815723962134562`, by `A056016.P10273815723962134562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056016.P10273815723962134562

`-2*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056016

/-- `-2*a(n-1)-a(n-2)-a(n-3)` -/
def P10273815723962134562.Spec : Prop :=
  ∀ n, P10273815723962134562.a n = A056016 n

theorem P10273815723962134562.correct : P10273815723962134562.Spec := by
  intro n
  simp only [A056016]

end A056016

/-! ## A056016.P3880003495698125477

`ogf((1+3x+4x^2)/(1+2x+x^2+x^3))`
-/

namespace A056016.P3880003495698125477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, 2, 1, 1] n

end

end A056016.P3880003495698125477

namespace A056016

/-- `ogf((1+3x+4x^2)/(1+2x+x^2+x^3))` -/
def P3880003495698125477.Spec : Prop :=
  ∀ n, P3880003495698125477.a n = A056016 n

end A056016

/-! ## A056016.P12907460229304949292

`a(n-2)+a(n-4)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-4`
-/

namespace A056016.P12907460229304949292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -4] fun n a =>
  a (n - 2) + (a (n - 4) - a (n - 1))

end

end A056016.P12907460229304949292

namespace A056016

/-- `a(n-2)+a(n-4)-a(n-1)` -/
def P12907460229304949292.Spec : Prop :=
  ∀ n, P12907460229304949292.a n = A056016 n

end A056016

/-! ## A056016.P5028605983733418269

`a(n-2)-2*a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A056016.P5028605983733418269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - 2 * a (n - 1) - 2 * a (n - 2) - a (n - 3)

end

end A056016.P5028605983733418269

namespace A056016

/-- `a(n-2)-2*a(n-1)-2*a(n-2)-a(n-3)` -/
def P5028605983733418269.Spec : Prop :=
  ∀ n, P5028605983733418269.a n = A056016 n

end A056016

/-!
# A056019: Self-inverse infinite permutation which shows the position of each finite permutation's inverse permutation in A055089.

The programs for A056019, there is no canonical definition to state claims against.
-/

/-! ## A056019.P2648731767109166771

`A060120(A060126(n))`
-/

namespace A056019.P2648731767109166771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (A060126 n).toNat

end

end A056019.P2648731767109166771

/-! ## A056019.P14713169172115072002

`A060119(A060127(n))`
-/

namespace A056019.P14713169172115072002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A060127 n).toNat

end

end A056019.P14713169172115072002

/-! ## A056019.P7543442132076793847

`A060120(A060125(A060127(n)%A030299(n+1)))`
-/

namespace A056019.P7543442132076793847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (A060125 (Int.tmod (A060127 n) (A030299 (n + 1))).toNat).toNat

end

end A056019.P7543442132076793847

/-! ## A056019.P14874630187733851117

`A060119(A060125(A060126(A060126(A060119(n)))))`
-/

namespace A056019.P14874630187733851117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A060125 (A060126 (A060126 (A060119 n).toNat).toNat).toNat).toNat

end

end A056019.P14874630187733851117

/-! ## A056019.P17008985656901906827

`A060120(A060125(A060127(A060127(A060120(n)))))`
-/

namespace A056019.P17008985656901906827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (A060125 (A060127 (A060127 (A060120 n).toNat).toNat).toNat).toNat

end

end A056019.P17008985656901906827

/-!
# A056020: Numbers that are congruent to +-1 mod 9.

The programs for A056020, the canonical program `A056020.P3627970378113192236` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056020 has offset 1).

The definition of A056020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056020.P3627970378113192236

`a(n-2)+9` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056020

/-- `a(n-2)+9` -/
def P3627970378113192236.Spec : Prop :=
  ∀ n, (P3627970378113192236.a n : ℤ) = A056020 (n + 1)

theorem P3627970378113192236.correct : P3627970378113192236.Spec := by
  intro n
  simp only [A056020, Nat.add_sub_cancel]

end A056020

/-! ## A056020.P866151852491613100

`9*n-a(n-1)` with `a(0)=1`
-/

namespace A056020.P866151852491613100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n : ℤ) - a (n - 1)

end

end A056020.P866151852491613100

namespace A056020

/-- `9*n-a(n-1)` -/
def P866151852491613100.Spec : Prop :=
  ∀ n, P866151852491613100.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P15173575324731481823

`(9*A132355(n+1)+1)^(1/2)`
-/

namespace A056020.P15173575324731481823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 * A132355 (n + 1) + 1 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A056020.P15173575324731481823

namespace A056020

/-- `(9*A132355(n+1)+1)^(1/2)` -/
def P15173575324731481823.Spec : Prop :=
  ∀ n, P15173575324731481823.a n = (A056020 (n + 1) : ℝ)

end A056020

/-! ## A056020.P5644835423440256399

`eq[n, n^dr(n²)]`
-/

namespace A056020.P5644835423440256399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056020.P5644835423440256399

namespace A056020

/-- `eq[n, n^dr(n²)]` -/
def P5644835423440256399.Spec : Prop :=
  ∀ n, (P5644835423440256399.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P4718592553124040237

`∑[6^(n%2)]+n`
-/

namespace A056020.P4718592553124040237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A056020.P4718592553124040237

namespace A056020

/-- `∑[6^(n%2)]+n` -/
def P4718592553124040237.Spec : Prop :=
  ∀ n, (P4718592553124040237.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P16523136482253238537

`∑[6^and(1, n)]+n`
-/

namespace A056020.P16523136482253238537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A056020.P16523136482253238537

namespace A056020

/-- `∑[6^and(1, n)]+n` -/
def P16523136482253238537.Spec : Prop :=
  ∀ n, (P16523136482253238537.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P14231864460229244099

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=7, a(2)=2`
-/

namespace A056020.P14231864460229244099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056020.P14231864460229244099

namespace A056020

/-- `∑[abs(a(n-2))]` -/
def P14231864460229244099.Spec : Prop :=
  ∀ n, (P14231864460229244099.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P17599057982597426127

`∑[9-a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A056020.P17599057982597426127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056020.P17599057982597426127

namespace A056020

/-- `∑[9-a(n-1)]` -/
def P17599057982597426127.Spec : Prop :=
  ∀ n, P17599057982597426127.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P6303154655118980361

`eq[n+1, dr(n²)+n]`
-/

namespace A056020.P6303154655118980361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056020.P6303154655118980361

namespace A056020

/-- `eq[n+1, dr(n²)+n]` -/
def P6303154655118980361.Spec : Prop :=
  ∀ n, (P6303154655118980361.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P6652088761709048717

`eq[n-1, n-dr(n²)]`
-/

namespace A056020.P6652088761709048717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056020.P6652088761709048717

namespace A056020

/-- `eq[n-1, n-dr(n²)]` -/
def P6652088761709048717.Spec : Prop :=
  ∀ n, (P6652088761709048717.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P16671088434226196420

`lt[(n-1)*dr(n²), n]`
-/

namespace A056020.P16671088434226196420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A056020.P16671088434226196420

namespace A056020

/-- `lt[(n-1)*dr(n²), n]` -/
def P16671088434226196420.Spec : Prop :=
  ∀ n, (P16671088434226196420.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P17773791297722116026

`record[n+1-dr(n²)²]`
-/

namespace A056020.P17773791297722116026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056020.P17773791297722116026

namespace A056020

/-- `record[n+1-dr(n²)²]` -/
def P17773791297722116026.Spec : Prop :=
  ∀ n, P17773791297722116026.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P7114525910439595890

`lt[n^dr(n²), n+1]`
-/

namespace A056020.P7114525910439595890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056020.P7114525910439595890

namespace A056020

/-- `lt[n^dr(n²), n+1]` -/
def P7114525910439595890.Spec : Prop :=
  ∀ n, (P7114525910439595890.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P7268743340217635245

`∑[∑[ogf((1+7x+x^2)/(1+x))]]`
-/

namespace A056020.P7268743340217635245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056020.P7268743340217635245

namespace A056020

/-- `∑[∑[ogf((1+7x+x^2)/(1+x))]]` -/
def P7268743340217635245.Spec : Prop :=
  ∀ n, P7268743340217635245.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P9856470203166401470

`ogf((1+7x+x^2)/(1-x-x^2+x^3))`
-/

namespace A056020.P9856470203166401470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 1] [1, -1, -1, 1] n

end

end A056020.P9856470203166401470

namespace A056020

/-- `ogf((1+7x+x^2)/(1-x-x^2+x^3))` -/
def P9856470203166401470.Spec : Prop :=
  ∀ n, P9856470203166401470.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P12627593422255210105

`9-floor(-a(n-2))` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A056020.P12627593422255210105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  9 - (-a (n - 2))

end

end A056020.P12627593422255210105

namespace A056020

/-- `9-floor(-a(n-2))` -/
def P12627593422255210105.Spec : Prop :=
  ∀ n, P12627593422255210105.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P5484488337244984328

`9-ceil(-a(n-2))` with `a(0)=1, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A056020.P5484488337244984328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  9 - (-a (n - 2))

end

end A056020.P5484488337244984328

namespace A056020

/-- `9-ceil(-a(n-2))` -/
def P5484488337244984328.Spec : Prop :=
  ∀ n, P5484488337244984328.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P8734187481264359899

`9-round(-a(n-2))` with `a(0)=1, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A056020.P8734187481264359899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  9 - (-a (n - 2))

end

end A056020.P8734187481264359899

namespace A056020

/-- `9-round(-a(n-2))` -/
def P8734187481264359899.Spec : Prop :=
  ∀ n, P8734187481264359899.a n = A056020 (n + 1)

end A056020

/-! ## A056020.P1855016998029009513

`lt[1, val((2*n)²+5, 3)]`
-/

namespace A056020.P1855016998029009513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n) ^ 2 + 5) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056020.P1855016998029009513

namespace A056020

/-- `lt[1, val((2*n)²+5, 3)]` -/
def P1855016998029009513.Spec : Prop :=
  ∀ n, (P1855016998029009513.a n : ℤ) = A056020 (n + 1)

end A056020

/-! ## A056020.P15649728445773711915

`∑[gcd(6, (n+1)%2)]+n`
-/

namespace A056020.P15649728445773711915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A056020.P15649728445773711915

namespace A056020

/-- `∑[gcd(6, (n+1)%2)]+n` -/
def P15649728445773711915.Spec : Prop :=
  ∀ n, (P15649728445773711915.a n : ℤ) = A056020 (n + 1)

end A056020

/-!
# A056021: Numbers k such that k^4 == 1 (mod 5^2).

The programs for A056021, the canonical program `A056021.P12274417729229104931` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056021 has offset 1).

The definition of A056021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056021.P12274417729229104931

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=7, a(2)=18, a(3)=24, a(4)=26`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056021

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P12274417729229104931.Spec : Prop :=
  ∀ n, P12274417729229104931.a n = A056021 (n + 1)

theorem P12274417729229104931.correct : P12274417729229104931.Spec := by
  intro n
  simp only [A056021, Nat.add_sub_cancel]

end A056021

/-! ## A056021.P10709782791926244624

`∑[A313583(∑[and(2, n+1)]-n)]+n`
-/

namespace A056021.P10709782791926244624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A056021.P10709782791926244624

namespace A056021

/-- `∑[A313583(∑[and(2, n+1)]-n)]+n` -/
def P10709782791926244624.Spec : Prop :=
  ∀ n, P10709782791926244624.a n = A056021 (n + 1)

end A056021

/-! ## A056021.P3631798597583610190

`∪[A376506(n+1), A376507(n+1)]`
-/

namespace A056021.P3631798597583610190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056021.P3631798597583610190

namespace A056021

/-- `∪[A376506(n+1), A376507(n+1)]` -/
def P3631798597583610190.Spec : Prop :=
  ∀ n, (P3631798597583610190.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P8875845301207738209

`∑[A008706(Δ[A098180(n+1)])]+n`
-/

namespace A056021.P8875845301207738209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A056021.P8875845301207738209

namespace A056021

/-- `∑[A008706(Δ[A098180(n+1)])]+n` -/
def P8875845301207738209.Spec : Prop :=
  ∀ n, P8875845301207738209.a n = A056021 (n + 1)

end A056021

/-! ## A056021.P2598770205687537025

`eq[n+1, n²²%25+n]`
-/

namespace A056021.P2598770205687537025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 % 25 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P2598770205687537025

namespace A056021

/-- `eq[n+1, n²²%25+n]` -/
def P2598770205687537025.Spec : Prop :=
  ∀ n, (P2598770205687537025.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P5286663994548290200

`A047222(A204542(n+1))+A000034(n)`
-/

namespace A056021.P5286663994548290200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (A204542 (n + 1)).toNat + A000034 n

end

end A056021.P5286663994548290200

namespace A056021

/-- `A047222(A204542(n+1))+A000034(n)` -/
def P5286663994548290200.Spec : Prop :=
  ∀ n, P5286663994548290200.a n = A056021 (n + 1)

end A056021

/-! ## A056021.P14226044947133452423

`eq[A070568(n), A267537(n)]`
-/

namespace A056021.P14226044947133452423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P14226044947133452423

namespace A056021

/-- `eq[A070568(n), A267537(n)]` -/
def P14226044947133452423.Spec : Prop :=
  ∀ n, (P14226044947133452423.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P12338359294123913245

`eq[A070568(n), A267869(n)]`
-/

namespace A056021.P12338359294123913245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P12338359294123913245

namespace A056021

/-- `eq[A070568(n), A267869(n)]` -/
def P12338359294123913245.Spec : Prop :=
  ∀ n, (P12338359294123913245.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P346850587348197470

`eq[A070568(n), A267871(n)]`
-/

namespace A056021.P346850587348197470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P346850587348197470

namespace A056021

/-- `eq[A070568(n), A267871(n)]` -/
def P346850587348197470.Spec : Prop :=
  ∀ n, (P346850587348197470.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P8632250114797708891

`eq[A070568(n), A329684(n)]`
-/

namespace A056021.P8632250114797708891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P8632250114797708891

namespace A056021

/-- `eq[A070568(n), A329684(n)]` -/
def P8632250114797708891.Spec : Prop :=
  ∀ n, (P8632250114797708891.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P14846445506431587170

`eq[A070568(n), A078315(n+1)]`
-/

namespace A056021.P14846445506431587170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P14846445506431587170

namespace A056021

/-- `eq[A070568(n), A078315(n+1)]` -/
def P14846445506431587170.Spec : Prop :=
  ∀ n, (P14846445506431587170.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P10033322523895298061

`eq[A070568(n), A283149(n+1)]`
-/

namespace A056021.P10033322523895298061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P10033322523895298061

namespace A056021

/-- `eq[A070568(n), A283149(n+1)]` -/
def P10033322523895298061.Spec : Prop :=
  ∀ n, (P10033322523895298061.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P6339472370618576220

`eq[A070568(n), A376663(n+1)]`
-/

namespace A056021.P6339472370618576220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P6339472370618576220

namespace A056021

/-- `eq[A070568(n), A376663(n+1)]` -/
def P6339472370618576220.Spec : Prop :=
  ∀ n, (P6339472370618576220.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P1206744574279591522

`eq[A070568(n), A381204(n+2)]`
-/

namespace A056021.P1206744574279591522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381204 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P1206744574279591522

namespace A056021

/-- `eq[A070568(n), A381204(n+2)]` -/
def P1206744574279591522.Spec : Prop :=
  ∀ n, (P1206744574279591522.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P12195750361622442532

`eq[A051340(A051340(n)-1), A070568(n)]`
-/

namespace A056021.P12195750361622442532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A051340 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P12195750361622442532

namespace A056021

/-- `eq[A051340(A051340(n)-1), A070568(n)]` -/
def P12195750361622442532.Spec : Prop :=
  ∀ n, (P12195750361622442532.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P12293921090877296183

`eq[A019303(n)*A070568(n), A019303(n)]`
-/

namespace A056021.P12293921090877296183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n * A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P12293921090877296183

namespace A056021

/-- `eq[A019303(n)*A070568(n), A019303(n)]` -/
def P12293921090877296183.Spec : Prop :=
  ∀ n, (P12293921090877296183.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P10168795272502515418

`eq[A019304(n)*A070568(n), A019304(n)]`
-/

namespace A056021.P10168795272502515418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 n * A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P10168795272502515418

namespace A056021

/-- `eq[A019304(n)*A070568(n), A019304(n)]` -/
def P10168795272502515418.Spec : Prop :=
  ∀ n, (P10168795272502515418.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P8700857770360245848

`eq[A056753(n)*A070568(n), A056753(n)]`
-/

namespace A056021.P8700857770360245848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n * A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P8700857770360245848

namespace A056021

/-- `eq[A056753(n)*A070568(n), A056753(n)]` -/
def P8700857770360245848.Spec : Prop :=
  ∀ n, (P8700857770360245848.a n : ℤ) = A056021 (n + 1)

end A056021

/-! ## A056021.P9585525886728610751

`eq[A057979(n)*A070568(n), A057979(n)]`
-/

namespace A056021.P9585525886728610751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n * A070568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056021.P9585525886728610751

namespace A056021

/-- `eq[A057979(n)*A070568(n), A057979(n)]` -/
def P9585525886728610751.Spec : Prop :=
  ∀ n, (P9585525886728610751.a n : ℤ) = A056021 (n + 1)

end A056021

/-!
# A056022: Numbers k such that k^6 == 1 (mod 7^2).

The programs for A056022, the canonical program `A056022.P5982289393340405747` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056022 has offset 1).

The definition of A056022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056022.P5982289393340405747

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=18, a(2)=19, a(3)=30, a(4)=31, a(5)=48, a(6)=50`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056022

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P5982289393340405747.Spec : Prop :=
  ∀ n, P5982289393340405747.a n = A056022 (n + 1)

theorem P5982289393340405747.correct : P5982289393340405747.Spec := by
  intro n
  simp only [A056022, Nat.add_sub_cancel]

end A056022

/-!
# A056023: The positive integers written as a triangle, where row n is written from right to left if n is odd and otherwise from left to right.

The programs for A056023, the canonical program `A056023.P18301880220554603864` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056023 has offset 1).

The definition of A056023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056023.P18301880220554603864

`A038722(A056011(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056023

/-- `A038722(A056011(n+1))` -/
def P18301880220554603864.Spec : Prop :=
  ∀ n, P18301880220554603864.a n = A056023 (n + 1)

theorem P18301880220554603864.correct : P18301880220554603864.Spec := by
  intro n
  simp only [A056023, Nat.add_sub_cancel]

end A056023

/-! ## A056023.P2909619841819229642

`A061579(A056011(n+1)-1)+1`
-/

namespace A056023.P2909619841819229642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A056011 (n + 1) - 1).toNat + 1

end

end A056023.P2909619841819229642

namespace A056023

/-- `A061579(A056011(n+1)-1)+1` -/
def P2909619841819229642.Spec : Prop :=
  ∀ n, P2909619841819229642.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P3665046654644691911

`A265129(n+1)-A056011(n+1)`
-/

namespace A056023.P3665046654644691911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A056011 (n + 1)

end

end A056023.P3665046654644691911

namespace A056023

/-- `A265129(n+1)-A056011(n+1)` -/
def P3665046654644691911.Spec : Prop :=
  ∀ n, P3665046654644691911.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P5016600359883917929

`A377809(n+1)-A114751(n+1)`
-/

namespace A056023.P5016600359883917929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - A114751 (n + 1)

end

end A056023.P5016600359883917929

namespace A056023

/-- `A377809(n+1)-A114751(n+1)` -/
def P5016600359883917929.Spec : Prop :=
  ∀ n, P5016600359883917929.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P453071262058339559

`A093995(n+1)+1-A056011(n+1)`
-/

namespace A056023.P453071262058339559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A056011 (n + 1))

end

end A056023.P453071262058339559

namespace A056023

/-- `A093995(n+1)+1-A056011(n+1)` -/
def P453071262058339559.Spec : Prop :=
  ∀ n, P453071262058339559.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P16076625020257581180

`A002024(n+1)²+1-A056011(n+1)`
-/

namespace A056023.P16076625020257581180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (1 - A056011 (n + 1))

end

end A056023.P16076625020257581180

namespace A056023

/-- `A002024(n+1)²+1-A056011(n+1)` -/
def P16076625020257581180.Spec : Prop :=
  ∀ n, P16076625020257581180.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P18372810971145261956

`A000096(A003056(n))+2-A092543(n+1)`
-/

namespace A056023.P18372810971145261956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat + (2 - A092543 (n + 1))

end

end A056023.P18372810971145261956

namespace A056023

/-- `A000096(A003056(n))+2-A092543(n+1)` -/
def P18372810971145261956.Spec : Prop :=
  ∀ n, P18372810971145261956.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P17526171850846449922

`A000217(A002024(n+1))+1-A092543(n+1)`
-/

namespace A056023.P17526171850846449922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat + (1 - A092543 (n + 1))

end

end A056023.P17526171850846449922

namespace A056023

/-- `A000217(A002024(n+1))+1-A092543(n+1)` -/
def P17526171850846449922.Spec : Prop :=
  ∀ n, P17526171850846449922.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P1232766091657156505

`A064578(n+1)+A064789(n+1)-A056011(n+1)`
-/

namespace A056023.P1232766091657156505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1) + (A064789 (n + 1) - A056011 (n + 1))

end

end A056023.P1232766091657156505

namespace A056023

/-- `A064578(n+1)+A064789(n+1)-A056011(n+1)` -/
def P1232766091657156505.Spec : Prop :=
  ∀ n, P1232766091657156505.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P18300733248685267046

`A056011(A061579(n)+1)`
-/

namespace A056023.P18300733248685267046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A061579 n + 1).toNat

end

end A056023.P18300733248685267046

namespace A056023

/-- `A056011(A061579(n)+1)` -/
def P18300733248685267046.Spec : Prop :=
  ∀ n, P18300733248685267046.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P6762330107407309150

`A385406(A064789(n+1))`
-/

namespace A056023.P6762330107407309150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385406 (A064789 (n + 1)).toNat

end

end A056023.P6762330107407309150

namespace A056023

/-- `A385406(A064789(n+1))` -/
def P6762330107407309150.Spec : Prop :=
  ∀ n, P6762330107407309150.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P16900614968218939088

`A056011(A093995(n+1)-n)`
-/

namespace A056023.P16900614968218939088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A056023.P16900614968218939088

namespace A056023

/-- `A056011(A093995(n+1)-n)` -/
def P16900614968218939088.Spec : Prop :=
  ∀ n, P16900614968218939088.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P15646331808982242419

`A056011(A002024(n+1)²-n)`
-/

namespace A056023.P15646331808982242419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A056023.P15646331808982242419

namespace A056023

/-- `A056011(A002024(n+1)²-n)` -/
def P15646331808982242419.Spec : Prop :=
  ∀ n, P15646331808982242419.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P11063924691382842972

`A056011(A057028(A185180(n+1)))`
-/

namespace A056023.P11063924691382842972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A057028 (A185180 (n + 1)).toNat).toNat

end

end A056023.P11063924691382842972

namespace A056023

/-- `A056011(A057028(A185180(n+1)))` -/
def P11063924691382842972.Spec : Prop :=
  ∀ n, P11063924691382842972.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P8919682090146706109

`A211394(n+1)+A221217(A211394(n+1))-A221215(n+1)`
-/

namespace A056023.P8919682090146706109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + (A221217 (A211394 (n + 1)).toNat - A221215 (n + 1))

end

end A056023.P8919682090146706109

namespace A056023

/-- `A211394(n+1)+A221217(A211394(n+1))-A221215(n+1)` -/
def P8919682090146706109.Spec : Prop :=
  ∀ n, P8919682090146706109.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P5950977969494350808

`A221216(n+1)+A221217(A221216(n+1))-A221215(n+1)`
-/

namespace A056023.P5950977969494350808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (n + 1) + (A221217 (A221216 (n + 1)).toNat - A221215 (n + 1))

end

end A056023.P5950977969494350808

namespace A056023

/-- `A221216(n+1)+A221217(A221216(n+1))-A221215(n+1)` -/
def P5950977969494350808.Spec : Prop :=
  ∀ n, P5950977969494350808.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P18296611444404542971

`A221217(A221215(n+1))`
-/

namespace A056023.P18296611444404542971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A221215 (n + 1)).toNat

end

end A056023.P18296611444404542971

namespace A056023

/-- `A221217(A221215(n+1))` -/
def P18296611444404542971.Spec : Prop :=
  ∀ n, P18296611444404542971.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P8829323186826148545

`A380245(A378705(n+1))`
-/

namespace A056023.P8829323186826148545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A378705 (n + 1)).toNat

end

end A056023.P8829323186826148545

namespace A056023

/-- `A380245(A378705(n+1))` -/
def P8829323186826148545.Spec : Prop :=
  ∀ n, P8829323186826148545.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P16082345814243020082

`A378705(A380815(n+1))`
-/

namespace A056023.P16082345814243020082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A380815 (n + 1)).toNat

end

end A056023.P16082345814243020082

namespace A056023

/-- `A378705(A380815(n+1))` -/
def P16082345814243020082.Spec : Prop :=
  ∀ n, P16082345814243020082.a n = A056023 (n + 1)

end A056023

/-! ## A056023.P937580463569391229

`A380817(A378762(n+1))`
-/

namespace A056023.P937580463569391229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A378762 (n + 1)).toNat

end

end A056023.P937580463569391229

namespace A056023

/-- `A380817(A378762(n+1))` -/
def P937580463569391229.Spec : Prop :=
  ∀ n, P937580463569391229.a n = A056023 (n + 1)

end A056023

/-!
# A056024: Numbers k such that k^10 == 1 (mod 11^2).

The programs for A056024, there is no canonical definition to state claims against.
-/

/-! ## A056024.P12543533709553353365

`eq[A178334(n), A193345(A006047(n))]`
-/

namespace A056024.P12543533709553353365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193345 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056024.P12543533709553353365

/-! ## A056024.P11249078095859738727

`eq[0, A036578(A038586(n))]`
-/

namespace A056024.P11249078095859738727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (A038586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056024.P11249078095859738727

/-! ## A056024.P14903699384478668557

`eq[0, A262420(A006047(n))]`
-/

namespace A056024.P14903699384478668557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262420 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056024.P14903699384478668557

/-! ## A056024.P65809974964170267

`eq[1, A078078(A117940(n))]`
-/

namespace A056024.P65809974964170267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078078 (A117940 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056024.P65809974964170267

/-! ## A056024.P15950421730885968951

`eq[1, A127325(A120879(n))]`
-/

namespace A056024.P15950421730885968951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127325 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056024.P15950421730885968951

/-!
# A056026: Numbers k such that k^14 == 1 (mod 15^2).

The programs for A056026, the canonical program `A056026.P12102391198198858105` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056026 has offset 1).

The definition of A056026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056026.P12102391198198858105

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=26, a(2)=199, a(3)=224, a(4)=226`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056026

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P12102391198198858105.Spec : Prop :=
  ∀ n, P12102391198198858105.a n = A056026 (n + 1)

theorem P12102391198198858105.correct : P12102391198198858105.Spec := by
  intro n
  simp only [A056026, Nat.add_sub_cancel]

end A056026

/-! ## A056026.P1913517272574314153

`record[A056926(A158229(n+1))]`
-/

namespace A056026.P1913517272574314153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A158229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056026.P1913517272574314153

namespace A056026

/-- `record[A056926(A158229(n+1))]` -/
def P1913517272574314153.Spec : Prop :=
  ∀ n, P1913517272574314153.a n = A056026 (n + 1)

end A056026

/-!
# A056029: Champernowne's constant in base 2.

The programs for A056029, there is no canonical definition to state claims against.
-/

/-! ## A056029.P3974616787325643346

`A284929(A007610(2*n+1)^A284950(n+1))`
-/

namespace A056029.P3974616787325643346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (SequenceMachineLib.roundAway ((A007610 (2 * n + 1) : ℚ) ^ (A284950 (n + 1) : ℤ))).toNat

end

end A056029.P3974616787325643346

/-! ## A056029.P329714948624104106

`A284588(lt[A332580(n+1), A004526(n)+1])`
-/

namespace A056029.P329714948624104106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284588 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056029.P329714948624104106

/-! ## A056029.P9743644559814953924

`A005614(A196373(2*(n+2))-A223082(n+1))`
-/

namespace A056029.P9743644559814953924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A196373 (2 * (n + 2)) - A223082 (n + 1)).toNat

end

end A056029.P9743644559814953924

/-! ## A056029.P8950709778394605258

`A080764(A207631(3*(n+1))+A079254(n+5))`
-/

namespace A056029.P8950709778394605258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A207631 (3 * (n + 1)) + A079254 (n + 5)).toNat

end

end A056029.P8950709778394605258

/-! ## A056029.P14460783023930635107

`A005614(A196373(2*(n+2))%A187787(n+4))`
-/

namespace A056029.P14460783023930635107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (Int.tmod (A196373 (2 * (n + 2))) (A187787 (n + 4))).toNat

end

end A056029.P14460783023930635107

/-!
# A056031: Numbers k such that k^22 == 1 (mod 23^2).

The programs for A056031, there is no canonical definition to state claims against.
-/

/-! ## A056031.P3283121776863776557

`A109210(A283177(n))-A004977(n+1)`
-/

namespace A056031.P3283121776863776557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109210 (A283177 n).toNat - A004977 (n + 1)

end

end A056031.P3283121776863776557

/-!
# A056032: Trimorphic but not bimorphic nor automorphic.

The programs for A056032, there is no canonical definition to state claims against.
-/

/-! ## A056032.P7450118953628587819

`∩[A033819(n+1), A056033(n+1)]`
-/

namespace A056032.P7450118953628587819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056032.P7450118953628587819

/-! ## A056032.P12902006869711871300

`∩[A056033(n+1), A072496(n+1)]`
-/

namespace A056032.P12902006869711871300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056032.P12902006869711871300

/-! ## A056032.P8271881404054970766

`eq[3, A074250(n+1)]+1`
-/

namespace A056032.P8271881404054970766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056032.P8271881404054970766

/-! ## A056032.P9341942610288775838

`eq[3, A074250(A028310(n))]`
-/

namespace A056032.P9341942610288775838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056032.P9341942610288775838

/-!
# A056033: 5-morphic but not bimorphic nor automorphic.

The programs for A056033, there is no canonical definition to state claims against.
-/

/-! ## A056033.P10676229766571143443

`∪[A056032(n+1), A056036(n+1)]`
-/

namespace A056033.P10676229766571143443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056033.P10676229766571143443

/-! ## A056033.P10985709648607706054

`∩[comp[A003226(n+1)], A068407(n+1)]`
-/

namespace A056033.P10985709648607706054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A056033.P10985709648607706054

/-! ## A056033.P2759957148284711368

`∩[comp[A018834(n+1)], A068407(n+1)]`
-/

namespace A056033.P2759957148284711368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A056033.P2759957148284711368

/-! ## A056033.P5894023353315561367

`∩[comp[A029943(n+1)], A068407(n+1)]`
-/

namespace A056033.P5894023353315561367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029943 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A056033.P5894023353315561367

/-! ## A056033.P13542575922764667346

`∩[A068407(n+1), comp[A068408(n+1)]]`
-/

namespace A056033.P13542575922764667346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068408 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A056033.P13542575922764667346

/-!
# A056036: 5-morphic but not bimorphic, automorphic nor trimorphic.

The programs for A056036, there is no canonical definition to state claims against.
-/

/-! ## A056036.P6575117729057167444

`eq[5, A074250(n+1)]+1`
-/

namespace A056036.P6575117729057167444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056036.P6575117729057167444

/-! ## A056036.P17308494588813227984

`eq[5, A074250(A028310(n))]`
-/

namespace A056036.P17308494588813227984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056036.P17308494588813227984

/-! ## A056036.P816938977474037725

`A020725(eq[5, A074250(n+1)])`
-/

namespace A056036.P816938977474037725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056036.P816938977474037725

/-!
# A056037: Number of 6 X 6 binary matrices with n ones, with no zero rows or columns, up to row and column permutation.

The programs for A056037, there is no canonical definition to state claims against.
-/

/-! ## A056037.P15058428113593110193

`A057149(n+67)`
-/

namespace A056037.P15058428113593110193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057149 (n + 67)

end

end A056037.P15058428113593110193

/-! ## A056037.P16681512191790907985

`A057150(A167499(n+4)+1)`
-/

namespace A056037.P16681512191790907985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057150 (A167499 (n + 4) + 1).toNat

end

end A056037.P16681512191790907985

/-! ## A056037.P13650303954652899734

`A057150(A167614(n+4)+3)`
-/

namespace A056037.P13650303954652899734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057150 (A167614 (n + 4) + 3).toNat

end

end A056037.P13650303954652899734

/-!
# A056038: Largest factorial k! such that (k!)^2 divides n!.

The programs for A056038, there is no canonical definition to state claims against.
-/

/-! ## A056038.P6687814261983646533

`A056039(A028310(n))!`
-/

namespace A056038.P6687814261983646533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A056039 (A028310 n).toNat).toNat

end

end A056038.P6687814261983646533

/-! ## A056038.P4317654729352027480

`A000142(A056039(or(1, n)))`
-/

namespace A056038.P4317654729352027480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A056039 (Nat.lor 1 n)).toNat

end

end A056038.P4317654729352027480

/-! ## A056038.P3840498689921638361

`sqrt(A105350(n))`
-/

namespace A056038.P3840498689921638361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A105350 n : ℝ)

end

end A056038.P3840498689921638361

/-! ## A056038.P4868404242152622899

`A109129(A128014(n))!`
-/

namespace A056038.P4868404242152622899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A109129 (A128014 n).toNat).toNat

end

end A056038.P4868404242152622899

/-! ## A056038.P4812236562124660026

`A253557(A001318(∏[gcd(2, n)]-1))!`
-/

namespace A056038.P4812236562124660026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A253557 (A001318 (∏ j ∈ Finset.range (n + 1), f1 j - 1)).toNat).toNat

end

end A056038.P4812236562124660026

/-!
# A056039: Largest k such that (k!)^2 divides n!.

The programs for A056039, there is no canonical definition to state claims against.
-/

/-! ## A056039.P16819198971069690262

`n+1-A096125(n+1)%(n+1)`
-/

namespace A056039.P16819198971069690262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A096125 (n + 1)) (n + 1 : ℤ)

end

end A056039.P16819198971069690262

/-! ## A056039.P13446589730835120696

`ceil(A033638(n)/A096125(n+1))`
-/

namespace A056039.P13446589730835120696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033638 n : ℚ) / (A096125 (n + 1) : ℚ)⌉

end

end A056039.P13446589730835120696

/-! ## A056039.P13133392330175869309

`A028310(1-A096125(n+1)+n)`
-/

namespace A056039.P13133392330175869309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - A096125 (n + 1) + (n : ℤ)).toNat

end

end A056039.P13133392330175869309

/-! ## A056039.P14579352824073879118

`floor(A076921(n+1)/A096125(n+1))`
-/

namespace A056039.P14579352824073879118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076921 (n + 1) : ℚ) / (A096125 (n + 1) : ℚ)⌋

end

end A056039.P14579352824073879118

/-! ## A056039.P16994926399660951856

`ceil(A002522(n)/(4*A096125(n+1)))`
-/

namespace A056039.P16994926399660951856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002522 n : ℚ) / (4 * A096125 (n + 1) : ℚ)⌉

end

end A056039.P16994926399660951856

/-! ## A056039.P9253078388534841253

`A000007(n)+n+1-A096125(n+1)`
-/

namespace A056039.P9253078388534841253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((n + 1 : ℤ) - A096125 (n + 1))

end

end A056039.P9253078388534841253

/-! ## A056039.P2661157760778181627

`1-A096125(n+1)%A102363(n)+n`
-/

namespace A056039.P2661157760778181627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A096125 (n + 1)) (A102363 n) + (n : ℤ)

end

end A056039.P2661157760778181627

/-! ## A056039.P6001075316499540765

`A001281(A103517(n))-A096125(n+1)`
-/

namespace A056039.P6001075316499540765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A103517 n).toNat - A096125 (n + 1)

end

end A056039.P6001075316499540765

/-! ## A056039.P807229052388954266

`A004736(A161680(n)+A096125(n+1))`
-/

namespace A056039.P807229052388954266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A161680 n + A096125 (n + 1)).toNat

end

end A056039.P807229052388954266

/-! ## A056039.P4550332415490639874

`A193739(A096125(n+1)+A000217(n))`
-/

namespace A056039.P4550332415490639874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A096125 (n + 1) + A000217 n).toNat

end

end A056039.P4550332415490639874

/-!
# A056040: Swinging factorial, a(n) = 2^(n-(n mod 2))*Product_{k=1..n} k^((-1)^(k+1)).

The programs for A056040, the canonical program `A056040.P782074390748687976` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056040 has offset 0).

The definition of A056040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056040.P782074390748687976

`n!/floor(n/2)!²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056040

/-- `n!/floor(n/2)!²` -/
def P782074390748687976.Spec : Prop :=
  ∀ n, P782074390748687976.a n = (A056040 n : ℚ)

end A056040

/-! ## A056040.P3111173311250362459

`∑[char[2*n]]*A057977(n)`
-/

namespace A056040.P3111173311250362459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A057977 n

end

end A056040.P3111173311250362459

namespace A056040

/-- `∑[char[2*n]]*A057977(n)` -/
def P3111173311250362459.Spec : Prop :=
  ∀ n, P3111173311250362459.a n = A056040 n

end A056040

/-! ## A056040.P3942040495420530543

`A237884(n)+A057977(n)`
-/

namespace A056040.P3942040495420530543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 n + A057977 n

end

end A056040.P3942040495420530543

namespace A056040

/-- `A237884(n)+A057977(n)` -/
def P3942040495420530543.Spec : Prop :=
  ∀ n, P3942040495420530543.a n = A056040 n

end A056040

/-! ## A056040.P11226111001350176805

`A275329(n)-A057977(n)`
-/

namespace A056040.P11226111001350176805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275329 n - A057977 n

end

end A056040.P11226111001350176805

namespace A056040

/-- `A275329(n)-A057977(n)` -/
def P11226111001350176805.Spec : Prop :=
  ∀ n, P11226111001350176805.a n = A056040 n

end A056040

/-! ## A056040.P7180665734095979371

`A057977(n)*A008619(n)`
-/

namespace A056040.P7180665734095979371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A008619 n

end

end A056040.P7180665734095979371

namespace A056040

/-- `A057977(n)*A008619(n)` -/
def P7180665734095979371.Spec : Prop :=
  ∀ n, P7180665734095979371.a n = A056040 n

end A056040

/-! ## A056040.P851908632830566297

`A009001(n)*A128057(n)`
-/

namespace A056040.P851908632830566297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A128057 n

end

end A056040.P851908632830566297

namespace A056040

/-- `A009001(n)*A128057(n)` -/
def P851908632830566297.Spec : Prop :=
  ∀ n, P851908632830566297.a n = A056040 n

end A056040

/-! ## A056040.P5594646328557274780

`A001405(n)*A152271(n)`
-/

namespace A056040.P5594646328557274780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A152271 n

end

end A056040.P5594646328557274780

namespace A056040

/-- `A001405(n)*A152271(n)` -/
def P5594646328557274780.Spec : Prop :=
  ∀ n, P5594646328557274780.a n = A056040 n

end A056040

/-! ## A056040.P6573915531830760622

`A093178(n)*A128014(n)`
-/

namespace A056040.P6573915531830760622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A128014 n

end

end A056040.P6573915531830760622

namespace A056040

/-- `A093178(n)*A128014(n)` -/
def P6573915531830760622.Spec : Prop :=
  ∀ n, P6573915531830760622.a n = A056040 n

end A056040

/-! ## A056040.P934163970783721340

`A060632(n)*A163590(n)`
-/

namespace A056040.P934163970783721340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n * A163590 n

end

end A056040.P934163970783721340

namespace A056040

/-- `A060632(n)*A163590(n)` -/
def P934163970783721340.Spec : Prop :=
  ∀ n, P934163970783721340.a n = A056040 n

end A056040

/-! ## A056040.P7713873749199010586

`A055773(n)*A182923(n)`
-/

namespace A056040.P7713873749199010586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n * A182923 n

end

end A056040.P7713873749199010586

namespace A056040

/-- `A055773(n)*A182923(n)` -/
def P7713873749199010586.Spec : Prop :=
  ∀ n, P7713873749199010586.a n = A056040 n

end A056040

/-! ## A056040.P12678633284657837353

`lcm(A001405(n), A128014(n))`
-/

namespace A056040.P12678633284657837353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001405 n) (A128014 n)

end

end A056040.P12678633284657837353

namespace A056040

/-- `lcm(A001405(n), A128014(n))` -/
def P12678633284657837353.Spec : Prop :=
  ∀ n, (P12678633284657837353.a n : ℤ) = A056040 n

end A056040

/-! ## A056040.P9179425859850881148

`lcm(A057977(n), A128057(n))`
-/

namespace A056040.P9179425859850881148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057977 n) (A128057 n)

end

end A056040.P9179425859850881148

namespace A056040

/-- `lcm(A057977(n), A128057(n))` -/
def P9179425859850881148.Spec : Prop :=
  ∀ n, (P9179425859850881148.a n : ℤ) = A056040 n

end A056040

/-! ## A056040.P13873862178509841976

`lcm(A126930(n), A210736(n))`
-/

namespace A056040.P13873862178509841976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A126930 n) (A210736 n)

end

end A056040.P13873862178509841976

namespace A056040

/-- `lcm(A126930(n), A210736(n))` -/
def P13873862178509841976.Spec : Prop :=
  ∀ n, (P13873862178509841976.a n : ℤ) = A056040 n

end A056040

/-! ## A056040.P16255455498423387909

`lcm(A241543(n), A275324(n))`
-/

namespace A056040.P16255455498423387909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A241543 n) (A275324 n)

end

end A056040.P16255455498423387909

namespace A056040

/-- `lcm(A241543(n), A275324(n))` -/
def P16255455498423387909.Spec : Prop :=
  ∀ n, (P16255455498423387909.a n : ℤ) = A056040 n

end A056040

/-! ## A056040.P17942238725672131970

`A274707(n+1)+A126120(n)`
-/

namespace A056040.P17942238725672131970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1) + A126120 n

end

end A056040.P17942238725672131970

namespace A056040

/-- `A274707(n+1)+A126120(n)` -/
def P17942238725672131970.Spec : Prop :=
  ∀ n, P17942238725672131970.a n = A056040 n

end A056040

/-! ## A056040.P10374022174167656742

`A241543(n+2)+A232500(n)`
-/

namespace A056040.P10374022174167656742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 (n + 2) + A232500 n

end

end A056040.P10374022174167656742

namespace A056040

/-- `A241543(n+2)+A232500(n)` -/
def P10374022174167656742.Spec : Prop :=
  ∀ n, P10374022174167656742.a n = A056040 n

end A056040

/-! ## A056040.P3195233427735940187

`A057977(n)*A065033(n+1)`
-/

namespace A056040.P3195233427735940187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A065033 (n + 1)

end

end A056040.P3195233427735940187

namespace A056040

/-- `A057977(n)*A065033(n+1)` -/
def P3195233427735940187.Spec : Prop :=
  ∀ n, P3195233427735940187.a n = A056040 n

end A056040

/-! ## A056040.P16411578221777712304

`A057977(n)*A110654(n+1)`
-/

namespace A056040.P16411578221777712304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A110654 (n + 1)

end

end A056040.P16411578221777712304

namespace A056040

/-- `A057977(n)*A110654(n+1)` -/
def P16411578221777712304.Spec : Prop :=
  ∀ n, P16411578221777712304.a n = A056040 n

end A056040

/-! ## A056040.P10056137809877746581

`A160791(n+1)*A208355(n)`
-/

namespace A056040.P10056137809877746581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (n + 1) * A208355 n

end

end A056040.P10056137809877746581

namespace A056040

/-- `A160791(n+1)*A208355(n)` -/
def P10056137809877746581.Spec : Prop :=
  ∀ n, P10056137809877746581.a n = A056040 n

end A056040

/-! ## A056040.P6088623461492468859

`A001405(n)*A057979(n+2)`
-/

namespace A056040.P6088623461492468859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A057979 (n + 2)

end

end A056040.P6088623461492468859

namespace A056040

/-- `A001405(n)*A057979(n+2)` -/
def P6088623461492468859.Spec : Prop :=
  ∀ n, P6088623461492468859.a n = A056040 n

end A056040

/-!
# A056041: Value for which b(a(n))=0 when b(2)=n and b(k+1) is calculated by writing b(k) in base k, reading this as being written in base k+1 and then subtracting 1.

The programs for A056041, there is no canonical definition to state claims against.
-/

/-! ## A056041.P10783058165100535877

`A266203(n)+2`
-/

namespace A056041.P10783058165100535877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266203 n + 2

end

end A056041.P10783058165100535877

/-! ## A056041.P14471873991488114998

`A052955(∑[abs(or(1, n-2))])`
-/

namespace A056041.P14471873991488114998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056041.P14471873991488114998

/-! ## A056041.P5594230718976589525

`A052955(A145467(n))`
-/

namespace A056041.P5594230718976589525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A145467 n).toNat

end

end A056041.P5594230718976589525

/-! ## A056041.P16729253846632144340

`A052955(A267459(n))`
-/

namespace A056041.P16729253846632144340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A267459 n).toNat

end

end A056041.P16729253846632144340

/-!
# A056042: a(n) = n!/(k!)^2, where k is the largest number such that (k!)^2 divides n!.

The programs for A056042, there is no canonical definition to state claims against.
-/

/-! ## A056042.P11961445065544465882

`A056044(n+1)²*A055204(n+1)`
-/

namespace A056042.P11961445065544465882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056044 (n + 1) ^ 2 * A055204 (n + 1)

end

end A056042.P11961445065544465882

/-! ## A056042.P7446736765938612387

`A055230(n+1)*A055773(n+1)*A056044(n+1)²`
-/

namespace A056042.P7446736765938612387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1) * A055773 (n + 1) * A056044 (n + 1) ^ 2

end

end A056042.P7446736765938612387

/-! ## A056042.P16145312943119015992

`A055772(n+1)/A056627(n+1)*A055773(n+1)*A056044(n+1)²`
-/

namespace A056042.P16145312943119015992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A056627 (n + 1) : ℚ) * (A055773 (n + 1) : ℚ) * (A056044 (n + 1) ^ 2 : ℚ)

end

end A056042.P16145312943119015992

/-! ## A056042.P4832565847544701410

`A065887(n+1)/A055772(n+1)*A056044(n+1)²`
-/

namespace A056042.P4832565847544701410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065887 (n + 1) : ℚ) / (A055772 (n + 1) : ℚ) * (A056044 (n + 1) ^ 2 : ℚ)

end

end A056042.P4832565847544701410

/-! ## A056042.P11899949082514232636

`A000142(n+1)/A105350(n+1)`
-/

namespace A056042.P11899949082514232636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A105350 (n + 1) : ℚ)

end

end A056042.P11899949082514232636

/-! ## A056042.P7325220659121788874

`A000142(n+1)/A056038(n+1)²`
-/

namespace A056042.P7325220659121788874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A056038 (n + 1) ^ 2 : ℚ)

end

end A056042.P7325220659121788874

/-! ## A056042.P15588894058066165554

`A000142(n+1)/A001044(A056039(n+1))`
-/

namespace A056042.P15588894058066165554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A001044 (A056039 (n + 1)).toNat : ℚ)

end

end A056042.P15588894058066165554

/-! ## A056042.P8003389033182071573

`A056044(n+1)²*A248779(A000124(n))`
-/

namespace A056042.P8003389033182071573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056044 (n + 1) ^ 2 * A248779 (A000124 n).toNat

end

end A056042.P8003389033182071573

/-!
# A056043: Let k be largest number such that k^2 divides n!; a(n) = k/floor(n/2)!.

The programs for A056043, the canonical program `A056043.P13365125051087703237` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056043 has offset 1).

The definition of A056043 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055772, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056043.P13365125051087703237

`A055772(n+1)/A081123(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056043

/-- `A055772(n+1)/A081123(n+1)` -/
def P13365125051087703237.Spec : Prop :=
  ∀ n, P13365125051087703237.a n = (A056043 (n + 1) : ℚ)

end A056043

/-! ## A056043.P11298375821812827610

`A055772(n+1)/A000142(A004526(n+1))`
-/

namespace A056043.P11298375821812827610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A000142 (A004526 (n + 1)).toNat : ℚ)

end

end A056043.P11298375821812827610

namespace A056043

/-- `A055772(n+1)/A000142(A004526(n+1))` -/
def P11298375821812827610.Spec : Prop :=
  ∀ n, P11298375821812827610.a n = (A056043 (n + 1) : ℚ)

end A056043

/-! ## A056043.P8467885896048864915

`lcm(A056056(n+1), A056056(A028310(n)))`
-/

namespace A056043.P8467885896048864915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056056 (n + 1)) (A056056 (A028310 n).toNat)

end

end A056043.P8467885896048864915

namespace A056043

/-- `lcm(A056056(n+1), A056056(A028310(n)))` -/
def P8467885896048864915.Spec : Prop :=
  ∀ n, (P8467885896048864915.a n : ℤ) = A056043 (n + 1)

end A056043

/-! ## A056043.P8230777560084241089

`sqrt(A056040(n+1)/A055204(n+1))`
-/

namespace A056043.P8230777560084241089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A056040 (n + 1) : ℚ) / (A055204 (n + 1) : ℚ) : ℝ)

end

end A056043.P8230777560084241089

namespace A056043

/-- `sqrt(A056040(n+1)/A055204(n+1))` -/
def P8230777560084241089.Spec : Prop :=
  ∀ n, P8230777560084241089.a n = (A056043 (n + 1) : ℝ)

end A056043

/-! ## A056043.P8057957416217436367

`A055772(n+1)/A065033(n)!`
-/

namespace A056043.P8057957416217436367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (Nat.factorial (A065033 n).toNat : ℚ)

end

end A056043.P8057957416217436367

namespace A056043

/-- `A055772(n+1)/A065033(n)!` -/
def P8057957416217436367.Spec : Prop :=
  ∀ n, P8057957416217436367.a n = (A056043 (n + 1) : ℚ)

end A056043

/-! ## A056043.P16378347499087084815

`A055772(n+1)/A110654(n)!`
-/

namespace A056043.P16378347499087084815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (Nat.factorial (A110654 n).toNat : ℚ)

end

end A056043.P16378347499087084815

namespace A056043

/-- `A055772(n+1)/A110654(n)!` -/
def P16378347499087084815.Spec : Prop :=
  ∀ n, P16378347499087084815.a n = (A056043 (n + 1) : ℚ)

end A056043

/-!
# A056044: Let k be the largest number such that k^2 divides n! and let m be the largest number such that m!^2 divides n!; a(n) = k/m!.

The programs for A056044, there is no canonical definition to state claims against.
-/

/-! ## A056044.P12002918678710565704

`sqrt(A056042(n+1)/A055204(n+1))`
-/

namespace A056044.P12002918678710565704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A056042 (n + 1) : ℚ) / (A055204 (n + 1) : ℚ) : ℝ)

end

end A056044.P12002918678710565704

/-! ## A056044.P13045867179721657828

`sqrt(A056042(n+1)/(A055230(n+1)*A055773(n+1)))`
-/

namespace A056044.P13045867179721657828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A056042 (n + 1) : ℚ) / (A055230 (n + 1) * A055773 (n + 1) : ℚ) : ℝ)

end

end A056044.P13045867179721657828

/-! ## A056044.P7806084405285696384

`sqrt(A056042(n+1)/A249831(C(n+3, 2)))`
-/

namespace A056044.P7806084405285696384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A056042 (n + 1) : ℚ) / (A249831 (Nat.choose (n + 3) 2) : ℚ) : ℝ)

end

end A056044.P7806084405285696384

/-! ## A056044.P2557591212090265567

`A055772(n+1)/A056038(n+1)`
-/

namespace A056044.P2557591212090265567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A056038 (n + 1) : ℚ)

end

end A056044.P2557591212090265567

/-! ## A056044.P4236974922184654464

`A055772(n+1)/A056039(n+1)!`
-/

namespace A056044.P4236974922184654464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (Nat.factorial (A056039 (n + 1)).toNat : ℚ)

end

end A056044.P4236974922184654464

/-!
# A056045: a(n) = Sum_{d|n} binomial(n,d).

The programs for A056045, the canonical program `A056045.P5899715325518009035` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056045 has offset 1).

The definition of A056045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056045.P7300972617278374340

`2^(n+1)-A056200(n+1)`
-/

namespace A056045.P7300972617278374340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A056200 (n + 1)

end

end A056045.P7300972617278374340

namespace A056045

/-- `2^(n+1)-A056200(n+1)` -/
def P7300972617278374340.Spec : Prop :=
  ∀ n, P7300972617278374340.a n = A056045 (n + 1)

theorem P7300972617278374340.correct : P7300972617278374340.Spec := by
  intro n
  simp only [A056045, Nat.add_sub_cancel, A056045.P7300972617278374340.a, A056045.P5899715325518009035.f1, A056045.P5899715325518009035.a, A056200, A056200.P3887230577951053264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056045

/-! ## A056045.P14513006296087887791

`A056188(n+1)+A056189(n+1)-A056200(n+1)`
-/

namespace A056045.P14513006296087887791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056188 (n + 1) + (A056189 (n + 1) - A056200 (n + 1))

end

end A056045.P14513006296087887791

namespace A056045

/-- `A056188(n+1)+A056189(n+1)-A056200(n+1)` -/
def P14513006296087887791.Spec : Prop :=
  ∀ n, P14513006296087887791.a n = A056045 (n + 1)

end A056045

/-! ## A056045.P11633782380260857881

`A082906(n+1)+A271834(n+1)-A056200(n+1)`
-/

namespace A056045.P11633782380260857881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082906 (n + 1) + (A271834 (n + 1) - A056200 (n + 1))

end

end A056045.P11633782380260857881

namespace A056045

/-- `A082906(n+1)+A271834(n+1)-A056200(n+1)` -/
def P11633782380260857881.Spec : Prop :=
  ∀ n, P11633782380260857881.a n = A056045 (n + 1)

end A056045

/-! ## A056045.P13319991365805091474

`A105863(n+1)/(n+1)`
-/

namespace A056045.P13319991365805091474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105863 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056045.P13319991365805091474

namespace A056045

/-- `A105863(n+1)/(n+1)` -/
def P13319991365805091474.Spec : Prop :=
  ∀ n, P13319991365805091474.a n = (A056045 (n + 1) : ℚ)

end A056045

/-! ## A056045.P5899715325518009035

`∑{d}[n+1, C(n+1, #)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056045

/-- `∑{d}[n+1, C(n+1, #)]` -/
def P5899715325518009035.Spec : Prop :=
  ∀ n, (P5899715325518009035.a n : ℤ) = A056045 (n + 1)

theorem P5899715325518009035.correct : P5899715325518009035.Spec := by
  intro n
  simp only [A056045, Nat.add_sub_cancel]

end A056045

/-! ## A056045.P3305681013422230344

`∑{d}[n+1, A007318(A000217(n+1)+#)]`
-/

namespace A056045.P3305681013422230344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (n + 1) + (d : ℤ)).toNat

end

end A056045.P3305681013422230344

namespace A056045

/-- `∑{d}[n+1, A007318(A000217(n+1)+#)]` -/
def P3305681013422230344.Spec : Prop :=
  ∀ n, P3305681013422230344.a n = A056045 (n + 1)

end A056045

/-! ## A056045.P13103481033426250951

`∑{d}[n+1, A007318(A000096(n+1)-#)]`
-/

namespace A056045.P13103481033426250951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000096 (n + 1) - (d : ℤ)).toNat

end

end A056045.P13103481033426250951

namespace A056045

/-- `∑{d}[n+1, A007318(A000096(n+1)-#)]` -/
def P13103481033426250951.Spec : Prop :=
  ∀ n, P13103481033426250951.a n = A056045 (n + 1)

end A056045

/-! ## A056045.P10224430307817203769

`∑{d}[n+1, A007318(A007318(A055998(n+1))+#)]`
-/

namespace A056045.P10224430307817203769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A007318 (A055998 (n + 1)).toNat + (d : ℤ)).toNat

end

end A056045.P10224430307817203769

namespace A056045

/-- `∑{d}[n+1, A007318(A007318(A055998(n+1))+#)]` -/
def P10224430307817203769.Spec : Prop :=
  ∀ n, P10224430307817203769.a n = A056045 (n + 1)

end A056045

/-!
# A056046: Number of 3-antichain covers of a labeled n-set.

The programs for A056046, there is no canonical definition to state claims against.
-/

/-! ## A056046.P13063238506567151441

`A306550(A167614(n+2))`
-/

namespace A056046.P13063238506567151441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (A167614 (n + 2)).toNat

end

end A056046.P13063238506567151441

/-! ## A056046.P10302283481811580611

`A306550(A141214(n)+6)`
-/

namespace A056046.P10302283481811580611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (A141214 n + 6).toNat

end

end A056046.P10302283481811580611

/-! ## A056046.P12992756942089680948

`A306550(A052905(n)+8)`
-/

namespace A056046.P12992756942089680948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (A052905 n + 8).toNat

end

end A056046.P12992756942089680948

/-! ## A056046.P11020040681555834588

`A306550(A055999(n)+9)`
-/

namespace A056046.P11020040681555834588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (A055999 n + 9).toNat

end

end A056046.P11020040681555834588

/-!
# A056047: Number of 4-antichain covers of a labeled n-set.

The programs for A056047, there is no canonical definition to state claims against.
-/

/-! ## A056047.P4022627481184284352

`A306550(floor(atan(n+1))+∑[n+4]+9)`
-/

namespace A056047.P4022627481184284352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (⌊Real.arctan (n + 1 : ℝ)⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + 9 : ℕ) : ℤ)).toNat

end

end A056047.P4022627481184284352

/-! ## A056047.P9595038436602682397

`A306550(A155212(n)+12)`
-/

namespace A056047.P9595038436602682397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (A155212 n + 12).toNat

end

end A056047.P9595038436602682397

/-! ## A056047.P6217019574045041108

`A306550(eq[4, A002262(n)])`
-/

namespace A056047.P6217019574045041108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056047.P6217019574045041108

/-!
# A056048: Number of 5-antichain covers of a labeled n-set.

The programs for A056048, there is no canonical definition to state claims against.
-/

/-! ## A056048.P4620732243728535868

`A241821(C(n+3, 6))`
-/

namespace A056048.P4620732243728535868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241821 (Nat.choose (n + 3) 6)

end

end A056048.P4620732243728535868

/-! ## A056048.P3969675119874709796

`A241341(A005178(n))`
-/

namespace A056048.P3969675119874709796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241341 (A005178 n).toNat

end

end A056048.P3969675119874709796

/-!
# A056050: Semimorphic numbers: n^2 mod the number of digits in n = n^3 mod the number of digits in n.

The programs for A056050, there is no canonical definition to state claims against.
-/

/-! ## A056050.P7872703318308615744

`∩[A072496(n+1)+1, A187127(n+1)]`
-/

namespace A056050.P7872703318308615744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072496 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056050.P7872703318308615744

/-!
# A056051: a(n) = (n-2)! - 1 (mod n).

The programs for A056051, the canonical program `A056051.P8181583104041399376` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056051 has offset 2).

The definition of A056051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056051.P8181583104041399376

`floor(1/∑{p}[n+2, #-(n-1)])`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056051

/-- `floor(1/∑{p}[n+2, #-(n-1)])` -/
def P8181583104041399376.Spec : Prop :=
  ∀ n, P8181583104041399376.a n = A056051 (n + 2)

theorem P8181583104041399376.correct : P8181583104041399376.Spec := by
  intro n
  simp only [A056051, Nat.add_sub_cancel]

end A056051

/-! ## A056051.P10684658341278807609

`floor(acot(2-A348497(n+2)))`
-/

namespace A056051.P10684658341278807609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 - A348497 (n + 2) : ℝ)⌋

end

end A056051.P10684658341278807609

namespace A056051

/-- `floor(acot(2-A348497(n+2)))` -/
def P10684658341278807609.Spec : Prop :=
  ∀ n, P10684658341278807609.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P8129231439557102158

`floor(acot(A000010(n+2)-n))`
-/

namespace A056051.P8129231439557102158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A000010 (n + 2) - (n : ℤ) : ℝ)⌋

end

end A056051.P8129231439557102158

namespace A056051

/-- `floor(acot(A000010(n+2)-n))` -/
def P8129231439557102158.Spec : Prop :=
  ∀ n, P8129231439557102158.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P13700818445749330279

`floor(acot(A006530(n+2)-n))`
-/

namespace A056051.P13700818445749330279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A006530 (n + 2) - (n : ℤ) : ℝ)⌋

end

end A056051.P13700818445749330279

namespace A056051

/-- `floor(acot(A006530(n+2)-n))` -/
def P13700818445749330279.Spec : Prop :=
  ∀ n, P13700818445749330279.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P5541450476384953019

`floor(acot(A020639(n+2)-n))`
-/

namespace A056051.P5541450476384953019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A020639 (n + 2) - (n : ℤ) : ℝ)⌋

end

end A056051.P5541450476384953019

namespace A056051

/-- `floor(acot(A020639(n+2)-n))` -/
def P5541450476384953019.Spec : Prop :=
  ∀ n, P5541450476384953019.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P6870341238246845099

`floor(1/(A076566(n+1)-n))`
-/

namespace A056051.P6870341238246845099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A076566 (n + 1) - (n : ℤ) : ℚ)⌋

end

end A056051.P6870341238246845099

namespace A056051

/-- `floor(1/(A076566(n+1)-n))` -/
def P6870341238246845099.Spec : Prop :=
  ∀ n, P6870341238246845099.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P1121740163883807706

`C(n, C(n, A001222(n+2)))-1`
-/

namespace A056051.P1121740163883807706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (A001222 (n + 2)).toNat) : ℤ) - 1

end

end A056051.P1121740163883807706

namespace A056051

/-- `C(n, C(n, A001222(n+2)))-1` -/
def P1121740163883807706.Spec : Prop :=
  ∀ n, P1121740163883807706.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P15013792056920928698

`A134824(A089196(n+1))`
-/

namespace A056051.P15013792056920928698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A089196 (n + 1)).toNat

end

end A056051.P15013792056920928698

namespace A056051

/-- `A134824(A089196(n+1))` -/
def P15013792056920928698.Spec : Prop :=
  ∀ n, P15013792056920928698.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P16471462779334923990

`A134824(A108407(n+1))`
-/

namespace A056051.P16471462779334923990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A108407 (n + 1)).toNat

end

end A056051.P16471462779334923990

namespace A056051

/-- `A134824(A108407(n+1))` -/
def P16471462779334923990.Spec : Prop :=
  ∀ n, P16471462779334923990.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P1188144250914454504

`A134824(A046667(n+2))`
-/

namespace A056051.P1188144250914454504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A046667 (n + 2)).toNat

end

end A056051.P1188144250914454504

namespace A056051

/-- `A134824(A046667(n+2))` -/
def P1188144250914454504.Spec : Prop :=
  ∀ n, P1188144250914454504.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P13030196051079182768

`A134824(A087625(n+2))`
-/

namespace A056051.P13030196051079182768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A087625 (n + 2)).toNat

end

end A056051.P13030196051079182768

namespace A056051

/-- `A134824(A087625(n+2))` -/
def P13030196051079182768.Spec : Prop :=
  ∀ n, P13030196051079182768.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P9331084090765174509

`A062157(A300236(n+2))`
-/

namespace A056051.P9331084090765174509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A300236 (n + 2)).toNat

end

end A056051.P9331084090765174509

namespace A056051

/-- `A062157(A300236(n+2))` -/
def P9331084090765174509.Spec : Prop :=
  ∀ n, P9331084090765174509.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P3006960458066548501

`A029832(A001616(n+2))-1`
-/

namespace A056051.P3006960458066548501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (A001616 (n + 2)).toNat - 1

end

end A056051.P3006960458066548501

namespace A056051

/-- `A029832(A001616(n+2))-1` -/
def P3006960458066548501.Spec : Prop :=
  ∀ n, P3006960458066548501.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P8332159741470423205

`A134824(n+1-A000010(n+2))`
-/

namespace A056051.P8332159741470423205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 ((n + 1 : ℤ) - A000010 (n + 2)).toNat

end

end A056051.P8332159741470423205

namespace A056051

/-- `A134824(n+1-A000010(n+2))` -/
def P8332159741470423205.Spec : Prop :=
  ∀ n, P8332159741470423205.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P4728158947102511760

`A325142(gcd(n+2, A266620(n+1)))`
-/

namespace A056051.P4728158947102511760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (Int.gcd (n + 2 : ℤ) (A266620 (n + 1)))

end

end A056051.P4728158947102511760

namespace A056051

/-- `A325142(gcd(n+2, A266620(n+1)))` -/
def P4728158947102511760.Spec : Prop :=
  ∀ n, P4728158947102511760.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P45631231519016888

`A061007(n+2)-1`
-/

namespace A056051.P45631231519016888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 2) - 1

end

end A056051.P45631231519016888

namespace A056051

/-- `A061007(n+2)-1` -/
def P45631231519016888.Spec : Prop :=
  ∀ n, P45631231519016888.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P13745248742588657465

`Δ[A061008(n+1)]-1`
-/

namespace A056051.P13745248742588657465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A056051.P13745248742588657465

namespace A056051

/-- `Δ[A061008(n+1)]-1` -/
def P13745248742588657465.Spec : Prop :=
  ∀ n, P13745248742588657465.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P6847385919535793851

`Δ[A061009(n+1)]-1`
-/

namespace A056051.P6847385919535793851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A056051.P6847385919535793851

namespace A056051

/-- `Δ[A061009(n+1)]-1` -/
def P6847385919535793851.Spec : Prop :=
  ∀ n, P6847385919535793851.a n = A056051 (n + 2)

end A056051

/-! ## A056051.P6729022997228954305

`1-C(2, A055976(n+2))`
-/

namespace A056051.P6729022997228954305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A055976 (n + 2)).toNat : ℤ)

end

end A056051.P6729022997228954305

namespace A056051

/-- `1-C(2, A055976(n+2))` -/
def P6729022997228954305.Spec : Prop :=
  ∀ n, P6729022997228954305.a n = A056051 (n + 2)

end A056051

/-!
# A056053: a(n) = smallest odd number 2m+1 such that the partial sum of the odd harmonic series Sum_{j=0..m} 1/(2j+1) is > n.

The programs for A056053, there is no canonical definition to state claims against.
-/

/-! ## A056053.P4671343071500578025

`or(1, A110657(A028859(2*n)))`
-/

namespace A056053.P4671343071500578025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A110657 (A028859 (2 * n)).toNat)

end

end A056053.P4671343071500578025

/-!
# A056054: a(n) = smallest even number 2m such that value of odd harmonic series Sum_{j=0..m} 1/(2j) is > n.

The programs for A056054, the canonical program `A056054.P12970442484182484581` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056054 has offset 1).

The definition of A056054 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056054.P12970442484182484581

`2*A002387(2*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056054

/-- `2*A002387(2*(n+1))` -/
def P12970442484182484581.Spec : Prop :=
  ∀ n, P12970442484182484581.a n = A056054 (n + 1)

theorem P12970442484182484581.correct : P12970442484182484581.Spec := by
  intro n
  simp only [A056054, Nat.add_sub_cancel]

end A056054

/-! ## A056054.P12059547415063345310

`2*A014537(n+1)`
-/

namespace A056054.P12059547415063345310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014537 (n + 1)

end

end A056054.P12059547415063345310

namespace A056054

/-- `2*A014537(n+1)` -/
def P12059547415063345310.Spec : Prop :=
  ∀ n, P12059547415063345310.a n = A056054 (n + 1)

end A056054

/-! ## A056054.P15686966792993098849

`2*(A065071(n+2)-1)`
-/

namespace A056054.P15686966792993098849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A065071 (n + 2) - 1)

end

end A056054.P15686966792993098849

namespace A056054

/-- `2*(A065071(n+2)-1)` -/
def P15686966792993098849.Spec : Prop :=
  ∀ n, P15686966792993098849.a n = A056054 (n + 1)

theorem P15686966792993098849.correct : P15686966792993098849.Spec := by
  intro n
  simp only [A056054, Nat.add_sub_cancel, A056054.P15686966792993098849.a, A056054.P12970442484182484581.a, A002387, A002387.P4168426540261931131.a, A065071, A065071.P2618642326571619513.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056054

/-! ## A056054.P8890733313492560729

`2*A004080(2*(n+1))`
-/

namespace A056054.P8890733313492560729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004080 (2 * (n + 1))

end

end A056054.P8890733313492560729

namespace A056054

/-- `2*A004080(2*(n+1))` -/
def P8890733313492560729.Spec : Prop :=
  ∀ n, P8890733313492560729.a n = A056054 (n + 1)

end A056054

/-! ## A056054.P15750718930828047998

`2*A226188(3*(n+1))`
-/

namespace A056054.P15750718930828047998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226188 (3 * (n + 1))

end

end A056054.P15750718930828047998

namespace A056054

/-- `2*A226188(3*(n+1))` -/
def P15750718930828047998.Spec : Prop :=
  ∀ n, P15750718930828047998.a n = A056054 (n + 1)

end A056054

/-!
# A056055: Integers k > 1 such that the decimal expansion of 1/k contains k as a string. (If the decimal expansion terminates, trailing zeros do not count.)

The programs for A056055, there is no canonical definition to state claims against.
-/

/-! ## A056055.P503013377103637484

`∩[A100468(n+1), A057717(n)]`
-/

namespace A056055.P503013377103637484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056055.P503013377103637484

/-! ## A056055.P7810980346908271826

`∩[A085837(n+1), A100468(n+1)]`
-/

namespace A056055.P7810980346908271826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056055.P7810980346908271826

/-! ## A056055.P4801602550228958890

`∩[A100468(n+1), A136399(n+1)]`
-/

namespace A056055.P4801602550228958890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056055.P4801602550228958890

/-! ## A056055.P4824753430091028786

`∩[A100468(n+1), A174415(n+1)]`
-/

namespace A056055.P4824753430091028786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056055.P4824753430091028786

/-! ## A056055.P13254616461111854466

`∩[A028803(n+1), A100468(n+1)]`
-/

namespace A056055.P13254616461111854466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056055.P13254616461111854466

/-!
# A056056: Square root of largest square dividing n-th central binomial coefficient.

The programs for A056056, the canonical program `A056056.P8939201320321533669` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056056 has offset 1).

The definition of A056056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056056.P8939201320321533669

`sqrt(A056057(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056056

/-- `sqrt(A056057(n+1))` -/
def P8939201320321533669.Spec : Prop :=
  ∀ n, P8939201320321533669.a n = (A056056 (n + 1) : ℝ)

end A056056

/-! ## A056056.P653578676138198481

`root(A056057(n+1), lcm(2, A003842(n)))`
-/

namespace A056056.P653578676138198481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056057 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A003842 n) : ℝ))

end

end A056056.P653578676138198481

namespace A056056

/-- `root(A056057(n+1), lcm(2, A003842(n)))` -/
def P653578676138198481.Spec : Prop :=
  ∀ n, P653578676138198481.a n = (A056056 (n + 1) : ℝ)

end A056056

/-! ## A056056.P9955234271556732460

`root(A056057(n+1), gcd(2, A000010(n+1)))`
-/

namespace A056056.P9955234271556732460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056057 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000010 (n + 1)) : ℝ))

end

end A056056.P9955234271556732460

namespace A056056

/-- `root(A056057(n+1), gcd(2, A000010(n+1)))` -/
def P9955234271556732460.Spec : Prop :=
  ∀ n, P9955234271556732460.a n = (A056056 (n + 1) : ℝ)

end A056056

/-! ## A056056.P3024286033806652226

`A056057(n+1)^(1/A020639(A008574(n)))`
-/

namespace A056056.P3024286033806652226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056057 (n + 1) : ℝ) ^ (1 / (A020639 (A008574 n).toNat : ℚ) : ℝ)

end

end A056056.P3024286033806652226

namespace A056056

/-- `A056057(n+1)^(1/A020639(A008574(n)))` -/
def P3024286033806652226.Spec : Prop :=
  ∀ n, P3024286033806652226.a n = (A056056 (n + 1) : ℝ)

end A056056

/-! ## A056056.P2175735129780894685

`A056057(n+1)^(1/A020639(A109606(n+1)+1))`
-/

namespace A056056.P2175735129780894685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056057 (n + 1) : ℝ) ^ (1 / (A020639 (A109606 (n + 1) + 1).toNat : ℚ) : ℝ)

end

end A056056.P2175735129780894685

namespace A056056

/-- `A056057(n+1)^(1/A020639(A109606(n+1)+1))` -/
def P2175735129780894685.Spec : Prop :=
  ∀ n, P2175735129780894685.a n = (A056056 (n + 1) : ℝ)

end A056056

/-! ## A056056.P11169089730067212635

`A056059(n+1)*A056646(n+1)`
-/

namespace A056056.P11169089730067212635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (n + 1) * A056646 (n + 1)

end

end A056056.P11169089730067212635

namespace A056056

/-- `A056059(n+1)*A056646(n+1)` -/
def P11169089730067212635.Spec : Prop :=
  ∀ n, P11169089730067212635.a n = A056056 (n + 1)

end A056056

/-! ## A056056.P10448915973909159156

`A007913(A056201(n+1))*A056646(n+1)`
-/

namespace A056056.P10448915973909159156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A056201 (n + 1)).toNat * A056646 (n + 1)

end

end A056056.P10448915973909159156

namespace A056056

/-- `A007913(A056201(n+1))*A056646(n+1)` -/
def P10448915973909159156.Spec : Prop :=
  ∀ n, P10448915973909159156.a n = A056056 (n + 1)

end A056056

/-! ## A056056.P5071885852497101493

`sqrt(A001405(n+1)/A056058(n+1))`
-/

namespace A056056.P5071885852497101493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001405 (n + 1) : ℚ) / (A056058 (n + 1) : ℚ) : ℝ)

end

end A056056.P5071885852497101493

namespace A056056

/-- `sqrt(A001405(n+1)/A056058(n+1))` -/
def P5071885852497101493.Spec : Prop :=
  ∀ n, P5071885852497101493.a n = (A056056 (n + 1) : ℝ)

end A056056

/-! ## A056056.P9365164093874155247

`A056057(n+1)^(a(n-1)/A005843(a(n-1)))` with `a(0)=1`
-/

namespace A056056.P9365164093874155247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A056057 (n + 1) : ℝ) ^ (a (n - 1) / (A005843 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ))

end

end A056056.P9365164093874155247

namespace A056056

/-- `A056057(n+1)^(a(n-1)/A005843(a(n-1)))` -/
def P9365164093874155247.Spec : Prop :=
  ∀ n, P9365164093874155247.a n = (A056056 (n + 1) : ℝ)

end A056056

/-! ## A056056.P5818855666692141864

`A000189(A056057(2*n+1-n))`
-/

namespace A056056.P5818855666692141864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A056057 (2 * n + 1 - n)).toNat

end

end A056056.P5818855666692141864

namespace A056056

/-- `A000189(A056057(2*n+1-n))` -/
def P5818855666692141864.Spec : Prop :=
  ∀ n, P5818855666692141864.a n = A056056 (n + 1)

end A056056

/-!
# A056057: The largest square which divides n-th central binomial coefficient.

The programs for A056057, the canonical program `A056057.P2194597549001614042` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056057 has offset 1).

The definition of A056057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056057.P2194597549001614042

`A008833(A001405(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056057

/-- `A008833(A001405(n+1))` -/
def P2194597549001614042.Spec : Prop :=
  ∀ n, P2194597549001614042.a n = A056057 (n + 1)

theorem P2194597549001614042.correct : P2194597549001614042.Spec := by
  intro n
  simp only [A056057, Nat.add_sub_cancel]

end A056057

/-! ## A056057.P3145287419606780946

`A056056(n+1)²`
-/

namespace A056057.P3145287419606780946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1) ^ 2

end

end A056057.P3145287419606780946

namespace A056057

/-- `A056056(n+1)²` -/
def P3145287419606780946.Spec : Prop :=
  ∀ n, P3145287419606780946.a n = A056057 (n + 1)

end A056057

/-! ## A056057.P9097572070674657057

`A056056(char[1]+1+n)*A056056(n+1)`
-/

namespace A056057.P9097572070674657057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) * A056056 (n + 1)

end

end A056057.P9097572070674657057

namespace A056057

/-- `A056056(char[1]+1+n)*A056056(n+1)` -/
def P9097572070674657057.Spec : Prop :=
  ∀ n, P9097572070674657057.a n = A056057 (n + 1)

end A056057

/-! ## A056057.P2932633966604814168

`A056056(n+1)^(A000188(A007913(n+1))+1)`
-/

namespace A056057.P2932633966604814168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056056 (n + 1) : ℚ) ^ (A000188 (A007913 (n + 1)).toNat + 1 : ℤ)

end

end A056057.P2932633966604814168

namespace A056057

/-- `A056056(n+1)^(A000188(A007913(n+1))+1)` -/
def P2932633966604814168.Spec : Prop :=
  ∀ n, P2932633966604814168.a n = (A056057 (n + 1) : ℚ)

end A056057

/-! ## A056057.P3290945016872316089

`A056059(n+1)²*A056647(n+1)`
-/

namespace A056057.P3290945016872316089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (n + 1) ^ 2 * A056647 (n + 1)

end

end A056057.P3290945016872316089

namespace A056057

/-- `A056059(n+1)²*A056647(n+1)` -/
def P3290945016872316089.Spec : Prop :=
  ∀ n, P3290945016872316089.a n = A056057 (n + 1)

end A056057

/-! ## A056057.P9142629370382383850

`(A056059(n+1)*A056646(n+1))²`
-/

namespace A056057.P9142629370382383850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056059 (n + 1) * A056646 (n + 1)) ^ 2

end

end A056057.P9142629370382383850

namespace A056057

/-- `(A056059(n+1)*A056646(n+1))²` -/
def P9142629370382383850.Spec : Prop :=
  ∀ n, P9142629370382383850.a n = A056057 (n + 1)

end A056057

/-! ## A056057.P9206017036606757807

`A056056(n+1)*A056059(n+1)*A056646(n+1)`
-/

namespace A056057.P9206017036606757807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1) * A056059 (n + 1) * A056646 (n + 1)

end

end A056057.P9206017036606757807

namespace A056057

/-- `A056056(n+1)*A056059(n+1)*A056646(n+1)` -/
def P9206017036606757807.Spec : Prop :=
  ∀ n, P9206017036606757807.a n = A056057 (n + 1)

end A056057

/-! ## A056057.P1501747166701744400

`(A007913(A056201(n+1))*A056646(n+1))²`
-/

namespace A056057.P1501747166701744400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007913 (A056201 (n + 1)).toNat * A056646 (n + 1)) ^ 2

end

end A056057.P1501747166701744400

namespace A056057

/-- `(A007913(A056201(n+1))*A056646(n+1))²` -/
def P1501747166701744400.Spec : Prop :=
  ∀ n, P1501747166701744400.a n = A056057 (n + 1)

end A056057

/-! ## A056057.P7090899292819581756

`A001405(n+1)/A056058(n+1)`
-/

namespace A056057.P7090899292819581756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056058 (n + 1) : ℚ)

end

end A056057.P7090899292819581756

namespace A056057

/-- `A001405(n+1)/A056058(n+1)` -/
def P7090899292819581756.Spec : Prop :=
  ∀ n, P7090899292819581756.a n = (A056057 (n + 1) : ℚ)

end A056057

/-! ## A056057.P14567701585020887149

`A001405(n+1)/(A056059(n+1)*A056060(n+1))`
-/

namespace A056057.P14567701585020887149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056059 (n + 1) * A056060 (n + 1) : ℚ)

end

end A056057.P14567701585020887149

namespace A056057

/-- `A001405(n+1)/(A056059(n+1)*A056060(n+1))` -/
def P14567701585020887149.Spec : Prop :=
  ∀ n, P14567701585020887149.a n = (A056057 (n + 1) : ℚ)

end A056057

/-! ## A056057.P14707435281260453831

`A008833(A056056(n+1)*A056056(n+1))`
-/

namespace A056057.P14707435281260453831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A056056 (n + 1) * A056056 (n + 1)).toNat

end

end A056057.P14707435281260453831

namespace A056057

/-- `A008833(A056056(n+1)*A056056(n+1))` -/
def P14707435281260453831.Spec : Prop :=
  ∀ n, P14707435281260453831.a n = A056057 (n + 1)

end A056057

/-!
# A056058: Squarefree part of the n-th central binomial coefficient.

The programs for A056058, the canonical program `A056058.P9205737737520577246` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056058 has offset 1).

The definition of A056058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056058.P9205737737520577246

`A007913(A001405(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056058

/-- `A007913(A001405(n+1))` -/
def P9205737737520577246.Spec : Prop :=
  ∀ n, P9205737737520577246.a n = A056058 (n + 1)

theorem P9205737737520577246.correct : P9205737737520577246.Spec := by
  intro n
  simp only [A056058, Nat.add_sub_cancel]

end A056058

/-! ## A056058.P9347809594788164460

`A056059(n+1)*A056060(n+1)`
-/

namespace A056058.P9347809594788164460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (n + 1) * A056060 (n + 1)

end

end A056058.P9347809594788164460

namespace A056058

/-- `A056059(n+1)*A056060(n+1)` -/
def P9347809594788164460.Spec : Prop :=
  ∀ n, P9347809594788164460.a n = A056058 (n + 1)

end A056058

/-! ## A056058.P6317373334440131319

`A007913(A056201(n+1))*A056060(n+1)`
-/

namespace A056058.P6317373334440131319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A056201 (n + 1)).toNat * A056060 (n + 1)

end

end A056058.P6317373334440131319

namespace A056058

/-- `A007913(A056201(n+1))*A056060(n+1)` -/
def P6317373334440131319.Spec : Prop :=
  ∀ n, P6317373334440131319.a n = A056058 (n + 1)

end A056058

/-! ## A056058.P17237650165274018014

`lcm(A000188(A056059(n+1)²), A056060(n+1))`
-/

namespace A056058.P17237650165274018014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000188 (A056059 (n + 1) ^ 2).toNat) (A056060 (n + 1))

end

end A056058.P17237650165274018014

namespace A056058

/-- `lcm(A000188(A056059(n+1)²), A056060(n+1))` -/
def P17237650165274018014.Spec : Prop :=
  ∀ n, (P17237650165274018014.a n : ℤ) = A056058 (n + 1)

end A056058

/-! ## A056058.P2072846848271076732

`A056201(n+1)/A056057(n+1)*A056202(n+1)`
-/

namespace A056058.P2072846848271076732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056201 (n + 1) : ℚ) / (A056057 (n + 1) : ℚ) * (A056202 (n + 1) : ℚ)

end

end A056058.P2072846848271076732

namespace A056058

/-- `A056201(n+1)/A056057(n+1)*A056202(n+1)` -/
def P2072846848271076732.Spec : Prop :=
  ∀ n, P2072846848271076732.a n = (A056058 (n + 1) : ℚ)

end A056058

/-! ## A056058.P16492556402786737492

`A001405(n+1)/A056057(n+1)`
-/

namespace A056058.P16492556402786737492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056057 (n + 1) : ℚ)

end

end A056058.P16492556402786737492

namespace A056058

/-- `A001405(n+1)/A056057(n+1)` -/
def P16492556402786737492.Spec : Prop :=
  ∀ n, P16492556402786737492.a n = (A056058 (n + 1) : ℚ)

end A056058

/-! ## A056058.P14087797004598177920

`A210736(n+2)/A056057(n+1)`
-/

namespace A056058.P14087797004598177920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 2) : ℚ) / (A056057 (n + 1) : ℚ)

end

end A056058.P14087797004598177920

namespace A056058

/-- `A210736(n+2)/A056057(n+1)` -/
def P14087797004598177920.Spec : Prop :=
  ∀ n, P14087797004598177920.a n = (A056058 (n + 1) : ℚ)

end A056058

/-! ## A056058.P5050317149813815797

`A001405(n+1)/A056056(n+1)²`
-/

namespace A056058.P5050317149813815797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056056 (n + 1) ^ 2 : ℚ)

end

end A056058.P5050317149813815797

namespace A056058

/-- `A001405(n+1)/A056056(n+1)²` -/
def P5050317149813815797.Spec : Prop :=
  ∀ n, P5050317149813815797.a n = (A056058 (n + 1) : ℚ)

end A056058

/-! ## A056058.P7980215113418819575

`A107230(∑[n+1])/A056057(n+1)`
-/

namespace A056058.P7980215113418819575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107230 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A056057 (n + 1) : ℚ)

end

end A056058.P7980215113418819575

namespace A056058

/-- `A107230(∑[n+1])/A056057(n+1)` -/
def P7980215113418819575.Spec : Prop :=
  ∀ n, P7980215113418819575.a n = (A056058 (n + 1) : ℚ)

end A056058

/-! ## A056058.P4051354945634994415

`A271187(A074148(n+1))`
-/

namespace A056058.P4051354945634994415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271187 (A074148 (n + 1)).toNat

end

end A056058.P4051354945634994415

namespace A056058

/-- `A271187(A074148(n+1))` -/
def P4051354945634994415.Spec : Prop :=
  ∀ n, P4051354945634994415.a n = A056058 (n + 1)

end A056058

/-! ## A056058.P1651995307766868238

`A271187(A194274(n+1))`
-/

namespace A056058.P1651995307766868238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271187 (A194274 (n + 1)).toNat

end

end A056058.P1651995307766868238

namespace A056058

/-- `A271187(A194274(n+1))` -/
def P1651995307766868238.Spec : Prop :=
  ∀ n, P1651995307766868238.a n = A056058 (n + 1)

end A056058

/-! ## A056058.P14610967198255785760

`A271187(A080476(n+2))`
-/

namespace A056058.P14610967198255785760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271187 (A080476 (n + 2)).toNat

end

end A056058.P14610967198255785760

namespace A056058

/-- `A271187(A080476(n+2))` -/
def P14610967198255785760.Spec : Prop :=
  ∀ n, P14610967198255785760.a n = A056058 (n + 1)

end A056058

/-!
# A056059: GCD of largest square and squarefree part of central binomial coefficients.

The programs for A056059, there is no canonical definition to state claims against.
-/

/-! ## A056059.P16474759121575616618

`A056056(n+1)/A056646(n+1)`
-/

namespace A056059.P16474759121575616618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056056 (n + 1) : ℚ) / (A056646 (n + 1) : ℚ)

end

end A056059.P16474759121575616618

/-! ## A056059.P18023155188166388657

`A000188(A056057(n+1)/A056647(n+1))`
-/

namespace A056059.P18023155188166388657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A056057 (n + 1) : ℚ) / (A056647 (n + 1) : ℚ))).toNat

end

end A056059.P18023155188166388657

/-! ## A056059.P17022279677147370766

`A000188(A056056(n+1)²/A056647(n+1))`
-/

namespace A056059.P17022279677147370766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A056056 (n + 1) ^ 2 : ℚ) / (A056647 (n + 1) : ℚ))).toNat

end

end A056059.P17022279677147370766

/-! ## A056059.P5362112885887748903

`A007913(A056201(n+1))`
-/

namespace A056059.P5362112885887748903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A056201 (n + 1)).toNat

end

end A056059.P5362112885887748903

/-! ## A056059.P4855488182746025941

`A056058(n+1)/A056060(n+1)`
-/

namespace A056059.P4855488182746025941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056058 (n + 1) : ℚ) / (A056060 (n + 1) : ℚ)

end

end A056059.P4855488182746025941

/-! ## A056059.P14739642435347566604

`gcd(A056056(n+1), A056058(n+1))`
-/

namespace A056059.P14739642435347566604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056056 (n + 1)) (A056058 (n + 1))

end

end A056059.P14739642435347566604

/-! ## A056059.P8631543073276591183

`A001405(n+1)/(A056057(n+1)*A056060(n+1))`
-/

namespace A056059.P8631543073276591183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056057 (n + 1) * A056060 (n + 1) : ℚ)

end

end A056059.P8631543073276591183

/-! ## A056059.P12265850467732716743

`gcd(A034386(n), A056201(n+1))`
-/

namespace A056059.P12265850467732716743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A056201 (n + 1))

end

end A056059.P12265850467732716743

/-! ## A056059.P17431613162583881662

`A055229(A056201(2*n+1-n))`
-/

namespace A056059.P17431613162583881662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A056201 (2 * n + 1 - n)).toNat

end

end A056059.P17431613162583881662

/-! ## A056059.P15899976971383808215

`A000188(A056201(n+1))*A056201(A000188(n+1))`
-/

namespace A056059.P15899976971383808215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A056201 (n + 1)).toNat * A056201 (A000188 (n + 1)).toNat

end

end A056059.P15899976971383808215

/-! ## A056059.P9721082569330040644

`A055229(A055229(n+1))*A055229(A056201(n+1))`
-/

namespace A056059.P9721082569330040644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A055229 (n + 1)).toNat * A055229 (A056201 (n + 1)).toNat

end

end A056059.P9721082569330040644

/-! ## A056059.P3762888092393198257

`A007913(A056056(n+1)*A056646(n+1))`
-/

namespace A056059.P3762888092393198257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A056056 (n + 1) * A056646 (n + 1)).toNat

end

end A056059.P3762888092393198257

/-! ## A056059.P10020706268160164168

`A007947(A056201(n+1)²)`
-/

namespace A056059.P10020706268160164168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A056201 (n + 1) ^ 2).toNat

end

end A056059.P10020706268160164168

/-! ## A056059.P11561421032573944317

`A007913(A001405(n+1)/A056060(n+1))`
-/

namespace A056059.P11561421032573944317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A001405 (n + 1) : ℚ) / (A056060 (n + 1) : ℚ))).toNat

end

end A056059.P11561421032573944317

/-!
# A056060: The powerfree part of the central binomial coefficients.

The programs for A056060, the canonical program `A056060.P13324673825026971929` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056060 has offset 1).

The definition of A056060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056060.P13324673825026971929

`A055231(A001405(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056060

/-- `A055231(A001405(n+1))` -/
def P13324673825026971929.Spec : Prop :=
  ∀ n, P13324673825026971929.a n = A056060 (n + 1)

theorem P13324673825026971929.correct : P13324673825026971929.Spec := by
  intro n
  simp only [A056060, Nat.add_sub_cancel]

end A056060

/-! ## A056060.P13863347713638402462

`A056058(n+1)/A056059(n+1)`
-/

namespace A056060.P13863347713638402462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056058 (n + 1) : ℚ) / (A056059 (n + 1) : ℚ)

end

end A056060.P13863347713638402462

namespace A056060

/-- `A056058(n+1)/A056059(n+1)` -/
def P13863347713638402462.Spec : Prop :=
  ∀ n, P13863347713638402462.a n = (A056060 (n + 1) : ℚ)

end A056060

/-! ## A056060.P14041411518502226460

`A056058(n+1)/gcd(A056056(n+1), A056058(n+1))`
-/

namespace A056060.P14041411518502226460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056058 (n + 1) : ℚ) / (Int.gcd (A056056 (n + 1)) (A056058 (n + 1)) : ℚ)

end

end A056060.P14041411518502226460

namespace A056060

/-- `A056058(n+1)/gcd(A056056(n+1), A056058(n+1))` -/
def P14041411518502226460.Spec : Prop :=
  ∀ n, P14041411518502226460.a n = (A056060 (n + 1) : ℚ)

end A056060

/-! ## A056060.P15453241297599372113

`A056202(n+1)/A056647(n+1)`
-/

namespace A056060.P15453241297599372113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056202 (n + 1) : ℚ) / (A056647 (n + 1) : ℚ)

end

end A056060.P15453241297599372113

namespace A056060

/-- `A056202(n+1)/A056647(n+1)` -/
def P15453241297599372113.Spec : Prop :=
  ∀ n, P15453241297599372113.a n = (A056060 (n + 1) : ℚ)

end A056060

/-! ## A056060.P13080910672634588970

`A056202(n+1)/gcd(A056057(n+1), A056202(n+1))`
-/

namespace A056060.P13080910672634588970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056202 (n + 1) : ℚ) / (Int.gcd (A056057 (n + 1)) (A056202 (n + 1)) : ℚ)

end

end A056060.P13080910672634588970

namespace A056060

/-- `A056202(n+1)/gcd(A056057(n+1), A056202(n+1))` -/
def P13080910672634588970.Spec : Prop :=
  ∀ n, P13080910672634588970.a n = (A056060 (n + 1) : ℚ)

end A056060

/-! ## A056060.P8898013811204101326

`A001405(n+1)/(A056057(n+1)*A056059(n+1))`
-/

namespace A056060.P8898013811204101326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056057 (n + 1) * A056059 (n + 1) : ℚ)

end

end A056060.P8898013811204101326

namespace A056060

/-- `A001405(n+1)/(A056057(n+1)*A056059(n+1))` -/
def P8898013811204101326.Spec : Prop :=
  ∀ n, P8898013811204101326.a n = (A056060 (n + 1) : ℚ)

end A056060

/-!
# A056061: Number of square divisors of central binomial coefficients.

The programs for A056061, there is no canonical definition to state claims against.
-/

/-! ## A056061.P1824993348680178238

`A376556(n+1)+A376555(n+1)`
-/

namespace A056061.P1824993348680178238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 (n + 1) + A376555 (n + 1)

end

end A056061.P1824993348680178238

/-! ## A056061.P6203037311476815040

`A056649(n+1)+A056648(n+1)`
-/

namespace A056061.P6203037311476815040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (n + 1) + A056648 (n + 1)

end

end A056061.P6203037311476815040

/-! ## A056061.P5164730469887883452

`∏{e}[sqrt(A056057(n+1)), #+1]`
-/

namespace A056061.P5164730469887883452
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056057 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A056061.P5164730469887883452

/-! ## A056061.P18155521484557536456

`A000005(A056056(n+1))`
-/

namespace A056061.P18155521484557536456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056056 (n + 1)).toNat

end

end A056061.P18155521484557536456

/-! ## A056061.P12872662489783798107

`A000005(sqrt(A056057(n+1)))`
-/

namespace A056061.P12872662489783798107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A056057 (n + 1) : ℝ))).toNat

end

end A056061.P12872662489783798107

/-! ## A056061.P4541868342688151240

`A000005(root(A056057(n+1), 2))`
-/

namespace A056061.P4541868342688151240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A056057 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A056061.P4541868342688151240

/-! ## A056061.P14474782176007865075

`∑{d}[A056056(n+1), A000188(A020639(#))]`
-/

namespace A056061.P14474782176007865075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (A020639 d).toNat

end

end A056061.P14474782176007865075

/-! ## A056061.P11512346866750418226

`∑{d}[A056056(n+1), A000188(A000188(#))]`
-/

namespace A056061.P11512346866750418226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (A000188 d).toNat

end

end A056061.P11512346866750418226

/-! ## A056061.P15471302222557608637

`∏{e}[A056057(n+1), A000005(#)]`
-/

namespace A056061.P15471302222557608637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A056061.P15471302222557608637

/-! ## A056061.P14324067723111305134

`∑{d}[A056056(n+1), A007913(#²)]`
-/

namespace A056061.P14324067723111305134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007913 (d ^ 2)

end

end A056061.P14324067723111305134

/-!
# A056063: Coefficients in power series of autocorrelation function of a spin s=1/2 particle in Heisenberg chain at infinite temperature.

The programs for A056063, there is no canonical definition to state claims against.
-/

/-! ## A056063.P1016945067343393840

`A245092(A304073(n+2)+A245114(n))`
-/

namespace A056063.P1016945067343393840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A304073 (n + 2) + A245114 n).toNat

end

end A056063.P1016945067343393840

/-!
# A056064: The Kubelsky sequence: Jack Benny's reported age, sampled annually.

The programs for A056064, the canonical program `A056064.P17064360484152801337` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056064 has offset 1).

The definition of A056064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056064.P17064360484152801337

`a(n-1)+1-val(a(n-1), 39)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056064

/-- `a(n-1)+1-val(a(n-1), 39)` -/
def P17064360484152801337.Spec : Prop :=
  ∀ n, P17064360484152801337.a n = A056064 (n + 1)

theorem P17064360484152801337.correct : P17064360484152801337.Spec := by
  intro n
  simp only [A056064, Nat.add_sub_cancel]

end A056064

/-!
# A056065: Order of certain group related to alternating sign matrices.

The programs for A056065, there is no canonical definition to state claims against.
-/

/-! ## A056065.P15087236798146452996

`A056043(∏[a(n-1)+1])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A056065.P15087236798146452996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A056065.P15087236798146452996

/-! ## A056065.P17402626530144134083

`A056044(∏[a(n-1)+1])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A056065.P17402626530144134083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056044 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A056065.P17402626530144134083

/-! ## A056065.P9077222004079697867

`A056056(∏[a(n-1)+1])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A056065.P9077222004079697867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A056065.P9077222004079697867

/-!
# A056066: Expansion of log( dC(x)/dx ), C(x) = e.g.f. for labeled connected graphs (A001187).

The programs for A056066, there is no canonical definition to state claims against.
-/

/-! ## A056066.P15375384354967008692

`A062740(n)-A001187(n)`
-/

namespace A056066.P15375384354967008692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062740 n - A001187 n

end

end A056066.P15375384354967008692

/-! ## A056066.P1673746093631723417

`A000225(n)*A001187(n)`
-/

namespace A056066.P1673746093631723417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A001187 n

end

end A056066.P1673746093631723417

/-! ## A056066.P11234874780572756729

`∑[A131577(n)]*A001187(n)`
-/

namespace A056066.P11234874780572756729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001187 n

end

end A056066.P11234874780572756729

/-! ## A056066.P811282741726152815

`Δ[A000295(n)]*A001187(n)`
-/

namespace A056066.P811282741726152815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001187 n

end

end A056066.P811282741726152815

/-! ## A056066.P14056698185331296317

`(A000079(n)-1)*A001187(n)`
-/

namespace A056066.P14056698185331296317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - 1) * A001187 n

end

end A056066.P14056698185331296317

/-!
# A056067: Numbers k such that k! is divisible by the square of (f+d)!^2 for d=0 and d=1 (and possibly larger d), where f = floor(k/2).

The programs for A056067, there is no canonical definition to state claims against.
-/

/-! ## A056067.P7060562983010011824

`A067348(A080513(n))-A000034(n)`
-/

namespace A056067.P7060562983010011824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067348 (A080513 n).toNat - A000034 n

end

end A056067.P7060562983010011824

/-! ## A056067.P18357964469506988254

`A067348(A008619(n+1))-A000034(n)`
-/

namespace A056067.P18357964469506988254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067348 (A008619 (n + 1)).toNat - A000034 n

end

end A056067.P18357964469506988254

/-! ## A056067.P15567197075897082909

`lt[n*A053214(A008619(n)), n]`
-/

namespace A056067.P15567197075897082909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053214 (A008619 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A056067.P15567197075897082909

/-! ## A056067.P10183513284426266102

`record[A057815(A057815(n+2)+1)-2]`
-/

namespace A056067.P10183513284426266102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (A057815 (n + 2) + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056067.P10183513284426266102

/-! ## A056067.P14023971977805393858

`eq[A049077(n+2), A049077(n+3)]+1`
-/

namespace A056067.P14023971977805393858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056067.P14023971977805393858

/-! ## A056067.P14773136935457561007

`eq[A000007(n), A053214(A008619(n))]`
-/

namespace A056067.P14773136935457561007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056067.P14773136935457561007

/-! ## A056067.P9618047238375082536

`eq[A000038(n), A053214(A008619(n))]`
-/

namespace A056067.P9618047238375082536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056067.P9618047238375082536

/-! ## A056067.P37232510403329875

`eq[A049077(n+1), A049077(A113484(n+1))]`
-/

namespace A056067.P37232510403329875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A113484 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056067.P37232510403329875

/-!
# A056069: Number of 4-element ordered antichains on an unlabeled n-element set; T_1-hypergraphs with 4 labeled nodes and n hyperedges.

The programs for A056069, there is no canonical definition to state claims against.
-/

/-! ## A056069.P8241115233156456051

`∑[A056090(n+4)]`
-/

namespace A056069.P8241115233156456051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056090 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056069.P8241115233156456051

/-! ## A056069.P2659345454105786687

`A056090(n+4)+a(A000027(n+1)-2)` with `a(0)=25`
-/

namespace A056069.P2659345454105786687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  A056090 (n + 4) + a (A000027 (n + 1) - 2).toNat

end

end A056069.P2659345454105786687

/-!
# A056070: Number of 5-element ordered antichains on an unlabeled n-element set; T_1-hypergraphs with 5 labeled nodes and n hyperedges.

The programs for A056070, there is no canonical definition to state claims against.
-/

/-! ## A056070.P9084728685017987270

`∑[A056093(n+4)]`
-/

namespace A056070.P9084728685017987270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056093 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056070.P9084728685017987270

/-!
# A056074: Number of 3-element ordered antichain covers of an unlabeled n-element set.

The programs for A056074, the canonical program `A056074.P119670313069440456` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056074 has offset 3).

The definition of A056074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056074.P119670313069440456

`(n+3)*((n+3)^5+21*(n+3)^4-5*(n+3)^3-345*(n+3)²+724*(n+3)-396)/720`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056074

/-- `(n+3)*((n+3)^5+21*(n+3)^4-5*(n+3)^3-345*(n+3)²+724*(n+3)-396)/720` -/
def P119670313069440456.Spec : Prop :=
  ∀ n, P119670313069440456.a n = (A056074 (n + 3) : ℚ)

end A056074

/-! ## A056074.P2051234398906862549

`A005720(n+2)+A005585(n+1)`
-/

namespace A056074.P2051234398906862549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005720 (n + 2) + A005585 (n + 1)

end

end A056074.P2051234398906862549

namespace A056074

/-- `A005720(n+2)+A005585(n+1)` -/
def P2051234398906862549.Spec : Prop :=
  ∀ n, P2051234398906862549.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P10849379709582194287

`A005714(n+3)+∑[A005712(n+2)]`
-/

namespace A056074.P10849379709582194287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056074.P10849379709582194287

namespace A056074

/-- `A005714(n+3)+∑[A005712(n+2)]` -/
def P10849379709582194287.Spec : Prop :=
  ∀ n, P10849379709582194287.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P7492737769579673439

`A095669(n)-(A000292(n+1)+A000292(n+1))`
-/

namespace A056074.P7492737769579673439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - (A000292 (n + 1) + A000292 (n + 1))

end

end A056074.P7492737769579673439

namespace A056074

/-- `A095669(n)-(A000292(n+1)+A000292(n+1))` -/
def P7492737769579673439.Spec : Prop :=
  ∀ n, P7492737769579673439.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P17787780154674952800

`∑[A056078(n+3)]`
-/

namespace A056074.P17787780154674952800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056074.P17787780154674952800

namespace A056074

/-- `∑[A056078(n+3)]` -/
def P17787780154674952800.Spec : Prop :=
  ∀ n, P17787780154674952800.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P7176128335216905670

`A252970(n+3)+∑[∑[n+1]]`
-/

namespace A056074.P7176128335216905670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252970 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A056074.P7176128335216905670

namespace A056074

/-- `A252970(n+3)+∑[∑[n+1]]` -/
def P7176128335216905670.Spec : Prop :=
  ∀ n, P7176128335216905670.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P13430622788541675037

`Δ[A056005(n+2)]`
-/

namespace A056074.P13430622788541675037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056074.P13430622788541675037

namespace A056074

/-- `Δ[A056005(n+2)]` -/
def P13430622788541675037.Spec : Prop :=
  ∀ n, P13430622788541675037.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P9114844930064989845

`A056005(n+3)-A056005(n+2)`
-/

namespace A056074.P9114844930064989845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 (n + 3) - A056005 (n + 2)

end

end A056074.P9114844930064989845

namespace A056074

/-- `A056005(n+3)-A056005(n+2)` -/
def P9114844930064989845.Spec : Prop :=
  ∀ n, P9114844930064989845.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P18077574201016558411

`Δ[record[A056005(A003987(n))]]`
-/

namespace A056074.P18077574201016558411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 (A003987 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056074.P18077574201016558411

namespace A056074

/-- `Δ[record[A056005(A003987(n))]]` -/
def P18077574201016558411.Spec : Prop :=
  ∀ n, P18077574201016558411.a n = A056074 (n + 3)

end A056074

/-! ## A056074.P3864388684311181600

`Δ[record[A056005(A002262(n))]]`
-/

namespace A056074.P3864388684311181600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056074.P3864388684311181600

namespace A056074

/-- `Δ[record[A056005(A002262(n))]]` -/
def P3864388684311181600.Spec : Prop :=
  ∀ n, P3864388684311181600.a n = A056074 (n + 3)

end A056074

/-!
# A056076: Numbers k that divide sigma(k) + d(k), where d(k) is the number of divisors of k and sigma(k) is their sum.

The programs for A056076, there is no canonical definition to state claims against.
-/

/-! ## A056076.P307176817989299815

`lt[A007503(n+1)%(n+1), 1]+1`
-/

namespace A056076.P307176817989299815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007503 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056076.P307176817989299815

/-! ## A056076.P6128921922231002533

`eq[A049820(n+1), A054024(n+1)]+1`
-/

namespace A056076.P6128921922231002533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056076.P6128921922231002533

/-!
# A056077: Indices n of terms of sequence A001142, Product_{k=0..n} binomial(n,k), that are divisible by all primes <= n.

The programs for A056077, there is no canonical definition to state claims against.
-/

/-! ## A056077.P4731823914346050920

`lt[n, A256267(n+2)]+1`
-/

namespace A056077.P4731823914346050920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A056077.P4731823914346050920

/-! ## A056077.P7618507612154998266

`lt[n²+2, A256017(n+1)]`
-/

namespace A056077.P7618507612154998266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A056077.P7618507612154998266

/-! ## A056077.P1822311934739829998

`record[A006370(2*(n+1))%A256267(n+2)]`
-/

namespace A056077.P1822311934739829998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006370 (2 * (n + 1))) (A256267 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056077.P1822311934739829998

/-! ## A056077.P10531234349759304534

`eq[1, A056609(n+1)]+1`
-/

namespace A056077.P10531234349759304534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056077.P10531234349759304534

/-! ## A056077.P3629741942015123064

`record[(n+1)/A072154(A056609(n+1)-1)]`
-/

namespace A056077.P3629741942015123064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072154 (A056609 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056077.P3629741942015123064

/-! ## A056077.P4633077250813067990

`record[A155043(n+1)/A056609(A155043(n+1))]`
-/

namespace A056077.P4633077250813067990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155043 (n + 1) : ℚ) / (A056609 (A155043 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056077.P4633077250813067990

/-! ## A056077.P2126225789232667375

`eq[A159477(n+1), A256267(n+1)]`
-/

namespace A056077.P2126225789232667375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056077.P2126225789232667375

/-! ## A056077.P8696120350370732552

`record[(n+1)/A000203(A056609(n+1)²)]`
-/

namespace A056077.P8696120350370732552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000203 (A056609 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056077.P8696120350370732552

/-!
# A056078: Number of proper T_1-hypergraphs with 3 labeled nodes and n hyperedges.

The programs for A056078, the canonical program `A056078.P17203668828499593792` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056078 has offset 1).

The definition of A056078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056078.P17203668828499593792

`(n^4+20*n^3+35*n²-140*n+84)*n/120`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056078

/-- `(n^4+20*n^3+35*n²-140*n+84)*n/120` -/
def P17203668828499593792.Spec : Prop :=
  ∀ n, P17203668828499593792.a n = (A056078 (n + 1) : ℚ)

end A056078

/-! ## A056078.P16773069252116384360

`A000389(n)+A006528(n)-n²`
-/

namespace A056078.P16773069252116384360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + (A006528 n - (n ^ 2 : ℤ))

end

end A056078.P16773069252116384360

namespace A056078

/-- `A000389(n)+A006528(n)-n²` -/
def P16773069252116384360.Spec : Prop :=
  ∀ n, P16773069252116384360.a n = A056078 (n + 1)

end A056078

/-! ## A056078.P9991469294997830443

`A000389(n)+A117662(n)+A008911(n)`
-/

namespace A056078.P9991469294997830443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + (A117662 n + A008911 n)

end

end A056078.P9991469294997830443

namespace A056078

/-- `A000389(n)+A117662(n)+A008911(n)` -/
def P9991469294997830443.Spec : Prop :=
  ∀ n, P9991469294997830443.a n = A056078 (n + 1)

end A056078

/-! ## A056078.P9463130160087186605

`A000389(n)+A239352(n)+A161680(n)`
-/

namespace A056078.P9463130160087186605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + (A239352 n + A161680 n)

end

end A056078.P9463130160087186605

namespace A056078

/-- `A000389(n)+A239352(n)+A161680(n)` -/
def P9463130160087186605.Spec : Prop :=
  ∀ n, P9463130160087186605.a n = A056078 (n + 1)

end A056078

/-! ## A056078.P10825093590454868421

`A000389(n)+A006011(n)-A161680(n)`
-/

namespace A056078.P10825093590454868421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + (A006011 n - A161680 n)

end

end A056078.P10825093590454868421

namespace A056078

/-- `A000389(n)+A006011(n)-A161680(n)` -/
def P10825093590454868421.Spec : Prop :=
  ∀ n, P10825093590454868421.a n = A056078 (n + 1)

end A056078

/-! ## A056078.P17528426973901161736

`Δ[A056005(n)-A056005(A171950(n+1))]`
-/

namespace A056078.P17528426973901161736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 n - A056005 (A171950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056078.P17528426973901161736

namespace A056078

/-- `Δ[A056005(n)-A056005(A171950(n+1))]` -/
def P17528426973901161736.Spec : Prop :=
  ∀ n, P17528426973901161736.a n = A056078 (n + 1)

end A056078

/-! ## A056078.P237497432631593573

`Δ[Δ[A056005(A171950(n+1))]]`
-/

namespace A056078.P237497432631593573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056005 (A171950 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056078.P237497432631593573

namespace A056078

/-- `Δ[Δ[A056005(A171950(n+1))]]` -/
def P237497432631593573.Spec : Prop :=
  ∀ n, P237497432631593573.a n = A056078 (n + 1)

end A056078

/-!
# A056079: Number of 7 X 7 binary matrices with n ones, with no zero rows or columns, up to row and column permutation.

The programs for A056079, there is no canonical definition to state claims against.
-/

/-! ## A056079.P17379224128720432727

`A057150(A056119(n)+28)`
-/

namespace A056079.P17379224128720432727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057150 (A056119 n + 28).toNat

end

end A056079.P17379224128720432727

/-! ## A056079.P11657298139499287863

`A057150(eq[11, A066657(n)])`
-/

namespace A056079.P11657298139499287863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056079.P11657298139499287863

/-!
# A056080: Number of 5 X 5 binary matrices with n ones, with no zero rows or columns, up to row and column permutation.

The programs for A056080, there is no canonical definition to state claims against.
-/

/-! ## A056080.P10404063362888572163

`A057149(n+40)`
-/

namespace A056080.P10404063362888572163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057149 (n + 40)

end

end A056080.P10404063362888572163

/-! ## A056080.P6057253852145198400

`A057150(A167499(n+3))`
-/

namespace A056080.P6057253852145198400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057150 (A167499 (n + 3)).toNat

end

end A056080.P6057253852145198400

/-! ## A056080.P539067304540021806

`A057150(A155212(n)+13)`
-/

namespace A056080.P539067304540021806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057150 (A155212 n + 13).toNat

end

end A056080.P539067304540021806

/-! ## A056080.P2427618366320246198

`A057150(A056000(n)+15)`
-/

namespace A056080.P2427618366320246198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057150 (A056000 n + 15).toNat

end

end A056080.P2427618366320246198

/-!
# A056081: Numbers that are congruent to {1, 26} mod 27.

The programs for A056081, the canonical program `A056081.P5164034048466750102` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056081 has offset 1).

The definition of A056081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056081.P5164034048466750102

`27*n-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056081

/-- `27*n-a(n-1)` -/
def P5164034048466750102.Spec : Prop :=
  ∀ n, P5164034048466750102.a n = A056081 (n + 1)

theorem P5164034048466750102.correct : P5164034048466750102.Spec := by
  intro n
  simp only [A056081, Nat.add_sub_cancel]

end A056081

/-! ## A056081.P7871601310409989374

`a(n-2)+27` with `a(0)=1, a(1)=26`
-/

namespace A056081.P7871601310409989374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 26] fun n a =>
  a (n - 2) + 27

end

end A056081.P7871601310409989374

namespace A056081

/-- `a(n-2)+27` -/
def P7871601310409989374.Spec : Prop :=
  ∀ n, (P7871601310409989374.a n : ℤ) = A056081 (n + 1)

end A056081

/-! ## A056081.P6528023961259555104

`∑[24^(n%2)]+n`
-/

namespace A056081.P6528023961259555104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A056081.P6528023961259555104

namespace A056081

/-- `∑[24^(n%2)]+n` -/
def P6528023961259555104.Spec : Prop :=
  ∀ n, (P6528023961259555104.a n : ℤ) = A056081 (n + 1)

end A056081

/-! ## A056081.P18252183118679757217

`∑[24^and(1, n)]+n`
-/

namespace A056081.P18252183118679757217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A056081.P18252183118679757217

namespace A056081

/-- `∑[24^and(1, n)]+n` -/
def P18252183118679757217.Spec : Prop :=
  ∀ n, (P18252183118679757217.a n : ℤ) = A056081 (n + 1)

end A056081

/-! ## A056081.P15710305063107590461

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=25, a(2)=2`
-/

namespace A056081.P15710305063107590461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 25, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056081.P15710305063107590461

namespace A056081

/-- `∑[abs(a(n-2))]` -/
def P15710305063107590461.Spec : Prop :=
  ∀ n, (P15710305063107590461.a n : ℤ) = A056081 (n + 1)

end A056081

/-! ## A056081.P10829333113596550775

`∑[floor(a(n-2))]` with `a(0)=1, a(1)=25, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A056081.P10829333113596550775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 25, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056081.P10829333113596550775

namespace A056081

/-- `∑[floor(a(n-2))]` -/
def P10829333113596550775.Spec : Prop :=
  ∀ n, (P10829333113596550775.a n : ℤ) = A056081 (n + 1)

end A056081

/-! ## A056081.P16718531977335457979

`∑[27-a(n-1)]` with `a(0)=1, a(1)=25`
-/

namespace A056081.P16718531977335457979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n f1 =>
  27 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056081.P16718531977335457979

namespace A056081

/-- `∑[27-a(n-1)]` -/
def P16718531977335457979.Spec : Prop :=
  ∀ n, P16718531977335457979.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P252237634042856510

`∑[(4*and(1, n))!]+n`
-/

namespace A056081.P252237634042856510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A056081.P252237634042856510

namespace A056081

/-- `∑[(4*and(1, n))!]+n` -/
def P252237634042856510.Spec : Prop :=
  ∀ n, (P252237634042856510.a n : ℤ) = A056081 (n + 1)

end A056081

/-! ## A056081.P11949610608256825705

`∑[gcd(2, n+1)²!]+n`
-/

namespace A056081.P11949610608256825705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 2 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A056081.P11949610608256825705

namespace A056081

/-- `∑[gcd(2, n+1)²!]+n` -/
def P11949610608256825705.Spec : Prop :=
  ∀ n, (P11949610608256825705.a n : ℤ) = A056081 (n + 1)

end A056081

/-! ## A056081.P3249352117616311346

`record[3*(n+1)-dr(n+2)!]`
-/

namespace A056081.P3249352117616311346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.factorial (SequenceMachineLib.digitalRoot (n + 2 : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056081.P3249352117616311346

namespace A056081

/-- `record[3*(n+1)-dr(n+2)!]` -/
def P3249352117616311346.Spec : Prop :=
  ∀ n, P3249352117616311346.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P11450691976813512442

`∑[round(and(7, A280193(n))²/2)]`
-/

namespace A056081.P11450691976813512442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land 7 (A280193 n) ^ 2 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056081.P11450691976813512442

namespace A056081

/-- `∑[round(and(7, A280193(n))²/2)]` -/
def P11450691976813512442.Spec : Prop :=
  ∀ n, P11450691976813512442.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P1097545962745475868

`∑[A040156(n)-A040155(n)]`
-/

namespace A056081.P1097545962745475868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040156 n - A040155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056081.P1097545962745475868

namespace A056081

/-- `∑[A040156(n)-A040155(n)]` -/
def P1097545962745475868.Spec : Prop :=
  ∀ n, P1097545962745475868.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P5971630793906450372

`∑[A040651(n)-A040649(n)]`
-/

namespace A056081.P5971630793906450372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040651 n - A040649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056081.P5971630793906450372

namespace A056081

/-- `∑[A040651(n)-A040649(n)]` -/
def P5971630793906450372.Spec : Prop :=
  ∀ n, P5971630793906450372.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P15912740353780131017

`∑[xor(A040139(n), A040156(n))]`
-/

namespace A056081.P15912740353780131017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040139 n) (A040156 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056081.P15912740353780131017

namespace A056081

/-- `∑[xor(A040139(n), A040156(n))]` -/
def P15912740353780131017.Spec : Prop :=
  ∀ n, P15912740353780131017.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P3516796983914794924

`A166524(n+1)+A008591(n)`
-/

namespace A056081.P3516796983914794924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1) + A008591 n

end

end A056081.P3516796983914794924

namespace A056081

/-- `A166524(n+1)+A008591(n)` -/
def P3516796983914794924.Spec : Prop :=
  ∀ n, P3516796983914794924.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P11809652679035000969

`A168211(n+1)+A017281(n)`
-/

namespace A056081.P11809652679035000969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168211 (n + 1) + A017281 n

end

end A056081.P11809652679035000969

namespace A056081

/-- `A168211(n+1)+A017281(n)` -/
def P11809652679035000969.Spec : Prop :=
  ∀ n, P11809652679035000969.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P16623153310108800004

`A168397(n+1)+A113541(n+1)`
-/

namespace A056081.P16623153310108800004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168397 (n + 1) + A113541 (n + 1)

end

end A056081.P16623153310108800004

namespace A056081

/-- `A168397(n+1)+A113541(n+1)` -/
def P16623153310108800004.Spec : Prop :=
  ∀ n, P16623153310108800004.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P14351091328334096342

`A274406(n+1)+A118510(n+1)`
-/

namespace A056081.P14351091328334096342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) + A118510 (n + 1)

end

end A056081.P14351091328334096342

namespace A056081

/-- `A274406(n+1)+A118510(n+1)` -/
def P14351091328334096342.Spec : Prop :=
  ∀ n, P14351091328334096342.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P6640817799071972292

`2*A175887(n+1)-A001651(n+1)`
-/

namespace A056081.P6640817799071972292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175887 (n + 1) - A001651 (n + 1)

end

end A056081.P6640817799071972292

namespace A056081

/-- `2*A175887(n+1)-A001651(n+1)` -/
def P6640817799071972292.Spec : Prop :=
  ∀ n, P6640817799071972292.a n = A056081 (n + 1)

end A056081

/-! ## A056081.P14025364576321684546

`A241521(n+1)-(A155098(n+1)+A155096(n+1))`
-/

namespace A056081.P14025364576321684546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241521 (n + 1) - (A155098 (n + 1) + A155096 (n + 1))

end

end A056081.P14025364576321684546

namespace A056081

/-- `A241521(n+1)-(A155098(n+1)+A155096(n+1))` -/
def P14025364576321684546.Spec : Prop :=
  ∀ n, P14025364576321684546.a n = A056081 (n + 1)

end A056081

/-!
# A056082: Numbers k such that k^4 == 1 (mod 5^3).

The programs for A056082, the canonical program `A056082.P11420111032502593753` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056082 has offset 1).

The definition of A056082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056082.P11420111032502593753

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=57, a(2)=68, a(3)=124, a(4)=126`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056082

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P11420111032502593753.Spec : Prop :=
  ∀ n, P11420111032502593753.a n = A056082 (n + 1)

theorem P11420111032502593753.correct : P11420111032502593753.Spec := by
  intro n
  simp only [A056082, Nat.add_sub_cancel]

end A056082

/-! ## A056082.P17415099220790982975

`A056021(n+1)+50*A110654(n)`
-/

namespace A056082.P17415099220790982975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1) + 50 * A110654 n

end

end A056082.P17415099220790982975

namespace A056082

/-- `A056021(n+1)+50*A110654(n)` -/
def P17415099220790982975.Spec : Prop :=
  ∀ n, P17415099220790982975.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P11372873881277525145

`∪[A376538(n+1), A376539(n+1)]`
-/

namespace A056082.P11372873881277525145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056082.P11372873881277525145

namespace A056082

/-- `∪[A376538(n+1), A376539(n+1)]` -/
def P11372873881277525145.Spec : Prop :=
  ∀ n, (P11372873881277525145.a n : ℤ) = A056082 (n + 1)

end A056082

/-! ## A056082.P16801456711425787711

`A056021(n+1)+A056021(A168390(n+1))-1`
-/

namespace A056082.P16801456711425787711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1) + (A056021 (A168390 (n + 1)).toNat - 1)

end

end A056082.P16801456711425787711

namespace A056082

/-- `A056021(n+1)+A056021(A168390(n+1))-1` -/
def P16801456711425787711.Spec : Prop :=
  ∀ n, P16801456711425787711.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P5513076289009713271

`A056021(A197652(n+2))`
-/

namespace A056082.P5513076289009713271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A197652 (n + 2)).toNat

end

end A056082.P5513076289009713271

namespace A056082

/-- `A056021(A197652(n+2))` -/
def P5513076289009713271.Spec : Prop :=
  ∀ n, P5513076289009713271.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P5724308764636446665

`A056021(∑[Δ[A004442(n)]²])`
-/

namespace A056082.P5724308764636446665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056082.P5724308764636446665

namespace A056082

/-- `A056021(∑[Δ[A004442(n)]²])` -/
def P5724308764636446665.Spec : Prop :=
  ∀ n, P5724308764636446665.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P8379310196830613370

`A056021(A168390(n+1)+n)`
-/

namespace A056082.P8379310196830613370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A168390 (n + 1) + (n : ℤ)).toNat

end

end A056082.P8379310196830613370

namespace A056082

/-- `A056021(A168390(n+1)+n)` -/
def P8379310196830613370.Spec : Prop :=
  ∀ n, P8379310196830613370.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P182901348357550310

`A056021(A017029(n)-A166519(n))`
-/

namespace A056082.P182901348357550310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A017029 n - A166519 n).toNat

end

end A056082.P182901348357550310

namespace A056082

/-- `A056021(A017029(n)-A166519(n))` -/
def P182901348357550310.Spec : Prop :=
  ∀ n, P182901348357550310.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P8759980842504400935

`A056021(A090771(n+1)+A000035(n))`
-/

namespace A056082.P8759980842504400935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A090771 (n + 1) + A000035 n).toNat

end

end A056082.P8759980842504400935

namespace A056082

/-- `A056021(A090771(n+1)+A000035(n))` -/
def P8759980842504400935.Spec : Prop :=
  ∀ n, P8759980842504400935.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P16323277416957326484

`A056021(A168419(n+1)+A008619(n))`
-/

namespace A056082.P16323277416957326484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A168419 (n + 1) + A008619 n).toNat

end

end A056082.P16323277416957326484

namespace A056082

/-- `A056021(A168419(n+1)+A008619(n))` -/
def P16323277416957326484.Spec : Prop :=
  ∀ n, P16323277416957326484.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P17272621295091169754

`A056021(A306277(n+1)+Δ[A109613(n)])`
-/

namespace A056082.P17272621295091169754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A306277 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A056082.P17272621295091169754

namespace A056082

/-- `A056021(A306277(n+1)+Δ[A109613(n)])` -/
def P17272621295091169754.Spec : Prop :=
  ∀ n, P17272621295091169754.a n = A056082 (n + 1)

end A056082

/-! ## A056082.P5307685986729555135

`A143795(A143795(n+2))+n-1`
-/

namespace A056082.P5307685986729555135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (A143795 (n + 2)).toNat + ((n : ℤ) - 1)

end

end A056082.P5307685986729555135

namespace A056082

/-- `A143795(A143795(n+2))+n-1` -/
def P5307685986729555135.Spec : Prop :=
  ∀ n, P5307685986729555135.a n = A056082 (n + 1)

end A056082

/-!
# A056083: Numbers k such that k^6 == 1 (mod 7^3).

The programs for A056083, there is no canonical definition to state claims against.
-/

/-! ## A056083.P14215477098622317381

`A197352(A292125(n+1))`
-/

namespace A056083.P14215477098622317381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197352 (A292125 (n + 1)).toNat

end

end A056083.P14215477098622317381

/-! ## A056083.P7628569361738882351

`A197352(A228050(n+2))`
-/

namespace A056083.P7628569361738882351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197352 (A228050 (n + 2)).toNat

end

end A056083.P7628569361738882351

/-!
# A056084: Numbers k such that k^8 == 1 (mod 9^3).

The programs for A056084, the canonical program `A056084.P16943723683172768338` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056084 has offset 1).

The definition of A056084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056084.P16943723683172768338

`729*floor((n+1)/2)-(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056084

/-- `729*floor((n+1)/2)-(-1)^(n+1)` -/
def P16943723683172768338.Spec : Prop :=
  ∀ n, P16943723683172768338.a n = A056084 (n + 1)

theorem P16943723683172768338.correct : P16943723683172768338.Spec := by
  intro n
  simp only [A056084, Nat.add_sub_cancel]

end A056084

/-! ## A056084.P3254213483165592031

`∑[A072384(n^(2-a(n-1))+1)]` with `a(0)=1`
-/

namespace A056084.P3254213483165592031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A072384 (SequenceMachineLib.roundAway ((n : ℚ) ^ (2 - f1 (n - 1) : ℤ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056084.P3254213483165592031

namespace A056084

/-- `∑[A072384(n^(2-a(n-1))+1)]` -/
def P3254213483165592031.Spec : Prop :=
  ∀ n, P3254213483165592031.a n = A056084 (n + 1)

end A056084

/-! ## A056084.P16218954170574358541

`∑[A268270(A268242(a(n-1)))]` with `a(0)=1`
-/

namespace A056084.P16218954170574358541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A268270 (A268242 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056084.P16218954170574358541

namespace A056084

/-- `∑[A268270(A268242(a(n-1)))]` -/
def P16218954170574358541.Spec : Prop :=
  ∀ n, P16218954170574358541.a n = A056084 (n + 1)

end A056084

/-!
# A056096: Maximum value in the distribution by first value of Prufer code of noncrossing spanning trees on a circle of n+2 points; perhaps the number whose Prufer code starts with 2.

The programs for A056096, there is no canonical definition to state claims against.
-/

/-! ## A056096.P5740815847187150504

`6*C(3*n+2, n)/(2*n+3)-C(3*n+1, n)/(n+1)`
-/

namespace A056096.P5740815847187150504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (3 * n + 2) n : ℚ) / (2 * n + 3 : ℚ) - (Nat.choose (3 * n + 1) n : ℚ) / (n + 1 : ℚ)

end

end A056096.P5740815847187150504

/-! ## A056096.P17821612689369573630

`A093951(Δ[n²])`
-/

namespace A056096.P17821612689369573630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A056096.P17821612689369573630

/-! ## A056096.P2162387460815706690

`A046649(n+2)/2`
-/

namespace A056096.P2162387460815706690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046649 (n + 2) : ℚ) / 2

end

end A056096.P2162387460815706690

/-! ## A056096.P7123756219248082586

`and(-1, A093951(2*n+1))`
-/

namespace A056096.P7123756219248082586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A093951 (2 * n + 1))

end

end A056096.P7123756219248082586

/-! ## A056096.P8234204279932736027

`A091665(∑[n+1]+2)/2`
-/

namespace A056096.P8234204279932736027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091665 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2

end

end A056096.P8234204279932736027

/-!
# A056097: Numbers n such that phi(n) + 1 | sigma(n).

The programs for A056097, there is no canonical definition to state claims against.
-/

/-! ## A056097.P2516744576388062191

`A060106(n+1)*A060131(A060100(2*n+3))`
-/

namespace A056097.P2516744576388062191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1) * A060131 (A060100 (2 * n + 3)).toNat

end

end A056097.P2516744576388062191

/-!
# A056098: Minimum value in the distribution by first value of Prufer code of noncrossing spanning trees on a circle of n+2 points.

The programs for A056098, there is no canonical definition to state claims against.
-/

/-! ## A056098.P13149104801940226601

`A210357(A150416(n))`
-/

namespace A056098.P13149104801940226601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A150416 n).toNat

end

end A056098.P13149104801940226601

/-! ## A056098.P8414657365890204669

`A001462(A292123(n))-A000296(n)`
-/

namespace A056098.P8414657365890204669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A292123 n).toNat - A000296 n

end

end A056098.P8414657365890204669

/-!
# A056099: First differences of A025488 (binary order for least prime signatures).

The programs for A056099, the canonical program `A056099.P15875946763897410179` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056099 has offset 0).

The definition of A056099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056099.P15875946763897410179

`abs(Δ[A025488(abs(1-n))])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A056099

/-- `abs(Δ[A025488(abs(1-n))])` -/
def P15875946763897410179.Spec : Prop :=
  ∀ n, P15875946763897410179.a n = A056099 n

theorem P15875946763897410179.correct : P15875946763897410179.Spec := by
  intro n
  simp only [A056099]

end A056099

/-! ## A056099.P11134550345358396251

`Δ[A329898(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A056099.P11134550345358396251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A329898 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056099.P11134550345358396251

namespace A056099

/-- `Δ[A329898(a(n-1))]` -/
def P11134550345358396251.Spec : Prop :=
  ∀ n, P11134550345358396251.a n = A056099 n

end A056099

/-! ## A056099.P5165341772395080793

`Δ[lt[A247451(abs(1-n)+1), 4]]`
-/

namespace A056099.P5165341772395080793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (|1 - (n : ℤ)| + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056099.P5165341772395080793

namespace A056099

/-- `Δ[lt[A247451(abs(1-n)+1), 4]]` -/
def P5165341772395080793.Spec : Prop :=
  ∀ n, P5165341772395080793.a n = A056099 n

end A056099

/-! ## A056099.P3771321075078343147

`Δ[eq[0, A060826(A233583(n+1))]]`
-/

namespace A056099.P3771321075078343147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060826 (A233583 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056099.P3771321075078343147

namespace A056099

/-- `Δ[eq[0, A060826(A233583(n+1))]]` -/
def P3771321075078343147.Spec : Prop :=
  ∀ n, P3771321075078343147.a n = A056099 n

end A056099

