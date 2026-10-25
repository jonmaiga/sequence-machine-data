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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A267601: Primes which are squares (mod 47).

The programs for A267601, there is no canonical definition to state claims against.
-/

/-! ## A267601.P12861057748272360071

`∪[A033232(n+1), A191033(n+1)]`
-/

namespace A267601.P12861057748272360071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267601.P12861057748272360071

/-! ## A267601.P3216596749198924447

`∪[A087533(n+1), A191033(n+1)]`
-/

namespace A267601.P3216596749198924447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267601.P3216596749198924447

/-! ## A267601.P10451050836099219083

`∪[A107211(n+1), A191033(n+1)]`
-/

namespace A267601.P10451050836099219083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267601.P10451050836099219083

/-! ## A267601.P6632150435252684596

`p?[(n+1)*A078898(A035143(n+1))]`
-/

namespace A267601.P6632150435252684596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078898 (A035143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267601.P6632150435252684596

/-! ## A267601.P7330184051442499699

`p?[(n+1)*(A035143(A035143(n+1)+1)-1)]`
-/

namespace A267601.P7330184051442499699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A035143 (A035143 (n + 1) + 1).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267601.P7330184051442499699

/-! ## A267601.P8066222625982303268

`p?[A004525(A035143(n+1))*A089247(n+1)]`
-/

namespace A267601.P8066222625982303268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A035143 (n + 1)).toNat * A089247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267601.P8066222625982303268

/-! ## A267601.P9406197290445011260

`p?[A089309(A035143(n+1))*A250246(n+1)]`
-/

namespace A267601.P9406197290445011260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A035143 (n + 1)).toNat * A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267601.P9406197290445011260

/-! ## A267601.P6737654990360968752

`p?[(n+1)*A318844(A035143(n+1)+1)]`
-/

namespace A267601.P6737654990360968752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318844 (A035143 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267601.P6737654990360968752

/-!
# A267603: Primes that are squares (mod 95).

The programs for A267603, there is no canonical definition to state claims against.
-/

/-! ## A267603.P10695207934905691324

`∩[A038872(n+1), A106863(n+1)]`
-/

namespace A267603.P10695207934905691324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P10695207934905691324

/-! ## A267603.P8509313521394566578

`∩[A106863(n+1), A341783(n+1)]`
-/

namespace A267603.P8509313521394566578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P8509313521394566578

/-! ## A267603.P5981534120426675983

`∩[A038872(n+1), A341787(n+1)]`
-/

namespace A267603.P5981534120426675983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P5981534120426675983

/-! ## A267603.P5833021667852341140

`∩[A031363(n+1), A106863(n+1)]`
-/

namespace A267603.P5833021667852341140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P5833021667852341140

/-! ## A267603.P4033325909001076146

`∩[A057762(n+1), A106863(n+1)]`
-/

namespace A267603.P4033325909001076146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P4033325909001076146

/-! ## A267603.P15026490012185634927

`∩[A106863(n+1), A182625(n+1)]`
-/

namespace A267603.P15026490012185634927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P15026490012185634927

/-! ## A267603.P8520404359839790180

`∩[A035243(n+1), A038872(n+1)]`
-/

namespace A267603.P8520404359839790180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P8520404359839790180

/-! ## A267603.P9967081659939515500

`∩[A035259(n+1), A106863(n+1)]`
-/

namespace A267603.P9967081659939515500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P9967081659939515500

/-! ## A267603.P4666675813895170515

`∩[A063213(n+1), A106863(n+1)]`
-/

namespace A267603.P4666675813895170515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P4666675813895170515

/-! ## A267603.P125040017212740572

`∩[A106863(n+1), A374492(n+1)]`
-/

namespace A267603.P125040017212740572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P125040017212740572

/-! ## A267603.P2189860913700451999

`∩[A341787(n+1), A374492(n+1)]`
-/

namespace A267603.P2189860913700451999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P2189860913700451999

/-! ## A267603.P241666143629277030

`∩[A008854(n+1), A106863(n+1)]`
-/

namespace A267603.P241666143629277030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P241666143629277030

/-! ## A267603.P13424053994018494261

`∩[A106863(n+1), A275068(n)]`
-/

namespace A267603.P13424053994018494261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P13424053994018494261

/-! ## A267603.P6223451567155445806

`∩[A341787(n+1), A275068(n)]`
-/

namespace A267603.P6223451567155445806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P6223451567155445806

/-! ## A267603.P4189634228721958276

`∩[A089270(n+1), A106863(n+1)]`
-/

namespace A267603.P4189634228721958276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267603.P4189634228721958276

/-!
# A267604: Decimal representation of the middle column of the "Rule 175" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267604, the canonical program `A267604.P18005753706302608488` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267604 has offset 0).

The definition of A267604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267604.P18005753706302608488

`round(∑[7*2^(n-3)])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267604

/-- `round(∑[7*2^(n-3)])` -/
def P18005753706302608488.Spec : Prop :=
  ∀ n, P18005753706302608488.a n = A267604 n

theorem P18005753706302608488.correct : P18005753706302608488.Spec := by
  intro n
  simp only [A267604]

end A267604

/-! ## A267604.P10262866377504228552

`ogf((1-x^2+x^3)/(1-3x+2x^2))`
-/

namespace A267604.P10262866377504228552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, -3, 2] n

end

end A267604.P10262866377504228552

namespace A267604

/-- `ogf((1-x^2+x^3)/(1-3x+2x^2))` -/
def P10262866377504228552.Spec : Prop :=
  ∀ n, P10262866377504228552.a n = A267604 n

end A267604

/-! ## A267604.P18109640740617500088

`1+2*a(n-1)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A267604.P18109640740617500088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  1 + 2 * a (n - 1)

end

end A267604.P18109640740617500088

namespace A267604

/-- `1+2*a(n-1)` -/
def P18109640740617500088.Spec : Prop :=
  ∀ n, (P18109640740617500088.a n : ℤ) = A267604 n

end A267604

/-! ## A267604.P17221281628805170029

`or(1, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A267604.P17221281628805170029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A267604.P17221281628805170029

namespace A267604

/-- `or(1, 2*a(n-1))` -/
def P17221281628805170029.Spec : Prop :=
  ∀ n, (P17221281628805170029.a n : ℤ) = A267604 n

end A267604

/-! ## A267604.P15440076445696187532

`∑[2*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`
-/

namespace A267604.P15440076445696187532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267604.P15440076445696187532

namespace A267604

/-- `∑[2*a(n-1)]` -/
def P15440076445696187532.Spec : Prop :=
  ∀ n, (P15440076445696187532.a n : ℤ) = A267604 n

end A267604

/-! ## A267604.P15925889784034654963

`a(n-1)+a(n-1)+1` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A267604.P15925889784034654963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A267604.P15925889784034654963

namespace A267604

/-- `a(n-1)+a(n-1)+1` -/
def P15925889784034654963.Spec : Prop :=
  ∀ n, (P15925889784034654963.a n : ℤ) = A267604 n

end A267604

/-! ## A267604.P15020458874465984411

`a(n-1)-(floor((2-n)/(a(n-1)-2))-a(n-1))` with `a(0)=1`
-/

namespace A267604.P15020458874465984411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (⌊(2 - (n : ℤ) : ℚ) / (a (n - 1) - 2 : ℚ)⌋ - a (n - 1))

end

end A267604.P15020458874465984411

namespace A267604

/-- `a(n-1)-(floor((2-n)/(a(n-1)-2))-a(n-1))` -/
def P15020458874465984411.Spec : Prop :=
  ∀ n, P15020458874465984411.a n = A267604 n

end A267604

/-! ## A267604.P5261423458204319276

`A365062(n+2)-1`
-/

namespace A267604.P5261423458204319276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 (n + 2) - 1

end

end A267604.P5261423458204319276

namespace A267604

/-- `A365062(n+2)-1` -/
def P5261423458204319276.Spec : Prop :=
  ∀ n, P5261423458204319276.a n = A267604 n

end A267604

/-! ## A267604.P7553690027747189534

`∑[A247188(n)+1+n]`
-/

namespace A267604.P7553690027747189534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247188 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267604.P7553690027747189534

namespace A267604

/-- `∑[A247188(n)+1+n]` -/
def P7553690027747189534.Spec : Prop :=
  ∀ n, P7553690027747189534.a n = A267604 n

end A267604

/-! ## A267604.P11103384696079384028

`or(2^n, A266550(n+1))`
-/

namespace A267604.P11103384696079384028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A266550 (n + 1))

end

end A267604.P11103384696079384028

namespace A267604

/-- `or(2^n, A266550(n+1))` -/
def P11103384696079384028.Spec : Prop :=
  ∀ n, P11103384696079384028.a n = A267604 n

end A267604

/-! ## A267604.P79682056203645149

`A125176(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A267604.P79682056203645149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A125176 n + a (n - 1)

end

end A267604.P79682056203645149

namespace A267604

/-- `A125176(n)+a(n-1)` -/
def P79682056203645149.Spec : Prop :=
  ∀ n, P79682056203645149.a n = A267604 n

end A267604

/-! ## A267604.P11303848193167208

`A026633(n)+A001045(n)`
-/

namespace A267604.P11303848193167208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026633 n + A001045 n

end

end A267604.P11303848193167208

namespace A267604

/-- `A026633(n)+A001045(n)` -/
def P11303848193167208.Spec : Prop :=
  ∀ n, P11303848193167208.a n = A267604 n

end A267604

/-! ## A267604.P11814203429063694980

`A057427(n)+A026622(n)`
-/

namespace A267604.P11814203429063694980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026622 n

end

end A267604.P11814203429063694980

namespace A267604

/-- `A057427(n)+A026622(n)` -/
def P11814203429063694980.Spec : Prop :=
  ∀ n, P11814203429063694980.a n = A267604 n

end A267604

/-! ## A267604.P6662518941216108698

`A166444(n)+A083329(n)`
-/

namespace A267604.P6662518941216108698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A083329 n

end

end A267604.P6662518941216108698

namespace A267604

/-- `A166444(n)+A083329(n)` -/
def P6662518941216108698.Spec : Prop :=
  ∀ n, P6662518941216108698.a n = A267604 n

end A267604

/-! ## A267604.P3036379853841129886

`A267045(n)+A000975(n)`
-/

namespace A267604.P3036379853841129886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267045 n + A000975 n

end

end A267604.P3036379853841129886

namespace A267604

/-- `A267045(n)+A000975(n)` -/
def P3036379853841129886.Spec : Prop :=
  ∀ n, P3036379853841129886.a n = A267604 n

end A267604

/-! ## A267604.P11861956105808513061

`A026622(n)-A057428(n)`
-/

namespace A267604.P11861956105808513061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026622 n - A057428 n

end

end A267604.P11861956105808513061

namespace A267604

/-- `A026622(n)-A057428(n)` -/
def P11861956105808513061.Spec : Prop :=
  ∀ n, P11861956105808513061.a n = A267604 n

end A267604

/-! ## A267604.P11067157224065583227

`A397439(n)-A127904(n)`
-/

namespace A267604.P11067157224065583227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n - A127904 n

end

end A267604.P11067157224065583227

namespace A267604

/-- `A397439(n)-A127904(n)` -/
def P11067157224065583227.Spec : Prop :=
  ∀ n, P11067157224065583227.a n = A267604 n

end A267604

/-! ## A267604.P8426235965265462012

`or(A267539(n), A267581(n))`
-/

namespace A267604.P8426235965265462012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267539 n) (A267581 n)

end

end A267604.P8426235965265462012

namespace A267604

/-- `or(A267539(n), A267581(n))` -/
def P8426235965265462012.Spec : Prop :=
  ∀ n, P8426235965265462012.a n = A267604 n

end A267604

/-! ## A267604.P15276393612806099079

`xor(A000225(n), A084215(n))`
-/

namespace A267604.P15276393612806099079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A084215 n)

end

end A267604.P15276393612806099079

namespace A267604

/-- `xor(A000225(n), A084215(n))` -/
def P15276393612806099079.Spec : Prop :=
  ∀ n, P15276393612806099079.a n = A267604 n

end A267604

/-!
# A267605: Triangle read by rows giving successive states of cellular automaton generated by "Rule 181" initiated with a single ON (black) cell.

The programs for A267605, the canonical program `A267605.P324515188696850996` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267605 has offset 0).

The definition of A267605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267605.P324515188696850996

`(∑[∑[A034870(n)]]+n)%2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A267605

/-- `(∑[∑[A034870(n)]]+n)%2` -/
def P324515188696850996.Spec : Prop :=
  ∀ n, P324515188696850996.a n = A267605 n

theorem P324515188696850996.correct : P324515188696850996.Spec := by
  intro n
  simp only [A267605]

end A267605

/-! ## A267605.P6434753866314812265

`(∑[∑[A084608(n)]]+n)%2`
-/

namespace A267605.P6434753866314812265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 2

end

end A267605.P6434753866314812265

namespace A267605

/-- `(∑[∑[A084608(n)]]+n)%2` -/
def P6434753866314812265.Spec : Prop :=
  ∀ n, P6434753866314812265.a n = A267605 n

end A267605

/-! ## A267605.P1689985588925898397

`and(1, ∑[∑[A123218(n+1)]]+n)`
-/

namespace A267605.P1689985588925898397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123218 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A267605.P1689985588925898397

namespace A267605

/-- `and(1, ∑[∑[A123218(n+1)]]+n)` -/
def P1689985588925898397.Spec : Prop :=
  ∀ n, P1689985588925898397.a n = A267605 n

end A267605

/-! ## A267605.P8956683597273323768

`A267576(A113778(n+1))`
-/

namespace A267605.P8956683597273323768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267576 (A113778 (n + 1)).toNat

end

end A267605.P8956683597273323768

namespace A267605

/-- `A267576(A113778(n+1))` -/
def P8956683597273323768.Spec : Prop :=
  ∀ n, P8956683597273323768.a n = A267605 n

end A267605

/-! ## A267605.P5098241895671826209

`A267576(n+2)`
-/

namespace A267605.P5098241895671826209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267576 (n + 2)

end

end A267605.P5098241895671826209

namespace A267605

/-- `A267576(n+2)` -/
def P5098241895671826209.Spec : Prop :=
  ∀ n, P5098241895671826209.a n = A267605 n

end A267605

/-! ## A267605.P613869548645663344

`and(1, ∑[∑[A329816(n)]]+n)`
-/

namespace A267605.P613869548645663344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329816 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A267605.P613869548645663344

namespace A267605

/-- `and(1, ∑[∑[A329816(n)]]+n)` -/
def P613869548645663344.Spec : Prop :=
  ∀ n, P613869548645663344.a n = A267605 n

end A267605

/-! ## A267605.P14642504855277346611

`(∑[∑[A154283(n+1)]]+n)%2`
-/

namespace A267605.P14642504855277346611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154283 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 2

end

end A267605.P14642504855277346611

namespace A267605

/-- `(∑[∑[A154283(n+1)]]+n)%2` -/
def P14642504855277346611.Spec : Prop :=
  ∀ n, P14642504855277346611.a n = A267605 n

end A267605

/-! ## A267605.P15306915868229061060

`(∑[∑[A260492(n)]]+n)%2`
-/

namespace A267605.P15306915868229061060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 2

end

end A267605.P15306915868229061060

namespace A267605

/-- `(∑[∑[A260492(n)]]+n)%2` -/
def P15306915868229061060.Spec : Prop :=
  ∀ n, P15306915868229061060.a n = A267605 n

end A267605

/-!
# A267606: Binary representation of the n-th iteration of the "Rule 181" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267606, there is no canonical definition to state claims against.
-/

/-! ## A267606.P9217806865792216823

`A007088(A267607(n))`
-/

namespace A267606.P9217806865792216823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267607 n).toNat

end

end A267606.P9217806865792216823

/-! ## A267606.P8486646183538363462

`A305989(A267578(n))`
-/

namespace A267606.P8486646183538363462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A267578 n).toNat

end

end A267606.P8486646183538363462

/-!
# A267607: Decimal representation of the n-th iteration of the "Rule 181" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267607, there is no canonical definition to state claims against.
-/

/-! ## A267607.P10123456523381291454

`A006257(xor(A219843(2*n), A249184(n)))`
-/

namespace A267607.P10123456523381291454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.xor (A219843 (2 * n)) (A249184 n)).toNat

end

end A267607.P10123456523381291454

/-! ## A267607.P7106153388432227968

`A054429(xor(4*a(n-1), a(n-1))-3)` with `a(0)=1`
-/

namespace A267607.P7106153388432227968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054429 (Int.xor (4 * a (n - 1)) (a (n - 1)) - 3).toNat

end

end A267607.P7106153388432227968

/-! ## A267607.P4251762506781158738

`A284460(A284460(a(n-1)+4^n/2))` with `a(0)=1`
-/

namespace A267607.P4251762506781158738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284460 (A284460 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (4 ^ n : ℚ) / 2)).toNat).toNat

end

end A267607.P4251762506781158738

/-! ## A267607.P15019343798987798627

`A284460(A284460(or(4^n/2, a(n-1))))` with `a(0)=1`
-/

namespace A267607.P15019343798987798627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284460 (A284460 (Int.lor (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 2)) (a (n - 1))).toNat).toNat

end

end A267607.P15019343798987798627

/-!
# A267608: Binary representation of the n-th iteration of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267608, there is no canonical definition to state claims against.
-/

/-! ## A267608.P944243573761398182

`A267246(n+1)/10`
-/

namespace A267608.P944243573761398182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267246 (n + 1) : ℚ) / 10

end

end A267608.P944243573761398182

/-! ## A267608.P17475985261340416706

`record[ratio[A267246(A193739(n))]]`
-/

namespace A267608.P17475985261340416706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267246 (A193739 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267608.P17475985261340416706

/-! ## A267608.P12587691442108400504

`record[ratio[A267246(A050873(n+1))]]`
-/

namespace A267608.P12587691442108400504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267246 (A050873 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267608.P12587691442108400504

/-! ## A267608.P1855892511162631064

`record[ratio[A267246(A077028(n))]]`
-/

namespace A267608.P1855892511162631064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267246 (A077028 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267608.P1855892511162631064

/-! ## A267608.P1284200902232763115

`A342040(A283908(n+1))`
-/

namespace A267608.P1284200902232763115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342040 (A283908 (n + 1)).toNat

end

end A267608.P1284200902232763115

/-!
# A267609: Decimal representation of the n-th iteration of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267609, the canonical program `A267609.P8591642076610455746` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267609 has offset 0).

The definition of A267609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267609.P13831618255277644813

`A267247(n+1)/2`
-/

namespace A267609.P13831618255277644813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267247 (n + 1) : ℚ) / 2

end

end A267609.P13831618255277644813

namespace A267609

/-- `A267247(n+1)/2` -/
def P13831618255277644813.Spec : Prop :=
  ∀ n, P13831618255277644813.a n = (A267609 n : ℚ)

end A267609

/-! ## A267609.P14062302099952139621

`record[A219843(n+2)/2]`
-/

namespace A267609.P14062302099952139621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219843 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267609.P14062302099952139621

namespace A267609

/-- `record[A219843(n+2)/2]` -/
def P14062302099952139621.Spec : Prop :=
  ∀ n, P14062302099952139621.a n = (A267609 n : ℚ)

end A267609

/-! ## A267609.P8591642076610455746

`record[or(1, A219843(n)/2)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A267609

/-- `record[or(1, A219843(n)/2)]` -/
def P8591642076610455746.Spec : Prop :=
  ∀ n, P8591642076610455746.a n = A267609 n

theorem P8591642076610455746.correct : P8591642076610455746.Spec := by
  intro n
  simp only [A267609]

end A267609

/-! ## A267609.P14025165870019976686

`A219843(2*(n+1))/2`
-/

namespace A267609.P14025165870019976686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219843 (2 * (n + 1)) : ℚ) / 2

end

end A267609.P14025165870019976686

namespace A267609

/-- `A219843(2*(n+1))/2` -/
def P14025165870019976686.Spec : Prop :=
  ∀ n, P14025165870019976686.a n = (A267609 n : ℚ)

end A267609

/-! ## A267609.P4435986618999251769

`record[A267247(A057979(n))/2]`
-/

namespace A267609.P4435986618999251769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267247 (A057979 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267609.P4435986618999251769

namespace A267609

/-- `record[A267247(A057979(n))/2]` -/
def P4435986618999251769.Spec : Prop :=
  ∀ n, P4435986618999251769.a n = (A267609 n : ℚ)

end A267609

/-! ## A267609.P6565023107156380290

`Δ[∑[A267247(n)]/2]`
-/

namespace A267609.P6565023107156380290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267247 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267609.P6565023107156380290

namespace A267609

/-- `Δ[∑[A267247(n)]/2]` -/
def P6565023107156380290.Spec : Prop :=
  ∀ n, P6565023107156380290.a n = (A267609 n : ℚ)

end A267609

/-!
# A267610: Total number of OFF (white) cells after n iterations of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267610, the canonical program `A267610.P16878864533377162923` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267610 has offset 0).

The definition of A267610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267610.P9836191898808351148

`∑[2*(2^(n-∑[val(n+1, 2)])-1)]`
-/

namespace A267610.P9836191898808351148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P9836191898808351148

namespace A267610

/-- `∑[2*(2^(n-∑[val(n+1, 2)])-1)]` -/
def P9836191898808351148.Spec : Prop :=
  ∀ n, P9836191898808351148.a n = (A267610 n : ℚ)

end A267610

/-! ## A267610.P16878864533377162923

`∑[A071055(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267610

/-- `∑[A071055(n)]` -/
def P16878864533377162923.Spec : Prop :=
  ∀ n, P16878864533377162923.a n = A267610 n

theorem P16878864533377162923.correct : P16878864533377162923.Spec := by
  intro n
  simp only [A267610]

end A267610

/-! ## A267610.P10224593552927892013

`∑[∑[A151930(n)]-1]`
-/

namespace A267610.P10224593552927892013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P10224593552927892013

namespace A267610

/-- `∑[∑[A151930(n)]-1]` -/
def P10224593552927892013.Spec : Prop :=
  ∀ n, P10224593552927892013.a n = A267610 n

end A267610

/-! ## A267610.P7889765293227382039

`∑[A001316(n+1)-2]`
-/

namespace A267610.P7889765293227382039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P7889765293227382039

namespace A267610

/-- `∑[A001316(n+1)-2]` -/
def P7889765293227382039.Spec : Prop :=
  ∀ n, P7889765293227382039.a n = A267610 n

end A267610

/-! ## A267610.P215705347411253321

`∑[n-A048967(n+1)]`
-/

namespace A267610.P215705347411253321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P215705347411253321

namespace A267610

/-- `∑[n-A048967(n+1)]` -/
def P215705347411253321.Spec : Prop :=
  ∀ n, P215705347411253321.a n = A267610 n

end A267610

/-! ## A267610.P3823566196373589013

`∑[sqrt(A102376(n+1))-2]`
-/

namespace A267610.P3823566196373589013
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 (n + 1) : ℝ) - 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P3823566196373589013

namespace A267610

/-- `∑[sqrt(A102376(n+1))-2]` -/
def P3823566196373589013.Spec : Prop :=
  ∀ n, P3823566196373589013.a n = (A267610 n : ℝ)

end A267610

/-! ## A267610.P9112450816864373627

`∑[Δ[A006046(n+1)]-2]`
-/

namespace A267610.P9112450816864373627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P9112450816864373627

namespace A267610

/-- `∑[Δ[A006046(n+1)]-2]` -/
def P9112450816864373627.Spec : Prop :=
  ∀ n, P9112450816864373627.a n = A267610 n

end A267610

/-! ## A267610.P2315191823229355205

`∑[Δ[2*A193494(n)]-2]`
-/

namespace A267610.P2315191823229355205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P2315191823229355205

namespace A267610

/-- `∑[Δ[2*A193494(n)]-2]` -/
def P2315191823229355205.Spec : Prop :=
  ∀ n, P2315191823229355205.a n = A267610 n

end A267610

/-! ## A267610.P882756299894994312

`∑[2^A000120(n+1)-2]`
-/

namespace A267610.P882756299894994312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (n + 1) : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P882756299894994312

namespace A267610

/-- `∑[2^A000120(n+1)-2]` -/
def P882756299894994312.Spec : Prop :=
  ∀ n, P882756299894994312.a n = (A267610 n : ℚ)

end A267610

/-! ## A267610.P17562449394244860641

`(n+1)²-A171378(n+1)`
-/

namespace A267610.P17562449394244860641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A171378 (n + 1)

end

end A267610.P17562449394244860641

namespace A267610

/-- `(n+1)²-A171378(n+1)` -/
def P17562449394244860641.Spec : Prop :=
  ∀ n, P17562449394244860641.a n = A267610 n

end A267610

/-! ## A267610.P13192388197030210380

`A074330(n+1)-2*(n+1)`
-/

namespace A267610.P13192388197030210380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074330 (n + 1) - (2 * (n + 1) : ℤ)

end

end A267610.P13192388197030210380

namespace A267610

/-- `A074330(n+1)-2*(n+1)` -/
def P13192388197030210380.Spec : Prop :=
  ∀ n, P13192388197030210380.a n = A267610 n

end A267610

/-! ## A267610.P2952660175868070808

`2*(A193494(n+1)-(n+1))`
-/

namespace A267610.P2952660175868070808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A193494 (n + 1) - (n + 1 : ℤ))

end

end A267610.P2952660175868070808

namespace A267610

/-- `2*(A193494(n+1)-(n+1))` -/
def P2952660175868070808.Spec : Prop :=
  ∀ n, P2952660175868070808.a n = A267610 n

end A267610

/-! ## A267610.P4700682857653961678

`A006046(n+2)-(2*n+3)`
-/

namespace A267610.P4700682857653961678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 2) - (2 * n + 3 : ℤ)

end

end A267610.P4700682857653961678

namespace A267610

/-- `A006046(n+2)-(2*n+3)` -/
def P4700682857653961678.Spec : Prop :=
  ∀ n, P4700682857653961678.a n = A267610 n

end A267610

/-! ## A267610.P10775788874609831189

`∑[A023889(A048896(n))]`
-/

namespace A267610.P10775788874609831189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (A048896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P10775788874609831189

namespace A267610

/-- `∑[A023889(A048896(n))]` -/
def P10775788874609831189.Spec : Prop :=
  ∀ n, P10775788874609831189.a n = A267610 n

end A267610

/-! ## A267610.P4742131588580317470

`∑[A000918(A000120(n+1))]`
-/

namespace A267610.P4742131588580317470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A000120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P4742131588580317470

namespace A267610

/-- `∑[A000918(A000120(n+1))]` -/
def P4742131588580317470.Spec : Prop :=
  ∀ n, P4742131588580317470.a n = A267610 n

end A267610

/-! ## A267610.P9677656094486127539

`∑[A046666(A001316(n+1))]`
-/

namespace A267610.P9677656094486127539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A001316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P9677656094486127539

namespace A267610

/-- `∑[A046666(A001316(n+1))]` -/
def P9677656094486127539.Spec : Prop :=
  ∀ n, P9677656094486127539.a n = A267610 n

end A267610

/-! ## A267610.P16702289486679966250

`∑[A056453(A178493(n+1))]`
-/

namespace A267610.P16702289486679966250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056453 (A178493 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P16702289486679966250

namespace A267610

/-- `∑[A056453(A178493(n+1))]` -/
def P16702289486679966250.Spec : Prop :=
  ∀ n, P16702289486679966250.a n = A267610 n

end A267610

/-! ## A267610.P3337993478158119801

`∑[A005843(A048896(n)-1)]`
-/

namespace A267610.P3337993478158119801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A048896 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P3337993478158119801

namespace A267610

/-- `∑[A005843(A048896(n)-1)]` -/
def P3337993478158119801.Spec : Prop :=
  ∀ n, P3337993478158119801.a n = A267610 n

end A267610

/-! ## A267610.P13161132556792119173

`A267700(n)-A048967(n+1)`
-/

namespace A267610.P13161132556792119173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 n - A048967 (n + 1)

end

end A267610.P13161132556792119173

namespace A267610

/-- `A267700(n)-A048967(n+1)` -/
def P13161132556792119173.Spec : Prop :=
  ∀ n, P13161132556792119173.a n = A267610 n

end A267610

/-! ## A267610.P1087526475480635846

`∑[A035327(A001316(n+1)+1)]`
-/

namespace A267610.P1087526475480635846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A001316 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P1087526475480635846

namespace A267610

/-- `∑[A035327(A001316(n+1)+1)]` -/
def P1087526475480635846.Spec : Prop :=
  ∀ n, P1087526475480635846.a n = A267610 n

end A267610

/-!
# A267611: Irregular triangle array of coefficients in ascending order of modified polynomials that arise in the study of Erdős-Ko-Rado sets of generators of the hyperbolic quadrics Q+(4n + 1, q).

The programs for A267611, there is no canonical definition to state claims against.
-/

/-! ## A267611.P16955400490808022948

`A321899(gcd(A000142(n), A062452(n)))`
-/

namespace A267611.P16955400490808022948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321899 (Int.gcd (A000142 n) (A062452 n))

end

end A267611.P16955400490808022948

/-! ## A267611.P11670886062894578566

`A330033(A028310(n)*A316849(n+1))`
-/

namespace A267611.P11670886062894578566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 (A028310 n * A316849 (n + 1)).toNat

end

end A267611.P11670886062894578566

/-! ## A267611.P8542367856514334747

`A244895(A048671(n+5))^A209622(2*n+1)`
-/

namespace A267611.P8542367856514334747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244895 (A048671 (n + 5)).toNat : ℚ) ^ (A209622 (2 * n + 1) : ℤ)

end

end A267611.P8542367856514334747

/-! ## A267611.P13696867427125516823

`A185276(2*n+5)^A185279(A185332(n+1))`
-/

namespace A267611.P13696867427125516823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185276 (2 * n + 5) : ℚ) ^ (A185279 (A185332 (n + 1)).toNat : ℤ)

end

end A267611.P13696867427125516823

/-! ## A267611.P710147801498377018

`A100047(A049891(n+1))^n`
-/

namespace A267611.P710147801498377018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A049891 (n + 1)).toNat ^ n

end

end A267611.P710147801498377018

/-!
# A267612: Triangle read by rows giving successive states of cellular automaton generated by "Rule 185" initiated with a single ON (black) cell.

The programs for A267612, the canonical program `A267612.P17946930726986731092` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267612 has offset 0).

The definition of A267612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267612.P17946930726986731092

`A267845(A020703(n+1)-1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A267612

/-- `A267845(A020703(n+1)-1)` -/
def P17946930726986731092.Spec : Prop :=
  ∀ n, P17946930726986731092.a n = A267612 n

theorem P17946930726986731092.correct : P17946930726986731092.Spec := by
  intro n
  simp only [A267612]

end A267612

/-! ## A267612.P12240951672476644106

`1-Δ[A267533(n+1)]²`
-/

namespace A267612.P12240951672476644106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A267612.P12240951672476644106

namespace A267612

/-- `1-Δ[A267533(n+1)]²` -/
def P12240951672476644106.Spec : Prop :=
  ∀ n, P12240951672476644106.a n = A267612 n

end A267612

/-! ## A267612.P10950812384502679294

`A267845(A020703(n+2))`
-/

namespace A267612.P10950812384502679294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267845 (A020703 (n + 2)).toNat

end

end A267612.P10950812384502679294

namespace A267612

/-- `A267845(A020703(n+2))` -/
def P10950812384502679294.Spec : Prop :=
  ∀ n, P10950812384502679294.a n = A267612 n

end A267612

/-! ## A267612.P2577654894273949858

`A083857(Δ[A267533(n+1)]+2)`
-/

namespace A267612.P2577654894273949858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083857 (f1 (n + 1) - f1 n + 2).toNat

end

end A267612.P2577654894273949858

namespace A267612

/-- `A083857(Δ[A267533(n+1)]+2)` -/
def P2577654894273949858.Spec : Prop :=
  ∀ n, P2577654894273949858.a n = A267612 n

end A267612

/-! ## A267612.P10971559392144036915

`A007318(Δ[A267533(n+1)]+4)-1`
-/

namespace A267612.P10971559392144036915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n + 4).toNat - 1

end

end A267612.P10971559392144036915

namespace A267612

/-- `A007318(Δ[A267533(n+1)]+4)-1` -/
def P10971559392144036915.Spec : Prop :=
  ∀ n, P10971559392144036915.a n = A267612 n

end A267612

/-! ## A267612.P10218563308423614342

`A001222(Δ[A267533(n+1)]+6)-1`
-/

namespace A267612.P10218563308423614342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 6).toNat - 1

