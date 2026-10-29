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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A163400: Number of bits in binary expansion of n-th nonprime.

The programs for A163400, the canonical program `A163400.P14572793811619071824` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163400 has offset 1).

The definition of A163400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163400.P14572793811619071824

`A070939(A141468(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163400

/-- `A070939(A141468(n+1))` -/
def P14572793811619071824.Spec : Prop :=
  ∀ n, P14572793811619071824.a n = A163400 (n + 1)

theorem P14572793811619071824.correct : P14572793811619071824.Spec := by
  intro n
  simp only [A163400, Nat.add_sub_cancel]

end A163400

/-! ## A163400.P13147210037273727833

`a(n-1)+C(A001222(A018252(n)), a(n-1))` with `a(0)=1`
-/

namespace A163400.P13147210037273727833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (A001222 (A018252 n).toNat).toNat (a (n - 1))

end

end A163400.P13147210037273727833

namespace A163400

/-- `a(n-1)+C(A001222(A018252(n)), a(n-1))` -/
def P13147210037273727833.Spec : Prop :=
  ∀ n, (P13147210037273727833.a n : ℤ) = A163400 (n + 1)

end A163400

/-! ## A163400.P6756787421573641266

`A070939(comp[A151800(n)])`
-/

namespace A163400.P6756787421573641266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P6756787421573641266

namespace A163400

/-- `A070939(comp[A151800(n)])` -/
def P6756787421573641266.Spec : Prop :=
  ∀ n, P6756787421573641266.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P7117645658608488871

`A070939(A164029(n+1))`
-/

namespace A163400.P7117645658608488871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A164029 (n + 1)).toNat

end

end A163400.P7117645658608488871

namespace A163400

/-- `A070939(A164029(n+1))` -/
def P7117645658608488871.Spec : Prop :=
  ∀ n, P7117645658608488871.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P11593854760876191717

`A070939(A166460(n+1))`
-/

namespace A163400.P11593854760876191717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A166460 (n + 1)).toNat

end

end A163400.P11593854760876191717

namespace A163400

/-- `A070939(A166460(n+1))` -/
def P11593854760876191717.Spec : Prop :=
  ∀ n, P11593854760876191717.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P3988840597099031498

`A070939(comp[Δ[A007504(n)]])`
-/

namespace A163400.P3988840597099031498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P3988840597099031498

namespace A163400

/-- `A070939(comp[Δ[A007504(n)]])` -/
def P3988840597099031498.Spec : Prop :=
  ∀ n, P3988840597099031498.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P16706454190752367495

`A070939(comp[A000040(n+1)])`
-/

namespace A163400.P16706454190752367495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P16706454190752367495

namespace A163400

/-- `A070939(comp[A000040(n+1)])` -/
def P16706454190752367495.Spec : Prop :=
  ∀ n, P16706454190752367495.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P1451454244932802862

`A070939(comp[A006530(n+2)])`
-/

namespace A163400.P1451454244932802862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P1451454244932802862

namespace A163400

/-- `A070939(comp[A006530(n+2)])` -/
def P1451454244932802862.Spec : Prop :=
  ∀ n, P1451454244932802862.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P10908975019644703020

`A070939(comp[A020639(n+2)])`
-/

namespace A163400.P10908975019644703020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P10908975019644703020

namespace A163400

/-- `A070939(comp[A020639(n+2)])` -/
def P10908975019644703020.Spec : Prop :=
  ∀ n, P10908975019644703020.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P3728402339779414920

`A070939(record[n-A055671(n)])`
-/

namespace A163400.P3728402339779414920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163400.P3728402339779414920

namespace A163400

/-- `A070939(record[n-A055671(n)])` -/
def P3728402339779414920.Spec : Prop :=
  ∀ n, P3728402339779414920.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P6469740678310085628

`A070939(comp[A040976(n+1)+2])`
-/

namespace A163400.P6469740678310085628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P6469740678310085628

namespace A163400

/-- `A070939(comp[A040976(n+1)+2])` -/
def P6469740678310085628.Spec : Prop :=
  ∀ n, P6469740678310085628.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P5196509527362135065

`A070939(comp[record[A000010(n+1)+1]])`
-/

namespace A163400.P5196509527362135065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P5196509527362135065

namespace A163400

/-- `A070939(comp[record[A000010(n+1)+1]])` -/
def P5196509527362135065.Spec : Prop :=
  ∀ n, P5196509527362135065.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P8701629138575739601

`A070939(comp[eq[1, A001222(n+1)]+1])`
-/

namespace A163400.P8701629138575739601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163400.P8701629138575739601

namespace A163400

/-- `A070939(comp[eq[1, A001222(n+1)]+1])` -/
def P8701629138575739601.Spec : Prop :=
  ∀ n, P8701629138575739601.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P10906066395386092999

`A070939(comp[eq[2, A000005(n+1)]+1])`
-/

namespace A163400.P10906066395386092999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163400.P10906066395386092999

namespace A163400

/-- `A070939(comp[eq[2, A000005(n+1)]+1])` -/
def P10906066395386092999.Spec : Prop :=
  ∀ n, P10906066395386092999.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P10938874731124764975

`A070939(comp[lt[A001222(n+2), 2]+2])`
-/

namespace A163400.P10938874731124764975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163400.P10938874731124764975

namespace A163400

/-- `A070939(comp[lt[A001222(n+2), 2]+2])` -/
def P10938874731124764975.Spec : Prop :=
  ∀ n, P10938874731124764975.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P4127428051613358333

`A070939(comp[lt[A000005(n+2), 3]+2])`
-/

namespace A163400.P4127428051613358333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163400.P4127428051613358333

namespace A163400

/-- `A070939(comp[lt[A000005(n+2), 3]+2])` -/
def P4127428051613358333.Spec : Prop :=
  ∀ n, P4127428051613358333.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P15682010931596325122

`A070939(comp[lt[n, A000010(n+2)]+2])`
-/

namespace A163400.P15682010931596325122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163400.P15682010931596325122

namespace A163400

/-- `A070939(comp[lt[n, A000010(n+2)]+2])` -/
def P15682010931596325122.Spec : Prop :=
  ∀ n, P15682010931596325122.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P10679745546237685712

`A070939(comp[record[A014963(n+2)]])`
-/

namespace A163400.P10679745546237685712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P10679745546237685712

namespace A163400

/-- `A070939(comp[record[A014963(n+2)]])` -/
def P10679745546237685712.Spec : Prop :=
  ∀ n, P10679745546237685712.a n = A163400 (n + 1)

end A163400

/-! ## A163400.P18184043890816232059

`A070939(comp[A034694(n+1)])`
-/

namespace A163400.P18184043890816232059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163400.P18184043890816232059

namespace A163400

/-- `A070939(comp[A034694(n+1)])` -/
def P18184043890816232059.Spec : Prop :=
  ∀ n, P18184043890816232059.a n = A163400 (n + 1)

end A163400

/-!
# A163402: A Minkowski-type generalization of the factorial function: F(n,k) with k = 2.

The programs for A163402, there is no canonical definition to state claims against.
-/

/-! ## A163402.P15895146243065372704

`A000265(A070939(n)*A299433(n))`
-/

namespace A163402.P15895146243065372704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A070939 n * A299433 n).toNat

end

end A163402.P15895146243065372704

/-! ## A163402.P2797885099288240869

`A171435(A000142(n)*A095258(n+1))`
-/

namespace A163402.P2797885099288240869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A000142 n * A095258 (n + 1)).toNat

end

end A163402.P2797885099288240869

/-! ## A163402.P18193918632687015628

`∏[A109004(comp[2*(n+3)]!)]`
-/

namespace A163402.P18193918632687015628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163402.P18193918632687015628

/-!
# A163404: Number of reduced words of length n in Coxeter group on 11 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163404, there is no canonical definition to state claims against.
-/

/-! ## A163404.P14502671721172756999

`A084984(A163345(n))+1`
-/

namespace A163404.P14502671721172756999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (A163345 n).toNat + 1

end

end A163404.P14502671721172756999

/-! ## A163404.P15261782958613727053

`xor(floor(11*10^(n-1)), A350839(A126752(n+1)))`
-/

namespace A163404.P15261782958613727053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊11 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A350839 (A126752 (n + 1)).toNat)

end

end A163404.P15261782958613727053

/-!
# A163405: a(n) = (n-th nonprime) + (number of bits in binary expansion of n-th nonprime).

The programs for A163405, the canonical program `A163405.P4015231014055549183` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163405 has offset 1).

The definition of A163405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163405.P4015231014055549183

`A141468(n+1)+A163400(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163405

/-- `A141468(n+1)+A163400(n+1)` -/
def P4015231014055549183.Spec : Prop :=
  ∀ n, P4015231014055549183.a n = A163405 (n + 1)

theorem P4015231014055549183.correct : P4015231014055549183.Spec := by
  intro n
  simp only [A163405, Nat.add_sub_cancel]

end A163405

/-! ## A163405.P12121706236730409058

`comp[A163406(n+1)-1]+1`
-/

namespace A163405.P12121706236730409058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163406 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A163405.P12121706236730409058

namespace A163405

/-- `comp[A163406(n+1)-1]+1` -/
def P12121706236730409058.Spec : Prop :=
  ∀ n, (P12121706236730409058.a n : ℤ) = A163405 (n + 1)

end A163405

/-! ## A163405.P12378546285552947439

`record[A070939(n)+n-A055671(n)]`
-/

namespace A163405.P12378546285552947439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + ((n : ℤ) - A055671 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163405.P12378546285552947439

namespace A163405

/-- `record[A070939(n)+n-A055671(n)]` -/
def P12378546285552947439.Spec : Prop :=
  ∀ n, P12378546285552947439.a n = A163405 (n + 1)

end A163405

/-! ## A163405.P17425477311965674275

`A163400(n+1)+comp[A000040(n+1)]`
-/

namespace A163405.P17425477311965674275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A163405.P17425477311965674275

namespace A163405

/-- `A163400(n+1)+comp[A000040(n+1)]` -/
def P17425477311965674275.Spec : Prop :=
  ∀ n, P17425477311965674275.a n = A163405 (n + 1)

end A163405

/-! ## A163405.P16204385419906101650

`A163400(n+1)+comp[A006530(n+2)]`
-/

namespace A163405.P16204385419906101650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A163405.P16204385419906101650

namespace A163405

/-- `A163400(n+1)+comp[A006530(n+2)]` -/
def P16204385419906101650.Spec : Prop :=
  ∀ n, P16204385419906101650.a n = A163405 (n + 1)

end A163405

/-! ## A163405.P66402012722522598

`A163400(n+1)+comp[A020639(n+2)]`
-/

namespace A163405.P66402012722522598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A163405.P66402012722522598

namespace A163405

/-- `A163400(n+1)+comp[A020639(n+2)]` -/
def P66402012722522598.Spec : Prop :=
  ∀ n, P66402012722522598.a n = A163405 (n + 1)

end A163405

/-! ## A163405.P6658654264122473098

`A163400(n+1)+∪[A018252(n+1), n²]`
-/

namespace A163405.P6658654264122473098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n : ℤ)

end

end A163405.P6658654264122473098

namespace A163405

/-- `A163400(n+1)+∪[A018252(n+1), n²]` -/
def P6658654264122473098.Spec : Prop :=
  ∀ n, P6658654264122473098.a n = A163405 (n + 1)

end A163405

/-! ## A163405.P2015666221847634771

`A163400(n+1)+∪[n^3, A018252(n+2)]`
-/

namespace A163405.P2015666221847634771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A163405.P2015666221847634771

namespace A163405

/-- `A163400(n+1)+∪[n^3, A018252(n+2)]` -/
def P2015666221847634771.Spec : Prop :=
  ∀ n, P2015666221847634771.a n = A163405 (n + 1)

end A163405

/-! ## A163405.P4844709372278642790

`A163400(n+1)+comp[record[A000010(n+1)+1]]`
-/

namespace A163405.P4844709372278642790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A163405.P4844709372278642790

namespace A163405

/-- `A163400(n+1)+comp[record[A000010(n+1)+1]]` -/
def P4844709372278642790.Spec : Prop :=
  ∀ n, P4844709372278642790.a n = A163405 (n + 1)

end A163405

/-! ## A163405.P4041179725563333658

`A163400(n+1)+comp[eq[2, A000005(n+1)]+1]`
-/

namespace A163405.P4041179725563333658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A163405.P4041179725563333658

namespace A163405

/-- `A163400(n+1)+comp[eq[2, A000005(n+1)]+1]` -/
def P4041179725563333658.Spec : Prop :=
  ∀ n, P4041179725563333658.a n = A163405 (n + 1)

end A163405

/-!
# A163406: Numbers n which are not in A163405.

The programs for A163406, there is no canonical definition to state claims against.
-/

/-! ## A163406.P13195282491595454662

`eq[char[A163405(n+1)], A151933(n)]`
-/

namespace A163406.P13195282491595454662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163405 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A163406.P13195282491595454662

/-! ## A163406.P7101706868962709083

`eq[char[A163405(n+1)], A151622(n)]`
-/

namespace A163406.P7101706868962709083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163405 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A163406.P7101706868962709083

/-!
# A163407: Sum of semiprime divisors of n with repetition.

The programs for A163407, the canonical program `A163407.P15515305636135691580` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163407 has offset 1).

The definition of A163407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163407.P13180860314711964149

`(∑{p}[n+1, #*val(n+1, #)]²-∑{p}[n+1, #²*val(n+1, #)])/2`
-/

namespace A163407.P13180860314711964149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) ^ 2 : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p ^ 2 * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) : ℚ) / 2

end

end A163407.P13180860314711964149

namespace A163407

/-- `(∑{p}[n+1, #*val(n+1, #)]²-∑{p}[n+1, #²*val(n+1, #)])/2` -/
def P13180860314711964149.Spec : Prop :=
  ∀ n, P13180860314711964149.a n = (A163407 (n + 1) : ℚ)

end A163407

/-! ## A163407.P11367851433408036076

`(A074373(n+1)-A067666(n+1))/2`
-/

namespace A163407.P11367851433408036076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074373 (n + 1) - A067666 (n + 1) : ℚ) / 2

end

end A163407.P11367851433408036076

namespace A163407

/-- `(A074373(n+1)-A067666(n+1))/2` -/
def P11367851433408036076.Spec : Prop :=
  ∀ n, P11367851433408036076.a n = (A163407 (n + 1) : ℚ)

end A163407

/-! ## A163407.P15805737107441995796

`(A001414(n+1)²-A067666(n+1))/2`
-/

namespace A163407.P15805737107441995796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) ^ 2 - A067666 (n + 1) : ℚ) / 2

end

end A163407.P15805737107441995796

namespace A163407

/-- `(A001414(n+1)²-A067666(n+1))/2` -/
def P15805737107441995796.Spec : Prop :=
  ∀ n, P15805737107441995796.a n = (A163407 (n + 1) : ℚ)

end A163407

/-! ## A163407.P7419564641179132658

`A000217(∑{p}[n+1, #*val(n+1, #)])-A341885(n+1)`
-/

namespace A163407.P7419564641179132658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) - A341885 (n + 1)

end

end A163407.P7419564641179132658

namespace A163407

/-- `A000217(∑{p}[n+1, #*val(n+1, #)])-A341885(n+1)` -/
def P7419564641179132658.Spec : Prop :=
  ∀ n, P7419564641179132658.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P2160137185699358279

`A000217(A001414(n+1))-A341885(n+1)`
-/

namespace A163407.P2160137185699358279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001414 (n + 1)).toNat - A341885 (n + 1)

end

end A163407.P2160137185699358279

namespace A163407

/-- `A000217(A001414(n+1))-A341885(n+1)` -/
def P2160137185699358279.Spec : Prop :=
  ∀ n, P2160137185699358279.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P15515305636135691580

`A014682(A001414(n+1)²-A067666(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163407

/-- `A014682(A001414(n+1)²-A067666(n+1))` -/
def P15515305636135691580.Spec : Prop :=
  ∀ n, P15515305636135691580.a n = A163407 (n + 1)

theorem P15515305636135691580.correct : P15515305636135691580.Spec := by
  intro n
  simp only [A163407, Nat.add_sub_cancel]

end A163407

/-! ## A163407.P150602751678128793

`A004525(A074373(n+1)-A067666(n+1))`
-/

namespace A163407.P150602751678128793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074373 (n + 1) - A067666 (n + 1)).toNat

end

end A163407.P150602751678128793

namespace A163407

/-- `A004525(A074373(n+1)-A067666(n+1))` -/
def P150602751678128793.Spec : Prop :=
  ∀ n, P150602751678128793.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P15494071293462190324

`A025480(A074373(n+1)-A067666(n+1))`
-/

namespace A163407.P15494071293462190324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A074373 (n + 1) - A067666 (n + 1)).toNat

end

end A163407.P15494071293462190324

namespace A163407

/-- `A025480(A074373(n+1)-A067666(n+1))` -/
def P15494071293462190324.Spec : Prop :=
  ∀ n, P15494071293462190324.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P14405091556491218193

`A026741(A074373(n+1)-A067666(n+1))`
-/

namespace A163407.P14405091556491218193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A074373 (n + 1) - A067666 (n + 1)).toNat

end

end A163407.P14405091556491218193

namespace A163407

/-- `A026741(A074373(n+1)-A067666(n+1))` -/
def P14405091556491218193.Spec : Prop :=
  ∀ n, P14405091556491218193.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P13743752407311166193

`A029578(A074373(n+1)-A067666(n+1))`
-/

namespace A163407.P13743752407311166193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A074373 (n + 1) - A067666 (n + 1)).toNat

end

end A163407.P13743752407311166193

namespace A163407

/-- `A029578(A074373(n+1)-A067666(n+1))` -/
def P13743752407311166193.Spec : Prop :=
  ∀ n, P13743752407311166193.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P18365547482196864781

`A078898(A074373(n+1)-A067666(n+1))`
-/

namespace A163407.P18365547482196864781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A074373 (n + 1) - A067666 (n + 1)).toNat

end

end A163407.P18365547482196864781

namespace A163407

/-- `A078898(A074373(n+1)-A067666(n+1))` -/
def P18365547482196864781.Spec : Prop :=
  ∀ n, P18365547482196864781.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P9815599760738630258

`A004525(A001414(n+1)²-A067666(n+1))`
-/

namespace A163407.P9815599760738630258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001414 (n + 1) ^ 2 - A067666 (n + 1)).toNat

end

end A163407.P9815599760738630258

namespace A163407

/-- `A004525(A001414(n+1)²-A067666(n+1))` -/
def P9815599760738630258.Spec : Prop :=
  ∀ n, P9815599760738630258.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P17008322831300235625

`A025480(A001414(n+1)²-A067666(n+1))`
-/

namespace A163407.P17008322831300235625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A001414 (n + 1) ^ 2 - A067666 (n + 1)).toNat

end

end A163407.P17008322831300235625

namespace A163407

/-- `A025480(A001414(n+1)²-A067666(n+1))` -/
def P17008322831300235625.Spec : Prop :=
  ∀ n, P17008322831300235625.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P7737380004192858004

`A029578(A001414(n+1)²-A067666(n+1))`
-/

namespace A163407.P7737380004192858004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A001414 (n + 1) ^ 2 - A067666 (n + 1)).toNat

end

end A163407.P7737380004192858004

namespace A163407

/-- `A029578(A001414(n+1)²-A067666(n+1))` -/
def P7737380004192858004.Spec : Prop :=
  ∀ n, P7737380004192858004.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P1902326522593789204

`A110654(A001414(n+1)²-A067666(n+1))`
-/

namespace A163407.P1902326522593789204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001414 (n + 1) ^ 2 - A067666 (n + 1)).toNat

end

end A163407.P1902326522593789204

namespace A163407

/-- `A110654(A001414(n+1)²-A067666(n+1))` -/
def P1902326522593789204.Spec : Prop :=
  ∀ n, P1902326522593789204.a n = A163407 (n + 1)

end A163407

/-! ## A163407.P8875694549310513088

`A004526(A074373(n+1)-A067666(n+1))`
-/

namespace A163407.P8875694549310513088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074373 (n + 1) - A067666 (n + 1)).toNat

end

end A163407.P8875694549310513088

namespace A163407

/-- `A004526(A074373(n+1)-A067666(n+1))` -/
def P8875694549310513088.Spec : Prop :=
  ∀ n, P8875694549310513088.a n = A163407 (n + 1)

end A163407

/-!
# A163408: Positive integers n such that A008475(n) is composite.

The programs for A163408, the canonical program `A163408.P15967600564679834179` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163408 has offset 1).

The definition of A163408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163408.P15967600564679834179

`comp[A114518(n+1)-2]+2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163408

/-- `comp[A114518(n+1)-2]+2` -/
def P15967600564679834179.Spec : Prop :=
  ∀ n, (P15967600564679834179.a n : ℤ) = A163408 (n + 1)

theorem P15967600564679834179.correct : P15967600564679834179.Spec := by
  intro n
  simp only [A163408, Nat.add_sub_cancel]

end A163408

/-! ## A163408.P11760690723075044538

`lt[2, A000005(A008475(n+2))]+2`
-/

namespace A163408.P11760690723075044538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008475 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A163408.P11760690723075044538

namespace A163408

/-- `lt[2, A000005(A008475(n+2))]+2` -/
def P11760690723075044538.Spec : Prop :=
  ∀ n, (P11760690723075044538.a n : ℤ) = A163408 (n + 1)

end A163408

/-! ## A163408.P1132876617509561159

`lt[1, A032741(A008475(n+1))]+1`
-/

namespace A163408.P1132876617509561159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008475 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A163408.P1132876617509561159

namespace A163408

/-- `lt[1, A032741(A008475(n+1))]+1` -/
def P1132876617509561159.Spec : Prop :=
  ∀ n, (P1132876617509561159.a n : ℤ) = A163408 (n + 1)

end A163408

/-! ## A163408.P11419471203243812877

`eq[char[A114518(n+1)], A130779(n)]`
-/

namespace A163408.P11419471203243812877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A163408.P11419471203243812877

namespace A163408

/-- `eq[char[A114518(n+1)], A130779(n)]` -/
def P11419471203243812877.Spec : Prop :=
  ∀ n, (P11419471203243812877.a n : ℤ) = A163408 (n + 1)

end A163408

/-! ## A163408.P12751983592190208085

`eq[char[A114518(n+1)], A169585(n)]`
-/

namespace A163408.P12751983592190208085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A163408.P12751983592190208085

namespace A163408

/-- `eq[char[A114518(n+1)], A169585(n)]` -/
def P12751983592190208085.Spec : Prop :=
  ∀ n, (P12751983592190208085.a n : ℤ) = A163408 (n + 1)

end A163408

/-! ## A163408.P13875329962444788708

`eq[char[A114518(n+1)], A019590(n+1)]`
-/

namespace A163408.P13875329962444788708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A163408.P13875329962444788708

namespace A163408

/-- `eq[char[A114518(n+1)], A019590(n+1)]` -/
def P13875329962444788708.Spec : Prop :=
  ∀ n, (P13875329962444788708.a n : ℤ) = A163408 (n + 1)

end A163408

/-! ## A163408.P8029591500252222537

`eq[char[A114518(n+1)], A000007((2*n)%(n+1))]`
-/

namespace A163408.P8029591500252222537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A163408.P8029591500252222537

namespace A163408

/-- `eq[char[A114518(n+1)], A000007((2*n)%(n+1))]` -/
def P8029591500252222537.Spec : Prop :=
  ∀ n, (P8029591500252222537.a n : ℤ) = A163408 (n + 1)

end A163408

/-!
# A163409: Subsequence of composite terms of A008475.

The programs for A163409, the canonical program `A163409.P2175835081042334788` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163409 has offset 1).

The definition of A163409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163408, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163409.P2175835081042334788