end

end A267612.P10218563308423614342

namespace A267612

/-- `A001222(Δ[A267533(n+1)]+6)-1` -/
def P10218563308423614342.Spec : Prop :=
  ∀ n, P10218563308423614342.a n = A267612 n

end A267612

/-! ## A267612.P13394065782175883827

`A267870(A272188(n+1))`
-/

namespace A267612.P13394065782175883827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (A272188 (n + 1)).toNat

end

end A267612.P13394065782175883827

namespace A267612

/-- `A267870(A272188(n+1))` -/
def P13394065782175883827.Spec : Prop :=
  ∀ n, P13394065782175883827.a n = A267612 n

end A267612

/-!
# A267613: Binary representation of the n-th iteration of the "Rule 185" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267613, there is no canonical definition to state claims against.
-/

/-! ## A267613.P3948662239447297904

`A290193(A004273(n))`
-/

namespace A267613.P3948662239447297904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 (A004273 n).toNat

end

end A267613.P3948662239447297904

/-! ## A267613.P11961816896542013993

`A290193(record[A026741(n)])`
-/

namespace A267613.P11961816896542013993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267613.P11961816896542013993

/-! ## A267613.P4520523990388467577

`A290193(eq[n, A026741(n)])`
-/

namespace A267613.P4520523990388467577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267613.P4520523990388467577

/-! ## A267613.P13006262386918852421

`A290193(A028310(2*n)-1)`
-/

namespace A267613.P13006262386918852421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 (A028310 (2 * n) - 1).toNat

end

end A267613.P13006262386918852421

/-! ## A267613.P16482711278352547205

`A290193(A028310(n)-1+n)`
-/

namespace A267613.P16482711278352547205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 (A028310 n - 1 + (n : ℤ)).toNat

end

end A267613.P16482711278352547205

/-! ## A267613.P3147080575164567430

`A290193(n-(1-A028310(n)))`
-/

namespace A267613.P3147080575164567430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 ((n : ℤ) - (1 - A028310 n)).toNat

end

end A267613.P3147080575164567430

/-! ## A267613.P11658764150615531049

`A290193(2*n-A057427(n))`
-/

namespace A267613.P11658764150615531049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 ((2 * n : ℤ) - A057427 n).toNat

end

end A267613.P11658764150615531049

/-! ## A267613.P16405550006068832333

`A290193(n-A057427(n)+n)`
-/

namespace A267613.P16405550006068832333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 ((n : ℤ) - A057427 n + (n : ℤ)).toNat

end

end A267613.P16405550006068832333

/-! ## A267613.P11495076846263864880

`A290193(n-(A057427(n)-n))`
-/

namespace A267613.P11495076846263864880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290193 ((n : ℤ) - (A057427 n - (n : ℤ))).toNat

end

end A267613.P11495076846263864880

/-!
# A267614: Decimal representation of the n-th iteration of the "Rule 185" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267614, the canonical program `A267614.P9132270874382286237` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267614 has offset 0).

The definition of A267614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267614.P9132270874382286237

`ogf((1-4x+10x^2-4x^3)/(1-5x+4x^2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267614

/-- `ogf((1-4x+10x^2-4x^3)/(1-5x+4x^2))` -/
def P9132270874382286237.Spec : Prop :=
  ∀ n, P9132270874382286237.a n = A267614 n

theorem P9132270874382286237.correct : P9132270874382286237.Spec := by
  intro n
  simp only [A267614]

end A267614

/-! ## A267614.P8424980350789614855

`4*a(n-1)+3` with `a(0)=1, a(1)=1, a(2)=11`
-/

namespace A267614.P8424980350789614855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 11] fun n a =>
  4 * a (n - 1) + 3

end

end A267614.P8424980350789614855

namespace A267614

/-- `4*a(n-1)+3` -/
def P8424980350789614855.Spec : Prop :=
  ∀ n, (P8424980350789614855.a n : ℤ) = A267614 n

end A267614

/-! ## A267614.P12716707865768660080

`lcm(4, a(n-1))+3` with `a(0)=1, a(1)=1, a(2)=11`
-/

namespace A267614.P12716707865768660080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 11] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 3

end

end A267614.P12716707865768660080

namespace A267614

/-- `lcm(4, a(n-1))+3` -/
def P12716707865768660080.Spec : Prop :=
  ∀ n, (P12716707865768660080.a n : ℤ) = A267614 n

end A267614

/-! ## A267614.P12475799219128766585

`or(7, 4*a(n-1))` with `a(0)=1, a(1)=1, a(2)=11`
-/

namespace A267614.P12475799219128766585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 11] fun n a =>
  Nat.lor 7 (4 * a (n - 1))

end

end A267614.P12475799219128766585

namespace A267614

/-- `or(7, 4*a(n-1))` -/
def P12475799219128766585.Spec : Prop :=
  ∀ n, (P12475799219128766585.a n : ℤ) = A267614 n

end A267614

/-! ## A267614.P12314754362138868710

`Δ[4*a(n-1)]-1` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A267614.P12314754362138868710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A267614.P12314754362138868710

namespace A267614

/-- `Δ[4*a(n-1)]-1` -/
def P12314754362138868710.Spec : Prop :=
  ∀ n, P12314754362138868710.a n = A267614 n

end A267614

/-! ## A267614.P10520699951939163497

`abs(or(1, 1-A002001(n)))`
-/

namespace A267614.P10520699951939163497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (1 - A002001 n)|

end

end A267614.P10520699951939163497

namespace A267614

/-- `abs(or(1, 1-A002001(n)))` -/
def P10520699951939163497.Spec : Prop :=
  ∀ n, P10520699951939163497.a n = A267614 n

end A267614

/-! ## A267614.P18436406106638520952

`2*A122391(2*n)-1`
-/

namespace A267614.P18436406106638520952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122391 (2 * n) - 1

end

end A267614.P18436406106638520952

namespace A267614

/-- `2*A122391(2*n)-1` -/
def P18436406106638520952.Spec : Prop :=
  ∀ n, P18436406106638520952.a n = A267614 n

end A267614

/-! ## A267614.P12203783752715956241

`record[A283651(n)]^(1-char[1])`
-/

namespace A267614.P12203783752715956241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283651 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A267614.P12203783752715956241

namespace A267614

/-- `record[A283651(n)]^(1-char[1])` -/
def P12203783752715956241.Spec : Prop :=
  ∀ n, P12203783752715956241.a n = (A267614 n : ℚ)

end A267614

/-! ## A267614.P8002760242790262263

`or(a(n-1), A046632(n))` with `a(0)=1, a(1)=1`
-/

namespace A267614.P8002760242790262263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (a (n - 1)) (A046632 n)

end

end A267614.P8002760242790262263

namespace A267614

/-- `or(a(n-1), A046632(n))` -/
def P8002760242790262263.Spec : Prop :=
  ∀ n, P8002760242790262263.a n = A267614 n

end A267614

/-! ## A267614.P12607555765495151466

`A266550(2*n+1)-char[1]`
-/

namespace A267614.P12607555765495151466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267614.P12607555765495151466

namespace A267614

/-- `A266550(2*n+1)-char[1]` -/
def P12607555765495151466.Spec : Prop :=
  ∀ n, P12607555765495151466.a n = A267614 n

end A267614

/-! ## A267614.P17100935706699698703

`A111286(abs(1-n)+n+1)-1`
-/

namespace A267614.P17100935706699698703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat - 1

end

end A267614.P17100935706699698703

namespace A267614

/-- `A111286(abs(1-n)+n+1)-1` -/
def P17100935706699698703.Spec : Prop :=
  ∀ n, P17100935706699698703.a n = A267614 n

end A267614

/-! ## A267614.P1919812339725917873

`A290195(A004273(n))`
-/

namespace A267614.P1919812339725917873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290195 (A004273 n).toNat

end

end A267614.P1919812339725917873

namespace A267614

/-- `A290195(A004273(n))` -/
def P1919812339725917873.Spec : Prop :=
  ∀ n, P1919812339725917873.a n = A267614 n

end A267614

/-! ## A267614.P3848695411843850670

`A266550(A267872(n))`
-/

namespace A267614.P3848695411843850670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (A267872 n).toNat

end

end A267614.P3848695411843850670

namespace A267614

/-- `A266550(A267872(n))` -/
def P3848695411843850670.Spec : Prop :=
  ∀ n, P3848695411843850670.a n = A267614 n

end A267614

/-! ## A267614.P3359633177969822771

`A266550(A140139(n+1))`
-/

namespace A267614.P3359633177969822771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (A140139 (n + 1)).toNat

end

end A267614.P3359633177969822771

namespace A267614

/-- `A266550(A140139(n+1))` -/
def P3359633177969822771.Spec : Prop :=
  ∀ n, P3359633177969822771.a n = A267614 n

end A267614

/-! ## A267614.P5701738469540868965

`A266550(A163985(n+1))`
-/

namespace A267614.P5701738469540868965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (A163985 (n + 1)).toNat

end

end A267614.P5701738469540868965

namespace A267614

/-- `A266550(A163985(n+1))` -/
def P5701738469540868965.Spec : Prop :=
  ∀ n, P5701738469540868965.a n = A267614 n

end A267614

/-! ## A267614.P9622283894160039759

`A083329(ceil(log2(A245489(n))))`
-/

namespace A267614.P9622283894160039759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 ⌈Real.logb 2 (A245489 n : ℝ)⌉.toNat

end

end A267614.P9622283894160039759

namespace A267614

/-- `A083329(ceil(log2(A245489(n))))` -/
def P9622283894160039759.Spec : Prop :=
  ∀ n, P9622283894160039759.a n = A267614 n

end A267614

/-! ## A267614.P12413097022255170789

`Δ[A083318(A004275(n))]-1`
-/

namespace A267614.P12413097022255170789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A267614.P12413097022255170789

namespace A267614

/-- `Δ[A083318(A004275(n))]-1` -/
def P12413097022255170789.Spec : Prop :=
  ∀ n, P12413097022255170789.a n = A267614 n

end A267614

/-! ## A267614.P17734218229640219537

`A267596(n)-A131577(n)²`
-/

namespace A267614.P17734218229640219537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267596 n - A131577 n ^ 2

end

end A267614.P17734218229640219537

namespace A267614

/-- `A267596(n)-A131577(n)²` -/
def P17734218229640219537.Spec : Prop :=
  ∀ n, P17734218229640219537.a n = A267614 n

end A267614

/-! ## A267614.P3670843822280144441

`Δ[A000079(n)*A166444(n)]-1`
-/

namespace A267614.P3670843822280144441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A267614.P3670843822280144441

namespace A267614

/-- `Δ[A000079(n)*A166444(n)]-1` -/
def P3670843822280144441.Spec : Prop :=
  ∀ n, P3670843822280144441.a n = A267614 n

end A267614

/-! ## A267614.P11274044150698029580

`A207629(A098749(n+1))`
-/

namespace A267614.P11274044150698029580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207629 (A098749 (n + 1)).toNat

end

end A267614.P11274044150698029580

namespace A267614

/-- `A207629(A098749(n+1))` -/
def P11274044150698029580.Spec : Prop :=
  ∀ n, P11274044150698029580.a n = A267614 n

end A267614

/-!
# A267615: a(n) = 2^n + 11.

The programs for A267615, the canonical program `A267615.P2967466212908059866` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267615 has offset 0).

The definition of A267615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+11` (program `A267615.P2967466212908059866`, by `A267615.P2967466212908059866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267615.P2967466212908059866

`2^n+11`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267615

/-- `2^n+11` -/
def P2967466212908059866.Spec : Prop :=
  ∀ n, (P2967466212908059866.a n : ℤ) = A267615 n

theorem P2967466212908059866.correct : P2967466212908059866.Spec := by
  intro n
  simp only [A267615]

end A267615

/-!
# A267616: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with every element equal to at least one horizontal or antidiagonal neighbor and the top left element equal to 0.

The programs for A267616, there is no canonical definition to state claims against.
-/

/-! ## A267616.P10303778297221207021

`n!*∏[1/a(n-1)+2*n+1]` with `a(0)=1`
-/

namespace A267616.P10303778297221207021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  1 / f1 (n - 1) + (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A267616.P10303778297221207021

/-! ## A267616.P876498544315583166

`n!*A025164(n+1)`
-/

namespace A267616.P876498544315583166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025164 (n + 1)

end

end A267616.P876498544315583166

/-! ## A267616.P16398540920424185559

`A000142(n)*A025164(n+1)`
-/

namespace A267616.P16398540920424185559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A025164 (n + 1)

end

end A267616.P16398540920424185559

/-!
# A267617: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to at least one horizontal or antidiagonal neighbor and the top left element equal to 0.

The programs for A267617, there is no canonical definition to state claims against.
-/

/-! ## A267617.P13705710635902386252

`A124540(n)-A016412(A299942(n+1))`
-/

namespace A267617.P13705710635902386252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 n - A016412 (A299942 (n + 1)).toNat

end

end A267617.P13705710635902386252

/-! ## A267617.P14693241305890008203

`A054239(A214776(n)%A061955(n+1))`
-/

namespace A267617.P14693241305890008203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (Int.tmod (A214776 n) (A061955 (n + 1))).toNat

end

end A267617.P14693241305890008203

/-! ## A267617.P8159868711496995802

`A004128(A294498(n)%A061955(n+1))`
-/

namespace A267617.P8159868711496995802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (Int.tmod (A294498 n) (A061955 (n + 1))).toNat

end

end A267617.P8159868711496995802

/-! ## A267617.P1403885903138817343

`A326178(A306024(n)%A061955(n+1))`
-/

namespace A267617.P1403885903138817343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (Int.tmod (A306024 n) (A061955 (n + 1))).toNat

end

end A267617.P1403885903138817343

/-! ## A267617.P15378935660018440342

`A055086(A320253(n)%A241381(3*n+1))`
-/

namespace A267617.P15378935660018440342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.tmod (A320253 n) (A241381 (3 * n + 1))).toNat

end

end A267617.P15378935660018440342

/-!
# A267618: Number of 2Xn arrays containing n copies of 0..2-1 with every element equal to at least one horizontal or antidiagonal neighbor and the top left element equal to 0.

The programs for A267618, there is no canonical definition to state claims against.
-/

/-! ## A267618.P903682899456317777

`A267617(∑[n+1]+2)`
-/

namespace A267618.P903682899456317777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267617 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A267618.P903682899456317777

/-! ## A267618.P16430690607719294986

`A349079(a(n-1)+1)` with `a(0)=0`
-/

namespace A267618.P16430690607719294986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A349079 (a (n - 1) + 1).toNat

end

end A267618.P16430690607719294986

/-! ## A267618.P800552202850340158

`A048273(A378939(n))`
-/

namespace A267618.P800552202850340158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A378939 n).toNat

end

end A267618.P800552202850340158

/-!
# A267619: Number of 3 X n arrays containing n copies of 0..3-1 with every element equal to at least one horizontal or antidiagonal neighbor and the top left element equal to 0.

The programs for A267619, there is no canonical definition to state claims against.
-/

/-! ## A267619.P14807805381232467341

`A267617(∑[n+2]+4)`
-/

namespace A267619.P14807805381232467341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267617 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267619.P14807805381232467341

/-! ## A267619.P17472983493097541417

`lcm(2, A267617(A167614(n+1)))`
-/

namespace A267619.P17472983493097541417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267617 (A167614 (n + 1)).toNat)

end

end A267619.P17472983493097541417

/-! ## A267619.P3386377374926453178

`A267617(A167614(n+1))+A011744(n)`
-/

namespace A267619.P3386377374926453178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267617 (A167614 (n + 1)).toNat + A011744 n

end

end A267619.P3386377374926453178

/-! ## A267619.P3708501016393406966

`A267617(A167614(n+1))+A035042(n)`
-/

namespace A267619.P3708501016393406966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267617 (A167614 (n + 1)).toNat + A035042 n

end

end A267619.P3708501016393406966

/-! ## A267619.P14769760075141825547

`A267617(A167614(n+1))+A102683(n)`
-/

namespace A267619.P14769760075141825547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267617 (A167614 (n + 1)).toNat + A102683 n

end

end A267619.P14769760075141825547

/-!
# A267620: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to at least one horizontal or antidiagonal neighbor and the top left element equal to 0.

The programs for A267620, there is no canonical definition to state claims against.
-/

/-! ## A267620.P8080245536677272237

`A267617(∑[n+3]+7)`
-/

namespace A267620.P8080245536677272237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267617 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267620.P8080245536677272237

/-!
# A267621: Triangle read by rows giving successive states of cellular automaton generated by "Rule 187" initiated with a single ON (black) cell.

The programs for A267621, the canonical program `A267621.P11476009424097823387` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267621 has offset 0).

The definition of A267621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267621.P17285179557487776594

`char[char[comp[n²]]+n]`
-/

namespace A267621.P17285179557487776594
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267621.P17285179557487776594

namespace A267621

/-- `char[char[comp[n²]]+n]` -/
def P17285179557487776594.Spec : Prop :=
  ∀ n, (P17285179557487776594.a n : ℤ) = A267621 n

end A267621

/-! ## A267621.P1336317860816120894

`xor(1, char[(n+1)²+1])`
-/

namespace A267621.P1336317860816120894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A267621.P1336317860816120894

namespace A267621

/-- `xor(1, char[(n+1)²+1])` -/
def P1336317860816120894.Spec : Prop :=
  ∀ n, (P1336317860816120894.a n : ℤ) = A267621 n

end A267621

/-! ## A267621.P13855622113168713508

`dr(1-char[(n+1)²+1])`
-/

namespace A267621.P13855622113168713508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A267621.P13855622113168713508

namespace A267621

/-- `dr(1-char[(n+1)²+1])` -/
def P13855622113168713508.Spec : Prop :=
  ∀ n, (P13855622113168713508.a n : ℤ) = A267621 n

end A267621

/-! ## A267621.P11678649974901552946

`and(1, char[n+1-char[n²]])`
-/

namespace A267621.P11678649974901552946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A267621.P11678649974901552946

namespace A267621

/-- `and(1, char[n+1-char[n²]])` -/
def P11678649974901552946.Spec : Prop :=
  ∀ n, (P11678649974901552946.a n : ℤ) = A267621 n

end A267621

/-! ## A267621.P11476009424097823387

`ceil(∏{d}[n-1, 1/(#-2*n)])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267621

/-- `ceil(∏{d}[n-1, 1/(#-2*n)])` -/
def P11476009424097823387.Spec : Prop :=
  ∀ n, P11476009424097823387.a n = A267621 n

theorem P11476009424097823387.correct : P11476009424097823387.Spec := by
  intro n
  simp only [A267621]

end A267621

/-! ## A267621.P1912151672355462170

`ceil(∏{d}[n-1, -(#/(n+1))])²`
-/

namespace A267621.P1912151672355462170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f1 n).natAbs, (-((d : ℚ) / (n + 1 : ℚ)))⌉ ^ 2

end

end A267621.P1912151672355462170

namespace A267621

/-- `ceil(∏{d}[n-1, -(#/(n+1))])²` -/
def P1912151672355462170.Spec : Prop :=
  ∀ n, P1912151672355462170.a n = A267621 n

end A267621

/-! ## A267621.P16379378916758409078

`A265186(n+1)`
-/

namespace A267621.P16379378916758409078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (n + 1)

end

end A267621.P16379378916758409078

namespace A267621

/-- `A265186(n+1)` -/
def P16379378916758409078.Spec : Prop :=
  ∀ n, P16379378916758409078.a n = A267621 n

end A267621

/-! ## A267621.P16883853663046140540

`1-char[A133128(n)]`
-/

namespace A267621.P16883853663046140540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267621.P16883853663046140540

namespace A267621

/-- `1-char[A133128(n)]` -/
def P16883853663046140540.Spec : Prop :=
  ∀ n, P16883853663046140540.a n = A267621 n

end A267621

/-! ## A267621.P16388164946488071831

`log2(A275437(abs(2-n)))`
-/

namespace A267621.P16388164946488071831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A275437 |2 - (n : ℤ)|.toNat : ℝ)

end

end A267621.P16388164946488071831

namespace A267621

/-- `log2(A275437(abs(2-n)))` -/
def P16388164946488071831.Spec : Prop :=
  ∀ n, P16388164946488071831.a n = (A267621 n : ℝ)

end A267621

/-! ## A267621.P2515255324911675864

`C(C(n, A143051(n)), n)`
-/

namespace A267621.P2515255324911675864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n (A143051 n).toNat) n

end

end A267621.P2515255324911675864

namespace A267621

/-- `C(C(n, A143051(n)), n)` -/
def P2515255324911675864.Spec : Prop :=
  ∀ n, (P2515255324911675864.a n : ℤ) = A267621 n

end A267621

/-! ## A267621.P14728675343264689803

`(Δ[A263919(n)]^n)²`
-/

namespace A267621.P14728675343264689803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ n) ^ 2

end

end A267621.P14728675343264689803

namespace A267621

/-- `(Δ[A263919(n)]^n)²` -/
def P14728675343264689803.Spec : Prop :=
  ∀ n, P14728675343264689803.a n = A267621 n

end A267621

/-! ## A267621.P4545086985738290103

`1-char[A008459(n)+1]`
-/

namespace A267621.P4545086985738290103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267621.P4545086985738290103

namespace A267621

/-- `1-char[A008459(n)+1]` -/
def P4545086985738290103.Spec : Prop :=
  ∀ n, P4545086985738290103.a n = A267621 n

end A267621

/-! ## A267621.P5093877487336179118

`1-char[A082043(n)+1]`
-/

namespace A267621.P5093877487336179118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267621.P5093877487336179118

namespace A267621

/-- `1-char[A082043(n)+1]` -/
def P5093877487336179118.Spec : Prop :=
  ∀ n, P5093877487336179118.a n = A267621 n

end A267621

/-! ## A267621.P12205681402547845248

`1-char[A253909(n)+1]`
-/

namespace A267621.P12205681402547845248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267621.P12205681402547845248

namespace A267621

/-- `1-char[A253909(n)+1]` -/
def P12205681402547845248.Spec : Prop :=
  ∀ n, P12205681402547845248.a n = A267621 n

end A267621

/-! ## A267621.P11017150415197951905

`A267635((n-1)%(n+1))`
-/

namespace A267621.P11017150415197951905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A267621.P11017150415197951905

namespace A267621

/-- `A267635((n-1)%(n+1))` -/
def P11017150415197951905.Spec : Prop :=
  ∀ n, P11017150415197951905.a n = A267621 n

end A267621

/-! ## A267621.P3593938841161500915

`A267635(n-a(n-1))` with `a(0)=1`
-/

namespace A267621.P3593938841161500915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267635 ((n : ℤ) - a (n - 1)).toNat

end

end A267621.P3593938841161500915

namespace A267621

/-- `A267635(n-a(n-1))` -/
def P3593938841161500915.Spec : Prop :=
  ∀ n, P3593938841161500915.a n = A267621 n

end A267621

/-! ## A267621.P5448979704063868543

`A263243(n*a(n-1))` with `a(0)=1`
-/

namespace A267621.P5448979704063868543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263243 ((n : ℤ) * a (n - 1)).toNat

end

end A267621.P5448979704063868543

namespace A267621

/-- `A263243(n*a(n-1))` -/
def P5448979704063868543.Spec : Prop :=
  ∀ n, P5448979704063868543.a n = A267621 n

end A267621

/-! ## A267621.P8010554965567224346

`A267520(n*a(n-1))` with `a(0)=1`
-/

namespace A267621.P8010554965567224346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267520 ((n : ℤ) * a (n - 1)).toNat

end

end A267621.P8010554965567224346

namespace A267621

/-- `A267520(n*a(n-1))` -/
def P8010554965567224346.Spec : Prop :=
  ∀ n, P8010554965567224346.a n = A267621 n

end A267621

/-! ## A267621.P12955948253462896747

`A263243(n^a(n-1))` with `a(0)=1`
-/

namespace A267621.P12955948253462896747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263243 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A267621.P12955948253462896747

namespace A267621

/-- `A263243(n^a(n-1))` -/
def P12955948253462896747.Spec : Prop :=
  ∀ n, P12955948253462896747.a n = A267621 n

end A267621

/-! ## A267621.P1450391954997571130

`A267520(n^a(n-1))` with `a(0)=1`
-/

namespace A267621.P1450391954997571130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267520 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A267621.P1450391954997571130

namespace A267621

/-- `A267520(n^a(n-1))` -/
def P1450391954997571130.Spec : Prop :=
  ∀ n, P1450391954997571130.a n = A267621 n

end A267621

/-!
# A267622: Binary representation of the n-th iteration of the "Rule 187" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267622, there is no canonical definition to state claims against.
-/

/-! ## A267622.P7608556970226017139

`floor(91*100^((n-1)/2)*10^n/9)`
-/

namespace A267622.P7608556970226017139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊91 * (100 : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ) * (10 ^ n : ℝ) / 9⌋

end

end A267622.P7608556970226017139

/-! ## A267622.P1040797107454777015

`record[A283505(n)]`
-/

namespace A267622.P1040797107454777015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267622.P1040797107454777015

/-! ## A267622.P471135364713813428

`record[A290072(n)]`
-/

namespace A267622.P471135364713813428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267622.P471135364713813428

/-! ## A267622.P4814426684382303551

`A267623(2*n)`
-/

namespace A267622.P4814426684382303551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 (2 * n)

end

end A267622.P4814426684382303551

/-! ## A267622.P11524186412049284717

`A283505(2*n)`
-/

namespace A267622.P11524186412049284717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (2 * n)

end

end A267622.P11524186412049284717

/-! ## A267622.P14726418858382075347

`A284479(2*n)`
-/

namespace A267622.P14726418858382075347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284479 (2 * n)

end

end A267622.P14726418858382075347

/-! ## A267622.P3293831105511554200

`A290072(2*n)`
-/

namespace A267622.P3293831105511554200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290072 (2 * n)

end

end A267622.P3293831105511554200

/-! ## A267622.P6816175096032631349

`A290112(2*n)`
-/

namespace A267622.P6816175096032631349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290112 (2 * n)

end

end A267622.P6816175096032631349

/-! ## A267622.P18135394020759472678

`A290661(2*n)`
-/

namespace A267622.P18135394020759472678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290661 (2 * n)

end

end A267622.P18135394020759472678

/-!
# A267623: Binary representation of the middle column of the "Rule 187" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267623, the canonical program `A267623.P14376251249606670418` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267623 has offset 0).

The definition of A267623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267623.P14376251249606670418

`ogf((1-x+x^2)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267623

/-- `ogf((1-x+x^2)/(1-11x+10x^2))` -/
def P14376251249606670418.Spec : Prop :=
  ∀ n, P14376251249606670418.a n = A267623 n

theorem P14376251249606670418.correct : P14376251249606670418.Spec := by
  intro n
  simp only [A267623]

end A267623

/-! ## A267623.P9290267104856406410

`10*a(n-1)+1` with `a(0)=1, a(1)=10`
-/

namespace A267623.P9290267104856406410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * a (n - 1) + 1

end

end A267623.P9290267104856406410

namespace A267623

/-- `10*a(n-1)+1` -/
def P9290267104856406410.Spec : Prop :=
  ∀ n, (P9290267104856406410.a n : ℤ) = A267623 n

end A267623

/-! ## A267623.P11471609313515911422

`or(1, 10*a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A267623.P11471609313515911422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.lor 1 (10 * a (n - 1))

end

end A267623.P11471609313515911422

namespace A267623

/-- `or(1, 10*a(n-1))` -/
def P11471609313515911422.Spec : Prop :=
  ∀ n, (P11471609313515911422.a n : ℤ) = A267623 n

end A267623

/-! ## A267623.P1798345268736378874

`xor(1, 10*a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A267623.P1798345268736378874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.xor 1 (10 * a (n - 1))

end

end A267623.P1798345268736378874

namespace A267623

/-- `xor(1, 10*a(n-1))` -/
def P1798345268736378874.Spec : Prop :=
  ∀ n, (P1798345268736378874.a n : ℤ) = A267623 n

end A267623

/-! ## A267623.P223707399455197796

`∑[10*a(n-1)]` with `a(0)=1, a(1)=9, a(2)=91`
-/

namespace A267623.P223707399455197796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 91] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267623.P223707399455197796

namespace A267623

/-- `∑[10*a(n-1)]` -/
def P223707399455197796.Spec : Prop :=
  ∀ n, (P223707399455197796.a n : ℤ) = A267623 n

end A267623

/-! ## A267623.P16713652067513484071

`∑[10^n]-floor(10^(n-1))`
-/

namespace A267623.P16713652067513484071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A267623.P16713652067513484071

namespace A267623

/-- `∑[10^n]-floor(10^(n-1))` -/
def P16713652067513484071.Spec : Prop :=
  ∀ n, P16713652067513484071.a n = A267623 n

end A267623

/-! ## A267623.P2722134014347284707

`Δ[abs(1-n-10*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A267623.P2722134014347284707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  |1 - (n : ℤ) - 10 * f1 (n - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267623.P2722134014347284707

namespace A267623

/-- `Δ[abs(1-n-10*a(n-1))]` -/
def P2722134014347284707.Spec : Prop :=
  ∀ n, P2722134014347284707.a n = A267623 n

end A267623

/-! ## A267623.P352833026725355010

`xor(char[1], A290112(n))`
-/

namespace A267623.P352833026725355010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A290112 n)

end

end A267623.P352833026725355010

namespace A267623

/-- `xor(char[1], A290112(n))` -/
def P352833026725355010.Spec : Prop :=
  ∀ n, P352833026725355010.a n = A267623 n

end A267623

/-! ## A267623.P2395012795427223281

`∑[A178501(n)+A055996(n)]`
-/

namespace A267623.P2395012795427223281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n + A055996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267623.P2395012795427223281

namespace A267623

/-- `∑[A178501(n)+A055996(n)]` -/
def P2395012795427223281.Spec : Prop :=
  ∀ n, P2395012795427223281.a n = A267623 n

end A267623

/-! ## A267623.P8501282063129372773

`abs(A178501(n)-record[A287468(n)])`
-/

namespace A267623.P8501282063129372773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178501 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A267623.P8501282063129372773

namespace A267623

/-- `abs(A178501(n)-record[A287468(n)])` -/
def P8501282063129372773.Spec : Prop :=
  ∀ n, P8501282063129372773.a n = A267623 n

end A267623

/-! ## A267623.P18341879955679755236

`abs(A000042(n+1)-A178501(n))`
-/

namespace A267623.P18341879955679755236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000042 (n + 1) - A178501 n|

end

end A267623.P18341879955679755236

namespace A267623

/-- `abs(A000042(n+1)-A178501(n))` -/
def P18341879955679755236.Spec : Prop :=
  ∀ n, P18341879955679755236.a n = A267623 n

end A267623

/-! ## A267623.P9843855842693688370

`∑[1/A063945(n+1)]*A063945(n+1)`
-/

namespace A267623.P9843855842693688370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A063945 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A063945 (n + 1) : ℚ)

end

end A267623.P9843855842693688370

namespace A267623

/-- `∑[1/A063945(n+1)]*A063945(n+1)` -/
def P9843855842693688370.Spec : Prop :=
  ∀ n, P9843855842693688370.a n = (A267623 n : ℚ)

end A267623

/-! ## A267623.P10178659988953333296

`∑[1/A137233(n+1)]*A137233(n+1)`
-/

namespace A267623.P10178659988953333296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A137233 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A137233 (n + 1) : ℚ)

end

end A267623.P10178659988953333296

namespace A267623

/-- `∑[1/A137233(n+1)]*A137233(n+1)` -/
def P10178659988953333296.Spec : Prop :=
  ∀ n, P10178659988953333296.a n = (A267623 n : ℚ)

end A267623

/-!
# A267624: Number of n X n arrays containing n copies of 0..n-1 with every element equal to or 1 greater than any west neighbor modulo n and the upper left element equal to 0.

The programs for A267624, there is no canonical definition to state claims against.
-/

/-! ## A267624.P9475468267645642843

`A267629(∑[4*n]+1)`
-/

namespace A267624.P9475468267645642843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267624.P9475468267645642843

/-! ## A267624.P6311211616483435029

`A267751(∑[4*n]+1)`
-/

namespace A267624.P6311211616483435029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267624.P6311211616483435029

/-!
# A267625: Number of nX2 arrays containing 2 copies of 0..n-1 with every element equal to or 1 greater than any west neighbor modulo n and the upper left element equal to 0.

The programs for A267625, there is no canonical definition to state claims against.
-/

/-! ## A267625.P9663810537756189014

`A267629(∑[n+2])`
-/

namespace A267625.P9663810537756189014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267625.P9663810537756189014

/-! ## A267625.P763358383867290928

`record[A267629(∑[A152271(n)])]`
-/

namespace A267625.P763358383867290928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267625.P763358383867290928

/-! ## A267625.P14757700043035485457

`record[A267629(record[A185180(n+1)])]`
-/

namespace A267625.P14757700043035485457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267625.P14757700043035485457

/-! ## A267625.P7951650562347679394

`record[A267629(A347633(n+1)+1)]`
-/

namespace A267625.P7951650562347679394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267625.P7951650562347679394

/-! ## A267625.P11307670567065370220

`record[gcd(A008290(n), A267629(n+1))]`
-/

namespace A267625.P11307670567065370220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A267629 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267625.P11307670567065370220

/-!
# A267626: Number of nX3 arrays containing 3 copies of 0..n-1 with every element equal to or 1 greater than any west neighbor modulo n and the upper left element equal to 0.

The programs for A267626, there is no canonical definition to state claims against.
-/

/-! ## A267626.P4772407971103782425

`A267629(∑[n+3]+1)`
-/

namespace A267626.P4772407971103782425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267626.P4772407971103782425

/-! ## A267626.P2545488190678525639

`record[A267629(A347633(n+1))]`
-/

namespace A267626.P2545488190678525639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267626.P2545488190678525639

/-! ## A267626.P15177108325811499213

`record[A267629(gcd(n, A008290(n)))]`
-/

namespace A267626.P15177108325811499213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (Int.gcd (n : ℤ) (A008290 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267626.P15177108325811499213

/-! ## A267626.P13967211531823415546

`record[A267629(sqrt(A303054(n+1)))]`
-/

namespace A267626.P13967211531823415546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267626.P13967211531823415546

/-! ## A267626.P16404539408863868405

`record[gcd(A158285(n), A267629(n+1))]`
-/

namespace A267626.P16404539408863868405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158285 n) (A267629 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267626.P16404539408863868405

/-!
# A267627: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with every element equal to or 1 greater than any west neighbor modulo n and the upper left element equal to 0.

The programs for A267627, there is no canonical definition to state claims against.
-/

/-! ## A267627.P6186566868390369603

`A267629(∑[n+4]+3)`
-/

namespace A267627.P6186566868390369603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267627.P6186566868390369603

/-! ## A267627.P12002908728985886883

`∏{p}[A267629(A055998(n+2)), #]`
-/

namespace A267627.P12002908728985886883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A055998 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A267627.P12002908728985886883

/-!
# A267628: Number of nX5 arrays of permutations of 5 copies of 0..n-1 with every element equal to or 1 greater than any west neighbor modulo n and the upper left element equal to 0.

The programs for A267628, there is no canonical definition to state claims against.
-/

/-! ## A267628.P1444749439768654045

`A267629(C(n+5, 2)+1+n)`
-/

namespace A267628.P1444749439768654045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (Nat.choose (n + 5) 2 + 1 + n)

end

end A267628.P1444749439768654045

/-! ## A267628.P4468093110909043953

`A267629(Δ[A264443(n)])`
-/

namespace A267628.P4468093110909043953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (f1 (n + 1) - f1 n).toNat

end

end A267628.P4468093110909043953

/-! ## A267628.P18029033393332270896

`A267629(A046691(n+3))`
-/

namespace A267628.P18029033393332270896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A046691 (n + 3)).toNat

end

end A267628.P18029033393332270896

/-! ## A267628.P3591181884182930361

`A267629(A060577(n+4))`
-/

namespace A267628.P3591181884182930361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A060577 (n + 4)).toNat

end

end A267628.P3591181884182930361

/-!
# A267629: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any west neighbor modulo n and the upper left element equal to 0.

The programs for A267629, there is no canonical definition to state claims against.
-/

/-! ## A267629.P11539575869079771059

`A072621(A267836(n+1))`
-/

namespace A267629.P11539575869079771059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A267836 (n + 1)).toNat

end

end A267629.P11539575869079771059

/-! ## A267629.P16369243252176860528

`A267425(n+1)+A119464(A156888(n))`
-/

namespace A267629.P16369243252176860528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (n + 1) + A119464 (A156888 n).toNat

end

end A267629.P16369243252176860528

/-! ## A267629.P3945521971562134360

`A267562(n+1)+A119464(A156888(n))`
-/

namespace A267629.P3945521971562134360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (n + 1) + A119464 (A156888 n).toNat

end

end A267629.P3945521971562134360

/-! ## A267629.P11359948919685971126

`A339170(A090657(n))+A267019(n+1)`
-/

namespace A267629.P11359948919685971126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339170 (A090657 n).toNat + A267019 (n + 1)

end

end A267629.P11359948919685971126

/-! ## A267629.P13665079057206374681

`A339170(A090657(n))+A267278(n+1)`
-/

namespace A267629.P13665079057206374681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339170 (A090657 n).toNat + A267278 (n + 1)

end

end A267629.P13665079057206374681

/-!
# A267630: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any west neighbor modulo 4 and the upper left element equal to 0.

The programs for A267630, there is no canonical definition to state claims against.
-/

/-! ## A267630.P5709788089341672883

`A267629(A141214(n)+7)`
-/

namespace A267630.P5709788089341672883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A141214 n + 7).toNat

end

end A267630.P5709788089341672883

/-! ## A267630.P192484157483701096

`A267629(A052905(n)+9)`
-/

namespace A267630.P192484157483701096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A052905 n + 9).toNat

end

end A267630.P192484157483701096

/-! ## A267630.P6182632148381955485

`A267629(A055999(n)+10)`
-/

namespace A267630.P6182632148381955485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A055999 n + 10).toNat

end

end A267630.P6182632148381955485

/-! ## A267630.P3546732900002565705

`A267629(eq[5, A066657(n)])`
-/

namespace A267630.P3546732900002565705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267630.P3546732900002565705

/-! ## A267630.P13885927111532432449

`A267629(A167614(n+2)+1)`
-/

namespace A267630.P13885927111532432449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A167614 (n + 2) + 1).toNat

end

end A267630.P13885927111532432449

/-!
# A267631: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any west neighbor modulo 5 and the upper left element equal to 0.

The programs for A267631, there is no canonical definition to state claims against.
-/

/-! ## A267631.P17264636900712838152

`A267629(∑[n+4]+11)`
-/

namespace A267631.P17264636900712838152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267631.P17264636900712838152

/-! ## A267631.P11417654616689784682

`A267629(A141214(n+1)+8)+A034445(n+1)`
-/

namespace A267631.P11417654616689784682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A141214 (n + 1) + 8).toNat + A034445 (n + 1)

end

end A267631.P11417654616689784682

/-! ## A267631.P14387919876870407399

`A083117(n+1)*A267629(A141214(n+1)+8)`
-/

namespace A267631.P14387919876870407399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083117 (n + 1) * A267629 (A141214 (n + 1) + 8).toNat

end

end A267631.P14387919876870407399

/-! ## A267631.P3288602254774934571

`A097154(n+1)*A267629(A141214(n+1)+8)`
-/

namespace A267631.P3288602254774934571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097154 (n + 1) * A267629 (A141214 (n + 1) + 8).toNat

end

end A267631.P3288602254774934571

/-!
# A267632: Triangle T(n, k) read by rows: the k-th column of the n-th row lists the number of ways to select k distinct numbers (k >= 1) from [1..n] so that their sum is divisible by n.

The programs for A267632, there is no canonical definition to state claims against.
-/

/-! ## A267632.P4105239210880705828

`A328481(A171882(n))`
-/

namespace A267632.P4105239210880705828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328481 (A171882 n).toNat

end

end A267632.P4105239210880705828

/-! ## A267632.P16146556946082456882

`A225541(lcm(14, A171882(n)))`
-/

namespace A267632.P16146556946082456882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (Int.lcm 14 (A171882 n))

end

end A267632.P16146556946082456882

/-! ## A267632.P2093552954996713639

`A089293(A171882(n)+A000007(n))`
-/

namespace A267632.P2093552954996713639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A171882 n + A000007 n).toNat

end

end A267632.P2093552954996713639

/-! ## A267632.P276440732069950613

`A089293(A171882(n)+A010057(n))`
-/

namespace A267632.P276440732069950613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A171882 n + A010057 n).toNat

end

end A267632.P276440732069950613

/-! ## A267632.P393684701446803792

`A089293(A185284(n)+A171882(n))`
-/

namespace A267632.P393684701446803792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A185284 n + A171882 n).toNat

end

end A267632.P393684701446803792

/-!
# A267634: Total number of nodes in a maximal connected component over all simple labeled graphs on n nodes.

The programs for A267634, there is no canonical definition to state claims against.
-/

/-! ## A267634.P12621860653200883757

`A326973(n)%(4^n)`
-/

namespace A267634.P12621860653200883757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326973 n) (4 ^ n : ℤ)

end

end A267634.P12621860653200883757

/-!
# A267635: Triangle read by rows giving successive states of cellular automaton generated by "Rule 189" initiated with a single ON (black) cell.

The programs for A267635, the canonical program `A267635.P6820288628283692924` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267635 has offset 0).

The definition of A267635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267635.P6820288628283692924

`char[comp[(n+1)²]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267635

/-- `char[comp[(n+1)²]]` -/
def P6820288628283692924.Spec : Prop :=
  ∀ n, (P6820288628283692924.a n : ℤ) = A267635 n

theorem P6820288628283692924.correct : P6820288628283692924.Spec := by
  intro n
  simp only [A267635]

end A267635

/-! ## A267635.P7972774111262403661

`xor(1, char[(n+1)²])`
-/

namespace A267635.P7972774111262403661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A267635.P7972774111262403661

namespace A267635

/-- `xor(1, char[(n+1)²])` -/
def P7972774111262403661.Spec : Prop :=
  ∀ n, (P7972774111262403661.a n : ℤ) = A267635 n

end A267635

/-! ## A267635.P1417597098514795590

`xor(1, char[n²])^n`
-/

namespace A267635.P1417597098514795590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) ^ n

end

end A267635.P1417597098514795590

namespace A267635

/-- `xor(1, char[n²])^n` -/
def P1417597098514795590.Spec : Prop :=
  ∀ n, (P1417597098514795590.a n : ℤ) = A267635 n

end A267635

/-! ## A267635.P14736353889501750565

`floor(cos(char[(n+1)²]))`
-/

namespace A267635.P14736353889501750565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267635.P14736353889501750565

namespace A267635

/-- `floor(cos(char[(n+1)²]))` -/
def P14736353889501750565.Spec : Prop :=
  ∀ n, P14736353889501750565.a n = A267635 n

end A267635

/-! ## A267635.P11415215891616275494

`floor(acos(char[(n+1)²]))`
-/

namespace A267635.P11415215891616275494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267635.P11415215891616275494

namespace A267635

/-- `floor(acos(char[(n+1)²]))` -/
def P11415215891616275494.Spec : Prop :=
  ∀ n, P11415215891616275494.a n = A267635 n

end A267635

/-! ## A267635.P10862171267705087954

`floor(acot(char[(n+1)²]))`
-/

namespace A267635.P10862171267705087954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267635.P10862171267705087954

namespace A267635

/-- `floor(acot(char[(n+1)²]))` -/
def P10862171267705087954.Spec : Prop :=
  ∀ n, P10862171267705087954.a n = A267635 n

end A267635

/-! ## A267635.P3378645792006290278

`sin(acos(char[(n+1)²]))`
-/

namespace A267635.P3378645792006290278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A267635.P3378645792006290278

namespace A267635

/-- `sin(acos(char[(n+1)²]))` -/
def P3378645792006290278.Spec : Prop :=
  ∀ n, P3378645792006290278.a n = (A267635 n : ℝ)

end A267635

/-! ## A267635.P11909515569220418315

`cos(asin(char[(n+1)²]))`
-/

namespace A267635.P11909515569220418315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A267635.P11909515569220418315

namespace A267635

/-- `cos(asin(char[(n+1)²]))` -/
def P11909515569220418315.Spec : Prop :=
  ∀ n, P11909515569220418315.a n = (A267635 n : ℝ)

end A267635

/-! ## A267635.P9721122693431673041

`dr(1-char[(n+1)²])`
-/

namespace A267635.P9721122693431673041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A267635.P9721122693431673041

namespace A267635

/-- `dr(1-char[(n+1)²])` -/
def P9721122693431673041.Spec : Prop :=
  ∀ n, (P9721122693431673041.a n : ℤ) = A267635 n

end A267635

/-! ## A267635.P2754043679174519881

`1-char[record[(1-n)²]]`
-/

namespace A267635.P2754043679174519881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267635.P2754043679174519881

namespace A267635

/-- `1-char[record[(1-n)²]]` -/
def P2754043679174519881.Spec : Prop :=
  ∀ n, P2754043679174519881.a n = A267635 n

end A267635

/-! ## A267635.P4952717950736079812

`(1-char[n²])^dr(n)`
-/

namespace A267635.P4952717950736079812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A267635.P4952717950736079812

namespace A267635

/-- `(1-char[n²])^dr(n)` -/
def P4952717950736079812.Spec : Prop :=
  ∀ n, P4952717950736079812.a n = A267635 n

end A267635

/-! ## A267635.P4750072150237314827

`and(1, char[n-char[n²]])`
-/

namespace A267635.P4750072150237314827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A267635.P4750072150237314827

namespace A267635

/-- `and(1, char[n-char[n²]])` -/
def P4750072150237314827.Spec : Prop :=
  ∀ n, (P4750072150237314827.a n : ℤ) = A267635 n

end A267635

/-! ## A267635.P13452235943839245674

`(1-char[n²])^atan(n)`
-/

namespace A267635.P13452235943839245674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ) ^ (Real.arctan (n : ℝ))

end

end A267635.P13452235943839245674

namespace A267635

/-- `(1-char[n²])^atan(n)` -/
def P13452235943839245674.Spec : Prop :=
  ∀ n, P13452235943839245674.a n = (A267635 n : ℝ)

end A267635

/-! ## A267635.P9457762228084382366

`round(cos(char[(n+1)²])²)`
-/

namespace A267635.P9457762228084382366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2)

end

end A267635.P9457762228084382366

namespace A267635

/-- `round(cos(char[(n+1)²])²)` -/
def P9457762228084382366.Spec : Prop :=
  ∀ n, P9457762228084382366.a n = A267635 n

end A267635

/-! ## A267635.P11807759623735366166

`round(sqrt(acos(char[(n+1)²])))`
-/

namespace A267635.P11807759623735366166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A267635.P11807759623735366166

namespace A267635

/-- `round(sqrt(acos(char[(n+1)²])))` -/
def P11807759623735366166.Spec : Prop :=
  ∀ n, P11807759623735366166.a n = A267635 n

end A267635

/-! ## A267635.P16403121292480555732

`ceil(log(acot(char[(n+1)²])))`
-/

namespace A267635.P16403121292480555732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A267635.P16403121292480555732

namespace A267635

/-- `ceil(log(acot(char[(n+1)²])))` -/
def P16403121292480555732.Spec : Prop :=
  ∀ n, P16403121292480555732.a n = A267635 n

end A267635

/-! ## A267635.P8137677812947219708

`ceil(log2(acot(char[(n+1)²])))`
-/

namespace A267635.P8137677812947219708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A267635.P8137677812947219708

namespace A267635

/-- `ceil(log2(acot(char[(n+1)²])))` -/
def P8137677812947219708.Spec : Prop :=
  ∀ n, P8137677812947219708.a n = A267635 n

end A267635

/-! ## A267635.P15966243609800793534

`round(log2(acot(char[(n+1)²])))`
-/

namespace A267635.P15966243609800793534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A267635.P15966243609800793534

namespace A267635

/-- `round(log2(acot(char[(n+1)²])))` -/
def P15966243609800793534.Spec : Prop :=
  ∀ n, P15966243609800793534.a n = A267635 n

end A267635

/-! ## A267635.P7164261765230620187

`round(atan(acos(char[(n+1)²])))`
-/

namespace A267635.P7164261765230620187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A267635.P7164261765230620187

namespace A267635

/-- `round(atan(acos(char[(n+1)²])))` -/
def P7164261765230620187.Spec : Prop :=
  ∀ n, P7164261765230620187.a n = A267635 n

end A267635

/-! ## A267635.P4169804783907488889

`ceil(tanh(acos(char[(n+1)²])))`
-/

namespace A267635.P4169804783907488889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A267635.P4169804783907488889

namespace A267635

/-- `ceil(tanh(acos(char[(n+1)²])))` -/
def P4169804783907488889.Spec : Prop :=
  ∀ n, P4169804783907488889.a n = A267635 n

end A267635

/-!
# A267636: Triangle read by rows giving successive states of cellular automaton generated by "Rule 193" initiated with a single ON (black) cell.

The programs for A267636, there is no canonical definition to state claims against.
-/

/-! ## A267636.P6607560425026040393

`A267463(A020703(n+1)-1)`
-/

namespace A267636.P6607560425026040393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A020703 (n + 1) - 1).toNat

end

end A267636.P6607560425026040393

/-! ## A267636.P2633929681288468406

`A267463(A004273(A020703(n+1))%A020703(n+1))`
-/

namespace A267636.P2633929681288468406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (Int.tmod (A004273 (A020703 (n + 1)).toNat) (A020703 (n + 1))).toNat

end

end A267636.P2633929681288468406

/-! ## A267636.P9635402899987401019

`A267463(A020703(n+2))+A000007(n)`
-/

namespace A267636.P9635402899987401019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A020703 (n + 2)).toNat + A000007 n

end

end A267636.P9635402899987401019

/-! ## A267636.P16570874357680918492

`A267463(A020703(n+2)*A054977(n))`
-/

namespace A267636.P16570874357680918492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A020703 (n + 2) * A054977 n).toNat

end

end A267636.P16570874357680918492

/-! ## A267636.P17230328466694378718

`A267463(A020703(n+2)*A057427(n))`
-/

namespace A267636.P17230328466694378718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A020703 (n + 2) * A057427 n).toNat

end

end A267636.P17230328466694378718

/-! ## A267636.P14323431214138327445

`A267463(A020703(n+2))+A008458(n)%2`
-/

namespace A267636.P14323431214138327445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A020703 (n + 2)).toNat + Int.tmod (A008458 n) 2

end

end A267636.P14323431214138327445

/-! ## A267636.P10621860185918211947

`A267463(A020703(n+2))+A008683(A022144(n))`
-/

namespace A267636.P10621860185918211947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A020703 (n + 2)).toNat + A008683 (A022144 n).toNat

end

end A267636.P10621860185918211947

/-!
# A267637: Number of n X n 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267637, there is no canonical definition to state claims against.
-/

/-! ## A267637.P10404454136971632785

`A267644(∑[4*n]+1)`
-/

namespace A267637.P10404454136971632785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267637.P10404454136971632785

/-! ## A267637.P11430648444620497260

`record[A267644(A330613(n+1))]`
-/

namespace A267637.P11430648444620497260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267637.P11430648444620497260

/-! ## A267637.P7757103814827702487

`A267644(A001844(n))+char[10]`
-/

namespace A267637.P7757103814827702487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267637.P7757103814827702487

/-! ## A267637.P637369534655000325

`record[A003982(n)*A267644(n+1)]`
-/

namespace A267637.P637369534655000325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A267644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267637.P637369534655000325

/-! ## A267637.P12376060425030303083

`record[gcd(A003987(n), A267644(n+1))]`
-/

namespace A267637.P12376060425030303083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A267644 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267637.P12376060425030303083

/-!
# A267638: Number of n X 2 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267638, the canonical program `A267638.P9792958270325291316` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267638 has offset 1).

The definition of A267638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267638.P9792958270325291316

`2*∑[2*a(n-2)]²` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267638

/-- `2*∑[2*a(n-2)]²` -/
def P9792958270325291316.Spec : Prop :=
  ∀ n, (P9792958270325291316.a n : ℤ) = A267638 (n + 1)

theorem P9792958270325291316.correct : P9792958270325291316.Spec := by
  intro n
  simp only [A267638, Nat.add_sub_cancel]

end A267638

/-! ## A267638.P7635515490160301887

`2*A052955(n)²`
-/

namespace A267638.P7635515490160301887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052955 n ^ 2

end

end A267638.P7635515490160301887

namespace A267638

/-- `2*A052955(n)²` -/
def P7635515490160301887.Spec : Prop :=
  ∀ n, P7635515490160301887.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P16895175265872597585

`2*∑[abs(A117575(n))]²`
-/

namespace A267638.P16895175265872597585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267638.P16895175265872597585

namespace A267638

/-- `2*∑[abs(A117575(n))]²` -/
def P16895175265872597585.Spec : Prop :=
  ∀ n, P16895175265872597585.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P2186239311340406593

`2*∑[A158780(n+1)]²`
-/

namespace A267638.P2186239311340406593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267638.P2186239311340406593

namespace A267638

/-- `2*∑[A158780(n+1)]²` -/
def P2186239311340406593.Spec : Prop :=
  ∀ n, P2186239311340406593.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P6312431644735101714

`2*(1-A164090(n+1))²`
-/

namespace A267638.P6312431644735101714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A164090 (n + 1)) ^ 2

end

end A267638.P6312431644735101714

namespace A267638

/-- `2*(1-A164090(n+1))²` -/
def P6312431644735101714.Spec : Prop :=
  ∀ n, P6312431644735101714.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P2084601053622813834

`2*(2-A209721(n+1))²`
-/

namespace A267638.P2084601053622813834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - A209721 (n + 1)) ^ 2

end

end A267638.P2084601053622813834

namespace A267638

/-- `2*(2-A209721(n+1))²` -/
def P2084601053622813834.Spec : Prop :=
  ∀ n, P2084601053622813834.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P9918743830019714231

`A027383(n+1)*A052955(n)`
-/

namespace A267638.P9918743830019714231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) * A052955 n

end

end A267638.P9918743830019714231

namespace A267638

/-- `A027383(n+1)*A052955(n)` -/
def P9918743830019714231.Spec : Prop :=
  ∀ n, P9918743830019714231.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P14805386697175698139

`(A136252(n)+1)*A052955(n)`
-/

namespace A267638.P14805386697175698139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136252 n + 1) * A052955 n

end

end A267638.P14805386697175698139

namespace A267638

/-- `(A136252(n)+1)*A052955(n)` -/
def P14805386697175698139.Spec : Prop :=
  ∀ n, P14805386697175698139.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P6326928753421905728

`2*∑[A011782(A065033(n))]²`
-/

namespace A267638.P6326928753421905728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267638.P6326928753421905728

namespace A267638

/-- `2*∑[A011782(A065033(n))]²` -/
def P6326928753421905728.Spec : Prop :=
  ∀ n, P6326928753421905728.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P6825814549669802796

`2*∑[A011782(A110654(n))]²`
-/

namespace A267638.P6825814549669802796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267638.P6825814549669802796

namespace A267638

/-- `2*∑[A011782(A110654(n))]²` -/
def P6825814549669802796.Spec : Prop :=
  ∀ n, P6825814549669802796.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P8069865752617290234

`A052955(n)+A052955(n)*A354788(n+1)`
-/

namespace A267638.P8069865752617290234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + A052955 n * A354788 (n + 1)

end

end A267638.P8069865752617290234

namespace A267638

/-- `A052955(n)+A052955(n)*A354788(n+1)` -/
def P8069865752617290234.Spec : Prop :=
  ∀ n, P8069865752617290234.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P6591313829236913793

`(A091696(n+1)-A059076(n+1))*A027383(n+1)`
-/

namespace A267638.P6591313829236913793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091696 (n + 1) - A059076 (n + 1)) * A027383 (n + 1)

end

end A267638.P6591313829236913793

namespace A267638

/-- `(A091696(n+1)-A059076(n+1))*A027383(n+1)` -/
def P6591313829236913793.Spec : Prop :=
  ∀ n, P6591313829236913793.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P15296257554128872831

`A027383(n+1)*A164090(n+1)-A027383(n+1)`
-/

namespace A267638.P15296257554128872831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) * A164090 (n + 1) - A027383 (n + 1)

end

end A267638.P15296257554128872831

namespace A267638

/-- `A027383(n+1)*A164090(n+1)-A027383(n+1)` -/
def P15296257554128872831.Spec : Prop :=
  ∀ n, P15296257554128872831.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P7350850297580530783

`A027383(n+1)*A029744(n+2)-A027383(n+1)`
-/

namespace A267638.P7350850297580530783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) * A029744 (n + 2) - A027383 (n + 1)

end

end A267638.P7350850297580530783

namespace A267638

/-- `A027383(n+1)*A029744(n+2)-A027383(n+1)` -/
def P7350850297580530783.Spec : Prop :=
  ∀ n, P7350850297580530783.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P17697740096071802018

`a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` with `a(0)=2, a(1)=8, a(2)=18, a(3)=50, a(4)=98`
-/

namespace A267638.P17697740096071802018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 18, 50, 98] fun n a =>
  a (n - 1) + 6 * a (n - 2) - 6 * a (n - 3) - 8 * a (n - 4) + 8 * a (n - 5)

end

end A267638.P17697740096071802018

namespace A267638

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` -/
def P17697740096071802018.Spec : Prop :=
  ∀ n, P17697740096071802018.a n = A267638 (n + 1)