`A008475(A163408(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163409

/-- `A008475(A163408(n+1))` -/
def P2175835081042334788.Spec : Prop :=
  ∀ n, P2175835081042334788.a n = A163409 (n + 1)

theorem P2175835081042334788.correct : P2175835081042334788.Spec := by
  intro n
  simp only [A163409, Nat.add_sub_cancel]

end A163409

/-! ## A163409.P12145894152832234217

`filter[A222416(n+1), A066247(#)]`
-/

namespace A163409.P12145894152832234217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A163409.P12145894152832234217

namespace A163409

/-- `filter[A222416(n+1), A066247(#)]` -/
def P12145894152832234217.Spec : Prop :=
  ∀ n, P12145894152832234217.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P12256044369332823895

`filter[A008475(n+2), A005171(#)]`
-/

namespace A163409.P12256044369332823895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A163409.P12256044369332823895

namespace A163409

/-- `filter[A008475(n+2), A005171(#)]` -/
def P12256044369332823895.Spec : Prop :=
  ∀ n, P12256044369332823895.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P14651797546641813694

`filter[A008475(n+2), A066247(#)]`
-/

namespace A163409.P14651797546641813694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A163409.P14651797546641813694

namespace A163409

/-- `filter[A008475(n+2), A066247(#)]` -/
def P14651797546641813694.Spec : Prop :=
  ∀ n, P14651797546641813694.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P11228360598958776306

`filter[A222416(n+2), A005171(#)]`
-/

namespace A163409.P11228360598958776306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A163409.P11228360598958776306

namespace A163409

/-- `filter[A222416(n+2), A005171(#)]` -/
def P11228360598958776306.Spec : Prop :=
  ∀ n, P11228360598958776306.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P4906780972404357813

`∑{d}[A163408(n+1), A092509(#)]`
-/

namespace A163409.P4906780972404357813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092509 d

end

end A163409.P4906780972404357813

namespace A163409

/-- `∑{d}[A163408(n+1), A092509(#)]` -/
def P4906780972404357813.Spec : Prop :=
  ∀ n, P4906780972404357813.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P654900633377876357

`A008475(comp[A114518(n+1)-2]+2)`
-/

namespace A163409.P654900633377876357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A163409.P654900633377876357

namespace A163409

/-- `A008475(comp[A114518(n+1)-2]+2)` -/
def P654900633377876357.Spec : Prop :=
  ∀ n, P654900633377876357.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P11807223810923171189

`∑{d}[comp[A114518(n+1)-2]+2, A092509(#)]`
-/

namespace A163409.P11807223810923171189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092509 d

end

end A163409.P11807223810923171189

namespace A163409

/-- `∑{d}[comp[A114518(n+1)-2]+2, A092509(#)]` -/
def P11807223810923171189.Spec : Prop :=
  ∀ n, P11807223810923171189.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P7834581643265185631

`A222416(A163408(n+1)%A004769(n))`
-/

namespace A163409.P7834581643265185631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (Int.tmod (A163408 (n + 1)) (A004769 n)).toNat

end

end A163409.P7834581643265185631

namespace A163409

/-- `A222416(A163408(n+1)%A004769(n))` -/
def P7834581643265185631.Spec : Prop :=
  ∀ n, P7834581643265185631.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P9166543233334855490

`A026239(p?[A026239(A222416(n+1))])`
-/

namespace A163409.P9166543233334855490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A222416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163409.P9166543233334855490

namespace A163409

/-- `A026239(p?[A026239(A222416(n+1))])` -/
def P9166543233334855490.Spec : Prop :=
  ∀ n, P9166543233334855490.a n = A163409 (n + 1)

end A163409

/-! ## A163409.P17677731289337243430

`A222416(A163408(n+1))+A002262(∑[n])`
-/

namespace A163409.P17677731289337243430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A163408 (n + 1)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163409.P17677731289337243430

namespace A163409

/-- `A222416(A163408(n+1))+A002262(∑[n])` -/
def P17677731289337243430.Spec : Prop :=
  ∀ n, P17677731289337243430.a n = A163409 (n + 1)

end A163409

/-!
# A163410: A positive integer is included if it is a palindrome when written in binary, and it is not divisible by any primes that are not binary palindromes.

The programs for A163410, there is no canonical definition to state claims against.
-/

/-! ## A163410.P4141981576918831331

`∩[A006995(n+1), A342572(n+1)]`
-/

namespace A163410.P4141981576918831331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163410.P4141981576918831331

/-! ## A163410.P10708703148681442076

`∩[A044918(n+1), A342572(n+1)]`
-/

namespace A163410.P10708703148681442076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163410.P10708703148681442076

/-! ## A163410.P13556198064617583491

`∩[A180204(n+1), A342572(n+1)]`
-/

namespace A163410.P13556198064617583491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163410.P13556198064617583491

/-! ## A163410.P12400059238140293622

`∩[A334918(n+1), A342572(n+1)]`
-/

namespace A163410.P12400059238140293622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163410.P12400059238140293622

/-! ## A163410.P1166566374062974983

`∩[A057890(n+1), A342572(n+1)]`
-/

namespace A163410.P1166566374062974983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163410.P1166566374062974983

/-! ## A163410.P1478973933868704290

`∩[A161604(n+1), A342572(n+1)]`
-/

namespace A163410.P1478973933868704290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163410.P1478973933868704290

/-! ## A163410.P17763402326860075811

`record[A145799(A342572(n+1))]`
-/

namespace A163410.P17763402326860075811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (A342572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163410.P17763402326860075811

/-!
# A163411: A positive integer is included if it is a palindrome when written in binary, and it is divisible by at least one prime that is not a binary palindrome.

The programs for A163411, there is no canonical definition to state claims against.
-/

/-! ## A163411.P11342460159292792903

`A175298(16*A187829(2*(n+1)))`
-/

namespace A163411.P11342460159292792903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (16 * A187829 (2 * (n + 1))).toNat

end

end A163411.P11342460159292792903

/-! ## A163411.P6090430542464343961

`A206914(16*A187829(2*(n+1)))`
-/

namespace A163411.P6090430542464343961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (16 * A187829 (2 * (n + 1))).toNat

end

end A163411.P6090430542464343961

/-!
# A163412: a(n) = 12*a(n-1) - 34*a(n-2) for n>1, a(0)=1, a(1)=10.

The programs for A163412, the canonical program `A163412.P109673045311992195` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163412 has offset 0).

The definition of A163412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-34*a(n-2)` (program `A163412.P109673045311992195`, by `A163412.P109673045311992195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163412.P16132691004244455422

`ogf((1-2x)/(1-12x+34x^2))`
-/

namespace A163412.P16132691004244455422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -12, 34] n

end

end A163412.P16132691004244455422

namespace A163412

/-- `ogf((1-2x)/(1-12x+34x^2))` -/
def P16132691004244455422.Spec : Prop :=
  ∀ n, P16132691004244455422.a n = A163412 n

end A163412

/-! ## A163412.P109673045311992195

`12*a(n-1)-34*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163412

/-- `12*a(n-1)-34*a(n-2)` -/
def P109673045311992195.Spec : Prop :=
  ∀ n, P109673045311992195.a n = A163412 n

theorem P109673045311992195.correct : P109673045311992195.Spec := by
  intro n
  simp only [A163412]

end A163412

/-! ## A163412.P4373693153681338883

`((1+2*sqrt(2))*(6+sqrt(2))^n+(1-2*sqrt(2))*(6-sqrt(2))^n)/2`
-/

namespace A163412.P4373693153681338883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) * (6 + Real.sqrt (2 : ℝ)) ^ n + (1 - 2 * Real.sqrt (2 : ℝ)) * (6 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163412.P4373693153681338883

namespace A163412

/-- `((1+2*sqrt(2))*(6+sqrt(2))^n+(1-2*sqrt(2))*(6-sqrt(2))^n)/2` -/
def P4373693153681338883.Spec : Prop :=
  ∀ n, P4373693153681338883.a n = (A163412 n : ℝ)

theorem P4373693153681338883.correct : P4373693153681338883.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163412, Nat.add_sub_cancel, A163412.P4373693153681338883.a, A163412.P109673045311992195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163412, Nat.add_sub_cancel, A163412.P4373693153681338883.a, A163412.P109673045311992195.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163412

/-! ## A163412.P13388916752057902397

`Δ[A081183(n)]-A081183(n)`
-/

namespace A163412.P13388916752057902397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081183 n

end

end A163412.P13388916752057902397

namespace A163412

/-- `Δ[A081183(n)]-A081183(n)` -/
def P13388916752057902397.Spec : Prop :=
  ∀ n, P13388916752057902397.a n = A163412 n

end A163412

/-! ## A163412.P1949755280066989794

`A163444(n)+2*A081183(n)`
-/

namespace A163412.P1949755280066989794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163444 n + 2 * A081183 n

end

end A163412.P1949755280066989794

namespace A163412

/-- `A163444(n)+2*A081183(n)` -/
def P1949755280066989794.Spec : Prop :=
  ∀ n, P1949755280066989794.a n = A163412 n

end A163412

/-! ## A163412.P6313223097812967020

`A163458(n)+3*A081183(n)`
-/

namespace A163412.P6313223097812967020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163458 n + 3 * A081183 n

end

end A163412.P6313223097812967020

namespace A163412

/-- `A163458(n)+3*A081183(n)` -/
def P6313223097812967020.Spec : Prop :=
  ∀ n, P6313223097812967020.a n = A163412 n

end A163412

/-! ## A163412.P11387278097005134037

`A081183(n+1)-2*A081183(n)`
-/

namespace A163412.P11387278097005134037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081183 (n + 1) - 2 * A081183 n

end

end A163412.P11387278097005134037

namespace A163412

/-- `A081183(n+1)-2*A081183(n)` -/
def P11387278097005134037.Spec : Prop :=
  ∀ n, P11387278097005134037.a n = A163412 n

end A163412

/-! ## A163412.P15810104970755857299

`Δ[A164110(n)]%A164110(n)`
-/

namespace A163412.P15810104970755857299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164110 n)

end

end A163412.P15810104970755857299

namespace A163412

/-- `Δ[A164110(n)]%A164110(n)` -/
def P15810104970755857299.Spec : Prop :=
  ∀ n, P15810104970755857299.a n = A163412 n

end A163412

/-! ## A163412.P17786689983141604301

`A164110(n+1)%A164110(n)`
-/

namespace A163412.P17786689983141604301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164110 (n + 1)) (A164110 n)

end

end A163412.P17786689983141604301

namespace A163412

/-- `A164110(n+1)%A164110(n)` -/
def P17786689983141604301.Spec : Prop :=
  ∀ n, P17786689983141604301.a n = A163412 n

end A163412

/-!
# A163413: a(n) = 14*a(n-1) - 47*a(n-2) for n > 1; a(0) = 1, a(1) = 11.

The programs for A163413, the canonical program `A163413.P230885471346712921` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163413 has offset 0).

The definition of A163413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-47*a(n-2)` (program `A163413.P230885471346712921`, by `A163413.P230885471346712921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163413.P4090751842237114511

`ogf((1-3x)/(1-14x+47x^2))`
-/

namespace A163413.P4090751842237114511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -14, 47] n

end

end A163413.P4090751842237114511

namespace A163413

/-- `ogf((1-3x)/(1-14x+47x^2))` -/
def P4090751842237114511.Spec : Prop :=
  ∀ n, P4090751842237114511.a n = A163413 n

end A163413

/-! ## A163413.P230885471346712921

`14*a(n-1)-47*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163413

/-- `14*a(n-1)-47*a(n-2)` -/
def P230885471346712921.Spec : Prop :=
  ∀ n, P230885471346712921.a n = A163413 n

theorem P230885471346712921.correct : P230885471346712921.Spec := by
  intro n
  simp only [A163413]

end A163413

/-! ## A163413.P16387928463120989914

`((1+2*sqrt(2))*(sqrt(2)+7)^n+(1-2*sqrt(2))*(7-sqrt(2))^n)/2`
-/

namespace A163413.P16387928463120989914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 7) ^ n + (1 - 2 * Real.sqrt (2 : ℝ)) * (7 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163413.P16387928463120989914

namespace A163413

/-- `((1+2*sqrt(2))*(sqrt(2)+7)^n+(1-2*sqrt(2))*(7-sqrt(2))^n)/2` -/
def P16387928463120989914.Spec : Prop :=
  ∀ n, P16387928463120989914.a n = (A163413 n : ℝ)

theorem P16387928463120989914.correct : P16387928463120989914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163413, Nat.add_sub_cancel, A163413.P16387928463120989914.a, A163413.P230885471346712921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163413, Nat.add_sub_cancel, A163413.P16387928463120989914.a, A163413.P230885471346712921.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163413

/-! ## A163413.P8433224361202112515

`A163445(n)+2*A081184(n)`
-/

namespace A163413.P8433224361202112515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163445 n + 2 * A081184 n

end

end A163413.P8433224361202112515

namespace A163413

/-- `A163445(n)+2*A081184(n)` -/
def P8433224361202112515.Spec : Prop :=
  ∀ n, P8433224361202112515.a n = A163413 n

end A163413

/-! ## A163413.P12054091622874167938

`A163459(n)+3*A081184(n)`
-/

namespace A163413.P12054091622874167938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163459 n + 3 * A081184 n

end

end A163413.P12054091622874167938

namespace A163413

/-- `A163459(n)+3*A081184(n)` -/
def P12054091622874167938.Spec : Prop :=
  ∀ n, P12054091622874167938.a n = A163413 n

end A163413

/-! ## A163413.P6944648861695270724

`2*A163445(n)-A147958(n)`
-/

namespace A163413.P6944648861695270724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163445 n - A147958 n

end

end A163413.P6944648861695270724

namespace A163413

/-- `2*A163445(n)-A147958(n)` -/
def P6944648861695270724.Spec : Prop :=
  ∀ n, P6944648861695270724.a n = A163413 n

end A163413

/-! ## A163413.P6989098747063032192

`A147958(n)+4*A081184(n)`
-/

namespace A163413.P6989098747063032192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147958 n + 4 * A081184 n

end

end A163413.P6989098747063032192

namespace A163413

/-- `A147958(n)+4*A081184(n)` -/
def P6989098747063032192.Spec : Prop :=
  ∀ n, P6989098747063032192.a n = A163413 n

end A163413

/-!
# A163414: a(n) = 16*a(n-1) - 62*a(n-2) for n>1, a(0)=1, a(1)=12.

The programs for A163414, the canonical program `A163414.P3521094473692375917` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163414 has offset 0).

The definition of A163414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-62*a(n-2)` (program `A163414.P3521094473692375917`, by `A163414.P3521094473692375917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163414.P18250424505236940552

`ogf((1-4x)/(1-16x+62x^2))`
-/

namespace A163414.P18250424505236940552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -16, 62] n

end

end A163414.P18250424505236940552

namespace A163414

/-- `ogf((1-4x)/(1-16x+62x^2))` -/
def P18250424505236940552.Spec : Prop :=
  ∀ n, P18250424505236940552.a n = A163414 n

end A163414

/-! ## A163414.P3521094473692375917

`16*a(n-1)-62*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163414

/-- `16*a(n-1)-62*a(n-2)` -/
def P3521094473692375917.Spec : Prop :=
  ∀ n, P3521094473692375917.a n = A163414 n

theorem P3521094473692375917.correct : P3521094473692375917.Spec := by
  intro n
  simp only [A163414]

end A163414

/-! ## A163414.P14422352792609353718

`((1+2*sqrt(2))*(8+sqrt(2))^n+(1-2*sqrt(2))*(8-sqrt(2))^n)/2`
-/

namespace A163414.P14422352792609353718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) * (8 + Real.sqrt (2 : ℝ)) ^ n + (1 - 2 * Real.sqrt (2 : ℝ)) * (8 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163414.P14422352792609353718

namespace A163414

/-- `((1+2*sqrt(2))*(8+sqrt(2))^n+(1-2*sqrt(2))*(8-sqrt(2))^n)/2` -/
def P14422352792609353718.Spec : Prop :=
  ∀ n, P14422352792609353718.a n = (A163414 n : ℝ)

theorem P14422352792609353718.correct : P14422352792609353718.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163414, Nat.add_sub_cancel, A163414.P14422352792609353718.a, A163414.P3521094473692375917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163414, Nat.add_sub_cancel, A163414.P14422352792609353718.a, A163414.P3521094473692375917.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163414

/-! ## A163414.P11680793225898536335

`A163446(n)+2*A081185(n)`
-/

namespace A163414.P11680793225898536335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163446 n + 2 * A081185 n

end

end A163414.P11680793225898536335

namespace A163414

/-- `A163446(n)+2*A081185(n)` -/
def P11680793225898536335.Spec : Prop :=
  ∀ n, P11680793225898536335.a n = A163414 n

end A163414

/-! ## A163414.P5403452111130750601

`2*A163446(n)-A147959(n)`
-/

namespace A163414.P5403452111130750601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163446 n - A147959 n

end

end A163414.P5403452111130750601

namespace A163414

/-- `2*A163446(n)-A147959(n)` -/
def P5403452111130750601.Spec : Prop :=
  ∀ n, P5403452111130750601.a n = A163414 n

end A163414

/-! ## A163414.P1601915849550452260

`A147959(n)+4*A081185(n)`
-/

namespace A163414.P1601915849550452260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147959 n + 4 * A081185 n

end

end A163414.P1601915849550452260

namespace A163414

/-- `A147959(n)+4*A081185(n)` -/
def P1601915849550452260.Spec : Prop :=
  ∀ n, P1601915849550452260.a n = A163414 n

end A163414

/-! ## A163414.P8143730626463612880

`A081185(n+1)-4*A081185(n)`
-/

namespace A163414.P8143730626463612880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081185 (n + 1) - 4 * A081185 n

end

end A163414.P8143730626463612880

namespace A163414

/-- `A081185(n+1)-4*A081185(n)` -/
def P8143730626463612880.Spec : Prop :=
  ∀ n, P8143730626463612880.a n = A163414 n

end A163414

/-!
# A163415: a(n) = 18*a(n-1) - 79*a(n-2) for n>1, a(0)=1, a(1)=13.

The programs for A163415, the canonical program `A163415.P6077747281205174817` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163415 has offset 0).

The definition of A163415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-79*a(n-2)` (program `A163415.P6077747281205174817`, by `A163415.P6077747281205174817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163415.P3239013298819291083

`ogf((1-5x)/(1-18x+79x^2))`
-/

namespace A163415.P3239013298819291083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -18, 79] n

end

end A163415.P3239013298819291083

namespace A163415

/-- `ogf((1-5x)/(1-18x+79x^2))` -/
def P3239013298819291083.Spec : Prop :=
  ∀ n, P3239013298819291083.a n = A163415 n

end A163415

/-! ## A163415.P6077747281205174817

`18*a(n-1)-79*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163415

/-- `18*a(n-1)-79*a(n-2)` -/
def P6077747281205174817.Spec : Prop :=
  ∀ n, P6077747281205174817.a n = A163415 n

theorem P6077747281205174817.correct : P6077747281205174817.Spec := by
  intro n
  simp only [A163415]

end A163415

/-! ## A163415.P13554562981844466143

`((1+2*sqrt(2))*(sqrt(2)+9)^n+(1-2*sqrt(2))*(9-sqrt(2))^n)/2`
-/

namespace A163415.P13554562981844466143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 9) ^ n + (1 - 2 * Real.sqrt (2 : ℝ)) * (9 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163415.P13554562981844466143

namespace A163415

/-- `((1+2*sqrt(2))*(sqrt(2)+9)^n+(1-2*sqrt(2))*(9-sqrt(2))^n)/2` -/
def P13554562981844466143.Spec : Prop :=
  ∀ n, P13554562981844466143.a n = (A163415 n : ℝ)

theorem P13554562981844466143.correct : P13554562981844466143.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163415, Nat.add_sub_cancel, A163415.P13554562981844466143.a, A163415.P6077747281205174817.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163415, Nat.add_sub_cancel, A163415.P13554562981844466143.a, A163415.P6077747281205174817.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163415

/-! ## A163415.P236550020451570032

`2*A163447(n)-A147960(n)`
-/

namespace A163415.P236550020451570032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163447 n - A147960 n

end

end A163415.P236550020451570032

namespace A163415

/-- `2*A163447(n)-A147960(n)` -/
def P236550020451570032.Spec : Prop :=
  ∀ n, P236550020451570032.a n = A163415 n

end A163415

/-! ## A163415.P162730066830435496

`A147960(n)/2+A164600(n)/2`
-/

namespace A163415.P162730066830435496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147960 n : ℚ) / 2 + (A164600 n : ℚ) / 2

end

end A163415.P162730066830435496

namespace A163415

/-- `A147960(n)/2+A164600(n)/2` -/
def P162730066830435496.Spec : Prop :=
  ∀ n, P162730066830435496.a n = (A163415 n : ℚ)

end A163415

/-!
# A163416: a(n) = 20*a(n-1) - 98*a(n-2) for n>1, a(0)=1, a(1)=14.

The programs for A163416, the canonical program `A163416.P12417310814050506200` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163416 has offset 0).

The definition of A163416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-98*a(n-2)` (program `A163416.P12417310814050506200`, by `A163416.P12417310814050506200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163416.P7024580958290251232

`ogf((1-6x)/(1-20x+98x^2))`
-/

namespace A163416.P7024580958290251232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -20, 98] n

end

end A163416.P7024580958290251232

namespace A163416

/-- `ogf((1-6x)/(1-20x+98x^2))` -/
def P7024580958290251232.Spec : Prop :=
  ∀ n, P7024580958290251232.a n = A163416 n

end A163416

/-! ## A163416.P12417310814050506200

`20*a(n-1)-98*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163416

/-- `20*a(n-1)-98*a(n-2)` -/
def P12417310814050506200.Spec : Prop :=
  ∀ n, P12417310814050506200.a n = A163416 n

theorem P12417310814050506200.correct : P12417310814050506200.Spec := by
  intro n
  simp only [A163416]

end A163416

/-! ## A163416.P1761052343455741664

`((1+2*sqrt(2))*(sqrt(2)+10)^n+(1-2*sqrt(2))*(10-sqrt(2))^n)/2`
-/

namespace A163416.P1761052343455741664
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 10) ^ n + (1 - 2 * Real.sqrt (2 : ℝ)) * (10 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163416.P1761052343455741664

namespace A163416

/-- `((1+2*sqrt(2))*(sqrt(2)+10)^n+(1-2*sqrt(2))*(10-sqrt(2))^n)/2` -/
def P1761052343455741664.Spec : Prop :=
  ∀ n, P1761052343455741664.a n = (A163416 n : ℝ)

theorem P1761052343455741664.correct : P1761052343455741664.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163416, Nat.add_sub_cancel, A163416.P1761052343455741664.a, A163416.P12417310814050506200.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163416, Nat.add_sub_cancel, A163416.P1761052343455741664.a, A163416.P12417310814050506200.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163416

/-! ## A163416.P5640086562480274476

`2*A163448(n)-A162666(n)`
-/

namespace A163416.P5640086562480274476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163448 n - A162666 n

end

end A163416.P5640086562480274476

namespace A163416

/-- `2*A163448(n)-A162666(n)` -/
def P5640086562480274476.Spec : Prop :=
  ∀ n, P5640086562480274476.a n = A163416 n

end A163416

/-!
# A163417: a(n) = 2^(floor((n-1)/2)) - n*(n-1)/2.

The programs for A163417, the canonical program `A163417.P15288147751191372775` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163417 has offset 1).

The definition of A163417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163417.P15288147751191372775

`2^floor(n/2)-(n+1)*n/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163417

/-- `2^floor(n/2)-(n+1)*n/2` -/
def P15288147751191372775.Spec : Prop :=
  ∀ n, P15288147751191372775.a n = (A163417 (n + 1) : ℚ)

end A163417

/-! ## A163417.P5927079002220064094

`ogf((1-3x+4x^3-x^4)/(1-3x+x^2+5x^3-6x^4+2x^5))`
-/

namespace A163417.P5927079002220064094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 0, 4, -1] [1, -3, 1, 5, -6, 2] n

end

end A163417.P5927079002220064094

namespace A163417

/-- `ogf((1-3x+4x^3-x^4)/(1-3x+x^2+5x^3-6x^4+2x^5))` -/
def P5927079002220064094.Spec : Prop :=
  ∀ n, P5927079002220064094.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P11208731835208945964

`floor(A016116(n)-(n²+n)/2)`
-/

namespace A163417.P11208731835208945964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016116 n : ℚ) - (n ^ 2 + n : ℚ) / 2⌋

end

end A163417.P11208731835208945964

namespace A163417

/-- `floor(A016116(n)-(n²+n)/2)` -/
def P11208731835208945964.Spec : Prop :=
  ∀ n, P11208731835208945964.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P13073271525749693579

`round(∏[((n-1)%2+1)!]-sqrt(A000537(n)))`
-/

namespace A163417.P13073271525749693579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n : ℤ) - 1) 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.sqrt (A000537 n : ℝ))

end

end A163417.P13073271525749693579

namespace A163417

/-- `round(∏[((n-1)%2+1)!]-sqrt(A000537(n)))` -/
def P13073271525749693579.Spec : Prop :=
  ∀ n, P13073271525749693579.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P2852775468648798764

`(A016116(n)-A000217(n))*A087960(n)²`
-/

namespace A163417.P2852775468648798764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016116 n - A000217 n) * A087960 n ^ 2

end

end A163417.P2852775468648798764

namespace A163417

/-- `(A016116(n)-A000217(n))*A087960(n)²` -/
def P2852775468648798764.Spec : Prop :=
  ∀ n, P2852775468648798764.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P8608275516835528075

`(A060546(n+1)-(n²+n))/2`
-/

namespace A163417.P8608275516835528075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (n + 1) - (n ^ 2 + n : ℤ) : ℚ) / 2

end

end A163417.P8608275516835528075

namespace A163417

/-- `(A060546(n+1)-(n²+n))/2` -/
def P8608275516835528075.Spec : Prop :=
  ∀ n, P8608275516835528075.a n = (A163417 (n + 1) : ℚ)

end A163417

/-! ## A163417.P5379982543204901847

`ceil((∑[A077957(n)]-(n²+n))/2)`
-/

namespace A163417.P5379982543204901847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 + n : ℤ) : ℤ) : ℚ) / 2⌉

end

end A163417.P5379982543204901847

namespace A163417

/-- `ceil((∑[A077957(n)]-(n²+n))/2)` -/
def P5379982543204901847.Spec : Prop :=
  ∀ n, P5379982543204901847.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P13708722156770459351

`Δ[A209722(n+1)-C(n+1, 3)]`
-/

namespace A163417.P13708722156770459351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) - (Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163417.P13708722156770459351

namespace A163417

/-- `Δ[A209722(n+1)-C(n+1, 3)]` -/
def P13708722156770459351.Spec : Prop :=
  ∀ n, P13708722156770459351.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P10926717310363946220

`-(A000217(n)+A052955(n)-A052955(n+1))`
-/

namespace A163417.P10926717310363946220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000217 n + (A052955 n - A052955 (n + 1)))

end

end A163417.P10926717310363946220

namespace A163417

/-- `-(A000217(n)+A052955(n)-A052955(n+1))` -/
def P10926717310363946220.Spec : Prop :=
  ∀ n, P10926717310363946220.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P3034677846435636764

`floor(2^val(2^n, 4)-(n²+n)/2)`
-/

namespace A163417.P3034677846435636764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ SequenceMachineLib.valuation (2 ^ n) 4 : ℚ) - (n ^ 2 + n : ℚ) / 2⌋

end

end A163417.P3034677846435636764

namespace A163417

/-- `floor(2^val(2^n, 4)-(n²+n)/2)` -/
def P3034677846435636764.Spec : Prop :=
  ∀ n, P3034677846435636764.a n = A163417 (n + 1)

end A163417

/-! ## A163417.P512849170060835330

`(A016116(n)-∑[n])%A201123(n+1)`
-/

namespace A163417.P512849170060835330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A201123 (n + 1))

end

end A163417.P512849170060835330

namespace A163417

/-- `(A016116(n)-∑[n])%A201123(n+1)` -/
def P512849170060835330.Spec : Prop :=
  ∀ n, P512849170060835330.a n = A163417 (n + 1)

end A163417

/-!
# A163418: Primes of the form ((p-1)/2)^2+((p+1)/2), where p is prime.

The programs for A163418, there is no canonical definition to state claims against.
-/

/-! ## A163418.P6243448892283627683

`A180082(n+1)/A118939(n+1)`
-/

namespace A163418.P6243448892283627683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180082 (n + 1) : ℚ) / (A118939 (n + 1) : ℚ)

end

end A163418.P6243448892283627683

/-! ## A163418.P5366185280776807197

`record[A081256(A006254(n+1))]`
-/

namespace A163418.P5366185280776807197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163418.P5366185280776807197

/-! ## A163418.P16289609250449026466

`record[A081256(A130291(n+1))]`
-/

namespace A163418.P16289609250449026466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A130291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163418.P16289609250449026466

/-! ## A163418.P265321663201119201

`record[A081256(A067076(n+1)+2)]`
-/

namespace A163418.P265321663201119201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A067076 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163418.P265321663201119201