end A267638

/-! ## A267638.P838959416829236153

`Δ[Δ[A072345(n)]]²/2`
-/

namespace A267638.P838959416829236153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A267638.P838959416829236153

namespace A267638

/-- `Δ[Δ[A072345(n)]]²/2` -/
def P838959416829236153.Spec : Prop :=
  ∀ n, P838959416829236153.a n = (A267638 (n + 1) : ℚ)

end A267638

/-! ## A267638.P16668766919304015843

`Δ[A053599(n+1)]²/2`
-/

namespace A267638.P16668766919304015843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A267638.P16668766919304015843

namespace A267638

/-- `Δ[A053599(n+1)]²/2` -/
def P16668766919304015843.Spec : Prop :=
  ∀ n, P16668766919304015843.a n = (A267638 (n + 1) : ℚ)

end A267638

/-! ## A267638.P4180889453394802954

`(A347789(n+1)+2)²/2`
-/

namespace A267638.P4180889453394802954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A347789 (n + 1) + 2) ^ 2 : ℚ) / 2

end

end A267638.P4180889453394802954

namespace A267638

/-- `(A347789(n+1)+2)²/2` -/
def P4180889453394802954.Spec : Prop :=
  ∀ n, P4180889453394802954.a n = (A267638 (n + 1) : ℚ)

end A267638

/-! ## A267638.P13193158475166700752

`(2-A090989(n+1))²/2`
-/

namespace A267638.P13193158475166700752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - A090989 (n + 1)) ^ 2 : ℚ) / 2

end

end A267638.P13193158475166700752

namespace A267638

/-- `(2-A090989(n+1))²/2` -/
def P13193158475166700752.Spec : Prop :=
  ∀ n, P13193158475166700752.a n = (A267638 (n + 1) : ℚ)

end A267638

/-! ## A267638.P3555986931129844596

`2*A268956(∑[n+1])²`
-/

namespace A267638.P3555986931129844596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268956 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267638.P3555986931129844596

namespace A267638

/-- `2*A268956(∑[n+1])²` -/
def P3555986931129844596.Spec : Prop :=
  ∀ n, P3555986931129844596.a n = A267638 (n + 1)

end A267638

/-!
# A267639: Number of nX3 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267639, there is no canonical definition to state claims against.
-/

/-! ## A267639.P12489113382415149132

`A267644(∑[n+2]+4)`
-/

namespace A267639.P12489113382415149132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267639.P12489113382415149132

/-! ## A267639.P14645347342433589967

`lcm(3, A267644(A167614(n+1)))`
-/

namespace A267639.P14645347342433589967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A267644 (A167614 (n + 1)).toNat)

end

end A267639.P14645347342433589967

/-! ## A267639.P8319219410576519769

`A267644(A167614(n+1))+A025444(n)`
-/

namespace A267639.P8319219410576519769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A167614 (n + 1)).toNat + A025444 n

end

end A267639.P8319219410576519769

/-! ## A267639.P3256189271275146394

`A267644(A167614(n+1))+A025469(n)`
-/

namespace A267639.P3256189271275146394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A167614 (n + 1)).toNat + A025469 n

end

end A267639.P3256189271275146394

/-! ## A267639.P8076854262500916647

`A267644(A167614(n+1))+A185284(n)`
-/

namespace A267639.P8076854262500916647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A167614 (n + 1)).toNat + A185284 n

end

end A267639.P8076854262500916647

/-!
# A267640: Number of nX4 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267640, there is no canonical definition to state claims against.
-/

/-! ## A267640.P7379485413896768481

`A267644(∑[n+3]+7)`
-/

namespace A267640.P7379485413896768481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267640.P7379485413896768481

/-! ## A267640.P4249211208396315430

`A267644(A141214(n)+7)+char[19]`
-/

namespace A267640.P4249211208396315430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267640.P4249211208396315430

/-! ## A267640.P7302934241753066717

`A267644(A167614(n+2)+1)+char[24]`
-/

namespace A267640.P7302934241753066717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267640.P7302934241753066717

/-! ## A267640.P7462823553067742151

`gcd(7, A007318(n))*A267644(A167614(n+2)+1)`
-/

namespace A267640.P7462823553067742151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (A007318 n) : ℤ) * A267644 (A167614 (n + 2) + 1).toNat

end

end A267640.P7462823553067742151

/-! ## A267640.P11810635389929650730

`A014963(45*(n+1))*A267644(A141214(n)+7)`
-/

namespace A267640.P11810635389929650730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (45 * (n + 1)) * A267644 (A141214 n + 7).toNat

end

end A267640.P11810635389929650730

/-!
# A267641: Number of nX5 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267641, there is no canonical definition to state claims against.
-/

/-! ## A267641.P959944709981862823

`A267644(∑[n+4]+11)`
-/

namespace A267641.P959944709981862823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267641.P959944709981862823

/-! ## A267641.P11158717714940742243

`A267644(A046691(n+3))%A242141(n+1)`
-/

namespace A267641.P11158717714940742243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267644 (A046691 (n + 3)).toNat) (A242141 (n + 1))

end

end A267641.P11158717714940742243

/-!
# A267642: Number of nX6 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267642, there is no canonical definition to state claims against.
-/

/-! ## A267642.P16241116846943535330

`A267644(A374007(n+1))`
-/

namespace A267642.P16241116846943535330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A374007 (n + 1)).toNat

end

end A267642.P16241116846943535330

/-! ## A267642.P16525683672746335794

`A267644(A056115(n)+21)`
-/

namespace A267642.P16525683672746335794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A056115 n + 21).toNat

end

end A267642.P16525683672746335794

/-! ## A267642.P13247939891255272000

`A267644(∑[A020710(n)]+16)`
-/

namespace A267642.P13247939891255272000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A267642.P13247939891255272000

/-! ## A267642.P12854503815327788546

`A267644(A167499(n+4)+1)`
-/

namespace A267642.P12854503815327788546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A167499 (n + 4) + 1).toNat

end

end A267642.P12854503815327788546

/-! ## A267642.P7430476457951197442

`A267644(A167614(n+4)+3)`
-/

namespace A267642.P7430476457951197442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A167614 (n + 4) + 3).toNat

end

end A267642.P7430476457951197442

/-!
# A267643: Number of nX7 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267643, there is no canonical definition to state claims against.
-/

/-! ## A267643.P16805371871074732785

`A267644(A374008(n+1))`
-/

namespace A267643.P16805371871074732785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A374008 (n + 1)).toNat

end

end A267643.P16805371871074732785

/-! ## A267643.P13825421830925459526

`A267644(A167487(n+5))`
-/

namespace A267643.P13825421830925459526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A167487 (n + 5)).toNat

end

end A267643.P13825421830925459526

/-! ## A267643.P2519992113511841293

`A267644(A056119(n)+28)`
-/

namespace A267643.P2519992113511841293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A056119 n + 28).toNat

end

end A267643.P2519992113511841293

/-! ## A267643.P12509488454706680086

`A267644(eq[11, A066657(n)])`
-/

namespace A267643.P12509488454706680086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267643.P12509488454706680086

/-! ## A267643.P15696519525818412999

`A267644(A000124(n+6)+6)`
-/

namespace A267643.P15696519525818412999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267644 (A000124 (n + 6) + 6).toNat

end

end A267643.P15696519525818412999

/-!
# A267644: T(n,k)=Number of nXk 0..1 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267644, there is no canonical definition to state claims against.
-/

/-! ## A267644.P2750252896091694682

`A238654(n+1)-A340999(A276086(n))`
-/

namespace A267644.P2750252896091694682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (n + 1) - A340999 ((A276086 n).toNat + 204)

end

end A267644.P2750252896091694682

/-! ## A267644.P5918694701228997103

`A207808(n+1)/2-A340999(A276086(n))`
-/

namespace A267644.P5918694701228997103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207808 (n + 1) : ℚ) / 2 - (A340999 ((A276086 n).toNat + 204) : ℚ)

end

end A267644.P5918694701228997103

/-! ## A267644.P14602960761915834884

`A004526(A207808(n+1))-A340999(A276086(n))`
-/

namespace A267644.P14602960761915834884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A207808 (n + 1)).toNat - A340999 ((A276086 n).toNat + 204)

end

end A267644.P14602960761915834884

/-! ## A267644.P9934077296339171292

`A238654(A077168(n))-char[10]`
-/

namespace A267644.P9934077296339171292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A077168 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267644.P9934077296339171292

/-! ## A267644.P5705902748562316740

`A238654(n+1)-A101605(A000051(n))`
-/

namespace A267644.P5705902748562316740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (n + 1) - A101605 (A000051 n).toNat

end

end A267644.P5705902748562316740

/-!
# A267645: Binary representation of the n-th iteration of the "Rule 193" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267645, there is no canonical definition to state claims against.
-/

/-! ## A267645.P13074815156253803728

`A007088(A267646(n))`
-/

namespace A267645.P13074815156253803728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267646 n).toNat

end

end A267645.P13074815156253803728

/-! ## A267645.P17377757023363903177

`A185544(2*A267646(n))`
-/

namespace A267645.P17377757023363903177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267646 n).toNat

end

end A267645.P17377757023363903177

/-!
# A267646: Decimal representation of the n-th iteration of the "Rule 193" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267646, there is no canonical definition to state claims against.
-/

/-! ## A267646.P3303305354730917815

`A078007(n)*A333943(A023611(n))`
-/

namespace A267646.P3303305354730917815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078007 n * A333943 (A023611 n).toNat

end

end A267646.P3303305354730917815

/-!
# A267648: a(n) = g_n(5) where g is the function defined in A266202.

The programs for A267648, there is no canonical definition to state claims against.
-/

/-! ## A267648.P3006610359021585110

`A266204(n)%A045943(n+2)`
-/

namespace A267648.P3006610359021585110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266204 n) (A045943 (n + 2))

end

end A267648.P3006610359021585110

/-! ## A267648.P5208884616506235603

`lt[A033879(3*n+5), A174165(A195850(n))]`
-/

namespace A267648.P5208884616506235603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174165 (A195850 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267648.P5208884616506235603

/-!
# A267649: a(0) = a(1) = 2 then a(n) = 4 for n>=2.

The programs for A267649, the canonical program `A267649.P12193952429559441600` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267649 has offset 0).

The definition of A267649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267649.P12193952429559441600

`2*ceil(acot(acot(n)))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267649

/-- `2*ceil(acot(acot(n)))` -/
def P12193952429559441600.Spec : Prop :=
  ∀ n, P12193952429559441600.a n = A267649 n

theorem P12193952429559441600.correct : P12193952429559441600.Spec := by
  intro n
  simp only [A267649]

end A267649

/-!
# A267650: Stanley sequence S_4(0,3): lexicographic first increasing sequence with a(0) = 0, a(1) = 3 and no 4 terms in arithmetic progression.

The programs for A267650, there is no canonical definition to state claims against.
-/

/-! ## A267650.P8109827749286798879

`eq[1, A360074(A200569(n+1))]`
-/

namespace A267650.P8109827749286798879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (A200569 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267650.P8109827749286798879

/-! ## A267650.P3516799317033831380

`lt[A011583(A007531(n)), A010815(n)]`
-/

namespace A267650.P3516799317033831380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (A007531 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267650.P3516799317033831380

/-! ## A267650.P9979867824532024687

`eq[A096693(n+1), A281244(A313754(n))]`
-/

namespace A267650.P9979867824532024687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281244 (A313754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267650.P9979867824532024687

/-! ## A267650.P8696459138268701717

`lt[A109198(A338905(n+3)), A114314(n)]`
-/

namespace A267650.P8696459138268701717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109198 (A338905 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267650.P8696459138268701717

/-! ## A267650.P11463236338558229892

`lt[A301849(A289151(n+1)), A106751(n+1)]`
-/

namespace A267650.P11463236338558229892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301849 (A289151 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267650.P11463236338558229892

/-!
# A267651: Number of ways to write n^2 as a sum of three squares: a(n) = A005875(n^2).

The programs for A267651, the canonical program `A267651.P14970341382206143241` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267651 has offset 1).

The definition of A267651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267651.P6589439885345556713

`A016725(n+1)`
-/

namespace A267651.P6589439885345556713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 (n + 1)

end

end A267651.P6589439885345556713

namespace A267651

/-- `A016725(n+1)` -/
def P6589439885345556713.Spec : Prop :=
  ∀ n, P6589439885345556713.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P15249413937736569746

`lcm(2, A016725(-xor(n, -1)))`
-/

namespace A267651.P15249413937736569746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016725 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A267651.P15249413937736569746

namespace A267651

/-- `lcm(2, A016725(-xor(n, -1)))` -/
def P15249413937736569746.Spec : Prop :=
  ∀ n, (P15249413937736569746.a n : ℤ) = A267651 (n + 1)

end A267651

/-! ## A267651.P12753449742452486794

`lcm(3, A016725(Δ[n²]-n))`
-/

namespace A267651.P12753449742452486794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016725 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A267651.P12753449742452486794

namespace A267651

/-- `lcm(3, A016725(Δ[n²]-n))` -/
def P12753449742452486794.Spec : Prop :=
  ∀ n, (P12753449742452486794.a n : ℤ) = A267651 (n + 1)

end A267651

/-! ## A267651.P14970341382206143241

`2*∑{d}[2*(n+1), A086932(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267651

/-- `2*∑{d}[2*(n+1), A086932(#)]` -/
def P14970341382206143241.Spec : Prop :=
  ∀ n, P14970341382206143241.a n = A267651 (n + 1)

theorem P14970341382206143241.correct : P14970341382206143241.Spec := by
  intro n
  simp only [A267651, Nat.add_sub_cancel]

end A267651

/-! ## A267651.P10038439191887334556

`or(4, A016725(-xor(2*n, -2)))`
-/

namespace A267651.P10038439191887334556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A016725 (-Int.xor (2 * n : ℤ) (-2)).toNat)

end

end A267651.P10038439191887334556

namespace A267651

/-- `or(4, A016725(-xor(2*n, -2)))` -/
def P10038439191887334556.Spec : Prop :=
  ∀ n, P10038439191887334556.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P10317875387445989879

`filter[A016725(n), A014306(#)]`
-/

namespace A267651.P10317875387445989879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A267651.P10317875387445989879

namespace A267651

/-- `filter[A016725(n), A014306(#)]` -/
def P10317875387445989879.Spec : Prop :=
  ∀ n, P10317875387445989879.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P8515292291162737157

`filter[A016725(n), A014707(#)]`
-/

namespace A267651.P8515292291162737157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014707 (f1 j).toNat = 1) n)

end

end A267651.P8515292291162737157

namespace A267651

/-- `filter[A016725(n), A014707(#)]` -/
def P8515292291162737157.Spec : Prop :=
  ∀ n, P8515292291162737157.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P16249774017732245491

`filter[A016725(n), A021913(#)]`
-/

namespace A267651.P16249774017732245491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A267651.P16249774017732245491

namespace A267651

/-- `filter[A016725(n), A021913(#)]` -/
def P16249774017732245491.Spec : Prop :=
  ∀ n, P16249774017732245491.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P17601978032650030012

`filter[A016725(n), A038189(#)]`
-/

namespace A267651.P17601978032650030012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A267651.P17601978032650030012

namespace A267651

/-- `filter[A016725(n), A038189(#)]` -/
def P17601978032650030012.Spec : Prop :=
  ∀ n, P17601978032650030012.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P10549093335462451422

`filter[A016725(n), A043545(#)]`
-/

namespace A267651.P10549093335462451422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A267651.P10549093335462451422

namespace A267651

/-- `filter[A016725(n), A043545(#)]` -/
def P10549093335462451422.Spec : Prop :=
  ∀ n, P10549093335462451422.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P16206934797755366935

`filter[A016725(n), A049240(#)]`
-/

namespace A267651.P16206934797755366935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A267651.P16206934797755366935

namespace A267651

/-- `filter[A016725(n), A049240(#)]` -/
def P16206934797755366935.Spec : Prop :=
  ∀ n, P16206934797755366935.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P15189940816241955439

`filter[A016725(n), A059125(#)]`
-/

namespace A267651.P15189940816241955439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059125 (f1 j).toNat = 1) n)

end

end A267651.P15189940816241955439

namespace A267651

/-- `filter[A016725(n), A059125(#)]` -/
def P15189940816241955439.Spec : Prop :=
  ∀ n, P15189940816241955439.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P14280714948625414617

`filter[A016725(n), A059841(#)]`
-/

namespace A267651.P14280714948625414617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A267651.P14280714948625414617

namespace A267651

/-- `filter[A016725(n), A059841(#)]` -/
def P14280714948625414617.Spec : Prop :=
  ∀ n, P14280714948625414617.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P758319609819999799

`filter[A016725(n), A066247(#)]`
-/

namespace A267651.P758319609819999799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A267651.P758319609819999799

namespace A267651

/-- `filter[A016725(n), A066247(#)]` -/
def P758319609819999799.Spec : Prop :=
  ∀ n, P758319609819999799.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P12186496970227574905

`filter[A016725(n), A072165(#)]`
-/

namespace A267651.P12186496970227574905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A267651.P12186496970227574905

namespace A267651

/-- `filter[A016725(n), A072165(#)]` -/
def P12186496970227574905.Spec : Prop :=
  ∀ n, P12186496970227574905.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P10980343015934585346

`filter[A016725(n), A072608(#)]`
-/

namespace A267651.P10980343015934585346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A267651.P10980343015934585346

namespace A267651

/-- `filter[A016725(n), A072608(#)]` -/
def P10980343015934585346.Spec : Prop :=
  ∀ n, P10980343015934585346.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P8749176150651432900

`filter[A016725(n), A079978(#)]`
-/

namespace A267651.P8749176150651432900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A267651.P8749176150651432900

namespace A267651

/-- `filter[A016725(n), A079978(#)]` -/
def P8749176150651432900.Spec : Prop :=
  ∀ n, P8749176150651432900.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P10660494603044967291

`filter[A016725(n), A079979(#)]`
-/

namespace A267651.P10660494603044967291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A267651.P10660494603044967291

namespace A267651

/-- `filter[A016725(n), A079979(#)]` -/
def P10660494603044967291.Spec : Prop :=
  ∀ n, P10660494603044967291.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P7520478929266293413

`filter[A016725(n), A082410(#)]`
-/

namespace A267651.P7520478929266293413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082410 (f1 j).toNat = 1) n)

end

end A267651.P7520478929266293413

namespace A267651

/-- `filter[A016725(n), A082410(#)]` -/
def P7520478929266293413.Spec : Prop :=
  ∀ n, P7520478929266293413.a n = A267651 (n + 1)

end A267651

/-! ## A267651.P3808103229489954326

`filter[A016725(n), A088150(#)]`
-/

namespace A267651.P3808103229489954326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088150 (f1 j).toNat = 1) n)

end

end A267651.P3808103229489954326

namespace A267651

/-- `filter[A016725(n), A088150(#)]` -/
def P3808103229489954326.Spec : Prop :=
  ∀ n, P3808103229489954326.a n = A267651 (n + 1)

end A267651

/-!
# A267652: a(n) = 4*a(n - 1) + 4*a(n - 2) for n>1, a(0)=2, a(1)=3.

The programs for A267652, the canonical program `A267652.P8233415005256467179` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267652 has offset 0).

The definition of A267652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)` (program `A267652.P8233415005256467179`, by `A267652.P8233415005256467179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267652.P8233415005256467179

`4*a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267652

/-- `4*a(n-1)+4*a(n-2)` -/
def P8233415005256467179.Spec : Prop :=
  ∀ n, (P8233415005256467179.a n : ℤ) = A267652 n

theorem P8233415005256467179.correct : P8233415005256467179.Spec := by
  intro n
  simp only [A267652]

end A267652

/-! ## A267652.P5283844330136539996

`ogf((-2+5x)/(-1+4x+4x^2))`
-/

namespace A267652.P5283844330136539996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -4, -4] n

end

end A267652.P5283844330136539996

namespace A267652

/-- `ogf((-2+5x)/(-1+4x+4x^2))` -/
def P5283844330136539996.Spec : Prop :=
  ∀ n, P5283844330136539996.a n = A267652 n

end A267652

/-! ## A267652.P12549622506745445467

`4*(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A267652.P12549622506745445467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A267652.P12549622506745445467

namespace A267652

/-- `4*(a(n-1)+a(n-2))` -/
def P12549622506745445467.Spec : Prop :=
  ∀ n, (P12549622506745445467.a n : ℤ) = A267652 n

theorem P12549622506745445467.correct : P12549622506745445467.Spec := by
  intro n
  simp only [A267652, Nat.add_sub_cancel, A267652.P12549622506745445467.a, A267652.P8233415005256467179.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A267652

/-! ## A267652.P947722577119555021

`4*(a(n-1)-floor(-a(n-2)))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A267652.P947722577119555021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A267652.P947722577119555021

namespace A267652

/-- `4*(a(n-1)-floor(-a(n-2)))` -/
def P947722577119555021.Spec : Prop :=
  ∀ n, P947722577119555021.a n = A267652 n

end A267652

/-! ## A267652.P14631184429152186565

`4*(a(n-1)-ceil(-a(n-2)))` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A267652.P14631184429152186565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A267652.P14631184429152186565

namespace A267652

/-- `4*(a(n-1)-ceil(-a(n-2)))` -/
def P14631184429152186565.Spec : Prop :=
  ∀ n, P14631184429152186565.a n = A267652 n

end A267652

/-! ## A267652.P2892607921440782744

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=2, a(1)=3`
-/

namespace A267652.P2892607921440782744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A267652.P2892607921440782744

namespace A267652

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P2892607921440782744.Spec : Prop :=
  ∀ n, P2892607921440782744.a n = (A267652 n : ℚ)

end A267652

/-! ## A267652.P2889445046475394873

`4-4*(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A267652.P2889445046475394873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 - 4 * (1 - a (n - 1) - a (n - 2))

end

end A267652.P2889445046475394873

namespace A267652

/-- `4-4*(1-a(n-1)-a(n-2))` -/
def P2889445046475394873.Spec : Prop :=
  ∀ n, P2889445046475394873.a n = A267652 n

end A267652

/-! ## A267652.P12727018794228021389

`A057087(n)+A170931(n)-A086347(n)`
-/

namespace A267652.P12727018794228021389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n + (A170931 n - A086347 n)

end

end A267652.P12727018794228021389

namespace A267652

/-- `A057087(n)+A170931(n)-A086347(n)` -/
def P12727018794228021389.Spec : Prop :=
  ∀ n, P12727018794228021389.a n = A267652 n

end A267652

/-! ## A267652.P3028843937672596554

`A170931(n)-A000129(n)*A011782(n)`
-/

namespace A267652.P3028843937672596554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170931 n - A000129 n * A011782 n

end

end A267652.P3028843937672596554

namespace A267652

/-- `A170931(n)-A000129(n)*A011782(n)` -/
def P3028843937672596554.Spec : Prop :=
  ∀ n, P3028843937672596554.a n = A267652 n

end A267652

/-!
# A267653: Number of unlabeled, connected graphs on n vertices which have no induced subgraph isomorphic to an R-graph.

The programs for A267653, there is no canonical definition to state claims against.
-/

/-! ## A267653.P8171992155363021132

`A004829(A076323(n+1)+1)`
-/

namespace A267653.P8171992155363021132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004829 (A076323 (n + 1) + 1).toNat

end

end A267653.P8171992155363021132

/-! ## A267653.P17823922793094024629

`A321911(n+1)+A112424(n+1)`
-/

namespace A267653.P17823922793094024629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321911 (n + 1) + A112424 (n + 1)

end

end A267653.P17823922793094024629

/-! ## A267653.P3995705537965405308

`A260160(A000670(n))+A225173(n)`
-/

namespace A267653.P3995705537965405308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (A000670 n).toNat + A225173 n

end

end A267653.P3995705537965405308

/-!
# A267654: Irregular triangle of palindromic subsequences. Every row has 2*n+1 terms. From the second row, there are only two alternated numbers: 2*n+4 and 2*n+2.

The programs for A267654, the canonical program `A267654.P574558163347297838` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267654 has offset 0).

The definition of A267654 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086520, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A267654.P574558163347297838

`2*A086520(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267654

/-- `2*A086520(n+2)` -/
def P574558163347297838.Spec : Prop :=
  ∀ n, P574558163347297838.a n = A267654 n

theorem P574558163347297838.correct : P574558163347297838.Spec := by
  intro n
  simp only [A267654]

end A267654

/-! ## A267654.P11334841497115671602

`2*(or(1, floor(sqrt(n)+n))-n)`
-/

namespace A267654.P11334841497115671602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.lor 1 ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋ - (n : ℤ))

end

end A267654.P11334841497115671602

namespace A267654

/-- `2*(or(1, floor(sqrt(n)+n))-n)` -/
def P11334841497115671602.Spec : Prop :=
  ∀ n, P11334841497115671602.a n = A267654 n

end A267654

/-! ## A267654.P8453503828666956418

`a(n-2)+4*char[n²]` with `a(0)=2, a(1)=4`
-/

namespace A267654.P8453503828666956418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 4 * (if ∃ j, f1 j = n then 1 else 0)

end

end A267654.P8453503828666956418

namespace A267654

/-- `a(n-2)+4*char[n²]` -/
def P8453503828666956418.Spec : Prop :=
  ∀ n, (P8453503828666956418.a n : ℤ) = A267654 n

end A267654

/-! ## A267654.P15477819039900568157

`∑[4*char[n²]-a(n-1)]` with `a(0)=2`
-/

namespace A267654.P15477819039900568157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((4 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267654.P15477819039900568157

namespace A267654

/-- `∑[4*char[n²]-a(n-1)]` -/
def P15477819039900568157.Spec : Prop :=
  ∀ n, P15477819039900568157.a n = A267654 n

end A267654

/-! ## A267654.P9290735705673453132

`4*floor(sqrt(n))+2-a(n-1)` with `a(0)=2`
-/

namespace A267654.P9290735705673453132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 * Nat.sqrt n : ℤ) + (2 - a (n - 1))

end

end A267654.P9290735705673453132

namespace A267654

/-- `4*floor(sqrt(n))+2-a(n-1)` -/
def P9290735705673453132.Spec : Prop :=
  ∀ n, P9290735705673453132.a n = A267654 n

end A267654

/-! ## A267654.P14940392598160245021

`2-(a(n-1)-4*floor(sqrt(n)))` with `a(0)=2`
-/

namespace A267654.P14940392598160245021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - (4 * Nat.sqrt n : ℤ))

end

end A267654.P14940392598160245021

namespace A267654

/-- `2-(a(n-1)-4*floor(sqrt(n)))` -/
def P14940392598160245021.Spec : Prop :=
  ∀ n, P14940392598160245021.a n = A267654 n

end A267654

/-! ## A267654.P8703103115668652768

`2*(2*floor((sqrt(n)+n)/2)-n+1)`
-/

namespace A267654.P8703103115668652768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * ⌊(Real.sqrt (n : ℝ) + (n : ℝ)) / 2⌋ - (n : ℤ) + 1)

end

end A267654.P8703103115668652768

namespace A267654

/-- `2*(2*floor((sqrt(n)+n)/2)-n+1)` -/
def P8703103115668652768.Spec : Prop :=
  ∀ n, P8703103115668652768.a n = A267654 n

end A267654

/-! ## A267654.P15240704733756161267

`2*A257564(n)+2`
-/

namespace A267654.P15240704733756161267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257564 n + 2

end

end A267654.P15240704733756161267

namespace A267654

/-- `2*A257564(n)+2` -/
def P15240704733756161267.Spec : Prop :=
  ∀ n, P15240704733756161267.a n = A267654 n

end A267654

/-! ## A267654.P11368936439069624329

`∑[2*((∑[A319410(n)]+2)%4-1)]`
-/

namespace A267654.P11368936439069624329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j + 2) 4 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267654.P11368936439069624329

namespace A267654

/-- `∑[2*((∑[A319410(n)]+2)%4-1)]` -/
def P11368936439069624329.Spec : Prop :=
  ∀ n, P11368936439069624329.a n = A267654 n

end A267654

/-! ## A267654.P1738643045852304126

`A016825(floor((sqrt(n)+n)/2))-2*n`
-/

namespace A267654.P1738643045852304126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 ⌊(Real.sqrt (n : ℝ) + (n : ℝ)) / 2⌋.toNat - (2 * n : ℤ)

end

end A267654.P1738643045852304126

namespace A267654

/-- `A016825(floor((sqrt(n)+n)/2))-2*n` -/
def P1738643045852304126.Spec : Prop :=
  ∀ n, P1738643045852304126.a n = A267654 n

end A267654

/-!
# A267655: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267655, there is no canonical definition to state claims against.
-/

/-! ## A267655.P10819503988869114675

`A100529(A358628(n))`
-/

namespace A267655.P10819503988869114675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100529 (A358628 n).toNat

end

end A267655.P10819503988869114675

/-! ## A267655.P12513735258580175552

`A193741(A135313(n+1))`
-/

namespace A267655.P12513735258580175552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193741 (A135313 (n + 1)).toNat

end

end A267655.P12513735258580175552

/-! ## A267655.P11844363114786414225

`A193740(A394975(n+1))`
-/

namespace A267655.P11844363114786414225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193740 (A394975 (n + 1)).toNat

end

end A267655.P11844363114786414225

/-! ## A267655.P18225749841831926717

`A335256(A103997(n)+2)`
-/

namespace A267655.P18225749841831926717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335256 (A103997 n + 2).toNat

end

end A267655.P18225749841831926717

/-! ## A267655.P16611528603978653838

`A128227(2^A046716(n))`
-/

namespace A267655.P16611528603978653838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046716 n : ℤ))).toNat

end

end A267655.P16611528603978653838

/-!
# A267656: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north or southwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267656, there is no canonical definition to state claims against.
-/

/-! ## A267656.P6040662174538989872

`A267655(A145018(n+4))`
-/

namespace A267656.P6040662174538989872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A145018 (n + 4)).toNat

end

end A267656.P6040662174538989872

/-! ## A267656.P16221589065071149820

`A267655(A141214(n)+7)`
-/

namespace A267656.P16221589065071149820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A141214 n + 7).toNat

end

end A267656.P16221589065071149820

/-! ## A267656.P13837020494834678359

`A267655(A052905(n)+9)`
-/

namespace A267656.P13837020494834678359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A052905 n + 9).toNat

end

end A267656.P13837020494834678359

/-! ## A267656.P7390484016565579333

`A267655(A055999(n)+10)`
-/

namespace A267656.P7390484016565579333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A055999 n + 10).toNat

end

end A267656.P7390484016565579333

/-! ## A267656.P18019703951304888391

`A267655(eq[5, A066657(n)])`
-/

namespace A267656.P18019703951304888391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267656.P18019703951304888391

/-!
# A267657: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north or southwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267657, there is no canonical definition to state claims against.
-/

/-! ## A267657.P13608627653769103905

`A267655(A155212(n)+13)`
-/

namespace A267657.P13608627653769103905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A155212 n + 13).toNat

end

end A267657.P13608627653769103905

/-! ## A267657.P2830689252282653906

`A267655(A056000(n)+15)`
-/

namespace A267657.P2830689252282653906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A056000 n + 15).toNat

end

end A267657.P2830689252282653906

/-! ## A267657.P2057521988294576358

`A267655(eq[7, A066657(n)])`
-/

namespace A267657.P2057521988294576358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267657.P2057521988294576358

/-! ## A267657.P14630294437498275679

`A267655(A145018(n+5)+1)`
-/

namespace A267657.P14630294437498275679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A145018 (n + 5) + 1).toNat

end

end A267657.P14630294437498275679

/-! ## A267657.P16794279196665251112

`A267655(A000124(n+4)+4)`
-/

namespace A267657.P16794279196665251112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A000124 (n + 4) + 4).toNat

end

end A267657.P16794279196665251112

/-!
# A267658: Number of 6 X n arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north or southwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267658, there is no canonical definition to state claims against.
-/

/-! ## A267658.P6158129908456138176

`A267655(A166136(n+4))`
-/

namespace A267658.P6158129908456138176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A166136 (n + 4)).toNat

end

end A267658.P6158129908456138176

/-! ## A267658.P9833981496332303667

`A267655(A056115(n)+21)`
-/

namespace A267658.P9833981496332303667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A056115 n + 21).toNat

end

end A267658.P9833981496332303667

/-! ## A267658.P1304205285355911322

`A267655(A141214(n+2)+9)`
-/

namespace A267658.P1304205285355911322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A141214 (n + 2) + 9).toNat

end

end A267658.P1304205285355911322

/-! ## A267658.P6368495026055473243

`A267655(eq[6, A130270(n+1)])`
-/

namespace A267658.P6368495026055473243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267658.P6368495026055473243

/-! ## A267658.P10891961562958375408

`A267655(eq[7, A131818(n+1)])`
-/

namespace A267658.P10891961562958375408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267658.P10891961562958375408

/-!
# A267659: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any north or southwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267659, there is no canonical definition to state claims against.
-/

/-! ## A267659.P7353914160162937440

`A267655(A056119(n)+28)`
-/

namespace A267659.P7353914160162937440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A056119 n + 28).toNat

end

end A267659.P7353914160162937440

/-! ## A267659.P14499049740467356187

`A267655(eq[11, A066657(n)])`
-/

namespace A267659.P14499049740467356187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267659.P14499049740467356187

/-! ## A267659.P17282843203927409489

`A267655(A000124(n+6)+6)`
-/

namespace A267659.P17282843203927409489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A000124 (n + 6) + 6).toNat

end

end A267659.P17282843203927409489

/-! ## A267659.P16351929476620441664

`A267655(eq[8, A131818(n+1)])`
-/

namespace A267659.P16351929476620441664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267659.P16351929476620441664

/-!
# A267660: Number of n X n 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267660, there is no canonical definition to state claims against.
-/

/-! ## A267660.P10468548696150279096

`A267667(∑[4*n]+1)`
-/

namespace A267660.P10468548696150279096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267660.P10468548696150279096

/-! ## A267660.P9337407896776980840

`record[A267667(A152271(n²))]`
-/

namespace A267660.P9337407896776980840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267660.P9337407896776980840

/-! ## A267660.P8387403300294087723

`record[A267667(Δ[A235355(n)])]`
-/

namespace A267660.P8387403300294087723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267660.P8387403300294087723

/-! ## A267660.P9152674563322050505

`and(-1, A267667(A001844(n)))`
-/

namespace A267660.P9152674563322050505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A267667 (A001844 n).toNat)

end

end A267660.P9152674563322050505

/-! ## A267660.P15834894749455976896

`record[A003982(n)*A267667(n+1)]`
-/

namespace A267660.P15834894749455976896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A267667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267660.P15834894749455976896

/-!
# A267661: Number of nX2 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267661, the canonical program `A267661.P3989866206007348017` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267661 has offset 1).

The definition of A267661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267661.P3989866206007348017

`2*∑[a(n-1)+a(n-2)]²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267661

/-- `2*∑[a(n-1)+a(n-2)]²` -/
def P3989866206007348017.Spec : Prop :=
  ∀ n, (P3989866206007348017.a n : ℤ) = A267661 (n + 1)

theorem P3989866206007348017.correct : P3989866206007348017.Spec := by
  intro n
  simp only [A267661, Nat.add_sub_cancel]

end A267661

/-! ## A267661.P6697081494315392156

`2*Δ[A001924(n)]²`
-/

namespace A267661.P6697081494315392156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A267661.P6697081494315392156

namespace A267661

/-- `2*Δ[A001924(n)]²` -/
def P6697081494315392156.Spec : Prop :=
  ∀ n, P6697081494315392156.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P16873544557162101083

`record[2*A035507(n)²]`
-/

namespace A267661.P16873544557162101083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035507 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267661.P16873544557162101083

namespace A267661

/-- `record[2*A035507(n)²]` -/
def P16873544557162101083.Spec : Prop :=
  ∀ n, P16873544557162101083.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P7020662670977921373

`2*(A001911(n)+1)²`
-/

namespace A267661.P7020662670977921373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001911 n + 1) ^ 2

end

end A267661.P7020662670977921373

namespace A267661

/-- `2*(A001911(n)+1)²` -/
def P7020662670977921373.Spec : Prop :=
  ∀ n, P7020662670977921373.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P13817927133107194322

`2*(1-A020695(n))²`
-/

namespace A267661.P13817927133107194322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A020695 n) ^ 2

end

end A267661.P13817927133107194322

namespace A267661

/-- `2*(1-A020695(n))²` -/
def P13817927133107194322.Spec : Prop :=
  ∀ n, P13817927133107194322.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P323491380631429693

`2*A000071(n+3)²`
-/

namespace A267661.P323491380631429693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000071 (n + 3) ^ 2

end

end A267661.P323491380631429693

namespace A267661

/-- `2*A000071(n+3)²` -/
def P323491380631429693.Spec : Prop :=
  ∀ n, P323491380631429693.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P1597596601619450086

`2*(2-A048577(n))²`
-/

namespace A267661.P1597596601619450086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - A048577 n) ^ 2

end

end A267661.P1597596601619450086

namespace A267661

/-- `2*(2-A048577(n))²` -/
def P1597596601619450086.Spec : Prop :=
  ∀ n, P1597596601619450086.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P4857289099253533367

`2*A226538(2*n)²`
-/

namespace A267661.P4857289099253533367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226538 (2 * n) ^ 2

end

end A267661.P4857289099253533367

namespace A267661

/-- `2*A226538(2*n)²` -/
def P4857289099253533367.Spec : Prop :=
  ∀ n, P4857289099253533367.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P14012281275981204987

`2*∑[A000045(n+1)]²`
-/

namespace A267661.P14012281275981204987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267661.P14012281275981204987

namespace A267661

/-- `2*∑[A000045(n+1)]²` -/
def P14012281275981204987.Spec : Prop :=
  ∀ n, P14012281275981204987.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P4625381429046757516

`2*Δ[A000126(n+1)]²`
-/

namespace A267661.P4625381429046757516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A267661.P4625381429046757516

namespace A267661

/-- `2*Δ[A000126(n+1)]²` -/
def P4625381429046757516.Spec : Prop :=
  ∀ n, P4625381429046757516.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P14240591445377897746

`record[2*A163227(n+1)²]`
-/

namespace A267661.P14240591445377897746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163227 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267661.P14240591445377897746

namespace A267661

/-- `record[2*A163227(n+1)²]` -/
def P14240591445377897746.Spec : Prop :=
  ∀ n, P14240591445377897746.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P14423848702921886598

`record[2*(1-A000045(n))²]`
-/

namespace A267661.P14423848702921886598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A000045 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267661.P14423848702921886598

namespace A267661

/-- `record[2*(1-A000045(n))²]` -/
def P14423848702921886598.Spec : Prop :=
  ∀ n, P14423848702921886598.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P14860468062920657929

`2*(1-A000045(n+3))²`
-/

namespace A267661.P14860468062920657929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A000045 (n + 3)) ^ 2

end

end A267661.P14860468062920657929

namespace A267661

/-- `2*(1-A000045(n+3))²` -/
def P14860468062920657929.Spec : Prop :=
  ∀ n, P14860468062920657929.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P10861277333828787804

`2*A163227(2*(n+1))²`
-/

namespace A267661.P10861277333828787804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163227 (2 * (n + 1)) ^ 2

end

end A267661.P10861277333828787804

namespace A267661

/-- `2*A163227(2*(n+1))²` -/
def P10861277333828787804.Spec : Prop :=
  ∀ n, P10861277333828787804.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P1004452732677997728

`A000071(n+3)*A019274(n+3)`
-/

namespace A267661.P1004452732677997728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) * A019274 (n + 3)

end

end A267661.P1004452732677997728

namespace A267661

/-- `A000071(n+3)*A019274(n+3)` -/
def P1004452732677997728.Spec : Prop :=
  ∀ n, P1004452732677997728.a n = A267661 (n + 1)

end A267661

/-! ## A267661.P10318119283647646178

`∑[a(n-1)+a(n-2)]²/2` with `a(0)=2, a(1)=2`
-/

namespace A267661.P10318119283647646178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A267661.P10318119283647646178

namespace A267661

/-- `∑[a(n-1)+a(n-2)]²/2` -/
def P10318119283647646178.Spec : Prop :=
  ∀ n, P10318119283647646178.a n = (A267661 (n + 1) : ℚ)

end A267661

/-! ## A267661.P907607947666928351

`Δ[A192960(n)]²/2`
-/

namespace A267661.P907607947666928351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A267661.P907607947666928351

namespace A267661

/-- `Δ[A192960(n)]²/2` -/
def P907607947666928351.Spec : Prop :=
  ∀ n, P907607947666928351.a n = (A267661 (n + 1) : ℚ)

end A267661

/-! ## A267661.P5924541084366567974

`(A154691(n)+1)²/2`
-/

namespace A267661.P5924541084366567974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A154691 n + 1) ^ 2 : ℚ) / 2

end

end A267661.P5924541084366567974

namespace A267661

/-- `(A154691(n)+1)²/2` -/
def P5924541084366567974.Spec : Prop :=
  ∀ n, P5924541084366567974.a n = (A267661 (n + 1) : ℚ)

end A267661

/-! ## A267661.P4813590696147736160

`(A168193(n)+2)²/2`
-/

namespace A267661.P4813590696147736160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A168193 n + 2) ^ 2 : ℚ) / 2

end

end A267661.P4813590696147736160

namespace A267661

/-- `(A168193(n)+2)²/2` -/
def P4813590696147736160.Spec : Prop :=
  ∀ n, P4813590696147736160.a n = (A267661 (n + 1) : ℚ)

end A267661

/-! ## A267661.P15378015771702603314

`A019274(n+3)²/2`
-/

namespace A267661.P15378015771702603314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019274 (n + 3) ^ 2 : ℚ) / 2

end

end A267661.P15378015771702603314

namespace A267661

/-- `A019274(n+3)²/2` -/
def P15378015771702603314.Spec : Prop :=
  ∀ n, P15378015771702603314.a n = (A267661 (n + 1) : ℚ)

end A267661

/-!
# A267662: Number of nX3 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267662, there is no canonical definition to state claims against.
-/

/-! ## A267662.P1481403793466709555

`A267667(∑[n+3]+1)`
-/

namespace A267662.P1481403793466709555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267662.P1481403793466709555

/-! ## A267662.P11220967261241981646

`record[A267667(A198464(n+1))]`
-/

namespace A267662.P11220967261241981646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267662.P11220967261241981646

/-! ## A267662.P13636344453414025946

`A007318(C(2, n))*A267667(A034856(n+2))`
-/

namespace A267662.P13636344453414025946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A267667 (A034856 (n + 2)).toNat

end

end A267662.P13636344453414025946

/-! ## A267662.P16374867293311442475

`A267667(Δ[A008778(n)])+A056594(2*n+1)`
-/

namespace A267662.P16374867293311442475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (f1 (n + 1) - f1 n).toNat + A056594 (2 * n + 1)

end

end A267662.P16374867293311442475

/-!
# A267663: Number of n X 4 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267663, there is no canonical definition to state claims against.
-/

/-! ## A267663.P2577188313249228136

`A267667(∑[n+4]+3)`
-/

namespace A267663.P2577188313249228136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267663.P2577188313249228136

/-! ## A267663.P15354587850187514145

`A267667(A027379(n+2))+char[15]`
-/

namespace A267663.P15354587850187514145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267663.P15354587850187514145

/-! ## A267663.P1514814234410471310

`(A000041(n)%2)!*A267667(A027379(n+2))`
-/

namespace A267663.P1514814234410471310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A267667 (A027379 (n + 2)).toNat

end

end A267663.P1514814234410471310

/-! ## A267663.P3912429196985004771

`A000041(C(2, n+2))*A267667(A027379(n+2))`
-/

namespace A267663.P3912429196985004771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A267667 (A027379 (n + 2)).toNat

end

end A267663.P3912429196985004771

/-! ## A267663.P13528196632702840398

`A007318(A001222(n+1))*A267667(A027379(n+2))`
-/

namespace A267663.P13528196632702840398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (n + 1)).toNat * A267667 (A027379 (n + 2)).toNat

end

end A267663.P13528196632702840398

/-!
# A267664: Number of nX5 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267664, there is no canonical definition to state claims against.
-/

/-! ## A267664.P2554784379247661042

`A267667(∑[n+5]+6)`
-/

namespace A267664.P2554784379247661042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A267664.P2554784379247661042

/-!
# A267665: Number of nX6 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267665, there is no canonical definition to state claims against.
-/

/-! ## A267665.P4602845985496527574

`A267667(A052905(n+3))`
-/

namespace A267665.P4602845985496527574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A052905 (n + 3)).toNat

end

end A267665.P4602845985496527574

/-! ## A267665.P12524729005020887560

`A267667(A056119(n)+16)`
-/

namespace A267665.P12524729005020887560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A056119 n + 16).toNat

end

end A267665.P12524729005020887560

/-! ## A267665.P3517853796561379503

`A267667(eq[3, A219347(n)])`
-/

namespace A267665.P3517853796561379503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267665.P3517853796561379503

/-! ## A267665.P1196102962275375652

`A267667(eq[5, A193592(n)])`
-/

namespace A267665.P1196102962275375652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267665.P1196102962275375652

/-! ## A267665.P5779517125281509636

`A267667(eq[8, A258709(n)])`
-/

namespace A267665.P5779517125281509636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267665.P5779517125281509636

/-!
# A267666: Number of nX7 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267666, there is no canonical definition to state claims against.
-/

/-! ## A267666.P11630646105850421913

`A267667(C(n+7, 2)+n+1)`
-/

namespace A267666.P11630646105850421913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (Nat.choose (n + 7) 2 + (n + 1))

end

end A267666.P11630646105850421913

/-! ## A267666.P14512178413041077774

`A267667(eq[4, A219347(n)])`
-/

namespace A267666.P14512178413041077774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267666.P14512178413041077774

/-! ## A267666.P15980053924467337085

`A267667(eq[5, A332954(n)])`
-/

namespace A267666.P15980053924467337085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267666.P15980053924467337085

/-! ## A267666.P16446527587628933953

`A267667(eq[6, A193592(n)])`
-/

namespace A267666.P16446527587628933953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267666.P16446527587628933953

/-! ## A267666.P15608505520184186758

`A267667(Δ[A023551(n+2)])`
-/

namespace A267666.P15608505520184186758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (f1 (n + 1) - f1 n).toNat

end

end A267666.P15608505520184186758

/-!
# A267668: Number of 3Xn 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267668, the canonical program `A267668.P2568313771538344104` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267668 has offset 1).

The definition of A267668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267668.P2568313771538344104

`4*A052955(n)^3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267668

/-- `4*A052955(n)^3` -/
def P2568313771538344104.Spec : Prop :=
  ∀ n, P2568313771538344104.a n = A267668 (n + 1)

theorem P2568313771538344104.correct : P2568313771538344104.Spec := by
  intro n
  simp only [A267668, Nat.add_sub_cancel]

end A267668

/-! ## A267668.P4257382401628776679

`A027383(n+1)²*A052955(n)`
-/

namespace A267668.P4257382401628776679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) ^ 2 * A052955 n

end

end A267668.P4257382401628776679

namespace A267668

/-- `A027383(n+1)²*A052955(n)` -/
def P4257382401628776679.Spec : Prop :=
  ∀ n, P4257382401628776679.a n = A267668 (n + 1)

end A267668

/-! ## A267668.P6098397064928985602

`A027383(n+1)*A267638(n+1)`
-/

namespace A267668.P6098397064928985602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) * A267638 (n + 1)

end

end A267668.P6098397064928985602

namespace A267668

/-- `A027383(n+1)*A267638(n+1)` -/
def P6098397064928985602.Spec : Prop :=
  ∀ n, P6098397064928985602.a n = A267668 (n + 1)

end A267668

/-! ## A267668.P8833467298812858130

`2*A267638(n+1)*A052955(n)`
-/

namespace A267668.P8833467298812858130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267638 (n + 1) * A052955 n

end

end A267668.P8833467298812858130

namespace A267668

/-- `2*A267638(n+1)*A052955(n)` -/
def P8833467298812858130.Spec : Prop :=
  ∀ n, P8833467298812858130.a n = A267668 (n + 1)

end A267668

/-! ## A267668.P18159160580326337548

`(A136252(n)+1)^3/2`
-/