/-! ## A163418.P10327993981005009807

`record[A089124(p?[2*n+1])]`
-/

namespace A163418.P10327993981005009807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089124 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163418.P10327993981005009807

/-! ## A163418.P8934995817570723352

`A004652(A118939(n+1))`
-/

namespace A163418.P8934995817570723352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A118939 (n + 1)).toNat

end

end A163418.P8934995817570723352

/-! ## A163418.P9567191943152926297

`A004652(p?[A088503(n+1)])`
-/

namespace A163418.P9567191943152926297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163418.P9567191943152926297

/-! ## A163418.P2471377325301539269

`A002620(p?[A088503(n+1)])+1`
-/

namespace A163418.P2471377325301539269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A163418.P2471377325301539269

/-! ## A163418.P7346466801858924713

`A214297(p?[A088503(n+1)])+1`
-/

namespace A163418.P7346466801858924713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A163418.P7346466801858924713

/-! ## A163418.P4070013073988494991

`record[A081256(A008619(A000040(n+1)))]`
-/

namespace A163418.P4070013073988494991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A008619 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163418.P4070013073988494991

/-! ## A163418.P12182841366715295547

`record[A081256(A008619(A065091(n+1)))]`
-/

namespace A163418.P12182841366715295547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A008619 (A065091 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163418.P12182841366715295547

/-!
# A163419: Primes of the form ((p+1)/2)^2+((p-1)/2), where p is prime.

The programs for A163419, there is no canonical definition to state claims against.
-/

/-! ## A163419.P12884895227811252775

`record[A209188(A006254(n+1))]`
-/

namespace A163419.P12884895227811252775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163419.P12884895227811252775

/-! ## A163419.P15683302563499729436

`record[A209188(A130291(n+1))]`
-/

namespace A163419.P15683302563499729436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A130291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163419.P15683302563499729436

/-! ## A163419.P17393814876171665371

`record[A209188(A067076(n+1)+2)]`
-/

namespace A163419.P17393814876171665371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A067076 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163419.P17393814876171665371

/-! ## A163419.P3441368922147048052

`A140144(A163420(n+1))`
-/

namespace A163419.P3441368922147048052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (A163420 (n + 1)).toNat

end

end A163419.P3441368922147048052

/-! ## A163419.P2389453934319928900

`A024206(A163420(n+1)+1)`
-/

namespace A163419.P2389453934319928900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (A163420 (n + 1) + 1).toNat

end

end A163419.P2389453934319928900

/-! ## A163419.P2092399035628615112

`A264754(A163420(n+1)-1)`
-/

namespace A163419.P2092399035628615112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 (A163420 (n + 1) - 1).toNat

end

end A163419.P2092399035628615112

/-! ## A163419.P14638543785475144869

`A264754(xor(1, A163420(n+1)))`
-/

namespace A163419.P14638543785475144869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 (Int.xor 1 (A163420 (n + 1))).toNat

end

end A163419.P14638543785475144869

/-! ## A163419.P3518660382882962070

`record[A209188(A008619(A151800(n)))]`
-/

namespace A163419.P3518660382882962070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A008619 (A151800 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163419.P3518660382882962070

/-! ## A163419.P2088237476429445303

`record[A209188(A008619(A039915(n+1)))]`
-/

namespace A163419.P2088237476429445303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A008619 (A039915 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163419.P2088237476429445303

/-! ## A163419.P3234739600758891613

`A184676(p?[A094210(n+1)+A045546(n+1)])`
-/

namespace A163419.P3234739600758891613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + A045546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163419.P3234739600758891613

/-!
# A163420: Primes p such that p+(p^2-1)/4 is also prime.

The programs for A163420, there is no canonical definition to state claims against.
-/

/-! ## A163420.P5962904114087055781

`p?[2*A002328(n+1)-3]`
-/

namespace A163420.P5962904114087055781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002328 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163420.P5962904114087055781

/-! ## A163420.P12069980609343610070

`p?[A088502(n+1)-2]`
-/

namespace A163420.P12069980609343610070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163420.P12069980609343610070

/-! ## A163420.P3071854497927341055

`p?[2*A094210(n+1)+1]`
-/

namespace A163420.P3071854497927341055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094210 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163420.P3071854497927341055

/-! ## A163420.P17307921211656798592

`p?[2*A045546(n+1)-1]`
-/

namespace A163420.P17307921211656798592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045546 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163420.P17307921211656798592

/-! ## A163420.P1155195752994232600

`p?[A094210(n+1)+A045546(n+1)]`
-/

namespace A163420.P1155195752994232600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + A045546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163420.P1155195752994232600

/-! ## A163420.P11244622546402465881

`p?[A002328(n+1)+A094210(n+1)-1]`
-/

namespace A163420.P11244622546402465881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + (A094210 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163420.P11244622546402465881

/-! ## A163420.P10279328924076236345

`p?[A002328(n+1)+A045546(n+1)-2]`
-/

namespace A163420.P10279328924076236345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + (A045546 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163420.P10279328924076236345

/-! ## A163420.P16851950714412615381

`∩[A000040(n+1), A088502(n+1)-2]`
-/

namespace A163420.P16851950714412615381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P16851950714412615381

/-! ## A163420.P16328378880415730940

`∩[A006005(n+1), A088502(n+1)-2]`
-/

namespace A163420.P16328378880415730940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P16328378880415730940

/-! ## A163420.P14542542022118562590

`∩[A065091(n+1), A088502(n+1)-2]`
-/

namespace A163420.P14542542022118562590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P14542542022118562590

/-! ## A163420.P453819238225860537

`∩[A008578(n+1), A088502(n+1)-2]`
-/

namespace A163420.P453819238225860537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P453819238225860537

/-! ## A163420.P9958770987712493569

`∩[A046022(n+1), A088502(n+1)-2]`
-/

namespace A163420.P9958770987712493569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P9958770987712493569

/-! ## A163420.P17776130827902621914

`∩[A051948(n+1), A088502(n+1)-2]`
-/

namespace A163420.P17776130827902621914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P17776130827902621914

/-! ## A163420.P383200098669553090

`∩[A053813(n+1), A088502(n+1)-2]`
-/

namespace A163420.P383200098669553090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P383200098669553090

/-! ## A163420.P13003311423092041389

`∩[A053577(n+1), A088502(n+1)-2]`
-/

namespace A163420.P13003311423092041389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163420.P13003311423092041389

/-! ## A163420.P7381455968103302513

`record[A006530(A088502(n+1)-2)]`
-/

namespace A163420.P7381455968103302513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088502 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163420.P7381455968103302513

/-! ## A163420.P6819016977776143562

`record[A020639(A088502(n+1)-2)]`
-/

namespace A163420.P6819016977776143562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088502 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163420.P6819016977776143562

/-! ## A163420.P2136793264393820456

`record[A006530(sqrt(A110013(n+1))-2)]`
-/

namespace A163420.P2136793264393820456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A110013 (n + 1) : ℝ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163420.P2136793264393820456

/-! ## A163420.P11126300961385463434

`record[A020639(sqrt(A110013(n+1))-2)]`
-/

namespace A163420.P11126300961385463434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A110013 (n + 1) : ℝ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163420.P11126300961385463434

/-!
# A163421: Primes of the form ((p-1)/2)^3+((p+1)/2), p are prime numbers.

The programs for A163421, there is no canonical definition to state claims against.
-/

/-! ## A163421.P9138259791452233475

`record[A095692(n+1)*A101264(A049407(n+1))]`
-/

namespace A163421.P9138259791452233475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095692 (n + 1) * A101264 (A049407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163421.P9138259791452233475

/-! ## A163421.P13128654703042701305

`A071568(floor(A163422(n+1)/2))`
-/

namespace A163421.P13128654703042701305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 ⌊(A163422 (n + 1) : ℚ) / 2⌋.toNat

end

end A163421.P13128654703042701305

/-! ## A163421.P14496258497976528153

`A071568((A163422(n+1)-1)/2)`
-/

namespace A163421.P14496258497976528153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (SequenceMachineLib.roundAway ((A163422 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A163421.P14496258497976528153

/-! ## A163421.P14384382286119574322

`A071568(∩[A005097(n+1), A049407(n+1)])`
-/

namespace A163421.P14384382286119574322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A163421.P14384382286119574322

/-! ## A163421.P12404202623780079678

`∩[A071568(A005097(n+1)), A095692(n+1)]`
-/

namespace A163421.P12404202623780079678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (A005097 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163421.P12404202623780079678

/-! ## A163421.P8718124029178164512

`A071568(∩[A089192(n+1)-4, A049407(n+1)])`
-/

namespace A163421.P8718124029178164512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A163421.P8718124029178164512

/-! ## A163421.P11236052048636700468

`∩[A071568(A089192(n+1)-4), A095692(n+1)]`
-/

namespace A163421.P11236052048636700468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (A089192 (n + 1) - 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163421.P11236052048636700468

/-!
# A163422: Primes p such that A071568((p-1)/2) is also prime.

The programs for A163422, there is no canonical definition to state claims against.
-/

/-! ## A163422.P16601784384667864607

`p?[2*A049407(n+1)+1]`
-/

namespace A163422.P16601784384667864607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049407 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163422.P16601784384667864607

/-! ## A163422.P15360146003033503202

`record[A006530(2*A049407(n+1)+1)]`
-/

namespace A163422.P15360146003033503202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A049407 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163422.P15360146003033503202

/-! ## A163422.P11730350279051082796

`record[A076565(A049407(n+1))]`
-/

namespace A163422.P11730350279051082796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A049407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163422.P11730350279051082796

/-! ## A163422.P16866040965608883418

`A057859(p?[A051445(A049407(n+1))])`
-/

namespace A163422.P16866040965608883418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (A049407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163422.P16866040965608883418

/-! ## A163422.P3144982968209891582

`A277698(p?[A144396(A049407(n+1))])`
-/

namespace A163422.P3144982968209891582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A049407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163422.P3144982968209891582

/-! ## A163422.P7897140667068982631

`record[A076567(3*A049407(n+1))]`
-/

namespace A163422.P7897140667068982631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (3 * A049407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163422.P7897140667068982631

/-! ## A163422.P14386327033589703321

`p?[A008619(4*A049407(n+1))]`
-/

namespace A163422.P14386327033589703321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A049407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163422.P14386327033589703321

/-!
# A163424: Primes of the form (p-1)^3/8 + (p+1)^2/4 where p is prime.

The programs for A163424, there is no canonical definition to state claims against.
-/

/-! ## A163424.P10131230250648031183

`A100705(floor(A163425(n+1)/2))`
-/

namespace A163424.P10131230250648031183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 ⌊(A163425 (n + 1) : ℚ) / 2⌋.toNat

end

end A163424.P10131230250648031183

/-! ## A163424.P11684823026725988768

`A100705((A163425(n+1)-1)/2)`
-/

namespace A163424.P11684823026725988768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 (SequenceMachineLib.roundAway ((A163425 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A163424.P11684823026725988768

/-! ## A163424.P814061155224207692

`A100705(A000010(A163425(n+1))/2)`
-/

namespace A163424.P814061155224207692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 (SequenceMachineLib.roundAway ((A000010 (A163425 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A163424.P814061155224207692

/-! ## A163424.P15632172978707352461

`p?[A100705(floor(p?[2*n+1]/2))]`
-/

namespace A163424.P15632172978707352461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163424.P15632172978707352461

/-! ## A163424.P16972292115518845411

`p?[A085090(n+1)+(n+1)*n²]`
-/

namespace A163424.P16972292115518845411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1) + ((n + 1) * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163424.P16972292115518845411

/-!
# A163425: Primes p such that (p-1)^3/8+(p+1)^2/4 is also prime.

The programs for A163425, there is no canonical definition to state claims against.
-/

/-! ## A163425.P10204718878784964316

`p?[2*A127483(n+1)+1]`
-/

namespace A163425.P10204718878784964316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127483 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163425.P10204718878784964316

/-! ## A163425.P9309159529235014421

`p?[A005408(A127483(n+1))]`
-/

namespace A163425.P9309159529235014421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A127483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163425.P9309159529235014421

/-! ## A163425.P13815309625193435152

`p?[A144396(A127483(n+1))]%A016971(n)`
-/

namespace A163425.P13815309625193435152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A127483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016971 n)

end

end A163425.P13815309625193435152

/-! ## A163425.P14833565024792630679

`p?[A144396(A127483(n+1))]/A033999(n)²`
-/

namespace A163425.P14833565024792630679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A127483 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A163425.P14833565024792630679

/-! ## A163425.P2076561930474228356

`p?[A144396(A127483(n+1))]+2%A035214(n)`
-/

namespace A163425.P2076561930474228356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A127483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A035214 n)

end

end A163425.P2076561930474228356

/-! ## A163425.P11198971118721768775

`p?[A144396(A127483(n+1))]/A260196(n+2)²`
-/

namespace A163425.P11198971118721768775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A127483 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A260196 (n + 2) ^ 2 : ℚ)

end

end A163425.P11198971118721768775

/-! ## A163425.P5633694120403432066

`p?[A144396(A127483(n+1))]/A000040(n+2)%2`
-/

namespace A163425.P5633694120403432066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A127483 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A163425.P5633694120403432066

/-! ## A163425.P1256102341178784223

`A254503(p?[A144396(A127483(n+1))])`
-/

namespace A163425.P1256102341178784223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A127483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163425.P1256102341178784223

/-! ## A163425.P9548581309290580289

`p?[A052938(4*A127483(n+1))]`
-/

namespace A163425.P9548581309290580289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (4 * A127483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163425.P9548581309290580289

/-! ## A163425.P13225798561929508853

`p?[A008611(6*A127483(n+1))]`
-/

namespace A163425.P13225798561929508853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * A127483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163425.P13225798561929508853

/-!
# A163426: Primes of the form ((p+1)/2)^3 + ((p-1)/2), p is prime.

The programs for A163426, there is no canonical definition to state claims against.
-/

/-! ## A163426.P4458191219638402138

`record[A101264(A236475(n+1)-1)*A182332(n+1)]`
-/

namespace A163426.P4458191219638402138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A236475 (n + 1) - 1).toNat * A182332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163426.P4458191219638402138

/-! ## A163426.P15497912440990437518

`record[A101264(A128955(n+1))*A182332(n+1)]`
-/

namespace A163426.P15497912440990437518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A128955 (n + 1)).toNat * A182332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163426.P15497912440990437518

/-! ## A163426.P1463013296354304336

`p?[A034262(A006254(n+1))-1]`
-/

namespace A163426.P1463013296354304336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 (A006254 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163426.P1463013296354304336

/-! ## A163426.P9971152164241841641

`p?[A085090(n+1)+A007531(n+2)]`
-/

namespace A163426.P9971152164241841641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1) + A007531 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163426.P9971152164241841641

/-! ## A163426.P15129256099848477442

`p?[(A014973(A005408(n))-n)^3+n]`
-/

namespace A163426.P15129256099848477442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014973 (A005408 n).toNat - (n : ℤ)) ^ 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163426.P15129256099848477442

/-!
# A163427: Primes p such that (p+1)^3/8+(p-1)/2 is also prime.

The programs for A163427, there is no canonical definition to state claims against.
-/

/-! ## A163427.P7291251984102177939

`p?[2*A236475(n+1)-1]`
-/

namespace A163427.P7291251984102177939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236475 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163427.P7291251984102177939

/-! ## A163427.P7406158104394428620

`p?[A066182(2*A236475(n+1))]`
-/

namespace A163427.P7406158104394428620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (2 * A236475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163427.P7406158104394428620

/-! ## A163427.P5091480236410903361

`record[A090368(A236475(n+1))]`
-/

namespace A163427.P5091480236410903361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A236475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163427.P5091480236410903361

/-! ## A163427.P4841665606717241953

`p?[A098486(A236475(A000027(n+1)))]`
-/

namespace A163427.P4841665606717241953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098486 (A236475 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163427.P4841665606717241953

/-! ## A163427.P3467735945958714528

`A007918(p?[A163985(A236475(n+1))])`
-/

namespace A163427.P3467735945958714528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A236475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163427.P3467735945958714528

/-!
# A163428: Primes of the form ((p+1)/2)^3 + ((p-1)/2)^2 where p is prime.

The programs for A163428, there is no canonical definition to state claims against.
-/

/-! ## A163428.P5468523270836450948

`A168297(round(A163429(n+1)/2))`
-/

namespace A163428.P5468523270836450948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 (SequenceMachineLib.roundAway ((A163429 (n + 1) : ℚ) / 2)).toNat

end

end A163428.P5468523270836450948

/-! ## A163428.P8845128029888789137

`A168297((A163429(n+1)+1)/2)`
-/

namespace A163428.P8845128029888789137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 (SequenceMachineLib.roundAway ((A163429 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A163428.P8845128029888789137

/-! ## A163428.P2812663736829532803

`p?[A168297(A006254(n+1))]`
-/

namespace A163428.P2812663736829532803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163428.P2812663736829532803

/-! ## A163428.P4124719906151848468

`p?[A168297(A111333(n+1))]`
-/

namespace A163428.P4124719906151848468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 (A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163428.P4124719906151848468

/-! ## A163428.P1359588045339068699

`p?[A168297(A130291(n+1))]`
-/

namespace A163428.P1359588045339068699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 (A130291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163428.P1359588045339068699

/-!
# A163429: Primes p such that ((p+1)/2)^3+((p-1)/2)^2 is also prime.

The programs for A163429, there is no canonical definition to state claims against.
-/

/-! ## A163429.P8827826430330595908

`p?[2*A128958(n+1)+1]`
-/

namespace A163429.P8827826430330595908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163429.P8827826430330595908

/-! ## A163429.P3944682653894786347

`record[A020639(A128958(n+1)+A128958(n+1)+1)]`
-/

namespace A163429.P3944682653894786347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128958 (n + 1) + (A128958 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163429.P3944682653894786347

/-! ## A163429.P7350951969478599257

`p?[A005408(A128958(n+1))]`
-/

namespace A163429.P7350951969478599257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A128958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163429.P7350951969478599257

/-! ## A163429.P9569969901123828630

`p?[A004273(A128958(n+1)+1)]`
-/

namespace A163429.P9569969901123828630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A128958 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163429.P9569969901123828630

/-! ## A163429.P6842504859204869940

`record[A166333(2*A128958(n+1))]`
-/

namespace A163429.P6842504859204869940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * A128958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163429.P6842504859204869940

/-! ## A163429.P13597081933692557040

`p?[A049283(2*A128958(n+1))]`
-/

namespace A163429.P13597081933692557040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * A128958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163429.P13597081933692557040

/-!
# A163430: Primes of the form floor(p^3/8), where p is any prime number.

The programs for A163430, there is no canonical definition to state claims against.
-/

/-! ## A163430.P14773133682941025562

`floor(A163431(n+1)^3/8)`
-/

namespace A163430.P14773133682941025562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163431 (n + 1) ^ 3 : ℚ) / 8⌋

end

end A163430.P14773133682941025562

/-! ## A163430.P7739300330962021193

`A081276(A163431(n+1))`
-/

namespace A163430.P7739300330962021193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (A163431 (n + 1)).toNat

end

end A163430.P7739300330962021193

/-!
# A163431: Primes p such that floor(p^3/8) is also prime.

The programs for A163431, there is no canonical definition to state claims against.
-/

/-! ## A163431.P16267150773972614295

`p?[lt[A229293(3*n+4), A229297(n+1)]]`
-/

namespace A163431.P16267150773972614295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229293 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229297 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163431.P16267150773972614295

/-!
# A163432: Number of reduced words of length n in Coxeter group on 12 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163432, there is no canonical definition to state claims against.
-/

/-! ## A163432.P17908468443033163672

`xor(A003954(n), A221146(A130760(2*n)))`
-/

namespace A163432.P17908468443033163672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003954 n) (A221146 (A130760 (2 * n)).toNat)

end

end A163432.P17908468443033163672

/-!
# A163433: Number of different fixed (possibly) disconnected trominoes bounded tightly by an n X n square.

The programs for A163433, the canonical program `A163433.P5064509135880668643` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163433 has offset 1).

The definition of A163433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163433.P10053288779486172003

`ogf((4x+10x^2-2x^3)/(1-3x+3x^2-x^3))`
-/

namespace A163433.P10053288779486172003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 10, -2] [1, -3, 3, -1] n

end

end A163433.P10053288779486172003

namespace A163433

/-- `ogf((4x+10x^2-2x^3)/(1-3x+3x^2-x^3))` -/
def P10053288779486172003.Spec : Prop :=
  ∀ n, P10053288779486172003.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P5064509135880668643

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=4, a(2)=22, a(3)=52`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163433

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5064509135880668643.Spec : Prop :=
  ∀ n, P5064509135880668643.a n = A163433 (n + 1)

theorem P5064509135880668643.correct : P5064509135880668643.Spec := by
  intro n
  simp only [A163433, Nat.add_sub_cancel]

end A163433

/-! ## A163433.P8234333873733404033

`abs(1-6*n²)-1`
-/

namespace A163433.P8234333873733404033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (6 * n ^ 2 : ℤ)| - 1

end

end A163433.P8234333873733404033

namespace A163433

/-- `abs(1-6*n²)-1` -/
def P8234333873733404033.Spec : Prop :=
  ∀ n, P8234333873733404033.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P9082742411495041489

`∑[a(n-1)+12]` with `a(0)=0, a(1)=4, a(2)=18`
-/

namespace A163433.P9082742411495041489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 18] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163433.P9082742411495041489

namespace A163433

/-- `∑[a(n-1)+12]` -/
def P9082742411495041489.Spec : Prop :=
  ∀ n, (P9082742411495041489.a n : ℤ) = A163433 (n + 1)

end A163433

/-! ## A163433.P12797908795930189424

`(lcm(2, Δ[(2*n+1)*(1-n)²])-2)/2`
-/

namespace A163433.P12797908795930189424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (f1 (n + 1) - f1 n) : ℤ) - 2 : ℚ) / 2

end

end A163433.P12797908795930189424

namespace A163433

/-- `(lcm(2, Δ[(2*n+1)*(1-n)²])-2)/2` -/
def P12797908795930189424.Spec : Prop :=
  ∀ n, P12797908795930189424.a n = (A163433 (n + 1) : ℚ)

end A163433

/-! ## A163433.P8698279827251981379

`xor(1, abs(A140811(n)))`
-/

namespace A163433.P8698279827251981379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |A140811 n|

end

end A163433.P8698279827251981379

namespace A163433

/-- `xor(1, abs(A140811(n)))` -/
def P8698279827251981379.Spec : Prop :=
  ∀ n, P8698279827251981379.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P8701319537705385272

`A188148(n+1)/2`
-/

namespace A163433.P8701319537705385272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188148 (n + 1) : ℚ) / 2

end

end A163433.P8701319537705385272

namespace A163433

/-- `A188148(n+1)/2` -/
def P8701319537705385272.Spec : Prop :=
  ∀ n, P8701319537705385272.a n = (A163433 (n + 1) : ℚ)

end A163433

/-! ## A163433.P14409899679853896125

`(2*n*6*n)%A005897(n)`
-/

namespace A163433.P14409899679853896125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n * (6 * n) : ℤ) (A005897 n)

end

end A163433.P14409899679853896125

namespace A163433

/-- `(2*n*6*n)%A005897(n)` -/
def P14409899679853896125.Spec : Prop :=
  ∀ n, P14409899679853896125.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P1465222630613664928

`A005903(n)%A005914(n)`
-/

namespace A163433.P1465222630613664928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005903 n) (A005914 n)

end

end A163433.P1465222630613664928

namespace A163433

/-- `A005903(n)%A005914(n)` -/
def P1465222630613664928.Spec : Prop :=
  ∀ n, P1465222630613664928.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P6969719061369571148

`A010016(n)%A005901(n)`
-/

namespace A163433.P6969719061369571148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010016 n) (A005901 n)

end

end A163433.P6969719061369571148

namespace A163433

/-- `A010016(n)%A005901(n)` -/
def P6969719061369571148.Spec : Prop :=
  ∀ n, P6969719061369571148.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P17307061624387721181

`A005911(n)%A010010(n)`
-/

namespace A163433.P17307061624387721181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005911 n) (A010010 n)

end

end A163433.P17307061624387721181

namespace A163433

/-- `A005911(n)%A010010(n)` -/
def P17307061624387721181.Spec : Prop :=
  ∀ n, P17307061624387721181.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P15983989716662047099

`A010010(n)%A005919(n)`
-/

namespace A163433.P15983989716662047099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010010 n) (A005919 n)

end

end A163433.P15983989716662047099

namespace A163433

/-- `A010010(n)%A005919(n)` -/
def P15983989716662047099.Spec : Prop :=
  ∀ n, P15983989716662047099.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P7429459723516842030

`A010012(n)%A008527(n)`
-/

namespace A163433.P7429459723516842030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010012 n) (A008527 n)

end

end A163433.P7429459723516842030

namespace A163433

/-- `A010012(n)%A008527(n)` -/
def P7429459723516842030.Spec : Prop :=
  ∀ n, P7429459723516842030.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P7289670970562892454

`A010014(n)%A010002(n)`
-/

namespace A163433.P7289670970562892454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010014 n) (A010002 n)

end

end A163433.P7289670970562892454

namespace A163433

/-- `A010014(n)%A010002(n)` -/
def P7289670970562892454.Spec : Prop :=
  ∀ n, P7289670970562892454.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P16320021142099858246

`A010018(n)%A010003(n)`
-/

namespace A163433.P16320021142099858246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010018 n) (A010003 n)

end

end A163433.P16320021142099858246

namespace A163433

/-- `A010018(n)%A010003(n)` -/
def P16320021142099858246.Spec : Prop :=
  ∀ n, P16320021142099858246.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P10544552941512085324

`A010021(n)%A010004(n)`
-/

namespace A163433.P10544552941512085324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010021 n) (A010004 n)

end

end A163433.P10544552941512085324

namespace A163433

/-- `A010021(n)%A010004(n)` -/
def P10544552941512085324.Spec : Prop :=
  ∀ n, P10544552941512085324.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P13088786403376987788

`A010022(n)%A010007(n)`
-/

namespace A163433.P13088786403376987788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010022 n) (A010007 n)

end

end A163433.P13088786403376987788

namespace A163433

/-- `A010022(n)%A010007(n)` -/
def P13088786403376987788.Spec : Prop :=
  ∀ n, P13088786403376987788.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P7802739474376335089

`A010023(n)%A010008(n)`
-/

namespace A163433.P7802739474376335089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010023 n) (A010008 n)

end

end A163433.P7802739474376335089

namespace A163433

/-- `A010023(n)%A010008(n)` -/
def P7802739474376335089.Spec : Prop :=
  ∀ n, P7802739474376335089.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P16203164815633952597

`A016802(n)%A005901(n)`
-/

namespace A163433.P16203164815633952597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016802 n) (A005901 n)

end

end A163433.P16203164815633952597

namespace A163433

/-- `A016802(n)%A005901(n)` -/
def P16203164815633952597.Spec : Prop :=
  ∀ n, P16203164815633952597.a n = A163433 (n + 1)

end A163433

/-! ## A163433.P3197358279102134155

`A016910(n)%A005903(n)`
-/

namespace A163433.P3197358279102134155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016910 n) (A005903 n)

end

end A163433.P3197358279102134155

namespace A163433

/-- `A016910(n)%A005903(n)` -/
def P3197358279102134155.Spec : Prop :=
  ∀ n, P3197358279102134155.a n = A163433 (n + 1)

end A163433

/-!
# A163434: Number of different fixed (possibly) disconnected tetrominoes bounded tightly by an n X n square.

The programs for A163434, the canonical program `A163434.P15214268998002557123` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163434 has offset 1).

The definition of A163434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163434.P15214268998002557123

`ogf((x+65x^2+85x^3-9x^4+2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163434

/-- `ogf((x+65x^2+85x^3-9x^4+2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15214268998002557123.Spec : Prop :=
  ∀ n, P15214268998002557123.a n = A163434 (n + 1)

theorem P15214268998002557123.correct : P15214268998002557123.Spec := by
  intro n
  simp only [A163434, Nat.add_sub_cancel]

end A163434

/-! ## A163434.P15103238688503368501

`A239608(n)%(A144130(n)+n²)`
-/

namespace A163434.P15103238688503368501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239608 n) (A144130 n + (n ^ 2 : ℤ))

end

end A163434.P15103238688503368501

namespace A163434

/-- `A239608(n)%(A144130(n)+n²)` -/
def P15103238688503368501.Spec : Prop :=
  ∀ n, P15103238688503368501.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P11422072938233994916

`A033595(n)+A239607(n)-A000038(n)`
-/

namespace A163434.P11422072938233994916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033595 n + (A239607 n - A000038 n)

end

end A163434.P11422072938233994916

namespace A163434

/-- `A033595(n)+A239607(n)-A000038(n)` -/
def P11422072938233994916.Spec : Prop :=
  ∀ n, P11422072938233994916.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P2870149044677645385

`A005893(n)*A005918(n)-A010007(n)`
-/

namespace A163434.P2870149044677645385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A005918 n - A010007 n

end

end A163434.P2870149044677645385

namespace A163434

/-- `A005893(n)*A005918(n)-A010007(n)` -/
def P2870149044677645385.Spec : Prop :=
  ∀ n, P2870149044677645385.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P256729301349472426

`A005897(n)*A010000(n)-A010011(n)`
-/

namespace A163434.P256729301349472426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n * A010000 n - A010011 n

end

end A163434.P256729301349472426

namespace A163434

/-- `A005897(n)*A010000(n)-A010011(n)` -/
def P256729301349472426.Spec : Prop :=
  ∀ n, P256729301349472426.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P9124176791367628165

`(A239607(n)+A033595(n))%A242851(n)`
-/

namespace A163434.P9124176791367628165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239607 n + A033595 n) (A242851 n)

end

end A163434.P9124176791367628165

namespace A163434

/-- `(A239607(n)+A033595(n))%A242851(n)` -/
def P9124176791367628165.Spec : Prop :=
  ∀ n, P9124176791367628165.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P9366015799875986336

`∑{e}[A020639(n+1), A033570(n²-#)]`
-/

namespace A163434.P9366015799875986336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033570 (n ^ 2 - Nat.factorization (f1 n).natAbs p)

end

end A163434.P9366015799875986336

namespace A163434

/-- `∑{e}[A020639(n+1), A033570(n²-#)]` -/
def P9366015799875986336.Spec : Prop :=
  ∀ n, P9366015799875986336.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P11530496137430137392

`A000326(A004273(n²))`
-/

namespace A163434.P11530496137430137392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A004273 (n ^ 2)).toNat

end

end A163434.P11530496137430137392

namespace A163434

/-- `A000326(A004273(n²))` -/
def P11530496137430137392.Spec : Prop :=
  ∀ n, P11530496137430137392.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P16288652724248588877

`A000326(A004277(n²)-1)`
-/

namespace A163434.P16288652724248588877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A004277 (n ^ 2) - 1).toNat

end

end A163434.P16288652724248588877

namespace A163434

/-- `A000326(A004277(n²)-1)` -/
def P16288652724248588877.Spec : Prop :=
  ∀ n, P16288652724248588877.a n = A163434 (n + 1)

end A163434

/-! ## A163434.P9506168778678946681

`A000326(A061579(2*n²))`
-/

namespace A163434.P9506168778678946681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A061579 (2 * n ^ 2)).toNat

end

end A163434.P9506168778678946681

namespace A163434

/-- `A000326(A061579(2*n²))` -/
def P9506168778678946681.Spec : Prop :=
  ∀ n, P9506168778678946681.a n = A163434 (n + 1)

end A163434

/-!
# A163436: Number of different fixed (possibly) disconnected n-ominoes bounded tightly by an n*n square.

The programs for A163436, there is no canonical definition to state claims against.
-/

/-! ## A163436.P5728873626511447089

`A124295(2*n+1)-A364272(A345194(n))`
-/

namespace A163436.P5728873626511447089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124295 (2 * n + 1) - A364272 (A345194 n).toNat

end

end A163436.P5728873626511447089

/-!
# A163441: Number of reduced words of length n in Coxeter group on 16 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163441, there is no canonical definition to state claims against.
-/

/-! ## A163441.P4906887857616021391

`A167117(n)-A324064(A036275(n+1))`
-/

namespace A163441.P4906887857616021391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167117 n - A324064 (A036275 (n + 1)).toNat

end

end A163441.P4906887857616021391

/-!
# A163442: Primes of the form floor((p/3)^3), where p is prime.

The programs for A163442, there is no canonical definition to state claims against.
-/

/-! ## A163442.P15783701831692994006

`p?[floor((A000040(n+1)/3)^3)]`
-/

namespace A163442.P15783701831692994006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000040 (n + 1) : ℚ) / 3) ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163442.P15783701831692994006

/-!
# A163443: Primes p such that floor(p^3/27) is prime.

The programs for A163443, there is no canonical definition to state claims against.
-/

/-! ## A163443.P17747568294108166335

`A327783(xor(9*n+6, ∑{d}[∏{p}[n+1, #], (n+1)/#]))`
-/

namespace A163443.P17747568294108166335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (Int.xor (9 * n + 6 : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)))).toNat

end

end A163443.P17747568294108166335

/-!
# A163444: a(n) = 12*a(n-1) - 34*a(n-2) for n > 1; a(0) = 1, a(1) = 8.

The programs for A163444, the canonical program `A163444.P12733022517789171186` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163444 has offset 0).

The definition of A163444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-34*a(n-2)` (program `A163444.P12733022517789171186`, by `A163444.P12733022517789171186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163444.P10050289543395399796

`ogf((1-4x)/(1-12x+34x^2))`
-/

namespace A163444.P10050289543395399796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -12, 34] n

end

end A163444.P10050289543395399796

namespace A163444

/-- `ogf((1-4x)/(1-12x+34x^2))` -/
def P10050289543395399796.Spec : Prop :=
  ∀ n, P10050289543395399796.a n = A163444 n

end A163444

/-! ## A163444.P12733022517789171186

`12*a(n-1)-34*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163444

/-- `12*a(n-1)-34*a(n-2)` -/
def P12733022517789171186.Spec : Prop :=
  ∀ n, P12733022517789171186.a n = A163444 n

theorem P12733022517789171186.correct : P12733022517789171186.Spec := by
  intro n
  simp only [A163444]

end A163444

/-! ## A163444.P13166158443133273690

`((1+sqrt(2))*(6+sqrt(2))^n+(1-sqrt(2))*(6-sqrt(2))^n)/2`
-/

namespace A163444.P13166158443133273690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (6 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (2 : ℝ)) * (6 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163444.P13166158443133273690

namespace A163444

/-- `((1+sqrt(2))*(6+sqrt(2))^n+(1-sqrt(2))*(6-sqrt(2))^n)/2` -/
def P13166158443133273690.Spec : Prop :=
  ∀ n, P13166158443133273690.a n = (A163444 n : ℝ)

theorem P13166158443133273690.correct : P13166158443133273690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163444, Nat.add_sub_cancel, A163444.P13166158443133273690.a, A163444.P12733022517789171186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163444, Nat.add_sub_cancel, A163444.P13166158443133273690.a, A163444.P12733022517789171186.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163444

/-! ## A163444.P9872907344492835257

`A163458(n)+((sqrt(2)+6)^n-(6-sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A163444.P9872907344492835257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163458 n : ℝ) + ((Real.sqrt (2 : ℝ) + 6) ^ n - (6 - Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A163444.P9872907344492835257

namespace A163444

/-- `A163458(n)+((sqrt(2)+6)^n-(6-sqrt(2))^n)/(2*sqrt(2))` -/
def P9872907344492835257.Spec : Prop :=
  ∀ n, P9872907344492835257.a n = (A163444 n : ℝ)

end A163444

/-! ## A163444.P16321011652495352337

`A147957(n)+2*A081183(n)`
-/

namespace A163444.P16321011652495352337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147957 n + 2 * A081183 n

end

end A163444.P16321011652495352337

namespace A163444

/-- `A147957(n)+2*A081183(n)` -/
def P16321011652495352337.Spec : Prop :=
  ∀ n, P16321011652495352337.a n = A163444 n

end A163444

/-! ## A163444.P11544627810432935669

`2*A163458(n)-A147957(n)`
-/

namespace A163444.P11544627810432935669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163458 n - A147957 n

end

end A163444.P11544627810432935669

namespace A163444

/-- `2*A163458(n)-A147957(n)` -/
def P11544627810432935669.Spec : Prop :=
  ∀ n, P11544627810432935669.a n = A163444 n

end A163444

/-! ## A163444.P2829306953000392595

`A164021(n)-2*A163458(n)`
-/

namespace A163444.P2829306953000392595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164021 n - 2 * A163458 n

end

end A163444.P2829306953000392595

namespace A163444

/-- `A164021(n)-2*A163458(n)` -/
def P2829306953000392595.Spec : Prop :=
  ∀ n, P2829306953000392595.a n = A163444 n

end A163444

/-! ## A163444.P12223313109084832531

`Δ[A164021(n)]%A164021(n)`
-/

namespace A163444.P12223313109084832531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164021 n)

end

end A163444.P12223313109084832531

namespace A163444

/-- `Δ[A164021(n)]%A164021(n)` -/
def P12223313109084832531.Spec : Prop :=
  ∀ n, P12223313109084832531.a n = A163444 n

end A163444

/-!
# A163445: a(n) = 14*a(n-1) - 47*a(n-2) for n > 1; a(0) = 1, a(1) = 9.

The programs for A163445, the canonical program `A163445.P9925114278557285112` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163445 has offset 0).

The definition of A163445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-47*a(n-2)` (program `A163445.P9925114278557285112`, by `A163445.P9925114278557285112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163445.P8464035139726952385

`ogf((1-5x)/(1-14x+47x^2))`
-/

namespace A163445.P8464035139726952385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -14, 47] n

end

end A163445.P8464035139726952385

namespace A163445

/-- `ogf((1-5x)/(1-14x+47x^2))` -/
def P8464035139726952385.Spec : Prop :=
  ∀ n, P8464035139726952385.a n = A163445 n

end A163445

/-! ## A163445.P9925114278557285112

`14*a(n-1)-47*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163445

/-- `14*a(n-1)-47*a(n-2)` -/
def P9925114278557285112.Spec : Prop :=
  ∀ n, P9925114278557285112.a n = A163445 n

theorem P9925114278557285112.correct : P9925114278557285112.Spec := by
  intro n
  simp only [A163445]

end A163445

/-! ## A163445.P6478594104499870932

`A163459(n)+A081184(n)`
-/

namespace A163445.P6478594104499870932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163459 n + A081184 n

end

end A163445.P6478594104499870932

namespace A163445

/-- `A163459(n)+A081184(n)` -/
def P6478594104499870932.Spec : Prop :=
  ∀ n, P6478594104499870932.a n = A163445 n

end A163445

/-! ## A163445.P251992894814275223

`A147958(n)+2*A081184(n)`
-/

namespace A163445.P251992894814275223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147958 n + 2 * A081184 n

end

end A163445.P251992894814275223

namespace A163445

/-- `A147958(n)+2*A081184(n)` -/
def P251992894814275223.Spec : Prop :=
  ∀ n, P251992894814275223.a n = A163445 n

end A163445

/-! ## A163445.P17737709269798788805

`A163459(n)+A163459(n)-A147958(n)`
-/

namespace A163445.P17737709269798788805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163459 n + (A163459 n - A147958 n)

end

end A163445.P17737709269798788805

namespace A163445

/-- `A163459(n)+A163459(n)-A147958(n)` -/
def P17737709269798788805.Spec : Prop :=
  ∀ n, P17737709269798788805.a n = A163445 n

end A163445

/-! ## A163445.P5260106541859214255

`((1+sqrt(2))*(sqrt(2)+7)^n+(1-sqrt(2))*(7-sqrt(2))^n)/2`
-/

namespace A163445.P5260106541859214255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 7) ^ n + (1 - Real.sqrt (2 : ℝ)) * (7 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163445.P5260106541859214255

namespace A163445

/-- `((1+sqrt(2))*(sqrt(2)+7)^n+(1-sqrt(2))*(7-sqrt(2))^n)/2` -/
def P5260106541859214255.Spec : Prop :=
  ∀ n, P5260106541859214255.a n = (A163445 n : ℝ)

theorem P5260106541859214255.correct : P5260106541859214255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163445, Nat.add_sub_cancel, A163445.P5260106541859214255.a, A163445.P9925114278557285112.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163445, Nat.add_sub_cancel, A163445.P5260106541859214255.a, A163445.P9925114278557285112.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163445

/-! ## A163445.P13763044067734364915

`A163413(n)-2*A081184(n)`
-/

namespace A163445.P13763044067734364915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163413 n - 2 * A081184 n

end

end A163445.P13763044067734364915

namespace A163445

/-- `A163413(n)-2*A081184(n)` -/
def P13763044067734364915.Spec : Prop :=
  ∀ n, P13763044067734364915.a n = A163445 n

end A163445

/-! ## A163445.P12871494734434809720

`2*A163459(n)-A147958(n)`
-/

namespace A163445.P12871494734434809720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163459 n - A147958 n

end

end A163445.P12871494734434809720

namespace A163445

/-- `2*A163459(n)-A147958(n)` -/
def P12871494734434809720.Spec : Prop :=
  ∀ n, P12871494734434809720.a n = A163445 n

end A163445

/-!
# A163446: a(n) = 16*a(n-1) - 62*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A163446, the canonical program `A163446.P8835729742943258725` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163446 has offset 0).

The definition of A163446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-62*a(n-2)` (program `A163446.P8835729742943258725`, by `A163446.P8835729742943258725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163446.P15559592343046887398

`ogf((1-6x)/(1-16x+62x^2))`
-/

namespace A163446.P15559592343046887398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -16, 62] n

end

end A163446.P15559592343046887398

namespace A163446

/-- `ogf((1-6x)/(1-16x+62x^2))` -/
def P15559592343046887398.Spec : Prop :=
  ∀ n, P15559592343046887398.a n = A163446 n

end A163446

/-! ## A163446.P8835729742943258725

`16*a(n-1)-62*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163446

/-- `16*a(n-1)-62*a(n-2)` -/
def P8835729742943258725.Spec : Prop :=
  ∀ n, P8835729742943258725.a n = A163446 n

theorem P8835729742943258725.correct : P8835729742943258725.Spec := by
  intro n
  simp only [A163446]

end A163446

/-! ## A163446.P11824067842841298144

`((1+sqrt(2))*(8+sqrt(2))^n+(1-sqrt(2))*(8-sqrt(2))^n)/2`
-/

namespace A163446.P11824067842841298144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (8 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (2 : ℝ)) * (8 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163446.P11824067842841298144

namespace A163446

/-- `((1+sqrt(2))*(8+sqrt(2))^n+(1-sqrt(2))*(8-sqrt(2))^n)/2` -/
def P11824067842841298144.Spec : Prop :=
  ∀ n, P11824067842841298144.a n = (A163446 n : ℝ)

theorem P11824067842841298144.correct : P11824067842841298144.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163446, Nat.add_sub_cancel, A163446.P11824067842841298144.a, A163446.P8835729742943258725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163446, Nat.add_sub_cancel, A163446.P11824067842841298144.a, A163446.P8835729742943258725.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163446

/-! ## A163446.P96479806826053057

`A163460(n)+A081185(n)`
-/

namespace A163446.P96479806826053057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163460 n + A081185 n

end

end A163446.P96479806826053057

namespace A163446

/-- `A163460(n)+A081185(n)` -/
def P96479806826053057.Spec : Prop :=
  ∀ n, P96479806826053057.a n = A163446 n

end A163446

/-! ## A163446.P13636372863533096260

`A147959(n)+2*A081185(n)`
-/

namespace A163446.P13636372863533096260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147959 n + 2 * A081185 n

end

end A163446.P13636372863533096260

namespace A163446

/-- `A147959(n)+2*A081185(n)` -/
def P13636372863533096260.Spec : Prop :=
  ∀ n, P13636372863533096260.a n = A163446 n

end A163446

/-! ## A163446.P4144651547953005551

`A163414(n)-2*A081185(n)`
-/

namespace A163446.P4144651547953005551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163414 n - 2 * A081185 n

end

end A163446.P4144651547953005551

namespace A163446

/-- `A163414(n)-2*A081185(n)` -/
def P4144651547953005551.Spec : Prop :=
  ∀ n, P4144651547953005551.a n = A163446 n

end A163446

/-! ## A163446.P718767715398484637

`2*A163460(n)-A147959(n)`
-/

namespace A163446.P718767715398484637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163460 n - A147959 n

end

end A163446.P718767715398484637

namespace A163446

/-- `2*A163460(n)-A147959(n)` -/
def P718767715398484637.Spec : Prop :=
  ∀ n, P718767715398484637.a n = A163446 n

end A163446

/-!
# A163447: a(n) = 18*a(n-1) - 79*a(n-2) for n > 1; a(0) = 1, a(1) = 11.

The programs for A163447, the canonical program `A163447.P2989221116848272232` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163447 has offset 0).

The definition of A163447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-79*a(n-2)` (program `A163447.P2989221116848272232`, by `A163447.P2989221116848272232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163447.P8787189511264181125

`ogf((1-7x)/(1-18x+79x^2))`
-/

namespace A163447.P8787189511264181125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -18, 79] n

end

end A163447.P8787189511264181125

namespace A163447

/-- `ogf((1-7x)/(1-18x+79x^2))` -/
def P8787189511264181125.Spec : Prop :=
  ∀ n, P8787189511264181125.a n = A163447 n

end A163447

/-! ## A163447.P2989221116848272232

`18*a(n-1)-79*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163447

/-- `18*a(n-1)-79*a(n-2)` -/
def P2989221116848272232.Spec : Prop :=
  ∀ n, P2989221116848272232.a n = A163447 n

theorem P2989221116848272232.correct : P2989221116848272232.Spec := by
  intro n
  simp only [A163447]

end A163447

/-! ## A163447.P17624073249329707329

`2*A163461(n)-A147960(n)`
-/

namespace A163447.P17624073249329707329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163461 n - A147960 n

end

end A163447.P17624073249329707329

namespace A163447

/-- `2*A163461(n)-A147960(n)` -/
def P17624073249329707329.Spec : Prop :=
  ∀ n, P17624073249329707329.a n = A163447 n

end A163447

/-! ## A163447.P15425195390872671239

`((1+sqrt(2))*(sqrt(2)+9)^n+(1-sqrt(2))*(9-sqrt(2))^n)/2`
-/

namespace A163447.P15425195390872671239
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 9) ^ n + (1 - Real.sqrt (2 : ℝ)) * (9 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163447.P15425195390872671239

namespace A163447

/-- `((1+sqrt(2))*(sqrt(2)+9)^n+(1-sqrt(2))*(9-sqrt(2))^n)/2` -/
def P15425195390872671239.Spec : Prop :=
  ∀ n, P15425195390872671239.a n = (A163447 n : ℝ)

theorem P15425195390872671239.correct : P15425195390872671239.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163447, Nat.add_sub_cancel, A163447.P15425195390872671239.a, A163447.P2989221116848272232.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163447, Nat.add_sub_cancel, A163447.P15425195390872671239.a, A163447.P2989221116848272232.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163447

/-! ## A163447.P5432182835118830748

`A147960(n+1)-8*A147960(n)`
-/

namespace A163447.P5432182835118830748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147960 (n + 1) - 8 * A147960 n

end

end A163447.P5432182835118830748

namespace A163447

/-- `A147960(n+1)-8*A147960(n)` -/
def P5432182835118830748.Spec : Prop :=
  ∀ n, P5432182835118830748.a n = A163447 n

end A163447

/-! ## A163447.P15115508527552488312

`A153593(n+1)+A163461(n)-A164600(n)`
-/

namespace A163447.P15115508527552488312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153593 (n + 1) + (A163461 n - A164600 n)

end

end A163447.P15115508527552488312

namespace A163447

/-- `A153593(n+1)+A163461(n)-A164600(n)` -/
def P15115508527552488312.Spec : Prop :=
  ∀ n, P15115508527552488312.a n = A163447 n

end A163447

/-!
# A163448: a(n) = 20*a(n-1) - 98*a(n-2) for n > 1; a(0) = 1, a(1) = 12.

The programs for A163448, the canonical program `A163448.P3451090656326989038` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163448 has offset 0).

The definition of A163448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-98*a(n-2)` (program `A163448.P3451090656326989038`, by `A163448.P3451090656326989038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163448.P11361111226982487382

`ogf((1-8x)/(1-20x+98x^2))`
-/

namespace A163448.P11361111226982487382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -20, 98] n

end

end A163448.P11361111226982487382

namespace A163448

/-- `ogf((1-8x)/(1-20x+98x^2))` -/
def P11361111226982487382.Spec : Prop :=
  ∀ n, P11361111226982487382.a n = A163448 n

end A163448

/-! ## A163448.P3451090656326989038

`20*a(n-1)-98*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163448

/-- `20*a(n-1)-98*a(n-2)` -/
def P3451090656326989038.Spec : Prop :=
  ∀ n, P3451090656326989038.a n = A163448 n

theorem P3451090656326989038.correct : P3451090656326989038.Spec := by
  intro n
  simp only [A163448]

end A163448

/-! ## A163448.P11671608627026978114

`((1+sqrt(2))*(10+sqrt(2))^n+(1-sqrt(2))*(10-sqrt(2))^n)/2`
-/

namespace A163448.P11671608627026978114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (10 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (2 : ℝ)) * (10 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163448.P11671608627026978114

namespace A163448

/-- `((1+sqrt(2))*(10+sqrt(2))^n+(1-sqrt(2))*(10-sqrt(2))^n)/2` -/
def P11671608627026978114.Spec : Prop :=
  ∀ n, P11671608627026978114.a n = (A163448 n : ℝ)

theorem P11671608627026978114.correct : P11671608627026978114.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163448, Nat.add_sub_cancel, A163448.P11671608627026978114.a, A163448.P3451090656326989038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163448, Nat.add_sub_cancel, A163448.P11671608627026978114.a, A163448.P3451090656326989038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163448

/-! ## A163448.P15565454265569787889

`2*A163462(n)-A162666(n)`
-/

namespace A163448.P15565454265569787889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163462 n - A162666 n

end

end A163448.P15565454265569787889

namespace A163448

/-- `2*A163462(n)-A162666(n)` -/
def P15565454265569787889.Spec : Prop :=
  ∀ n, P15565454265569787889.a n = A163448 n

end A163448

/-!
# A163449: A007582 written in base 2.

The programs for A163449, the canonical program `A163449.P10187514071230630520` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163449 has offset 0).

The definition of A163449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163449.P10187514071230630520

`A007088(A007582(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163449

/-- `A007088(A007582(n))` -/
def P10187514071230630520.Spec : Prop :=
  ∀ n, P10187514071230630520.a n = A163449 n

theorem P10187514071230630520.correct : P10187514071230630520.Spec := by
  intro n
  simp only [A163449]

end A163449

/-! ## A163449.P1896151673924226944

`(10^n+1)/2*ceil(10^n/5)`
-/

namespace A163449.P1896151673924226944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 1 : ℚ) / 2 * (⌈(10 ^ n : ℚ) / 5⌉ : ℚ)

end

end A163449.P1896151673924226944

namespace A163449

/-- `(10^n+1)/2*ceil(10^n/5)` -/
def P1896151673924226944.Spec : Prop :=
  ∀ n, P1896151673924226944.a n = (A163449 n : ℚ)

end A163449

/-! ## A163449.P7434681045656361683

`A164370(Δ[n²])`
-/

namespace A163449.P7434681045656361683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A163449.P7434681045656361683

namespace A163449

/-- `A164370(Δ[n²])` -/
def P7434681045656361683.Spec : Prop :=
  ∀ n, P7434681045656361683.a n = A163449 n

end A163449

/-! ## A163449.P4003237177107884447

`ceil(A037156(n)/5)`
-/

namespace A163449.P4003237177107884447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037156 n : ℚ) / 5⌉

end

end A163449.P4003237177107884447

namespace A163449

/-- `ceil(A037156(n)/5)` -/
def P4003237177107884447.Spec : Prop :=
  ∀ n, P4003237177107884447.a n = A163449 n

end A163449

/-! ## A163449.P14469112198097162892

`A178501(n)+10^A004273(n)`
-/

namespace A163449.P14469112198097162892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178501 n : ℚ) + (10 : ℚ) ^ (A004273 n : ℤ)

end

end A163449.P14469112198097162892

namespace A163449

/-- `A178501(n)+10^A004273(n)` -/
def P14469112198097162892.Spec : Prop :=
  ∀ n, P14469112198097162892.a n = (A163449 n : ℚ)

end A163449

/-! ## A163449.P3878653953806640975

`A037156(n)/A000533(n)%6`
-/

namespace A163449.P3878653953806640975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037156 n : ℚ) / (Int.tmod (A000533 n) 6 : ℚ)

end

end A163449.P3878653953806640975

namespace A163449

/-- `A037156(n)/A000533(n)%6` -/
def P3878653953806640975.Spec : Prop :=
  ∀ n, P3878653953806640975.a n = (A163449 n : ℚ)

end A163449

/-! ## A163449.P12167188915013222754

`record[gcd(A097331(n), A164370(n+1))]`
-/

namespace A163449.P12167188915013222754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A164370 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163449.P12167188915013222754

namespace A163449

/-- `record[gcd(A097331(n), A164370(n+1))]` -/
def P12167188915013222754.Spec : Prop :=
  ∀ n, (P12167188915013222754.a n : ℤ) = A163449 n

end A163449

/-! ## A163449.P17731375175151455384

`A356520(A212342(2*n+1)-n)`
-/

namespace A163449.P17731375175151455384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (A212342 (2 * n + 1) - (n : ℤ)).toNat

end

end A163449.P17731375175151455384

namespace A163449

/-- `A356520(A212342(2*n+1)-n)` -/
def P17731375175151455384.Spec : Prop :=
  ∀ n, P17731375175151455384.a n = A163449 n

end A163449

/-! ## A163449.P2572502412273134572

`A178501(n)+A011557(A004273(n))`
-/

namespace A163449.P2572502412273134572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n + A011557 (A004273 n).toNat

end

end A163449.P2572502412273134572

namespace A163449

/-- `A178501(n)+A011557(A004273(n))` -/
def P2572502412273134572.Spec : Prop :=
  ∀ n, P2572502412273134572.a n = A163449 n

end A163449

/-! ## A163449.P584984133736940144

`gcd(A164370(2*n+1), A164370(2*(n+1)))`
-/

namespace A163449.P584984133736940144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164370 (2 * n + 1)) (A164370 (2 * (n + 1)))

end

end A163449.P584984133736940144

namespace A163449

/-- `gcd(A164370(2*n+1), A164370(2*(n+1)))` -/
def P584984133736940144.Spec : Prop :=
  ∀ n, (P584984133736940144.a n : ℤ) = A163449 n

end A163449

/-!
# A163450: A028403 written in base 2.

The programs for A163450, the canonical program `A163450.P5943626076533476686` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163450 has offset 1).

The definition of A163450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163450.P9452700348344595496

`100*A163449(n)`
-/

namespace A163450.P9452700348344595496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  100 * A163449 n

end

end A163450.P9452700348344595496

namespace A163450

/-- `100*A163449(n)` -/
def P9452700348344595496.Spec : Prop :=
  ∀ n, P9452700348344595496.a n = A163450 (n + 1)

end A163450

/-! ## A163450.P5943626076533476686

`A007088(A028403(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163450

/-- `A007088(A028403(n+1))` -/
def P5943626076533476686.Spec : Prop :=
  ∀ n, P5943626076533476686.a n = A163450 (n + 1)

theorem P5943626076533476686.correct : P5943626076533476686.Spec := by
  intro n
  simp only [A163450, Nat.add_sub_cancel]

end A163450

/-! ## A163450.P16037362002276447977

`10*A164370(2*(n+1))`
-/

namespace A163450.P16037362002276447977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A164370 (2 * (n + 1))

end

end A163450.P16037362002276447977

namespace A163450

/-- `10*A164370(2*(n+1))` -/
def P16037362002276447977.Spec : Prop :=
  ∀ n, P16037362002276447977.a n = A163450 (n + 1)

end A163450

/-! ## A163450.P17964277053341236747

`A000462(A167614(n+1))*A011557(n)`
-/

namespace A163450.P17964277053341236747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000462 (A167614 (n + 1)).toNat * A011557 n

end

end A163450.P17964277053341236747

namespace A163450

/-- `A000462(A167614(n+1))*A011557(n)` -/
def P17964277053341236747.Spec : Prop :=
  ∀ n, P17964277053341236747.a n = A163450 (n + 1)

end A163450

/-! ## A163450.P5784097379043374488

`A000533(n)*A011557(A233583(n+2))`
-/

namespace A163450.P5784097379043374488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n * A011557 (A233583 (n + 2)).toNat

end

end A163450.P5784097379043374488

namespace A163450

/-- `A000533(n)*A011557(A233583(n+2))` -/
def P5784097379043374488.Spec : Prop :=
  ∀ n, P5784097379043374488.a n = A163450 (n + 1)

end A163450

/-!
# A163455: a(n) = binomial(5*n-1,n).

The programs for A163455, there is no canonical definition to state claims against.
-/

/-! ## A163455.P6379004710158572654

`C(abs(1-5*n), n)`
-/

namespace A163455.P6379004710158572654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (5 * n : ℤ)|.toNat n

end

end A163455.P6379004710158572654

/-! ## A163455.P11408261566642413557

`record[C(A047206(n+1), A093544(n+1))]`
-/

namespace A163455.P11408261566642413557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047206 (n + 1)).toNat (A093544 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163455.P11408261566642413557

/-! ## A163455.P11009998036683213714

`A172431(A276819(n))`
-/

namespace A163455.P11009998036683213714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (A276819 n).toNat

end

end A163455.P11009998036683213714

/-! ## A163455.P16181232230803756578

`A172431(A022266(n)+1)`
-/

namespace A163455.P16181232230803756578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (A022266 n + 1).toNat

end

end A163455.P16181232230803756578

/-! ## A163455.P9994914620743181220

`A128908(A062728(n))`
-/

namespace A163455.P9994914620743181220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A062728 n).toNat

end

end A163455.P9994914620743181220

/-!
# A163456: a(n) = binomial(5*n,n)/5.

The programs for A163456, the canonical program `A163456.P15399528921749741339` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163456 has offset 1).

The definition of A163456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163456.P13690067079325017916

`A163455(n+1)/4`
-/

namespace A163456.P13690067079325017916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163455 (n + 1) : ℚ) / 4

end

end A163456.P13690067079325017916

namespace A163456

/-- `A163455(n+1)/4` -/
def P13690067079325017916.Spec : Prop :=
  ∀ n, P13690067079325017916.a n = (A163456 (n + 1) : ℚ)

end A163456

/-! ## A163456.P15399528921749741339

`A001449(n+1)/5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163456

/-- `A001449(n+1)/5` -/
def P15399528921749741339.Spec : Prop :=
  ∀ n, P15399528921749741339.a n = (A163456 (n + 1) : ℚ)

end A163456

/-! ## A163456.P903898067559772555

`C(5*(n+1), n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163456.P903898067559772555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * (n + 1)) (n + 1) : ℚ) / 5

end

end A163456.P903898067559772555

namespace A163456

/-- `C(5*(n+1), n+1)/5` -/
def P903898067559772555.Spec : Prop :=
  ∀ n, P903898067559772555.a n = (A163456 (n + 1) : ℚ)

end A163456

/-! ## A163456.P18285131005527256264

`Δ[A024721(n)]`
-/

namespace A163456.P18285131005527256264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163456.P18285131005527256264

namespace A163456

/-- `Δ[A024721(n)]` -/
def P18285131005527256264.Spec : Prop :=
  ∀ n, P18285131005527256264.a n = A163456 (n + 1)

end A163456

/-! ## A163456.P10388364334408479229

`Δ[A225615(n)/5]`
-/

namespace A163456.P10388364334408479229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225615 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163456.P10388364334408479229

namespace A163456

/-- `Δ[A225615(n)/5]` -/
def P10388364334408479229.Spec : Prop :=
  ∀ n, P10388364334408479229.a n = (A163456 (n + 1) : ℚ)

end A163456

/-! ## A163456.P9798106992880773668

`A051052(5*n+4)`
-/

namespace A163456.P9798106992880773668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051052 (5 * n + 4)

end

end A163456.P9798106992880773668

namespace A163456

/-- `A051052(5*n+4)` -/
def P9798106992880773668.Spec : Prop :=
  ∀ n, P9798106992880773668.a n = A163456 (n + 1)

end A163456

/-! ## A163456.P6518679853560688508

`A024721(n+1)-A024721(n)`
-/

namespace A163456.P6518679853560688508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024721 (n + 1) - A024721 n

end

end A163456.P6518679853560688508

namespace A163456

/-- `A024721(n+1)-A024721(n)` -/
def P6518679853560688508.Spec : Prop :=
  ∀ n, P6518679853560688508.a n = A163456 (n + 1)

end A163456

/-! ## A163456.P8441018274408095633

`C(5*n+4, n)`
-/

namespace A163456.P8441018274408095633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n + 4) n

end

end A163456.P8441018274408095633

namespace A163456

/-- `C(5*n+4, n)` -/
def P8441018274408095633.Spec : Prop :=
  ∀ n, (P8441018274408095633.a n : ℤ) = A163456 (n + 1)

end A163456

/-! ## A163456.P2619269701729670105

`A109960(2*(n+1)²)`
-/

namespace A163456.P2619269701729670105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109960 (2 * (n + 1) ^ 2)

end

end A163456.P2619269701729670105

namespace A163456

/-- `A109960(2*(n+1)²)` -/
def P2619269701729670105.Spec : Prop :=
  ∀ n, P2619269701729670105.a n = A163456 (n + 1)

end A163456

/-! ## A163456.P16179425647812451557

`A119301(A001844(n+1))`
-/

namespace A163456.P16179425647812451557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (A001844 (n + 1)).toNat

end

end A163456.P16179425647812451557

namespace A163456

/-- `A119301(A001844(n+1))` -/
def P16179425647812451557.Spec : Prop :=
  ∀ n, P16179425647812451557.a n = A163456 (n + 1)

end A163456

/-!
# A163457: a(n) = the smallest divisor of n such that this and all greater divisors of n are non-coprime to each other.

The programs for A163457, there is no canonical definition to state claims against.
-/

/-! ## A163457.P3994771637363183981

`A212619(A313747(n)-n)+A006530(n+2)`
-/

namespace A163457.P3994771637363183981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A313747 n - (n : ℤ)).toNat + A006530 (n + 2)

end

end A163457.P3994771637363183981

/-! ## A163457.P10362303854650064151

`A118135(A216917(n+1))+A006530(n+2)`
-/

namespace A163457.P10362303854650064151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 (A216917 (n + 1)).toNat + A006530 (n + 2)

end

end A163457.P10362303854650064151

/-! ## A163457.P1669412934605590365

`A025492(A088387(n+2)^A293810(n+2))`
-/

namespace A163457.P1669412934605590365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (SequenceMachineLib.roundAway ((A088387 (n + 2) : ℚ) ^ (A293810 (n + 2) : ℤ))).toNat

end

end A163457.P1669412934605590365

/-! ## A163457.P9047881087829703376

`A025492(lcm(A088387(n+2), A290480(n+2)))`
-/

namespace A163457.P9047881087829703376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (Int.lcm (A088387 (n + 2)) (A290480 (n + 2)))

end

end A163457.P9047881087829703376

/-! ## A163457.P915553379624166454

`A033677(A033677(A033677(A056925(n+2))))`
-/

namespace A163457.P915553379624166454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A033677 (A033677 (A056925 (n + 2)).toNat).toNat).toNat

end

end A163457.P915553379624166454

/-!
# A163458: a(n) = 12*a(n-1) - 34*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A163458, the canonical program `A163458.P11274265927232736291` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163458 has offset 0).

The definition of A163458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-34*a(n-2)` (program `A163458.P11274265927232736291`, by `A163458.P11274265927232736291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163458.P7903661522683414799

`ogf((1-5x)/(1-12x+34x^2))`
-/

namespace A163458.P7903661522683414799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -12, 34] n

end

end A163458.P7903661522683414799

namespace A163458

/-- `ogf((1-5x)/(1-12x+34x^2))` -/
def P7903661522683414799.Spec : Prop :=
  ∀ n, P7903661522683414799.a n = A163458 n

end A163458

/-! ## A163458.P11274265927232736291

`12*a(n-1)-34*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163458

/-- `12*a(n-1)-34*a(n-2)` -/
def P11274265927232736291.Spec : Prop :=
  ∀ n, P11274265927232736291.a n = A163458 n

theorem P11274265927232736291.correct : P11274265927232736291.Spec := by
  intro n
  simp only [A163458]

end A163458

/-! ## A163458.P12120693425381634352

`((2+sqrt(2))*(6+sqrt(2))^n+(2-sqrt(2))*(6-sqrt(2))^n)/4`
-/

namespace A163458.P12120693425381634352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (6 + Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) * (6 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A163458.P12120693425381634352

namespace A163458

/-- `((2+sqrt(2))*(6+sqrt(2))^n+(2-sqrt(2))*(6-sqrt(2))^n)/4` -/
def P12120693425381634352.Spec : Prop :=
  ∀ n, P12120693425381634352.a n = (A163458 n : ℝ)

theorem P12120693425381634352.correct : P12120693425381634352.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163458, Nat.add_sub_cancel, A163458.P12120693425381634352.a, A163458.P11274265927232736291.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163458, Nat.add_sub_cancel, A163458.P12120693425381634352.a, A163458.P11274265927232736291.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163458

/-! ## A163458.P17388346614480335955

`A147957(n)+A081183(n)`
-/

namespace A163458.P17388346614480335955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147957 n + A081183 n

end

end A163458.P17388346614480335955

namespace A163458

/-- `A147957(n)+A081183(n)` -/
def P17388346614480335955.Spec : Prop :=
  ∀ n, P17388346614480335955.a n = A163458 n

end A163458

/-! ## A163458.P7112379881124600181

`A163444(n)-A081183(n)`
-/

namespace A163458.P7112379881124600181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163444 n - A081183 n

end

end A163458.P7112379881124600181

namespace A163458

/-- `A163444(n)-A081183(n)` -/
def P7112379881124600181.Spec : Prop :=
  ∀ n, P7112379881124600181.a n = A163458 n

end A163458

/-! ## A163458.P2299835717192682734

`A081183(n+1)-5*A081183(n)`
-/

namespace A163458.P2299835717192682734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081183 (n + 1) - 5 * A081183 n

end

end A163458.P2299835717192682734

namespace A163458

/-- `A081183(n+1)-5*A081183(n)` -/
def P2299835717192682734.Spec : Prop :=
  ∀ n, P2299835717192682734.a n = A163458 n

end A163458

/-!
# A163459: a(n) = 14*a(n-1) - 47*a(n-2) for n > 1; a(0) = 1, a(1) = 8.

The programs for A163459, the canonical program `A163459.P8719760387518041109` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163459 has offset 0).

The definition of A163459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-47*a(n-2)` (program `A163459.P8719760387518041109`, by `A163459.P8719760387518041109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163459.P6972688145459862057

`ogf((1-6x)/(1-14x+47x^2))`
-/

namespace A163459.P6972688145459862057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -14, 47] n

end

end A163459.P6972688145459862057

namespace A163459

/-- `ogf((1-6x)/(1-14x+47x^2))` -/
def P6972688145459862057.Spec : Prop :=
  ∀ n, P6972688145459862057.a n = A163459 n

end A163459

/-! ## A163459.P8719760387518041109

`14*a(n-1)-47*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163459

/-- `14*a(n-1)-47*a(n-2)` -/
def P8719760387518041109.Spec : Prop :=
  ∀ n, P8719760387518041109.a n = A163459 n

theorem P8719760387518041109.correct : P8719760387518041109.Spec := by
  intro n
  simp only [A163459]

end A163459

/-! ## A163459.P12970344889949767210

`((2+sqrt(2))*(7+sqrt(2))^n+(2-sqrt(2))*(7-sqrt(2))^n)/4`
-/

namespace A163459.P12970344889949767210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (7 + Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) * (7 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A163459.P12970344889949767210

namespace A163459

/-- `((2+sqrt(2))*(7+sqrt(2))^n+(2-sqrt(2))*(7-sqrt(2))^n)/4` -/
def P12970344889949767210.Spec : Prop :=
  ∀ n, P12970344889949767210.a n = (A163459 n : ℝ)

theorem P12970344889949767210.correct : P12970344889949767210.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163459, Nat.add_sub_cancel, A163459.P12970344889949767210.a, A163459.P8719760387518041109.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163459, Nat.add_sub_cancel, A163459.P12970344889949767210.a, A163459.P8719760387518041109.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163459

/-! ## A163459.P11992300481911028266

`A147958(n)+A081184(n)`
-/

namespace A163459.P11992300481911028266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147958 n + A081184 n

end

end A163459.P11992300481911028266

namespace A163459

/-- `A147958(n)+A081184(n)` -/
def P11992300481911028266.Spec : Prop :=
  ∀ n, P11992300481911028266.a n = A163459 n

end A163459

/-! ## A163459.P14827339240180354790

`A163445(n)-A081184(n)`
-/

namespace A163459.P14827339240180354790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163445 n - A081184 n

end

end A163459.P14827339240180354790

namespace A163459

/-- `A163445(n)-A081184(n)` -/
def P14827339240180354790.Spec : Prop :=
  ∀ n, P14827339240180354790.a n = A163459 n

end A163459

/-! ## A163459.P10639898356758986204

`A163413(n)-3*A081184(n)`
-/

namespace A163459.P10639898356758986204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163413 n - 3 * A081184 n

end

end A163459.P10639898356758986204

namespace A163459

/-- `A163413(n)-3*A081184(n)` -/
def P10639898356758986204.Spec : Prop :=
  ∀ n, P10639898356758986204.a n = A163459 n

end A163459

/-!
# A163460: a(n) = 16*a(n-1) - 62*a(n-2) for n > 1; a(0) = 1, a(1) = 9.

The programs for A163460, the canonical program `A163460.P4003811888878291305` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163460 has offset 0).

The definition of A163460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-62*a(n-2)` (program `A163460.P4003811888878291305`, by `A163460.P4003811888878291305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163460.P13328567755407982022

`ogf((1-7x)/(1-16x+62x^2))`
-/

namespace A163460.P13328567755407982022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -16, 62] n

end

end A163460.P13328567755407982022

namespace A163460

/-- `ogf((1-7x)/(1-16x+62x^2))` -/
def P13328567755407982022.Spec : Prop :=
  ∀ n, P13328567755407982022.a n = A163460 n

end A163460

/-! ## A163460.P4003811888878291305

`16*a(n-1)-62*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163460

/-- `16*a(n-1)-62*a(n-2)` -/
def P4003811888878291305.Spec : Prop :=
  ∀ n, P4003811888878291305.a n = A163460 n

theorem P4003811888878291305.correct : P4003811888878291305.Spec := by
  intro n
  simp only [A163460]

end A163460

/-! ## A163460.P11059261268331315949

`((2+sqrt(2))*(8+sqrt(2))^n+(2-sqrt(2))*(8-sqrt(2))^n)/4`
-/

namespace A163460.P11059261268331315949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (8 + Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) * (8 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A163460.P11059261268331315949

namespace A163460

/-- `((2+sqrt(2))*(8+sqrt(2))^n+(2-sqrt(2))*(8-sqrt(2))^n)/4` -/
def P11059261268331315949.Spec : Prop :=
  ∀ n, P11059261268331315949.a n = (A163460 n : ℝ)

theorem P11059261268331315949.correct : P11059261268331315949.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163460, Nat.add_sub_cancel, A163460.P11059261268331315949.a, A163460.P4003811888878291305.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163460, Nat.add_sub_cancel, A163460.P11059261268331315949.a, A163460.P4003811888878291305.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163460

/-! ## A163460.P18246981820567307552

`A147959(n)+A081185(n)`
-/

namespace A163460.P18246981820567307552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147959 n + A081185 n

end

end A163460.P18246981820567307552

namespace A163460

/-- `A147959(n)+A081185(n)` -/
def P18246981820567307552.Spec : Prop :=
  ∀ n, P18246981820567307552.a n = A163460 n

end A163460

/-! ## A163460.P2909850386853832228

`A163446(n)-A081185(n)`
-/

namespace A163460.P2909850386853832228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163446 n - A081185 n

end

end A163460.P2909850386853832228

namespace A163460

/-- `A163446(n)-A081185(n)` -/
def P2909850386853832228.Spec : Prop :=
  ∀ n, P2909850386853832228.a n = A163460 n

end A163460

/-! ## A163460.P1322058787533362089

`A163414(n)-3*A081185(n)`
-/

namespace A163460.P1322058787533362089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163414 n - 3 * A081185 n

end

end A163460.P1322058787533362089

namespace A163460

/-- `A163414(n)-3*A081185(n)` -/
def P1322058787533362089.Spec : Prop :=
  ∀ n, P1322058787533362089.a n = A163460 n

end A163460

/-!
# A163461: a(n) = 18*a(n-1) - 79*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A163461, the canonical program `A163461.P11245899650223842256` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163461 has offset 0).

The definition of A163461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-79*a(n-2)` (program `A163461.P11245899650223842256`, by `A163461.P11245899650223842256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163461.P10919446316717047348

`ogf((1-8x)/(1-18x+79x^2))`
-/

namespace A163461.P10919446316717047348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -18, 79] n

end

end A163461.P10919446316717047348

namespace A163461

/-- `ogf((1-8x)/(1-18x+79x^2))` -/
def P10919446316717047348.Spec : Prop :=
  ∀ n, P10919446316717047348.a n = A163461 n

end A163461

/-! ## A163461.P11245899650223842256

`18*a(n-1)-79*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163461

/-- `18*a(n-1)-79*a(n-2)` -/
def P11245899650223842256.Spec : Prop :=
  ∀ n, P11245899650223842256.a n = A163461 n

theorem P11245899650223842256.correct : P11245899650223842256.Spec := by
  intro n
  simp only [A163461]

end A163461

/-! ## A163461.P6075043036414110901

`(A163447(n)+A147960(n))/2`
-/

namespace A163461.P6075043036414110901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163447 n + A147960 n : ℚ) / 2

end

end A163461.P6075043036414110901

namespace A163461

/-- `(A163447(n)+A147960(n))/2` -/
def P6075043036414110901.Spec : Prop :=
  ∀ n, P6075043036414110901.a n = (A163461 n : ℚ)

end A163461

/-! ## A163461.P1636575786266965950

`((2+sqrt(2))*(sqrt(2)+9)^n+(2-sqrt(2))*(9-sqrt(2))^n)/4`
-/

namespace A163461.P1636575786266965950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 9) ^ n + (2 - Real.sqrt (2 : ℝ)) * (9 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A163461.P1636575786266965950

namespace A163461

/-- `((2+sqrt(2))*(sqrt(2)+9)^n+(2-sqrt(2))*(9-sqrt(2))^n)/4` -/
def P1636575786266965950.Spec : Prop :=
  ∀ n, P1636575786266965950.a n = (A163461 n : ℝ)

theorem P1636575786266965950.correct : P1636575786266965950.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163461, Nat.add_sub_cancel, A163461.P1636575786266965950.a, A163461.P11245899650223842256.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163461, Nat.add_sub_cancel, A163461.P1636575786266965950.a, A163461.P11245899650223842256.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163461

/-! ## A163461.P16809698322745514695

`A153593(n+1)+A147960(n)-A164600(n)`
-/

namespace A163461.P16809698322745514695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153593 (n + 1) + (A147960 n - A164600 n)

end

end A163461.P16809698322745514695

namespace A163461

/-- `A153593(n+1)+A147960(n)-A164600(n)` -/
def P16809698322745514695.Spec : Prop :=
  ∀ n, P16809698322745514695.a n = A163461 n

end A163461

/-! ## A163461.P17298344062775888077

`A163447(n)+A164600(n)-A153593(n+1)`
-/

namespace A163461.P17298344062775888077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163447 n + (A164600 n - A153593 (n + 1))

end

end A163461.P17298344062775888077

namespace A163461

/-- `A163447(n)+A164600(n)-A153593(n+1)` -/
def P17298344062775888077.Spec : Prop :=
  ∀ n, P17298344062775888077.a n = A163461 n

end A163461

/-!
# A163462: a(n) = 20*a(n-1) - 98*a(n-2) for n > 1; a(0) = 1, a(1) = 11.

The programs for A163462, the canonical program `A163462.P15367161813894609257` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163462 has offset 0).

The definition of A163462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-98*a(n-2)` (program `A163462.P15367161813894609257`, by `A163462.P15367161813894609257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163462.P16392353735356594451

`ogf((1-9x)/(1-20x+98x^2))`
-/

namespace A163462.P16392353735356594451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -20, 98] n

end

end A163462.P16392353735356594451

namespace A163462

/-- `ogf((1-9x)/(1-20x+98x^2))` -/
def P16392353735356594451.Spec : Prop :=
  ∀ n, P16392353735356594451.a n = A163462 n

end A163462

/-! ## A163462.P15367161813894609257

`20*a(n-1)-98*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163462

/-- `20*a(n-1)-98*a(n-2)` -/
def P15367161813894609257.Spec : Prop :=
  ∀ n, P15367161813894609257.a n = A163462 n

theorem P15367161813894609257.correct : P15367161813894609257.Spec := by
  intro n
  simp only [A163462]

end A163462

/-! ## A163462.P15586720874233387059

`((2+sqrt(2))*(10+sqrt(2))^n+(2-sqrt(2))*(10-sqrt(2))^n)/4`
-/

namespace A163462.P15586720874233387059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (10 + Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) * (10 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A163462.P15586720874233387059

namespace A163462

/-- `((2+sqrt(2))*(10+sqrt(2))^n+(2-sqrt(2))*(10-sqrt(2))^n)/4` -/
def P15586720874233387059.Spec : Prop :=
  ∀ n, P15586720874233387059.a n = (A163462 n : ℝ)

theorem P15586720874233387059.correct : P15586720874233387059.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163462, Nat.add_sub_cancel, A163462.P15586720874233387059.a, A163462.P15367161813894609257.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163462, Nat.add_sub_cancel, A163462.P15586720874233387059.a, A163462.P15367161813894609257.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163462

/-!
# A163463: a(1)=1. For n >= 2: If a(n-1) is coprime to n, then a(n) = the smallest integer > a(n-1) that is coprime to n. If a(n-1) is not coprime to n, then a(n) = the smallest integer > a(n-1) that is not coprime to n.

The programs for A163463, there is no canonical definition to state claims against.
-/

/-! ## A163463.P1937717539898262436

`∑[gcd(A018314(n+1), A023459(n))]`
-/

namespace A163463.P1937717539898262436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018314 (n + 1)) (A023459 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163463.P1937717539898262436

/-!
# A163464: Cumulative sum of a repeated shift-and-add operation on the base-7 representation of prime(n).

The programs for A163464, the canonical program `A163464.P1746648833047574952` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163464 has offset 1).

The definition of A163464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163464.P1746648833047574952

`A054896(Δ[A007504(n)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163464

/-- `A054896(Δ[A007504(n)])` -/
def P1746648833047574952.Spec : Prop :=
  ∀ n, P1746648833047574952.a n = A163464 (n + 1)

theorem P1746648833047574952.correct : P1746648833047574952.Spec := by
  intro n
  simp only [A163464, Nat.add_sub_cancel]

end A163464

/-! ## A163464.P5221358299543293765

`A054896(A000040(n+1))`
-/

namespace A163464.P5221358299543293765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A000040 (n + 1)).toNat

end

end A163464.P5221358299543293765

namespace A163464

/-- `A054896(A000040(n+1))` -/
def P5221358299543293765.Spec : Prop :=
  ∀ n, P5221358299543293765.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P4620812945402710897

`A054896(A006005(n+1))`
-/

namespace A163464.P4620812945402710897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A006005 (n + 1)).toNat

end

end A163464.P4620812945402710897

namespace A163464

/-- `A054896(A006005(n+1))` -/
def P4620812945402710897.Spec : Prop :=
  ∀ n, P4620812945402710897.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P18045653043878130120

`A054896(A161847(n+1))`
-/

namespace A163464.P18045653043878130120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A161847 (n + 1)).toNat

end

end A163464.P18045653043878130120

namespace A163464

/-- `A054896(A161847(n+1))` -/
def P18045653043878130120.Spec : Prop :=
  ∀ n, P18045653043878130120.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P16620815560630862601

`A054896(A171577(n+1))`
-/

namespace A163464.P16620815560630862601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A171577 (n + 1)).toNat

end

end A163464.P16620815560630862601

namespace A163464

/-- `A054896(A171577(n+1))` -/
def P16620815560630862601.Spec : Prop :=
  ∀ n, P16620815560630862601.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P17937623461093694791

`A054896(A318871(n+1))`
-/

namespace A163464.P17937623461093694791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A318871 (n + 1)).toNat

end

end A163464.P17937623461093694791

namespace A163464

/-- `A054896(A318871(n+1))` -/
def P17937623461093694791.Spec : Prop :=
  ∀ n, P17937623461093694791.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P9281623134227442601

`A054896(A008578(n+2))`
-/

namespace A163464.P9281623134227442601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A008578 (n + 2)).toNat

end

end A163464.P9281623134227442601

namespace A163464

/-- `A054896(A008578(n+2))` -/
def P9281623134227442601.Spec : Prop :=
  ∀ n, P9281623134227442601.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P9472250278192752651

`A054896(A075643(n+2))`
-/

namespace A163464.P9472250278192752651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A075643 (n + 2)).toNat

end

end A163464.P9472250278192752651

namespace A163464

/-- `A054896(A075643(n+2))` -/
def P9472250278192752651.Spec : Prop :=
  ∀ n, P9472250278192752651.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P18432964621918665227

`A054896(A175787(n+2))`
-/

namespace A163464.P18432964621918665227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A175787 (n + 2)).toNat

end

end A163464.P18432964621918665227

namespace A163464

/-- `A054896(A175787(n+2))` -/
def P18432964621918665227.Spec : Prop :=
  ∀ n, P18432964621918665227.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P9953166163531971635

`A054896(record[A006530(n+2)])`
-/

namespace A163464.P9953166163531971635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163464.P9953166163531971635

namespace A163464

/-- `A054896(record[A006530(n+2)])` -/
def P9953166163531971635.Spec : Prop :=
  ∀ n, P9953166163531971635.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P763710896824228892

`A054896(record[A014963(n+2)])`
-/

namespace A163464.P763710896824228892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163464.P763710896824228892

namespace A163464

/-- `A054896(record[A014963(n+2)])` -/
def P763710896824228892.Spec : Prop :=
  ∀ n, P763710896824228892.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P17256795139945249210

`A054896(record[A020639(n+2)])`
-/

namespace A163464.P17256795139945249210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163464.P17256795139945249210

namespace A163464

/-- `A054896(record[A020639(n+2)])` -/
def P17256795139945249210.Spec : Prop :=
  ∀ n, P17256795139945249210.a n = A163464 (n + 1)

end A163464

/-! ## A163464.P12621601627029541825

`A054896(A249428(n+2))`
-/

namespace A163464.P12621601627029541825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A249428 (n + 2)).toNat

end

end A163464.P12621601627029541825

namespace A163464

/-- `A054896(A249428(n+2))` -/
def P12621601627029541825.Spec : Prop :=
  ∀ n, P12621601627029541825.a n = A163464 (n + 1)

end A163464

/-!
# A163465: Permutation of the nonnegative integers moving primes to nonprime indices and nonprimes to prime indices.

The programs for A163465, there is no canonical definition to state claims against.
-/

/-! ## A163465.P18444085836279594261

`A163466(n)+A163638(n)-n`
-/

namespace A163465.P18444085836279594261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 n + (A163638 n - (n : ℤ))

end

end A163465.P18444085836279594261

/-! ## A163465.P1211154486452754239

`A163466(n)-lcm(A163638(n)-n, A284289(n))`
-/

namespace A163465.P1211154486452754239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 n - (Int.lcm (A163638 n - (n : ℤ)) (A284289 n) : ℤ)

end

end A163465.P1211154486452754239

/-!
# A163466: A permutation of two copies of the prime sequence, one moved to nonprime indices, the other to prime indices.

The programs for A163466, there is no canonical definition to state claims against.
-/

/-! ## A163466.P1587382368995098114

`p?[A137661(n+1)]`
-/

namespace A163466.P1587382368995098114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163466.P1587382368995098114