namespace A267668.P18159160580326337548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A136252 n + 1) ^ 3 : ℚ) / 2

end

end A267668.P18159160580326337548

namespace A267668

/-- `(A136252(n)+1)^3/2` -/
def P18159160580326337548.Spec : Prop :=
  ∀ n, P18159160580326337548.a n = (A267668 (n + 1) : ℚ)

end A267668

/-! ## A267668.P4963769168902697961

`(A090989(n+1)-2)^3/2`
-/

namespace A267668.P4963769168902697961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090989 (n + 1) - 2) ^ 3 : ℚ) / 2

end

end A267668.P4963769168902697961

namespace A267668

/-- `(A090989(n+1)-2)^3/2` -/
def P4963769168902697961.Spec : Prop :=
  ∀ n, P4963769168902697961.a n = (A267668 (n + 1) : ℚ)

end A267668

/-! ## A267668.P2760688431743885100

`A267638(n+1)²/A052955(n)`
-/

namespace A267668.P2760688431743885100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267638 (n + 1) ^ 2 : ℚ) / (A052955 n : ℚ)

end

end A267668.P2760688431743885100

namespace A267668

/-- `A267638(n+1)²/A052955(n)` -/
def P2760688431743885100.Spec : Prop :=
  ∀ n, P2760688431743885100.a n = (A267668 (n + 1) : ℚ)

end A267668

/-!
# A267669: Number of 4Xn 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267669, there is no canonical definition to state claims against.
-/

/-! ## A267669.P12993007587468610988

`A267667(∑[n+3]+7)`
-/

namespace A267669.P12993007587468610988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267669.P12993007587468610988

/-! ## A267669.P11842318966675086555

`or(char[2], A267667(A052905(n)+9))`
-/

namespace A267669.P11842318966675086555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267667 (A052905 n + 9).toNat)

end

end A267669.P11842318966675086555

/-! ## A267669.P17890003551825067661

`A267667(A055999(n)+10)+char[24]`
-/

namespace A267669.P17890003551825067661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267669.P17890003551825067661

/-! ## A267669.P15054029504984424316

`A267667(A046691(n+1)+8)+char[19]`
-/

namespace A267669.P15054029504984424316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A046691 (n + 1) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267669.P15054029504984424316

/-! ## A267669.P6335136247369645924

`A007318(C(2, n))*A267667(A052905(n)+9)`
-/

namespace A267669.P6335136247369645924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A267667 (A052905 n + 9).toNat

end

end A267669.P6335136247369645924

/-!
# A267670: Number of 5Xn 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267670, there is no canonical definition to state claims against.
-/

/-! ## A267670.P13062404339148972963

`A267667(C(n+5, 2)+5)`
-/

namespace A267670.P13062404339148972963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (Nat.choose (n + 5) 2 + 5)

end

end A267670.P13062404339148972963

/-! ## A267670.P1329558530213299125

`A267667(A167499(n+3))`
-/

namespace A267670.P1329558530213299125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A167499 (n + 3)).toNat

end

end A267670.P1329558530213299125

/-! ## A267670.P4441110339146509376

`A267667(A155212(n)+13)`
-/

namespace A267670.P4441110339146509376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A155212 n + 13).toNat

end

end A267670.P4441110339146509376

/-! ## A267670.P1218389610495942605

`A267667(A056000(n)+15)`
-/

namespace A267670.P1218389610495942605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A056000 n + 15).toNat

end

end A267670.P1218389610495942605

/-! ## A267670.P6511461270024925846

`A267667(eq[7, A066657(n)])`
-/

namespace A267670.P6511461270024925846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267670.P6511461270024925846

/-!
# A267671: Number of 6Xn 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267671, there is no canonical definition to state claims against.
-/

/-! ## A267671.P11406636234549198182

`A267667(C(n+6, 2)+6)`
-/

namespace A267671.P11406636234549198182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (Nat.choose (n + 6) 2 + 6)

end

end A267671.P11406636234549198182

/-! ## A267671.P12153247418979396320

`A267667(A166136(n+4))`
-/

namespace A267671.P12153247418979396320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A166136 (n + 4)).toNat

end

end A267671.P12153247418979396320

/-! ## A267671.P4533890364851423053

`A267667(A056115(n)+21)`
-/

namespace A267671.P4533890364851423053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A056115 n + 21).toNat

end

end A267671.P4533890364851423053

/-! ## A267671.P4115512301096284871

`A267667(A167499(n+4)+1)`
-/

namespace A267671.P4115512301096284871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A167499 (n + 4) + 1).toNat

end

end A267671.P4115512301096284871

/-! ## A267671.P17166563752579965433

`A267667(A167614(n+4)+3)`
-/

namespace A267671.P17166563752579965433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A167614 (n + 4) + 3).toNat

end

end A267671.P17166563752579965433

/-!
# A267672: Number of 7Xn 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A267672, there is no canonical definition to state claims against.
-/

/-! ## A267672.P2346781391876555964

`A267667(A056119(n)+28)`
-/

namespace A267672.P2346781391876555964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A056119 n + 28).toNat

end

end A267672.P2346781391876555964

/-! ## A267672.P6343392893903810723

`A267667(eq[11, A066657(n)])`
-/

namespace A267672.P6343392893903810723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267672.P6343392893903810723

/-! ## A267672.P10959442381453734379

`A267667(A167499(n+5)+2)`
-/

namespace A267672.P10959442381453734379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A167499 (n + 5) + 2).toNat

end

end A267672.P10959442381453734379

/-! ## A267672.P18169673711640913917

`A267667(A000124(n+6)+6)`
-/

namespace A267672.P18169673711640913917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A000124 (n + 6) + 6).toNat

end

end A267672.P18169673711640913917

/-! ## A267672.P14004007451100814745

`A267667(A055998(n+4)+10)`
-/

namespace A267672.P14004007451100814745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267667 (A055998 (n + 4) + 10).toNat

end

end A267672.P14004007451100814745

/-!
# A267673: Triangle read by rows giving successive states of cellular automaton generated by "Rule 195" initiated with a single ON (black) cell.

The programs for A267673, the canonical program `A267673.P5790354617243130186` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267673 has offset 0).

The definition of A267673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267673.P5790354617243130186

`(1-A075438(n))^n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267673

/-- `(1-A075438(n))^n` -/
def P5790354617243130186.Spec : Prop :=
  ∀ n, P5790354617243130186.a n = A267673 n

theorem P5790354617243130186.correct : P5790354617243130186.Spec := by
  intro n
  simp only [A267673]

end A267673

/-! ## A267673.P2817018964976254461

`A262855(A173517(n))`
-/

namespace A267673.P2817018964976254461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262855 (A173517 n).toNat

end

end A267673.P2817018964976254461

namespace A267673

/-- `A262855(A173517(n))` -/
def P2817018964976254461.Spec : Prop :=
  ∀ n, P2817018964976254461.a n = A267673 n

end A267673

/-! ## A267673.P11174984315890338608

`A054977(n)-A075438(n)`
-/

namespace A267673.P11174984315890338608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A075438 n

end

end A267673.P11174984315890338608

namespace A267673

/-- `A054977(n)-A075438(n)` -/
def P11174984315890338608.Spec : Prop :=
  ∀ n, P11174984315890338608.a n = A267673 n

end A267673

/-! ## A267673.P1949157321696507326

`A000122(n*A075438(n))`
-/

namespace A267673.P1949157321696507326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n : ℤ) * A075438 n).toNat

end

end A267673.P1949157321696507326

namespace A267673

/-- `A000122(n*A075438(n))` -/
def P1949157321696507326.Spec : Prop :=
  ∀ n, P1949157321696507326.a n = A267673 n

end A267673

/-! ## A267673.P13196004735565436214

`xor(A057427(n), A075438(n))`
-/

namespace A267673.P13196004735565436214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A075438 n)

end

end A267673.P13196004735565436214

namespace A267673

/-- `xor(A057427(n), A075438(n))` -/
def P13196004735565436214.Spec : Prop :=
  ∀ n, P13196004735565436214.a n = A267673 n

end A267673

/-! ## A267673.P363643183505003435

`A262855(A020703(n+1)-1)`
-/

namespace A267673.P363643183505003435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262855 (A020703 (n + 1) - 1).toNat

end

end A267673.P363643183505003435

namespace A267673

/-- `A262855(A020703(n+1)-1)` -/
def P363643183505003435.Spec : Prop :=
  ∀ n, P363643183505003435.a n = A267673 n

end A267673

/-! ## A267673.P12917181877677422540

`1-A057427(n*A075438(n))`
-/

namespace A267673.P12917181877677422540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A075438 n).toNat

end

end A267673.P12917181877677422540

namespace A267673

/-- `1-A057427(n*A075438(n))` -/
def P12917181877677422540.Spec : Prop :=
  ∀ n, P12917181877677422540.a n = A267673 n

end A267673

/-! ## A267673.P4555105599618016913

`A007897(a(n-1)+1)-A075438(n)` with `a(0)=1`
-/

namespace A267673.P4555105599618016913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007897 (a (n - 1) + 1).toNat - A075438 n

end

end A267673.P4555105599618016913

namespace A267673

/-- `A007897(a(n-1)+1)-A075438(n)` -/
def P4555105599618016913.Spec : Prop :=
  ∀ n, P4555105599618016913.a n = A267673 n

end A267673

/-! ## A267673.P8442003329058609551

`A014491(a(n-1)+1)-A075438(n)` with `a(0)=1`
-/

namespace A267673.P8442003329058609551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014491 (a (n - 1) + 1).toNat - A075438 n

end

end A267673.P8442003329058609551

namespace A267673

/-- `A014491(a(n-1)+1)-A075438(n)` -/
def P8442003329058609551.Spec : Prop :=
  ∀ n, P8442003329058609551.a n = A267673 n

end A267673

/-! ## A267673.P14441425967522993706

`A030597(a(n-1)+1)-A075438(n)` with `a(0)=1`
-/

namespace A267673.P14441425967522993706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030597 (a (n - 1) + 1).toNat - A075438 n

end

end A267673.P14441425967522993706

namespace A267673

/-- `A030597(a(n-1)+1)-A075438(n)` -/
def P14441425967522993706.Spec : Prop :=
  ∀ n, P14441425967522993706.a n = A267673 n

end A267673

/-! ## A267673.P5272200052756573466

`A035200(a(n-1)+1)-A075438(n)` with `a(0)=1`
-/

namespace A267673.P5272200052756573466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035200 (a (n - 1) + 1).toNat - A075438 n

end

end A267673.P5272200052756573466

namespace A267673

/-- `A035200(a(n-1)+1)-A075438(n)` -/
def P5272200052756573466.Spec : Prop :=
  ∀ n, P5272200052756573466.a n = A267673 n

end A267673

/-! ## A267673.P10054087890870027257

`A267576(A217585(n+1))`
-/

namespace A267673.P10054087890870027257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267576 (A217585 (n + 1)).toNat

end

end A267673.P10054087890870027257

namespace A267673

/-- `A267576(A217585(n+1))` -/
def P10054087890870027257.Spec : Prop :=
  ∀ n, P10054087890870027257.a n = A267673 n

end A267673

/-! ## A267673.P16796221514951865264

`1-A070886(A008574(n)+1)`
-/

namespace A267673.P16796221514951865264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070886 (A008574 n + 1).toNat

end

end A267673.P16796221514951865264

namespace A267673

/-- `1-A070886(A008574(n)+1)` -/
def P16796221514951865264.Spec : Prop :=
  ∀ n, P16796221514951865264.a n = A267673 n

end A267673

/-! ## A267673.P5910952853011450834

`A267605(A004280(2*(n+1)))`
-/

namespace A267673.P5910952853011450834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A004280 (2 * (n + 1))).toNat

end

end A267673.P5910952853011450834

namespace A267673

/-- `A267605(A004280(2*(n+1)))` -/
def P5910952853011450834.Spec : Prop :=
  ∀ n, P5910952853011450834.a n = A267673 n

end A267673

/-! ## A267673.P14064012650345138536

`A267605(A004273(2*n)+2)`
-/

namespace A267673.P14064012650345138536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A004273 (2 * n) + 2).toNat

end

end A267673.P14064012650345138536

namespace A267673

/-- `A267605(A004273(2*n)+2)` -/
def P14064012650345138536.Spec : Prop :=
  ∀ n, P14064012650345138536.a n = A267673 n

end A267673

/-! ## A267673.P15284012881877042105

`A267605(A004275(2*n+1)+1)`
-/

namespace A267673.P15284012881877042105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A004275 (2 * n + 1) + 1).toNat

end

end A267673.P15284012881877042105

namespace A267673

/-- `A267605(A004275(2*n+1)+1)` -/
def P15284012881877042105.Spec : Prop :=
  ∀ n, P15284012881877042105.a n = A267673 n

end A267673

/-! ## A267673.P13565954047203731820

`A267605(A005843(n+1)+A004273(n))`
-/

namespace A267673.P13565954047203731820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A005843 (n + 1) + A004273 n).toNat

end

end A267673.P13565954047203731820

namespace A267673

/-- `A267605(A005843(n+1)+A004273(n))` -/
def P13565954047203731820.Spec : Prop :=
  ∀ n, P13565954047203731820.a n = A267673 n

end A267673

/-! ## A267673.P14681694114361897999

`A075438((n*A075438(n))²)`
-/

namespace A267673.P14681694114361897999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 (((n : ℤ) * A075438 n) ^ 2).toNat

end

end A267673.P14681694114361897999

namespace A267673

/-- `A075438((n*A075438(n))²)` -/
def P14681694114361897999.Spec : Prop :=
  ∀ n, P14681694114361897999.a n = A267673 n

end A267673

/-! ## A267673.P17496373568785294935

`A075438(n*n*A075438(n))`
-/

namespace A267673.P17496373568785294935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 ((n : ℤ) * ((n : ℤ) * A075438 n)).toNat

end

end A267673.P17496373568785294935

namespace A267673

/-- `A075438(n*n*A075438(n))` -/
def P17496373568785294935.Spec : Prop :=
  ∀ n, P17496373568785294935.a n = A267673 n

end A267673

/-!
# A267674: Binary representation of the n-th iteration of the "Rule 195" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267674, there is no canonical definition to state claims against.
-/

/-! ## A267674.P1560653459247440321

`A007088(A267675(n))`
-/

namespace A267674.P1560653459247440321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267675 n).toNat

end

end A267674.P1560653459247440321

/-! ## A267674.P7172284957904809045

`A007088(and(-A001317(n), A095121(2*n)))`
-/

namespace A267674.P7172284957904809045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A001317 n) (A095121 (2 * n))).toNat

end

end A267674.P7172284957904809045

/-!
# A267675: Decimal representation of the n-th iteration of the "Rule 195" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267675, the canonical program `A267675.P16119488282880190552` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267675 has offset 0).

The definition of A267675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267675.P16119488282880190552

`and(-A001317(n), A095121(2*n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A267675

/-- `and(-A001317(n), A095121(2*n))` -/
def P16119488282880190552.Spec : Prop :=
  ∀ n, P16119488282880190552.a n = A267675 n

theorem P16119488282880190552.correct : P16119488282880190552.Spec := by
  intro n
  simp only [A267675]

end A267675

/-! ## A267675.P13924123023929150358

`A052955(A008574(n))-A001317(n)`
-/

namespace A267675.P13924123023929150358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A008574 n).toNat - A001317 n

end

end A267675.P13924123023929150358

namespace A267675

/-- `A052955(A008574(n))-A001317(n)` -/
def P13924123023929150358.Spec : Prop :=
  ∀ n, P13924123023929150358.a n = A267675 n

end A267675

/-! ## A267675.P3669949290599159206

`A290682(A004277(n))-A001317(n)`
-/

namespace A267675.P3669949290599159206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (A004277 n).toNat - A001317 n

end

end A267675.P3669949290599159206

namespace A267675

/-- `A290682(A004277(n))-A001317(n)` -/
def P3669949290599159206.Spec : Prop :=
  ∀ n, P3669949290599159206.a n = A267675 n

end A267675

/-! ## A267675.P1896534048942860643

`or(A000225(2*n+1)-A001317(n), A000079(n)²)`
-/

namespace A267675.P1896534048942860643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (2 * n + 1) - A001317 n) (A000079 n ^ 2)

end

end A267675.P1896534048942860643

namespace A267675

/-- `or(A000225(2*n+1)-A001317(n), A000079(n)²)` -/
def P1896534048942860643.Spec : Prop :=
  ∀ n, P1896534048942860643.a n = A267675 n

end A267675

/-! ## A267675.P2039494487638274109

`or(A000225(2*n+1)-A001317(n), A000079(2*n))`
-/

namespace A267675.P2039494487638274109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (2 * n + 1) - A001317 n) (A000079 (2 * n))

end

end A267675.P2039494487638274109

namespace A267675

/-- `or(A000225(2*n+1)-A001317(n), A000079(2*n))` -/
def P2039494487638274109.Spec : Prop :=
  ∀ n, P2039494487638274109.a n = A267675 n

end A267675

/-!
# A267676: Triangle read by rows giving successive states of cellular automaton generated by "Rule 197" initiated with a single ON (black) cell.

The programs for A267676, the canonical program `A267676.P4684612888645743978` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267676 has offset 0).

The definition of A267676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267676.P2521552543580682075

`A267525(A020703(n+1)-1)`
-/

namespace A267676.P2521552543580682075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (A020703 (n + 1) - 1).toNat

end

end A267676.P2521552543580682075

namespace A267676

/-- `A267525(A020703(n+1)-1)` -/
def P2521552543580682075.Spec : Prop :=
  ∀ n, P2521552543580682075.a n = A267676 n

end A267676

/-! ## A267676.P4373330527103538672

`A267525(A020703(n+2)%A267461(n+1))`
-/

namespace A267676.P4373330527103538672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (Int.tmod (A020703 (n + 2)) (A267461 (n + 1))).toNat

end

end A267676.P4373330527103538672

namespace A267676

/-- `A267525(A020703(n+2)%A267461(n+1))` -/
def P4373330527103538672.Spec : Prop :=
  ∀ n, P4373330527103538672.a n = A267676 n

end A267676

/-! ## A267676.P4684612888645743978

`char[A183569(n+1)*A267687(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A267676

/-- `char[A183569(n+1)*A267687(n)]` -/
def P4684612888645743978.Spec : Prop :=
  ∀ n, (P4684612888645743978.a n : ℤ) = A267676 n

theorem P4684612888645743978.correct : P4684612888645743978.Spec := by
  intro n
  simp only [A267676]

end A267676

/-! ## A267676.P14823382941316988666

`char[A183569(n+1)*A267708(n*A354034(n+1))]`
-/

namespace A267676.P14823382941316988666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1) * A267708 ((n : ℤ) * A354034 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267676.P14823382941316988666

namespace A267676

/-- `char[A183569(n+1)*A267708(n*A354034(n+1))]` -/
def P14823382941316988666.Spec : Prop :=
  ∀ n, (P14823382941316988666.a n : ℤ) = A267676 n

end A267676

/-! ## A267676.P6370152790322385957

`char[A183569(A020703(n+1))*A263804(n)]`
-/

namespace A267676.P6370152790322385957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (A020703 (n + 1)).toNat * A263804 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267676.P6370152790322385957

namespace A267676

/-- `char[A183569(A020703(n+1))*A263804(n)]` -/
def P6370152790322385957.Spec : Prop :=
  ∀ n, (P6370152790322385957.a n : ℤ) = A267676 n

end A267676

/-!
# A267677: Binary representation of the n-th iteration of the "Rule 197" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267677, there is no canonical definition to state claims against.
-/

/-! ## A267677.P4325146662692959681

`A007088(A267678(n))`
-/

namespace A267677.P4325146662692959681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267678 n).toNat

end

end A267677.P4325146662692959681

/-!
# A267678: Decimal representation of the n-th iteration of the "Rule 197" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267678, the canonical program `A267678.P10509858284579671114` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267678 has offset 0).

The definition of A267678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267678.P10509858284579671114

`4*xor(a(n-1), A289098(n))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267678

/-- `4*xor(a(n-1), A289098(n))` -/
def P10509858284579671114.Spec : Prop :=
  ∀ n, P10509858284579671114.a n = A267678 n

theorem P10509858284579671114.correct : P10509858284579671114.Spec := by
  intro n
  simp only [A267678]

end A267678

/-!
# A267679: Triangle read by rows giving successive states of cellular automaton generated by "Rule 201" initiated with a single ON (black) cell.

The programs for A267679, the canonical program `A267679.P2639550459389939186` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267679 has offset 0).

The definition of A267679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267679.P2639550459389939186

`(1-(A267349(n)+A266174(n)))²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267679

/-- `(1-(A267349(n)+A266174(n)))²` -/
def P2639550459389939186.Spec : Prop :=
  ∀ n, P2639550459389939186.a n = A267679 n

theorem P2639550459389939186.correct : P2639550459389939186.Spec := by
  intro n
  simp only [A267679]

end A267679

/-! ## A267679.P15836258952692784411

`(A306461(n+1)+A000040(n+1))%2`
-/

namespace A267679.P15836258952692784411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306461 (n + 1) + A000040 (n + 1)) 2

end

end A267679.P15836258952692784411

namespace A267679

/-- `(A306461(n+1)+A000040(n+1))%2` -/
def P15836258952692784411.Spec : Prop :=
  ∀ n, P15836258952692784411.a n = A267679 n

end A267679

/-! ## A267679.P3300031594225465411

`and(1, A306461(n+1)+A045344(n+1))`
-/

namespace A267679.P3300031594225465411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A306461 (n + 1) + A045344 (n + 1))

end

end A267679.P3300031594225465411

namespace A267679

/-- `and(1, A306461(n+1)+A045344(n+1))` -/
def P3300031594225465411.Spec : Prop :=
  ∀ n, P3300031594225465411.a n = A267679 n

end A267679

/-! ## A267679.P11006503352129261481

`A059841(A306461(n+1)%A008458(n))`
-/

namespace A267679.P11006503352129261481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.tmod (A306461 (n + 1)) (A008458 n)).toNat

end

end A267679.P11006503352129261481

namespace A267679

/-- `A059841(A306461(n+1)%A008458(n))` -/
def P11006503352129261481.Spec : Prop :=
  ∀ n, P11006503352129261481.a n = A267679 n

end A267679

/-! ## A267679.P6778244233947772266

`A059841(and(A045344(n+1), A306461(n+1)))`
-/

namespace A267679.P6778244233947772266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.land (A045344 (n + 1)) (A306461 (n + 1))).toNat

end

end A267679.P6778244233947772266

namespace A267679

/-- `A059841(and(A045344(n+1), A306461(n+1)))` -/
def P6778244233947772266.Spec : Prop :=
  ∀ n, P6778244233947772266.a n = A267679 n

end A267679

/-! ## A267679.P891859919419667033

`and(1, A306461(n+1)+A000225(n))`
-/

namespace A267679.P891859919419667033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A306461 (n + 1) + A000225 n)

end

end A267679.P891859919419667033

namespace A267679

/-- `and(1, A306461(n+1)+A000225(n))` -/
def P891859919419667033.Spec : Prop :=
  ∀ n, P891859919419667033.a n = A267679 n

end A267679

/-! ## A267679.P3142943027303952109

`and(1, A306461(n+1)+A168596(n))`
-/

namespace A267679.P3142943027303952109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A306461 (n + 1) + A168596 n)

end

end A267679.P3142943027303952109

namespace A267679

/-- `and(1, A306461(n+1)+A168596(n))` -/
def P3142943027303952109.Spec : Prop :=
  ∀ n, P3142943027303952109.a n = A267679 n

end A267679

/-! ## A267679.P9010491515306630313

`A127648(and(A168596(n), A306461(n+1)))`
-/

namespace A267679.P9010491515306630313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (Int.land (A168596 n) (A306461 (n + 1))).toNat

end

end A267679.P9010491515306630313

namespace A267679

/-- `A127648(and(A168596(n), A306461(n+1)))` -/
def P9010491515306630313.Spec : Prop :=
  ∀ n, P9010491515306630313.a n = A267679 n

end A267679

/-! ## A267679.P9906722031841650973

`A059841(A306461(n+1)+A008458(n))`
-/

namespace A267679.P9906722031841650973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A306461 (n + 1) + A008458 n).toNat

end

end A267679.P9906722031841650973

namespace A267679

/-- `A059841(A306461(n+1)+A008458(n))` -/
def P9906722031841650973.Spec : Prop :=
  ∀ n, P9906722031841650973.a n = A267679 n

end A267679

/-!
# A267680: Binary representation of the n-th iteration of the "Rule 201" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267680, there is no canonical definition to state claims against.
-/

/-! ## A267680.P12832396158067127721

`A007088(A267681(n))`
-/

namespace A267680.P12832396158067127721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267681 n).toNat

end

end A267680.P12832396158067127721

/-! ## A267680.P14704953286299815847

`A185544(2*A267681(n))`
-/

namespace A267680.P14704953286299815847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267681 n).toNat

end

end A267680.P14704953286299815847

/-!
# A267681: Decimal representation of the n-th iteration of the "Rule 201" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267681, the canonical program `A267681.P7180399548519659764` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267681 has offset 0).

The definition of A267681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267681.P7180399548519659764

`5*a(n-1)-20*a(n-3)+16*a(n-4)` with `a(0)=1, a(1)=0, a(2)=21, a(3)=99, a(4)=471`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267681

/-- `5*a(n-1)-20*a(n-3)+16*a(n-4)` -/
def P7180399548519659764.Spec : Prop :=
  ∀ n, P7180399548519659764.a n = A267681 n

theorem P7180399548519659764.correct : P7180399548519659764.Spec := by
  intro n
  simp only [A267681]

end A267681

/-! ## A267681.P11147825005724541823

`xor(2*a(n-1), A001576(n))` with `a(0)=1, a(1)=0`
-/

namespace A267681.P11147825005724541823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.xor (2 * a (n - 1)) (A001576 n)

end

end A267681.P11147825005724541823

namespace A267681

/-- `xor(2*a(n-1), A001576(n))` -/
def P11147825005724541823.Spec : Prop :=
  ∀ n, P11147825005724541823.a n = A267681 n

end A267681

/-! ## A267681.P2879804351894168638

`xor(2*(4^n-1-a(n-1)), A156589(n))` with `a(0)=1, a(1)=0`
-/

namespace A267681.P2879804351894168638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.xor (2 * ((4 ^ n : ℤ) - 1 - a (n - 1))) (A156589 n)

end

end A267681.P2879804351894168638

namespace A267681

/-- `xor(2*(4^n-1-a(n-1)), A156589(n))` -/
def P2879804351894168638.Spec : Prop :=
  ∀ n, P2879804351894168638.a n = A267681 n

end A267681

/-! ## A267681.P1573042153310044113

`xor(4^n+a(n-1)+a(n-1)+2, A126646(n))` with `a(0)=1, a(1)=0`
-/

namespace A267681.P1573042153310044113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.xor ((4 ^ n : ℤ) + (a (n - 1) + (a (n - 1) + 2))) (A126646 n)

end

end A267681.P1573042153310044113

namespace A267681

/-- `xor(4^n+a(n-1)+a(n-1)+2, A126646(n))` -/
def P1573042153310044113.Spec : Prop :=
  ∀ n, P1573042153310044113.a n = A267681 n

end A267681

/-! ## A267681.P1398096163965749590

`and(A283507(n)-A020707(n), A267816(n))`
-/

namespace A267681.P1398096163965749590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283507 n - A020707 n) (A267816 n)

end

end A267681.P1398096163965749590

namespace A267681

/-- `and(A283507(n)-A020707(n), A267816(n))` -/
def P1398096163965749590.Spec : Prop :=
  ∀ n, P1398096163965749590.a n = A267681 n

end A267681

/-! ## A267681.P13406692835065285475

`and(A283507(n)-A020707(n), A267938(n))`
-/

namespace A267681.P13406692835065285475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283507 n - A020707 n) (A267938 n)

end

end A267681.P13406692835065285475

namespace A267681

/-- `and(A283507(n)-A020707(n), A267938(n))` -/
def P13406692835065285475.Spec : Prop :=
  ∀ n, P13406692835065285475.a n = A267681 n

end A267681

/-!
# A267682: a(n) = 2*a(n-1) - 2*a(n-3) + a(n-4) for n > 3, with initial terms 1, 1, 4, 8.

The programs for A267682, the canonical program `A267682.P2541449861350781618` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267682 has offset 0).

The definition of A267682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-3)+a(n-4)` (program `A267682.P2541449861350781618`, by `A267682.P2541449861350781618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267682.P11486383816569192080

`n*(n-1)+floor(n/2)+1`
-/

namespace A267682.P11486383816569192080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) + ⌊(n : ℚ) / 2⌋ + 1

end

end A267682.P11486383816569192080

namespace A267682

/-- `n*(n-1)+floor(n/2)+1` -/
def P11486383816569192080.Spec : Prop :=
  ∀ n, P11486383816569192080.a n = A267682 n

end A267682

/-! ## A267682.P2541449861350781618

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267682

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2541449861350781618.Spec : Prop :=
  ∀ n, P2541449861350781618.a n = A267682 n

theorem P2541449861350781618.correct : P2541449861350781618.Spec := by
  intro n
  simp only [A267682]

end A267682

/-! ## A267682.P6989984542256184774

`∑[a(n-2)+4]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A267682.P6989984542256184774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267682.P6989984542256184774

namespace A267682

/-- `∑[a(n-2)+4]` -/
def P6989984542256184774.Spec : Prop :=
  ∀ n, (P6989984542256184774.a n : ℤ) = A267682 n

end A267682

/-! ## A267682.P3026980287833724747

`round((C(2*n, 2)+1)/2)`
-/

namespace A267682.P3026980287833724747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 2 + 1 : ℚ) / 2)