/-! ## A163466.P2311403869178827104

`A000040(A102885(n))`
-/

namespace A163466.P2311403869178827104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A102885 n).toNat

end

end A163466.P2311403869178827104

/-! ## A163466.P4145976666776987436

`A163465(A163638(n))`
-/

namespace A163466.P4145976666776987436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163465 (A163638 n).toNat

end

end A163466.P4145976666776987436

/-! ## A163466.P9542369765574276305

`A008578(A102885(n)+1)`
-/

namespace A163466.P9542369765574276305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A102885 n + 1).toNat

end

end A163466.P9542369765574276305

/-! ## A163466.P8962288230593864198

`A015919(A102885(n)+1)`
-/

namespace A163466.P8962288230593864198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A102885 n + 1).toNat

end

end A163466.P8962288230593864198

/-! ## A163466.P15341733316750060169

`A182986(A102885(n)+1)`
-/

namespace A163466.P15341733316750060169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A102885 n + 1).toNat

end

end A163466.P15341733316750060169

/-! ## A163466.P3776121299115212497

`A158611(A102885(n)+2)`
-/

namespace A163466.P3776121299115212497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A102885 n + 2).toNat

end

end A163466.P3776121299115212497

/-! ## A163466.P3248503022154288703

`A073846(2*A102885(n))`
-/

namespace A163466.P3248503022154288703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A102885 n).toNat

end

end A163466.P3248503022154288703

/-! ## A163466.P7387109288534577181

`A127639(2*A102885(n)²)`
-/

namespace A163466.P7387109288534577181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127639 (2 * A102885 n ^ 2).toNat

end

end A163466.P7387109288534577181

/-! ## A163466.P16219791499614230041

`filter[A137661(n+1), A010051(#)]`
-/

namespace A163466.P16219791499614230041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163466.P16219791499614230041

/-!
# A163467: a(n) = floor(p/2) * floor(floor(p/2)/2) * floor(floor(floor(p/2)/2)/2) * ... * 1, where p=prime(n).

The programs for A163467, the canonical program `A163467.P3610037260912299519` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163467 has offset 1).

The definition of A163467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163467.P3610037260912299519

`A098844(A130290(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163467

/-- `A098844(A130290(n+1))` -/
def P3610037260912299519.Spec : Prop :=
  ∀ n, P3610037260912299519.a n = A163467 (n + 1)

theorem P3610037260912299519.correct : P3610037260912299519.Spec := by
  intro n
  simp only [A163467, Nat.add_sub_cancel]

end A163467

/-! ## A163467.P6113708082657732187

`A098844(floor(A000040(n+1)/2))`
-/

namespace A163467.P6113708082657732187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat

end

end A163467.P6113708082657732187

namespace A163467

/-- `A098844(floor(A000040(n+1)/2))` -/
def P6113708082657732187.Spec : Prop :=
  ∀ n, P6113708082657732187.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P9000934306632384228

`A098844(A000010(A100484(n+1))/2)`
-/

namespace A163467.P9000934306632384228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (SequenceMachineLib.roundAway ((A000010 (A100484 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A163467.P9000934306632384228

namespace A163467

/-- `A098844(A000010(A100484(n+1))/2)` -/
def P9000934306632384228.Spec : Prop :=
  ∀ n, P9000934306632384228.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P1568563032005168033

`A098844(A004526(Δ[A007504(n)]))`
-/

namespace A163467.P1568563032005168033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A004526 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163467.P1568563032005168033

namespace A163467

/-- `A098844(A004526(Δ[A007504(n)]))` -/
def P1568563032005168033.Spec : Prop :=
  ∀ n, P1568563032005168033.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P635845437666144612

`A098844(A004526(p?[A014681(n)]))`
-/

namespace A163467.P635845437666144612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A163467.P635845437666144612

namespace A163467

/-- `A098844(A004526(p?[A014681(n)]))` -/
def P635845437666144612.Spec : Prop :=
  ∀ n, P635845437666144612.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P11926676850037691562

`A098844(A004525(A006093(n+1)))`
-/

namespace A163467.P11926676850037691562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A004525 (A006093 (n + 1)).toNat).toNat

end

end A163467.P11926676850037691562

namespace A163467

/-- `A098844(A004525(A006093(n+1)))` -/
def P11926676850037691562.Spec : Prop :=
  ∀ n, P11926676850037691562.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P12389455630988533863

`A098844(A057979(A000040(n+1)))`
-/

namespace A163467.P12389455630988533863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A057979 (A000040 (n + 1)).toNat).toNat

end

end A163467.P12389455630988533863

namespace A163467

/-- `A098844(A057979(A000040(n+1)))` -/
def P12389455630988533863.Spec : Prop :=
  ∀ n, P12389455630988533863.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P17168430652616855138

`A098844(A004525(record[A033879(n+1)]))`
-/

namespace A163467.P17168430652616855138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A163467.P17168430652616855138

namespace A163467

/-- `A098844(A004525(record[A033879(n+1)]))` -/
def P17168430652616855138.Spec : Prop :=
  ∀ n, P17168430652616855138.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P7918126398749012721

`A098844(A110654(record[A342415(n+1)]))`
-/

namespace A163467.P7918126398749012721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A163467.P7918126398749012721

namespace A163467

/-- `A098844(A110654(record[A342415(n+1)]))` -/
def P7918126398749012721.Spec : Prop :=
  ∀ n, P7918126398749012721.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P14783570887077902439

`A098844(A004526(p?[A045965(n+1)]))`
-/

namespace A163467.P14783570887077902439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A163467.P14783570887077902439

namespace A163467

/-- `A098844(A004526(p?[A045965(n+1)]))` -/
def P14783570887077902439.Spec : Prop :=
  ∀ n, P14783570887077902439.a n = A163467 (n + 1)

end A163467

/-! ## A163467.P1866391489049192396

`A098844(A004526(p?[A064413(n+1)]))`
-/

namespace A163467.P1866391489049192396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A163467.P1866391489049192396

namespace A163467

/-- `A098844(A004526(p?[A064413(n+1)]))` -/
def P1866391489049192396.Spec : Prop :=
  ∀ n, P1866391489049192396.a n = A163467 (n + 1)

end A163467

/-!
# A163468: Indices k such that half of the k-th nonprime nonnegative integer is prime.

The programs for A163468, the canonical program `A163468.P8406828026260451703` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163468 has offset 1).

The definition of A163468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163468.P8406828026260451703

`2+A065897(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163468

/-- `2+A065897(n+1)` -/
def P8406828026260451703.Spec : Prop :=
  ∀ n, P8406828026260451703.a n = A163468 (n + 1)

theorem P8406828026260451703.correct : P8406828026260451703.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel]

end A163468

/-! ## A163468.P3404524728420793505

`A120632(n+1)+1-n`
-/

namespace A163468.P3404524728420793505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + (1 - (n : ℤ))

end

end A163468.P3404524728420793505

namespace A163468

/-- `A120632(n+1)+1-n` -/
def P3404524728420793505.Spec : Prop :=
  ∀ n, P3404524728420793505.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P16888489761467256438

`A072055(n+1)-A020900(n+1)`
-/

namespace A163468.P16888489761467256438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A020900 (n + 1)

end

end A163468.P16888489761467256438

namespace A163468

/-- `A072055(n+1)-A020900(n+1)` -/
def P16888489761467256438.Spec : Prop :=
  ∀ n, P16888489761467256438.a n = A163468 (n + 1)

theorem P16888489761467256438.correct : P16888489761467256438.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel, A163468.P16888489761467256438.a, A163468.P8406828026260451703.a, A020900, A020900.P12967914466540950521.a, A065897, A065897.P7299211329886055703.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163468

/-! ## A163468.P7006085681374332324

`A100484(n+1)+1-A020900(n+1)`
-/

namespace A163468.P7006085681374332324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + (1 - A020900 (n + 1))

end

end A163468.P7006085681374332324

namespace A163468

/-- `A100484(n+1)+1-A020900(n+1)` -/
def P7006085681374332324.Spec : Prop :=
  ∀ n, P7006085681374332324.a n = A163468 (n + 1)

theorem P7006085681374332324.correct : P7006085681374332324.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel, A163468.P7006085681374332324.a, A163468.P8406828026260451703.a, A020900, A020900.P12967914466540950521.a, A065897, A065897.P7299211329886055703.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163468

/-! ## A163468.P12757488812395529825

`A001478(n+1)+A120632(n+1)+2`
-/

namespace A163468.P12757488812395529825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A120632 (n + 1) + 2)

end

end A163468.P12757488812395529825

namespace A163468

/-- `A001478(n+1)+A120632(n+1)+2` -/
def P12757488812395529825.Spec : Prop :=
  ∀ n, P12757488812395529825.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P14930314608208906368

`A014689(n+1)+A246514(n+1)+2`
-/

namespace A163468.P14930314608208906368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A246514 (n + 1) + 2)

end

end A163468.P14930314608208906368

namespace A163468

/-- `A014689(n+1)+A246514(n+1)+2` -/
def P14930314608208906368.Spec : Prop :=
  ∀ n, P14930314608208906368.a n = A163468 (n + 1)

theorem P14930314608208906368.correct : P14930314608208906368.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel, A163468.P14930314608208906368.a, A163468.P8406828026260451703.a, A014689, A014689.P6286543075765329050.a, A065897, A065897.P7299211329886055703.a, A246514, A246514.P626080667968607195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163468

/-! ## A163468.P2619001691032395261

`A239636(n+1)+A334051(n+1)+2`
-/

namespace A163468.P2619001691032395261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239636 (n + 1) + (A334051 (n + 1) + 2)

end

end A163468.P2619001691032395261

namespace A163468

/-- `A239636(n+1)+A334051(n+1)+2` -/
def P2619001691032395261.Spec : Prop :=
  ∀ n, P2619001691032395261.a n = A163468 (n + 1)

theorem P2619001691032395261.correct : P2619001691032395261.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel, A163468.P2619001691032395261.a, A163468.P8406828026260451703.a, A065897, A065897.P7299211329886055703.a, A239636, A239636.P9315992942707104834.a, A334051, A334051.P2829152517033935229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163468

/-! ## A163468.P15934235569963718066

`A134591(n+1)+2-A063124(n+1)`
-/

namespace A163468.P15934235569963718066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + (2 - A063124 (n + 1))

end

end A163468.P15934235569963718066

namespace A163468

/-- `A134591(n+1)+2-A063124(n+1)` -/
def P15934235569963718066.Spec : Prop :=
  ∀ n, P15934235569963718066.a n = A163468 (n + 1)

theorem P15934235569963718066.correct : P15934235569963718066.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel, A163468.P15934235569963718066.a, A163468.P8406828026260451703.a, A063124, A063124.P9970457058300728251.a, A065897, A065897.P7299211329886055703.a, A134591, A134591.P13784663667261059065.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163468

/-! ## A163468.P10069549946290968681

`A100484(n+1)-(A070046(n+1)+n)`
-/

namespace A163468.P10069549946290968681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (A070046 (n + 1) + (n : ℤ))

end

end A163468.P10069549946290968681

namespace A163468

/-- `A100484(n+1)-(A070046(n+1)+n)` -/
def P10069549946290968681.Spec : Prop :=
  ∀ n, P10069549946290968681.a n = A163468 (n + 1)

theorem P10069549946290968681.correct : P10069549946290968681.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel, A163468.P10069549946290968681.a, A163468.P8406828026260451703.a, A065897, A065897.P7299211329886055703.a, A070046, A070046.P5794988103684771228.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063124, A063124.P9970457058300728251.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163468

/-! ## A163468.P9135511809802087792

`A008864(n+1)+A246514(n+1)-n`
-/

namespace A163468.P9135511809802087792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A246514 (n + 1) - (n : ℤ))

end

end A163468.P9135511809802087792

namespace A163468

/-- `A008864(n+1)+A246514(n+1)-n` -/
def P9135511809802087792.Spec : Prop :=
  ∀ n, P9135511809802087792.a n = A163468 (n + 1)

theorem P9135511809802087792.correct : P9135511809802087792.Spec := by
  intro n
  simp only [A163468, Nat.add_sub_cancel, A163468.P9135511809802087792.a, A163468.P8406828026260451703.a, A008864, A008864.P9177617808325052279.a, A065897, A065897.P7299211329886055703.a, A246514, A246514.P626080667968607195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163468

/-! ## A163468.P12200396528328101312

`A305800(A100484(n+1))`
-/

namespace A163468.P12200396528328101312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A100484 (n + 1)).toNat

end

end A163468.P12200396528328101312

namespace A163468

/-- `A305800(A100484(n+1))` -/
def P12200396528328101312.Spec : Prop :=
  ∀ n, P12200396528328101312.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P4491675594594445185

`A305800(A001747(n+2))`
-/

namespace A163468.P4491675594594445185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A001747 (n + 2)).toNat

end

end A163468.P4491675594594445185

namespace A163468

/-- `A305800(A001747(n+2))` -/
def P4491675594594445185.Spec : Prop :=
  ∀ n, P4491675594594445185.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P1749943005806514703

`A305800(2*A000040(n+1))`
-/

namespace A163468.P1749943005806514703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * A000040 (n + 1)).toNat

end

end A163468.P1749943005806514703

namespace A163468

/-- `A305800(2*A000040(n+1))` -/
def P1749943005806514703.Spec : Prop :=
  ∀ n, P1749943005806514703.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P15238914702975523765

`A305800(record[2*A020639(n+2)])`
-/

namespace A163468.P15238914702975523765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163468.P15238914702975523765

namespace A163468

/-- `A305800(record[2*A020639(n+2)])` -/
def P15238914702975523765.Spec : Prop :=
  ∀ n, P15238914702975523765.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P14090327584924123167

`A305801(2*A000040(n+1))-1`
-/

namespace A163468.P14090327584924123167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (2 * A000040 (n + 1)).toNat - 1

end

end A163468.P14090327584924123167

namespace A163468

/-- `A305801(2*A000040(n+1))-1` -/
def P14090327584924123167.Spec : Prop :=
  ∀ n, P14090327584924123167.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P15708811349283150698

`A305800(record[2*p?[A305800(n+1)]])`
-/

namespace A163468.P15708811349283150698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163468.P15708811349283150698

namespace A163468

/-- `A305800(record[2*p?[A305800(n+1)]])` -/
def P15708811349283150698.Spec : Prop :=
  ∀ n, P15708811349283150698.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P5928841551919102479

`A065896(A008578(n+2))+2`
-/

namespace A163468.P5928841551919102479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A008578 (n + 2)).toNat + 2

end

end A163468.P5928841551919102479

namespace A163468

/-- `A065896(A008578(n+2))+2` -/
def P5928841551919102479.Spec : Prop :=
  ∀ n, P5928841551919102479.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P929020634964070324

`A065896(A182986(n+2))+2`
-/

namespace A163468.P929020634964070324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (A182986 (n + 2)).toNat + 2

end

end A163468.P929020634964070324

namespace A163468

/-- `A065896(A182986(n+2))+2` -/
def P929020634964070324.Spec : Prop :=
  ∀ n, P929020634964070324.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P8875188097541825205

`A065896(record[A006530(n+2)])+2`
-/

namespace A163468.P8875188097541825205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A163468.P8875188097541825205

namespace A163468

/-- `A065896(record[A006530(n+2)])+2` -/
def P8875188097541825205.Spec : Prop :=
  ∀ n, P8875188097541825205.a n = A163468 (n + 1)

end A163468

/-! ## A163468.P4828414469191755930

`A009056(A065897(n+1))`
-/

namespace A163468.P4828414469191755930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A065897 (n + 1)).toNat

end

end A163468.P4828414469191755930

namespace A163468

/-- `A009056(A065897(n+1))` -/
def P4828414469191755930.Spec : Prop :=
  ∀ n, P4828414469191755930.a n = A163468 (n + 1)

end A163468

/-!
# A163469: a(n) = A055496(n+1) - 2*A055496(n).

The programs for A163469, the canonical program `A163469.P14699532169806829517` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163469 has offset 1).

The definition of A163469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163469.P14699532169806829517