end

end A267682.P3026980287833724747

namespace A267682

/-- `round((C(2*n, 2)+1)/2)` -/
def P3026980287833724747.Spec : Prop :=
  ∀ n, P3026980287833724747.a n = A267682 n

end A267682

/-! ## A267682.P8258283724340214306

`(C(2*n, 2)+gcd(2, n))/2`
-/

namespace A267682.P8258283724340214306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 + Nat.gcd 2 n : ℚ) / 2

end

end A267682.P8258283724340214306

namespace A267682

/-- `(C(2*n, 2)+gcd(2, n))/2` -/
def P8258283724340214306.Spec : Prop :=
  ∀ n, P8258283724340214306.a n = (A267682 n : ℚ)

end A267682

/-! ## A267682.P2206843570565214228

`ogf((1-x+2x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A267682.P2206843570565214228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 2] [1, -2, 0, 2, -1] n

end

end A267682.P2206843570565214228

namespace A267682

/-- `ogf((1-x+2x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P2206843570565214228.Spec : Prop :=
  ∀ n, P2206843570565214228.a n = A267682 n

end A267682

/-! ## A267682.P7627841522472904311

`floor(4*n+a(n-2)-5)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A267682.P7627841522472904311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 * n : ℤ) + (a (n - 2) - 5)

end

end A267682.P7627841522472904311

namespace A267682

/-- `floor(4*n+a(n-2)-5)` -/
def P7627841522472904311.Spec : Prop :=
  ∀ n, P7627841522472904311.a n = A267682 n

end A267682

/-! ## A267682.P10359974644509801773

`floor(4*n-(5-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A267682.P10359974644509801773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 * n : ℤ) - (5 - a (n - 2))

end

end A267682.P10359974644509801773

namespace A267682

/-- `floor(4*n-(5-a(n-2)))` -/
def P10359974644509801773.Spec : Prop :=
  ∀ n, P10359974644509801773.a n = A267682 n

end A267682

/-! ## A267682.P7934498417723548073

`floor((lcm(2*n+1, ∑[n])+2)/(n+2))`
-/

namespace A267682.P7934498417723548073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + 2 : ℚ) / (n + 2 : ℚ)⌋

end

end A267682.P7934498417723548073

namespace A267682

/-- `floor((lcm(2*n+1, ∑[n])+2)/(n+2))` -/
def P7934498417723548073.Spec : Prop :=
  ∀ n, P7934498417723548073.a n = A267682 n

end A267682

/-! ## A267682.P16342737340832489583

`ceil(sqrt(A060884(n)))`
-/

namespace A267682.P16342737340832489583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060884 n : ℝ)⌉

end

end A267682.P16342737340832489583

namespace A267682

/-- `ceil(sqrt(A060884(n)))` -/
def P16342737340832489583.Spec : Prop :=
  ∀ n, P16342737340832489583.a n = A267682 n

end A267682

/-! ## A267682.P12735300634926289045

`A004201(A099392(n+1))`
-/

namespace A267682.P12735300634926289045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (A099392 (n + 1)).toNat

end

end A267682.P12735300634926289045

namespace A267682

/-- `A004201(A099392(n+1))` -/
def P12735300634926289045.Spec : Prop :=
  ∀ n, P12735300634926289045.a n = A267682 n

end A267682

/-! ## A267682.P1995457210559549482

`A128217(A152948(n+1))`
-/

namespace A267682.P1995457210559549482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128217 (A152948 (n + 1)).toNat

end

end A267682.P1995457210559549482

namespace A267682

/-- `A128217(A152948(n+1))` -/
def P1995457210559549482.Spec : Prop :=
  ∀ n, P1995457210559549482.a n = A267682 n

end A267682

/-! ## A267682.P8052312761866450213

`A094064(a(n-1)+n)` with `a(0)=1, a(1)=1`
-/

namespace A267682.P8052312761866450213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A094064 (a (n - 1) + (n : ℤ)).toNat

end

end A267682.P8052312761866450213

namespace A267682

/-- `A094064(a(n-1)+n)` -/
def P8052312761866450213.Spec : Prop :=
  ∀ n, P8052312761866450213.a n = A267682 n

end A267682

/-! ## A267682.P7077100943628195755

`A004201(A008619(n²))`
-/

namespace A267682.P7077100943628195755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (A008619 (n ^ 2)).toNat

end

end A267682.P7077100943628195755

namespace A267682

/-- `A004201(A008619(n²))` -/
def P7077100943628195755.Spec : Prop :=
  ∀ n, P7077100943628195755.a n = A267682 n

end A267682

/-! ## A267682.P18362504386244307297

`A083479(A014848(n+1))`
-/

namespace A267682.P18362504386244307297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A014848 (n + 1)).toNat

end

end A267682.P18362504386244307297

namespace A267682

/-- `A083479(A014848(n+1))` -/
def P18362504386244307297.Spec : Prop :=
  ∀ n, P18362504386244307297.a n = A267682 n

end A267682

/-!
# A267683: Triangle read by rows giving successive states of cellular automaton generated by "Rule 203" initiated with a single ON (black) cell.

The programs for A267683, the canonical program `A267683.P13874331238885299583` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267683 has offset 0).

The definition of A267683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267683.P7255573346520080361

`char[comp[∑[2*(n+1)]]]-char[3]`
-/

namespace A267683.P7255573346520080361
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267683.P7255573346520080361

namespace A267683

/-- `char[comp[∑[2*(n+1)]]]-char[3]` -/
def P7255573346520080361.Spec : Prop :=
  ∀ n, P7255573346520080361.a n = A267683 n

end A267683

/-! ## A267683.P196217412248839095

`char[comp[gcd(n, a(n-1))+n²]]` with `a(0)=3`
-/

namespace A267683.P196217412248839095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  Nat.gcd n (f2 (n - 1)) + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267683.P196217412248839095

namespace A267683

/-- `char[comp[gcd(n, a(n-1))+n²]]` -/
def P196217412248839095.Spec : Prop :=
  ∀ n, (P196217412248839095.a n : ℤ) = A267683 n

end A267683

/-! ## A267683.P5891485690086507334

`A267813(n-char[3])`
-/

namespace A267683.P5891485690086507334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A267683.P5891485690086507334

namespace A267683

/-- `A267813(n-char[3])` -/
def P5891485690086507334.Spec : Prop :=
  ∀ n, P5891485690086507334.a n = A267683 n

end A267683

/-! ## A267683.P4326639979389396298

`char[comp[A131723(n)+3+n]]`
-/

namespace A267683.P4326639979389396298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131723 n + 3 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267683.P4326639979389396298

namespace A267683

/-- `char[comp[A131723(n)+3+n]]` -/
def P4326639979389396298.Spec : Prop :=
  ∀ n, (P4326639979389396298.a n : ℤ) = A267683 n

end A267683

/-! ## A267683.P16287241923815904340

`char[A078358(n+1)%(or(1, n)+n)]`
-/

namespace A267683.P16287241923815904340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078358 (n + 1)) (Nat.lor 1 n + n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267683.P16287241923815904340

namespace A267683

/-- `char[A078358(n+1)%(or(1, n)+n)]` -/
def P16287241923815904340.Spec : Prop :=
  ∀ n, (P16287241923815904340.a n : ℤ) = A267683 n

end A267683

/-! ## A267683.P624610080588165274

`char[comp[A061397(3*(n+1))+n²+n]]`
-/

namespace A267683.P624610080588165274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (3 * (n + 1)) + (n ^ 2 : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267683.P624610080588165274

namespace A267683

/-- `char[comp[A061397(3*(n+1))+n²+n]]` -/
def P624610080588165274.Spec : Prop :=
  ∀ n, (P624610080588165274.a n : ℤ) = A267683 n

end A267683

/-! ## A267683.P11774850366568558833

`abs(char[(A004277(n)+1-n)²-n-1]-1)`
-/

namespace A267683.P11774850366568558833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + (1 - (n : ℤ))) ^ 2 - (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A267683.P11774850366568558833

namespace A267683

/-- `abs(char[(A004277(n)+1-n)²-n-1]-1)` -/
def P11774850366568558833.Spec : Prop :=
  ∀ n, P11774850366568558833.a n = A267683 n

end A267683

/-! ## A267683.P14600740560721375092

`A267810(A159966(n))`
-/

namespace A267683.P14600740560721375092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 (A159966 n).toNat

end

end A267683.P14600740560721375092

namespace A267683

/-- `A267810(A159966(n))` -/
def P14600740560721375092.Spec : Prop :=
  ∀ n, P14600740560721375092.a n = A267683 n

end A267683

/-! ## A267683.P13874331238885299583

`A267621(A028391(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267683

/-- `A267621(A028391(n+1))` -/
def P13874331238885299583.Spec : Prop :=
  ∀ n, P13874331238885299583.a n = A267683 n

theorem P13874331238885299583.correct : P13874331238885299583.Spec := by
  intro n
  simp only [A267683]

end A267683

/-! ## A267683.P3943037581620395599

`A267537(n)*A267813(n)`
-/

namespace A267683.P3943037581620395599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n * A267813 n

end

end A267683.P3943037581620395599

namespace A267683

/-- `A267537(n)*A267813(n)` -/
def P3943037581620395599.Spec : Prop :=
  ∀ n, P3943037581620395599.a n = A267683 n

end A267683

/-! ## A267683.P4204630647599268280

`A267813(n)*A267869(n)`
-/

namespace A267683.P4204630647599268280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 n * A267869 n

end

end A267683.P4204630647599268280

namespace A267683

/-- `A267813(n)*A267869(n)` -/
def P4204630647599268280.Spec : Prop :=
  ∀ n, P4204630647599268280.a n = A267683 n

end A267683

/-! ## A267683.P9479331282585148877

`A267813(n)*A267871(n)`
-/

namespace A267683.P9479331282585148877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 n * A267871 n

end

end A267683.P9479331282585148877

namespace A267683

/-- `A267813(n)*A267871(n)` -/
def P9479331282585148877.Spec : Prop :=
  ∀ n, P9479331282585148877.a n = A267683 n

end A267683

/-! ## A267683.P6737816755718090286

`and(A042955(n), A267813(n))`
-/

namespace A267683.P6737816755718090286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042955 n) (A267813 n)

end

end A267683.P6737816755718090286

namespace A267683

/-- `and(A042955(n), A267813(n))` -/
def P6737816755718090286.Spec : Prop :=
  ∀ n, P6737816755718090286.a n = A267683 n

end A267683

/-! ## A267683.P14173538138150857740

`and(A130008(n), A267813(n))`
-/

namespace A267683.P14173538138150857740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130008 n) (A267813 n)

end

end A267683.P14173538138150857740

namespace A267683

/-- `and(A130008(n), A267813(n))` -/
def P14173538138150857740.Spec : Prop :=
  ∀ n, P14173538138150857740.a n = A267683 n

end A267683

/-! ## A267683.P13775135129764265138

`and(A267813(n), A306238(n))`
-/

namespace A267683.P13775135129764265138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267813 n) (A306238 n)

end

end A267683.P13775135129764265138

namespace A267683

/-- `and(A267813(n), A306238(n))` -/
def P13775135129764265138.Spec : Prop :=
  ∀ n, P13775135129764265138.a n = A267683 n

end A267683

/-! ## A267683.P2407603022919972087

`xor(A185013(n), A267813(n))`
-/

namespace A267683.P2407603022919972087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185013 n) (A267813 n)

end

end A267683.P2407603022919972087

namespace A267683

/-- `xor(A185013(n), A267813(n))` -/
def P2407603022919972087.Spec : Prop :=
  ∀ n, P2407603022919972087.a n = A267683 n

end A267683

/-! ## A267683.P904779650310854850

`and(A109986(n+1), A267813(n))`
-/

namespace A267683.P904779650310854850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109986 (n + 1)) (A267813 n)

end

end A267683.P904779650310854850

namespace A267683

/-- `and(A109986(n+1), A267813(n))` -/
def P904779650310854850.Spec : Prop :=
  ∀ n, P904779650310854850.a n = A267683 n

end A267683

/-! ## A267683.P3496355216834566370

`and(A167224(n+1), A267813(n))`
-/

namespace A267683.P3496355216834566370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167224 (n + 1)) (A267813 n)

end

end A267683.P3496355216834566370

namespace A267683

/-- `and(A167224(n+1), A267813(n))` -/
def P3496355216834566370.Spec : Prop :=
  ∀ n, P3496355216834566370.a n = A267683 n

end A267683

/-! ## A267683.P11441056873983727388

`and(A252979(n+1), A267813(n))`
-/

namespace A267683.P11441056873983727388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A252979 (n + 1)) (A267813 n)

end

end A267683.P11441056873983727388

namespace A267683

/-- `and(A252979(n+1), A267813(n))` -/
def P11441056873983727388.Spec : Prop :=
  ∀ n, P11441056873983727388.a n = A267683 n

end A267683

/-! ## A267683.P3408022553383091661

`A267871(A004741(n+2))*A267871(n)`
-/

namespace A267683.P3408022553383091661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A004741 (n + 2)).toNat * A267871 n

end

end A267683.P3408022553383091661

namespace A267683

/-- `A267871(A004741(n+2))*A267871(n)` -/
def P3408022553383091661.Spec : Prop :=
  ∀ n, P3408022553383091661.a n = A267683 n

end A267683

/-!
# A267684: Binary representation of the n-th iteration of the "Rule 203" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267684, there is no canonical definition to state claims against.
-/

/-! ## A267684.P18096822832177652949

`floor((xor(3, 3*((10^(2*n+1)-1)/9-10^n))+1)/3)`
-/

namespace A267684.P18096822832177652949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor 3 (SequenceMachineLib.roundAway (3 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9 - (10 ^ n : ℚ)))) + 1 : ℚ) / 3⌋

end

end A267684.P18096822832177652949

/-! ## A267684.P17745526251527609786

`A288825(2*n)-char[1]`
-/

namespace A267684.P17745526251527609786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288825 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267684.P17745526251527609786

/-! ## A267684.P1628429280173785928

`xor(floor(10^(2*n+1)/9)-10^n, char[A103312(n)])`
-/

namespace A267684.P1628429280173785928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267684.P1628429280173785928

/-! ## A267684.P15234069597479468656

`xor(char[A001017(n)], A138148(n))`
-/

namespace A267684.P15234069597479468656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A138148 n)

end

end A267684.P15234069597479468656

/-! ## A267684.P16220925384340532047

`xor(char[A103312(n)], A138148(n))`
-/

namespace A267684.P16220925384340532047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A138148 n)

end

end A267684.P16220925384340532047

/-! ## A267684.P3275390423829989825

`A138148(n)+A267685(n)-A129868(n)`
-/

namespace A267684.P3275390423829989825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138148 n + (A267685 n - A129868 n)

end

end A267684.P3275390423829989825

/-!
# A267685: Decimal representation of the n-th iteration of the "Rule 203" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267685, the canonical program `A267685.P11425362713047854553` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267685 has offset 0).

The definition of A267685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267685.P11425362713047854553

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=27, a(3)=119, a(4)=495`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267685

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P11425362713047854553.Spec : Prop :=
  ∀ n, P11425362713047854553.a n = A267685 n

theorem P11425362713047854553.correct : P11425362713047854553.Spec := by
  intro n
  simp only [A267685]

end A267685

/-! ## A267685.P8290715890417569267

`A288828(2*n)-char[1]`
-/

namespace A267685.P8290715890417569267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288828 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267685.P8290715890417569267

namespace A267685

/-- `A288828(2*n)-char[1]` -/
def P8290715890417569267.Spec : Prop :=
  ∀ n, P8290715890417569267.a n = A267685 n

end A267685

/-! ## A267685.P14585175104222069672

`or(1, A129868(n))-char[1]`
-/

namespace A267685.P14585175104222069672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129868 n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267685.P14585175104222069672

namespace A267685

/-- `or(1, A129868(n))-char[1]` -/
def P14585175104222069672.Spec : Prop :=
  ∀ n, P14585175104222069672.a n = A267685 n

end A267685

/-! ## A267685.P8566722676641948038

`A267890(n)-and(-2, 2^n)`
-/

namespace A267685.P8566722676641948038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267890 n - Int.land (-2) (2 ^ n : ℤ)

end

end A267685.P8566722676641948038

namespace A267685

/-- `A267890(n)-and(-2, 2^n)` -/
def P8566722676641948038.Spec : Prop :=
  ∀ n, P8566722676641948038.a n = A267685 n

end A267685

/-! ## A267685.P3247297891844144033

`A267596(n)+A020522(n)`
-/

namespace A267685.P3247297891844144033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267596 n + A020522 n

end

end A267685.P3247297891844144033

namespace A267685

/-- `A267596(n)+A020522(n)` -/
def P3247297891844144033.Spec : Prop :=
  ∀ n, P3247297891844144033.a n = A267685 n

end A267685

/-! ## A267685.P16766363472747362276

`A267890(n)-A155559(n)`
-/

namespace A267685.P16766363472747362276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267890 n - A155559 n

end

end A267685.P16766363472747362276

namespace A267685

/-- `A267890(n)-A155559(n)` -/
def P16766363472747362276.Spec : Prop :=
  ∀ n, P16766363472747362276.a n = A267685 n

end A267685

/-! ## A267685.P498649577981169688

`A267921(n)-A296965(n)`
-/

namespace A267685.P498649577981169688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267921 n - A296965 n

end

end A267685.P498649577981169688

namespace A267685

/-- `A267921(n)-A296965(n)` -/
def P498649577981169688.Spec : Prop :=
  ∀ n, P498649577981169688.a n = A267685 n

end A267685

/-! ## A267685.P15676846195261060571

`xor(A092440(n), A296965(n))`
-/

namespace A267685.P15676846195261060571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092440 n) (A296965 n)

end

end A267685.P15676846195261060571

namespace A267685

/-- `xor(A092440(n), A296965(n))` -/
def P15676846195261060571.Spec : Prop :=
  ∀ n, P15676846195261060571.a n = A267685 n

end A267685

/-! ## A267685.P6704417934170198944

`xor(char[A275759(n)], A129868(n))`
-/

namespace A267685.P6704417934170198944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275759 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A129868 n)

end

end A267685.P6704417934170198944

namespace A267685

/-- `xor(char[A275759(n)], A129868(n))` -/
def P6704417934170198944.Spec : Prop :=
  ∀ n, P6704417934170198944.a n = A267685 n

end A267685

/-! ## A267685.P2161488799156580353

`A154955(n+1)+A129868(n)`
-/

namespace A267685.P2161488799156580353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) + A129868 n

end

end A267685.P2161488799156580353

namespace A267685

/-- `A154955(n+1)+A129868(n)` -/
def P2161488799156580353.Spec : Prop :=
  ∀ n, P2161488799156580353.a n = A267685 n

end A267685

/-! ## A267685.P12931571566039313444

`A004171(n)-A143096(n+1)`
-/

namespace A267685.P12931571566039313444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A143096 (n + 1)

end

end A267685.P12931571566039313444

namespace A267685

/-- `A004171(n)-A143096(n+1)` -/
def P12931571566039313444.Spec : Prop :=
  ∀ n, P12931571566039313444.a n = A267685 n

end A267685

/-! ## A267685.P4053867824824001266

`A283591(2*n)-A000225(n)`
-/

namespace A267685.P4053867824824001266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283591 (2 * n) - A000225 n

end

end A267685.P4053867824824001266

namespace A267685

/-- `A283591(2*n)-A000225(n)` -/
def P4053867824824001266.Spec : Prop :=
  ∀ n, P4053867824824001266.a n = A267685 n

end A267685

/-! ## A267685.P1548730097652272869

`A290198(2*n)-A000225(n)`
-/

namespace A267685.P1548730097652272869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290198 (2 * n) - A000225 n

end

end A267685.P1548730097652272869

namespace A267685

/-- `A290198(2*n)-A000225(n)` -/
def P1548730097652272869.Spec : Prop :=
  ∀ n, P1548730097652272869.a n = A267685 n

end A267685

/-! ## A267685.P1356144830169292295

`xor(A019590(n+1), A129868(n))`
-/

namespace A267685.P1356144830169292295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A129868 n)

end

end A267685.P1356144830169292295

namespace A267685

/-- `xor(A019590(n+1), A129868(n))` -/
def P1356144830169292295.Spec : Prop :=
  ∀ n, P1356144830169292295.a n = A267685 n

end A267685

/-! ## A267685.P7955702774472566711

`xor(A171663(2*n), A296965(n))`
-/

namespace A267685.P7955702774472566711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171663 (2 * n)) (A296965 n)

end

end A267685.P7955702774472566711

namespace A267685

/-- `xor(A171663(2*n), A296965(n))` -/
def P7955702774472566711.Spec : Prop :=
  ∀ n, P7955702774472566711.a n = A267685 n

end A267685

/-! ## A267685.P18242414252468138413

`C(4, C(n, A267812(n)))*A267812(n)`
-/

namespace A267685.P18242414252468138413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 4 (Nat.choose n (A267812 n).toNat) : ℤ) * A267812 n

end

end A267685.P18242414252468138413

namespace A267685

/-- `C(4, C(n, A267812(n)))*A267812(n)` -/
def P18242414252468138413.Spec : Prop :=
  ∀ n, P18242414252468138413.a n = A267685 n

end A267685

/-! ## A267685.P3703279795526292689

`A288827(2*n)-and(1, A029746(2*n+1))`
-/

namespace A267685.P3703279795526292689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288827 (2 * n) - Int.land 1 (A029746 (2 * n + 1))

end

end A267685.P3703279795526292689

namespace A267685

/-- `A288827(2*n)-and(1, A029746(2*n+1))` -/
def P3703279795526292689.Spec : Prop :=
  ∀ n, P3703279795526292689.a n = A267685 n

end A267685

/-! ## A267685.P9239223611306898814

`A129868(n)-A163805(A105321(n))`
-/

namespace A267685.P9239223611306898814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129868 n - A163805 (A105321 n).toNat

end

end A267685.P9239223611306898814

namespace A267685

/-- `A129868(n)-A163805(A105321(n))` -/
def P9239223611306898814.Spec : Prop :=
  ∀ n, P9239223611306898814.a n = A267685 n

end A267685

/-! ## A267685.P6788160074995597658

`xor(A000007(A011371(n)), A129868(n))`
-/

namespace A267685.P6788160074995597658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A011371 n).toNat) (A129868 n)

end

end A267685.P6788160074995597658

namespace A267685

/-- `xor(A000007(A011371(n)), A129868(n))` -/
def P6788160074995597658.Spec : Prop :=
  ∀ n, P6788160074995597658.a n = A267685 n

end A267685

/-! ## A267685.P2773351372179745065

`xor(A276918(A004273(n)), A296965(n))`
-/

namespace A267685.P2773351372179745065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A276918 (A004273 n).toNat) (A296965 n)

end

end A267685.P2773351372179745065

namespace A267685

/-- `xor(A276918(A004273(n)), A296965(n))` -/
def P2773351372179745065.Spec : Prop :=
  ∀ n, P2773351372179745065.a n = A267685 n

end A267685

/-!
# A267686: Positive integers n such that n^4 = a^3 + b^3 = x^2 + y^2 + z^2 where x, y, z, a and b are positive integers, is soluble.

The programs for A267686, there is no canonical definition to state claims against.
-/

/-! ## A267686.P4321870685681980639

`filter[A051386(n+1), A202238(#)]`
-/

namespace A267686.P4321870685681980639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A267686.P4321870685681980639

/-! ## A267686.P7063645059782651447

`filter[A051386(n+1), A347523(#)]`
-/

namespace A267686.P7063645059782651447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A267686.P7063645059782651447

/-! ## A267686.P14729681857456991791

`∩[A051386(n+1), A065940(n)]`
-/

namespace A267686.P14729681857456991791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267686.P14729681857456991791

/-! ## A267686.P7961717024582273055

`filter[A051386(n+1), A267579(#)]`
-/

namespace A267686.P7961717024582273055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A267686.P7961717024582273055

/-! ## A267686.P11488017786892766672

`∩[A051386(n+1), A057716(n)]`
-/

namespace A267686.P11488017786892766672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267686.P11488017786892766672

/-! ## A267686.P7955369056862933744

`∩[A051386(n+1), A116451(n)]`
-/

namespace A267686.P7955369056862933744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267686.P7955369056862933744

/-! ## A267686.P15152101101416248540

`∩[A004169(n+1), A051386(n+1)]`
-/

namespace A267686.P15152101101416248540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267686.P15152101101416248540

/-! ## A267686.P5166129708103702601

`∩[A005767(n+1), A051386(n+1)]`
-/

namespace A267686.P5166129708103702601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267686.P5166129708103702601

/-! ## A267686.P18070474493744933035

`∩[A051386(n+1), A138591(n+1)]`
-/

namespace A267686.P18070474493744933035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267686.P18070474493744933035

/-! ## A267686.P5476670926588676099

`∩[A051386(n+1), A161992(n+1)]`
-/

namespace A267686.P5476670926588676099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267686.P5476670926588676099

/-!
# A267687: Triangle read by rows giving successive states of cellular automaton generated by "Rule 199" initiated with a single ON (black) cell.

The programs for A267687, the canonical program `A267687.P10819127517150831275` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267687 has offset 0).

The definition of A267687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267687.P14875784239011788769

`ceil((sqrt(n+1)-A000194(n))^n)`
-/

namespace A267687.P14875784239011788769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (n + 1 : ℝ) - (A000194 n : ℝ)) ^ n⌉

end

end A267687.P14875784239011788769

namespace A267687

/-- `ceil((sqrt(n+1)-A000194(n))^n)` -/
def P14875784239011788769.Spec : Prop :=
  ∀ n, P14875784239011788769.a n = A267687 n

end A267687

/-! ## A267687.P18304931646127582084

`A263804(A020703(n+1)-1)`
-/