`A055496(n+2)-2*A055496(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163469

/-- `A055496(n+2)-2*A055496(n+1)` -/
def P14699532169806829517.Spec : Prop :=
  ∀ n, P14699532169806829517.a n = A163469 (n + 1)

theorem P14699532169806829517.correct : P14699532169806829517.Spec := by
  intro n
  simp only [A163469, Nat.add_sub_cancel]

end A163469

/-! ## A163469.P4126938922485274365

`A055496(n+2)%A055496(n+1)`
-/

namespace A163469.P4126938922485274365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055496 (n + 2)) (A055496 (n + 1))

end

end A163469.P4126938922485274365

namespace A163469

/-- `A055496(n+2)%A055496(n+1)` -/
def P4126938922485274365.Spec : Prop :=
  ∀ n, P4126938922485274365.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P12499697056949694296

`A000265(Δ[A055496(n+1)]-A055496(n+1))`
-/

namespace A163469.P12499697056949694296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n - A055496 (n + 1)).toNat

end

end A163469.P12499697056949694296

namespace A163469

/-- `A000265(Δ[A055496(n+1)]-A055496(n+1))` -/
def P12499697056949694296.Spec : Prop :=
  ∀ n, P12499697056949694296.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P18264633251110518037

`Δ[A055496(n+1)]-A083005(A207890(n+1)+1)`
-/

namespace A163469.P18264633251110518037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083005 (A207890 (n + 1) + 1).toNat

end

end A163469.P18264633251110518037

namespace A163469

/-- `Δ[A055496(n+1)]-A083005(A207890(n+1)+1)` -/
def P18264633251110518037.Spec : Prop :=
  ∀ n, P18264633251110518037.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P4032298900661145299

`Δ[A055496(n+1)]-A163963(A207890(n+1)+n+1)`
-/

namespace A163469.P4032298900661145299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163963 (A207890 (n + 1) + (n + 1 : ℤ)).toNat

end

end A163469.P4032298900661145299

namespace A163469

/-- `Δ[A055496(n+1)]-A163963(A207890(n+1)+n+1)` -/
def P4032298900661145299.Spec : Prop :=
  ∀ n, P4032298900661145299.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P3348319942096100168

`Δ[A207890(n+1)]`
-/

namespace A163469.P3348319942096100168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163469.P3348319942096100168

namespace A163469

/-- `Δ[A207890(n+1)]` -/
def P3348319942096100168.Spec : Prop :=
  ∀ n, P3348319942096100168.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P16844267499954240232

`abs(Δ[A207890(-xor(n, -1))])`
-/

namespace A163469.P16844267499954240232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163469.P16844267499954240232

namespace A163469

/-- `abs(Δ[A207890(-xor(n, -1))])` -/
def P16844267499954240232.Spec : Prop :=
  ∀ n, P16844267499954240232.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P17482551784031080958

`abs(Δ[A207890(2*n-(n-1))])`
-/

namespace A163469.P17482551784031080958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163469.P17482551784031080958

namespace A163469

/-- `abs(Δ[A207890(2*n-(n-1))])` -/
def P17482551784031080958.Spec : Prop :=
  ∀ n, P17482551784031080958.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P6011951059833059004

`Δ[record[A207890(A008611(n))]]`
-/

namespace A163469.P6011951059833059004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163469.P6011951059833059004

namespace A163469

/-- `Δ[record[A207890(A008611(n))]]` -/
def P6011951059833059004.Spec : Prop :=
  ∀ n, P6011951059833059004.a n = A163469 (n + 1)

end A163469

/-! ## A163469.P15431823589649551441

`Δ[record[A207890(A134478(n))]]`
-/

namespace A163469.P15431823589649551441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163469.P15431823589649551441

namespace A163469

/-- `Δ[record[A207890(A134478(n))]]` -/
def P15431823589649551441.Spec : Prop :=
  ∀ n, P15431823589649551441.a n = A163469 (n + 1)

end A163469

/-!
# A163470: a(n) = 8*a(n-1) - 13*a(n-2) for n > 1; a(0) = 3, a(1) = 15.

The programs for A163470, the canonical program `A163470.P16832419038858848767` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163470 has offset 0).

The definition of A163470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-13*a(n-2)` (program `A163470.P16832419038858848767`, by `A163470.P16832419038858848767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163470.P9258010649501578789

`ogf((3-9x)/(1-8x+13x^2))`
-/

namespace A163470.P9258010649501578789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9] [1, -8, 13] n

end

end A163470.P9258010649501578789

namespace A163470

/-- `ogf((3-9x)/(1-8x+13x^2))` -/
def P9258010649501578789.Spec : Prop :=
  ∀ n, P9258010649501578789.a n = A163470 n

end A163470

/-! ## A163470.P16832419038858848767

`8*a(n-1)-13*a(n-2)` with `a(0)=3, a(1)=15`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163470

/-- `8*a(n-1)-13*a(n-2)` -/
def P16832419038858848767.Spec : Prop :=
  ∀ n, P16832419038858848767.a n = A163470 n

theorem P16832419038858848767.correct : P16832419038858848767.Spec := by
  intro n
  simp only [A163470]

end A163470

/-! ## A163470.P11601878285803111325

`3*A162557(n)`
-/

namespace A163470.P11601878285803111325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162557 n

end

end A163470.P11601878285803111325

namespace A163470

/-- `3*A162557(n)` -/
def P11601878285803111325.Spec : Prop :=
  ∀ n, P11601878285803111325.a n = A163470 n

end A163470

/-! ## A163470.P6693665602907498707

`Δ[A083882(n)]`
-/

namespace A163470.P6693665602907498707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163470.P6693665602907498707

namespace A163470

/-- `Δ[A083882(n)]` -/
def P6693665602907498707.Spec : Prop :=
  ∀ n, P6693665602907498707.a n = A163470 n

end A163470

/-! ## A163470.P37462630949387226

`∑[3*A136777(n+1)]`
-/

namespace A163470.P37462630949387226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A136777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163470.P37462630949387226

namespace A163470

/-- `∑[3*A136777(n+1)]` -/
def P37462630949387226.Spec : Prop :=
  ∀ n, P37462630949387226.a n = A163470 n

end A163470

/-! ## A163470.P13172118607827451058

`A083882(n+1)-A083882(n)`
-/

namespace A163470.P13172118607827451058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083882 (n + 1) - A083882 n

end

end A163470.P13172118607827451058

namespace A163470

/-- `A083882(n+1)-A083882(n)` -/
def P13172118607827451058.Spec : Prop :=
  ∀ n, P13172118607827451058.a n = A163470 n

end A163470

/-! ## A163470.P2016893312084519293

`A161728(n)+2*A083882(n)`
-/

namespace A163470.P2016893312084519293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n + 2 * A083882 n

end

end A163470.P2016893312084519293

namespace A163470

/-- `A161728(n)+2*A083882(n)` -/
def P2016893312084519293.Spec : Prop :=
  ∀ n, P2016893312084519293.a n = A163470 n

end A163470

/-! ## A163470.P14836836704016915641

`2*A162274(n)-A161728(n)`
-/

namespace A163470.P14836836704016915641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162274 n - A161728 n

end

end A163470.P14836836704016915641

namespace A163470

/-- `2*A162274(n)-A161728(n)` -/
def P14836836704016915641.Spec : Prop :=
  ∀ n, P14836836704016915641.a n = A163470 n

end A163470

/-! ## A163470.P15949984373135393699

`Δ[A136784(n+1)+A136784(n+1)/2]`
-/

namespace A163470.P15949984373135393699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136784 (n + 1) : ℚ) + (A136784 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163470.P15949984373135393699

namespace A163470

/-- `Δ[A136784(n+1)+A136784(n+1)/2]` -/
def P15949984373135393699.Spec : Prop :=
  ∀ n, P15949984373135393699.a n = (A163470 n : ℚ)

end A163470

/-! ## A163470.P13210733645726943921

`((3+sqrt(3))*(sqrt(3)+4)^n+(3-sqrt(3))*(4-sqrt(3))^n)/2`
-/

namespace A163470.P13210733645726943921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 4) ^ n + (3 - Real.sqrt (3 : ℝ)) * (4 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A163470.P13210733645726943921

namespace A163470

/-- `((3+sqrt(3))*(sqrt(3)+4)^n+(3-sqrt(3))*(4-sqrt(3))^n)/2` -/
def P13210733645726943921.Spec : Prop :=
  ∀ n, P13210733645726943921.a n = (A163470 n : ℝ)

theorem P13210733645726943921.correct : P13210733645726943921.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163470, Nat.add_sub_cancel, A163470.P13210733645726943921.a, A163470.P16832419038858848767.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163470, Nat.add_sub_cancel, A163470.P13210733645726943921.a, A163470.P16832419038858848767.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163470

/-! ## A163470.P372640783150537850

`Δ[2*A161727(n)-A153594(n+1)]`
-/

namespace A163470.P372640783150537850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161727 n - A153594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163470.P372640783150537850

namespace A163470

/-- `Δ[2*A161727(n)-A153594(n+1)]` -/
def P372640783150537850.Spec : Prop :=
  ∀ n, P372640783150537850.a n = A163470 n

end A163470

/-!
# A163471: a(n) = 10*a(n-1) - 22*a(n-2) for n > 1; a(0) = 3, a(1) = 18.

The programs for A163471, the canonical program `A163471.P5787975317206011047` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163471 has offset 0).

The definition of A163471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-22*a(n-2)` (program `A163471.P5787975317206011047`, by `A163471.P5787975317206011047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163471.P6551572719605008155

`ogf((3-12x)/(1-10x+22x^2))`
-/

namespace A163471.P6551572719605008155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -12] [1, -10, 22] n

end

end A163471.P6551572719605008155

namespace A163471

/-- `ogf((3-12x)/(1-10x+22x^2))` -/
def P6551572719605008155.Spec : Prop :=
  ∀ n, P6551572719605008155.a n = A163471 n

end A163471

/-! ## A163471.P5787975317206011047

`10*a(n-1)-22*a(n-2)` with `a(0)=3, a(1)=18`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163471

/-- `10*a(n-1)-22*a(n-2)` -/
def P5787975317206011047.Spec : Prop :=
  ∀ n, P5787975317206011047.a n = A163471 n

theorem P5787975317206011047.correct : P5787975317206011047.Spec := by
  intro n
  simp only [A163471]

end A163471

/-! ## A163471.P6314786450198182413

`3*A162558(n)`
-/

namespace A163471.P6314786450198182413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162558 n

end

end A163471.P6314786450198182413

namespace A163471

/-- `3*A162558(n)` -/
def P6314786450198182413.Spec : Prop :=
  ∀ n, P6314786450198182413.a n = A163471 n

end A163471

/-! ## A163471.P4476778125108858251

`A162275(n)+A143647(n)`
-/

namespace A163471.P4476778125108858251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162275 n + A143647 n

end

end A163471.P4476778125108858251

namespace A163471

/-- `A162275(n)+A143647(n)` -/
def P4476778125108858251.Spec : Prop :=
  ∀ n, P4476778125108858251.a n = A163471 n

end A163471

/-! ## A163471.P12349367293534730600

`A162561(n)-A143647(n)`
-/

namespace A163471.P12349367293534730600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162561 n - A143647 n

end

end A163471.P12349367293534730600

namespace A163471

/-- `A162561(n)-A143647(n)` -/
def P12349367293534730600.Spec : Prop :=
  ∀ n, P12349367293534730600.a n = A163471 n

end A163471

/-! ## A163471.P9663863843963543129

`A162272(n)+2*A143647(n)`
-/

namespace A163471.P9663863843963543129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162272 n + 2 * A143647 n

end

end A163471.P9663863843963543129

namespace A163471

/-- `A162272(n)+2*A143647(n)` -/
def P9663863843963543129.Spec : Prop :=
  ∀ n, P9663863843963543129.a n = A163471 n

end A163471

/-! ## A163471.P4050110417923034697

`2*A162275(n)-A162272(n)`
-/

namespace A163471.P4050110417923034697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162275 n - A162272 n

end

end A163471.P4050110417923034697

namespace A163471

/-- `2*A162275(n)-A162272(n)` -/
def P4050110417923034697.Spec : Prop :=
  ∀ n, P4050110417923034697.a n = A163471 n

end A163471

/-! ## A163471.P14392020024572095345

`((3+sqrt(3))*(sqrt(3)+5)^n+(3-sqrt(3))*(5-sqrt(3))^n)/2`
-/

namespace A163471.P14392020024572095345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 5) ^ n + (3 - Real.sqrt (3 : ℝ)) * (5 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A163471.P14392020024572095345

namespace A163471

/-- `((3+sqrt(3))*(sqrt(3)+5)^n+(3-sqrt(3))*(5-sqrt(3))^n)/2` -/
def P14392020024572095345.Spec : Prop :=
  ∀ n, P14392020024572095345.a n = (A163471 n : ℝ)

theorem P14392020024572095345.correct : P14392020024572095345.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163471, Nat.add_sub_cancel, A163471.P14392020024572095345.a, A163471.P5787975317206011047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163471, Nat.add_sub_cancel, A163471.P14392020024572095345.a, A163471.P5787975317206011047.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163471

/-!
# A163472: a(n) = 12*a(n-1) - 33*a(n-2) for n > 1; a(0) = 3, a(1) = 21.

The programs for A163472, the canonical program `A163472.P10531766251739439875` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163472 has offset 0).

The definition of A163472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-33*a(n-2)` (program `A163472.P10531766251739439875`, by `A163472.P10531766251739439875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163472.P4683651121520760589

`ogf((3-15x)/(1-12x+33x^2))`
-/

namespace A163472.P4683651121520760589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -15] [1, -12, 33] n

end

end A163472.P4683651121520760589

namespace A163472

/-- `ogf((3-15x)/(1-12x+33x^2))` -/
def P4683651121520760589.Spec : Prop :=
  ∀ n, P4683651121520760589.a n = A163472 n

end A163472

/-! ## A163472.P10531766251739439875

`12*a(n-1)-33*a(n-2)` with `a(0)=3, a(1)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163472

/-- `12*a(n-1)-33*a(n-2)` -/
def P10531766251739439875.Spec : Prop :=
  ∀ n, P10531766251739439875.a n = A163472 n

theorem P10531766251739439875.correct : P10531766251739439875.Spec := by
  intro n
  simp only [A163472]

end A163472

/-! ## A163472.P12802995289851538845

`3*A162757(n)`
-/

namespace A163472.P12802995289851538845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162757 n

end

end A163472.P12802995289851538845

namespace A163472

/-- `3*A162757(n)` -/
def P12802995289851538845.Spec : Prop :=
  ∀ n, P12802995289851538845.a n = A163472 n

end A163472

/-! ## A163472.P13131767550281345455

`A164311(n)-A147961(n)`
-/

namespace A163472.P13131767550281345455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164311 n - A147961 n

end

end A163472.P13131767550281345455

namespace A163472

/-- `A164311(n)-A147961(n)` -/
def P13131767550281345455.Spec : Prop :=
  ∀ n, P13131767550281345455.a n = A163472 n

end A163472

/-! ## A163472.P16006857513974400735

`((3+sqrt(3))*(sqrt(3)+6)^n+(3-sqrt(3))*(6-sqrt(3))^n)/2`
-/

namespace A163472.P16006857513974400735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 6) ^ n + (3 - Real.sqrt (3 : ℝ)) * (6 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A163472.P16006857513974400735

namespace A163472

/-- `((3+sqrt(3))*(sqrt(3)+6)^n+(3-sqrt(3))*(6-sqrt(3))^n)/2` -/
def P16006857513974400735.Spec : Prop :=
  ∀ n, P16006857513974400735.a n = (A163472 n : ℝ)

theorem P16006857513974400735.correct : P16006857513974400735.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163472, Nat.add_sub_cancel, A163472.P16006857513974400735.a, A163472.P10531766251739439875.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163472, Nat.add_sub_cancel, A163472.P16006857513974400735.a, A163472.P10531766251739439875.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163472

/-! ## A163472.P6782118372394107882

`A162816(n)-2*A147961(n)`
-/

namespace A163472.P6782118372394107882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162816 n - 2 * A147961 n

end

end A163472.P6782118372394107882

namespace A163472

/-- `A162816(n)-2*A147961(n)` -/
def P6782118372394107882.Spec : Prop :=
  ∀ n, P6782118372394107882.a n = A163472 n

end A163472

/-! ## A163472.P6394779753090515475

`2*A164311(n)-A162816(n)`
-/

namespace A163472.P6394779753090515475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164311 n - A162816 n

end

end A163472.P6394779753090515475

namespace A163472

/-- `2*A164311(n)-A162816(n)` -/
def P6394779753090515475.Spec : Prop :=
  ∀ n, P6394779753090515475.a n = A163472 n

end A163472

/-! ## A163472.P4541455998125810366

`Δ[A147961(n+1)/11]`
-/

namespace A163472.P4541455998125810366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147961 (n + 1) : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163472.P4541455998125810366

namespace A163472

/-- `Δ[A147961(n+1)/11]` -/
def P4541455998125810366.Spec : Prop :=
  ∀ n, P4541455998125810366.a n = (A163472 n : ℚ)

end A163472

/-!
# A163473: a(n) = 14*a(n-1) - 46*a(n-2) for n > 1; a(0) = 3, a(1) = 24.

The programs for A163473, the canonical program `A163473.P2597354084341131559` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163473 has offset 0).

The definition of A163473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-46*a(n-2)` (program `A163473.P2597354084341131559`, by `A163473.P2597354084341131559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163473.P10633189364776862665

`ogf((3-18x)/(1-14x+46x^2))`
-/

namespace A163473.P10633189364776862665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -18] [1, -14, 46] n

end

end A163473.P10633189364776862665

namespace A163473

/-- `ogf((3-18x)/(1-14x+46x^2))` -/
def P10633189364776862665.Spec : Prop :=
  ∀ n, P10633189364776862665.a n = A163473 n

end A163473

/-! ## A163473.P2597354084341131559

`14*a(n-1)-46*a(n-2)` with `a(0)=3, a(1)=24`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163473

/-- `14*a(n-1)-46*a(n-2)` -/
def P2597354084341131559.Spec : Prop :=
  ∀ n, P2597354084341131559.a n = A163473 n

theorem P2597354084341131559.correct : P2597354084341131559.Spec := by
  intro n
  simp only [A163473]

end A163473

/-! ## A163473.P5998850193852811009

`((3+sqrt(3))*(sqrt(3)+7)^n+(3-sqrt(3))*(7-sqrt(3))^n)/2`
-/

namespace A163473.P5998850193852811009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 7) ^ n + (3 - Real.sqrt (3 : ℝ)) * (7 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A163473.P5998850193852811009

namespace A163473

/-- `((3+sqrt(3))*(sqrt(3)+7)^n+(3-sqrt(3))*(7-sqrt(3))^n)/2` -/
def P5998850193852811009.Spec : Prop :=
  ∀ n, P5998850193852811009.a n = (A163473 n : ℝ)

theorem P5998850193852811009.correct : P5998850193852811009.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163473, Nat.add_sub_cancel, A163473.P5998850193852811009.a, A163473.P2597354084341131559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163473, Nat.add_sub_cancel, A163473.P5998850193852811009.a, A163473.P2597354084341131559.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163473

/-! ## A163473.P361694729427156795

`3*A162758(n)`
-/

namespace A163473.P361694729427156795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162758 n

end

end A163473.P361694729427156795

namespace A163473

/-- `3*A162758(n)` -/
def P361694729427156795.Spec : Prop :=
  ∀ n, P361694729427156795.a n = A163473 n

end A163473

/-!
# A163474: a(n) = 16*a(n-1) - 61*a(n-2) for n > 1; a(0) = 3, a(1) = 27.

The programs for A163474, the canonical program `A163474.P5814834301482458453` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163474 has offset 0).

The definition of A163474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-61*a(n-2)` (program `A163474.P5814834301482458453`, by `A163474.P5814834301482458453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163474.P6427766135009719598

`ogf((3-21x)/(1-16x+61x^2))`
-/

namespace A163474.P6427766135009719598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -21] [1, -16, 61] n

end

end A163474.P6427766135009719598

namespace A163474

/-- `ogf((3-21x)/(1-16x+61x^2))` -/
def P6427766135009719598.Spec : Prop :=
  ∀ n, P6427766135009719598.a n = A163474 n

end A163474

/-! ## A163474.P5814834301482458453

`16*a(n-1)-61*a(n-2)` with `a(0)=3, a(1)=27`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163474

/-- `16*a(n-1)-61*a(n-2)` -/
def P5814834301482458453.Spec : Prop :=
  ∀ n, P5814834301482458453.a n = A163474 n

theorem P5814834301482458453.correct : P5814834301482458453.Spec := by
  intro n
  simp only [A163474]

end A163474

/-! ## A163474.P11246110569748030909

`((3+sqrt(3))*(sqrt(3)+8)^n+(3-sqrt(3))*(8-sqrt(3))^n)/2`
-/

namespace A163474.P11246110569748030909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 8) ^ n + (3 - Real.sqrt (3 : ℝ)) * (8 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A163474.P11246110569748030909

namespace A163474

/-- `((3+sqrt(3))*(sqrt(3)+8)^n+(3-sqrt(3))*(8-sqrt(3))^n)/2` -/
def P11246110569748030909.Spec : Prop :=
  ∀ n, P11246110569748030909.a n = (A163474 n : ℝ)

theorem P11246110569748030909.correct : P11246110569748030909.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163474, Nat.add_sub_cancel, A163474.P11246110569748030909.a, A163474.P5814834301482458453.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163474, Nat.add_sub_cancel, A163474.P11246110569748030909.a, A163474.P5814834301482458453.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163474

/-! ## A163474.P4623171331503266802

`3*A162759(n)`
-/

namespace A163474.P4623171331503266802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162759 n

end

end A163474.P4623171331503266802

namespace A163474

/-- `3*A162759(n)` -/
def P4623171331503266802.Spec : Prop :=
  ∀ n, P4623171331503266802.a n = A163474 n

end A163474

/-!
# A163475: a(n) = 18*a(n-1) - 78*a(n-2) for n > 1; a(0) = 3, a(1) = 30.

The programs for A163475, the canonical program `A163475.P275340952828536663` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163475 has offset 0).

The definition of A163475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-78*a(n-2)` (program `A163475.P275340952828536663`, by `A163475.P275340952828536663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163475.P18394269013603954649

`ogf((3-24x)/(1-18x+78x^2))`
-/

namespace A163475.P18394269013603954649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -24] [1, -18, 78] n

end

end A163475.P18394269013603954649

namespace A163475

/-- `ogf((3-24x)/(1-18x+78x^2))` -/
def P18394269013603954649.Spec : Prop :=
  ∀ n, P18394269013603954649.a n = A163475 n

end A163475

/-! ## A163475.P275340952828536663

`18*a(n-1)-78*a(n-2)` with `a(0)=3, a(1)=30`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163475

/-- `18*a(n-1)-78*a(n-2)` -/
def P275340952828536663.Spec : Prop :=
  ∀ n, P275340952828536663.a n = A163475 n

theorem P275340952828536663.correct : P275340952828536663.Spec := by
  intro n
  simp only [A163475]

end A163475

/-! ## A163475.P10968381095143951358

`((3+sqrt(3))*(9+sqrt(3))^n+(3-sqrt(3))*(9-sqrt(3))^n)/2`
-/

namespace A163475.P10968381095143951358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (9 + Real.sqrt (3 : ℝ)) ^ n + (3 - Real.sqrt (3 : ℝ)) * (9 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A163475.P10968381095143951358

namespace A163475

/-- `((3+sqrt(3))*(9+sqrt(3))^n+(3-sqrt(3))*(9-sqrt(3))^n)/2` -/
def P10968381095143951358.Spec : Prop :=
  ∀ n, P10968381095143951358.a n = (A163475 n : ℝ)

theorem P10968381095143951358.correct : P10968381095143951358.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163475, Nat.add_sub_cancel, A163475.P10968381095143951358.a, A163475.P275340952828536663.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163475, Nat.add_sub_cancel, A163475.P10968381095143951358.a, A163475.P275340952828536663.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163475

/-!
# A163476: a(n) = 20*a(n-1) - 97*a(n-2) for n > 1; a(0) = 3, a(1) = 33.

The programs for A163476, the canonical program `A163476.P7149638255034491720` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163476 has offset 0).

The definition of A163476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-97*a(n-2)` (program `A163476.P7149638255034491720`, by `A163476.P7149638255034491720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163476.P343242500157672682

`ogf((3-27x)/(1-20x+97x^2))`
-/

namespace A163476.P343242500157672682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -27] [1, -20, 97] n

end

end A163476.P343242500157672682

namespace A163476

/-- `ogf((3-27x)/(1-20x+97x^2))` -/
def P343242500157672682.Spec : Prop :=
  ∀ n, P343242500157672682.a n = A163476 n

end A163476

/-! ## A163476.P7149638255034491720

`20*a(n-1)-97*a(n-2)` with `a(0)=3, a(1)=33`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A163476

/-- `20*a(n-1)-97*a(n-2)` -/
def P7149638255034491720.Spec : Prop :=
  ∀ n, P7149638255034491720.a n = A163476 n

theorem P7149638255034491720.correct : P7149638255034491720.Spec := by
  intro n
  simp only [A163476]

end A163476

/-! ## A163476.P3147544868430015591

`((3+sqrt(3))*(sqrt(3)+10)^n+(3-sqrt(3))*(10-sqrt(3))^n)/2`
-/

namespace A163476.P3147544868430015591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 10) ^ n + (3 - Real.sqrt (3 : ℝ)) * (10 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A163476.P3147544868430015591

namespace A163476

/-- `((3+sqrt(3))*(sqrt(3)+10)^n+(3-sqrt(3))*(10-sqrt(3))^n)/2` -/
def P3147544868430015591.Spec : Prop :=
  ∀ n, P3147544868430015591.a n = (A163476 n : ℝ)

theorem P3147544868430015591.correct : P3147544868430015591.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163476, Nat.add_sub_cancel, A163476.P3147544868430015591.a, A163476.P7149638255034491720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163476, Nat.add_sub_cancel, A163476.P3147544868430015591.a, A163476.P7149638255034491720.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163476

/-!
# A163477: Row sums of A163357 and A163359 divided by 4.

The programs for A163477, there is no canonical definition to state claims against.
-/

/-! ## A163477.P13902978873628839181

`A163365(n)/4`
-/

namespace A163477.P13902978873628839181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163365 n : ℚ) / 4

end

end A163477.P13902978873628839181

/-! ## A163477.P15918950372725930018

`∑[(A163233(∑[n])+∑[n])/2]`
-/

namespace A163477.P15918950372725930018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163233 (∑ j ∈ Finset.range (n + 1), f2 j) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163477.P15918950372725930018

/-! ## A163477.P714245424527964187

`∑[A163235(∑[n])+∑[2*n]]/4`
-/

namespace A163477.P714245424527964187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (∑ j ∈ Finset.range (n + 1), f2 j) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A163477.P714245424527964187

/-! ## A163477.P13075269226972989270

`(A163478(n)+A000292(n))/2`
-/

namespace A163477.P13075269226972989270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163478 n + A000292 n : ℚ) / 2

end

end A163477.P13075269226972989270

/-! ## A163477.P6623567155027169527

`∑[(A163235(∑[n])+A002378(n))/4]`
-/

namespace A163477.P6623567155027169527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163235 (∑ j ∈ Finset.range (n + 1), f2 j) + A002378 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163477.P6623567155027169527

/-!
# A163478: Row sums of A163233 and A163235 divided by 3.

The programs for A163478, the canonical program `A163478.P4938933501690302131` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163478 has offset 0).

The definition of A163478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163242, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163478.P4938933501690302131

`A163242(n)/3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163478

/-- `A163242(n)/3` -/
def P4938933501690302131.Spec : Prop :=
  ∀ n, P4938933501690302131.a n = (A163478 n : ℚ)

end A163478

/-! ## A163478.P5933896670696203707

`∑[xor((2^val(n, 2))², a(n-1))]` with `a(0)=0`
-/

namespace A163478.P5933896670696203707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor ((2 ^ SequenceMachineLib.valuation n 2) ^ 2) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P5933896670696203707

namespace A163478

/-- `∑[xor((2^val(n, 2))², a(n-1))]` -/
def P5933896670696203707.Spec : Prop :=
  ∀ n, (P5933896670696203707.a n : ℤ) = A163478 n

end A163478

/-! ## A163478.P6170393865288544214

`∑[A000695(xor(n, floor(n/2)))]`
-/

namespace A163478.P6170393865288544214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P6170393865288544214

namespace A163478

/-- `∑[A000695(xor(n, floor(n/2)))]` -/
def P6170393865288544214.Spec : Prop :=
  ∀ n, P6170393865288544214.a n = A163478 n

end A163478

/-! ## A163478.P11686434981038122061

`∑[A000695(A003188(n))]`
-/

namespace A163478.P11686434981038122061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P11686434981038122061

namespace A163478

/-- `∑[A000695(A003188(n))]` -/
def P11686434981038122061.Spec : Prop :=
  ∀ n, P11686434981038122061.a n = A163478 n

end A163478

/-! ## A163478.P5651605624008698340

`∑[A000695(A229763(n)+A004526(n))]`
-/

namespace A163478.P5651605624008698340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A229763 n + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P5651605624008698340

namespace A163478

/-- `∑[A000695(A229763(n)+A004526(n))]` -/
def P5651605624008698340.Spec : Prop :=
  ∀ n, P5651605624008698340.a n = A163478 n

end A163478

/-! ## A163478.P9263021409140958507

`∑[A000695(A292272(n)+A229762(n))]`
-/

namespace A163478.P9263021409140958507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A292272 n + A229762 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P9263021409140958507

namespace A163478

/-- `∑[A000695(A292272(n)+A229762(n))]` -/
def P9263021409140958507.Spec : Prop :=
  ∀ n, P9263021409140958507.a n = A163478 n

end A163478

/-! ## A163478.P16868777666006367060

`∑[A300838(2*∑[and(n, -n)²]+n)]`
-/

namespace A163478.P16868777666006367060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (2 * (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P16868777666006367060

namespace A163478

/-- `∑[A300838(2*∑[and(n, -n)²]+n)]` -/
def P16868777666006367060.Spec : Prop :=
  ∀ n, P16868777666006367060.a n = A163478 n

end A163478

/-! ## A163478.P5599841722673474150

`∑[A064706(A000695(n))]`
-/

namespace A163478.P5599841722673474150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P5599841722673474150

namespace A163478

/-- `∑[A064706(A000695(n))]` -/
def P5599841722673474150.Spec : Prop :=
  ∀ n, P5599841722673474150.a n = A163478 n

end A163478

/-! ## A163478.P14063587186536589741

`∑[A302846(A163357(∑[n]))]`
-/

namespace A163478.P14063587186536589741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163357 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P14063587186536589741

namespace A163478

/-- `∑[A302846(A163357(∑[n]))]` -/
def P14063587186536589741.Spec : Prop :=
  ∀ n, P14063587186536589741.a n = A163478 n

end A163478

/-! ## A163478.P6507394490054353368

`∑[A003188(A001196(n))/2]`
-/

namespace A163478.P6507394490054353368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003188 (A001196 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163478.P6507394490054353368

namespace A163478

/-- `∑[A003188(A001196(n))/2]` -/
def P6507394490054353368.Spec : Prop :=
  ∀ n, P6507394490054353368.a n = (A163478 n : ℚ)

end A163478

/-!
# A163479: Row sums of A163334 and A163336 divided by 6.

The programs for A163479, there is no canonical definition to state claims against.
-/

/-! ## A163479.P3467850803642245842

`A163342(n)/6`
-/

namespace A163479.P3467850803642245842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163342 n : ℚ) / 6

end

end A163479.P3467850803642245842

/-! ## A163479.P15286308167881905308

`A255591(A163342(n))`
-/

namespace A163479.P15286308167881905308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A163342 n).toNat

end

end A163479.P15286308167881905308

/-! ## A163479.P12249424451090867249

`A008615(A163342(n))`
-/

namespace A163479.P12249424451090867249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A163342 n).toNat

end

end A163479.P12249424451090867249

/-! ## A163479.P6344680111176546373

`A008612(A163342(n)+1)`
-/

namespace A163479.P6344680111176546373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A163342 n + 1).toNat

end

end A163479.P6344680111176546373

/-! ## A163479.P1910586743268116981

`A103221(A163342(n)+1)`
-/

namespace A163479.P1910586743268116981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A163342 n + 1).toNat

end

end A163479.P1910586743268116981

/-!
# A163480: Row 0 of A163334 (column 0 of A163336).

The programs for A163480, there is no canonical definition to state claims against.
-/

/-! ## A163480.P15435031587794445162

`A163332(A037314(n))`
-/

namespace A163480.P15435031587794445162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A037314 n).toNat

end

end A163480.P15435031587794445162

/-! ## A163480.P1956496233872823568

`A163334(∑[n])`
-/

namespace A163480.P1956496233872823568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163480.P1956496233872823568

/-! ## A163480.P5795161888997326958

`eq[0, A163529(n)]`
-/

namespace A163480.P5795161888997326958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163480.P5795161888997326958

/-! ## A163480.P16346516702692579550

`floor(A163481(n)/3)`
-/

namespace A163480.P16346516702692579550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163481 n : ℚ) / 3⌋

end

end A163480.P16346516702692579550

/-! ## A163480.P9644930886913212088

`A163336(∑[n]+n)`
-/

namespace A163480.P9644930886913212088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A163480.P9644930886913212088

/-!
# A163481: Row 0 of A163336 (column 0 of A163334).

The programs for A163481, there is no canonical definition to state claims against.
-/

/-! ## A163481.P5095134500717010878

`A163336(∑[n])`
-/

namespace A163481.P5095134500717010878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163481.P5095134500717010878

/-! ## A163481.P13788775570484252579

`record[A163336(n)]`
-/

namespace A163481.P13788775570484252579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163481.P13788775570484252579

/-! ## A163481.P4941914844101205958

`eq[0, A163528(n)]`
-/

namespace A163481.P4941914844101205958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163481.P4941914844101205958

/-! ## A163481.P16238406720951794106

`A163334(∑[n]+n)`
-/

namespace A163481.P16238406720951794106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A163481.P16238406720951794106

/-! ## A163481.P12044454684988464905

`A163338(∑[n+1])-1`
-/

namespace A163481.P12044454684988464905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A163481.P12044454684988464905

/-!
# A163482: Row 0 of A163357 (column 0 of A163359).

The programs for A163482, there is no canonical definition to state claims against.
-/

/-! ## A163482.P391196131276725467

`A163357(∑[n])`
-/

namespace A163482.P391196131276725467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163482.P391196131276725467

/-! ## A163482.P6184286418742981491

`eq[0, A059252(n)]`
-/

namespace A163482.P6184286418742981491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163482.P6184286418742981491

/-! ## A163482.P6092900093740594537

`A163359(∑[n]+n)`
-/

namespace A163482.P6092900093740594537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A163482.P6092900093740594537

/-! ## A163482.P9536370117968059567

`A163361(∑[n]+1)-1`
-/

namespace A163482.P9536370117968059567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163361 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A163482.P9536370117968059567

/-! ## A163482.P3543133842583572475

`A163363(∑[n+1])-1`
-/

namespace A163482.P3543133842583572475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163363 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A163482.P3543133842583572475

/-!
# A163483: Row 0 of A163359 (column 0 of A163357).

The programs for A163483, there is no canonical definition to state claims against.
-/

/-! ## A163483.P3975704518777245255

`A163359(∑[n])`
-/

namespace A163483.P3975704518777245255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163483.P3975704518777245255

/-! ## A163483.P7460330387416211838

`eq[0, A059253(n)]`
-/

namespace A163483.P7460330387416211838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163483.P7460330387416211838

/-! ## A163483.P3027747563945769886

`A163907(∑[4*n])`
-/

namespace A163483.P3027747563945769886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163483.P3027747563945769886

/-! ## A163483.P14906161390322790950

`A163357(∑[n]+n)`
-/

namespace A163483.P14906161390322790950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A163483.P14906161390322790950

/-! ## A163483.P6171816338914340863

`A163361(∑[n+1])-1`
-/

namespace A163483.P6171816338914340863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163361 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A163483.P6171816338914340863

/-! ## A163483.P16787211736284644718

`A163363(∑[n]+1)-1`
-/

namespace A163483.P16787211736284644718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163363 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A163483.P16787211736284644718

/-! ## A163483.P7003304002168447136

`eq[1, A341018(2*n+1)]`
-/

namespace A163483.P7003304002168447136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341018 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163483.P7003304002168447136

/-! ## A163483.P17030531110956766009

`eq[1, A341018(n+1)]/2`
-/

namespace A163483.P17030531110956766009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341018 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A163483.P17030531110956766009

/-! ## A163483.P17595566211183559680

`A163905(A001196(n))`
-/

namespace A163483.P17595566211183559680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A001196 n).toNat

end

end A163483.P17595566211183559680

/-! ## A163483.P9237500949548903200

`A163355(A062880(n))`
-/

namespace A163483.P9237500949548903200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A062880 n).toNat

end

end A163483.P9237500949548903200

/-!
# A163484: Antidiagonal sums of A147995 and A163545.

The programs for A163484, there is no canonical definition to state claims against.
-/

/-! ## A163484.P1846936884013079871

`A029932(n+1)-A026791(A220005(n+1))`
-/

namespace A163484.P1846936884013079871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029932 (n + 1) - A026791 (A220005 (n + 1)).toNat

end

end A163484.P1846936884013079871

/-! ## A163484.P9038628186474600272

`xor(A036689(n+1), A085543(A229073(n+1)))`
-/

namespace A163484.P9038628186474600272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036689 (n + 1)) (A085543 (A229073 (n + 1)).toNat)

end

end A163484.P9038628186474600272

/-!
# A163485: Permutation of integers used for constructing A147995 and A163545.

The programs for A163485, there is no canonical definition to state claims against.
-/

/-! ## A163485.P9534088439373806997

`A004468(A163486(A004468(n)))`
-/

namespace A163485.P9534088439373806997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163486 (A004468 n).toNat).toNat

end

end A163485.P9534088439373806997

/-! ## A163485.P17857348961667460804

`A147995(A061579(A054239(n)))`
-/

namespace A163485.P17857348961667460804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A061579 (A054239 n).toNat).toNat

end

end A163485.P17857348961667460804

/-! ## A163485.P9312200350087993177

`A147995(A054239(A057300(n)))`
-/

namespace A163485.P9312200350087993177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A054239 (A057300 n).toNat).toNat

end

end A163485.P9312200350087993177

/-! ## A163485.P4170362500046567984

`A147995(A163236(A064706(n)))`
-/

namespace A163485.P4170362500046567984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A163236 (A064706 n).toNat).toNat

end

end A163485.P4170362500046567984

/-! ## A163485.P10821817790961352145

`A163241(A163486(A163241(n)))`
-/

namespace A163485.P10821817790961352145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163486 (A163241 n).toNat).toNat

end

end A163485.P10821817790961352145

/-! ## A163485.P18361237117663796186

`A147995(A163236(A003188(A003188(n))))`
-/

namespace A163485.P18361237117663796186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A163236 (A003188 (A003188 n).toNat).toNat).toNat

end

end A163485.P18361237117663796186

/-! ## A163485.P12985319263499357016

`A163545(A054239(n))`
-/

namespace A163485.P12985319263499357016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163545 (A054239 n).toNat

end

end A163485.P12985319263499357016

/-! ## A163485.P7100491709149015912

`A147995(A163234(A064706(A163235(A163234(n)))))`
-/

namespace A163485.P7100491709149015912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 (A163234 (A064706 (A163235 (A163234 n).toNat).toNat).toNat).toNat

end

end A163485.P7100491709149015912

/-!
# A163486: Inverse permutation to A163485.

The programs for A163486, there is no canonical definition to state claims against.
-/

/-! ## A163486.P9446295541004717897

`A054238(A163546(n))`
-/

namespace A163486.P9446295541004717897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163546 n).toNat

end

end A163486.P9446295541004717897

/-! ## A163486.P17544968861214534866

`A346453(A163544(n))`
-/

namespace A163486.P17544968861214534866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346453 (A163544 n).toNat

end

end A163486.P17544968861214534866

/-! ## A163486.P15917441576687404181

`A163241(A163485(A163241(n)))`
-/

namespace A163486.P15917441576687404181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163485 (A163241 n).toNat).toNat

end

end A163486.P15917441576687404181

/-! ## A163486.P16310789686170770065

`A054238(A061579(A163544(A054239(A054238(n)))))`
-/

namespace A163486.P16310789686170770065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A061579 (A163544 (A054239 (A054238 n).toNat).toNat).toNat).toNat

end

end A163486.P16310789686170770065

/-! ## A163486.P5181745817325931296

`A054238(A061579(A163544(A061579(A061579(n)))))`
-/

namespace A163486.P5181745817325931296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A061579 (A163544 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A163486.P5181745817325931296

/-! ## A163486.P12334412939471212752

`A163241(A147995(A163240(A003188(A003188(n)))))`
-/

namespace A163486.P12334412939471212752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A147995 (A163240 (A003188 (A003188 n).toNat).toNat).toNat).toNat

end

end A163486.P12334412939471212752

/-! ## A163486.P8512299686192451470

`A163235(A163238(A147995(A163238(A064706(n)))))`
-/

namespace A163486.P8512299686192451470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163238 (A147995 (A163238 (A064706 n).toNat).toNat).toNat).toNat

end

end A163486.P8512299686192451470

/-!
# A163487: Primes p such that 6*p is the sum of two consecutive primes.

The programs for A163487, there is no canonical definition to state claims against.
-/

/-! ## A163487.P7627587076007064102

`A075278(n+1)/3`
-/

namespace A163487.P7627587076007064102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075278 (n + 1) : ℚ) / 3

end

end A163487.P7627587076007064102

/-! ## A163487.P4584828315143155049

`p?[A391352(n+1)]`
-/

namespace A163487.P4584828315143155049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163487.P4584828315143155049

/-! ## A163487.P3928214298416969041

`filter[A391352(n+1), A010051(#)]`
-/

namespace A163487.P3928214298416969041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163487.P3928214298416969041

/-! ## A163487.P3615510416193652613

`∩[A000040(n+1), A391352(n+1)]`
-/

namespace A163487.P3615510416193652613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P3615510416193652613

/-! ## A163487.P13394702071108100188

`∩[A008578(n+1), A391352(n+1)]`
-/

namespace A163487.P13394702071108100188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P13394702071108100188

/-! ## A163487.P9686603407920254672

`∩[A106118(n+1), A391352(n+1)]`
-/

namespace A163487.P9686603407920254672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P9686603407920254672

/-! ## A163487.P15305058991976638946

`∩[A158611(n+1), A391352(n+1)]`
-/

namespace A163487.P15305058991976638946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P15305058991976638946

/-! ## A163487.P16965335737805385787

`∩[A182986(n+1), A391352(n+1)]`
-/

namespace A163487.P16965335737805385787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P16965335737805385787

/-! ## A163487.P11940219592248976775

`∩[A189710(n+1), A391352(n+1)]`
-/

namespace A163487.P11940219592248976775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P11940219592248976775

/-! ## A163487.P581147834397577554

`∩[A326715(n+1), A391352(n+1)]`
-/

namespace A163487.P581147834397577554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P581147834397577554

/-! ## A163487.P13298817977947409637

`∩[A372059(n+1), A391352(n+1)]`
-/

namespace A163487.P13298817977947409637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163487.P13298817977947409637

/-! ## A163487.P4518254695223206200

`∩[A024675(n+1), A001748(n+1)]/3`
-/

namespace A163487.P4518254695223206200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A163487.P4518254695223206200

/-! ## A163487.P18341218284094660922

`A001043(A000720(A288632(n+1)))/6`
-/

namespace A163487.P18341218284094660922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (A000720 (A288632 (n + 1)).toNat).toNat : ℚ) / 6

end

end A163487.P18341218284094660922

/-! ## A163487.P5287980006548822840

`filter[A391352(n+1), A080339(#)]`
-/

namespace A163487.P5287980006548822840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A163487.P5287980006548822840

/-!
# A163488: Primes p such that 5*p is a sum of 3 consecutive primes.

The programs for A163488, there is no canonical definition to state claims against.
-/

/-! ## A163488.P11221005232332954608

`p?[A283442(A034961(n+1))]`
-/

namespace A163488.P11221005232332954608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A034961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163488.P11221005232332954608

/-! ## A163488.P17881784646938550118

`p?[A283442(A207637(n+1))]`
-/

namespace A163488.P17881784646938550118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A207637 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163488.P17881784646938550118

/-! ## A163488.P12603014606261083563

`p?[A283442(A001043(n+2)+A000040(n+1))]`
-/

namespace A163488.P12603014606261083563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A001043 (n + 2) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163488.P12603014606261083563

/-! ## A163488.P2284316505577386754

`p?[A283442(A011974(n+3)+A000040(n+1))]`
-/

namespace A163488.P2284316505577386754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A011974 (n + 3) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163488.P2284316505577386754

/-! ## A163488.P9568567155571771772

`p?[A283442(A048448(n+2)+A000040(n+2))]`
-/

namespace A163488.P9568567155571771772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A048448 (n + 2) + A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163488.P9568567155571771772

/-!
# A163489: Indices n such that composite(n)/3 is prime.

The programs for A163489, there is no canonical definition to state claims against.
-/

/-! ## A163489.P16989681462231457514

`A066246(3*p?[abs(xor(n, -2))])`
-/

namespace A163489.P16989681462231457514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163489.P16989681462231457514

/-! ## A163489.P8397202778560719743

`A026238(3*p?[xor(1, n)+1])`
-/

namespace A163489.P8397202778560719743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A163489.P8397202778560719743

/-! ## A163489.P11203243857029595780

`A026238(3*p?[n%3+n])`
-/

namespace A163489.P11203243857029595780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A163489.P11203243857029595780

/-! ## A163489.P9890936486397471626

`A026238(3*p?[round(8*n/7)])`
-/

namespace A163489.P9890936486397471626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163489.P9890936486397471626

/-! ## A163489.P10897355515940122034

`A065855(3*p?[round(8*n/7)])`
-/

namespace A163489.P10897355515940122034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163489.P10897355515940122034

/-! ## A163489.P13870670435890361485

`A066246(3*p?[round(8*n/7)])`
-/

namespace A163489.P13870670435890361485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163489.P13870670435890361485

/-! ## A163489.P18002481001502783392

`A062298(3*p?[round(8*n/7)]-1)`
-/

namespace A163489.P18002481001502783392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A163489.P18002481001502783392

/-! ## A163489.P17334572565623275637

`A305800(3*p?[round(8*n/7)])-2`
-/

namespace A163489.P17334572565623275637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A163489.P17334572565623275637

/-! ## A163489.P4308959680916686865

`A026238(A001748(n+1))`
-/

namespace A163489.P4308959680916686865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A001748 (n + 1)).toNat

end

end A163489.P4308959680916686865

/-! ## A163489.P5683906007511929964

`A026238(A112773(n+2))`
-/

namespace A163489.P5683906007511929964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A112773 (n + 2)).toNat

end

end A163489.P5683906007511929964

/-!
# A163491: A fractal sequence (if we delete the first occurrence of n we get the sequence itself).

The programs for A163491, there is no canonical definition to state claims against.
-/

/-! ## A163491.P7184590380337104032

`A263390(n)+1`
-/

namespace A163491.P7184590380337104032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 n + 1

end

end A163491.P7184590380337104032

/-! ## A163491.P7995399447164981625

`A008619(2*A263390(n))`
-/

namespace A163491.P7995399447164981625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A263390 n).toNat

end

end A163491.P7995399447164981625

/-! ## A163491.P14343778684957829897

`A080513(2*A263390(n))`
-/

namespace A163491.P14343778684957829897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A263390 n).toNat

end

end A163491.P14343778684957829897

/-! ## A163491.P12465467582958880421

`A008611(3*A263390(n))`
-/

namespace A163491.P12465467582958880421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A263390 n).toNat

end

end A163491.P12465467582958880421

/-! ## A163491.P1012048513702613790

`A008619(n)-(A004526(n)-A263390(n))`
-/

namespace A163491.P1012048513702613790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A004526 n - A263390 n)

end

end A163491.P1012048513702613790

/-! ## A163491.P5526214711242638070

`A008621(4*A263390(n))`
-/

namespace A163491.P5526214711242638070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A263390 n).toNat

end

end A163491.P5526214711242638070

/-! ## A163491.P10243645748038230655

`A008612(6*A263390(n))`
-/

namespace A163491.P10243645748038230655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A263390 n).toNat

end

end A163491.P10243645748038230655

/-!
# A163492: Numbers such that the two adjacent integers are a perfect square and a prime.

The programs for A163492, there is no canonical definition to state claims against.
-/

/-! ## A163492.P8281246658053935789

`∩[A329582(n+1), A087278(n)]`
-/

namespace A163492.P8281246658053935789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163492.P8281246658053935789

/-! ## A163492.P16935410342720320418

`filter[A329582(n+1), A118102(#)]`
-/

namespace A163492.P16935410342720320418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A163492.P16935410342720320418

/-! ## A163492.P9162744450703182615

`eq[A001263(A214929(n+1)), A051700(n)]`
-/

namespace A163492.P9162744450703182615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A214929 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163492.P9162744450703182615

/-! ## A163492.P7734646742745666518

`eq[A051700(n), A088855(A316670(n+1))]`
-/

namespace A163492.P7734646742745666518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A316670 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163492.P7734646742745666518

/-! ## A163492.P14994011864540663485

`∩[A101771(n), A329582(n+1)]`
-/

namespace A163492.P14994011864540663485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163492.P14994011864540663485

/-!
# A163493: Number of binary strings of length n which have the same number of 00 and 01 substrings.

The programs for A163493, there is no canonical definition to state claims against.
-/

/-! ## A163493.P291700432458396034

`∑[A345908(n)]`
-/

namespace A163493.P291700432458396034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163493.P291700432458396034

/-! ## A163493.P1830687116164862714

`A345908(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A163493.P1830687116164862714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345908 n + a (A023443 n).toNat

end

end A163493.P1830687116164862714

/-! ## A163493.P17382351586254655962

`A345908(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A163493.P17382351586254655962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345908 n + a (A028310 n - 1).toNat

end

end A163493.P17382351586254655962

/-! ## A163493.P3352703401325047376

`A345908(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A163493.P3352703401325047376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345908 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A163493.P3352703401325047376

/-! ## A163493.P5952534154511112260

`A000079(n)-(A371564(n)+A371358(n))`
-/

namespace A163493.P5952534154511112260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A371564 n + A371358 n)

end

end A163493.P5952534154511112260

/-!
# A163494: 

The programs for A163494, there is no canonical definition to state claims against.
-/

/-! ## A163494.P9850310788371399674

`(2*n)!²*(4*n)!`
-/

namespace A163494.P9850310788371399674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) ^ 2 * Nat.factorial (4 * n)

end

end A163494.P9850310788371399674

/-! ## A163494.P3715177915129472258

`A010050(n)²*A100733(n)`
-/

namespace A163494.P3715177915129472258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n ^ 2 * A100733 n

end

end A163494.P3715177915129472258

/-! ## A163494.P5588330027603493904

`A186246(n)²*A100733(n)`
-/

namespace A163494.P5588330027603493904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186246 n ^ 2 * A100733 n

end

end A163494.P5588330027603493904

/-! ## A163494.P8773198145028137041

`A010050(n)²*A010050(2*n)`
-/

namespace A163494.P8773198145028137041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n ^ 2 * A010050 (2 * n)

end

end A163494.P8773198145028137041

/-!
# A163496: a(n) = the number of distinct primes that can be made by writing n in binary, doubling any number (possibly zero) of 1's in place in this binary representation, and converting back to decimal.

The programs for A163496, there is no canonical definition to state claims against.
-/

/-! ## A163496.P4133510637064132766

`A048881(gcd(∑{d}[n+1, A211666(#)*A297112((n+1)/#)], A270841(n+1)))`
-/

namespace A163496.P4133510637064132766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.gcd (∑ d ∈ Nat.divisors (f1 n), A211666 d * A297112 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) (A270841 (n + 1)))

end

end A163496.P4133510637064132766

/-! ## A163496.P17420674191436684935

`C(A341970(n+5), A032741(A081668(n+1)))`
-/

namespace A163496.P17420674191436684935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341970 (n + 5)).toNat (A032741 (A081668 (n + 1)).toNat).toNat

end

end A163496.P17420674191436684935

/-! ## A163496.P7454119324636656632

`A229742(A008441(and(-2, 2^n)))`
-/

namespace A163496.P7454119324636656632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A008441 (Int.land (-2) (2 ^ n : ℤ)).toNat).toNat

end

end A163496.P7454119324636656632

/-! ## A163496.P9381148976983837988

`A088177(n+1)%A040715(A128156(n+1))`
-/

namespace A163496.P9381148976983837988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088177 (n + 1)) (A040715 (A128156 (n + 1)).toNat)

end

end A163496.P9381148976983837988

/-! ## A163496.P13513435482521007135

`C(A001221(A075999(n+1)), A051953(n+1))`
-/

namespace A163496.P13513435482521007135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A075999 (n + 1)).toNat).toNat (A051953 (n + 1)).toNat

end

end A163496.P13513435482521007135

/-!
# A163497: Numbers n with following property: let c = nearest cube to n that is different from n and let p = nearest prime to n that is different from n. Then |n-c| = |n-p|.

The programs for A163497, there is no canonical definition to state claims against.
-/

/-! ## A163497.P12119462019956169794

`A199974(A306925(2*n+1)-A199971(n+1))`
-/

namespace A163497.P12119462019956169794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199974 (A306925 (2 * n + 1) - A199971 (n + 1)).toNat

end

end A163497.P12119462019956169794

/-!
# A163498: Those primes p that after each is written in binary, and a 0 is inserted before every 1, then the value of this new number is also prime.

The programs for A163498, there is no canonical definition to state claims against.
-/

/-! ## A163498.P6525475046161513707

`p?[n*A327866(A048678(n))]`
-/

namespace A163498.P6525475046161513707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327866 (A048678 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163498.P6525475046161513707

/-! ## A163498.P15115580937299812587

`p?[(n+1)*A010051(A048678(2*n)+1)]`
-/

namespace A163498.P15115580937299812587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A048678 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163498.P15115580937299812587

/-! ## A163498.P6498705346093070465

`eq[A003415(n), A327866(A048678(n))]`
-/

namespace A163498.P6498705346093070465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327866 (A048678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163498.P6498705346093070465

/-! ## A163498.P9096424546557488780

`eq[A032741(n), A327866(A048678(n))]`
-/

namespace A163498.P9096424546557488780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327866 (A048678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163498.P9096424546557488780

/-! ## A163498.P14618151205681595013

`A072650(A163499(n+1))`
-/

namespace A163498.P14618151205681595013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A163499 (n + 1)).toNat

end

end A163498.P14618151205681595013

/-!
# A163499: Take A163498(n) written in binary, insert a 0 before every 1. a(n) is the decimal equivalent of the result.

The programs for A163499, there is no canonical definition to state claims against.
-/

/-! ## A163499.P9814798943354386429

`A048678(A163498(n+1))`
-/

namespace A163499.P9814798943354386429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A163498 (n + 1)).toNat

end

end A163499.P9814798943354386429

/-! ## A163499.P5103987678159548925

`A124108(A163498(Δ[n²]-n))/2`
-/

namespace A163499.P5103987678159548925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124108 (A163498 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℚ) / 2

end

end A163499.P5103987678159548925

/-! ## A163499.P5718000389316238665

`floor(A124108(A163498(n-log2(1/2)))/2)`
-/

namespace A163499.P5718000389316238665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124108 (A163498 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat : ℚ) / 2⌋

end

end A163499.P5718000389316238665

/-! ## A163499.P1212158445602944847

`floor((A124108(A163498(2*n+1-n))+1)/2)`
-/

namespace A163499.P1212158445602944847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124108 (A163498 (2 * n + 1 - n)).toNat + 1 : ℚ) / 2⌋

end

end A163499.P1212158445602944847

/-! ## A163499.P13303996596370918598

`p?[A048678(A209259(n))]`
-/

namespace A163499.P13303996596370918598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P13303996596370918598

/-! ## A163499.P14673056126685895065

`p?[A048678(p?[A168014(n)])]`
-/

namespace A163499.P14673056126685895065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P14673056126685895065

/-! ## A163499.P7926880935662532591

`p?[A048678(A000040(n+1))]`
-/

namespace A163499.P7926880935662532591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P7926880935662532591

/-! ## A163499.P915779251774745407

`p?[A048678(A005180(n+1))]`
-/

namespace A163499.P915779251774745407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P915779251774745407

/-! ## A163499.P10302099812302016252

`p?[A048678(A008578(n+1))]`
-/

namespace A163499.P10302099812302016252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P10302099812302016252

/-! ## A163499.P12989391275714886736

`p?[A048678(A045319(n+1))]`
-/

namespace A163499.P12989391275714886736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A045319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P12989391275714886736

/-! ## A163499.P13383585231365054267

`p?[A048678(A085118(n+1))]`
-/

namespace A163499.P13383585231365054267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A085118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P13383585231365054267

/-! ## A163499.P7713677522387201989

`p?[A048678(A093515(n+1))]`
-/

namespace A163499.P7713677522387201989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A093515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P7713677522387201989

/-! ## A163499.P13984562461171053649

`p?[A048678(p?[n*A327866(n)])]`
-/

namespace A163499.P13984562461171053649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327866 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163499.P13984562461171053649