namespace A267687.P18304931646127582084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263804 (A020703 (n + 1) - 1).toNat

end

end A267687.P18304931646127582084

namespace A267687

/-- `A263804(A020703(n+1)-1)` -/
def P18304931646127582084.Spec : Prop :=
  ∀ n, P18304931646127582084.a n = A267687 n

end A267687

/-! ## A267687.P17523829968534587911

`A267708(n*A354034(n+1))`
-/

namespace A267687.P17523829968534587911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 ((n : ℤ) * A354034 (n + 1)).toNat

end

end A267687.P17523829968534587911

namespace A267687

/-- `A267708(n*A354034(n+1))` -/
def P17523829968534587911.Spec : Prop :=
  ∀ n, P17523829968534587911.a n = A267687 n

end A267687

/-! ## A267687.P10819127517150831275

`and(1, A265359(n+1)+and(n, A000267(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A267687

/-- `and(1, A265359(n+1)+and(n, A000267(n+1)))` -/
def P10819127517150831275.Spec : Prop :=
  ∀ n, P10819127517150831275.a n = A267687 n

theorem P10819127517150831275.correct : P10819127517150831275.Spec := by
  intro n
  simp only [A267687]

end A267687

/-! ## A267687.P7477525522360475681

`A327174(Δ[A004737(n+1)]^n+1)`
-/

namespace A267687.P7477525522360475681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 ((f1 (n + 1) - f1 n) ^ n + 1).toNat

end

end A267687.P7477525522360475681

namespace A267687

/-- `A327174(Δ[A004737(n+1)]^n+1)` -/
def P7477525522360475681.Spec : Prop :=
  ∀ n, P7477525522360475681.a n = A267687 n

end A267687

/-! ## A267687.P2965059291040001233

`A267676((1-A267676(n))*A183569(n+1))`
-/

namespace A267687.P2965059291040001233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267676 ((1 - A267676 n) * A183569 (n + 1)).toNat

end

end A267687.P2965059291040001233

namespace A267687

/-- `A267676((1-A267676(n))*A183569(n+1))` -/
def P2965059291040001233.Spec : Prop :=
  ∀ n, P2965059291040001233.a n = A267687 n

end A267687

/-! ## A267687.P295281541360649995

`A267676(A183569(n+1))`
-/

namespace A267687.P295281541360649995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267676 (A183569 (n + 1)).toNat

end

end A267687.P295281541360649995

namespace A267687

/-- `A267676(A183569(n+1))` -/
def P295281541360649995.Spec : Prop :=
  ∀ n, P295281541360649995.a n = A267687 n

end A267687

/-! ## A267687.P6674711803139318550

`char[and(n, n-char[A063657(n+1)])]`
-/

namespace A267687.P6674711803139318550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267687.P6674711803139318550

namespace A267687

/-- `char[and(n, n-char[A063657(n+1)])]` -/
def P6674711803139318550.Spec : Prop :=
  ∀ n, (P6674711803139318550.a n : ℤ) = A267687 n

end A267687

/-! ## A267687.P924515425841587016

`char[and(n+1, A267708(n+1)+n)]`
-/

namespace A267687.P924515425841587016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A267708 (n + 1) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267687.P924515425841587016

namespace A267687

/-- `char[and(n+1, A267708(n+1)+n)]` -/
def P924515425841587016.Spec : Prop :=
  ∀ n, (P924515425841587016.a n : ℤ) = A267687 n

end A267687

/-! ## A267687.P9427692640394806927

`char[n*A263804(A020703(n+2))]`
-/

namespace A267687.P9427692640394806927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A263804 (A020703 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267687.P9427692640394806927

namespace A267687

/-- `char[n*A263804(A020703(n+2))]` -/
def P9427692640394806927.Spec : Prop :=
  ∀ n, (P9427692640394806927.a n : ℤ) = A267687 n

end A267687

/-!
# A267688: Binary representation of the n-th iteration of the "Rule 199" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267688, there is no canonical definition to state claims against.
-/

/-! ## A267688.P13191300495118816477

`or(A185114(n+1), A289150(2*n))-A185114(n+2)`
-/

namespace A267688.P13191300495118816477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185114 (n + 1)) (A289150 (2 * n)) - A185114 (n + 2)

end

end A267688.P13191300495118816477

/-! ## A267688.P11170397787456284868

`and(A023900(A000244(n)), A289150(2*n))`
-/

namespace A267688.P11170397787456284868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023900 (A000244 n).toNat) (A289150 (2 * n))

end

end A267688.P11170397787456284868

/-! ## A267688.P859115684530256363

`A007088(A267689(n))`
-/

namespace A267688.P859115684530256363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267689 n).toNat

end

end A267688.P859115684530256363

/-! ## A267688.P15816167144639364326

`A007088(or(2^n*∑[2^n], A026644(n)))`
-/

namespace A267688.P15816167144639364326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor ((2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (A026644 n)).toNat

end

end A267688.P15816167144639364326

/-!
# A267689: Decimal representation of the n-th iteration of the "Rule 199" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267689, the canonical program `A267689.P3374718990498025846` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267689 has offset 0).

The definition of A267689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267689.P3374718990498025846

`6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=6, a(2)=28, a(3)=122, a(4)=500`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267689

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` -/
def P3374718990498025846.Spec : Prop :=
  ∀ n, P3374718990498025846.a n = A267689 n

theorem P3374718990498025846.correct : P3374718990498025846.Spec := by
  intro n
  simp only [A267689]

end A267689

/-! ## A267689.P284992566574752063

`A001045(round(sqrt(n²+1)))+xor(2*4^n-1, 2^n)`
-/

namespace A267689.P284992566574752063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + Int.xor ((2 * 4 ^ n : ℤ) - 1) (2 ^ n : ℤ)

end

end A267689.P284992566574752063

namespace A267689

/-- `A001045(round(sqrt(n²+1)))+xor(2*4^n-1, 2^n)` -/
def P284992566574752063.Spec : Prop :=
  ∀ n, P284992566574752063.a n = A267689 n

end A267689

/-! ## A267689.P15365048474640003096

`A152046(n)+A129868(n)`
-/

namespace A267689.P15365048474640003096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n + A129868 n

end

end A267689.P15365048474640003096

namespace A267689

/-- `A152046(n)+A129868(n)` -/
def P15365048474640003096.Spec : Prop :=
  ∀ n, P15365048474640003096.a n = A267689 n

end A267689

/-! ## A267689.P14114023736110293924

`A004171(n)-A135231(n)`
-/

namespace A267689.P14114023736110293924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A135231 n

end

end A267689.P14114023736110293924

namespace A267689

/-- `A004171(n)-A135231(n)` -/
def P14114023736110293924.Spec : Prop :=
  ∀ n, P14114023736110293924.a n = A267689 n

end A267689

/-! ## A267689.P9121191765338481062

`or(∑[A014113(n)], A171476(n))`
-/

namespace A267689.P9121191765338481062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A171476 n)

end

end A267689.P9121191765338481062

namespace A267689

/-- `or(∑[A014113(n)], A171476(n))` -/
def P9121191765338481062.Spec : Prop :=
  ∀ n, P9121191765338481062.a n = A267689 n

end A267689

/-! ## A267689.P11498343640380472540

`or(record[A278756(n)], A026644(n))`
-/

namespace A267689.P11498343640380472540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A026644 n)

end

end A267689.P11498343640380472540

namespace A267689

/-- `or(record[A278756(n)], A026644(n))` -/
def P11498343640380472540.Spec : Prop :=
  ∀ n, P11498343640380472540.a n = A267689 n

end A267689

/-! ## A267689.P13913300370754454051

`record[xor(A112447(n), A225883(n))]`
-/

namespace A267689.P13913300370754454051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112447 n) (A225883 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267689.P13913300370754454051

namespace A267689

/-- `record[xor(A112447(n), A225883(n))]` -/
def P13913300370754454051.Spec : Prop :=
  ∀ n, P13913300370754454051.a n = A267689 n

end A267689

/-! ## A267689.P5115661475574088333

`or(A026644(n), A278756(2*n))`
-/

namespace A267689.P5115661475574088333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026644 n) (A278756 (2 * n))

end

end A267689.P5115661475574088333

namespace A267689

/-- `or(A026644(n), A278756(2*n))` -/
def P5115661475574088333.Spec : Prop :=
  ∀ n, P5115661475574088333.a n = A267689 n

end A267689

/-! ## A267689.P6099235982703596100

`2*A000079(n)²-A135231(n)`
-/

namespace A267689.P6099235982703596100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A135231 n

end

end A267689.P6099235982703596100

namespace A267689

/-- `2*A000079(n)²-A135231(n)` -/
def P6099235982703596100.Spec : Prop :=
  ∀ n, P6099235982703596100.a n = A267689 n

end A267689

/-! ## A267689.P17449984671389494068

`Δ[A000975(2*n)]-A135231(n)`
-/

namespace A267689.P17449984671389494068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135231 n

end

end A267689.P17449984671389494068

namespace A267689

/-- `Δ[A000975(2*n)]-A135231(n)` -/
def P17449984671389494068.Spec : Prop :=
  ∀ n, P17449984671389494068.a n = A267689 n

end A267689

/-! ## A267689.P644083594423115579

`A000079(2*n+1)-A135231(n)`
-/

namespace A267689.P644083594423115579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A135231 n

end

end A267689.P644083594423115579

namespace A267689

/-- `A000079(2*n+1)-A135231(n)` -/
def P644083594423115579.Spec : Prop :=
  ∀ n, P644083594423115579.a n = A267689 n

end A267689

/-! ## A267689.P3027517790419042849

`A198633(2*n)-(A001045(n+1)+1)`
-/

namespace A267689.P3027517790419042849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (2 * n) - (A001045 (n + 1) + 1)

end

end A267689.P3027517790419042849

namespace A267689

/-- `A198633(2*n)-(A001045(n+1)+1)` -/
def P3027517790419042849.Spec : Prop :=
  ∀ n, P3027517790419042849.a n = A267689 n

end A267689

/-! ## A267689.P7371869005691497507

`A095121(2*n)+1-A152046(n+1)`
-/

namespace A267689.P7371869005691497507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (2 * n) + (1 - A152046 (n + 1))

end

end A267689.P7371869005691497507

namespace A267689

/-- `A095121(2*n)+1-A152046(n+1)` -/
def P7371869005691497507.Spec : Prop :=
  ∀ n, P7371869005691497507.a n = A267689 n

end A267689

/-! ## A267689.P17738400312330011689

`A007583(n+1)-(A135231(n)+A007583(n))`
-/

namespace A267689.P17738400312330011689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (n + 1) - (A135231 n + A007583 n)

end

end A267689.P17738400312330011689

namespace A267689

/-- `A007583(n+1)-(A135231(n)+A007583(n))` -/
def P17738400312330011689.Spec : Prop :=
  ∀ n, P17738400312330011689.a n = A267689 n

end A267689

/-! ## A267689.P10740175971314749609

`A152046(n)+A000051(n+1)*A000225(n)`
-/

namespace A267689.P10740175971314749609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n + A000051 (n + 1) * A000225 n

end

end A267689.P10740175971314749609

namespace A267689

/-- `A152046(n)+A000051(n+1)*A000225(n)` -/
def P10740175971314749609.Spec : Prop :=
  ∀ n, P10740175971314749609.a n = A267689 n

end A267689

/-! ## A267689.P3776673016161975561

`A000975(2*n)+A026644(2*n)-A167030(n+1)`
-/

namespace A267689.P3776673016161975561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n) + (A026644 (2 * n) - A167030 (n + 1))

end

end A267689.P3776673016161975561

namespace A267689

/-- `A000975(2*n)+A026644(2*n)-A167030(n+1)` -/
def P3776673016161975561.Spec : Prop :=
  ∀ n, P3776673016161975561.a n = A267689 n

end A267689

/-! ## A267689.P11544457261882674555

`A037800(n)+A289764(2*n)-A037800(2*n+1)`
-/

namespace A267689.P11544457261882674555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + (A289764 (2 * n) - A037800 (2 * n + 1))

end

end A267689.P11544457261882674555

namespace A267689

/-- `A037800(n)+A289764(2*n)-A037800(2*n+1)` -/
def P11544457261882674555.Spec : Prop :=
  ∀ n, P11544457261882674555.a n = A267689 n

end A267689

/-! ## A267689.P815815256214586449

`or(A185114(n+1), A289764(2*n))-A185114(n+2)`
-/

namespace A267689.P815815256214586449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185114 (n + 1)) (A289764 (2 * n)) - A185114 (n + 2)

end

end A267689.P815815256214586449

namespace A267689

/-- `or(A185114(n+1), A289764(2*n))-A185114(n+2)` -/
def P815815256214586449.Spec : Prop :=
  ∀ n, P815815256214586449.a n = A267689 n

end A267689

/-! ## A267689.P13216013331807741923

`A001045(2*n+1)+A026644(2*n)-A001045(n+1)`
-/

namespace A267689.P13216013331807741923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1) + (A026644 (2 * n) - A001045 (n + 1))

end

end A267689.P13216013331807741923

namespace A267689

/-- `A001045(2*n+1)+A026644(2*n)-A001045(n+1)` -/
def P13216013331807741923.Spec : Prop :=
  ∀ n, P13216013331807741923.a n = A267689 n

end A267689

/-! ## A267689.P6020276205579913597

`A128209(2*n+1)+A026644(2*n)-A128209(n+1)`
-/

namespace A267689.P6020276205579913597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (2 * n + 1) + (A026644 (2 * n) - A128209 (n + 1))

end

end A267689.P6020276205579913597

namespace A267689

/-- `A128209(2*n+1)+A026644(2*n)-A128209(n+1)` -/
def P6020276205579913597.Spec : Prop :=
  ∀ n, P6020276205579913597.a n = A267689 n

end A267689

/-!
# A267690: Numbers n such that replacing any single decimal digit d with d/3 produces a prime (obviously n can contain only digits 3, 6 or 9).

The programs for A267690, there is no canonical definition to state claims against.
-/

/-! ## A267690.P13744531512342541271

`3*A267099(4^n+1)`
-/

namespace A267690.P13744531512342541271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267099 (4 ^ n + 1)

end

end A267690.P13744531512342541271

/-!
# A267691: a(n) = (n + 1)*(6*n^4 - 21*n^3 + 31*n^2 - 31*n + 30)/30.

The programs for A267691, the canonical program `A267691.P8426485338077031560` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267691 has offset 0).

The definition of A267691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267691.P8426485338077031560

`(n+1)*(6*n^4-21*n^3+31*n²-31*n+30)/30`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A267691

/-- `(n+1)*(6*n^4-21*n^3+31*n²-31*n+30)/30` -/
def P8426485338077031560.Spec : Prop :=
  ∀ n, P8426485338077031560.a n = (A267691 n : ℚ)

end A267691

/-! ## A267691.P7621558398861989176

`or(∑[(1-n)²²], char[1])`
-/

namespace A267691.P7621558398861989176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267691.P7621558398861989176

namespace A267691

/-- `or(∑[(1-n)²²], char[1])` -/
def P7621558398861989176.Spec : Prop :=
  ∀ n, P7621558398861989176.a n = A267691 n

end A267691

/-! ## A267691.P888696022015037318

`xor(1, xor(1, ∑[(1-n)²²]))`
-/

namespace A267691.P888696022015037318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A267691.P888696022015037318

namespace A267691

/-- `xor(1, xor(1, ∑[(1-n)²²]))` -/
def P888696022015037318.Spec : Prop :=
  ∀ n, P888696022015037318.a n = A267691 n

end A267691

/-! ## A267691.P11330640847660121135

`a(n-1)+(1-n)^4` with `a(0)=1`
-/

namespace A267691.P11330640847660121135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - (n : ℤ)) ^ 4

end

end A267691.P11330640847660121135

namespace A267691

/-- `a(n-1)+(1-n)^4` -/
def P11330640847660121135.Spec : Prop :=
  ∀ n, P11330640847660121135.a n = A267691 n

end A267691

/-! ## A267691.P6439639030126996841

`(1-n)²²+a(n-1)` with `a(0)=1`
-/

namespace A267691.P6439639030126996841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 + a (n - 1)

end

end A267691.P6439639030126996841

namespace A267691

/-- `(1-n)²²+a(n-1)` -/
def P6439639030126996841.Spec : Prop :=
  ∀ n, P6439639030126996841.a n = A267691 n

end A267691

/-! ## A267691.P12183918018275499701

`∑[(n-1)²²]+and(2, n²)`
-/

namespace A267691.P12183918018275499701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 2 (n ^ 2) : ℤ)

end

end A267691.P12183918018275499701

namespace A267691

/-- `∑[(n-1)²²]+and(2, n²)` -/
def P12183918018275499701.Spec : Prop :=
  ∀ n, P12183918018275499701.a n = A267691 n

end A267691

/-! ## A267691.P793891388460174546

`gcd(C(2, n²), ∑[(1-n)²²])`
-/

namespace A267691.P793891388460174546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267691.P793891388460174546

namespace A267691

/-- `gcd(C(2, n²), ∑[(1-n)²²])` -/
def P793891388460174546.Spec : Prop :=
  ∀ n, (P793891388460174546.a n : ℤ) = A267691 n

end A267691

/-! ## A267691.P10765068581065164976

`lcm(ϕ-ϕ², ∑[(1-n)²²])`
-/

namespace A267691.P10765068581065164976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267691.P10765068581065164976

namespace A267691

/-- `lcm(ϕ-ϕ², ∑[(1-n)²²])` -/
def P10765068581065164976.Spec : Prop :=
  ∀ n, (P10765068581065164976.a n : ℤ) = A267691 n

end A267691

/-! ## A267691.P5594557162636254178

`C(∑[(n-1)²²], ϕ²-ϕ)`
-/

namespace A267691.P5594557162636254178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A267691.P5594557162636254178

namespace A267691

/-- `C(∑[(n-1)²²], ϕ²-ϕ)` -/
def P5594557162636254178.Spec : Prop :=
  ∀ n, (P5594557162636254178.a n : ℤ) = A267691 n

end A267691

/-! ## A267691.P16339675735734326334

`and(ϕ-ϕ², ∑[(1-n)²²])`
-/

namespace A267691.P16339675735734326334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267691.P16339675735734326334

namespace A267691

/-- `and(ϕ-ϕ², ∑[(1-n)²²])` -/
def P16339675735734326334.Spec : Prop :=
  ∀ n, P16339675735734326334.a n = A267691 n

end A267691

/-! ## A267691.P13752815699957899973

`∑[∑[a(n-1)-2]²]` with `a(0)=-1, a(1)=1`
-/

namespace A267691.P13752815699957899973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267691.P13752815699957899973

namespace A267691

/-- `∑[∑[a(n-1)-2]²]` -/
def P13752815699957899973.Spec : Prop :=
  ∀ n, P13752815699957899973.a n = A267691 n

end A267691

/-! ## A267691.P498486956817530236

`∑[(n-1)²²]+C(2, n+3)`
-/

namespace A267691.P498486956817530236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (n + 3) : ℤ)

end

end A267691.P498486956817530236

namespace A267691

/-- `∑[(n-1)²²]+C(2, n+3)` -/
def P498486956817530236.Spec : Prop :=
  ∀ n, P498486956817530236.a n = A267691 n

end A267691

/-! ## A267691.P16122246529807636759

`gcd(n, n+1)*∑[(n-1)²²]`
-/

namespace A267691.P16122246529807636759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267691.P16122246529807636759

namespace A267691

/-- `gcd(n, n+1)*∑[(n-1)²²]` -/
def P16122246529807636759.Spec : Prop :=
  ∀ n, P16122246529807636759.a n = A267691 n

end A267691

/-! ## A267691.P6231308996491703956

`(1-n)^4-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A267691.P6231308996491703956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (n : ℤ)) ^ 4 - (-a (n - 1))

end

end A267691.P6231308996491703956

namespace A267691

/-- `(1-n)^4-floor(-a(n-1))` -/
def P6231308996491703956.Spec : Prop :=
  ∀ n, P6231308996491703956.a n = A267691 n

end A267691

/-! ## A267691.P4905953019422722660

`(1-n)^4-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A267691.P4905953019422722660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (n : ℤ)) ^ 4 - (-a (n - 1))

end

end A267691.P4905953019422722660

namespace A267691

/-- `(1-n)^4-ceil(-a(n-1))` -/
def P4905953019422722660.Spec : Prop :=
  ∀ n, P4905953019422722660.a n = A267691 n

end A267691

/-! ## A267691.P5967615537199440390

`(1-n)^4-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A267691.P5967615537199440390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (n : ℤ)) ^ 4 - (-a (n - 1))

end

end A267691.P5967615537199440390

namespace A267691

/-- `(1-n)^4-round(-a(n-1))` -/
def P5967615537199440390.Spec : Prop :=
  ∀ n, P5967615537199440390.a n = A267691 n

end A267691

/-! ## A267691.P11648820037620608416

`∑[(n-1)²²]-and(1, 2*n)²`
-/

namespace A267691.P11648820037620608416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 (2 * n) ^ 2 : ℤ)

end

end A267691.P11648820037620608416

namespace A267691

/-- `∑[(n-1)²²]-and(1, 2*n)²` -/
def P11648820037620608416.Spec : Prop :=
  ∀ n, P11648820037620608416.a n = A267691 n

end A267691

/-! ## A267691.P9044448055506606932

`∑[(1-n)²²]+val(2*n+1, 2)`
-/

namespace A267691.P9044448055506606932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)

end

end A267691.P9044448055506606932

namespace A267691

/-- `∑[(1-n)²²]+val(2*n+1, 2)` -/
def P9044448055506606932.Spec : Prop :=
  ∀ n, P9044448055506606932.a n = A267691 n

end A267691

/-! ## A267691.P9397910723421150382

`A024002(n)+∑[n²²]`
-/

namespace A267691.P9397910723421150382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024002 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A267691.P9397910723421150382

namespace A267691

/-- `A024002(n)+∑[n²²]` -/
def P9397910723421150382.Spec : Prop :=
  ∀ n, P9397910723421150382.a n = A267691 n

end A267691

/-! ## A267691.P10073275035199385337

`∑[((1-n)²%(3^(n+1)))²]`
-/

namespace A267691.P10073275035199385337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) (3 ^ (n + 1) : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267691.P10073275035199385337

namespace A267691

/-- `∑[((1-n)²%(3^(n+1)))²]` -/
def P10073275035199385337.Spec : Prop :=
  ∀ n, P10073275035199385337.a n = A267691 n

end A267691

/-!
# A267694: Q-toothpick sequence in the first quadrant starting with two Q-toothpicks centered at (1,1). The endpoints of the left hand Q-toothpick are at (0,1) and (1,2). The endpoints of the right hand Q-toothpick are at (1,0) and (2,1). With a(0) = 0.

The programs for A267694, there is no canonical definition to state claims against.
-/

/-! ## A267694.P16403019634375979775

`∑[A267695(n)]`
-/

namespace A267694.P16403019634375979775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267694.P16403019634375979775

/-! ## A267694.P14857519128701219681

`∑[A266509(abs(1-4*n))+n%2]`
-/

namespace A267694.P14857519128701219681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 |1 - (4 * n : ℤ)|.toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267694.P14857519128701219681

/-! ## A267694.P13170580953006147945

`ceil(∑[A266509(A022144(n))/2])`
-/

namespace A267694.P13170580953006147945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266509 (A022144 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A267694.P13170580953006147945

/-! ## A267694.P13838224655941161586

`A267695(n)+a(A337108(n²))` with `a(0)=0`
-/

namespace A267694.P13838224655941161586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A267695 n + a (A337108 (n ^ 2)).toNat

end

end A267694.P13838224655941161586

/-! ## A267694.P11239554583796302562

`∑[A256263(A004273(n))+n%2]`
-/

namespace A267694.P11239554583796302562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A004273 n).toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267694.P11239554583796302562

/-!
# A267695: First differences of A267694.

The programs for A267695, there is no canonical definition to state claims against.
-/

/-! ## A267695.P9693081134622522275

`Δ[A267694(log2(ceil(2^(n-1))))]`
-/

namespace A267695.P9693081134622522275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267694 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267695.P9693081134622522275

/-! ## A267695.P16438292374475363461

`A266509(abs(1-4*n))+n%2`
-/

namespace A267695.P16438292374475363461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 |1 - (4 * n : ℤ)|.toNat + ((n % 2 : ℕ) : ℤ)

end

end A267695.P16438292374475363461

/-! ## A267695.P17726901300649617688

`A256263(A004273(n))+n%2`
-/

namespace A267695.P17726901300649617688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A004273 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A267695.P17726901300649617688

/-! ## A267695.P17965851290554190829

`A256263(A004273(n))+A000035(n)`
-/

namespace A267695.P17965851290554190829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A004273 n).toNat + A000035 n

end

end A267695.P17965851290554190829

/-! ## A267695.P5944132155855700792

`A266509(A008574(n))+A000035(n)`
-/

namespace A267695.P5944132155855700792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 (A008574 n).toNat + A000035 n

end

end A267695.P5944132155855700792

/-!
# A267696: Numbers with 5 odd divisors.

The programs for A267696, there is no canonical definition to state claims against.
-/

/-! ## A267696.P307118721710793317

`eq[4, A069283(n)]`
-/

namespace A267696.P307118721710793317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267696.P307118721710793317

/-! ## A267696.P4187562612661721188

`eq[5, A001227(A028310(n))]`
-/

namespace A267696.P4187562612661721188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267696.P4187562612661721188

/-! ## A267696.P17412573300437526144

`A020725(eq[10, A054844(n+1)])`
-/

namespace A267696.P17412573300437526144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267696.P17412573300437526144

/-! ## A267696.P3767742147046598951

`A020725(eq[16, A336158(n+1)])`
-/

namespace A267696.P3767742147046598951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267696.P3767742147046598951

/-! ## A267696.P18351614466572454725

`eq[4, A111775(A004277(n))]`
-/

namespace A267696.P18351614466572454725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267696.P18351614466572454725

/-!
# A267697: Numbers with 7 odd divisors.

The programs for A267697, there is no canonical definition to state claims against.
-/

/-! ## A267697.P9902681735147324568

`A266531(eq[11, A066657(n)])`
-/

namespace A267697.P9902681735147324568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267697.P9902681735147324568

/-! ## A267697.P2650137457261538913

`A266531(A000217(n+6)+7)`
-/

namespace A267697.P2650137457261538913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266531 (A000217 (n + 6) + 7).toNat

end

end A267697.P2650137457261538913

/-!
# A267698: Q-toothpick sequence in the first quadrant starting with two Q-toothpicks centered at (1,3) and (3,1) respectively. The endpoints of the left hand Q-toothpick are at (0,3) and (1,4). The endpoints of the right hand Q-toothpick are at (3,0) and (4,1). With a(0) = 0.

The programs for A267698, there is no canonical definition to state claims against.
-/

/-! ## A267698.P3074390825177499584

`∑[A267699(n)]`
-/

namespace A267698.P3074390825177499584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267698.P3074390825177499584

/-!
# A267699: First differences of A267698.

The programs for A267699, there is no canonical definition to state claims against.
-/

/-! ## A267699.P3469346761262286006

`Δ[A267698(log2(ceil(2^(n-1))))]`
-/

namespace A267699.P3469346761262286006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267698 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267699.P3469346761262286006

/-! ## A267699.P1672535348924022574

`A267698(n)-∑{e}[A011782(n), A267698(#)]`
-/

namespace A267699.P1672535348924022574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267698 n - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A267698 (Nat.factorization (f1 n).natAbs p)

end

end A267699.P1672535348924022574

/-! ## A267699.P15047673761841919700

`Δ[∑{e}[A011782(n), A267698(#)]]`
-/

namespace A267699.P15047673761841919700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A267698 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267699.P15047673761841919700

