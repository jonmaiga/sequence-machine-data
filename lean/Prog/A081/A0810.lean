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
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A081000: n is a member if and only if it ranks among top n positive integers in centrality (cf. A080997 for fuller description of this concept).

The programs for A081000, there is no canonical definition to state claims against.
-/

/-! ## A081000.P6063082242773643311

`comp[A081001(n+1)-1]+1`
-/

namespace A081000.P6063082242773643311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081001 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A081000.P6063082242773643311

/-! ## A081000.P8596586081191298242

`lt[A080998(A028310(n)), n+1]`
-/

namespace A081000.P8596586081191298242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081000.P8596586081191298242

/-! ## A081000.P1953377663633757858

`lt[char[A081001(n+1)], A352891(2*n+1)]`
-/

namespace A081000.P1953377663633757858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081001 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352891 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A081000.P1953377663633757858

/-! ## A081000.P5466626485379497696

`eq[char[A081001(n+1)], A151933(n)]`
-/

namespace A081000.P5466626485379497696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081001 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A081000.P5466626485379497696

/-!
# A081001: n is in the sequence if and only if it does not rank among the top n positive integers in centrality (cf. A080997 for fuller explanation of this concept).

The programs for A081001, there is no canonical definition to state claims against.
-/

/-! ## A081001.P16269354455977517785

`comp[A081000(n+1)-1]+1`
-/

namespace A081001.P16269354455977517785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081000 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A081001.P16269354455977517785

/-! ## A081001.P5148869770482815460

`lt[n+1, A080998(n+1)]+1`
-/

namespace A081001.P5148869770482815460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081001.P5148869770482815460

/-! ## A081001.P1657777153475281056

`comp[∪[A081000(n+1), A292282(n+1)]]`
-/

namespace A081001.P1657777153475281056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081000 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292282 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081001.P1657777153475281056

/-! ## A081001.P12339502637507509019

`comp[∪[A005563(3*n), A081000(n+1)]]`
-/

namespace A081001.P12339502637507509019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081000 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081001.P12339502637507509019

/-! ## A081001.P4111541406846815418

`comp[∪[A212686(2*n+1), A081000(n+1)]]`
-/

namespace A081001.P4111541406846815418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212686 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081000 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081001.P4111541406846815418

/-!
# A081002: a(n) = Fibonacci(4n) + 1, or Fibonacci(2n-1)*Lucas(2n+1).

The programs for A081002, the canonical program `A081002.P15461293172161742790` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081002 has offset 0).

The definition of A081002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081002.P15461293172161742790

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=22`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081002

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P15461293172161742790.Spec : Prop :=
  ∀ n, P15461293172161742790.a n = A081002 n

theorem P15461293172161742790.correct : P15461293172161742790.Spec := by
  intro n
  simp only [A081002]

end A081002

/-! ## A081002.P114356147604413605

`ogf((-1+4x+2x^2)/(-1+8x-8x^2+x^3))`
-/

namespace A081002.P114356147604413605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -2] [1, -8, 8, -1] n

end

end A081002.P114356147604413605

namespace A081002

/-- `ogf((-1+4x+2x^2)/(-1+8x-8x^2+x^3))` -/
def P114356147604413605.Spec : Prop :=
  ∀ n, P114356147604413605.a n = A081002 n

end A081002

/-! ## A081002.P14756600565745472836

`7*a(n-1)-(a(n-2)+5)` with `a(0)=1, a(1)=4`
-/

namespace A081002.P14756600565745472836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  7 * a (n - 1) - (a (n - 2) + 5)

end

end A081002.P14756600565745472836

namespace A081002

/-- `7*a(n-1)-(a(n-2)+5)` -/
def P14756600565745472836.Spec : Prop :=
  ∀ n, P14756600565745472836.a n = A081002 n

end A081002

/-! ## A081002.P13611634719099326840

`7*a(n-1)-5-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A081002.P13611634719099326840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  7 * a (n - 1) - 5 - a (n - 2)

end

end A081002.P13611634719099326840

namespace A081002

/-- `7*a(n-1)-5-a(n-2)` -/
def P13611634719099326840.Spec : Prop :=
  ∀ n, P13611634719099326840.a n = A081002 n

end A081002

/-! ## A081002.P3940246626123132097

`A033888(n)+1`
-/

namespace A081002.P3940246626123132097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n + 1

end

end A081002.P3940246626123132097

namespace A081002

/-- `A033888(n)+1` -/
def P3940246626123132097.Spec : Prop :=
  ∀ n, P3940246626123132097.a n = A081002 n

end A081002

/-! ## A081002.P8982134547790742056

`A081072(n)-2`
-/

namespace A081002.P8982134547790742056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081072 n - 2

end

end A081002.P8982134547790742056

namespace A081002

/-- `A081072(n)-2` -/
def P8982134547790742056.Spec : Prop :=
  ∀ n, P8982134547790742056.a n = A081002 n

end A081002

/-! ## A081002.P2482161879743066811

`A055588(2*n)`
-/

namespace A081002.P2482161879743066811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (2 * n)

end

end A081002.P2482161879743066811

namespace A081002

/-- `A055588(2*n)` -/
def P2482161879743066811.Spec : Prop :=
  ∀ n, P2482161879743066811.a n = A081002 n

end A081002

/-! ## A081002.P3868737863544194775

`A001611(4*n)`
-/

namespace A081002.P3868737863544194775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (4 * n)

end

end A081002.P3868737863544194775

namespace A081002

/-- `A001611(4*n)` -/
def P3868737863544194775.Spec : Prop :=
  ∀ n, P3868737863544194775.a n = A081002 n

end A081002

/-! ## A081002.P17499461536786155945

`A008346(4*n)`
-/

namespace A081002.P17499461536786155945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (4 * n)

end

end A081002.P17499461536786155945

namespace A081002

/-- `A008346(4*n)` -/
def P17499461536786155945.Spec : Prop :=
  ∀ n, P17499461536786155945.a n = A081002 n

end A081002

/-! ## A081002.P7225796021993369858

`A355020(4*n)`
-/

namespace A081002.P7225796021993369858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 (4 * n)

end

end A081002.P7225796021993369858

namespace A081002

/-- `A355020(4*n)` -/
def P7225796021993369858.Spec : Prop :=
  ∀ n, P7225796021993369858.a n = A081002 n

end A081002

/-! ## A081002.P13847382559615434344

`∑[A329723(4*n)]`
-/

namespace A081002.P13847382559615434344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081002.P13847382559615434344

namespace A081002

/-- `∑[A329723(4*n)]` -/
def P13847382559615434344.Spec : Prop :=
  ∀ n, P13847382559615434344.a n = A081002 n

end A081002

/-! ## A081002.P14703655804863355866

`A001906(2*n)+1`
-/

namespace A081002.P14703655804863355866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) + 1

end

end A081002.P14703655804863355866

namespace A081002

/-- `A001906(2*n)+1` -/
def P14703655804863355866.Spec : Prop :=
  ∀ n, P14703655804863355866.a n = A081002 n

end A081002

/-! ## A081002.P5952071985095348651

`A254884(2*n)+1`
-/

namespace A081002.P5952071985095348651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (2 * n) + 1

end

end A081002.P5952071985095348651

namespace A081002

/-- `A254884(2*n)+1` -/
def P5952071985095348651.Spec : Prop :=
  ∀ n, P5952071985095348651.a n = A081002 n

end A081002

/-! ## A081002.P7333969534518440874

`3*A004187(n)+1`
-/

namespace A081002.P7333969534518440874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004187 n + 1

end

end A081002.P7333969534518440874

namespace A081002

/-- `3*A004187(n)+1` -/
def P7333969534518440874.Spec : Prop :=
  ∀ n, P7333969534518440874.a n = A081002 n

end A081002

/-! ## A081002.P11369834019383786612

`A142880(3*n)+1`
-/

namespace A081002.P11369834019383786612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (3 * n) + 1

end

end A081002.P11369834019383786612

namespace A081002

/-- `A142880(3*n)+1` -/
def P11369834019383786612.Spec : Prop :=
  ∀ n, P11369834019383786612.a n = A081002 n

end A081002

/-! ## A081002.P10730129349746871293

`A142881(3*n)+1`
-/

namespace A081002.P10730129349746871293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n) + 1

end

end A081002.P10730129349746871293

namespace A081002

/-- `A142881(3*n)+1` -/
def P10730129349746871293.Spec : Prop :=
  ∀ n, P10730129349746871293.a n = A081002 n

end A081002

/-! ## A081002.P5256777514757905086

`1+A000045(4*n)`
-/

namespace A081002.P5256777514757905086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000045 (4 * n)

end

end A081002.P5256777514757905086

namespace A081002

/-- `1+A000045(4*n)` -/
def P5256777514757905086.Spec : Prop :=
  ∀ n, P5256777514757905086.a n = A081002 n

end A081002

/-! ## A081002.P8986463912780609397

`A249450(2*n)+3`
-/

namespace A081002.P8986463912780609397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (2 * n) + 3

end

end A081002.P8986463912780609397

namespace A081002

/-- `A249450(2*n)+3` -/
def P8986463912780609397.Spec : Prop :=
  ∀ n, P8986463912780609397.a n = A081002 n

end A081002

/-! ## A081002.P8221415729916203514

`A128535(Δ[n²])+2`
-/

namespace A081002.P8221415729916203514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A081002.P8221415729916203514

namespace A081002

/-- `A128535(Δ[n²])+2` -/
def P8221415729916203514.Spec : Prop :=
  ∀ n, P8221415729916203514.a n = A081002 n

end A081002

/-! ## A081002.P8019046328862365737

`A000045(eq[n, lcm(4, n)])+1`
-/

namespace A081002.P8019046328862365737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A081002.P8019046328862365737

namespace A081002

/-- `A000045(eq[n, lcm(4, n)])+1` -/
def P8019046328862365737.Spec : Prop :=
  ∀ n, P8019046328862365737.a n = A081002 n

end A081002

/-!
# A081003: a(n) = Fibonacci(4n+1) + 1, or Fibonacci(2n+1)*Lucas(2n).

The programs for A081003, the canonical program `A081003.P17068381242126397201` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081003 has offset 0).

The definition of A081003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081003.P17068381242126397201

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=2, a(1)=6, a(2)=35`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081003

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P17068381242126397201.Spec : Prop :=
  ∀ n, P17068381242126397201.a n = A081003 n

theorem P17068381242126397201.correct : P17068381242126397201.Spec := by
  intro n
  simp only [A081003]

end A081003

/-! ## A081003.P11557574691662262676

`∑[ogf((2-10x+3x^2)/(1-7x+x^2))]`
-/

namespace A081003.P11557574691662262676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, 3] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081003.P11557574691662262676

namespace A081003

/-- `∑[ogf((2-10x+3x^2)/(1-7x+x^2))]` -/
def P11557574691662262676.Spec : Prop :=
  ∀ n, P11557574691662262676.a n = A081003 n

end A081003

/-! ## A081003.P15385362705432175306

`ogf((2-10x+3x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081003.P15385362705432175306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, 3] [1, -8, 8, -1] n

end

end A081003.P15385362705432175306

namespace A081003

/-- `ogf((2-10x+3x^2)/(1-8x+8x^2-x^3))` -/
def P15385362705432175306.Spec : Prop :=
  ∀ n, P15385362705432175306.a n = A081003 n

end A081003

/-! ## A081003.P3829457509423084120

`7*a(n-1)-(a(n-2)+5)` with `a(0)=2, a(1)=6`
-/

namespace A081003.P3829457509423084120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  7 * a (n - 1) - (a (n - 2) + 5)

end

end A081003.P3829457509423084120

namespace A081003

/-- `7*a(n-1)-(a(n-2)+5)` -/
def P3829457509423084120.Spec : Prop :=
  ∀ n, P3829457509423084120.a n = A081003 n

end A081003

/-! ## A081003.P11915240909183026695

`7*a(n-1)-5-a(n-2)` with `a(0)=2, a(1)=6`
-/

namespace A081003.P11915240909183026695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  7 * a (n - 1) - 5 - a (n - 2)

end

end A081003.P11915240909183026695

namespace A081003

/-- `7*a(n-1)-5-a(n-2)` -/
def P11915240909183026695.Spec : Prop :=
  ∀ n, P11915240909183026695.a n = A081003 n

end A081003

/-! ## A081003.P12638867616784484557

`A033889(n)+1`
-/

namespace A081003.P12638867616784484557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n + 1

end

end A081003.P12638867616784484557

namespace A081003

/-- `A033889(n)+1` -/
def P12638867616784484557.Spec : Prop :=
  ∀ n, P12638867616784484557.a n = A081003 n

end A081003

/-! ## A081003.P39691687334233762

`A081007(n)+2`
-/

namespace A081003.P39691687334233762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n + 2

end

end A081003.P39691687334233762

namespace A081003

/-- `A081007(n)+2` -/
def P39691687334233762.Spec : Prop :=
  ∀ n, P39691687334233762.a n = A081003 n

end A081003

/-! ## A081003.P3500568116355121714

`A081010(n)-1`
-/

namespace A081003.P3500568116355121714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081010 n - 1

end

end A081003.P3500568116355121714

namespace A081003

/-- `A081010(n)-1` -/
def P3500568116355121714.Spec : Prop :=
  ∀ n, P3500568116355121714.a n = A081003 n

end A081003

/-! ## A081003.P12551960210229093075

`A246640(2*n)`
-/

namespace A081003.P12551960210229093075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 (2 * n)

end

end A081003.P12551960210229093075

namespace A081003

/-- `A246640(2*n)` -/
def P12551960210229093075.Spec : Prop :=
  ∀ n, P12551960210229093075.a n = A081003 n

end A081003

/-! ## A081003.P8704063675508246665

`A052959(4*n)`
-/

namespace A081003.P8704063675508246665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 (4 * n)

end

end A081003.P8704063675508246665

namespace A081003

/-- `A052959(4*n)` -/
def P8704063675508246665.Spec : Prop :=
  ∀ n, P8704063675508246665.a n = A081003 n

end A081003

/-! ## A081003.P3590705415116398434

`A074662(4*n)`
-/

namespace A081003.P3590705415116398434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 (4 * n)

end

end A081003.P3590705415116398434

namespace A081003

/-- `A074662(4*n)` -/
def P3590705415116398434.Spec : Prop :=
  ∀ n, P3590705415116398434.a n = A081003 n

end A081003

/-! ## A081003.P14541556204778018782

`A236144(4*n)`
-/

namespace A081003.P14541556204778018782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 (4 * n)

end

end A081003.P14541556204778018782

namespace A081003

/-- `A236144(4*n)` -/
def P14541556204778018782.Spec : Prop :=
  ∀ n, P14541556204778018782.a n = A081003 n

end A081003

/-! ## A081003.P16299561989595714636

`A032908(Δ[n²])`
-/

namespace A081003.P16299561989595714636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081003.P16299561989595714636

namespace A081003

/-- `A032908(Δ[n²])` -/
def P16299561989595714636.Spec : Prop :=
  ∀ n, P16299561989595714636.a n = A081003 n

end A081003

/-! ## A081003.P18120375020193843402

`A128534(Δ[n²])`
-/

namespace A081003.P18120375020193843402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081003.P18120375020193843402

namespace A081003

/-- `A128534(Δ[n²])` -/
def P18120375020193843402.Spec : Prop :=
  ∀ n, P18120375020193843402.a n = A081003 n

end A081003

/-! ## A081003.P16442616204683179045

`record[A099496(n)+1]`
-/

namespace A081003.P16442616204683179045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081003.P16442616204683179045

namespace A081003

/-- `record[A099496(n)+1]` -/
def P16442616204683179045.Spec : Prop :=
  ∀ n, P16442616204683179045.a n = A081003 n

end A081003

/-! ## A081003.P17194035765501751485

`record[A178115(n)+1]`
-/

namespace A081003.P17194035765501751485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081003.P17194035765501751485

namespace A081003

/-- `record[A178115(n)+1]` -/
def P17194035765501751485.Spec : Prop :=
  ∀ n, P17194035765501751485.a n = A081003 n

end A081003

/-! ## A081003.P9487742969141139196

`A093467(2*(n+1))`
-/

namespace A081003.P9487742969141139196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (2 * (n + 1))

end

end A081003.P9487742969141139196

namespace A081003

/-- `A093467(2*(n+1))` -/
def P9487742969141139196.Spec : Prop :=
  ∀ n, P9487742969141139196.a n = A081003 n

end A081003

/-! ## A081003.P1577583083632113492

`A099496(2*n)+1`
-/

namespace A081003.P1577583083632113492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (2 * n) + 1

end

end A081003.P1577583083632113492

namespace A081003

/-- `A099496(2*n)+1` -/
def P1577583083632113492.Spec : Prop :=
  ∀ n, P1577583083632113492.a n = A081003 n

end A081003

/-! ## A081003.P3495825327239251524

`A122367(2*n)+1`
-/

namespace A081003.P3495825327239251524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (2 * n) + 1

end

end A081003.P3495825327239251524

namespace A081003

/-- `A122367(2*n)+1` -/
def P3495825327239251524.Spec : Prop :=
  ∀ n, P3495825327239251524.a n = A081003 n

end A081003

/-! ## A081003.P6773518468907347939

`A027941(2*n)+2`
-/

namespace A081003.P6773518468907347939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (2 * n) + 2

end

end A081003.P6773518468907347939

namespace A081003

/-- `A027941(2*n)+2` -/
def P6773518468907347939.Spec : Prop :=
  ∀ n, P6773518468907347939.a n = A081003 n

end A081003

/-!
# A081004: a(n) = Fibonacci(4n+2) + 1, or Fibonacci(2n+2)*Lucas(2n).

The programs for A081004, the canonical program `A081004.P11838384165963778230` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081004 has offset 0).

The definition of A081004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081004.P11838384165963778230

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=2, a(1)=9, a(2)=56`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081004

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P11838384165963778230.Spec : Prop :=
  ∀ n, P11838384165963778230.a n = A081004 n

theorem P11838384165963778230.correct : P11838384165963778230.Spec := by
  intro n
  simp only [A081004]

end A081004

/-! ## A081004.P8084050566735058296

`A033890(n)+1`
-/

namespace A081004.P8084050566735058296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 n + 1

end

end A081004.P8084050566735058296

namespace A081004

/-- `A033890(n)+1` -/
def P8084050566735058296.Spec : Prop :=
  ∀ n, P8084050566735058296.a n = A081004 n

end A081004

/-! ## A081004.P11831805906926377641

`∑[ogf((2-7x)/(1-7x+x^2))]`
-/

namespace A081004.P11831805906926377641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081004.P11831805906926377641

namespace A081004

/-- `∑[ogf((2-7x)/(1-7x+x^2))]` -/
def P11831805906926377641.Spec : Prop :=
  ∀ n, P11831805906926377641.a n = A081004 n

end A081004

/-! ## A081004.P2772845114258493304

`ogf((2-7x)/(1-8x+8x^2-x^3))`
-/

namespace A081004.P2772845114258493304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -8, 8, -1] n

end

end A081004.P2772845114258493304

namespace A081004

/-- `ogf((2-7x)/(1-8x+8x^2-x^3))` -/
def P2772845114258493304.Spec : Prop :=
  ∀ n, P2772845114258493304.a n = A081004 n

end A081004

/-! ## A081004.P18423845503407020012

`∑[floor(ϕ^(4*n))+1]`
-/

namespace A081004.P18423845503407020012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (4 * n)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081004.P18423845503407020012

namespace A081004

/-- `∑[floor(ϕ^(4*n))+1]` -/
def P18423845503407020012.Spec : Prop :=
  ∀ n, P18423845503407020012.a n = A081004 n

end A081004

/-! ## A081004.P361957850433304574

`round(a(n-1)+(ϕ^n)²²)` with `a(0)=2`
-/

namespace A081004.P361957850433304574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + ((Real.goldenRatio ^ n) ^ 2) ^ 2)

end

end A081004.P361957850433304574

namespace A081004

/-- `round(a(n-1)+(ϕ^n)²²)` -/
def P361957850433304574.Spec : Prop :=
  ∀ n, P361957850433304574.a n = A081004 n

end A081004

/-! ## A081004.P11370137239759417860

`A081008(n)+2`
-/

namespace A081004.P11370137239759417860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081008 n + 2

end

end A081004.P11370137239759417860

namespace A081004

/-- `A081008(n)+2` -/
def P11370137239759417860.Spec : Prop :=
  ∀ n, P11370137239759417860.a n = A081004 n

end A081004

/-! ## A081004.P4738686391410857219

`A081073(n)-2`
-/

namespace A081004.P4738686391410857219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081073 n - 2

end

end A081004.P4738686391410857219

namespace A081004

/-- `A081073(n)-2` -/
def P4738686391410857219.Spec : Prop :=
  ∀ n, P4738686391410857219.a n = A081004 n

end A081004

/-! ## A081004.P5573266256025048112

`A052925(Δ[n²])`
-/

namespace A081004.P5573266256025048112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052925 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081004.P5573266256025048112

namespace A081004

/-- `A052925(Δ[n²])` -/
def P5573266256025048112.Spec : Prop :=
  ∀ n, P5573266256025048112.a n = A081004 n

end A081004

/-! ## A081004.P3809021618399875938

`A055588(Δ[n²])`
-/

namespace A081004.P3809021618399875938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081004.P3809021618399875938

namespace A081004

/-- `A055588(Δ[n²])` -/
def P3809021618399875938.Spec : Prop :=
  ∀ n, P3809021618399875938.a n = A081004 n

end A081004

/-! ## A081004.P15584238522524119398

`Δ[A049684(n)]+1`
-/

namespace A081004.P15584238522524119398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A081004.P15584238522524119398

namespace A081004

/-- `Δ[A049684(n)]+1` -/
def P15584238522524119398.Spec : Prop :=
  ∀ n, P15584238522524119398.a n = A081004 n

end A081004

/-! ## A081004.P7033297707007303838

`A128535(2*(n+1))`
-/

namespace A081004.P7033297707007303838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (2 * (n + 1))

end

end A081004.P7033297707007303838

namespace A081004

/-- `A128535(2*(n+1))` -/
def P7033297707007303838.Spec : Prop :=
  ∀ n, P7033297707007303838.a n = A081004 n

end A081004

/-! ## A081004.P4995169900659579063

`A035508(2*n)+2`
-/

namespace A081004.P4995169900659579063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 (2 * n) + 2

end

end A081004.P4995169900659579063

namespace A081004

/-- `A035508(2*n)+2` -/
def P4995169900659579063.Spec : Prop :=
  ∀ n, P4995169900659579063.a n = A081004 n

end A081004

/-! ## A081004.P14564731350871236856

`A128533(2*n)+2`
-/

namespace A081004.P14564731350871236856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 (2 * n) + 2

end

end A081004.P14564731350871236856

namespace A081004

/-- `A128533(2*n)+2` -/
def P14564731350871236856.Spec : Prop :=
  ∀ n, P14564731350871236856.a n = A081004 n

end A081004

/-! ## A081004.P12444661251747899315

`A001611(4*n+2)`
-/

namespace A081004.P12444661251747899315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (4 * n + 2)

end

end A081004.P12444661251747899315

namespace A081004

/-- `A001611(4*n+2)` -/
def P12444661251747899315.Spec : Prop :=
  ∀ n, P12444661251747899315.a n = A081004 n

end A081004

/-! ## A081004.P1978177411277206178

`A008346(4*n+2)`
-/

namespace A081004.P1978177411277206178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (4 * n + 2)

end

end A081004.P1978177411277206178

namespace A081004

/-- `A008346(4*n+2)` -/
def P1978177411277206178.Spec : Prop :=
  ∀ n, P1978177411277206178.a n = A081004 n

end A081004

/-! ## A081004.P3981366418977183770

`A001906(Δ[n²])+1`
-/

namespace A081004.P3981366418977183770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081004.P3981366418977183770

namespace A081004

/-- `A001906(Δ[n²])+1` -/
def P3981366418977183770.Spec : Prop :=
  ∀ n, P3981366418977183770.a n = A081004 n

end A081004

/-! ## A081004.P5293176142176470086

`A088305(Δ[n²])+1`
-/

namespace A081004.P5293176142176470086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081004.P5293176142176470086

namespace A081004

/-- `A088305(Δ[n²])+1` -/
def P5293176142176470086.Spec : Prop :=
  ∀ n, P5293176142176470086.a n = A081004 n

end A081004

/-! ## A081004.P17202354097190383569

`A152189(Δ[n²])+1`
-/

namespace A081004.P17202354097190383569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081004.P17202354097190383569

namespace A081004

/-- `A152189(Δ[n²])+1` -/
def P17202354097190383569.Spec : Prop :=
  ∀ n, P17202354097190383569.a n = A081004 n

end A081004

/-! ## A081004.P4287004068147002550

`A237268(Δ[n²])+1`
-/

namespace A081004.P4287004068147002550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237268 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081004.P4287004068147002550

namespace A081004

/-- `A237268(Δ[n²])+1` -/
def P4287004068147002550.Spec : Prop :=
  ∀ n, P4287004068147002550.a n = A081004 n

end A081004

/-!
# A081005: a(n) = Fibonacci(4n+3) + 1, or Fibonacci(2n+1)*Lucas(2n+2).

The programs for A081005, the canonical program `A081005.P6650284150064124755` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081005 has offset 0).

The definition of A081005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081005.P6650284150064124755

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=3, a(1)=14, a(2)=90`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081005

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P6650284150064124755.Spec : Prop :=
  ∀ n, P6650284150064124755.a n = A081005 n

theorem P6650284150064124755.correct : P6650284150064124755.Spec := by
  intro n
  simp only [A081005]

end A081005

/-! ## A081005.P12467034287030856241

`∑[ogf((3-10x+2x^2)/(1-7x+x^2))]`
-/

namespace A081005.P12467034287030856241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 2] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081005.P12467034287030856241

namespace A081005

/-- `∑[ogf((3-10x+2x^2)/(1-7x+x^2))]` -/
def P12467034287030856241.Spec : Prop :=
  ∀ n, P12467034287030856241.a n = A081005 n

end A081005

/-! ## A081005.P14943539361777174966

`ogf((3-10x+2x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081005.P14943539361777174966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 2] [1, -8, 8, -1] n

end

end A081005.P14943539361777174966

namespace A081005

/-- `ogf((3-10x+2x^2)/(1-8x+8x^2-x^3))` -/
def P14943539361777174966.Spec : Prop :=
  ∀ n, P14943539361777174966.a n = A081005 n

end A081005

/-! ## A081005.P2383887970294043497

`record[4-ceil(a(n-1)/(2-ϕ))]` with `a(0)=3`
-/

namespace A081005.P2383887970294043497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - ⌈(f1 (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081005.P2383887970294043497

namespace A081005

/-- `record[4-ceil(a(n-1)/(2-ϕ))]` -/
def P2383887970294043497.Spec : Prop :=
  ∀ n, P2383887970294043497.a n = A081005 n

end A081005

/-! ## A081005.P8583346823073407465

`record[4-round(a(n-1)/(2-ϕ))]` with `a(0)=3`
-/

namespace A081005.P8583346823073407465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (2 - Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081005.P8583346823073407465

namespace A081005

/-- `record[4-round(a(n-1)/(2-ϕ))]` -/
def P8583346823073407465.Spec : Prop :=
  ∀ n, P8583346823073407465.a n = A081005 n

end A081005

/-! ## A081005.P4838906714883210367

`Δ[A392838(n)]`
-/

namespace A081005.P4838906714883210367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081005.P4838906714883210367

namespace A081005

/-- `Δ[A392838(n)]` -/
def P4838906714883210367.Spec : Prop :=
  ∀ n, P4838906714883210367.a n = A081005 n

end A081005

/-! ## A081005.P8726386134077026318

`A033891(n)+1`
-/

namespace A081005.P8726386134077026318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 n + 1

end

end A081005.P8726386134077026318

namespace A081005

/-- `A033891(n)+1` -/
def P8726386134077026318.Spec : Prop :=
  ∀ n, P8726386134077026318.a n = A081005 n

end A081005

/-! ## A081005.P7774421238730518026

`A081009(n)+2`
-/

namespace A081005.P7774421238730518026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081009 n + 2

end

end A081005.P7774421238730518026

namespace A081005

/-- `A081009(n)+2` -/
def P7774421238730518026.Spec : Prop :=
  ∀ n, P7774421238730518026.a n = A081005 n

end A081005

/-! ## A081005.P13003788922233004761

`A081011(n)-1`
-/

namespace A081005.P13003788922233004761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081011 n - 1

end

end A081005.P13003788922233004761

namespace A081005

/-- `A081011(n)-1` -/
def P13003788922233004761.Spec : Prop :=
  ∀ n, P13003788922233004761.a n = A081005 n

end A081005

/-! ## A081005.P4571130424751818935

`A081013(n)+3`
-/

namespace A081005.P4571130424751818935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081013 n + 3

end

end A081005.P4571130424751818935

namespace A081005

/-- `A081013(n)+3` -/
def P4571130424751818935.Spec : Prop :=
  ∀ n, P4571130424751818935.a n = A081005 n

end A081005

/-! ## A081005.P10874954641675059000

`A048577(4*n)`
-/

namespace A081005.P10874954641675059000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (4 * n)

end

end A081005.P10874954641675059000

namespace A081005

/-- `A048577(4*n)` -/
def P10874954641675059000.Spec : Prop :=
  ∀ n, P10874954641675059000.a n = A081005 n

end A081005

/-! ## A081005.P12551640730138515588

`A081714(Δ[n²])`
-/

namespace A081005.P12551640730138515588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081005.P12551640730138515588

namespace A081005

/-- `A081714(Δ[n²])` -/
def P12551640730138515588.Spec : Prop :=
  ∀ n, P12551640730138515588.a n = A081005 n

end A081005

/-! ## A081005.P6341490449827772967

`A246640(Δ[n²])`
-/

namespace A081005.P6341490449827772967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081005.P6341490449827772967

namespace A081005

/-- `A246640(Δ[n²])` -/
def P6341490449827772967.Spec : Prop :=
  ∀ n, P6341490449827772967.a n = A081005 n

end A081005

/-! ## A081005.P736246397544333962

`∑[A056914(n)]+2`
-/

namespace A081005.P736246397544333962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A081005.P736246397544333962

namespace A081005

/-- `∑[A056914(n)]+2` -/
def P736246397544333962.Spec : Prop :=
  ∀ n, P736246397544333962.a n = A081005 n

end A081005

/-! ## A081005.P9476203413841959303

`Δ[A081018(n)]+1`
-/

namespace A081005.P9476203413841959303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A081005.P9476203413841959303

namespace A081005

/-- `Δ[A081018(n)]+1` -/
def P9476203413841959303.Spec : Prop :=
  ∀ n, P9476203413841959303.a n = A081005 n

end A081005

/-! ## A081005.P1169236534894862681

`A172968(n+1)+1`
-/

namespace A081005.P1169236534894862681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 (n + 1) + 1

end

end A081005.P1169236534894862681

namespace A081005

/-- `A172968(n+1)+1` -/
def P1169236534894862681.Spec : Prop :=
  ∀ n, P1169236534894862681.a n = A081005 n

end A081005

/-! ## A081005.P7075366166483440344

`A032908(2*(n+1))`
-/

namespace A081005.P7075366166483440344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (2 * (n + 1))

end

end A081005.P7075366166483440344

namespace A081005

/-- `A032908(2*(n+1))` -/
def P7075366166483440344.Spec : Prop :=
  ∀ n, P7075366166483440344.a n = A081005 n

end A081005

/-! ## A081005.P9557851798828670033

`A048575(2*n)+1`
-/

namespace A081005.P9557851798828670033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 (2 * n) + 1

end

end A081005.P9557851798828670033

namespace A081005

/-- `A048575(2*n)+1` -/
def P9557851798828670033.Spec : Prop :=
  ∀ n, P9557851798828670033.a n = A081005 n

end A081005

/-! ## A081005.P10593220349972611163

`A093467(2*n+3)`
-/

namespace A081005.P10593220349972611163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (2 * n + 3)

end

end A081005.P10593220349972611163

namespace A081005

/-- `A093467(2*n+3)` -/
def P10593220349972611163.Spec : Prop :=
  ∀ n, P10593220349972611163.a n = A081005 n

end A081005

/-! ## A081005.P9419983755808860498

`A122367(Δ[n²])+1`
-/

namespace A081005.P9419983755808860498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081005.P9419983755808860498

namespace A081005

/-- `A122367(Δ[n²])+1` -/
def P9419983755808860498.Spec : Prop :=
  ∀ n, P9419983755808860498.a n = A081005 n

end A081005

/-!
# A081007: a(n) = Fibonacci(4n+1) - 1, or Fibonacci(2n)*Lucas(2n+1).

The programs for A081007, the canonical program `A081007.P98422350529474963` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081007 has offset 0).

The definition of A081007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081007.P98422350529474963

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=0, a(1)=4, a(2)=33`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081007

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P98422350529474963.Spec : Prop :=
  ∀ n, P98422350529474963.a n = A081007 n

theorem P98422350529474963.correct : P98422350529474963.Spec := by
  intro n
  simp only [A081007]

end A081007

/-! ## A081007.P14257218958431987484

`∑[ogf((4x+x^2)/(1-7x+x^2))]`
-/

namespace A081007.P14257218958431987484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081007.P14257218958431987484

namespace A081007

/-- `∑[ogf((4x+x^2)/(1-7x+x^2))]` -/
def P14257218958431987484.Spec : Prop :=
  ∀ n, P14257218958431987484.a n = A081007 n

end A081007

/-! ## A081007.P10494358323939740072

`ogf((4x+x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081007.P10494358323939740072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, -8, 8, -1] n

end

end A081007.P10494358323939740072

namespace A081007

/-- `ogf((4x+x^2)/(1-8x+8x^2-x^3))` -/
def P10494358323939740072.Spec : Prop :=
  ∀ n, P10494358323939740072.a n = A081007 n

end A081007

/-! ## A081007.P14046015277620879741

`7*a(n-1)+5-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A081007.P14046015277620879741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  7 * a (n - 1) + (5 - a (n - 2))

end

end A081007.P14046015277620879741

namespace A081007

/-- `7*a(n-1)+5-a(n-2)` -/
def P14046015277620879741.Spec : Prop :=
  ∀ n, P14046015277620879741.a n = A081007 n

end A081007

/-! ## A081007.P8835344670936954367

`5-(a(n-2)-7*a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A081007.P8835344670936954367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  5 - (a (n - 2) - 7 * a (n - 1))

end

end A081007.P8835344670936954367

namespace A081007

/-- `5-(a(n-2)-7*a(n-1))` -/
def P8835344670936954367.Spec : Prop :=
  ∀ n, P8835344670936954367.a n = A081007 n

end A081007

/-! ## A081007.P8650334378016327948

`A033889(n)-1`
-/

namespace A081007.P8650334378016327948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n - 1

end

end A081007.P8650334378016327948

namespace A081007

/-- `A033889(n)-1` -/
def P8650334378016327948.Spec : Prop :=
  ∀ n, P8650334378016327948.a n = A081007 n

end A081007

/-! ## A081007.P2797891510604194426

`A081003(n)-2`
-/

namespace A081007.P2797891510604194426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081003 n - 2

end

end A081007.P2797891510604194426

namespace A081007

/-- `A081003(n)-2` -/
def P2797891510604194426.Spec : Prop :=
  ∀ n, P2797891510604194426.a n = A081007 n

end A081007

/-! ## A081007.P2369261841044048636

`A027941(2*n)`
-/

namespace A081007.P2369261841044048636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (2 * n)

end

end A081007.P2369261841044048636

namespace A081007

/-- `A027941(2*n)` -/
def P2369261841044048636.Spec : Prop :=
  ∀ n, P2369261841044048636.a n = A081007 n

end A081007

/-! ## A081007.P1490166536806121793

`A081010(n)-3`
-/

namespace A081007.P1490166536806121793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081010 n - 3

end

end A081007.P1490166536806121793

namespace A081007

/-- `A081010(n)-3` -/
def P1490166536806121793.Spec : Prop :=
  ∀ n, P1490166536806121793.a n = A081007 n

end A081007

/-! ## A081007.P690440865916650643

`A081714(2*n)`
-/

namespace A081007.P690440865916650643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 (2 * n)

end

end A081007.P690440865916650643

namespace A081007

/-- `A081714(2*n)` -/
def P690440865916650643.Spec : Prop :=
  ∀ n, P690440865916650643.a n = A081007 n

end A081007

/-! ## A081007.P6345197573106961453

`A074331(4*n)`
-/

namespace A081007.P6345197573106961453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (4 * n)

end

end A081007.P6345197573106961453

namespace A081007

/-- `A074331(4*n)` -/
def P6345197573106961453.Spec : Prop :=
  ∀ n, P6345197573106961453.a n = A081007 n

end A081007

/-! ## A081007.P12932102380779532560

`A111573(4*n)`
-/

namespace A081007.P12932102380779532560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 (4 * n)

end

end A081007.P12932102380779532560

namespace A081007

/-- `A111573(4*n)` -/
def P12932102380779532560.Spec : Prop :=
  ∀ n, P12932102380779532560.a n = A081007 n

end A081007

/-! ## A081007.P6781904523681703497

`A226649(8*n)`
-/

namespace A081007.P6781904523681703497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (8 * n)

end

end A081007.P6781904523681703497

namespace A081007

/-- `A226649(8*n)` -/
def P6781904523681703497.Spec : Prop :=
  ∀ n, P6781904523681703497.a n = A081007 n

end A081007

/-! ## A081007.P3295433535600541006

`record[A099496(n)-1]`
-/

namespace A081007.P3295433535600541006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081007.P3295433535600541006

namespace A081007

/-- `record[A099496(n)-1]` -/
def P3295433535600541006.Spec : Prop :=
  ∀ n, P3295433535600541006.a n = A081007 n

end A081007

/-! ## A081007.P7503092547132520507

`record[A178115(n)-1]`
-/

namespace A081007.P7503092547132520507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081007.P7503092547132520507

namespace A081007

/-- `record[A178115(n)-1]` -/
def P7503092547132520507.Spec : Prop :=
  ∀ n, P7503092547132520507.a n = A081007 n

end A081007

/-! ## A081007.P979577565062180033

`A293064(2*(n+1))`
-/

namespace A081007.P979577565062180033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (2 * (n + 1))

end

end A081007.P979577565062180033

namespace A081007

/-- `A293064(2*(n+1))` -/
def P979577565062180033.Spec : Prop :=
  ∀ n, P979577565062180033.a n = A081007 n

end A081007

/-! ## A081007.P15265322436406457550

`A099496(2*n)-1`
-/

namespace A081007.P15265322436406457550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (2 * n) - 1

end

end A081007.P15265322436406457550

namespace A081007

/-- `A099496(2*n)-1` -/
def P15265322436406457550.Spec : Prop :=
  ∀ n, P15265322436406457550.a n = A081007 n

end A081007

/-! ## A081007.P17149106555346671722

`A122367(2*n)-1`
-/

namespace A081007.P17149106555346671722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (2 * n) - 1

end

end A081007.P17149106555346671722

namespace A081007

/-- `A122367(2*n)-1` -/
def P17149106555346671722.Spec : Prop :=
  ∀ n, P17149106555346671722.a n = A081007 n

end A081007

/-! ## A081007.P17819645978879972260

`A246640(2*n)-2`
-/

namespace A081007.P17819645978879972260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 (2 * n) - 2

end

end A081007.P17819645978879972260

namespace A081007

/-- `A246640(2*n)-2` -/
def P17819645978879972260.Spec : Prop :=
  ∀ n, P17819645978879972260.a n = A081007 n

end A081007

/-! ## A081007.P15380702483911956170

`A295675(4*(n+1))`
-/

namespace A081007.P15380702483911956170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 (4 * (n + 1))

end

end A081007.P15380702483911956170

namespace A081007

/-- `A295675(4*(n+1))` -/
def P15380702483911956170.Spec : Prop :=
  ∀ n, P15380702483911956170.a n = A081007 n

end A081007

/-!
# A081008: a(n) = Fibonacci(4n+2) - 1, or Fibonacci(2n)*Lucas(2n+2).

The programs for A081008, the canonical program `A081008.P1591583043127983344` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081008 has offset 0).

The definition of A081008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081008.P1591583043127983344

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=0, a(1)=7, a(2)=54`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081008

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P1591583043127983344.Spec : Prop :=
  ∀ n, P1591583043127983344.a n = A081008 n

theorem P1591583043127983344.correct : P1591583043127983344.Spec := by
  intro n
  simp only [A081008]

end A081008

/-! ## A081008.P2311269075582718556

`∑[ceil((ϕ^n)²²)]-1`
-/

namespace A081008.P2311269075582718556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Real.goldenRatio ^ n) ^ 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081008.P2311269075582718556

namespace A081008

/-- `∑[ceil((ϕ^n)²²)]-1` -/
def P2311269075582718556.Spec : Prop :=
  ∀ n, P2311269075582718556.a n = A081008 n

end A081008

/-! ## A081008.P5645096957737370916

`∑[ogf((7x-2x^2)/(1-7x+x^2))]`
-/

namespace A081008.P5645096957737370916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -2] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081008.P5645096957737370916

namespace A081008

/-- `∑[ogf((7x-2x^2)/(1-7x+x^2))]` -/
def P5645096957737370916.Spec : Prop :=
  ∀ n, P5645096957737370916.a n = A081008 n

end A081008

/-! ## A081008.P11808862009507048608

`ogf((7x-2x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081008.P11808862009507048608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -2] [1, -8, 8, -1] n

end

end A081008.P11808862009507048608

namespace A081008

/-- `ogf((7x-2x^2)/(1-8x+8x^2-x^3))` -/
def P11808862009507048608.Spec : Prop :=
  ∀ n, P11808862009507048608.a n = A081008 n

end A081008

/-! ## A081008.P3273572839552774462

`ceil(a(n-1)+(ϕ^n)²²)` with `a(0)=0`
-/

namespace A081008.P3273572839552774462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) + ((Real.goldenRatio ^ n) ^ 2) ^ 2⌉

end

end A081008.P3273572839552774462

namespace A081008

/-- `ceil(a(n-1)+(ϕ^n)²²)` -/
def P3273572839552774462.Spec : Prop :=
  ∀ n, P3273572839552774462.a n = A081008 n

end A081008

/-! ## A081008.P15419826722310177090

`round(a(n-1)+(ϕ^n)²²)` with `a(0)=0`
-/

namespace A081008.P15419826722310177090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + ((Real.goldenRatio ^ n) ^ 2) ^ 2)

end

end A081008.P15419826722310177090

namespace A081008

/-- `round(a(n-1)+(ϕ^n)²²)` -/
def P15419826722310177090.Spec : Prop :=
  ∀ n, P15419826722310177090.a n = A081008 n

end A081008

/-! ## A081008.P17061904832619498572

`A035508(2*n)`
-/

namespace A081008.P17061904832619498572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 (2 * n)

end

end A081008.P17061904832619498572

namespace A081008

/-- `A035508(2*n)` -/
def P17061904832619498572.Spec : Prop :=
  ∀ n, P17061904832619498572.a n = A081008 n

end A081008

/-! ## A081008.P13505391090070867434

`A128533(2*n)`
-/

namespace A081008.P13505391090070867434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 (2 * n)

end

end A081008.P13505391090070867434

namespace A081008

/-- `A128533(2*n)` -/
def P13505391090070867434.Spec : Prop :=
  ∀ n, P13505391090070867434.a n = A081008 n

end A081008

/-! ## A081008.P18047136086975288128

`A186679(4*n)`
-/

namespace A081008.P18047136086975288128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186679 (4 * n)

end

end A081008.P18047136086975288128

namespace A081008

/-- `A186679(4*n)` -/
def P18047136086975288128.Spec : Prop :=
  ∀ n, P18047136086975288128.a n = A081008 n

end A081008

/-! ## A081008.P17170835932883610943

`A333599(4*n)`
-/

namespace A081008.P17170835932883610943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (4 * n)

end

end A081008.P17170835932883610943

namespace A081008

/-- `A333599(4*n)` -/
def P17170835932883610943.Spec : Prop :=
  ∀ n, P17170835932883610943.a n = A081008 n

end A081008

/-! ## A081008.P8962336247880196722

`A339572(8*n)`
-/

namespace A081008.P8962336247880196722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (8 * n)

end

end A081008.P8962336247880196722

namespace A081008

/-- `A339572(8*n)` -/
def P8962336247880196722.Spec : Prop :=
  ∀ n, P8962336247880196722.a n = A081008 n

end A081008

/-! ## A081008.P9138765245686823044

`A321664(12*n)`
-/

namespace A081008.P9138765245686823044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (12 * n)

end

end A081008.P9138765245686823044

namespace A081008

/-- `A321664(12*n)` -/
def P9138765245686823044.Spec : Prop :=
  ∀ n, P9138765245686823044.a n = A081008 n

end A081008

/-! ## A081008.P9311530839182601954

`A192068(Δ[n²])`
-/

namespace A081008.P9311530839182601954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081008.P9311530839182601954

namespace A081008

/-- `A192068(Δ[n²])` -/
def P9311530839182601954.Spec : Prop :=
  ∀ n, P9311530839182601954.a n = A081008 n

end A081008

/-! ## A081008.P3293024377668656215

`A000071(4*n+2)`
-/

namespace A081008.P3293024377668656215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (4 * n + 2)

end

end A081008.P3293024377668656215

namespace A081008

/-- `A000071(4*n+2)` -/
def P3293024377668656215.Spec : Prop :=
  ∀ n, P3293024377668656215.a n = A081008 n

end A081008

/-! ## A081008.P11659548901757395594

`A007492(4*n+2)`
-/

namespace A081008.P11659548901757395594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007492 (4 * n + 2)

end

end A081008.P11659548901757395594

namespace A081008

/-- `A007492(4*n+2)` -/
def P11659548901757395594.Spec : Prop :=
  ∀ n, P11659548901757395594.a n = A081008 n

end A081008

/-! ## A081008.P6532468218975023660

`A115008(3*n+n+1)`
-/

namespace A081008.P6532468218975023660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (3 * n + (n + 1))

end

end A081008.P6532468218975023660

namespace A081008

/-- `A115008(3*n+n+1)` -/
def P6532468218975023660.Spec : Prop :=
  ∀ n, P6532468218975023660.a n = A081008 n

end A081008

/-! ## A081008.P840267542559123508

`record[A000045(2*xor(1, n))-1]`
-/

namespace A081008.P840267542559123508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * Nat.xor 1 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081008.P840267542559123508

namespace A081008

/-- `record[A000045(2*xor(1, n))-1]` -/
def P840267542559123508.Spec : Prop :=
  ∀ n, P840267542559123508.a n = A081008 n

end A081008

/-! ## A081008.P3580744074704950998

`xor(-1, -A000045(2*(2*n+1)))`
-/

namespace A081008.P3580744074704950998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A000045 (2 * (2 * n + 1)))

end

end A081008.P3580744074704950998

namespace A081008

/-- `xor(-1, -A000045(2*(2*n+1)))` -/
def P3580744074704950998.Spec : Prop :=
  ∀ n, P3580744074704950998.a n = A081008 n

end A081008

/-! ## A081008.P5112869168789148700

`floor(∑[A000032(2*n+2*n+1)/ϕ])`
-/

namespace A081008.P5112869168789148700
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + (2 * n + 1)) : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A081008.P5112869168789148700

namespace A081008

/-- `floor(∑[A000032(2*n+2*n+1)/ϕ])` -/
def P5112869168789148700.Spec : Prop :=
  ∀ n, P5112869168789148700.a n = A081008 n

end A081008

/-! ## A081008.P9940193693661796701

`A131524(A017077(n))`
-/

namespace A081008.P9940193693661796701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A017077 n).toNat

end

end A081008.P9940193693661796701

namespace A081008

/-- `A131524(A017077(n))` -/
def P9940193693661796701.Spec : Prop :=
  ∀ n, P9940193693661796701.a n = A081008 n

end A081008

/-!
# A081009: a(n) = Fibonacci(4n+3) - 1, or Fibonacci(2n+2)*Lucas(2n+1).

The programs for A081009, the canonical program `A081009.P17977388565872554740` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081009 has offset 0).

The definition of A081009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081009.P17977388565872554740

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=12, a(2)=88`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081009

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P17977388565872554740.Spec : Prop :=
  ∀ n, P17977388565872554740.a n = A081009 n

theorem P17977388565872554740.correct : P17977388565872554740.Spec := by
  intro n
  simp only [A081009]

end A081009

/-! ## A081009.P12094338091832337001

`∑[ogf((1+4x)/(1-7x+x^2))]`
-/

namespace A081009.P12094338091832337001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081009.P12094338091832337001

namespace A081009

/-- `∑[ogf((1+4x)/(1-7x+x^2))]` -/
def P12094338091832337001.Spec : Prop :=
  ∀ n, P12094338091832337001.a n = A081009 n

end A081009

/-! ## A081009.P3188965815043112390

`ogf((1+4x)/(1-8x+8x^2-x^3))`
-/

namespace A081009.P3188965815043112390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -8, 8, -1] n

end

end A081009.P3188965815043112390

namespace A081009

/-- `ogf((1+4x)/(1-8x+8x^2-x^3))` -/
def P3188965815043112390.Spec : Prop :=
  ∀ n, P3188965815043112390.a n = A081009 n

end A081009

/-! ## A081009.P7201554565099697526

`∑[A056914(n)]`
-/

namespace A081009.P7201554565099697526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081009.P7201554565099697526

namespace A081009

/-- `∑[A056914(n)]` -/
def P7201554565099697526.Spec : Prop :=
  ∀ n, P7201554565099697526.a n = A081009 n

end A081009

/-! ## A081009.P15161483180282687865

`Δ[A392839(n)]`
-/

namespace A081009.P15161483180282687865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081009.P15161483180282687865

namespace A081009

/-- `Δ[A392839(n)]` -/
def P15161483180282687865.Spec : Prop :=
  ∀ n, P15161483180282687865.a n = A081009 n

end A081009

/-! ## A081009.P201103583966804558

`A081013(n)+1`
-/

namespace A081009.P201103583966804558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081013 n + 1

end

end A081009.P201103583966804558

namespace A081009

/-- `A081013(n)+1` -/
def P201103583966804558.Spec : Prop :=
  ∀ n, P201103583966804558.a n = A081009 n

end A081009

/-! ## A081009.P2095756796660840755

`A033891(n)-1`
-/

namespace A081009.P2095756796660840755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 n - 1

end

end A081009.P2095756796660840755

namespace A081009

/-- `A033891(n)-1` -/
def P2095756796660840755.Spec : Prop :=
  ∀ n, P2095756796660840755.a n = A081009 n

end A081009

/-! ## A081009.P7325928668083259572

`A081005(n)-2`
-/

namespace A081009.P7325928668083259572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081005 n - 2

end

end A081009.P7325928668083259572

namespace A081009

/-- `A081005(n)-2` -/
def P7325928668083259572.Spec : Prop :=
  ∀ n, P7325928668083259572.a n = A081009 n

end A081009

/-! ## A081009.P4028615346640097052

`A081011(n)-3`
-/

namespace A081009.P4028615346640097052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081011 n - 3

end

end A081009.P4028615346640097052

namespace A081009

/-- `A081011(n)-3` -/
def P4028615346640097052.Spec : Prop :=
  ∀ n, P4028615346640097052.a n = A081009 n

end A081009

/-! ## A081009.P9635200900419501312

`A054451(4*n)`
-/

namespace A081009.P9635200900419501312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (4 * n)

end

end A081009.P9635200900419501312

namespace A081009

/-- `A054451(4*n)` -/
def P9635200900419501312.Spec : Prop :=
  ∀ n, P9635200900419501312.a n = A081009 n

end A081009

/-! ## A081009.P11992660444513099409

`A226538(8*n)`
-/

namespace A081009.P11992660444513099409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (8 * n)

end

end A081009.P11992660444513099409

namespace A081009

/-- `A226538(8*n)` -/
def P11992660444513099409.Spec : Prop :=
  ∀ n, P11992660444513099409.a n = A081009 n

end A081009

/-! ## A081009.P14812228662930909196

`A027941(Δ[n²])`
-/

namespace A081009.P14812228662930909196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081009.P14812228662930909196

namespace A081009

/-- `A027941(Δ[n²])` -/
def P14812228662930909196.Spec : Prop :=
  ∀ n, P14812228662930909196.a n = A081009 n

end A081009

/-! ## A081009.P18068479258151667630

`Δ[A081018(n)]-1`
-/

namespace A081009.P18068479258151667630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081009.P18068479258151667630

namespace A081009

/-- `Δ[A081018(n)]-1` -/
def P18068479258151667630.Spec : Prop :=
  ∀ n, P18068479258151667630.a n = A081009 n

end A081009

/-! ## A081009.P10094433405142075816

`∑[A002878(2*n)]`
-/

namespace A081009.P10094433405142075816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081009.P10094433405142075816

namespace A081009

/-- `∑[A002878(2*n)]` -/
def P10094433405142075816.Spec : Prop :=
  ∀ n, P10094433405142075816.a n = A081009 n

end A081009

/-! ## A081009.P13165088252723019358

`∑[A075193(4*n)]`
-/

namespace A081009.P13165088252723019358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081009.P13165088252723019358

namespace A081009

/-- `∑[A075193(4*n)]` -/
def P13165088252723019358.Spec : Prop :=
  ∀ n, P13165088252723019358.a n = A081009 n

end A081009

/-! ## A081009.P3099704084667879691

`∑[A154699(4*n)]`
-/

namespace A081009.P3099704084667879691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081009.P3099704084667879691

namespace A081009

/-- `∑[A154699(4*n)]` -/
def P3099704084667879691.Spec : Prop :=
  ∀ n, P3099704084667879691.a n = A081009 n

end A081009

/-! ## A081009.P11200580997391625364

`∑[A295674(4*n)]`
-/

namespace A081009.P11200580997391625364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081009.P11200580997391625364

namespace A081009

/-- `∑[A295674(4*n)]` -/
def P11200580997391625364.Spec : Prop :=
  ∀ n, P11200580997391625364.a n = A081009 n

end A081009

/-! ## A081009.P5288186995906080324

`A172968(n+1)-1`
-/

namespace A081009.P5288186995906080324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 (n + 1) - 1

end

end A081009.P5288186995906080324

namespace A081009

/-- `A172968(n+1)-1` -/
def P5288186995906080324.Spec : Prop :=
  ∀ n, P5288186995906080324.a n = A081009 n

end A081009

/-! ## A081009.P1201934085746491574

`A128534(2*(n+1))`
-/

namespace A081009.P1201934085746491574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 (2 * (n + 1))

end

end A081009.P1201934085746491574

namespace A081009

/-- `A128534(2*(n+1))` -/
def P1201934085746491574.Spec : Prop :=
  ∀ n, P1201934085746491574.a n = A081009 n

end A081009

/-! ## A081009.P15069582396744125092

`A192243(2*(n+1))`
-/

namespace A081009.P15069582396744125092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192243 (2 * (n + 1))

end

end A081009.P15069582396744125092

namespace A081009

/-- `A192243(2*(n+1))` -/
def P15069582396744125092.Spec : Prop :=
  ∀ n, P15069582396744125092.a n = A081009 n

end A081009

/-!
# A081010: a(n) = Fibonacci(4n+1) + 2, or Fibonacci(2n-1)*Lucas(2n+2).

The programs for A081010, the canonical program `A081010.P17029720211688372203` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081010 has offset 0).

The definition of A081010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081010.P17029720211688372203

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=3, a(1)=7, a(2)=36`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081010

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P17029720211688372203.Spec : Prop :=
  ∀ n, P17029720211688372203.a n = A081010 n

theorem P17029720211688372203.correct : P17029720211688372203.Spec := by
  intro n
  simp only [A081010]

end A081010

/-! ## A081010.P13673083935707761799

`2+(A001906(n+1)²+A001519(n)²)/2`
-/

namespace A081010.P13673083935707761799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 + (A001906 (n + 1) ^ 2 + A001519 n ^ 2 : ℚ) / 2

end

end A081010.P13673083935707761799

namespace A081010

/-- `2+(A001906(n+1)²+A001519(n)²)/2` -/
def P13673083935707761799.Spec : Prop :=
  ∀ n, P13673083935707761799.a n = (A081010 n : ℚ)

end A081010

/-! ## A081010.P3155217622232840433

`∑[ogf((4x+x^2)/(1-7x+x^2))]+3`
-/

namespace A081010.P3155217622232840433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A081010.P3155217622232840433

namespace A081010

/-- `∑[ogf((4x+x^2)/(1-7x+x^2))]+3` -/
def P3155217622232840433.Spec : Prop :=
  ∀ n, P3155217622232840433.a n = A081010 n

end A081010

/-! ## A081010.P18111662593190123908

`A081003(n)+1`
-/

namespace A081010.P18111662593190123908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081003 n + 1

end

end A081010.P18111662593190123908

namespace A081010

/-- `A081003(n)+1` -/
def P18111662593190123908.Spec : Prop :=
  ∀ n, P18111662593190123908.a n = A081010 n

end A081010

/-! ## A081010.P1233422786351680523

`A033889(n)+2`
-/

namespace A081010.P1233422786351680523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n + 2

end

end A081010.P1233422786351680523

namespace A081010

/-- `A033889(n)+2` -/
def P1233422786351680523.Spec : Prop :=
  ∀ n, P1233422786351680523.a n = A081010 n

end A081010

/-! ## A081010.P1307097570577224026

`A081007(n)+3`
-/

namespace A081010.P1307097570577224026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n + 3

end

end A081010.P1307097570577224026

namespace A081010

/-- `A081007(n)+3` -/
def P1307097570577224026.Spec : Prop :=
  ∀ n, P1307097570577224026.a n = A081010 n

end A081010

/-! ## A081010.P2646364598513332166

`record[A099496(n)+2]`
-/

namespace A081010.P2646364598513332166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081010.P2646364598513332166

namespace A081010

/-- `record[A099496(n)+2]` -/
def P2646364598513332166.Spec : Prop :=
  ∀ n, P2646364598513332166.a n = A081010 n

end A081010

/-! ## A081010.P12922660054475209451

`record[A178115(n)+2]`
-/

namespace A081010.P12922660054475209451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081010.P12922660054475209451

namespace A081010

/-- `record[A178115(n)+2]` -/
def P12922660054475209451.Spec : Prop :=
  ∀ n, P12922660054475209451.a n = A081010 n

end A081010

/-! ## A081010.P15160484235384299623

`A246640(2*n)+1`
-/

namespace A081010.P15160484235384299623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 (2 * n) + 1

end

end A081010.P15160484235384299623

namespace A081010

/-- `A246640(2*n)+1` -/
def P15160484235384299623.Spec : Prop :=
  ∀ n, P15160484235384299623.a n = A081010 n

end A081010

/-! ## A081010.P504839111915362893

`A099496(2*n)+2`
-/

namespace A081010.P504839111915362893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (2 * n) + 2

end

end A081010.P504839111915362893

namespace A081010

/-- `A099496(2*n)+2` -/
def P504839111915362893.Spec : Prop :=
  ∀ n, P504839111915362893.a n = A081010 n

end A081010

/-! ## A081010.P10362336752709635181

`A122367(2*n)+2`
-/

namespace A081010.P10362336752709635181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (2 * n) + 2

end

end A081010.P10362336752709635181

namespace A081010

/-- `A122367(2*n)+2` -/
def P10362336752709635181.Spec : Prop :=
  ∀ n, P10362336752709635181.a n = A081010 n

end A081010

/-! ## A081010.P7477121306971629649

`A027941(2*n)+3`
-/

namespace A081010.P7477121306971629649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (2 * n) + 3

end

end A081010.P7477121306971629649

namespace A081010

/-- `A027941(2*n)+3` -/
def P7477121306971629649.Spec : Prop :=
  ∀ n, P7477121306971629649.a n = A081010 n

end A081010

/-! ## A081010.P15876822998948309874

`A052959(4*n)+1`
-/

namespace A081010.P15876822998948309874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 (4 * n) + 1

end

end A081010.P15876822998948309874

namespace A081010

/-- `A052959(4*n)+1` -/
def P15876822998948309874.Spec : Prop :=
  ∀ n, P15876822998948309874.a n = A081010 n

end A081010

/-! ## A081010.P13061630517831391044

`A081714(2*n)+3`
-/

namespace A081010.P13061630517831391044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 (2 * n) + 3

end

end A081010.P13061630517831391044

namespace A081010

/-- `A081714(2*n)+3` -/
def P13061630517831391044.Spec : Prop :=
  ∀ n, P13061630517831391044.a n = A081010 n

end A081010

/-! ## A081010.P170578135223151624

`A115008(4*n)+2`
-/

namespace A081010.P170578135223151624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (4 * n) + 2

end

end A081010.P170578135223151624

namespace A081010

/-- `A115008(4*n)+2` -/
def P170578135223151624.Spec : Prop :=
  ∀ n, P170578135223151624.a n = A081010 n

end A081010

/-! ## A081010.P16268619672800535393

`A032908(Δ[n²])+1`
-/

namespace A081010.P16268619672800535393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081010.P16268619672800535393

namespace A081010

/-- `A032908(Δ[n²])+1` -/
def P16268619672800535393.Spec : Prop :=
  ∀ n, P16268619672800535393.a n = A081010 n

end A081010

/-! ## A081010.P16042054471400180643

`A128534(Δ[n²])+1`
-/

namespace A081010.P16042054471400180643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081010.P16042054471400180643

namespace A081010

/-- `A128534(Δ[n²])+1` -/
def P16042054471400180643.Spec : Prop :=
  ∀ n, P16042054471400180643.a n = A081010 n

end A081010

/-! ## A081010.P6995880616075371293

`A001519(Δ[n²])+2`
-/

namespace A081010.P6995880616075371293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A081010.P6995880616075371293

namespace A081010

/-- `A001519(Δ[n²])+2` -/
def P6995880616075371293.Spec : Prop :=
  ∀ n, P6995880616075371293.a n = A081010 n

end A081010

/-! ## A081010.P6942252753862381059

`A192243(Δ[n²])+2`
-/

namespace A081010.P6942252753862381059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A081010.P6942252753862381059

namespace A081010

/-- `A192243(Δ[n²])+2` -/
def P6942252753862381059.Spec : Prop :=
  ∀ n, P6942252753862381059.a n = A081010 n

end A081010

/-! ## A081010.P1410509354797331415

`3-A186025(Δ[n²])`
-/

namespace A081010.P1410509354797331415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A186025 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081010.P1410509354797331415

namespace A081010

/-- `3-A186025(Δ[n²])` -/
def P1410509354797331415.Spec : Prop :=
  ∀ n, P1410509354797331415.a n = A081010 n

end A081010

/-!
# A081011: a(n) = Fibonacci(4n+3) + 2, or Fibonacci(2n+3)*Lucas(2n).

The programs for A081011, the canonical program `A081011.P16359055833327376074` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081011 has offset 0).

The definition of A081011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081011.P16359055833327376074

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=4, a(1)=15, a(2)=91`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081011

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P16359055833327376074.Spec : Prop :=
  ∀ n, P16359055833327376074.a n = A081011 n

theorem P16359055833327376074.correct : P16359055833327376074.Spec := by
  intro n
  simp only [A081011]

end A081011

/-! ## A081011.P3228218216820967488

`∑[ogf((1+4x)/(1-7x+x^2))]+3`
-/

namespace A081011.P3228218216820967488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A081011.P3228218216820967488

namespace A081011

/-- `∑[ogf((1+4x)/(1-7x+x^2))]+3` -/
def P3228218216820967488.Spec : Prop :=
  ∀ n, P3228218216820967488.a n = A081011 n

end A081011

/-! ## A081011.P7192311981254948383

`A081005(n)+1`
-/

namespace A081011.P7192311981254948383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081005 n + 1

end

end A081011.P7192311981254948383

namespace A081011

/-- `A081005(n)+1` -/
def P7192311981254948383.Spec : Prop :=
  ∀ n, P7192311981254948383.a n = A081011 n

end A081011

/-! ## A081011.P6965887237720318192

`A033891(n)+2`
-/

namespace A081011.P6965887237720318192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 n + 2

end

end A081011.P6965887237720318192

namespace A081011

/-- `A033891(n)+2` -/
def P6965887237720318192.Spec : Prop :=
  ∀ n, P6965887237720318192.a n = A081011 n

end A081011

/-! ## A081011.P14583920674698673371

`A081009(n)+3`
-/

namespace A081011.P14583920674698673371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081009 n + 3

end

end A081011.P14583920674698673371

namespace A081011

/-- `A081009(n)+3` -/
def P14583920674698673371.Spec : Prop :=
  ∀ n, P14583920674698673371.a n = A081011 n

end A081011

/-! ## A081011.P8945136630430445534

`A081013(n)+4`
-/

namespace A081011.P8945136630430445534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081013 n + 4

end

end A081011.P8945136630430445534

namespace A081011

/-- `A081013(n)+4` -/
def P8945136630430445534.Spec : Prop :=
  ∀ n, P8945136630430445534.a n = A081011 n

end A081011

/-! ## A081011.P12258551340391217297

`A018910(4*n)`
-/

namespace A081011.P12258551340391217297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (4 * n)

end

end A081011.P12258551340391217297

namespace A081011

/-- `A018910(4*n)` -/
def P12258551340391217297.Spec : Prop :=
  ∀ n, P12258551340391217297.a n = A081011 n

end A081011

/-! ## A081011.P11171029822968576267

`∑[A056914(n)]+3`
-/

namespace A081011.P11171029822968576267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A081011.P11171029822968576267

namespace A081011

/-- `∑[A056914(n)]+3` -/
def P11171029822968576267.Spec : Prop :=
  ∀ n, P11171029822968576267.a n = A081011 n

end A081011

/-! ## A081011.P2013767343304329076

`Δ[A081018(n)]+2`
-/

namespace A081011.P2013767343304329076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A081011.P2013767343304329076

namespace A081011

/-- `Δ[A081018(n)]+2` -/
def P2013767343304329076.Spec : Prop :=
  ∀ n, P2013767343304329076.a n = A081011 n

end A081011

/-! ## A081011.P11128060133434991812

`A172968(n+1)+2`
-/

namespace A081011.P11128060133434991812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 (n + 1) + 2

end

end A081011.P11128060133434991812

namespace A081011

/-- `A172968(n+1)+2` -/
def P11128060133434991812.Spec : Prop :=
  ∀ n, P11128060133434991812.a n = A081011 n

end A081011

/-! ## A081011.P14111280165110781429

`A048575(2*n)+2`
-/

namespace A081011.P14111280165110781429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 (2 * n) + 2

end

end A081011.P14111280165110781429

namespace A081011

/-- `A048575(2*n)+2` -/
def P14111280165110781429.Spec : Prop :=
  ∀ n, P14111280165110781429.a n = A081011 n

end A081011

/-! ## A081011.P10202021429947160939

`A157725(4*n+3)`
-/

namespace A081011.P10202021429947160939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (4 * n + 3)

end

end A081011.P10202021429947160939

namespace A081011

/-- `A157725(4*n+3)` -/
def P10202021429947160939.Spec : Prop :=
  ∀ n, P10202021429947160939.a n = A081011 n

end A081011

/-! ## A081011.P11332923295053192823

`A081714(Δ[n²])+1`
-/

namespace A081011.P11332923295053192823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081011.P11332923295053192823

namespace A081011

/-- `A081714(Δ[n²])+1` -/
def P11332923295053192823.Spec : Prop :=
  ∀ n, P11332923295053192823.a n = A081011 n

end A081011

/-! ## A081011.P113651893896639371

`A246640(Δ[n²])+1`
-/

namespace A081011.P113651893896639371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081011.P113651893896639371

namespace A081011

/-- `A246640(Δ[n²])+1` -/
def P113651893896639371.Spec : Prop :=
  ∀ n, P113651893896639371.a n = A081011 n

end A081011

/-! ## A081011.P3554938779960595127

`A122367(Δ[n²])+2`
-/

namespace A081011.P3554938779960595127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A081011.P3554938779960595127

namespace A081011

/-- `A122367(Δ[n²])+2` -/
def P3554938779960595127.Spec : Prop :=
  ∀ n, P3554938779960595127.a n = A081011 n

end A081011

/-! ## A081011.P8402190644911570469

`A027941(Δ[n²])+3`
-/

namespace A081011.P8402190644911570469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A081011.P8402190644911570469

namespace A081011

/-- `A027941(Δ[n²])+3` -/
def P8402190644911570469.Spec : Prop :=
  ∀ n, P8402190644911570469.a n = A081011 n

end A081011

/-! ## A081011.P5856419308942072205

`2-A099496(Δ[n²])`
-/

namespace A081011.P5856419308942072205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081011.P5856419308942072205

namespace A081011

/-- `2-A099496(Δ[n²])` -/
def P5856419308942072205.Spec : Prop :=
  ∀ n, P5856419308942072205.a n = A081011 n

end A081011

/-! ## A081011.P13593131632463372190

`Δ[A206351(n+1)]+2`
-/

namespace A081011.P13593131632463372190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A081011.P13593131632463372190

namespace A081011

/-- `Δ[A206351(n+1)]+2` -/
def P13593131632463372190.Spec : Prop :=
  ∀ n, P13593131632463372190.a n = A081011 n

end A081011

/-! ## A081011.P9928676016819373730

`Δ[A001654(2*n)]+2`
-/

namespace A081011.P9928676016819373730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A081011.P9928676016819373730

namespace A081011

/-- `Δ[A001654(2*n)]+2` -/
def P9928676016819373730.Spec : Prop :=
  ∀ n, P9928676016819373730.a n = A081011 n

end A081011

/-! ## A081011.P12850356532384933979

`Δ[A260259(2*n)]+2`
-/

namespace A081011.P12850356532384933979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A081011.P12850356532384933979

namespace A081011

/-- `Δ[A260259(2*n)]+2` -/
def P12850356532384933979.Spec : Prop :=
  ∀ n, P12850356532384933979.a n = A081011 n

end A081011

/-!
# A081012: a(n) = Fibonacci(4n+1) - 2, or Fibonacci(2n+2)*Lucas(2n-1).

The programs for A081012, the canonical program `A081012.P3843381474372204351` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081012 has offset 1).

The definition of A081012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081012.P3843381474372204351

`7*a(n-1)-a(n-2)+10` with `a(0)=3, a(1)=32`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081012

/-- `7*a(n-1)-a(n-2)+10` -/
def P3843381474372204351.Spec : Prop :=
  ∀ n, P3843381474372204351.a n = A081012 (n + 1)

theorem P3843381474372204351.correct : P3843381474372204351.Spec := by
  intro n
  simp only [A081012, Nat.add_sub_cancel]

end A081012

/-! ## A081012.P14500412865727886130

`∑[ogf((3+8x-x^2)/(1-7x+x^2))]`
-/

namespace A081012.P14500412865727886130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, -1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081012.P14500412865727886130

namespace A081012

/-- `∑[ogf((3+8x-x^2)/(1-7x+x^2))]` -/
def P14500412865727886130.Spec : Prop :=
  ∀ n, P14500412865727886130.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P14207069601877667296

`ogf((3+8x-x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081012.P14207069601877667296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, -1] [1, -8, 8, -1] n

end

end A081012.P14207069601877667296

namespace A081012

/-- `ogf((3+8x-x^2)/(1-8x+8x^2-x^3))` -/
def P14207069601877667296.Spec : Prop :=
  ∀ n, P14207069601877667296.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P17913621706191192980

`∑[A288913(n)]-1`
-/

namespace A081012.P17913621706191192980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081012.P17913621706191192980

namespace A081012

/-- `∑[A288913(n)]-1` -/
def P17913621706191192980.Spec : Prop :=
  ∀ n, P17913621706191192980.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P5251336581153797334

`Δ[A003482(n)]-2`
-/

namespace A081012.P5251336581153797334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A081012.P5251336581153797334

namespace A081012

/-- `Δ[A003482(n)]-2` -/
def P5251336581153797334.Spec : Prop :=
  ∀ n, P5251336581153797334.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P13236932938455546240

`Δ[A081016(n)]-2`
-/

namespace A081012.P13236932938455546240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A081012.P13236932938455546240

namespace A081012

/-- `Δ[A081016(n)]-2` -/
def P13236932938455546240.Spec : Prop :=
  ∀ n, P13236932938455546240.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P266855605402346716

`A081007(n+1)-1`
-/

namespace A081012.P266855605402346716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 (n + 1) - 1

end

end A081012.P266855605402346716

namespace A081012

/-- `A081007(n+1)-1` -/
def P266855605402346716.Spec : Prop :=
  ∀ n, P266855605402346716.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P10859075167882606557

`A033889(n+1)-2`
-/

namespace A081012.P10859075167882606557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 (n + 1) - 2

end

end A081012.P10859075167882606557

namespace A081012

/-- `A033889(n+1)-2` -/
def P10859075167882606557.Spec : Prop :=
  ∀ n, P10859075167882606557.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P4189531776633688686

`A081003(n+1)-3`
-/

namespace A081012.P4189531776633688686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081003 (n + 1) - 3

end

end A081012.P4189531776633688686

namespace A081012

/-- `A081003(n+1)-3` -/
def P4189531776633688686.Spec : Prop :=
  ∀ n, P4189531776633688686.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P11384476053057867149

`A081010(n+1)-4`
-/

namespace A081012.P11384476053057867149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081010 (n + 1) - 4

end

end A081012.P11384476053057867149

namespace A081012

/-- `A081010(n+1)-4` -/
def P11384476053057867149.Spec : Prop :=
  ∀ n, P11384476053057867149.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P10655702433829517468

`A245738(4*(n+1))`
-/

namespace A081012.P10655702433829517468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245738 (4 * (n + 1))

end

end A081012.P10655702433829517468

namespace A081012

/-- `A245738(4*(n+1))` -/
def P10655702433829517468.Spec : Prop :=
  ∀ n, P10655702433829517468.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P15313588896252529392

`A001911(4*n+2)`
-/

namespace A081012.P15313588896252529392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (4 * n + 2)

end

end A081012.P15313588896252529392

namespace A081012

/-- `A001911(4*n+2)` -/
def P15313588896252529392.Spec : Prop :=
  ∀ n, P15313588896252529392.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P2316668270611300784

`A007382(4*n+3)`
-/

namespace A081012.P2316668270611300784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007382 (4 * n + 3)

end

end A081012.P2316668270611300784

namespace A081012

/-- `A007382(4*n+3)` -/
def P2316668270611300784.Spec : Prop :=
  ∀ n, P2316668270611300784.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P16530947853704376612

`A094707(8*n+4)`
-/

namespace A081012.P16530947853704376612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (8 * n + 4)

end

end A081012.P16530947853704376612

namespace A081012

/-- `A094707(8*n+4)` -/
def P16530947853704376612.Spec : Prop :=
  ∀ n, P16530947853704376612.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P14096248985130306265

`A048575(Δ[n²])-2`
-/

namespace A081012.P14096248985130306265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A081012.P14096248985130306265

namespace A081012

/-- `A048575(Δ[n²])-2` -/
def P14096248985130306265.Spec : Prop :=
  ∀ n, P14096248985130306265.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P11075292470818658052

`Δ[A080145(2*n)]-1`
-/

namespace A081012.P11075292470818658052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081012.P11075292470818658052

namespace A081012

/-- `Δ[A080145(2*n)]-1` -/
def P11075292470818658052.Spec : Prop :=
  ∀ n, P11075292470818658052.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P12678218026177846296

`Δ[A166536(2*n)]-2`
-/

namespace A081012.P12678218026177846296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A081012.P12678218026177846296

namespace A081012

/-- `Δ[A166536(2*n)]-2` -/
def P12678218026177846296.Spec : Prop :=
  ∀ n, P12678218026177846296.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P4791021718567829951

`Δ[A192919(2*n)]-2`
-/

namespace A081012.P4791021718567829951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192919 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A081012.P4791021718567829951

namespace A081012

/-- `Δ[A192919(2*n)]-2` -/
def P4791021718567829951.Spec : Prop :=
  ∀ n, P4791021718567829951.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P9881482798114900770

`A027941(2*(n+1))-1`
-/

namespace A081012.P9881482798114900770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (2 * (n + 1)) - 1

end

end A081012.P9881482798114900770

namespace A081012

/-- `A027941(2*(n+1))-1` -/
def P9881482798114900770.Spec : Prop :=
  ∀ n, P9881482798114900770.a n = A081012 (n + 1)

end A081012

/-! ## A081012.P17324689124675041620

`A081714(2*(n+1))-1`
-/

namespace A081012.P17324689124675041620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 (2 * (n + 1)) - 1

end

end A081012.P17324689124675041620

namespace A081012

/-- `A081714(2*(n+1))-1` -/
def P17324689124675041620.Spec : Prop :=
  ∀ n, P17324689124675041620.a n = A081012 (n + 1)

end A081012

/-!
# A081013: a(n) = Fibonacci(4*n+3) - 2, or Fibonacci(2*n)*Lucas(2*n+3).

The programs for A081013, the canonical program `A081013.P2378312397875351267` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081013 has offset 0).

The definition of A081013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081013.P2378312397875351267

`7*a(n-1)-a(n-2)+10` with `a(0)=0, a(1)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081013

/-- `7*a(n-1)-a(n-2)+10` -/
def P2378312397875351267.Spec : Prop :=
  ∀ n, P2378312397875351267.a n = A081013 n

theorem P2378312397875351267.correct : P2378312397875351267.Spec := by
  intro n
  simp only [A081013]

end A081013

/-! ## A081013.P12818804484040327845

`A033891(n)-2`
-/

namespace A081013.P12818804484040327845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 n - 2

end

end A081013.P12818804484040327845

namespace A081013

/-- `A033891(n)-2` -/
def P12818804484040327845.Spec : Prop :=
  ∀ n, P12818804484040327845.a n = A081013 n

end A081013

/-! ## A081013.P1341783227905886344

`∑[ogf((1+4x)/(1-7x+x^2))]-1`
-/

namespace A081013.P1341783227905886344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081013.P1341783227905886344

namespace A081013

/-- `∑[ogf((1+4x)/(1-7x+x^2))]-1` -/
def P1341783227905886344.Spec : Prop :=
  ∀ n, P1341783227905886344.a n = A081013 n

end A081013

/-! ## A081013.P8511188419617170341

`A081009(n)-1`
-/

namespace A081013.P8511188419617170341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081009 n - 1

end

end A081013.P8511188419617170341

namespace A081013

/-- `A081009(n)-1` -/
def P8511188419617170341.Spec : Prop :=
  ∀ n, P8511188419617170341.a n = A081013 n

end A081013

/-! ## A081013.P9416281031934998279

`A081005(n)-3`
-/

namespace A081013.P9416281031934998279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081005 n - 3

end

end A081013.P9416281031934998279

namespace A081013

/-- `A081005(n)-3` -/
def P9416281031934998279.Spec : Prop :=
  ∀ n, P9416281031934998279.a n = A081013 n

end A081013

/-! ## A081013.P3918547352522928019

`A081011(n)-4`
-/

namespace A081013.P3918547352522928019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081011 n - 4

end

end A081013.P3918547352522928019

namespace A081013

/-- `A081011(n)-4` -/
def P3918547352522928019.Spec : Prop :=
  ∀ n, P3918547352522928019.a n = A081013 n

end A081013

/-! ## A081013.P1004180122703809753

`A001911(4*n)`
-/

namespace A081013.P1004180122703809753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (4 * n)

end

end A081013.P1004180122703809753

namespace A081013

/-- `A001911(4*n)` -/
def P1004180122703809753.Spec : Prop :=
  ∀ n, P1004180122703809753.a n = A081013 n

end A081013

/-! ## A081013.P6378517670079638979

`A094707(8*n)`
-/

namespace A081013.P6378517670079638979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (8 * n)

end

end A081013.P6378517670079638979

namespace A081013

/-- `A094707(8*n)` -/
def P6378517670079638979.Spec : Prop :=
  ∀ n, P6378517670079638979.a n = A081013 n

end A081013

/-! ## A081013.P769908290249602818

`∑[A056914(n)]-1`
-/

namespace A081013.P769908290249602818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081013.P769908290249602818

namespace A081013

/-- `∑[A056914(n)]-1` -/
def P769908290249602818.Spec : Prop :=
  ∀ n, P769908290249602818.a n = A081013 n

end A081013

/-! ## A081013.P13282302689149408329

`Δ[A081018(n)]-2`
-/

namespace A081013.P13282302689149408329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A081013.P13282302689149408329

namespace A081013

/-- `Δ[A081018(n)]-2` -/
def P13282302689149408329.Spec : Prop :=
  ∀ n, P13282302689149408329.a n = A081013 n

end A081013

/-! ## A081013.P13839991092871622259

`A172968(n+1)-2`
-/

namespace A081013.P13839991092871622259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 (n + 1) - 2

end

end A081013.P13839991092871622259

namespace A081013

/-- `A172968(n+1)-2` -/
def P13839991092871622259.Spec : Prop :=
  ∀ n, P13839991092871622259.a n = A081013 n

end A081013

/-! ## A081013.P2804209035839133406

`A048575(2*n)-2`
-/

namespace A081013.P2804209035839133406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 (2 * n) - 2

end

end A081013.P2804209035839133406

namespace A081013

/-- `A048575(2*n)-2` -/
def P2804209035839133406.Spec : Prop :=
  ∀ n, P2804209035839133406.a n = A081013 n

end A081013

/-! ## A081013.P13215606758269436476

`A054451(4*n)-1`
-/

namespace A081013.P13215606758269436476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (4 * n) - 1

end

end A081013.P13215606758269436476

namespace A081013

/-- `A054451(4*n)-1` -/
def P13215606758269436476.Spec : Prop :=
  ∀ n, P13215606758269436476.a n = A081013 n

end A081013

/-! ## A081013.P2647112247435013319

`A048577(4*n)-3`
-/

namespace A081013.P2647112247435013319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (4 * n) - 3

end

end A081013.P2647112247435013319

namespace A081013

/-- `A048577(4*n)-3` -/
def P2647112247435013319.Spec : Prop :=
  ∀ n, P2647112247435013319.a n = A081013 n

end A081013

/-! ## A081013.P14657264112728958353

`A027941(Δ[n²])-1`
-/

namespace A081013.P14657264112728958353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A081013.P14657264112728958353

namespace A081013

/-- `A027941(Δ[n²])-1` -/
def P14657264112728958353.Spec : Prop :=
  ∀ n, P14657264112728958353.a n = A081013 n

end A081013

/-! ## A081013.P938516595122160546

`A122367(Δ[n²])-2`
-/

namespace A081013.P938516595122160546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A081013.P938516595122160546

namespace A081013

/-- `A122367(Δ[n²])-2` -/
def P938516595122160546.Spec : Prop :=
  ∀ n, P938516595122160546.a n = A081013 n

end A081013

/-! ## A081013.P15183856153352483215

`A081714(Δ[n²])-3`
-/

namespace A081013.P15183856153352483215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A081013.P15183856153352483215

namespace A081013

/-- `A081714(Δ[n²])-3` -/
def P15183856153352483215.Spec : Prop :=
  ∀ n, P15183856153352483215.a n = A081013 n

end A081013

/-! ## A081013.P3004161233005221002

`A246640(Δ[n²])-3`
-/

namespace A081013.P3004161233005221002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A081013.P3004161233005221002

namespace A081013

/-- `A246640(Δ[n²])-3` -/
def P3004161233005221002.Spec : Prop :=
  ∀ n, P3004161233005221002.a n = A081013 n

end A081013

/-! ## A081013.P7489052538572035828

`Δ[A206351(n+1)]-2`
-/

namespace A081013.P7489052538572035828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A081013.P7489052538572035828

namespace A081013

/-- `Δ[A206351(n+1)]-2` -/
def P7489052538572035828.Spec : Prop :=
  ∀ n, P7489052538572035828.a n = A081013 n

end A081013

/-! ## A081013.P5269623742719101127

`∑[A002878(2*n)]-1`
-/

namespace A081013.P5269623742719101127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081013.P5269623742719101127

namespace A081013

/-- `∑[A002878(2*n)]-1` -/
def P5269623742719101127.Spec : Prop :=
  ∀ n, P5269623742719101127.a n = A081013 n

end A081013

/-!
# A081014: a(n) = Lucas(4*n+1) + 1, or Lucas(2*n)*Lucas(2*n+1).

The programs for A081014, the canonical program `A081014.P3215981605918018455` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081014 has offset 0).

The definition of A081014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081014.P3215981605918018455

`7*a(n-1)-a(n-2)-5` with `a(0)=2, a(1)=12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081014

/-- `7*a(n-1)-a(n-2)-5` -/
def P3215981605918018455.Spec : Prop :=
  ∀ n, P3215981605918018455.a n = A081014 n

theorem P3215981605918018455.correct : P3215981605918018455.Spec := by
  intro n
  simp only [A081014]

end A081014

/-! ## A081014.P7181000527951806076

`1+A056914(n)`
-/

namespace A081014.P7181000527951806076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A056914 n

end

end A081014.P7181000527951806076

namespace A081014

/-- `1+A056914(n)` -/
def P7181000527951806076.Spec : Prop :=
  ∀ n, P7181000527951806076.a n = A081014 n

end A081014

/-! ## A081014.P2959833232422818580

`ogf((-2+4x+3x^2)/(-1+8x-8x^2+x^3))`
-/

namespace A081014.P2959833232422818580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, -3] [1, -8, 8, -1] n

end

end A081014.P2959833232422818580

namespace A081014

/-- `ogf((-2+4x+3x^2)/(-1+8x-8x^2+x^3))` -/
def P2959833232422818580.Spec : Prop :=
  ∀ n, P2959833232422818580.a n = A081014 n

end A081014

/-! ## A081014.P8169440642987010726

`ceil((ϕ^n)²)*Δ[ceil((ϕ^n)²)]`
-/

namespace A081014.P8169440642987010726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉ * (f1 (n + 1) - f1 n)

end

end A081014.P8169440642987010726

namespace A081014

/-- `ceil((ϕ^n)²)*Δ[ceil((ϕ^n)²)]` -/
def P8169440642987010726.Spec : Prop :=
  ∀ n, P8169440642987010726.a n = A081014 n

end A081014

/-! ## A081014.P4264457900649536996

`lcm(ceil((ϕ^n)²), Δ[ceil((ϕ^n)²)])`
-/

namespace A081014.P4264457900649536996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(Real.goldenRatio ^ n) ^ 2⌉ (f1 (n + 1) - f1 n)

end

end A081014.P4264457900649536996

namespace A081014

/-- `lcm(ceil((ϕ^n)²), Δ[ceil((ϕ^n)²)])` -/
def P4264457900649536996.Spec : Prop :=
  ∀ n, (P4264457900649536996.a n : ℤ) = A081014 n

end A081014

/-! ## A081014.P3817988749515781503

`A081017(n)+2`
-/

namespace A081014.P3817988749515781503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081017 n + 2

end

end A081014.P3817988749515781503

namespace A081014

/-- `A081017(n)+2` -/
def P3817988749515781503.Spec : Prop :=
  ∀ n, P3817988749515781503.a n = A081014 n

end A081014

/-! ## A081014.P15234227623752053962

`A188378(2*n)`
-/

namespace A081014.P15234227623752053962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 (2 * n)

end

end A081014.P15234227623752053962

namespace A081014

/-- `A188378(2*n)` -/
def P15234227623752053962.Spec : Prop :=
  ∀ n, P15234227623752053962.a n = A081014 n

end A081014

/-! ## A081014.P10856969202836261721

`A215602(2*n)`
-/

namespace A081014.P10856969202836261721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 (2 * n)

end

end A081014.P10856969202836261721

namespace A081014

/-- `A215602(2*n)` -/
def P10856969202836261721.Spec : Prop :=
  ∀ n, P10856969202836261721.a n = A081014 n

end A081014

/-! ## A081014.P16946489021527059400

`A074392(4*n)`
-/

namespace A081014.P16946489021527059400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 (4 * n)

end

end A081014.P16946489021527059400

namespace A081014

/-- `A074392(4*n)` -/
def P16946489021527059400.Spec : Prop :=
  ∀ n, P16946489021527059400.a n = A081014 n

end A081014

/-! ## A081014.P10606300061866807822

`Δ[A172968(n)]+1`
-/

namespace A081014.P10606300061866807822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A081014.P10606300061866807822

namespace A081014

/-- `Δ[A172968(n)]+1` -/
def P10606300061866807822.Spec : Prop :=
  ∀ n, P10606300061866807822.a n = A081014 n

end A081014

/-! ## A081014.P7800930567867429694

`record[1-A098149(n)]`
-/

namespace A081014.P7800930567867429694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081014.P7800930567867429694

namespace A081014

/-- `record[1-A098149(n)]` -/
def P7800930567867429694.Spec : Prop :=
  ∀ n, P7800930567867429694.a n = A081014 n

end A081014

/-! ## A081014.P4374464715764090970

`A002878(2*n)+1`
-/

namespace A081014.P4374464715764090970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (2 * n) + 1

end

end A081014.P4374464715764090970

namespace A081014

/-- `A002878(2*n)+1` -/
def P4374464715764090970.Spec : Prop :=
  ∀ n, P4374464715764090970.a n = A081014 n

end A081014

/-! ## A081014.P4201186904571187970

`A162483(2*n)-1`
-/

namespace A081014.P4201186904571187970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 (2 * n) - 1

end

end A081014.P4201186904571187970

namespace A081014

/-- `A162483(2*n)-1` -/
def P4201186904571187970.Spec : Prop :=
  ∀ n, P4201186904571187970.a n = A081014 n

end A081014

/-! ## A081014.P3754045691186099227

`A075193(4*n)+1`
-/

namespace A081014.P3754045691186099227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (4 * n) + 1

end

end A081014.P3754045691186099227

namespace A081014

/-- `A075193(4*n)+1` -/
def P3754045691186099227.Spec : Prop :=
  ∀ n, P3754045691186099227.a n = A081014 n

end A081014

/-! ## A081014.P3998975276139847512

`A097132(4*n+1)`
-/

namespace A081014.P3998975276139847512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097132 (4 * n + 1)

end

end A081014.P3998975276139847512

namespace A081014

/-- `A097132(4*n+1)` -/
def P3998975276139847512.Spec : Prop :=
  ∀ n, P3998975276139847512.a n = A081014 n

end A081014

/-! ## A081014.P11370345749199431191

`A154699(4*n)+1`
-/

namespace A081014.P11370345749199431191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (4 * n) + 1

end

end A081014.P11370345749199431191

namespace A081014

/-- `A154699(4*n)+1` -/
def P11370345749199431191.Spec : Prop :=
  ∀ n, P11370345749199431191.a n = A081014 n

end A081014

/-! ## A081014.P17389441454373511879

`A216243(2*n)-2`
-/

namespace A081014.P17389441454373511879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216243 (2 * n) - 2

end

end A081014.P17389441454373511879

namespace A081014

/-- `A216243(2*n)-2` -/
def P17389441454373511879.Spec : Prop :=
  ∀ n, P17389441454373511879.a n = A081014 n

end A081014

/-! ## A081014.P12259831412811430735

`A256233(2*n)+3`
-/

namespace A081014.P12259831412811430735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 (2 * n) + 3

end

end A081014.P12259831412811430735

namespace A081014

/-- `A256233(2*n)+3` -/
def P12259831412811430735.Spec : Prop :=
  ∀ n, P12259831412811430735.a n = A081014 n

end A081014

/-! ## A081014.P7452577539461854213

`5*A081018(n)+2`
-/

namespace A081014.P7452577539461854213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081018 n + 2

end

end A081014.P7452577539461854213

namespace A081014

/-- `5*A081018(n)+2` -/
def P7452577539461854213.Spec : Prop :=
  ∀ n, P7452577539461854213.a n = A081014 n

end A081014

/-! ## A081014.P4840496982764406249

`1-A098149(Δ[n²])`
-/

namespace A081014.P4840496982764406249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081014.P4840496982764406249

namespace A081014

/-- `1-A098149(Δ[n²])` -/
def P4840496982764406249.Spec : Prop :=
  ∀ n, P4840496982764406249.a n = A081014 n

end A081014

/-!
# A081015: a(n) = Lucas(4n+3) + 1, or 5*Fibonacci(2n+1)*Fibonacci(2n+2).

The programs for A081015, the canonical program `A081015.P15642074345715063485` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081015 has offset 0).

The definition of A081015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081015.P15642074345715063485

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=5, a(1)=30, a(2)=200`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081015

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P15642074345715063485.Spec : Prop :=
  ∀ n, P15642074345715063485.a n = A081015 n

theorem P15642074345715063485.correct : P15642074345715063485.Spec := by
  intro n
  simp only [A081015]

end A081015

/-! ## A081015.P3747199223851104105

`∑[ogf((5-10x)/(1-7x+x^2))]`
-/

namespace A081015.P3747199223851104105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081015.P3747199223851104105

namespace A081015

/-- `∑[ogf((5-10x)/(1-7x+x^2))]` -/
def P3747199223851104105.Spec : Prop :=
  ∀ n, P3747199223851104105.a n = A081015 n

end A081015

/-! ## A081015.P15552319767738334720

`ogf((5-10x)/(1-8x+8x^2-x^3))`
-/

namespace A081015.P15552319767738334720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10] [1, -8, 8, -1] n

end

end A081015.P15552319767738334720

namespace A081015

/-- `ogf((5-10x)/(1-8x+8x^2-x^3))` -/
def P15552319767738334720.Spec : Prop :=
  ∀ n, P15552319767738334720.a n = A081015 n

end A081015

/-! ## A081015.P4750376079423745347

`1+A288913(n)`
-/

namespace A081015.P4750376079423745347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A288913 n

end

end A081015.P4750376079423745347

namespace A081015

/-- `1+A288913(n)` -/
def P4750376079423745347.Spec : Prop :=
  ∀ n, P4750376079423745347.a n = A081015 n

end A081015

/-! ## A081015.P7949414083483118278

`A081019(n)+2`
-/

namespace A081015.P7949414083483118278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081019 n + 2

end

end A081015.P7949414083483118278

namespace A081015

/-- `A081019(n)+2` -/
def P7949414083483118278.Spec : Prop :=
  ∀ n, P7949414083483118278.a n = A081015 n

end A081015

/-! ## A081015.P15365888052605233140

`5*A081016(n)`
-/

namespace A081015.P15365888052605233140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081016 n

end

end A081015.P15365888052605233140

namespace A081015

/-- `5*A081016(n)` -/
def P15365888052605233140.Spec : Prop :=
  ∀ n, P15365888052605233140.a n = A081015 n

end A081015

/-! ## A081015.P7653384882241688082

`A188378(Δ[n²])`
-/

namespace A081015.P7653384882241688082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081015.P7653384882241688082

namespace A081015

/-- `A188378(Δ[n²])` -/
def P7653384882241688082.Spec : Prop :=
  ∀ n, P7653384882241688082.a n = A081015 n

end A081015

/-! ## A081015.P15470575985748604161

`A216243(Δ[n²])`
-/

namespace A081015.P15470575985748604161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081015.P15470575985748604161

namespace A081015

/-- `A216243(Δ[n²])` -/
def P15470575985748604161.Spec : Prop :=
  ∀ n, P15470575985748604161.a n = A081015 n

end A081015

/-! ## A081015.P9758502963525697592

`Δ[A033889(n)]+1`
-/

namespace A081015.P9758502963525697592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A081015.P9758502963525697592

namespace A081015

/-- `Δ[A033889(n)]+1` -/
def P9758502963525697592.Spec : Prop :=
  ∀ n, P9758502963525697592.a n = A081015 n

end A081015

/-! ## A081015.P890647278273764872

`Δ[A081003(n)]+1`
-/

namespace A081015.P890647278273764872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A081015.P890647278273764872

namespace A081015

/-- `Δ[A081003(n)]+1` -/
def P890647278273764872.Spec : Prop :=
  ∀ n, P890647278273764872.a n = A081015 n

end A081015

/-! ## A081015.P8502341460307526275

`Δ[A081007(n)]+1`
-/

namespace A081015.P8502341460307526275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A081015.P8502341460307526275

namespace A081015

/-- `Δ[A081007(n)]+1` -/
def P8502341460307526275.Spec : Prop :=
  ∀ n, P8502341460307526275.a n = A081015 n

end A081015

/-! ## A081015.P17648017591569032070

`Δ[A081010(n)]+1`
-/

namespace A081015.P17648017591569032070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A081015.P17648017591569032070

namespace A081015

/-- `Δ[A081010(n)]+1` -/
def P17648017591569032070.Spec : Prop :=
  ∀ n, P17648017591569032070.a n = A081015 n

end A081015

/-! ## A081015.P5817832029416501546

`∑[A106729(2*n)]`
-/

namespace A081015.P5817832029416501546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106729 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081015.P5817832029416501546

namespace A081015

/-- `∑[A106729(2*n)]` -/
def P5817832029416501546.Spec : Prop :=
  ∀ n, P5817832029416501546.a n = A081015 n

end A081015

/-! ## A081015.P8030812683690041871

`A181716(4*(n+1))`
-/

namespace A081015.P8030812683690041871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 (4 * (n + 1))

end

end A081015.P8030812683690041871

namespace A081015

/-- `A181716(4*(n+1))` -/
def P8030812683690041871.Spec : Prop :=
  ∀ n, P8030812683690041871.a n = A081015 n

end A081015

/-! ## A081015.P18437587804477301951

`5*(A003482(n)+1)`
-/

namespace A081015.P18437587804477301951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A003482 n + 1)

end

end A081015.P18437587804477301951

namespace A081015

/-- `5*(A003482(n)+1)` -/
def P18437587804477301951.Spec : Prop :=
  ∀ n, P18437587804477301951.a n = A081015 n

end A081015

/-! ## A081015.P16642595406793378658

`A027004(2*n)+4`
-/

namespace A081015.P16642595406793378658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027004 (2 * n) + 4

end

end A081015.P16642595406793378658

namespace A081015

/-- `A027004(2*n)+4` -/
def P16642595406793378658.Spec : Prop :=
  ∀ n, P16642595406793378658.a n = A081015 n

end A081015

/-! ## A081015.P2976410539798851442

`A140829(8*(n+1))`
-/

namespace A081015.P2976410539798851442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140829 (8 * (n + 1))

end

end A081015.P2976410539798851442

namespace A081015

/-- `A140829(8*(n+1))` -/
def P2976410539798851442.Spec : Prop :=
  ∀ n, P2976410539798851442.a n = A081015 n

end A081015

/-! ## A081015.P9579161558471630841

`5*A166536(2*n)`
-/

namespace A081015.P9579161558471630841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A166536 (2 * n)

end

end A081015.P9579161558471630841

namespace A081015

/-- `5*A166536(2*n)` -/
def P9579161558471630841.Spec : Prop :=
  ∀ n, P9579161558471630841.a n = A081015 n

end A081015

/-! ## A081015.P2193559091513105081

`A002878(Δ[n²])+1`
-/

namespace A081015.P2193559091513105081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081015.P2193559091513105081

namespace A081015

/-- `A002878(Δ[n²])+1` -/
def P2193559091513105081.Spec : Prop :=
  ∀ n, P2193559091513105081.a n = A081015 n

end A081015

/-! ## A081015.P134665034911761121

`A162483(Δ[n²])-1`
-/

namespace A081015.P134665034911761121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A081015.P134665034911761121

namespace A081015

/-- `A162483(Δ[n²])-1` -/
def P134665034911761121.Spec : Prop :=
  ∀ n, P134665034911761121.a n = A081015 n

end A081015

/-!
# A081016: a(n) = (Lucas(4*n+3) + 1)/5, or Fibonacci(2*n+1)*Fibonacci(2*n+2), or A081015(n)/5.

The programs for A081016, the canonical program `A081016.P18307948633101137312` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081016 has offset 0).

The definition of A081016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081016.P18307948633101137312

`7*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081016

/-- `7*a(n-1)-a(n-2)-1` -/
def P18307948633101137312.Spec : Prop :=
  ∀ n, P18307948633101137312.a n = A081016 n

theorem P18307948633101137312.correct : P18307948633101137312.Spec := by
  intro n
  simp only [A081016]

end A081016

/-! ## A081016.P9631755963963983494

`A003482(n)+1`
-/

namespace A081016.P9631755963963983494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003482 n + 1

end

end A081016.P9631755963963983494

namespace A081016

/-- `A003482(n)+1` -/
def P9631755963963983494.Spec : Prop :=
  ∀ n, P9631755963963983494.a n = A081016 n

end A081016

/-! ## A081016.P17337343671400217280

`A081015(n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081016.P17337343671400217280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081015 n : ℚ) / 5

end

end A081016.P17337343671400217280

namespace A081016

/-- `A081015(n)/5` -/
def P17337343671400217280.Spec : Prop :=
  ∀ n, P17337343671400217280.a n = (A081016 n : ℚ)

end A081016

/-! ## A081016.P6411245145936413864

`∑[ogf((1-2x)/(1-7x+x^2))]`
-/

namespace A081016.P6411245145936413864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P6411245145936413864

namespace A081016

/-- `∑[ogf((1-2x)/(1-7x+x^2))]` -/
def P6411245145936413864.Spec : Prop :=
  ∀ n, P6411245145936413864.a n = A081016 n

end A081016

/-! ## A081016.P9019429344726251805

`ogf((1-2x)/(1-8x+8x^2-x^3))`
-/

namespace A081016.P9019429344726251805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 8, -1] n

end

end A081016.P9019429344726251805

namespace A081016

/-- `ogf((1-2x)/(1-8x+8x^2-x^3))` -/
def P9019429344726251805.Spec : Prop :=
  ∀ n, P9019429344726251805.a n = A081016 n

end A081016

/-! ## A081016.P15360917603079766982

`record[-floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A081016.P15360917603079766982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081016.P15360917603079766982

namespace A081016

/-- `record[-floor(ϕ²*a(n-1))]` -/
def P15360917603079766982.Spec : Prop :=
  ∀ n, P15360917603079766982.a n = A081016 n

end A081016

/-! ## A081016.P3259036857981715432

`record[1-ceil(ϕ²*a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A081016.P3259036857981715432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  1 - ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081016.P3259036857981715432

namespace A081016

/-- `record[1-ceil(ϕ²*a(n-1))]` -/
def P3259036857981715432.Spec : Prop :=
  ∀ n, P3259036857981715432.a n = A081016 n

end A081016

/-! ## A081016.P4436729596671686379

`∑[7*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A081016.P4436729596671686379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  7 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P4436729596671686379

namespace A081016

/-- `∑[7*a(n-1)-a(n-2)]` -/
def P4436729596671686379.Spec : Prop :=
  ∀ n, P4436729596671686379.a n = A081016 n

end A081016

/-! ## A081016.P7729012382784004330

`∑[A033889(n)]`
-/

namespace A081016.P7729012382784004330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P7729012382784004330

namespace A081016

/-- `∑[A033889(n)]` -/
def P7729012382784004330.Spec : Prop :=
  ∀ n, P7729012382784004330.a n = A081016 n

end A081016

/-! ## A081016.P3645740609583033263

`A166536(2*n)`
-/

namespace A081016.P3645740609583033263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 (2 * n)

end

end A081016.P3645740609583033263

namespace A081016

/-- `A166536(2*n)` -/
def P3645740609583033263.Spec : Prop :=
  ∀ n, P3645740609583033263.a n = A081016 n

end A081016

/-! ## A081016.P1620357191237004775

`A070550(4*n)`
-/

namespace A081016.P1620357191237004775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (4 * n)

end

end A081016.P1620357191237004775

namespace A081016

/-- `A070550(4*n)` -/
def P1620357191237004775.Spec : Prop :=
  ∀ n, P1620357191237004775.a n = A081016 n

end A081016

/-! ## A081016.P15939963835558774342

`A001654(Δ[n²])`
-/

namespace A081016.P15939963835558774342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081016.P15939963835558774342

namespace A081016

/-- `A001654(Δ[n²])` -/
def P15939963835558774342.Spec : Prop :=
  ∀ n, P15939963835558774342.a n = A081016 n

end A081016

/-! ## A081016.P9743759730925408500

`∑[record[A099496(n)]]`
-/

namespace A081016.P9743759730925408500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P9743759730925408500

namespace A081016

/-- `∑[record[A099496(n)]]` -/
def P9743759730925408500.Spec : Prop :=
  ∀ n, P9743759730925408500.a n = A081016 n

end A081016

/-! ## A081016.P169327782174751270

`∑[record[A178115(n)]]`
-/

namespace A081016.P169327782174751270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P169327782174751270

namespace A081016

/-- `∑[record[A178115(n)]]` -/
def P169327782174751270.Spec : Prop :=
  ∀ n, P169327782174751270.a n = A081016 n

end A081016

/-! ## A081016.P15540672914589149401

`∑[A081007(n)+1]`
-/

namespace A081016.P15540672914589149401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P15540672914589149401

namespace A081016

/-- `∑[A081007(n)+1]` -/
def P15540672914589149401.Spec : Prop :=
  ∀ n, P15540672914589149401.a n = A081016 n

end A081016

/-! ## A081016.P10179635364080231036

`∑[A099496(2*n)]`
-/

namespace A081016.P10179635364080231036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P10179635364080231036

namespace A081016

/-- `∑[A099496(2*n)]` -/
def P10179635364080231036.Spec : Prop :=
  ∀ n, P10179635364080231036.a n = A081016 n

end A081016

/-! ## A081016.P1611925463493688410

`∑[A122367(2*n)]`
-/

namespace A081016.P1611925463493688410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P1611925463493688410

namespace A081016

/-- `∑[A122367(2*n)]` -/
def P1611925463493688410.Spec : Prop :=
  ∀ n, P1611925463493688410.a n = A081016 n

end A081016

/-! ## A081016.P13753254158401275368

`∑[A094967(4*n)]`
-/

namespace A081016.P13753254158401275368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P13753254158401275368

namespace A081016

/-- `∑[A094967(4*n)]` -/
def P13753254158401275368.Spec : Prop :=
  ∀ n, P13753254158401275368.a n = A081016 n

end A081016

/-! ## A081016.P13098335945317333153

`∑[A097131(4*n)]`
-/

namespace A081016.P13098335945317333153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P13098335945317333153

namespace A081016

/-- `∑[A097131(4*n)]` -/
def P13098335945317333153.Spec : Prop :=
  ∀ n, P13098335945317333153.a n = A081016 n

end A081016

/-! ## A081016.P10163569516936767534

`∑[A108362(4*n)]`
-/

namespace A081016.P10163569516936767534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081016.P10163569516936767534

namespace A081016

/-- `∑[A108362(4*n)]` -/
def P10163569516936767534.Spec : Prop :=
  ∀ n, P10163569516936767534.a n = A081016 n

end A081016

/-!
# A081017: a(n) = Lucas(4n+1) - 1, or 5*Fibonacci(2n)*Fibonacci(2n+1).

The programs for A081017, the canonical program `A081017.P2485530194678533210` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081017 has offset 0).

The definition of A081017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081017.P2485530194678533210

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=0, a(1)=10, a(2)=75`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081017

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P2485530194678533210.Spec : Prop :=
  ∀ n, P2485530194678533210.a n = A081017 n

theorem P2485530194678533210.correct : P2485530194678533210.Spec := by
  intro n
  simp only [A081017]

end A081017

/-! ## A081017.P1163516966776602256

`∑[ogf((10x-5x^2)/(1-7x+x^2))]`
-/

namespace A081017.P1163516966776602256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -5] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081017.P1163516966776602256

namespace A081017

/-- `∑[ogf((10x-5x^2)/(1-7x+x^2))]` -/
def P1163516966776602256.Spec : Prop :=
  ∀ n, P1163516966776602256.a n = A081017 n

end A081017

/-! ## A081017.P4530822277859246239

`ogf((10x-5x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081017.P4530822277859246239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -5] [1, -8, 8, -1] n

end

end A081017.P4530822277859246239

namespace A081017

/-- `ogf((10x-5x^2)/(1-8x+8x^2-x^3))` -/
def P4530822277859246239.Spec : Prop :=
  ∀ n, P4530822277859246239.a n = A081017 n

end A081017

/-! ## A081017.P14749814678196680037

`A056914(n)-1`
-/

namespace A081017.P14749814678196680037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 n - 1

end

end A081017.P14749814678196680037

namespace A081017

/-- `A056914(n)-1` -/
def P14749814678196680037.Spec : Prop :=
  ∀ n, P14749814678196680037.a n = A081017 n

end A081017

/-! ## A081017.P13752060086608678715

`A081014(n)-2`
-/

namespace A081017.P13752060086608678715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081014 n - 2

end

end A081017.P13752060086608678715

namespace A081017

/-- `A081014(n)-2` -/
def P13752060086608678715.Spec : Prop :=
  ∀ n, P13752060086608678715.a n = A081017 n

end A081017

/-! ## A081017.P8678590573812115579

`A001610(4*n)`
-/

namespace A081017.P8678590573812115579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (4 * n)

end

end A081017.P8678590573812115579

namespace A081017

/-- `A001610(4*n)` -/
def P8678590573812115579.Spec : Prop :=
  ∀ n, P8678590573812115579.a n = A081017 n

end A081017

/-! ## A081017.P3016512422152490979

`A301653(4*n)`
-/

namespace A081017.P3016512422152490979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 (4 * n)

end

end A081017.P3016512422152490979

namespace A081017

/-- `A301653(4*n)` -/
def P3016512422152490979.Spec : Prop :=
  ∀ n, P3016512422152490979.a n = A081017 n

end A081017

/-! ## A081017.P17437713404481134773

`5*A081018(n)`
-/

namespace A081017.P17437713404481134773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081018 n

end

end A081017.P17437713404481134773

namespace A081017

/-- `5*A081018(n)` -/
def P17437713404481134773.Spec : Prop :=
  ∀ n, P17437713404481134773.a n = A081017 n

end A081017

/-! ## A081017.P66166402504543012

`Δ[A172968(n)]-1`
-/

namespace A081017.P66166402504543012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081017.P66166402504543012

namespace A081017

/-- `Δ[A172968(n)]-1` -/
def P66166402504543012.Spec : Prop :=
  ∀ n, P66166402504543012.a n = A081017 n

end A081017

/-! ## A081017.P5666384759814236012

`A256233(2*n)+1`
-/

namespace A081017.P5666384759814236012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 (2 * n) + 1

end

end A081017.P5666384759814236012

namespace A081017

/-- `A256233(2*n)+1` -/
def P5666384759814236012.Spec : Prop :=
  ∀ n, P5666384759814236012.a n = A081017 n

end A081017

/-! ## A081017.P9157293166618160369

`A002878(2*n)-1`
-/

namespace A081017.P9157293166618160369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (2 * n) - 1

end

end A081017.P9157293166618160369

namespace A081017

/-- `A002878(2*n)-1` -/
def P9157293166618160369.Spec : Prop :=
  ∀ n, P9157293166618160369.a n = A081017 n

end A081017

/-! ## A081017.P18324079286926735493

`A188378(2*n)-2`
-/

namespace A081017.P18324079286926735493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 (2 * n) - 2

end

end A081017.P18324079286926735493

namespace A081017

/-- `A188378(2*n)-2` -/
def P18324079286926735493.Spec : Prop :=
  ∀ n, P18324079286926735493.a n = A081017 n

end A081017

/-! ## A081017.P3006881900577229899

`A215602(2*n)-2`
-/

namespace A081017.P3006881900577229899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 (2 * n) - 2

end

end A081017.P3006881900577229899

namespace A081017

/-- `A215602(2*n)-2` -/
def P3006881900577229899.Spec : Prop :=
  ∀ n, P3006881900577229899.a n = A081017 n

end A081017

/-! ## A081017.P6598848509967882306

`A162483(2*n)-3`
-/

namespace A081017.P6598848509967882306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 (2 * n) - 3

end

end A081017.P6598848509967882306

namespace A081017

/-- `A162483(2*n)-3` -/
def P6598848509967882306.Spec : Prop :=
  ∀ n, P6598848509967882306.a n = A081017 n

end A081017

/-! ## A081017.P7124738244831238601

`A216243(2*n)-4`
-/

namespace A081017.P7124738244831238601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216243 (2 * n) - 4

end

end A081017.P7124738244831238601

namespace A081017

/-- `A216243(2*n)-4` -/
def P7124738244831238601.Spec : Prop :=
  ∀ n, P7124738244831238601.a n = A081017 n

end A081017

/-! ## A081017.P10510048064169451340

`5*A001654(2*n)`
-/

namespace A081017.P10510048064169451340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001654 (2 * n)

end

end A081017.P10510048064169451340

namespace A081017

/-- `5*A001654(2*n)` -/
def P10510048064169451340.Spec : Prop :=
  ∀ n, P10510048064169451340.a n = A081017 n

end A081017

/-! ## A081017.P17403677041052391871

`5*(A392838(n)-n)`
-/

namespace A081017.P17403677041052391871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A392838 n - (n : ℤ))

end

end A081017.P17403677041052391871

namespace A081017

/-- `5*(A392838(n)-n)` -/
def P17403677041052391871.Spec : Prop :=
  ∀ n, P17403677041052391871.a n = A081017 n

end A081017

/-! ## A081017.P9097197629631355578

`Δ[A001519(2*n)]-1`
-/

namespace A081017.P9097197629631355578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081017.P9097197629631355578

namespace A081017

/-- `Δ[A001519(2*n)]-1` -/
def P9097197629631355578.Spec : Prop :=
  ∀ n, P9097197629631355578.a n = A081017 n

end A081017

/-! ## A081017.P2473349304504053764

`Δ[A032908(2*n)]-1`
-/

namespace A081017.P2473349304504053764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081017.P2473349304504053764

namespace A081017

/-- `Δ[A032908(2*n)]-1` -/
def P2473349304504053764.Spec : Prop :=
  ∀ n, P2473349304504053764.a n = A081017 n

end A081017

/-! ## A081017.P14471798089361550645

`Δ[A128534(2*n)]-1`
-/

namespace A081017.P14471798089361550645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081017.P14471798089361550645

namespace A081017

/-- `Δ[A128534(2*n)]-1` -/
def P14471798089361550645.Spec : Prop :=
  ∀ n, P14471798089361550645.a n = A081017 n

end A081017

/-!
# A081018: a(n) = (Lucas(4n+1)-1)/5, or Fibonacci(2n)*Fibonacci(2n+1), or A081017(n)/5.

The programs for A081018, the canonical program `A081018.P6334783677637571560` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081018 has offset 0).

The definition of A081018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081018.P6334783677637571560

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081018

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P6334783677637571560.Spec : Prop :=
  ∀ n, P6334783677637571560.a n = A081018 n

theorem P6334783677637571560.correct : P6334783677637571560.Spec := by
  intro n
  simp only [A081018]

end A081018

/-! ## A081018.P14739690219403004235

`A081017(n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081018.P14739690219403004235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081017 n : ℚ) / 5

end

end A081018.P14739690219403004235

namespace A081018

/-- `A081017(n)/5` -/
def P14739690219403004235.Spec : Prop :=
  ∀ n, P14739690219403004235.a n = (A081018 n : ℚ)

end A081018

/-! ## A081018.P15381551636443979663

`∑[ogf((2x-x^2)/(1-7x+x^2))]`
-/

namespace A081018.P15381551636443979663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081018.P15381551636443979663

namespace A081018

/-- `∑[ogf((2x-x^2)/(1-7x+x^2))]` -/
def P15381551636443979663.Spec : Prop :=
  ∀ n, P15381551636443979663.a n = A081018 n

end A081018

/-! ## A081018.P15605797738774693937

`ogf((2x-x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081018.P15605797738774693937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -8, 8, -1] n

end

end A081018.P15605797738774693937

namespace A081018

/-- `ogf((2x-x^2)/(1-8x+8x^2-x^3))` -/
def P15605797738774693937.Spec : Prop :=
  ∀ n, P15605797738774693937.a n = A081018 n

end A081018

/-! ## A081018.P4084224258491929413

`floor(ϕ²²*a(n-1))+2` with `a(0)=0`
-/

namespace A081018.P4084224258491929413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 2

end

end A081018.P4084224258491929413

namespace A081018

/-- `floor(ϕ²²*a(n-1))+2` -/
def P4084224258491929413.Spec : Prop :=
  ∀ n, P4084224258491929413.a n = A081018 n

end A081018

/-! ## A081018.P12877800170795072611

`∑[floor(ϕ²²*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A081018.P12877800170795072611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081018.P12877800170795072611

namespace A081018

/-- `∑[floor(ϕ²²*a(n-1))]` -/
def P12877800170795072611.Spec : Prop :=
  ∀ n, P12877800170795072611.a n = A081018 n

end A081018

/-! ## A081018.P7782179274559772382

`7*a(n-1)+1-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A081018.P7782179274559772382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  7 * a (n - 1) + (1 - a (n - 2))

end

end A081018.P7782179274559772382

namespace A081018

/-- `7*a(n-1)+1-a(n-2)` -/
def P7782179274559772382.Spec : Prop :=
  ∀ n, P7782179274559772382.a n = A081018 n

end A081018

/-! ## A081018.P3736877865605044634

`1-(a(n-2)-7*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A081018.P3736877865605044634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (a (n - 2) - 7 * a (n - 1))

end

end A081018.P3736877865605044634

namespace A081018

/-- `1-(a(n-2)-7*a(n-1))` -/
def P3736877865605044634.Spec : Prop :=
  ∀ n, P3736877865605044634.a n = A081018 n

end A081018

/-! ## A081018.P9657432400524638322

`A001654(2*n)`
-/

namespace A081018.P9657432400524638322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * n)

end

end A081018.P9657432400524638322

namespace A081018

/-- `A001654(2*n)` -/
def P9657432400524638322.Spec : Prop :=
  ∀ n, P9657432400524638322.a n = A081018 n

end A081018

/-! ## A081018.P3621136632202678949

`A074677(4*n)`
-/

namespace A081018.P3621136632202678949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (4 * n)

end

end A081018.P3621136632202678949

namespace A081018

/-- `A074677(4*n)` -/
def P3621136632202678949.Spec : Prop :=
  ∀ n, P3621136632202678949.a n = A081018 n

end A081018

/-! ## A081018.P3147268703794579815

`A392838(n)-n`
-/

namespace A081018.P3147268703794579815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392838 n - (n : ℤ)

end

end A081018.P3147268703794579815

namespace A081018

/-- `A392838(n)-n` -/
def P3147268703794579815.Spec : Prop :=
  ∀ n, P3147268703794579815.a n = A081018 n

end A081018

/-! ## A081018.P16726231043505010959

`A059840(Δ[n²])`
-/

namespace A081018.P16726231043505010959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081018.P16726231043505010959

namespace A081018

/-- `A059840(Δ[n²])` -/
def P16726231043505010959.Spec : Prop :=
  ∀ n, P16726231043505010959.a n = A081018 n

end A081018

/-! ## A081018.P7772264380999343355

`∑[A172968(n)]-1`
-/

namespace A081018.P7772264380999343355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081018.P7772264380999343355

namespace A081018

/-- `∑[A172968(n)]-1` -/
def P7772264380999343355.Spec : Prop :=
  ∀ n, P7772264380999343355.a n = A081018 n

end A081018

/-! ## A081018.P579438045549652174

`A206351(n+1)-1`
-/

namespace A081018.P579438045549652174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 1) - 1

end

end A081018.P579438045549652174

namespace A081018

/-- `A206351(n+1)-1` -/
def P579438045549652174.Spec : Prop :=
  ∀ n, P579438045549652174.a n = A081018 n

end A081018

/-! ## A081018.P6426516606521664290

`A260259(2*n)+1`
-/

namespace A081018.P6426516606521664290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (2 * n) + 1

end

end A081018.P6426516606521664290

namespace A081018

/-- `A260259(2*n)+1` -/
def P6426516606521664290.Spec : Prop :=
  ∀ n, P6426516606521664290.a n = A081018 n

end A081018

/-! ## A081018.P11360169688573892255

`A392839(n)-2+n`
-/

namespace A081018.P11360169688573892255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392839 n - 2 + (n : ℤ)

end

end A081018.P11360169688573892255

namespace A081018

/-- `A392839(n)-2+n` -/
def P11360169688573892255.Spec : Prop :=
  ∀ n, P11360169688573892255.a n = A081018 n

end A081018

/-! ## A081018.P1265133522968768588

`A226205(Δ[n²])-1`
-/

namespace A081018.P1265133522968768588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A081018.P1265133522968768588

namespace A081018

/-- `A226205(Δ[n²])-1` -/
def P1265133522968768588.Spec : Prop :=
  ∀ n, P1265133522968768588.a n = A081018 n

end A081018

/-! ## A081018.P14172426740113354033

`∑[A001519(2*n)]-1`
-/

namespace A081018.P14172426740113354033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081018.P14172426740113354033

namespace A081018

/-- `∑[A001519(2*n)]-1` -/
def P14172426740113354033.Spec : Prop :=
  ∀ n, P14172426740113354033.a n = A081018 n

end A081018

/-! ## A081018.P15886144012938225990

`∑[1-A186025(2*n)]`
-/

namespace A081018.P15886144012938225990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A186025 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081018.P15886144012938225990

namespace A081018

/-- `∑[1-A186025(2*n)]` -/
def P15886144012938225990.Spec : Prop :=
  ∀ n, P15886144012938225990.a n = A081018 n

end A081018

/-! ## A081018.P10315887332497296253

`A107387(2*(n+1))-1`
-/

namespace A081018.P10315887332497296253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 (2 * (n + 1)) - 1

end

end A081018.P10315887332497296253

namespace A081018

/-- `A107387(2*(n+1))-1` -/
def P10315887332497296253.Spec : Prop :=
  ∀ n, P10315887332497296253.a n = A081018 n

end A081018

/-!
# A081019: a(n) = Lucas(4n+3) - 1, or Lucas(2n+1)*Lucas(2n+2).

The programs for A081019, the canonical program `A081019.P2347340845336935582` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081019 has offset 0).

The definition of A081019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081019.P2347340845336935582

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=3, a(1)=28, a(2)=198`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081019

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P2347340845336935582.Spec : Prop :=
  ∀ n, P2347340845336935582.a n = A081019 n

theorem P2347340845336935582.correct : P2347340845336935582.Spec := by
  intro n
  simp only [A081019]

end A081019

/-! ## A081019.P2452156270373669007

`∑[ogf((3+4x-2x^2)/(1-7x+x^2))]`
-/

namespace A081019.P2452156270373669007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -2] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081019.P2452156270373669007

namespace A081019

/-- `∑[ogf((3+4x-2x^2)/(1-7x+x^2))]` -/
def P2452156270373669007.Spec : Prop :=
  ∀ n, P2452156270373669007.a n = A081019 n

end A081019

/-! ## A081019.P821001138972136870

`ogf((3+4x-2x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081019.P821001138972136870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -2] [1, -8, 8, -1] n

end

end A081019.P821001138972136870

namespace A081019

/-- `ogf((3+4x-2x^2)/(1-8x+8x^2-x^3))` -/
def P821001138972136870.Spec : Prop :=
  ∀ n, P821001138972136870.a n = A081019 n

end A081019

/-! ## A081019.P12284323960622851480

`A288913(n)-1`
-/

namespace A081019.P12284323960622851480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288913 n - 1

end

end A081019.P12284323960622851480

namespace A081019

/-- `A288913(n)-1` -/
def P12284323960622851480.Spec : Prop :=
  ∀ n, P12284323960622851480.a n = A081019 n

end A081019

/-! ## A081019.P8723132579338317263

`A081015(n)-2`
-/

namespace A081019.P8723132579338317263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081015 n - 2

end

end A081019.P8723132579338317263

namespace A081019

/-- `A081015(n)-2` -/
def P8723132579338317263.Spec : Prop :=
  ∀ n, P8723132579338317263.a n = A081019 n

end A081019

/-! ## A081019.P2015837773617523985

`A215602(Δ[n²])`
-/

namespace A081019.P2015837773617523985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081019.P2015837773617523985

namespace A081019

/-- `A215602(Δ[n²])` -/
def P2015837773617523985.Spec : Prop :=
  ∀ n, P2015837773617523985.a n = A081019 n

end A081019

/-! ## A081019.P6787630917452551774

`Δ[A033889(n)]-1`
-/

namespace A081019.P6787630917452551774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081019.P6787630917452551774

namespace A081019

/-- `Δ[A033889(n)]-1` -/
def P6787630917452551774.Spec : Prop :=
  ∀ n, P6787630917452551774.a n = A081019 n

end A081019

/-! ## A081019.P14810718123856502370

`Δ[A081003(n)]-1`
-/

namespace A081019.P14810718123856502370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081019.P14810718123856502370

namespace A081019

/-- `Δ[A081003(n)]-1` -/
def P14810718123856502370.Spec : Prop :=
  ∀ n, P14810718123856502370.a n = A081019 n

end A081019

/-! ## A081019.P6264274615880769137

`Δ[A081007(n)]-1`
-/

namespace A081019.P6264274615880769137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081019.P6264274615880769137

namespace A081019

/-- `Δ[A081007(n)]-1` -/
def P6264274615880769137.Spec : Prop :=
  ∀ n, P6264274615880769137.a n = A081019 n

end A081019

/-! ## A081019.P16722442768507133640

`Δ[A081010(n)]-1`
-/

namespace A081019.P16722442768507133640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081019.P16722442768507133640

namespace A081019

/-- `Δ[A081010(n)]-1` -/
def P16722442768507133640.Spec : Prop :=
  ∀ n, P16722442768507133640.a n = A081019 n

end A081019

/-! ## A081019.P1384974504273447263

`A027004(2*n)+2`
-/

namespace A081019.P1384974504273447263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027004 (2 * n) + 2

end

end A081019.P1384974504273447263

namespace A081019

/-- `A027004(2*n)+2` -/
def P1384974504273447263.Spec : Prop :=
  ∀ n, P1384974504273447263.a n = A081019 n

end A081019

/-! ## A081019.P6928870951983210920

`A001610(4*n+2)`
-/

namespace A081019.P6928870951983210920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (4 * n + 2)

end

end A081019.P6928870951983210920

namespace A081019

/-- `A001610(4*n+2)` -/
def P6928870951983210920.Spec : Prop :=
  ∀ n, P6928870951983210920.a n = A081019 n

end A081019

/-! ## A081019.P17981622913375339724

`A099925(4*n+3)`
-/

namespace A081019.P17981622913375339724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 (4 * n + 3)

end

end A081019.P17981622913375339724

namespace A081019

/-- `A099925(4*n+3)` -/
def P17981622913375339724.Spec : Prop :=
  ∀ n, P17981622913375339724.a n = A081019 n

end A081019

/-! ## A081019.P5333702798500818625

`5*A003482(n)+3`
-/

namespace A081019.P5333702798500818625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003482 n + 3

end

end A081019.P5333702798500818625

namespace A081019

/-- `5*A003482(n)+3` -/
def P5333702798500818625.Spec : Prop :=
  ∀ n, P5333702798500818625.a n = A081019 n

end A081019

/-! ## A081019.P13625224632544114861

`5*A081016(n)-2`
-/

namespace A081019.P13625224632544114861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081016 n - 2

end

end A081019.P13625224632544114861

namespace A081019

/-- `5*A081016(n)-2` -/
def P13625224632544114861.Spec : Prop :=
  ∀ n, P13625224632544114861.a n = A081019 n

end A081019

/-! ## A081019.P429722247755115275

`A256233(Δ[n²])+1`
-/

namespace A081019.P429722247755115275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081019.P429722247755115275

namespace A081019

/-- `A256233(Δ[n²])+1` -/
def P429722247755115275.Spec : Prop :=
  ∀ n, P429722247755115275.a n = A081019 n

end A081019

/-! ## A081019.P10364660380949890303

`A002878(Δ[n²])-1`
-/

namespace A081019.P10364660380949890303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A081019.P10364660380949890303

namespace A081019

/-- `A002878(Δ[n²])-1` -/
def P10364660380949890303.Spec : Prop :=
  ∀ n, P10364660380949890303.a n = A081019 n

end A081019

/-! ## A081019.P2833116062481526364

`A005970(Δ[n²])+2`
-/

namespace A081019.P2833116062481526364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A081019.P2833116062481526364

namespace A081019

/-- `A005970(Δ[n²])+2` -/
def P2833116062481526364.Spec : Prop :=
  ∀ n, P2833116062481526364.a n = A081019 n

end A081019

/-! ## A081019.P11540584105538087603

`A188378(Δ[n²])-2`
-/

namespace A081019.P11540584105538087603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A081019.P11540584105538087603

namespace A081019

/-- `A188378(Δ[n²])-2` -/
def P11540584105538087603.Spec : Prop :=
  ∀ n, P11540584105538087603.a n = A081019 n

end A081019

/-! ## A081019.P1737819318563653838

`A216243(Δ[n²])-2`
-/

namespace A081019.P1737819318563653838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A081019.P1737819318563653838

namespace A081019

/-- `A216243(Δ[n²])-2` -/
def P1737819318563653838.Spec : Prop :=
  ∀ n, P1737819318563653838.a n = A081019 n

end A081019

/-!
# A081020: Even order Taylor coefficients at x = 0 of exp(-x^2/(x^2-2)), odd order coefficients being equal to zero.

The programs for A081020, there is no canonical definition to state claims against.
-/

/-! ## A081020.P3878131065548080657

`∏[abs(1-2*n)]*A000262(n)`
-/

namespace A081020.P3878131065548080657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000262 n

end

end A081020.P3878131065548080657

/-! ## A081020.P8556320865866113531

`A000262(n)*A001147(n)`
-/

namespace A081020.P8556320865866113531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A001147 n

end

end A081020.P8556320865866113531

/-! ## A081020.P6804183961722608110

`A000262(n)*A001497(∑[n])`
-/

namespace A081020.P6804183961722608110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A001497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081020.P6804183961722608110

/-! ## A081020.P9650122103494391704

`A000262(n)*A055634(2*n)`
-/

namespace A081020.P9650122103494391704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A055634 (2 * n)

end

end A081020.P9650122103494391704

/-! ## A081020.P15810234250315370340

`A000262(n)*A123023(2*n)`
-/

namespace A081020.P15810234250315370340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A123023 (2 * n)

end

end A081020.P15810234250315370340

/-!
# A081021: Even order Taylor coefficients at x = 0 of exp( (sqrt(2)-sqrt(-2*x^2+2))/(-2*x^2+2)^(1/2) ), odd order coefficients being equal to zero.

The programs for A081021, there is no canonical definition to state claims against.
-/

/-! ## A081021.P16805999318390766203

`∏[A005408(n)]*A049118(n+1)`
-/

namespace A081021.P16805999318390766203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A049118 (n + 1)

end

end A081021.P16805999318390766203

/-! ## A081021.P9276017072207854196

`record[A001497(n)]*A049118(n+1)`
-/

namespace A081021.P9276017072207854196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A049118 (n + 1)

end

end A081021.P9276017072207854196

/-! ## A081021.P11671405879483406832

`record[A055634(n)]*A049118(n+1)`
-/

namespace A081021.P11671405879483406832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A049118 (n + 1)

end

end A081021.P11671405879483406832

/-! ## A081021.P4225146943618287404

`A001147(n+1)*A049118(n+1)`
-/

namespace A081021.P4225146943618287404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) * A049118 (n + 1)

end

end A081021.P4225146943618287404

/-! ## A081021.P14501299018953301748

`A049118(n+1)*A055634(2*(n+1))`
-/

namespace A081021.P14501299018953301748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049118 (n + 1) * A055634 (2 * (n + 1))

end

end A081021.P14501299018953301748

/-!
# A081022: Even order Taylor coefficients at x = 0 of exp( -(-2^(1/3)+(-3*x^2+2)^(1/3))/(-3*x^2+2)^(1/3) ), odd order coefficients being equal to zero.

The programs for A081022, there is no canonical definition to state claims against.
-/

/-! ## A081022.P14406768350878166274

`∏[A005408(n)]*A049119(n+1)`
-/

namespace A081022.P14406768350878166274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A049119 (n + 1)

end

end A081022.P14406768350878166274

/-! ## A081022.P11297949591351053850

`record[A055634(n)]*A049119(n+1)`
-/

namespace A081022.P11297949591351053850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A049119 (n + 1)

end

end A081022.P11297949591351053850

/-! ## A081022.P5159412251308637404

`A001147(n+1)*A049119(n+1)`
-/

namespace A081022.P5159412251308637404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) * A049119 (n + 1)

end

end A081022.P5159412251308637404

/-! ## A081022.P4806541360656246124

`record[A134146(n+1)]*A049119(n+1)`
-/

namespace A081022.P4806541360656246124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A049119 (n + 1)

end

end A081022.P4806541360656246124

/-! ## A081022.P12258917702422225171

`record[A112292(n)]*A049119(n+1)`
-/

namespace A081022.P12258917702422225171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A049119 (n + 1)

end

end A081022.P12258917702422225171

/-!
# A081023: Sequence based on wholly inaccurate version of Aronson's sentence (cf. A005224): "T is the second, third, fifth, sixth, seventh . . . letter of this sentence, not counting commas or spaces", where the sentence indicates exactly those letters that are not "T"s.

The programs for A081023, there is no canonical definition to state claims against.
-/

/-! ## A081023.P14979854500305588421

`comp[A081024(n+1)-1]+1`
-/

namespace A081023.P14979854500305588421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081024 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A081023.P14979854500305588421

/-! ## A081023.P6600629771188417881

`eq[char[A081024(n+1)], A151933(n)]`
-/

namespace A081023.P6600629771188417881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081024 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A081023.P6600629771188417881

/-! ## A081023.P682828713873926858

`lt[A033461(n), A277950(A226513(n+2))]`
-/

namespace A081023.P682828713873926858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277950 (A226513 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081023.P682828713873926858

/-! ## A081023.P9115469475187624825

`lt[A124788(2*n), A124767(A237341(n))]`
-/

namespace A081023.P9115469475187624825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A237341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081023.P9115469475187624825

/-!
# A081026: Variation on Ulam numbers: a(1) = 1; a(2) = 2; for n>2, a(n) = smallest (n odd) or largest (n even) number > a(n-1) that is a unique sum of two distinct earlier terms.

The programs for A081026, the canonical program `A081026.P2865201314174706939` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081026 has offset 1).

The definition of A081026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081026.P2865201314174706939

`∏[ceil(ratio[or(1, n)])]-n%2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081026

/-- `∏[ceil(ratio[or(1, n)])]-n%2` -/
def P2865201314174706939.Spec : Prop :=
  ∀ n, P2865201314174706939.a n = A081026 (n + 1)

theorem P2865201314174706939.correct : P2865201314174706939.Spec := by
  intro n
  simp only [A081026, Nat.add_sub_cancel]

end A081026

/-! ## A081026.P17837988916501710186

`and(1, n)+2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A081026.P17837988916501710186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.land 1 n + 2 * a (n - 2)

end

end A081026.P17837988916501710186

namespace A081026

/-- `and(1, n)+2*a(n-2)` -/
def P17837988916501710186.Spec : Prop :=
  ∀ n, (P17837988916501710186.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P10425825304812711026

`or(2*a(n-2), and(1, n))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A081026.P10425825304812711026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.lor (2 * a (n - 2)) (Nat.land 1 n)

end

end A081026.P10425825304812711026

namespace A081026

/-- `or(2*a(n-2), and(1, n))` -/
def P10425825304812711026.Spec : Prop :=
  ∀ n, (P10425825304812711026.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P6791427420752292606

`xor(2*a(n-2), and(1, n))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A081026.P6791427420752292606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Nat.xor (2 * a (n - 2)) (Nat.land 1 n)

end

end A081026.P6791427420752292606

namespace A081026

/-- `xor(2*a(n-2), and(1, n))` -/
def P6791427420752292606.Spec : Prop :=
  ∀ n, (P6791427420752292606.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P10662729186328965742

`n²%2+2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A081026.P10662729186328965742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  n ^ 2 % 2 + 2 * a (n - 2)

end

end A081026.P10662729186328965742

namespace A081026

/-- `n²%2+2*a(n-2)` -/
def P10662729186328965742.Spec : Prop :=
  ∀ n, (P10662729186328965742.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P14144415003755078451

`a(n-gcd(2, n))+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A081026.P14144415003755078451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - Nat.gcd 2 n) + a (n - 2)

end

end A081026.P14144415003755078451

namespace A081026

/-- `a(n-gcd(2, n))+a(n-2)` -/
def P14144415003755078451.Spec : Prop :=
  ∀ n, (P14144415003755078451.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P4233987892931266451

`floor(a(n-1)+a(n-2)/(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A081026.P4233987892931266451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 2) : ℚ) / (a (n - 1) - a (n - 2) : ℚ)⌋

end

end A081026.P4233987892931266451

namespace A081026

/-- `floor(a(n-1)+a(n-2)/(a(n-1)-a(n-2)))` -/
def P4233987892931266451.Spec : Prop :=
  ∀ n, P4233987892931266451.a n = A081026 (n + 1)

end A081026

/-! ## A081026.P17511837463861095934

`floor(a(n-1)-a(n-2)/floor(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A081026.P17511837463861095934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) - (a (n - 2) : ℚ) / (a (n - 2) - a (n - 1) : ℚ)⌋

end

end A081026.P17511837463861095934

namespace A081026

/-- `floor(a(n-1)-a(n-2)/floor(a(n-2)-a(n-1)))` -/
def P17511837463861095934.Spec : Prop :=
  ∀ n, P17511837463861095934.a n = A081026 (n + 1)

end A081026

/-! ## A081026.P6028527415042100204

`∪[A003945(n), A083329(n)]`
-/

namespace A081026.P6028527415042100204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081026.P6028527415042100204

namespace A081026

/-- `∪[A003945(n), A083329(n)]` -/
def P6028527415042100204.Spec : Prop :=
  ∀ n, (P6028527415042100204.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P9870417958719506503

`∪[A007283(n), A083329(n)]`
-/

namespace A081026.P9870417958719506503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081026.P9870417958719506503

namespace A081026

/-- `∪[A007283(n), A083329(n)]` -/
def P9870417958719506503.Spec : Prop :=
  ∀ n, (P9870417958719506503.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P10961888647292357511

`∪[A042950(n), A052940(n)]`
-/

namespace A081026.P10961888647292357511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081026.P10961888647292357511

namespace A081026

/-- `∪[A042950(n), A052940(n)]` -/
def P10961888647292357511.Spec : Prop :=
  ∀ n, (P10961888647292357511.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P2332584996181946339

`∪[A042950(n), A083329(n)]`
-/

namespace A081026.P2332584996181946339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081026.P2332584996181946339

namespace A081026

/-- `∪[A042950(n), A083329(n)]` -/
def P2332584996181946339.Spec : Prop :=
  ∀ n, (P2332584996181946339.a n : ℤ) = A081026 (n + 1)

end A081026

/-! ## A081026.P5802802478972714669

`∪[A003945(n), A153893(n)]`
-/

namespace A081026.P5802802478972714669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081026.P5802802478972714669

namespace A081026

/-- `∪[A003945(n), A153893(n)]` -/
def P5802802478972714669.Spec : Prop :=
  ∀ n, (P5802802478972714669.a n : ℤ) = A081026 (n + 1)

end A081026

/-!
# A081028: Numbers k such that k-th term of A080997 is prime.

The programs for A081028, there is no canonical definition to state claims against.
-/

/-! ## A081028.P13839465640804329804

`record[A080998(comp[n²])]`
-/

namespace A081028.P13839465640804329804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081028.P13839465640804329804

/-! ## A081028.P9626079380426113950

`A080998(p?[comp[n²]])`
-/

namespace A081028.P9626079380426113950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A081028.P9626079380426113950

/-! ## A081028.P6737051728918600151

`A080998(Δ[A007504(n)])`
-/

namespace A081028.P6737051728918600151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (f1 (n + 1) - f1 n).toNat

end

end A081028.P6737051728918600151

/-! ## A081028.P3829840621571901655

`A080998(A000040(n+1))`
-/

namespace A081028.P3829840621571901655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (A000040 (n + 1)).toNat

end

end A081028.P3829840621571901655

/-! ## A081028.P17129973560007401391

`A080998(A008578(n+2))`
-/

namespace A081028.P17129973560007401391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (A008578 (n + 2)).toNat

end

end A081028.P17129973560007401391

/-! ## A081028.P7571041434013633684

`A080998(A182986(n+2))`
-/

namespace A081028.P7571041434013633684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (A182986 (n + 2)).toNat

end

end A081028.P7571041434013633684

/-! ## A081028.P16004357550124893466

`A080998(record[A036262(n)])`
-/

namespace A081028.P16004357550124893466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081028.P16004357550124893466

/-!
# A081029: Highly central numbers: numbers having a centrality higher than that of any larger number.

The programs for A081029, there is no canonical definition to state claims against.
-/

/-! ## A081029.P13472810054603496874

`record[A080997(n+1)]`
-/

namespace A081029.P13472810054603496874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081029.P13472810054603496874

/-! ## A081029.P17266600019935975742

`record[A080997(A008619(n))-A010673(n)]`
-/

namespace A081029.P17266600019935975742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (A008619 n).toNat - A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081029.P17266600019935975742

/-! ## A081029.P15776519006215968695

`record[A080997(A008619(n))-A159075(n)]`
-/

namespace A081029.P15776519006215968695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (A008619 n).toNat - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081029.P15776519006215968695

/-! ## A081029.P7495775416472341805

`record[A080997(A008619(n))-A237420(n)]`
-/

namespace A081029.P7495775416472341805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (A008619 n).toNat - A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081029.P7495775416472341805

/-!
# A081031: Positions of white keys on piano keyboard, starting with A0 = the 1st key.

The programs for A081031, the canonical program `A081031.P3905533385401569435` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081031 has offset 1).

The definition of A081031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081031.P11692471839448931063

`floor((12*(n+1)-3)/7)`
-/

namespace A081031.P11692471839448931063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((12 * (n + 1) : ℤ) - 3 : ℚ) / 7⌋

end

end A081031.P11692471839448931063

namespace A081031

/-- `floor((12*(n+1)-3)/7)` -/
def P11692471839448931063.Spec : Prop :=
  ∀ n, P11692471839448931063.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P3905533385401569435

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=8, a(5)=9, a(6)=11, a(7)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081031

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P3905533385401569435.Spec : Prop :=
  ∀ n, P3905533385401569435.a n = A081031 (n + 1)

theorem P3905533385401569435.correct : P3905533385401569435.Spec := by
  intro n
  simp only [A081031, Nat.add_sub_cancel]

end A081031

/-! ## A081031.P5589395861145929445

`A060107(n+1)+1`
-/

namespace A081031.P5589395861145929445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + 1

end

end A081031.P5589395861145929445

namespace A081031

/-- `A060107(n+1)+1` -/
def P5589395861145929445.Spec : Prop :=
  ∀ n, P5589395861145929445.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P1713914723597376017

`ceil(or(3, 12*n)/7)`
-/

namespace A081031.P1713914723597376017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (12 * n) : ℚ) / 7⌉

end

end A081031.P1713914723597376017

namespace A081031

/-- `ceil(or(3, 12*n)/7)` -/
def P1713914723597376017.Spec : Prop :=
  ∀ n, P1713914723597376017.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P16211518192538071767

`ceil(xor(3, 12*n)/7)`
-/

namespace A081031.P16211518192538071767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 (12 * n) : ℚ) / 7⌉

end

end A081031.P16211518192538071767

namespace A081031

/-- `ceil(xor(3, 12*n)/7)` -/
def P16211518192538071767.Spec : Prop :=
  ∀ n, P16211518192538071767.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P7211324954601008698

`record[floor(3*xor(3, n)/7)]`
-/

namespace A081031.P7211324954601008698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * Nat.xor 3 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081031.P7211324954601008698

namespace A081031

/-- `record[floor(3*xor(3, n)/7)]` -/
def P7211324954601008698.Spec : Prop :=
  ∀ n, P7211324954601008698.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P1316102934062623001

`round(record[6*xor(1, n)]/7)`
-/

namespace A081031.P1316102934062623001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7)

end

end A081031.P1316102934062623001

namespace A081031

/-- `round(record[6*xor(1, n)]/7)` -/
def P1316102934062623001.Spec : Prop :=
  ∀ n, P1316102934062623001.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P8263446477633622516

`round(lcm(2, 6*n+3)/7)`
-/

namespace A081031.P8263446477633622516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (6 * n + 3) : ℚ) / 7)

end

end A081031.P8263446477633622516

namespace A081031

/-- `round(lcm(2, 6*n+3)/7)` -/
def P8263446477633622516.Spec : Prop :=
  ∀ n, P8263446477633622516.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P17336679070382186246

`round((2*n+1)*cos(cos(1)))`
-/

namespace A081031.P17336679070382186246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) * Real.cos (Real.cos (1 : ℝ)))

end

end A081031.P17336679070382186246

namespace A081031

/-- `round((2*n+1)*cos(cos(1)))` -/
def P17336679070382186246.Spec : Prop :=
  ∀ n, P17336679070382186246.a n = A081031 (n + 1)

end A081031

/-! ## A081031.P17513665139790382714

`2*n+1-ceil((n-1)*cos(5))`
-/

namespace A081031.P17513665139790382714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌈((n : ℤ) - 1 : ℝ) * Real.cos (5 : ℝ)⌉

end

end A081031.P17513665139790382714

namespace A081031

/-- `2*n+1-ceil((n-1)*cos(5))` -/
def P17513665139790382714.Spec : Prop :=
  ∀ n, P17513665139790382714.a n = A081031 (n + 1)

end A081031

/-!
# A081032: Positions of black keys on piano keyboard, starting with A0 = the 1st key.

The programs for A081032, the canonical program `A081032.P13537599931500266398` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081032 has offset 1).

The definition of A081032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081032.P7251254159999393060

`floor((12*(n+1)+2)/5)`
-/

namespace A081032.P7251254159999393060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * (n + 1) + 2 : ℚ) / 5⌋

end

end A081032.P7251254159999393060

namespace A081032

/-- `floor((12*(n+1)+2)/5)` -/
def P7251254159999393060.Spec : Prop :=
  ∀ n, P7251254159999393060.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P13537599931500266398

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=10, a(4)=12, a(5)=14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081032

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P13537599931500266398.Spec : Prop :=
  ∀ n, P13537599931500266398.a n = A081032 (n + 1)

theorem P13537599931500266398.correct : P13537599931500266398.Spec := by
  intro n
  simp only [A081032, Nat.add_sub_cancel]

end A081032

/-! ## A081032.P16236296054540290405

`A060106(n+1)+1`
-/

namespace A081032.P16236296054540290405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1) + 1

end

end A081032.P16236296054540290405

namespace A081032

/-- `A060106(n+1)+1` -/
def P16236296054540290405.Spec : Prop :=
  ∀ n, P16236296054540290405.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P18264694204612079565

`∑[(n%5)%2+2]`
-/

namespace A081032.P18264694204612079565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 % 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P18264694204612079565

namespace A081032

/-- `∑[(n%5)%2+2]` -/
def P18264694204612079565.Spec : Prop :=
  ∀ n, (P18264694204612079565.a n : ℤ) = A081032 (n + 1)

end A081032

/-! ## A081032.P5727220628257321020

`round((n+1)*sinh(log(5)))`
-/

namespace A081032.P5727220628257321020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sinh (Real.log (5 : ℝ)))

end

end A081032.P5727220628257321020

namespace A081032

/-- `round((n+1)*sinh(log(5)))` -/
def P5727220628257321020.Spec : Prop :=
  ∀ n, P5727220628257321020.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P1881064485123130189

`∑[2-(-n%5)%2]`
-/

namespace A081032.P1881064485123130189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (Int.tmod (-(n : ℤ)) 5) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P1881064485123130189

namespace A081032

/-- `∑[2-(-n%5)%2]` -/
def P1881064485123130189.Spec : Prop :=
  ∀ n, P1881064485123130189.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P13726751197823506774

`ceil(lcm(2, 6*n+5)/5)`
-/

namespace A081032.P13726751197823506774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (6 * n + 5) : ℚ) / 5⌉

end

end A081032.P13726751197823506774

namespace A081032

/-- `ceil(lcm(2, 6*n+5)/5)` -/
def P13726751197823506774.Spec : Prop :=
  ∀ n, P13726751197823506774.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P14046920138163342157

`∑[abs(a(n-5))]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3, a(4)=2`
-/

namespace A081032.P14046920138163342157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P14046920138163342157

namespace A081032

/-- `∑[abs(a(n-5))]` -/
def P14046920138163342157.Spec : Prop :=
  ∀ n, (P14046920138163342157.a n : ℤ) = A081032 (n + 1)

end A081032

/-! ## A081032.P15673491649987410636

`∑[dr(a(n-5))]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3, a(4)=2`
-/

namespace A081032.P15673491649987410636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 5) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P15673491649987410636

namespace A081032

/-- `∑[dr(a(n-5))]` -/
def P15673491649987410636.Spec : Prop :=
  ∀ n, (P15673491649987410636.a n : ℤ) = A081032 (n + 1)

end A081032

/-! ## A081032.P10098545827089789486

`∑[floor(a(n-5))]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A081032.P10098545827089789486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P10098545827089789486

namespace A081032

/-- `∑[floor(a(n-5))]` -/
def P10098545827089789486.Spec : Prop :=
  ∀ n, (P10098545827089789486.a n : ℤ) = A081032 (n + 1)

end A081032

/-! ## A081032.P9483709536704933398

`∑[ceil(a(n-5))]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A081032.P9483709536704933398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P9483709536704933398

namespace A081032

/-- `∑[ceil(a(n-5))]` -/
def P9483709536704933398.Spec : Prop :=
  ∀ n, (P9483709536704933398.a n : ℤ) = A081032 (n + 1)

end A081032

/-! ## A081032.P16225331081829085861

`∑[round(a(n-5))]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A081032.P16225331081829085861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P16225331081829085861

namespace A081032

/-- `∑[round(a(n-5))]` -/
def P16225331081829085861.Spec : Prop :=
  ∀ n, (P16225331081829085861.a n : ℤ) = A081032 (n + 1)

end A081032

/-! ## A081032.P18112671067546683401

`∑[A092202(n)²+2]`
-/

namespace A081032.P18112671067546683401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092202 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P18112671067546683401

namespace A081032

/-- `∑[A092202(n)²+2]` -/
def P18112671067546683401.Spec : Prop :=
  ∀ n, P18112671067546683401.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P15333734986748058491

`∑[3-A131670(n)²]`
-/

namespace A081032.P15333734986748058491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A131670 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P15333734986748058491

namespace A081032

/-- `∑[3-A131670(n)²]` -/
def P15333734986748058491.Spec : Prop :=
  ∀ n, P15333734986748058491.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P4911408189100232055

`∑[A010874(n)%2+2]`
-/

namespace A081032.P4911408189100232055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010874 n) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P4911408189100232055

namespace A081032

/-- `∑[A010874(n)%2+2]` -/
def P4911408189100232055.Spec : Prop :=
  ∀ n, P4911408189100232055.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P13602784717757292374

`∑[gcd(2, A265078(n))+1]`
-/

namespace A081032.P13602784717757292374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A265078 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P13602784717757292374

namespace A081032

/-- `∑[gcd(2, A265078(n))+1]` -/
def P13602784717757292374.Spec : Prop :=
  ∀ n, (P13602784717757292374.a n : ℤ) = A081032 (n + 1)

end A081032

/-! ## A081032.P16922819129334557505

`∑[abs(∑[A080891(n)])+2]`
-/

namespace A081032.P16922819129334557505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P16922819129334557505

namespace A081032

/-- `∑[abs(∑[A080891(n)])+2]` -/
def P16922819129334557505.Spec : Prop :=
  ∀ n, P16922819129334557505.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P7203067383470709304

`∑[∑[A330033(n)]²+2]`
-/

namespace A081032.P7203067383470709304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081032.P7203067383470709304

namespace A081032

/-- `∑[∑[A330033(n)]²+2]` -/
def P7203067383470709304.Spec : Prop :=
  ∀ n, P7203067383470709304.a n = A081032 (n + 1)

end A081032

/-! ## A081032.P9081324003134518897

`A047332(n+1)+2+n`
-/

namespace A081032.P9081324003134518897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047332 (n + 1) + 2 + (n : ℤ)

end

end A081032.P9081324003134518897

namespace A081032

/-- `A047332(n+1)+2+n` -/
def P9081324003134518897.Spec : Prop :=
  ∀ n, P9081324003134518897.a n = A081032 (n + 1)

end A081032

/-!
# A081033: 6th binomial transform of the periodic sequence (1,7,1,1,7,1...).

The programs for A081033, the canonical program `A081033.P6880637387556337734` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081033 has offset 0).

The definition of A081033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081033.P6880637387556337734

`4*7^n-3*5^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081033

/-- `4*7^n-3*5^n` -/
def P6880637387556337734.Spec : Prop :=
  ∀ n, P6880637387556337734.a n = A081033 n

theorem P6880637387556337734.correct : P6880637387556337734.Spec := by
  intro n
  simp only [A081033]

end A081033

/-! ## A081033.P8962481187952904449

`abs(A016161(n)+(7^n-5^n)/2)`
-/

namespace A081033.P8962481187952904449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A016161 n : ℚ) + ((7 ^ n : ℤ) - (5 ^ n : ℤ) : ℚ) / 2|

end

end A081033.P8962481187952904449

namespace A081033

/-- `abs(A016161(n)+(7^n-5^n)/2)` -/
def P8962481187952904449.Spec : Prop :=
  ∀ n, P8962481187952904449.a n = (A081033 n : ℚ)

end A081033

/-! ## A081033.P1656196336938431095

`Δ[A083076(n)-A083065(n)]`
-/

namespace A081033.P1656196336938431095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n - A083065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081033.P1656196336938431095

namespace A081033

/-- `Δ[A083076(n)-A083065(n)]` -/
def P1656196336938431095.Spec : Prop :=
  ∀ n, P1656196336938431095.a n = A081033 n

end A081033

/-! ## A081033.P9702583356961536692

`Δ[A083076(n)-A125833(n)]`
-/

namespace A081033.P9702583356961536692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n - A125833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081033.P9702583356961536692

namespace A081033

/-- `Δ[A083076(n)-A125833(n)]` -/
def P9702583356961536692.Spec : Prop :=
  ∀ n, P9702583356961536692.a n = A081033 n

end A081033

/-! ## A081033.P13502676817103443474

`Δ[A125823(n+1)-A083065(n)]`
-/

namespace A081033.P13502676817103443474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125823 (n + 1) - A083065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081033.P13502676817103443474

namespace A081033

/-- `Δ[A125823(n+1)-A083065(n)]` -/
def P13502676817103443474.Spec : Prop :=
  ∀ n, P13502676817103443474.a n = A081033 n

end A081033

/-! ## A081033.P15770182390976938971

`Δ[A125823(n+1)-A125833(n)]`
-/

namespace A081033.P15770182390976938971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125823 (n + 1) - A125833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081033.P15770182390976938971

namespace A081033

/-- `Δ[A125823(n+1)-A125833(n)]` -/
def P15770182390976938971.Spec : Prop :=
  ∀ n, P15770182390976938971.a n = A081033 n

end A081033

/-! ## A081033.P12207915303255518266

`(A003950(n+1)-A003948(n+1))/2`
-/

namespace A081033.P12207915303255518266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 (n + 1) - A003948 (n + 1) : ℚ) / 2

end

end A081033.P12207915303255518266

namespace A081033

/-- `(A003950(n+1)-A003948(n+1))/2` -/
def P12207915303255518266.Spec : Prop :=
  ∀ n, P12207915303255518266.a n = (A081033 n : ℚ)

end A081033

/-! ## A081033.P14418286541540145444

`Δ[A081200(n)²]/Δ[A081200(n)]`
-/

namespace A081033.P14418286541540145444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A081033.P14418286541540145444

namespace A081033

/-- `Δ[A081200(n)²]/Δ[A081200(n)]` -/
def P14418286541540145444.Spec : Prop :=
  ∀ n, P14418286541540145444.a n = (A081033 n : ℚ)

end A081033

/-!
# A081034: 7th binomial transform of the periodic sequence (1,8,1,1,8,1...).

The programs for A081034, the canonical program `A081034.P15921200494652542051` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081034 has offset 0).

The definition of A081034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081034.P15921200494652542051

`9/2*8^n-7/2*6^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081034

/-- `9/2*8^n-7/2*6^n` -/
def P15921200494652542051.Spec : Prop :=
  ∀ n, P15921200494652542051.a n = (A081034 n : ℚ)

end A081034

/-! ## A081034.P2784632946537264984

`abs(A081201(n)+4*8^n-3*6^n)`
-/

namespace A081034.P2784632946537264984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081201 n + ((4 * 8 ^ n : ℤ) - (3 * 6 ^ n : ℤ))|

end

end A081034.P2784632946537264984

namespace A081034

/-- `abs(A081201(n)+4*8^n-3*6^n)` -/
def P2784632946537264984.Spec : Prop :=
  ∀ n, P2784632946537264984.a n = A081034 n

end A081034

/-! ## A081034.P13147001183800385401

`3*(a(n-1)+A103333(n)+a(n-1))` with `a(0)=1`
-/

namespace A081034.P13147001183800385401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + (A103333 n + a (n - 1)))

end

end A081034.P13147001183800385401

namespace A081034

/-- `3*(a(n-1)+A103333(n)+a(n-1))` -/
def P13147001183800385401.Spec : Prop :=
  ∀ n, P13147001183800385401.a n = A081034 n

end A081034

/-! ## A081034.P8987849761919420997

`(A003951(n+1)-A003949(n+1))/2`
-/

namespace A081034.P8987849761919420997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003951 (n + 1) - A003949 (n + 1) : ℚ) / 2

end

end A081034.P8987849761919420997

namespace A081034

/-- `(A003951(n+1)-A003949(n+1))/2` -/
def P8987849761919420997.Spec : Prop :=
  ∀ n, P8987849761919420997.a n = (A081034 n : ℚ)

end A081034

/-!
# A081035: 8th binomial transform of the periodic sequence (1,9,1,1,9,1...).

The programs for A081035, the canonical program `A081035.P10676189065735272062` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081035 has offset 0).

The definition of A081035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081035.P10676189065735272062

`5*9^n-4*7^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081035

/-- `5*9^n-4*7^n` -/
def P10676189065735272062.Spec : Prop :=
  ∀ n, P10676189065735272062.a n = A081035 n

theorem P10676189065735272062.correct : P10676189065735272062.Spec := by
  intro n
  simp only [A081035]

end A081035

/-! ## A081035.P18339374567268865439

`Δ[A125962(n)-A083076(n)]`
-/

namespace A081035.P18339374567268865439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125962 n - A083076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081035.P18339374567268865439

namespace A081035

/-- `Δ[A125962(n)-A083076(n)]` -/
def P18339374567268865439.Spec : Prop :=
  ∀ n, P18339374567268865439.a n = A081035 n

end A081035

/-! ## A081035.P5928495784133007627

`Δ[A125962(n)-A125823(n+1)]`
-/

namespace A081035.P5928495784133007627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125962 n - A125823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081035.P5928495784133007627

namespace A081035

/-- `Δ[A125962(n)-A125823(n+1)]` -/
def P5928495784133007627.Spec : Prop :=
  ∀ n, P5928495784133007627.a n = A081035 n

end A081035

/-! ## A081035.P12768993411143025752

`abs(A081202(n)+A191681(n+1)-A120741(n+1))`
-/

namespace A081035.P12768993411143025752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081202 n + (A191681 (n + 1) - A120741 (n + 1))|

end

end A081035.P12768993411143025752

namespace A081035

/-- `abs(A081202(n)+A191681(n+1)-A120741(n+1))` -/
def P12768993411143025752.Spec : Prop :=
  ∀ n, P12768993411143025752.a n = A081035 n

end A081035

/-! ## A081035.P2417238132336708347

`(A081202(n)+(9^(n+1)-7^(n+1))/2)%Δ[A016178(n)]`
-/

namespace A081035.P2417238132336708347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A081202 n : ℚ) + ((9 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ) : ℚ) / 2)) (f1 (n + 1) - f1 n)

end

end A081035.P2417238132336708347

namespace A081035

/-- `(A081202(n)+(9^(n+1)-7^(n+1))/2)%Δ[A016178(n)]` -/
def P2417238132336708347.Spec : Prop :=
  ∀ n, P2417238132336708347.a n = A081035 n

end A081035

/-! ## A081035.P694271084671512582

`Δ[A081202(n)²]/Δ[A081202(n)]`
-/

namespace A081035.P694271084671512582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A081035.P694271084671512582

namespace A081035

/-- `Δ[A081202(n)²]/Δ[A081202(n)]` -/
def P694271084671512582.Spec : Prop :=
  ∀ n, P694271084671512582.a n = (A081035 n : ℚ)

end A081035

/-!
# A081036: 9th binomial transform of the periodic sequence (1,10,1,1,10,1...).

The programs for A081036, the canonical program `A081036.P6348273773082067338` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081036 has offset 0).

The definition of A081036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081036.P6348273773082067338

`11/2*10^n-9/2*8^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081036

/-- `11/2*10^n-9/2*8^n` -/
def P6348273773082067338.Spec : Prop :=
  ∀ n, P6348273773082067338.a n = (A081036 n : ℚ)

end A081036

/-! ## A081036.P4736960561659813889

`abs(A016186(n)+(10^n-8^n)/2)`
-/

namespace A081036.P4736960561659813889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A016186 n : ℚ) + ((10 ^ n : ℤ) - (8 ^ n : ℤ) : ℚ) / 2|

end

end A081036.P4736960561659813889

namespace A081036

/-- `abs(A016186(n)+(10^n-8^n)/2)` -/
def P4736960561659813889.Spec : Prop :=
  ∀ n, P4736960561659813889.a n = (A081036 n : ℚ)

end A081036

/-! ## A081036.P5445948388351043407

`abs(5*10^n-4*8^n+A060531(n)-A001018(n))`
-/

namespace A081036.P5445948388351043407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * 10 ^ n : ℤ) - (4 * 8 ^ n : ℤ) + (A060531 n - A001018 n)|

end

end A081036.P5445948388351043407

namespace A081036

/-- `abs(5*10^n-4*8^n+A060531(n)-A001018(n))` -/
def P5445948388351043407.Spec : Prop :=
  ∀ n, P5445948388351043407.a n = A081036 n

end A081036

/-! ## A081036.P5801616144564738667

`abs(5*10^n-4*8^n+A081343(n)-A081337(n))`
-/

namespace A081036.P5801616144564738667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * 10 ^ n : ℤ) - (4 * 8 ^ n : ℤ) + (A081343 n - A081337 n)|

end

end A081036.P5801616144564738667

namespace A081036

/-- `abs(5*10^n-4*8^n+A081343(n)-A081337(n))` -/
def P5801616144564738667.Spec : Prop :=
  ∀ n, P5801616144564738667.a n = A081036 n

end A081036

/-! ## A081036.P11343125760730104986

`abs(∑{e}[A020639(n+1), 2^(n-#)]*A005060(n)+5*10^n-4*8^n)`
-/

namespace A081036.P11343125760730104986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 : ℚ) ^ ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ) : ℤ)) * (A005060 n : ℚ) + ((5 * 10 ^ n : ℤ) - (4 * 8 ^ n : ℤ) : ℚ)|

end

end A081036.P11343125760730104986

namespace A081036

/-- `abs(∑{e}[A020639(n+1), 2^(n-#)]*A005060(n)+5*10^n-4*8^n)` -/
def P11343125760730104986.Spec : Prop :=
  ∀ n, P11343125760730104986.a n = (A081036 n : ℚ)

end A081036

/-! ## A081036.P2485789125330392047

`Δ[∑[A248343(n)]-A081203(n)]`
-/

namespace A081036.P2485789125330392047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A081203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081036.P2485789125330392047

namespace A081036

/-- `Δ[∑[A248343(n)]-A081203(n)]` -/
def P2485789125330392047.Spec : Prop :=
  ∀ n, P2485789125330392047.a n = A081036 n

end A081036

/-!
# A081037: Inverse binary transform of A027656.

The programs for A081037, the canonical program `A081037.P705399685085553460` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081037 has offset 0).

The definition of A081037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081037.P8998305646133977430

`ogf((1+3x+3x^2+x^3)/(1+4x+4x^2))`
-/

namespace A081037.P8998305646133977430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 1] [1, 4, 4] n

end

end A081037.P8998305646133977430

namespace A081037

/-- `ogf((1+3x+3x^2+x^3)/(1+4x+4x^2))` -/
def P8998305646133977430.Spec : Prop :=
  ∀ n, P8998305646133977430.a n = A081037 n

end A081037

/-! ## A081037.P705399685085553460

`(-1)^n*A045891(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081037

/-- `(-1)^n*A045891(n)` -/
def P705399685085553460.Spec : Prop :=
  ∀ n, P705399685085553460.a n = A081037 n

theorem P705399685085553460.correct : P705399685085553460.Spec := by
  intro n
  simp only [A081037]

end A081037

/-! ## A081037.P13248940722128047518

`(-1)^n*∑[A034007(n)]`
-/

namespace A081037.P13248940722128047518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081037.P13248940722128047518

namespace A081037

/-- `(-1)^n*∑[A034007(n)]` -/
def P13248940722128047518.Spec : Prop :=
  ∀ n, P13248940722128047518.a n = A081037 n

end A081037

/-! ## A081037.P3260727545183860516

`A084633(n)-A168150(n)`
-/

namespace A081037.P3260727545183860516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n - A168150 n

end

end A081037.P3260727545183860516

namespace A081037

/-- `A084633(n)-A168150(n)` -/
def P3260727545183860516.Spec : Prop :=
  ∀ n, P3260727545183860516.a n = A081037 n

end A081037

/-! ## A081037.P6278612999142772358

`A045891(n)/A033999(n)`
-/

namespace A081037.P6278612999142772358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045891 n : ℚ) / (A033999 n : ℚ)

end

end A081037.P6278612999142772358

namespace A081037

/-- `A045891(n)/A033999(n)` -/
def P6278612999142772358.Spec : Prop :=
  ∀ n, P6278612999142772358.a n = (A081037 n : ℚ)

end A081037

/-! ## A081037.P16989361158319760883

`A131352(n)/A280560(n)`
-/

namespace A081037.P16989361158319760883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131352 n : ℚ) / (A280560 n : ℚ)

end

end A081037.P16989361158319760883

namespace A081037

/-- `A131352(n)/A280560(n)` -/
def P16989361158319760883.Spec : Prop :=
  ∀ n, P16989361158319760883.a n = (A081037 n : ℚ)

end A081037

/-! ## A081037.P16541076478184752648

`A045891(n)*A186111(n+1)/A186813(n+1)`
-/

namespace A081037.P16541076478184752648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045891 n * A186111 (n + 1) : ℚ) / (A186813 (n + 1) : ℚ)

end

end A081037.P16541076478184752648

namespace A081037

/-- `A045891(n)*A186111(n+1)/A186813(n+1)` -/
def P16541076478184752648.Spec : Prop :=
  ∀ n, P16541076478184752648.a n = (A081037 n : ℚ)

end A081037

/-!
# A081038: 3rd binomial transform of (1,2,0,0,0,0,0,0,...).

The programs for A081038, the canonical program `A081038.P1359929740942902440` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081038 has offset 0).

The definition of A081038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081038.P1226341152525968264

`(2*n+3)*3^(n-1)`
-/

namespace A081038.P1226341152525968264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081038.P1226341152525968264

namespace A081038

/-- `(2*n+3)*3^(n-1)` -/
def P1226341152525968264.Spec : Prop :=
  ∀ n, P1226341152525968264.a n = (A081038 n : ℚ)

theorem P1226341152525968264.correct : P1226341152525968264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081038, Nat.add_sub_cancel, A081038.P1226341152525968264.a, A081038.P1359929740942902440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081038, Nat.add_sub_cancel, A081038.P1226341152525968264.a, A081038.P1359929740942902440.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A081038

/-! ## A081038.P12157126431053385790

`2*A086972(n)-1`
-/

namespace A081038.P12157126431053385790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086972 n - 1

end

end A081038.P12157126431053385790

namespace A081038

/-- `2*A086972(n)-1` -/
def P12157126431053385790.Spec : Prop :=
  ∀ n, P12157126431053385790.a n = A081038 n

end A081038

/-! ## A081038.P1359929740942902440

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081038

/-- `6*a(n-1)-9*a(n-2)` -/
def P1359929740942902440.Spec : Prop :=
  ∀ n, P1359929740942902440.a n = A081038 n

theorem P1359929740942902440.correct : P1359929740942902440.Spec := by
  intro n
  simp only [A081038]

end A081038

/-! ## A081038.P1615141073959601123

`ogf((1-x)/(1-6x+9x^2))`
-/

namespace A081038.P1615141073959601123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 9] n

end

end A081038.P1615141073959601123

namespace A081038

/-- `ogf((1-x)/(1-6x+9x^2))` -/
def P1615141073959601123.Spec : Prop :=
  ∀ n, P1615141073959601123.a n = A081038 n

end A081038

/-! ## A081038.P748747894448698869

`∑[3*a(n-1)*ratio[n+1]]` with `a(0)=1, a(1)=4`
-/

namespace A081038.P748747894448698869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * (f1 (n - 1) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081038.P748747894448698869

namespace A081038

/-- `∑[3*a(n-1)*ratio[n+1]]` -/
def P748747894448698869.Spec : Prop :=
  ∀ n, P748747894448698869.a n = (A081038 n : ℚ)

end A081038

/-! ## A081038.P2217583892997304948

`∑[A120926(n+1)]`
-/

namespace A081038.P2217583892997304948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081038.P2217583892997304948

namespace A081038

/-- `∑[A120926(n+1)]` -/
def P2217583892997304948.Spec : Prop :=
  ∀ n, P2217583892997304948.a n = A081038 n

end A081038

/-! ## A081038.P7549931771336388668

`4*A392266(n)+1`
-/

namespace A081038.P7549931771336388668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A392266 n + 1

end

end A081038.P7549931771336388668

namespace A081038

/-- `4*A392266(n)+1` -/
def P7549931771336388668.Spec : Prop :=
  ∀ n, P7549931771336388668.a n = A081038 n

end A081038

/-! ## A081038.P1104611189288187225

`∑[2*A199923(n)]-1`
-/

namespace A081038.P1104611189288187225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081038.P1104611189288187225

namespace A081038

/-- `∑[2*A199923(n)]-1` -/
def P1104611189288187225.Spec : Prop :=
  ∀ n, P1104611189288187225.a n = A081038 n

end A081038

/-! ## A081038.P17204849762436769349

`2*Δ[A082133(n)]-1`
-/

namespace A081038.P17204849762436769349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A081038.P17204849762436769349

namespace A081038

/-- `2*Δ[A082133(n)]-1` -/
def P17204849762436769349.Spec : Prop :=
  ∀ n, P17204849762436769349.a n = A081038 n

end A081038

/-! ## A081038.P16553627114301002470

`A199923(n+1)-3^n`
-/

namespace A081038.P16553627114301002470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199923 (n + 1) - (3 ^ n : ℤ)

end

end A081038.P16553627114301002470

namespace A081038

/-- `A199923(n+1)-3^n` -/
def P16553627114301002470.Spec : Prop :=
  ∀ n, P16553627114301002470.a n = A081038 n

end A081038

/-! ## A081038.P2333833089262683460

`A084859(n)+A001047(n)`
-/

namespace A081038.P2333833089262683460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084859 n + A001047 n

end

end A081038.P2333833089262683460

namespace A081038

/-- `A084859(n)+A001047(n)` -/
def P2333833089262683460.Spec : Prop :=
  ∀ n, P2333833089262683460.a n = A081038 n

end A081038

/-! ## A081038.P1869422823699877720

`A084643(n)+A056182(n)`
-/

namespace A081038.P1869422823699877720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084643 n + A056182 n

end

end A081038.P1869422823699877720

namespace A081038

/-- `A084643(n)+A056182(n)` -/
def P1869422823699877720.Spec : Prop :=
  ∀ n, P1869422823699877720.a n = A081038 n

end A081038

/-! ## A081038.P3703595410914474092

`A140320(n)+A024023(n)`
-/

namespace A081038.P3703595410914474092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140320 n + A024023 n

end

end A081038.P3703595410914474092

namespace A081038

/-- `A140320(n)+A024023(n)` -/
def P3703595410914474092.Spec : Prop :=
  ∀ n, P3703595410914474092.a n = A081038 n

end A081038

/-! ## A081038.P906788102767364655

`A140429(n)+A027261(n)`
-/

namespace A081038.P906788102767364655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A027261 n

end

end A081038.P906788102767364655

namespace A081038

/-- `A140429(n)+A027261(n)` -/
def P906788102767364655.Spec : Prop :=
  ∀ n, P906788102767364655.a n = A081038 n

end A081038

/-! ## A081038.P17019223224002146706

`A229277(n)+A025192(n)`
-/

namespace A081038.P17019223224002146706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n + A025192 n

end

end A081038.P17019223224002146706

namespace A081038

/-- `A229277(n)+A025192(n)` -/
def P17019223224002146706.Spec : Prop :=
  ∀ n, P17019223224002146706.a n = A081038 n

end A081038

/-! ## A081038.P8511204726610081920

`A229277(n)+∑[A052156(n)]`
-/

namespace A081038.P8511204726610081920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081038.P8511204726610081920

namespace A081038

/-- `A229277(n)+∑[A052156(n)]` -/
def P8511204726610081920.Spec : Prop :=
  ∀ n, P8511204726610081920.a n = A081038 n

end A081038

/-! ## A081038.P17114594862441583879

`A119916(n+1)+A119916(n)`
-/

namespace A081038.P17114594862441583879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119916 (n + 1) + A119916 n

end

end A081038.P17114594862441583879

namespace A081038

/-- `A119916(n+1)+A119916(n)` -/
def P17114594862441583879.Spec : Prop :=
  ∀ n, P17114594862441583879.a n = A081038 n

end A081038

/-! ## A081038.P6940463710466583990

`A084643(n)+2*A001047(n)`
-/

namespace A081038.P6940463710466583990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084643 n + 2 * A001047 n

end

end A081038.P6940463710466583990

namespace A081038

/-- `A084643(n)+2*A001047(n)` -/
def P6940463710466583990.Spec : Prop :=
  ∀ n, P6940463710466583990.a n = A081038 n

end A081038

/-! ## A081038.P279903794711859027

`A229277(n)+A182522(2*n)`
-/

namespace A081038.P279903794711859027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n + A182522 (2 * n)

end

end A081038.P279903794711859027

namespace A081038

/-- `A229277(n)+A182522(2*n)` -/
def P279903794711859027.Spec : Prop :=
  ∀ n, P279903794711859027.a n = A081038 n

end A081038

/-! ## A081038.P1438646559342484279

`A000244(n)+n*A025192(n)`
-/

namespace A081038.P1438646559342484279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (n : ℤ) * A025192 n

end

end A081038.P1438646559342484279

namespace A081038

/-- `A000244(n)+n*A025192(n)` -/
def P1438646559342484279.Spec : Prop :=
  ∀ n, P1438646559342484279.a n = A081038 n

end A081038

/-!
# A081039: 4th binomial transform of (1,3,0,0,0,0,0,.....).

The programs for A081039, the canonical program `A081039.P1369208469889220478` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081039 has offset 0).

The definition of A081039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081039.P12528373654402906168

`(3*n+4)*4^(n-1)`
-/

namespace A081039.P12528373654402906168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081039.P12528373654402906168

namespace A081039

/-- `(3*n+4)*4^(n-1)` -/
def P12528373654402906168.Spec : Prop :=
  ∀ n, P12528373654402906168.a n = (A081039 n : ℚ)

theorem P12528373654402906168.correct : P12528373654402906168.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081039, Nat.add_sub_cancel, A081039.P12528373654402906168.a, A081039.P1369208469889220478.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081039, Nat.add_sub_cancel, A081039.P12528373654402906168.a, A081039.P1369208469889220478.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A081039

/-! ## A081039.P1369208469889220478

`8*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081039

/-- `8*a(n-1)-16*a(n-2)` -/
def P1369208469889220478.Spec : Prop :=
  ∀ n, P1369208469889220478.a n = A081039 n

theorem P1369208469889220478.correct : P1369208469889220478.Spec := by
  intro n
  simp only [A081039]

end A081039

/-! ## A081039.P792503382445976449

`ogf((1-x)/(1-8x+16x^2))`
-/

namespace A081039.P792503382445976449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8, 16] n

end

end A081039.P792503382445976449

namespace A081039

/-- `ogf((1-x)/(1-8x+16x^2))` -/
def P792503382445976449.Spec : Prop :=
  ∀ n, P792503382445976449.a n = A081039 n

end A081039

/-! ## A081039.P369209507000234582

`Δ[4^(n-1)]+a(n-1)/(1/2)²` with `a(0)=1`
-/

namespace A081039.P369209507000234582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A081039.P369209507000234582

namespace A081039

/-- `Δ[4^(n-1)]+a(n-1)/(1/2)²` -/
def P369209507000234582.Spec : Prop :=
  ∀ n, P369209507000234582.a n = (A081039 n : ℚ)

end A081039

/-! ## A081039.P4768499861729013447

`Δ[A002697(n)]`
-/

namespace A081039.P4768499861729013447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P4768499861729013447

namespace A081039

/-- `Δ[A002697(n)]` -/
def P4768499861729013447.Spec : Prop :=
  ∀ n, P4768499861729013447.a n = A081039 n

end A081039

/-! ## A081039.P3099327140391610570

`A106472(2*n)`
-/

namespace A081039.P3099327140391610570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 (2 * n)

end

end A081039.P3099327140391610570

namespace A081039

/-- `A106472(2*n)` -/
def P3099327140391610570.Spec : Prop :=
  ∀ n, P3099327140391610570.a n = A081039 n

end A081039

/-! ## A081039.P1037641492138747976

`Δ[record[A235789(n)]]`
-/

namespace A081039.P1037641492138747976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P1037641492138747976

namespace A081039

/-- `Δ[record[A235789(n)]]` -/
def P1037641492138747976.Spec : Prop :=
  ∀ n, P1037641492138747976.a n = A081039 n

end A081039

/-! ## A081039.P6190364030754187558

`Δ[A049610(2*n)]`
-/

namespace A081039.P6190364030754187558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P6190364030754187558

namespace A081039

/-- `Δ[A049610(2*n)]` -/
def P6190364030754187558.Spec : Prop :=
  ∀ n, P6190364030754187558.a n = A081039 n

end A081039

/-! ## A081039.P4498494038073067273

`Δ[abs(A168150(2*n))]`
-/

namespace A081039.P4498494038073067273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168150 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P4498494038073067273

namespace A081039

/-- `Δ[abs(A168150(2*n))]` -/
def P4498494038073067273.Spec : Prop :=
  ∀ n, P4498494038073067273.a n = A081039 n

end A081039

/-! ## A081039.P13348438739145060462

`Δ[n*A011782(n)²]`
-/

namespace A081039.P13348438739145060462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P13348438739145060462

namespace A081039

/-- `Δ[n*A011782(n)²]` -/
def P13348438739145060462.Spec : Prop :=
  ∀ n, P13348438739145060462.a n = A081039 n

end A081039

/-! ## A081039.P4234159798586735677

`Δ[n*A123344(n)²]`
-/

namespace A081039.P4234159798586735677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123344 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P4234159798586735677

namespace A081039

/-- `Δ[n*A123344(n)²]` -/
def P4234159798586735677.Spec : Prop :=
  ∀ n, P4234159798586735677.a n = A081039 n

end A081039

/-! ## A081039.P15622412068316427032

`Δ[n*A131577(n)²]`
-/

namespace A081039.P15622412068316427032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131577 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P15622412068316427032

namespace A081039

/-- `Δ[n*A131577(n)²]` -/
def P15622412068316427032.Spec : Prop :=
  ∀ n, P15622412068316427032.a n = A081039 n

end A081039

/-! ## A081039.P6393208676415559108

`Δ[n*A154589(n)²]`
-/

namespace A081039.P6393208676415559108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A154589 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P6393208676415559108

namespace A081039

/-- `Δ[n*A154589(n)²]` -/
def P6393208676415559108.Spec : Prop :=
  ∀ n, P6393208676415559108.a n = A081039 n

end A081039

/-! ## A081039.P3664349490250780360

`Δ[n*A157823(n)²]`
-/

namespace A081039.P3664349490250780360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157823 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P3664349490250780360

namespace A081039

/-- `Δ[n*A157823(n)²]` -/
def P3664349490250780360.Spec : Prop :=
  ∀ n, P3664349490250780360.a n = A081039 n

end A081039

/-! ## A081039.P11916311924462606262

`Δ[n*A141531(2*n)]`
-/

namespace A081039.P11916311924462606262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141531 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P11916311924462606262

namespace A081039

/-- `Δ[n*A141531(2*n)]` -/
def P11916311924462606262.Spec : Prop :=
  ∀ n, P11916311924462606262.a n = A081039 n

end A081039

/-! ## A081039.P18043981837951492632

`Δ[n*A034008(n+1)²]`
-/

namespace A081039.P18043981837951492632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A034008 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P18043981837951492632

namespace A081039

/-- `Δ[n*A034008(n+1)²]` -/
def P18043981837951492632.Spec : Prop :=
  ∀ n, P18043981837951492632.a n = A081039 n

end A081039

/-! ## A081039.P17005094152637118449

`Δ[n*A166444(n+1)²]`
-/

namespace A081039.P17005094152637118449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166444 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081039.P17005094152637118449

namespace A081039

/-- `Δ[n*A166444(n+1)²]` -/
def P17005094152637118449.Spec : Prop :=
  ∀ n, P17005094152637118449.a n = A081039 n

end A081039

/-! ## A081039.P3113308938414913884

`abs(Δ[abs(n/2*A009117(n))])`
-/

namespace A081039.P3113308938414913884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A009117 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081039.P3113308938414913884

namespace A081039

/-- `abs(Δ[abs(n/2*A009117(n))])` -/
def P3113308938414913884.Spec : Prop :=
  ∀ n, P3113308938414913884.a n = (A081039 n : ℚ)

end A081039

/-! ## A081039.P1526725305673772535

`A079028(n)+A002699(n)`
-/

namespace A081039.P1526725305673772535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079028 n + A002699 n

end

end A081039.P1526725305673772535

namespace A081039

/-- `A079028(n)+A002699(n)` -/
def P1526725305673772535.Spec : Prop :=
  ∀ n, P1526725305673772535.a n = A081039 n

end A081039

/-! ## A081039.P4962181420251169615

`A086091(n)+A005061(n)`
-/

namespace A081039.P4962181420251169615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086091 n + A005061 n

end

end A081039.P4962181420251169615

namespace A081039

/-- `A086091(n)+A005061(n)` -/
def P4962181420251169615.Spec : Prop :=
  ∀ n, P4962181420251169615.a n = A081039 n

end A081039

/-!
# A081040: 5th binomial transform of (1,4,0,0,0,0,...).

The programs for A081040, the canonical program `A081040.P7680930885365442905` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081040 has offset 0).

The definition of A081040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081040.P8244091076024650707

`(4*n+5)*5^(n-1)`
-/

namespace A081040.P8244091076024650707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081040.P8244091076024650707

namespace A081040

/-- `(4*n+5)*5^(n-1)` -/
def P8244091076024650707.Spec : Prop :=
  ∀ n, P8244091076024650707.a n = (A081040 n : ℚ)

theorem P8244091076024650707.correct : P8244091076024650707.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081040, Nat.add_sub_cancel, A081040.P8244091076024650707.a, A081040.P7680930885365442905.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081040, Nat.add_sub_cancel, A081040.P8244091076024650707.a, A081040.P7680930885365442905.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A081040

/-! ## A081040.P7680930885365442905

`10*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081040

/-- `10*a(n-1)-25*a(n-2)` -/
def P7680930885365442905.Spec : Prop :=
  ∀ n, P7680930885365442905.a n = A081040 n

theorem P7680930885365442905.correct : P7680930885365442905.Spec := by
  intro n
  simp only [A081040]

end A081040

/-! ## A081040.P480394804986869998

`ogf((1-x)/(1-10x+25x^2))`
-/

namespace A081040.P480394804986869998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -10, 25] n

end

end A081040.P480394804986869998

namespace A081040

/-- `ogf((1-x)/(1-10x+25x^2))` -/
def P480394804986869998.Spec : Prop :=
  ∀ n, P480394804986869998.a n = A081040 n

end A081040

/-! ## A081040.P13103781766085731980

`Δ[5^(n-1)]+a(n-1)/(1-4/5)` with `a(0)=1`
-/

namespace A081040.P13103781766085731980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A081040.P13103781766085731980

namespace A081040

/-- `Δ[5^(n-1)]+a(n-1)/(1-4/5)` -/
def P13103781766085731980.Spec : Prop :=
  ∀ n, P13103781766085731980.a n = (A081040 n : ℚ)

end A081040

/-! ## A081040.P587652419822436778

`A000351(n)+n*A005054(n)`
-/

namespace A081040.P587652419822436778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + (n : ℤ) * A005054 n

end

end A081040.P587652419822436778

namespace A081040

/-- `A000351(n)+n*A005054(n)` -/
def P587652419822436778.Spec : Prop :=
  ∀ n, P587652419822436778.a n = A081040 n

end A081040

/-! ## A081040.P17856893174556231835

`A026383(2*n)+n*A026395(2*n)`
-/

namespace A081040.P17856893174556231835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (2 * n) + (n : ℤ) * A026395 (2 * n)

end

end A081040.P17856893174556231835

namespace A081040

/-- `A026383(2*n)+n*A026395(2*n)` -/
def P17856893174556231835.Spec : Prop :=
  ∀ n, P17856893174556231835.a n = A081040 n

end A081040

/-! ## A081040.P5996812445352953186

`A056487(2*n)+n*A026395(2*n)`
-/

namespace A081040.P5996812445352953186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (2 * n) + (n : ℤ) * A026395 (2 * n)

end

end A081040.P5996812445352953186

namespace A081040

/-- `A056487(2*n)+n*A026395(2*n)` -/
def P5996812445352953186.Spec : Prop :=
  ∀ n, P5996812445352953186.a n = A081040 n

end A081040

/-! ## A081040.P8471098718940714629

`A133632(2*n+1)+n*A026395(2*n)`
-/

namespace A081040.P8471098718940714629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (2 * n + 1) + (n : ℤ) * A026395 (2 * n)

end

end A081040.P8471098718940714629

namespace A081040

/-- `A133632(2*n+1)+n*A026395(2*n)` -/
def P8471098718940714629.Spec : Prop :=
  ∀ n, P8471098718940714629.a n = A081040 n

end A081040

/-! ## A081040.P907261243719301038

`Δ[A053464(n)]`
-/

namespace A081040.P907261243719301038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081040.P907261243719301038

namespace A081040

/-- `Δ[A053464(n)]` -/
def P907261243719301038.Spec : Prop :=
  ∀ n, P907261243719301038.a n = A081040 n

end A081040

/-! ## A081040.P16416345657284357984

`Δ[n/2*A020699(n)]`
-/

namespace A081040.P16416345657284357984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A020699 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081040.P16416345657284357984

namespace A081040

/-- `Δ[n/2*A020699(n)]` -/
def P16416345657284357984.Spec : Prop :=
  ∀ n, P16416345657284357984.a n = (A081040 n : ℚ)

end A081040

/-! ## A081040.P1628554887239793119

`A053464(n+1)-A053464(n)`
-/

namespace A081040.P1628554887239793119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 (n + 1) - A053464 n

end

end A081040.P1628554887239793119

namespace A081040

/-- `A053464(n+1)-A053464(n)` -/
def P1628554887239793119.Spec : Prop :=
  ∀ n, P1628554887239793119.a n = A081040 n

end A081040

/-! ## A081040.P6905761117501186887

`n*A000351(n)-(A053464(n)-A000351(n))`
-/

namespace A081040.P6905761117501186887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000351 n - (A053464 n - A000351 n)

end

end A081040.P6905761117501186887

namespace A081040

/-- `n*A000351(n)-(A053464(n)-A000351(n))` -/
def P6905761117501186887.Spec : Prop :=
  ∀ n, P6905761117501186887.a n = A081040 n

end A081040

/-! ## A081040.P17953200879960448748

`Δ[A050916(n)/5]`
-/

namespace A081040.P17953200879960448748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050916 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081040.P17953200879960448748

namespace A081040

/-- `Δ[A050916(n)/5]` -/
def P17953200879960448748.Spec : Prop :=
  ∀ n, P17953200879960448748.a n = (A081040 n : ℚ)

end A081040

/-! ## A081040.P6324573504975413447

`A193727(∑[n+1]+1)`
-/

namespace A081040.P6324573504975413447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193727 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081040.P6324573504975413447

namespace A081040

/-- `A193727(∑[n+1]+1)` -/
def P6324573504975413447.Spec : Prop :=
  ∀ n, P6324573504975413447.a n = A081040 n

end A081040

/-! ## A081040.P9389911007357320553

`A193726(∑[n+2]-1)`
-/

namespace A081040.P9389911007357320553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A081040.P9389911007357320553

namespace A081040

/-- `A193726(∑[n+2]-1)` -/
def P9389911007357320553.Spec : Prop :=
  ∀ n, P9389911007357320553.a n = A081040 n

end A081040

/-! ## A081040.P5297969712261025831

`Δ[n/A000079(n)*A093136(n)]`
-/

namespace A081040.P5297969712261025831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000079 n : ℚ) * (A093136 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081040.P5297969712261025831

namespace A081040

/-- `Δ[n/A000079(n)*A093136(n)]` -/
def P5297969712261025831.Spec : Prop :=
  ∀ n, P5297969712261025831.a n = (A081040 n : ℚ)

end A081040

/-!
# A081041: 6th binomial transform of (1,5,0,0,0,0,0,0,...).

The programs for A081041, the canonical program `A081041.P9423751226135385551` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081041 has offset 0).

The definition of A081041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081041.P10245603716231086739

`(5*n+6)*6^(n-1)`
-/

namespace A081041.P10245603716231086739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n + 6 : ℚ) * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081041.P10245603716231086739

namespace A081041

/-- `(5*n+6)*6^(n-1)` -/
def P10245603716231086739.Spec : Prop :=
  ∀ n, P10245603716231086739.a n = (A081041 n : ℚ)

theorem P10245603716231086739.correct : P10245603716231086739.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081041, Nat.add_sub_cancel, A081041.P10245603716231086739.a, A081041.P9423751226135385551.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081041, Nat.add_sub_cancel, A081041.P10245603716231086739.a, A081041.P9423751226135385551.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A081041

/-! ## A081041.P9423751226135385551

`12*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081041

/-- `12*a(n-1)-36*a(n-2)` -/
def P9423751226135385551.Spec : Prop :=
  ∀ n, P9423751226135385551.a n = A081041 n

theorem P9423751226135385551.correct : P9423751226135385551.Spec := by
  intro n
  simp only [A081041]

end A081041

/-! ## A081041.P5077863901907470300

`6^n+n*A052934(n)`
-/

namespace A081041.P5077863901907470300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) + (n : ℤ) * A052934 n

end

end A081041.P5077863901907470300

namespace A081041

/-- `6^n+n*A052934(n)` -/
def P5077863901907470300.Spec : Prop :=
  ∀ n, P5077863901907470300.a n = A081041 n

end A081041

/-! ## A081041.P18305938212650045675

`Δ[A011782(n)*A027471(n+1)]`
-/

namespace A081041.P18305938212650045675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A027471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081041.P18305938212650045675

namespace A081041

/-- `Δ[A011782(n)*A027471(n+1)]` -/
def P18305938212650045675.Spec : Prop :=
  ∀ n, P18305938212650045675.a n = A081041 n

end A081041

/-! ## A081041.P12582712191898285484

`Δ[A027471(n+1)*A131577(n)]`
-/

namespace A081041.P12582712191898285484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081041.P12582712191898285484

namespace A081041

/-- `Δ[A027471(n+1)*A131577(n)]` -/
def P12582712191898285484.Spec : Prop :=
  ∀ n, P12582712191898285484.a n = A081041 n

end A081041

/-! ## A081041.P438651179520792014

`Δ[A050917(n)/6]`
-/

namespace A081041.P438651179520792014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050917 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081041.P438651179520792014

namespace A081041

/-- `Δ[A050917(n)/6]` -/
def P438651179520792014.Spec : Prop :=
  ∀ n, P438651179520792014.a n = (A081041 n : ℚ)

end A081041

/-! ## A081041.P10983095445164406975

`A396158(∑[4*n])`
-/

namespace A081041.P10983095445164406975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081041.P10983095445164406975

namespace A081041

/-- `A396158(∑[4*n])` -/
def P10983095445164406975.Spec : Prop :=
  ∀ n, P10983095445164406975.a n = A081041 n

end A081041

/-!
# A081042: 7th binomial transform of (1,6,0,0,0,0,0,0,...).

The programs for A081042, the canonical program `A081042.P16499635649780765402` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081042 has offset 0).

The definition of A081042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081042.P12130831779988511602

`(6*n+7)*7^(n-1)`
-/

namespace A081042.P12130831779988511602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n + 7 : ℚ) * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081042.P12130831779988511602

namespace A081042

/-- `(6*n+7)*7^(n-1)` -/
def P12130831779988511602.Spec : Prop :=
  ∀ n, P12130831779988511602.a n = (A081042 n : ℚ)

theorem P12130831779988511602.correct : P12130831779988511602.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081042, Nat.add_sub_cancel, A081042.P12130831779988511602.a, A081042.P16499635649780765402.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081042, Nat.add_sub_cancel, A081042.P12130831779988511602.a, A081042.P16499635649780765402.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A081042

/-! ## A081042.P16499635649780765402

`14*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081042

/-- `14*a(n-1)-49*a(n-2)` -/
def P16499635649780765402.Spec : Prop :=
  ∀ n, P16499635649780765402.a n = A081042 n

theorem P16499635649780765402.correct : P16499635649780765402.Spec := by
  intro n
  simp only [A081042]

end A081042

/-! ## A081042.P15177864410988894863

`Δ[n*A270471(n)]/4`
-/

namespace A081042.P15177864410988894863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270471 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A081042.P15177864410988894863

namespace A081042

/-- `Δ[n*A270471(n)]/4` -/
def P15177864410988894863.Spec : Prop :=
  ∀ n, P15177864410988894863.a n = (A081042 n : ℚ)

end A081042

/-! ## A081042.P18173087113172117794

`A055272(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A081042.P18173087113172117794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055272 n + 7 * a (n - 1)

end

end A081042.P18173087113172117794

namespace A081042

/-- `A055272(n)+7*a(n-1)` -/
def P18173087113172117794.Spec : Prop :=
  ∀ n, P18173087113172117794.a n = A081042 n

end A081042

/-! ## A081042.P6808521295215296971

`A000420(n)+n*A055272(n)`
-/

namespace A081042.P6808521295215296971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + (n : ℤ) * A055272 n

end

end A081042.P6808521295215296971

namespace A081042

/-- `A000420(n)+n*A055272(n)` -/
def P6808521295215296971.Spec : Prop :=
  ∀ n, P6808521295215296971.a n = A081042 n

end A081042

/-! ## A081042.P9469014681737982753

`A055272(n)+7*floor(a(A023443(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081042.P9469014681737982753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055272 n + 7 * a (A023443 n).toNat

end

end A081042.P9469014681737982753

namespace A081042

/-- `A055272(n)+7*floor(a(A023443(n)))` -/
def P9469014681737982753.Spec : Prop :=
  ∀ n, P9469014681737982753.a n = A081042 n

end A081042

/-! ## A081042.P11995894421213782040

`Δ[A036293(n)/7]`
-/

namespace A081042.P11995894421213782040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036293 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081042.P11995894421213782040

namespace A081042

/-- `Δ[A036293(n)/7]` -/
def P11995894421213782040.Spec : Prop :=
  ∀ n, P11995894421213782040.a n = (A081042 n : ℚ)

end A081042

/-! ## A081042.P2238911440793882793

`Δ[A050919(n)/7]`
-/

namespace A081042.P2238911440793882793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050919 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081042.P2238911440793882793

namespace A081042

/-- `Δ[A050919(n)/7]` -/
def P2238911440793882793.Spec : Prop :=
  ∀ n, P2238911440793882793.a n = (A081042 n : ℚ)

end A081042

/-! ## A081042.P17724139815721762284

`Δ[A270111(n+1)]/8`
-/

namespace A081042.P17724139815721762284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270111 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 8

end

end A081042.P17724139815721762284

namespace A081042

/-- `Δ[A270111(n+1)]/8` -/
def P17724139815721762284.Spec : Prop :=
  ∀ n, P17724139815721762284.a n = (A081042 n : ℚ)

end A081042

/-!
# A081043: 8th binomial transform of (1,7,0,0,0,0,0,...).

The programs for A081043, the canonical program `A081043.P2274608152886810755` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081043 has offset 0).

The definition of A081043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081043.P18158073696369758515

`(7*n+8)*8^(n-1)`
-/

namespace A081043.P18158073696369758515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n + 8 : ℚ) * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081043.P18158073696369758515

namespace A081043

/-- `(7*n+8)*8^(n-1)` -/
def P18158073696369758515.Spec : Prop :=
  ∀ n, P18158073696369758515.a n = (A081043 n : ℚ)

theorem P18158073696369758515.correct : P18158073696369758515.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081043, Nat.add_sub_cancel, A081043.P18158073696369758515.a, A081043.P2274608152886810755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081043, Nat.add_sub_cancel, A081043.P18158073696369758515.a, A081043.P2274608152886810755.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A081043

/-! ## A081043.P2274608152886810755

`16*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081043

/-- `16*a(n-1)-64*a(n-2)` -/
def P2274608152886810755.Spec : Prop :=
  ∀ n, P2274608152886810755.a n = A081043 n

theorem P2274608152886810755.correct : P2274608152886810755.Spec := by
  intro n
  simp only [A081043]

end A081043

/-! ## A081043.P8206775234751809777

`Δ[A053539(n)]`
-/

namespace A081043.P8206775234751809777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081043.P8206775234751809777

namespace A081043

/-- `Δ[A053539(n)]` -/
def P8206775234751809777.Spec : Prop :=
  ∀ n, P8206775234751809777.a n = A081043 n

end A081043

/-! ## A081043.P1660995603718445891

`A055274(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A081043.P1660995603718445891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055274 n + 8 * a (n - 1)

end

end A081043.P1660995603718445891

namespace A081043

/-- `A055274(n)+8*a(n-1)` -/
def P1660995603718445891.Spec : Prop :=
  ∀ n, P1660995603718445891.a n = A081043 n

end A081043

/-! ## A081043.P900229839288868374

`Δ[A002697(n)*A011782(n)]`
-/

namespace A081043.P900229839288868374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081043.P900229839288868374

namespace A081043

/-- `Δ[A002697(n)*A011782(n)]` -/
def P900229839288868374.Spec : Prop :=
  ∀ n, P900229839288868374.a n = A081043 n

end A081043

/-! ## A081043.P833011315004306146

`A053539(n+1)-A053539(n)`
-/

namespace A081043.P833011315004306146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 (n + 1) - A053539 n

end

end A081043.P833011315004306146

namespace A081043

/-- `A053539(n+1)-A053539(n)` -/
def P833011315004306146.Spec : Prop :=
  ∀ n, P833011315004306146.a n = A081043 n

end A081043

/-! ## A081043.P11924782313710968024

`A001018(n)+n*A055274(n)`
-/

namespace A081043.P11924782313710968024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + (n : ℤ) * A055274 n

end

end A081043.P11924782313710968024

namespace A081043

/-- `A001018(n)+n*A055274(n)` -/
def P11924782313710968024.Spec : Prop :=
  ∀ n, P11924782313710968024.a n = A081043 n

end A081043

/-! ## A081043.P4180942061769754891

`Δ[A036294(n)/8]`
-/

namespace A081043.P4180942061769754891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036294 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081043.P4180942061769754891

namespace A081043

/-- `Δ[A036294(n)/8]` -/
def P4180942061769754891.Spec : Prop :=
  ∀ n, P4180942061769754891.a n = (A081043 n : ℚ)

end A081043

/-! ## A081043.P15605225639230834724

`Δ[A064746(n)/8]`
-/

namespace A081043.P15605225639230834724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064746 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081043.P15605225639230834724

namespace A081043

/-- `Δ[A064746(n)/8]` -/
def P15605225639230834724.Spec : Prop :=
  ∀ n, P15605225639230834724.a n = (A081043 n : ℚ)

end A081043

/-! ## A081043.P11917072580092392742

`Δ[A001787(3*n)]/12`
-/

namespace A081043.P11917072580092392742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 12

end

end A081043.P11917072580092392742

namespace A081043

/-- `Δ[A001787(3*n)]/12` -/
def P11917072580092392742.Spec : Prop :=
  ∀ n, P11917072580092392742.a n = (A081043 n : ℚ)

end A081043

/-! ## A081043.P10790043393501860496

`Δ[A005183(3*n)]/12`
-/

namespace A081043.P10790043393501860496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 12

end

end A081043.P10790043393501860496

namespace A081043

/-- `Δ[A005183(3*n)]/12` -/
def P10790043393501860496.Spec : Prop :=
  ∀ n, P10790043393501860496.a n = (A081043 n : ℚ)

end A081043

/-!
# A081044: 9th binomial transform of (1,8,0,0,0,0,0,0,.....).

The programs for A081044, the canonical program `A081044.P15838947658385690550` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081044 has offset 0).

The definition of A081044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081044.P10926493902038006207

`(8*n+9)*9^(n-1)`
-/

namespace A081044.P10926493902038006207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 9 : ℚ) * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081044.P10926493902038006207

namespace A081044

/-- `(8*n+9)*9^(n-1)` -/
def P10926493902038006207.Spec : Prop :=
  ∀ n, P10926493902038006207.a n = (A081044 n : ℚ)

theorem P10926493902038006207.correct : P10926493902038006207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081044, Nat.add_sub_cancel, A081044.P10926493902038006207.a, A081044.P15838947658385690550.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081044, Nat.add_sub_cancel, A081044.P10926493902038006207.a, A081044.P15838947658385690550.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A081044

/-! ## A081044.P15838947658385690550

`18*a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081044

/-- `18*a(n-1)-81*a(n-2)` -/
def P15838947658385690550.Spec : Prop :=
  ∀ n, P15838947658385690550.a n = A081044 n

theorem P15838947658385690550.correct : P15838947658385690550.Spec := by
  intro n
  simp only [A081044]

end A081044

/-! ## A081044.P5109508141803163653

`Δ[n*A133494(n)²]`
-/

namespace A081044.P5109508141803163653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133494 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081044.P5109508141803163653

namespace A081044

/-- `Δ[n*A133494(n)²]` -/
def P5109508141803163653.Spec : Prop :=
  ∀ n, P5109508141803163653.a n = A081044 n

end A081044

/-! ## A081044.P7093067509165292779

`Δ[n*A140429(n)²]`
-/

namespace A081044.P7093067509165292779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140429 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081044.P7093067509165292779

namespace A081044

/-- `Δ[n*A140429(n)²]` -/
def P7093067509165292779.Spec : Prop :=
  ∀ n, P7093067509165292779.a n = A081044 n

end A081044

/-! ## A081044.P13635709018203375870

`Δ[n*A155734(n)²]`
-/

namespace A081044.P13635709018203375870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A155734 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081044.P13635709018203375870

namespace A081044

/-- `Δ[n*A155734(n)²]` -/
def P13635709018203375870.Spec : Prop :=
  ∀ n, P13635709018203375870.a n = A081044 n

end A081044

/-! ## A081044.P1133904516432151903

`Δ[n*A141413(2*n)]`
-/

namespace A081044.P1133904516432151903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141413 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081044.P1133904516432151903

namespace A081044

/-- `Δ[n*A141413(2*n)]` -/
def P1133904516432151903.Spec : Prop :=
  ∀ n, P1133904516432151903.a n = A081044 n

end A081044

/-! ## A081044.P11977490504376517813

`Δ[A229472(2*n+1)]-1`
-/

namespace A081044.P11977490504376517813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229472 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081044.P11977490504376517813

namespace A081044

/-- `Δ[A229472(2*n+1)]-1` -/
def P11977490504376517813.Spec : Prop :=
  ∀ n, P11977490504376517813.a n = A081044 n

end A081044

/-! ## A081044.P10475604960701285413

`A001019(n)+n*A055275(n)`
-/

namespace A081044.P10475604960701285413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (n : ℤ) * A055275 n

end

end A081044.P10475604960701285413

namespace A081044

/-- `A001019(n)+n*A055275(n)` -/
def P10475604960701285413.Spec : Prop :=
  ∀ n, P10475604960701285413.a n = A081044 n

end A081044

/-! ## A081044.P4764515424094758058

`A000244(n)²+n*A055275(n)`
-/

namespace A081044.P4764515424094758058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 + (n : ℤ) * A055275 n

end

end A081044.P4764515424094758058

namespace A081044

/-- `A000244(n)²+n*A055275(n)` -/
def P4764515424094758058.Spec : Prop :=
  ∀ n, P4764515424094758058.a n = A081044 n

end A081044

/-! ## A081044.P15503602761165686811

`A000244(n)²+n*A080923(2*n)`
-/

namespace A081044.P15503602761165686811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 + (n : ℤ) * A080923 (2 * n)

end

end A081044.P15503602761165686811

namespace A081044

/-- `A000244(n)²+n*A080923(2*n)` -/
def P15503602761165686811.Spec : Prop :=
  ∀ n, P15503602761165686811.a n = A081044 n

end A081044

/-! ## A081044.P11498987681281301033

`A000244(2*n)+n*A080923(2*n)`
-/

namespace A081044.P11498987681281301033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) + (n : ℤ) * A080923 (2 * n)

end

end A081044.P11498987681281301033

namespace A081044

/-- `A000244(2*n)+n*A080923(2*n)` -/
def P11498987681281301033.Spec : Prop :=
  ∀ n, P11498987681281301033.a n = A081044 n

end A081044

/-! ## A081044.P9057633836407925385

`A081038(2*n)-n*A052156(2*n)`
-/

namespace A081044.P9057633836407925385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 (2 * n) - (n : ℤ) * A052156 (2 * n)

end

end A081044.P9057633836407925385

namespace A081044

/-- `A081038(2*n)-n*A052156(2*n)` -/
def P9057633836407925385.Spec : Prop :=
  ∀ n, P9057633836407925385.a n = A081044 n

end A081044

/-! ## A081044.P8944672689286825088

`A140429(n+1)²+n*A080923(2*n)`
-/

namespace A081044.P8944672689286825088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (n + 1) ^ 2 + (n : ℤ) * A080923 (2 * n)

end

end A081044.P8944672689286825088

namespace A081044

/-- `A140429(n+1)²+n*A080923(2*n)` -/
def P8944672689286825088.Spec : Prop :=
  ∀ n, P8944672689286825088.a n = A081044 n

end A081044

/-! ## A081044.P13846121293677038236

`A352779(n)²+n*A026097(2*n+1)`
-/

namespace A081044.P13846121293677038236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 n ^ 2 + (n : ℤ) * A026097 (2 * n + 1)

end

end A081044.P13846121293677038236

namespace A081044

/-- `A352779(n)²+n*A026097(2*n+1)` -/
def P13846121293677038236.Spec : Prop :=
  ∀ n, P13846121293677038236.a n = A081044 n

end A081044

/-! ## A081044.P11228673664993429223

`A140429(2*n+1)+n*A080923(2*n)`
-/

namespace A081044.P11228673664993429223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (2 * n + 1) + (n : ℤ) * A080923 (2 * n)

end

end A081044.P11228673664993429223

namespace A081044

/-- `A140429(2*n+1)+n*A080923(2*n)` -/
def P11228673664993429223.Spec : Prop :=
  ∀ n, P11228673664993429223.a n = A081044 n

end A081044

/-! ## A081044.P8107394098552269647

`A352779(2*n)+n*A026097(2*n+1)`
-/

namespace A081044.P8107394098552269647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 (2 * n) + (n : ℤ) * A026097 (2 * n + 1)

end

end A081044.P8107394098552269647

namespace A081044

/-- `A352779(2*n)+n*A026097(2*n+1)` -/
def P8107394098552269647.Spec : Prop :=
  ∀ n, P8107394098552269647.a n = A081044 n

end A081044

/-! ## A081044.P10000254064168059731

`Δ[A230540(n)/6]`
-/

namespace A081044.P10000254064168059731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230540 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081044.P10000254064168059731

namespace A081044

/-- `Δ[A230540(n)/6]` -/
def P10000254064168059731.Spec : Prop :=
  ∀ n, P10000254064168059731.a n = (A081044 n : ℚ)

end A081044

/-! ## A081044.P5100238454877002094

`Δ[A064747(n)/9]`
-/

namespace A081044.P5100238454877002094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064747 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081044.P5100238454877002094

namespace A081044

/-- `Δ[A064747(n)/9]` -/
def P5100238454877002094.Spec : Prop :=
  ∀ n, P5100238454877002094.a n = (A081044 n : ℚ)

end A081044

/-! ## A081044.P17387157060515988344

`Δ[A158749(n)/9]`
-/

namespace A081044.P17387157060515988344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158749 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081044.P17387157060515988344

namespace A081044

/-- `Δ[A158749(n)/9]` -/
def P17387157060515988344.Spec : Prop :=
  ∀ n, P17387157060515988344.a n = (A081044 n : ℚ)

end A081044

/-! ## A081044.P10615959432612392615

`A380860(∑[n+1]+1)`
-/

namespace A081044.P10615959432612392615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380860 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081044.P10615959432612392615

namespace A081044

/-- `A380860(∑[n+1]+1)` -/
def P10615959432612392615.Spec : Prop :=
  ∀ n, P10615959432612392615.a n = A081044 n

end A081044

/-!
# A081045: 10th binomial transform of (1,9,0,0,0,0,0,...).

The programs for A081045, the canonical program `A081045.P14054093299881495971` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081045 has offset 0).

The definition of A081045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081045.P14054093299881495971

`(9*n+10)*10^(n-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081045

/-- `(9*n+10)*10^(n-1)` -/
def P14054093299881495971.Spec : Prop :=
  ∀ n, P14054093299881495971.a n = (A081045 n : ℚ)

end A081045

/-! ## A081045.P5005058808188207766

`20*a(n-1)-100*a(n-2)` with `a(0)=1, a(1)=19`
-/

namespace A081045.P5005058808188207766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  20 * a (n - 1) - 100 * a (n - 2)

end

end A081045.P5005058808188207766

namespace A081045

/-- `20*a(n-1)-100*a(n-2)` -/
def P5005058808188207766.Spec : Prop :=
  ∀ n, P5005058808188207766.a n = A081045 n

end A081045

/-! ## A081045.P1637566323429031958

`∑[A255381(n)]`
-/

namespace A081045.P1637566323429031958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081045.P1637566323429031958

namespace A081045

/-- `∑[A255381(n)]` -/
def P1637566323429031958.Spec : Prop :=
  ∀ n, P1637566323429031958.a n = A081045 n

end A081045

/-! ## A081045.P565677098509444963

`Δ[A094797(n)]`
-/

namespace A081045.P565677098509444963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081045.P565677098509444963

namespace A081045

/-- `Δ[A094797(n)]` -/
def P565677098509444963.Spec : Prop :=
  ∀ n, P565677098509444963.a n = A081045 n

end A081045

/-! ## A081045.P14310848450242230834

`A094797(n+1)-A094797(n)`
-/

namespace A081045.P14310848450242230834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094797 (n + 1) - A094797 n

end

end A081045.P14310848450242230834

namespace A081045

/-- `A094797(n+1)-A094797(n)` -/
def P14310848450242230834.Spec : Prop :=
  ∀ n, P14310848450242230834.a n = A081045 n

end A081045

/-! ## A081045.P15535954498467880518

`lcm(2, A053541(n+1))-A053541(A028310(n))`
-/

namespace A081045.P15535954498467880518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A053541 (n + 1)) : ℤ) - A053541 (A028310 n).toNat

end

end A081045.P15535954498467880518

namespace A081045

/-- `lcm(2, A053541(n+1))-A053541(A028310(n))` -/
def P15535954498467880518.Spec : Prop :=
  ∀ n, P15535954498467880518.a n = A081045 n

end A081045

/-! ## A081045.P10648416317946346468

`A359271(n+1)/5`
-/

namespace A081045.P10648416317946346468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359271 (n + 1) : ℚ) / 5

end

end A081045.P10648416317946346468

namespace A081045

/-- `A359271(n+1)/5` -/
def P10648416317946346468.Spec : Prop :=
  ∀ n, P10648416317946346468.a n = (A081045 n : ℚ)

end A081045

/-! ## A081045.P18071303404581913424

`A358620(n+1)/9`
-/

namespace A081045.P18071303404581913424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358620 (n + 1) : ℚ) / 9

end

end A081045.P18071303404581913424

namespace A081045

/-- `A358620(n+1)/9` -/
def P18071303404581913424.Spec : Prop :=
  ∀ n, P18071303404581913424.a n = (A081045 n : ℚ)

end A081045

/-!
# A081046: Difference of the first two Stirling numbers of the first kind.

The programs for A081046, there is no canonical definition to state claims against.
-/

/-! ## A081046.P5615844726692821248

`∏[char[1]-abs(1-n)]-a(n-1)/n^-1` with `a(0)=1`
-/

namespace A081046.P5615844726692821248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - |1 - (n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A081046.P5615844726692821248

/-! ## A081046.P9224442255858670733

`(-1)^n*A000774(n)`
-/

namespace A081046.P9224442255858670733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000774 n

end

end A081046.P9224442255858670733

/-! ## A081046.P11080204694516583331

`(-1)^n*A103718(∑[n])`
-/

namespace A081046.P11080204694516583331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A103718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081046.P11080204694516583331

/-! ## A081046.P6848810196937843001

`(A000254(n)+n!)*(-1)^n`
-/

namespace A081046.P6848810196937843001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000254 n + (Nat.factorial n : ℤ)) * (-1) ^ n

end

end A081046.P6848810196937843001

/-! ## A081046.P16515555278588723010

`A133942(n)-A081048(n)`
-/

namespace A081046.P16515555278588723010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n - A081048 n

end

end A081046.P16515555278588723010

/-!
# A081047: Difference of Stirling numbers of the first kind.

The programs for A081047, there is no canonical definition to state claims against.
-/

/-! ## A081047.P10670873328019647226

`n*a(n-1)-(n-1)!` with `a(0)=1`
-/

namespace A081047.P10670873328019647226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A081047.P10670873328019647226

/-! ## A081047.P12636106234148092383

`n!-A000254(n)`
-/

namespace A081047.P12636106234148092383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000254 n

end

end A081047.P12636106234148092383

/-! ## A081047.P16348238405703716006

`n!-abs(A081048(n))`
-/

namespace A081047.P16348238405703716006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - |A081048 n|

end

end A081047.P16348238405703716006

/-! ## A081047.P12569959529102075151

`A094645(∑[n+2]+3)`
-/

namespace A081047.P12569959529102075151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094645 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A081047.P12569959529102075151

/-! ## A081047.P5548775548772177842

`n!-(A000774(n)-n!)`
-/

namespace A081047.P5548775548772177842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (A000774 n - (Nat.factorial n : ℤ))

end

end A081047.P5548775548772177842

/-! ## A081047.P5554163410907185622

`n!-A052517(n+1)/2`
-/

namespace A081047.P5554163410907185622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - (A052517 (n + 1) : ℚ) / 2

end

end A081047.P5554163410907185622

/-! ## A081047.P2794317591787372240

`n*a(n-1)-A104150(n)` with `a(0)=1`
-/

namespace A081047.P2794317591787372240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A104150 n

end

end A081047.P2794317591787372240

/-! ## A081047.P17523071357110717682

`A000142(n)-A000254(n)`
-/

namespace A081047.P17523071357110717682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000254 n

end

end A081047.P17523071357110717682

/-! ## A081047.P1651100716285132526

`A000142(n)-abs(A081048(n))`
-/

namespace A081047.P1651100716285132526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - |A081048 n|

end

end A081047.P1651100716285132526

/-!
# A081048: a(n) = Stirling1(n+1, 2) where Stirling1 is A048994.

The programs for A081048, the canonical program `A081048.P5510263443727130240` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081048 has offset 0).

The definition of A081048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081048.P5510263443727130240

`(1-2*n)*a(n-1)-(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081048

/-- `(1-2*n)*a(n-1)-(n-1)²*a(n-2)` -/
def P5510263443727130240.Spec : Prop :=
  ∀ n, P5510263443727130240.a n = A081048 n

theorem P5510263443727130240.correct : P5510263443727130240.Spec := by
  intro n
  simp only [A081048]

end A081048

/-! ## A081048.P17332745439542050713

`n!-A081049(n)`
-/

namespace A081048.P17332745439542050713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A081049 n

end

end A081048.P17332745439542050713

namespace A081048

/-- `n!-A081049(n)` -/
def P17332745439542050713.Spec : Prop :=
  ∀ n, P17332745439542050713.a n = A081048 n

end A081048

/-! ## A081048.P12586837132680476932

`A048994(∑[n+1]+2)`
-/

namespace A081048.P12586837132680476932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A081048.P12586837132680476932

namespace A081048

/-- `A048994(∑[n+1]+2)` -/
def P12586837132680476932.Spec : Prop :=
  ∀ n, P12586837132680476932.a n = A081048 n

end A081048

/-! ## A081048.P2180167413292396716

`-((-1)^n*A000254(n))`
-/

namespace A081048.P2180167413292396716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A000254 n)

end

end A081048.P2180167413292396716

namespace A081048

/-- `-((-1)^n*A000254(n))` -/
def P2180167413292396716.Spec : Prop :=
  ∀ n, P2180167413292396716.a n = A081048 n

end A081048

/-! ## A081048.P2685487586388310377

`A081052(n)+A081051(n)`
-/

namespace A081048.P2685487586388310377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081052 n + A081051 n

end

end A081048.P2685487586388310377

namespace A081048

/-- `A081052(n)+A081051(n)` -/
def P2685487586388310377.Spec : Prop :=
  ∀ n, P2685487586388310377.a n = A081048 n

end A081048

/-! ## A081048.P16273597955478346755

`A009411(n)-A009575(n)`
-/

namespace A081048.P16273597955478346755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009411 n - A009575 n

end

end A081048.P16273597955478346755

namespace A081048

/-- `A009411(n)-A009575(n)` -/
def P16273597955478346755.Spec : Prop :=
  ∀ n, P16273597955478346755.a n = A081048 n

end A081048

/-! ## A081048.P5095943721841881504

`A000142(n)-A081049(n)`
-/

namespace A081048.P5095943721841881504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A081049 n

end

end A081048.P5095943721841881504

namespace A081048

/-- `A000142(n)-A081049(n)` -/
def P5095943721841881504.Spec : Prop :=
  ∀ n, P5095943721841881504.a n = A081048 n

end A081048

/-! ## A081048.P9967101099020815084

`A000254(n)*A062157(n)`
-/

namespace A081048.P9967101099020815084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n * A062157 n

end

end A081048.P9967101099020815084

namespace A081048

/-- `A000254(n)*A062157(n)` -/
def P9967101099020815084.Spec : Prop :=
  ∀ n, P9967101099020815084.a n = A081048 n

end A081048

/-! ## A081048.P13360302890826911131

`record[A067176(n)]*A062157(n)`
-/

namespace A081048.P13360302890826911131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A062157 n

end

end A081048.P13360302890826911131

namespace A081048

/-- `record[A067176(n)]*A062157(n)` -/
def P13360302890826911131.Spec : Prop :=
  ∀ n, P13360302890826911131.a n = A081048 n

end A081048

/-! ## A081048.P17541943203569837039

`A000254(n)*A033999(n+1)`
-/

namespace A081048.P17541943203569837039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n * A033999 (n + 1)

end

end A081048.P17541943203569837039

namespace A081048

/-- `A000254(n)*A033999(n+1)` -/
def P17541943203569837039.Spec : Prop :=
  ∀ n, P17541943203569837039.a n = A081048 n

end A081048

/-!
# A081049: a(n) = n! - Stirling1(n+1, 2) where Stirling1 is A048994.

The programs for A081049, there is no canonical definition to state claims against.
-/

/-! ## A081049.P14048267774675149068

`n!-A081048(n)`
-/

namespace A081049.P14048267774675149068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A081048 n

end

end A081049.P14048267774675149068

/-! ## A081049.P6386052520906686837

`n!-A048994(∑[n+1]+2)`
-/

namespace A081049.P6386052520906686837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A048994 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A081049.P6386052520906686837

/-! ## A081049.P12022226848070587310

`A000142(n)-A081048(n)`
-/

namespace A081049.P12022226848070587310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A081048 n

end

end A081049.P12022226848070587310

/-! ## A081049.P6277897049970339742

`abs(A133942(n))-A081048(n)`
-/

namespace A081049.P6277897049970339742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A081048 n

end

end A081049.P6277897049970339742

/-! ## A081049.P885546951777488194

`A047920(∑[n])-A081048(n)`
-/

namespace A081049.P885546951777488194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j) - A081048 n

end

end A081049.P885546951777488194

/-! ## A081049.P12682672337278298118

`A047922(∑[n])-A081048(n)`
-/

namespace A081049.P12682672337278298118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (∑ j ∈ Finset.range (n + 1), f1 j) - A081048 n

end

end A081049.P12682672337278298118

/-! ## A081049.P5402321247292092174

`A094587(∑[n])-A081048(n)`
-/

namespace A081049.P5402321247292092174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (∑ j ∈ Finset.range (n + 1), f1 j) - A081048 n

end

end A081049.P5402321247292092174

/-! ## A081049.P10325312500107038068

`A123361(∑[n])-A081048(n)`
-/

namespace A081049.P10325312500107038068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123361 (∑ j ∈ Finset.range (n + 1), f1 j) - A081048 n

end

end A081049.P10325312500107038068

/-! ## A081049.P10675481058997893625

`A104150(n+1)-A081048(n)`
-/

namespace A081049.P10675481058997893625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) - A081048 n

end

end A081049.P10675481058997893625

/-!
# A081050: a(n) = (n! - Stirling1(n+1, 2))*(-1)^n where Stirling1 is A048994.

The programs for A081050, there is no canonical definition to state claims against.
-/

/-! ## A081050.P8456794595354915556

`abs(A081049(n))`
-/

namespace A081050.P8456794595354915556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081049 n|

end

end A081050.P8456794595354915556

/-! ## A081050.P16045909894200276732

`abs(n!-A081048(n))`
-/

namespace A081050.P16045909894200276732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) - A081048 n|

end

end A081050.P16045909894200276732

/-! ## A081050.P3078669662480209149

`A133942(n)+A000254(n)`
-/

namespace A081050.P3078669662480209149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n + A000254 n

end

end A081050.P3078669662480209149

/-! ## A081050.P14736670859899058896

`A133942(n)+abs(A081048(n))`
-/

namespace A081050.P14736670859899058896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n + |A081048 n|

end

end A081050.P14736670859899058896

/-! ## A081050.P7372366669802394656

`abs(A000142(n)-A081048(n))`
-/

namespace A081050.P7372366669802394656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n - A081048 n|

end

end A081050.P7372366669802394656

/-!
# A081051: Stirling numbers of the first kind.

The programs for A081051, there is no canonical definition to state claims against.
-/

/-! ## A081051.P2763664765689484780

`A048994(A253145(n)+3)`
-/

namespace A081051.P2763664765689484780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A253145 n + 3).toNat

end

end A081051.P2763664765689484780

/-! ## A081051.P18049242819019475556

`A081048(n)-A081052(n)`
-/

namespace A081051.P18049242819019475556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n - A081052 n

end

end A081051.P18049242819019475556

/-! ## A081051.P5673191770049081976

`A048994(A133263(n)+2+n)`
-/

namespace A081051.P5673191770049081976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A133263 n + 2 + (n : ℤ)).toNat

end

end A081051.P5673191770049081976

/-! ## A081051.P14378090615848032119

`A048994(∑[A233583(n+1)+1])`
-/

namespace A081051.P14378090615848032119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081051.P14378090615848032119

/-! ## A081051.P18016196210494473014

`A048994(∑[n+4]-A008486(n))`
-/

namespace A081051.P18016196210494473014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008486 n).toNat

end

end A081051.P18016196210494473014

/-! ## A081051.P10433709956666129884

`A048994(∑[n+1]+2)-A081052(n)`
-/

namespace A081051.P10433709956666129884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A081052 n

end

end A081051.P10433709956666129884

/-! ## A081051.P1057090205960309122

`A048994(A167614(A028310(n)))`
-/

namespace A081051.P1057090205960309122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A167614 (A028310 n).toNat).toNat

end

end A081051.P1057090205960309122

/-! ## A081051.P3056921256507437330

`A054654(A155212(n)-A062545(n))`
-/

namespace A081051.P3056921256507437330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A155212 n - A062545 n).toNat

end

end A081051.P3056921256507437330

/-! ## A081051.P17551479486784912757

`A048994(A009005(n+1)+A000217(n))`
-/

namespace A081051.P17551479486784912757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A009005 (n + 1) + A000217 n).toNat

end

end A081051.P17551479486784912757

/-!
# A081052: Difference of Stirling numbers of the first kind.

The programs for A081052, there is no canonical definition to state claims against.
-/

/-! ## A081052.P17053943223573786183

`A081048(n)-A081051(n)`
-/

namespace A081052.P17053943223573786183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n - A081051 n

end

end A081052.P17053943223573786183

/-! ## A081052.P4390164632214784103

`n!-A081049(n)-A081051(n)`
-/

namespace A081052.P4390164632214784103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A081049 n - A081051 n

end

end A081052.P4390164632214784103

/-! ## A081052.P2734761726401055756

`A081048(n)-A048994(A253145(n)+3)`
-/

namespace A081052.P2734761726401055756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n - A048994 (A253145 n + 3).toNat

end

end A081052.P2734761726401055756

/-! ## A081052.P9934088358398269091

`A000254(n)*A062157(n)-A081051(n)`
-/

namespace A081052.P9934088358398269091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n * A062157 n - A081051 n

end

end A081052.P9934088358398269091

/-! ## A081052.P6854636082220118406

`A081048(n)-A048994(∑[n+4]-A008486(n))`
-/

namespace A081052.P6854636082220118406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n - A048994 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008486 n).toNat

end

end A081052.P6854636082220118406

/-! ## A081052.P8732419888304445968

`A081048(n)-A048994(A009005(n+1)+A000217(n))`
-/

namespace A081052.P8732419888304445968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n - A048994 (A009005 (n + 1) + A000217 n).toNat

end

end A081052.P8732419888304445968

/-! ## A081052.P5668481473094173053

`A157521(A266304(n))-A081051(n)`
-/

namespace A081052.P5668481473094173053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157521 (A266304 n).toNat - A081051 n

end

end A081052.P5668481473094173053

/-!
# A081053: Sum of a prime and the square of a prime.

The programs for A081053, there is no canonical definition to state claims against.
-/

/-! ## A081053.P672790337243205704

`lt[1, A258139(A028310(n))+1]`
-/

namespace A081053.P672790337243205704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258139 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081053.P672790337243205704

/-! ## A081053.P2868322270034568210

`eq[2, A000005(a(A258139(n)))]` with `a(0)=4`
-/

namespace A081053.P2868322270034568210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A258139 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081053.P2868322270034568210

/-! ## A081053.P15747067996976300518

`eq[1, A000010(a(A258139(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A081053.P15747067996976300518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A000010 (f2 (A258139 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081053.P15747067996976300518

/-! ## A081053.P18039171507781628702

`eq[char[A080713(n+1)], A000007(n)]`
-/

namespace A081053.P18039171507781628702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A081053.P18039171507781628702

/-! ## A081053.P6916626516803837717

`eq[1, A093709(a(A258139(n))+1)]` with `a(0)=2`
-/

namespace A081053.P6916626516803837717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A093709 (f2 (A258139 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081053.P6916626516803837717

/-! ## A081053.P9448815909054453714

`eq[1, A028234(a(A258139(n))+4)]` with `a(0)=2`
-/

namespace A081053.P9448815909054453714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A028234 (f2 (A258139 n).toNat + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081053.P9448815909054453714

/-! ## A081053.P11431526152520665834

`eq[1, A001221(a(A258139(n))+1)]` with `a(0)=5, a(1)=2`
-/

namespace A081053.P11431526152520665834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  A001221 (f2 (A258139 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081053.P11431526152520665834

/-! ## A081053.P5898192092201314666

`eq[2, A020639(A008458(A258139(n+1)))]+1`
-/

namespace A081053.P5898192092201314666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 (A258139 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081053.P5898192092201314666

/-!
# A081054: Crossing matchings: linear chord diagrams with 2n nodes and n arcs in which each arc crosses another arc.

The programs for A081054, there is no canonical definition to state claims against.
-/

/-! ## A081054.P8180828574864872016

`A008612(A128595(n)-1)`
-/

namespace A081054.P8180828574864872016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A128595 n - 1).toNat

end

end A081054.P8180828574864872016

/-! ## A081054.P1559078815975016367

`A008651(n*A153396(n))`
-/

namespace A081054.P1559078815975016367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 ((n : ℤ) * A153396 n).toNat

end

end A081054.P1559078815975016367

/-!
# A081055: Number of partitions of 2n in which no parts are multiples of 4.

The programs for A081055, there is no canonical definition to state claims against.
-/

/-! ## A081055.P12313005409017184142

`A001935(2*n)`
-/

namespace A081055.P12313005409017184142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (2 * n)

end

end A081055.P12313005409017184142

/-! ## A081055.P7221853455637194664

`record[A083365(n)]`
-/

namespace A081055.P7221853455637194664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081055.P7221853455637194664

/-! ## A081055.P17550802991877278371

`A083365(2*n)`
-/

namespace A081055.P17550802991877278371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083365 (2 * n)

end

end A081055.P17550802991877278371

/-! ## A081055.P10099823202741647477

`xor(1, xor(1, A001935(n+n)))`
-/

namespace A081055.P10099823202741647477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A001935 (n + n)))

end

end A081055.P10099823202741647477

/-! ## A081055.P14330016047479649080

`record[A001935(A000265(n+1)-1)]`
-/

namespace A081055.P14330016047479649080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081055.P14330016047479649080

/-! ## A081055.P3290961886655113240

`record[A001935(A329243(n+1)+n)]`
-/

namespace A081055.P3290961886655113240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A329243 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081055.P3290961886655113240

/-! ## A081055.P676138577986659140

`A081056(n)-A117275(2*n+1)`
-/

namespace A081055.P676138577986659140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081056 n - A117275 (2 * n + 1)

end

end A081055.P676138577986659140

/-! ## A081055.P16962472294175091324

`A117276(2*n+1)-A117276(2*n)`
-/

namespace A081055.P16962472294175091324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117276 (2 * n + 1) - A117276 (2 * n)

end

end A081055.P16962472294175091324

/-! ## A081055.P15488573993401023237

`A092869(8*n)`
-/

namespace A081055.P15488573993401023237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092869 (8 * n)

end

end A081055.P15488573993401023237

/-! ## A081055.P16356097482600092358

`A111374(8*n+1)`
-/

namespace A081055.P16356097482600092358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111374 (8 * n + 1)

end

end A081055.P16356097482600092358

/-! ## A081055.P2387533812877885298

`record[A208589(n+1)/2]`
-/

namespace A081055.P2387533812877885298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208589 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081055.P2387533812877885298

/-! ## A081055.P3549391346514733314

`A208589(A008590(n)+1)/2`
-/

namespace A081055.P3549391346514733314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208589 (A008590 n + 1).toNat : ℚ) / 2

end

end A081055.P3549391346514733314

/-! ## A081055.P1005879927458664730

`A000041(2*n)-A295342(2*n)`
-/

namespace A081055.P1005879927458664730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A295342 (2 * n)

end

end A081055.P1005879927458664730

/-! ## A081055.P255477172385510623

`A000726(2*n)+A295341(2*n)-A295342(2*n)`
-/

namespace A081055.P255477172385510623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (2 * n) + (A295341 (2 * n) - A295342 (2 * n))

end

end A081055.P255477172385510623

/-! ## A081055.P15388095890911915948

`A106459(2*n)+2*A098492(2*n)`
-/

namespace A081055.P15388095890911915948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (2 * n) + 2 * A098492 (2 * n)

end

end A081055.P15388095890911915948

/-! ## A081055.P15393494038803145213

`A339407(2*n)+A339406(2*n)`
-/

namespace A081055.P15393494038803145213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339407 (2 * n) + A339406 (2 * n)

end

end A081055.P15393494038803145213

/-! ## A081055.P9273834125890708773

`A098492(2*n)+A098491(2*n)`
-/

namespace A081055.P9273834125890708773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098492 (2 * n) + A098491 (2 * n)

end

end A081055.P9273834125890708773

/-!
# A081056: Number of partitions of 2n+1 in which no parts are multiples of 4.

The programs for A081056, there is no canonical definition to state claims against.
-/

/-! ## A081056.P17820220666719839469

`A001935(2*n+1)`
-/

namespace A081056.P17820220666719839469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (2 * n + 1)

end

end A081056.P17820220666719839469

/-! ## A081056.P12923282599722148618

`abs(A083365(Δ[n²]))`
-/

namespace A081056.P12923282599722148618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A081056.P12923282599722148618

/-! ## A081056.P6590745656257239007

`record[-A083365(n+1)]`
-/

namespace A081056.P6590745656257239007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081056.P6590745656257239007

/-! ## A081056.P11649537854607058059

`record[A001935(A000265(n+1))]`
-/

namespace A081056.P11649537854607058059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081056.P11649537854607058059

/-! ## A081056.P10407793435544333898

`record[A001935(A329243(n+2)+n)]`
-/

namespace A081056.P10407793435544333898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A329243 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081056.P10407793435544333898

/-! ## A081056.P1621898793231396336

`gcd(A000038(n), A083365(2*n+1))`
-/

namespace A081056.P1621898793231396336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083365 (2 * n + 1))

end

end A081056.P1621898793231396336

/-! ## A081056.P4845172801104259777

`A000007(n+1)-A083365(2*n+1)`
-/

namespace A081056.P4845172801104259777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A083365 (2 * n + 1)

end

end A081056.P4845172801104259777

/-! ## A081056.P1766435888843588015

`A000038(n+1)-A083365(2*n+1)`
-/

namespace A081056.P1766435888843588015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A083365 (2 * n + 1)

end

end A081056.P1766435888843588015

/-! ## A081056.P8691800949749032272

`A057428(n+1)*A083365(2*n+1)`
-/

namespace A081056.P8691800949749032272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) * A083365 (2 * n + 1)

end

end A081056.P8691800949749032272

/-! ## A081056.P4615694425020010709

`A127391(2*n)-A083365(2*n+1)`
-/

namespace A081056.P4615694425020010709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 (2 * n) - A083365 (2 * n + 1)

end

end A081056.P4615694425020010709

/-! ## A081056.P10655191642386799439

`∑[A117275(2*n+1)+A117275(2*n)]`
-/

namespace A081056.P10655191642386799439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (2 * n + 1) + A117275 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081056.P10655191642386799439

/-! ## A081056.P11212720243325870407

`char[A190108(n+2)]-A083365(2*n+1)`
-/

namespace A081056.P11212720243325870407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190108 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A083365 (2 * n + 1)

end

end A081056.P11212720243325870407

/-! ## A081056.P8187243454935112697

`A000041(2*n+1)-A295342(2*n+1)`
-/

namespace A081056.P8187243454935112697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A295342 (2 * n + 1)

end

end A081056.P8187243454935112697

/-! ## A081056.P14800286448259324004

`A339407(2*n+1)+A339406(2*n+1)`
-/

namespace A081056.P14800286448259324004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339407 (2 * n + 1) + A339406 (2 * n + 1)

end

end A081056.P14800286448259324004

/-! ## A081056.P5860576102770332144

`A098492(2*n+1)+A098491(2*n+1)`
-/

namespace A081056.P5860576102770332144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098492 (2 * n + 1) + A098491 (2 * n + 1)

end

end A081056.P5860576102770332144

/-!
# A081057: E.g.f.: Sum_{n>=0} a(n)*x^n/n! = {Sum_{n>=0} F(n+1)*x^n/n!}^2, where F(n) is the n-th Fibonacci number.

The programs for A081057, the canonical program `A081057.P5179079917279485014` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081057 has offset 0).

The definition of A081057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081057.P5179079917279485014

`3*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081057

/-- `3*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P5179079917279485014.Spec : Prop :=
  ∀ n, P5179079917279485014.a n = A081057 n

theorem P5179079917279485014.correct : P5179079917279485014.Spec := by
  intro n
  simp only [A081057]

end A081057

/-! ## A081057.P14323522418466259930

`∑[ogf((-1+x+2x^2)/(-1+2x+4x^2))]`
-/

namespace A081057.P14323522418466259930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -2, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081057.P14323522418466259930

namespace A081057

/-- `∑[ogf((-1+x+2x^2)/(-1+2x+4x^2))]` -/
def P14323522418466259930.Spec : Prop :=
  ∀ n, P14323522418466259930.a n = A081057 n

end A081057

/-! ## A081057.P14873907261879950760

`ogf((-1+x+2x^2)/(-1+3x+2x^2-4x^3))`
-/

namespace A081057.P14873907261879950760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -3, -2, 4] n

end

end A081057.P14873907261879950760

namespace A081057

/-- `ogf((-1+x+2x^2)/(-1+3x+2x^2-4x^3))` -/
def P14873907261879950760.Spec : Prop :=
  ∀ n, P14873907261879950760.a n = A081057 n

end A081057

/-! ## A081057.P8951904589374256260

`8*(a(n-2)+a(n-3))-6` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A081057.P8951904589374256260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  8 * (a (n - 2) + a (n - 3)) - 6

end

end A081057.P8951904589374256260

namespace A081057

/-- `8*(a(n-2)+a(n-3))-6` -/
def P8951904589374256260.Spec : Prop :=
  ∀ n, P8951904589374256260.a n = A081057 n

end A081057

/-! ## A081057.P9496484067239070245

`2*(2*a(n-2)-(1-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A081057.P9496484067239070245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * a (n - 2) - (1 - a (n - 1)))

end

end A081057.P9496484067239070245

namespace A081057

/-- `2*(2*a(n-2)-(1-a(n-1)))` -/
def P9496484067239070245.Spec : Prop :=
  ∀ n, P9496484067239070245.a n = A081057 n

end A081057

/-! ## A081057.P2044763843761879932

`lcm(2, lcm(2, 1-a(n-2))+a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A081057.P2044763843761879932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 2 (Int.lcm 2 (1 - (a (n - 2) : ℤ)) + (a (n - 1) + 1))

end

end A081057.P2044763843761879932

namespace A081057

/-- `lcm(2, lcm(2, 1-a(n-2))+a(n-1)+1)` -/
def P2044763843761879932.Spec : Prop :=
  ∀ n, (P2044763843761879932.a n : ℤ) = A081057 n

end A081057

/-! ## A081057.P18113044045580396696

`(∑[A063727(n)]+1)/2`
-/

namespace A081057.P18113044045580396696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A081057.P18113044045580396696

namespace A081057

/-- `(∑[A063727(n)]+1)/2` -/
def P18113044045580396696.Spec : Prop :=
  ∀ n, P18113044045580396696.a n = (A081057 n : ℚ)

end A081057

/-! ## A081057.P12274037018033456044

`(A014335(n+2)+1)/2`
-/

namespace A081057.P12274037018033456044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014335 (n + 2) + 1 : ℚ) / 2

end

end A081057.P12274037018033456044

namespace A081057

/-- `(A014335(n+2)+1)/2` -/
def P12274037018033456044.Spec : Prop :=
  ∀ n, P12274037018033456044.a n = (A081057 n : ℚ)

end A081057

/-! ## A081057.P5786455126980396457

`A087206(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A081057.P5786455126980396457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087206 (n - 1) + a (n - 1)

end

end A081057.P5786455126980396457

namespace A081057

/-- `A087206(n-1)+a(n-1)` -/
def P5786455126980396457.Spec : Prop :=
  ∀ n, P5786455126980396457.a n = A081057 n

end A081057

/-! ## A081057.P9610767512080306549

`ceil(2^n/5*A000032(n+2))`
-/

namespace A081057.P9610767512080306549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / 5 * (A000032 (n + 2) : ℚ)⌉

end

end A081057.P9610767512080306549

namespace A081057

/-- `ceil(2^n/5*A000032(n+2))` -/
def P9610767512080306549.Spec : Prop :=
  ∀ n, P9610767512080306549.a n = A081057 n

end A081057

/-! ## A081057.P1992014191515629741

`∑[ceil(2^(n-1))*A000045(n+1)]`
-/

namespace A081057.P1992014191515629741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081057.P1992014191515629741

namespace A081057

/-- `∑[ceil(2^(n-1))*A000045(n+1)]` -/
def P1992014191515629741.Spec : Prop :=
  ∀ n, P1992014191515629741.a n = A081057 n

end A081057

/-! ## A081057.P4975832092194796360

`A063727(n)-A014334(n)`
-/

namespace A081057.P4975832092194796360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - A014334 n

end

end A081057.P4975832092194796360

namespace A081057

/-- `A063727(n)-A014334(n)` -/
def P4975832092194796360.Spec : Prop :=
  ∀ n, P4975832092194796360.a n = A081057 n

end A081057

/-! ## A081057.P480884384956674841

`∑[A087206(log2(A011782(n)))]`
-/

namespace A081057.P480884384956674841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081057.P480884384956674841

namespace A081057

/-- `∑[A087206(log2(A011782(n)))]` -/
def P480884384956674841.Spec : Prop :=
  ∀ n, P480884384956674841.a n = A081057 n

end A081057

/-! ## A081057.P4138535651971556947

`A093043(n)+A192877(n)+1`
-/

namespace A081057.P4138535651971556947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093043 n + (A192877 n + 1)

end

end A081057.P4138535651971556947

namespace A081057

/-- `A093043(n)+A192877(n)+1` -/
def P4138535651971556947.Spec : Prop :=
  ∀ n, P4138535651971556947.a n = A081057 n

end A081057

/-! ## A081057.P16284229306615183846

`A085449(n+1)-A014334(n)`
-/

namespace A081057.P16284229306615183846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 1) - A014334 n

end

end A081057.P16284229306615183846

namespace A081057

/-- `A085449(n+1)-A014334(n)` -/
def P16284229306615183846.Spec : Prop :=
  ∀ n, P16284229306615183846.a n = A081057 n

end A081057

/-! ## A081057.P11901923283845331622

`A063727(n)-2*A014335(n)`
-/

namespace A081057.P11901923283845331622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - 2 * A014335 n

end

end A081057.P11901923283845331622

namespace A081057

/-- `A063727(n)-2*A014335(n)` -/
def P11901923283845331622.Spec : Prop :=
  ∀ n, P11901923283845331622.a n = A081057 n

end A081057

/-! ## A081057.P3618119657107696193

`∑[∑[A212804(n)]*A011782(n)]`
-/

namespace A081057.P3618119657107696193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081057.P3618119657107696193

namespace A081057

/-- `∑[∑[A212804(n)]*A011782(n)]` -/
def P3618119657107696193.Spec : Prop :=
  ∀ n, P3618119657107696193.a n = A081057 n

end A081057

/-! ## A081057.P4930671594133801069

`A093044(n)+∑[A093044(n+1)]`
-/

namespace A081057.P4930671594133801069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093044 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081057.P4930671594133801069

namespace A081057

/-- `A093044(n)+∑[A093044(n+1)]` -/
def P4930671594133801069.Spec : Prop :=
  ∀ n, P4930671594133801069.a n = A081057 n

end A081057

/-! ## A081057.P14879500308854571630

`∑[A000045(n+1)*A011782(n)]`
-/

namespace A081057.P14879500308854571630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081057.P14879500308854571630

namespace A081057

/-- `∑[A000045(n+1)*A011782(n)]` -/
def P14879500308854571630.Spec : Prop :=
  ∀ n, P14879500308854571630.a n = A081057 n

end A081057

/-! ## A081057.P16593206127882563357

`A014335(n+1)+A014334(n)+1`
-/

namespace A081057.P16593206127882563357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 (n + 1) + (A014334 n + 1)

end

end A081057.P16593206127882563357

namespace A081057

/-- `A014335(n+1)+A014334(n)+1` -/
def P16593206127882563357.Spec : Prop :=
  ∀ n, P16593206127882563357.a n = A081057 n

end A081057

/-!
# A081058: Number of shuffles in Guy's shuffle (see A035485) for the card that is at the top of the deck after n shuffles to come to the top again.

The programs for A081058, there is no canonical definition to state claims against.
-/

/-! ## A081058.P15714301783036896297

`A081059(n+1)-(n+1)`
-/

namespace A081058.P15714301783036896297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081059 (n + 1) - (n + 1 : ℤ)

end

end A081058.P15714301783036896297

/-! ## A081058.P11133013410198897008

`A081059(-xor(n, -1))-1-n`
-/

namespace A081058.P11133013410198897008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081059 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A081058.P11133013410198897008

/-! ## A081058.P13782673352920803189

`A081059(A008619(2*n))-1-n`
-/

namespace A081058.P13782673352920803189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081059 (A008619 (2 * n)).toNat - 1 - (n : ℤ)

end

end A081058.P13782673352920803189

/-! ## A081058.P7595007163530662157

`abs(A081059(A008619(Δ[n²]))-1-n)`
-/

namespace A081058.P7595007163530662157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081059 (A008619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - 1 - (n : ℤ)|

end

end A081058.P7595007163530662157

/-! ## A081058.P12179412342806663156

`A023443(A081059(n+1)-n)`
-/

namespace A081058.P12179412342806663156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081059 (n + 1) - (n : ℤ)).toNat

end

end A081058.P12179412342806663156

/-!
# A081059: Shuffle number in Guy's shuffle (see A035485) for the card that is at the top of the deck after n shuffles to come to the top again.

The programs for A081059, there is no canonical definition to state claims against.
-/

/-! ## A081059.P2100870362528647250

`A081058(n+1)+n+1`
-/

namespace A081059.P2100870362528647250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081058 (n + 1) + (n + 1 : ℤ)

end

end A081059.P2100870362528647250

/-! ## A081059.P4777777626433796127

`A020725(A081058(n+1)+n)`
-/

namespace A081059.P4777777626433796127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A081058 (n + 1) + (n : ℤ)).toNat

end

end A081059.P4777777626433796127

/-! ## A081059.P16854150107993851744

`A065475(A081058(n+1)+n)`
-/

namespace A081059.P16854150107993851744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A081058 (n + 1) + (n : ℤ)).toNat

end

end A081059.P16854150107993851744

/-! ## A081059.P5788059377027338077

`A153152(A081058(n+1)+n)`
-/

namespace A081059.P5788059377027338077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A081058 (n + 1) + (n : ℤ)).toNat

end

end A081059.P5788059377027338077

/-! ## A081059.P1607281612940503840

`A326178(A081058(n+1)+n)`
-/

namespace A081059.P1607281612940503840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A081058 (n + 1) + (n : ℤ)).toNat

end

end A081059.P1607281612940503840

/-!
# A081060: Product of differences of distinct prime factors of n.

The programs for A081060, there is no canonical definition to state claims against.
-/

/-! ## A081060.P12741718444131157566

`A097031(A290479(n+1))+A046665(n+1)-A215480(n+1)`
-/

namespace A081060.P12741718444131157566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A290479 (n + 1)).toNat + A046665 (n + 1) - A215480 (n + 1)

end

end A081060.P12741718444131157566

/-! ## A081060.P1905437644979836411

`A097031(A290480(n+1))+A046665(n+1)-A215480(n+1)`
-/

namespace A081060.P1905437644979836411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A290480 (n + 1)).toNat + A046665 (n + 1) - A215480 (n + 1)

end

end A081060.P1905437644979836411

/-! ## A081060.P14323770161629853674

`A000523(A259936(n+1)^A046665(n+1)+1)`
-/

namespace A081060.P14323770161629853674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A259936 (n + 1) : ℚ) ^ (A046665 (n + 1) : ℤ) + 1)).toNat

end

end A081060.P14323770161629853674

/-! ## A081060.P7724368327986633401

`A335940(A166142(n+1))`
-/

namespace A081060.P7724368327986633401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335940 (A166142 (n + 1)).toNat

end

end A081060.P7724368327986633401

/-! ## A081060.P501546107016407904

`A335940(A290479(n+1))`
-/

namespace A081060.P501546107016407904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335940 (A290479 (n + 1)).toNat

end

end A081060.P501546107016407904

/-!
# A081061: Union of 3-smooth numbers and prime powers.

The programs for A081061, the canonical program `A081061.P11142281922485975947` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081061 has offset 1).

The definition of A081061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081061.P5178177350180420769

`∪[A003586(n+1), A061345(n)]`
-/

namespace A081061.P5178177350180420769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P5178177350180420769

namespace A081061

/-- `∪[A003586(n+1), A061345(n)]` -/
def P5178177350180420769.Spec : Prop :=
  ∀ n, (P5178177350180420769.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P14533808088461460051

`∪[A007694(n+1), A061345(n)]`
-/

namespace A081061.P14533808088461460051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P14533808088461460051

namespace A081061

/-- `∪[A007694(n+1), A061345(n)]` -/
def P14533808088461460051.Spec : Prop :=
  ∀ n, (P14533808088461460051.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P11306903241428449690

`∪[A000961(n+1), A033845(n+1)]`
-/

namespace A081061.P11306903241428449690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P11306903241428449690

namespace A081061

/-- `∪[A000961(n+1), A033845(n+1)]` -/
def P11306903241428449690.Spec : Prop :=
  ∀ n, (P11306903241428449690.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P2214016570614623456

`∪[A000961(n+1), A187778(n+1)]`
-/

namespace A081061.P2214016570614623456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P2214016570614623456

namespace A081061

/-- `∪[A000961(n+1), A187778(n+1)]` -/
def P2214016570614623456.Spec : Prop :=
  ∀ n, (P2214016570614623456.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P8441232522334383111

`∩[A081306(n+1), A242413(n+1)]`
-/

namespace A081061.P8441232522334383111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P8441232522334383111

namespace A081061

/-- `∩[A081306(n+1), A242413(n+1)]` -/
def P8441232522334383111.Spec : Prop :=
  ∀ n, (P8441232522334383111.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P11142281922485975947

`filter[A073491(n+1), A340363(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A081061

/-- `filter[A073491(n+1), A340363(#)]` -/
def P11142281922485975947.Spec : Prop :=
  ∀ n, P11142281922485975947.a n = A081061 (n + 1)

theorem P11142281922485975947.correct : P11142281922485975947.Spec := by
  intro n
  simp only [A081061, Nat.add_sub_cancel]

end A081061

/-! ## A081061.P15170553531809480221

`filter[A081306(n+1), A340363(#)]`
-/

namespace A081061.P15170553531809480221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A081061.P15170553531809480221

namespace A081061

/-- `filter[A081306(n+1), A340363(#)]` -/
def P15170553531809480221.Spec : Prop :=
  ∀ n, P15170553531809480221.a n = A081061 (n + 1)

end A081061

/-! ## A081061.P3705920756528031626

`filter[A242413(n+1), A340363(#)]`
-/

namespace A081061.P3705920756528031626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A081061.P3705920756528031626

namespace A081061

/-- `filter[A242413(n+1), A340363(#)]` -/
def P3705920756528031626.Spec : Prop :=
  ∀ n, P3705920756528031626.a n = A081061 (n + 1)

end A081061

/-! ## A081061.P16890487728808429253

`eq[1, A081060(n+1)]+1`
-/

namespace A081061.P16890487728808429253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081061.P16890487728808429253

namespace A081061

/-- `eq[1, A081060(n+1)]+1` -/
def P16890487728808429253.Spec : Prop :=
  ∀ n, (P16890487728808429253.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P174508745720000562

`lt[A178921(n+1), 2]+1`
-/

namespace A081061.P174508745720000562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081061.P174508745720000562

namespace A081061

/-- `lt[A178921(n+1), 2]+1` -/
def P174508745720000562.Spec : Prop :=
  ∀ n, (P174508745720000562.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P823806528029588498

`lt[A076511(n+1), 3]+1`
-/

namespace A081061.P823806528029588498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081061.P823806528029588498

namespace A081061

/-- `lt[A076511(n+1), 3]+1` -/
def P823806528029588498.Spec : Prop :=
  ∀ n, (P823806528029588498.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P13844148777861971350

`lt[A166142(n+1), 7]+1`
-/

namespace A081061.P13844148777861971350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166142 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081061.P13844148777861971350

namespace A081061

/-- `lt[A166142(n+1), 7]+1` -/
def P13844148777861971350.Spec : Prop :=
  ∀ n, (P13844148777861971350.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P9995574635054832034

`eq[1, or(1, A049087(n+1))]+1`
-/

namespace A081061.P9995574635054832034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049087 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081061.P9995574635054832034

namespace A081061

/-- `eq[1, or(1, A049087(n+1))]+1` -/
def P9995574635054832034.Spec : Prop :=
  ∀ n, (P9995574635054832034.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P11268909261998632704

`eq[A001221(n+1), A076511(n+1)]+1`
-/

namespace A081061.P11268909261998632704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081061.P11268909261998632704

namespace A081061

/-- `eq[A001221(n+1), A076511(n+1)]+1` -/
def P11268909261998632704.Spec : Prop :=
  ∀ n, (P11268909261998632704.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P18157658952166714103

`lt[A007947(n+1), A008472(n+1)+2]+1`
-/

namespace A081061.P18157658952166714103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081061.P18157658952166714103

namespace A081061

/-- `lt[A007947(n+1), A008472(n+1)+2]+1` -/
def P18157658952166714103.Spec : Prop :=
  ∀ n, (P18157658952166714103.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P1106917989232463076

`filter[A324109(n+1), A137794(#)]`
-/

namespace A081061.P1106917989232463076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A081061.P1106917989232463076

namespace A081061

/-- `filter[A324109(n+1), A137794(#)]` -/
def P1106917989232463076.Spec : Prop :=
  ∀ n, P1106917989232463076.a n = A081061 (n + 1)

end A081061

/-! ## A081061.P13099327479486080982

`∩[A073491(n+1), A324109(n+1)]`
-/

namespace A081061.P13099327479486080982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P13099327479486080982

namespace A081061

/-- `∩[A073491(n+1), A324109(n+1)]` -/
def P13099327479486080982.Spec : Prop :=
  ∀ n, (P13099327479486080982.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P4774474295561172188

`∩[A081306(n+1), A324109(n+1)]`
-/

namespace A081061.P4774474295561172188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P4774474295561172188

namespace A081061

/-- `∩[A081306(n+1), A324109(n+1)]` -/
def P4774474295561172188.Spec : Prop :=
  ∀ n, (P4774474295561172188.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P5620782951064354097

`∩[A242413(n+1), A324109(n+1)]`
-/

namespace A081061.P5620782951064354097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081061.P5620782951064354097

namespace A081061

/-- `∩[A242413(n+1), A324109(n+1)]` -/
def P5620782951064354097.Spec : Prop :=
  ∀ n, (P5620782951064354097.a n : ℤ) = A081061 (n + 1)

end A081061

/-! ## A081061.P6397942039560960858

`filter[A253784(n+1), A340363(#)]`
-/

namespace A081061.P6397942039560960858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A081061.P6397942039560960858

namespace A081061

/-- `filter[A253784(n+1), A340363(#)]` -/
def P6397942039560960858.Spec : Prop :=
  ∀ n, P6397942039560960858.a n = A081061 (n + 1)

end A081061

/-!
# A081062: Neither 3-smooth numbers nor prime powers.

The programs for A081062, the canonical program `A081062.P2782983440295120224` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081062 has offset 1).

The definition of A081062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081062.P2641972528994903469

`lt[1, A081060(n+1)]+1`
-/

namespace A081062.P2641972528994903469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081062.P2641972528994903469

namespace A081062

/-- `lt[1, A081060(n+1)]+1` -/
def P2641972528994903469.Spec : Prop :=
  ∀ n, (P2641972528994903469.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P16845933810964486022

`lt[1, A178921(n+1)]+1`
-/

namespace A081062.P16845933810964486022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081062.P16845933810964486022

namespace A081062

/-- `lt[1, A178921(n+1)]+1` -/
def P16845933810964486022.Spec : Prop :=
  ∀ n, (P16845933810964486022.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P833510691050264713

`lt[2, A076511(n+1)]+1`
-/

namespace A081062.P833510691050264713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081062.P833510691050264713

namespace A081062

/-- `lt[2, A076511(n+1)]+1` -/
def P833510691050264713.Spec : Prop :=
  ∀ n, (P833510691050264713.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P15868626542741823231

`lt[2, A321648(n+1)]+1`
-/

namespace A081062.P15868626542741823231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081062.P15868626542741823231

namespace A081062

/-- `lt[2, A321648(n+1)]+1` -/
def P15868626542741823231.Spec : Prop :=
  ∀ n, (P15868626542741823231.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P16692343182583181076

`lt[3, A080214(n+1)]+1`
-/

namespace A081062.P16692343182583181076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081062.P16692343182583181076

namespace A081062

/-- `lt[3, A080214(n+1)]+1` -/
def P16692343182583181076.Spec : Prop :=
  ∀ n, (P16692343182583181076.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P12182139982377658645

`lt[4, A318305(n+1)]+1`
-/

namespace A081062.P12182139982377658645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081062.P12182139982377658645

namespace A081062

/-- `lt[4, A318305(n+1)]+1` -/
def P12182139982377658645.Spec : Prop :=
  ∀ n, (P12182139982377658645.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P2782983440295120224

`lt[6, A166142(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A081062

/-- `lt[6, A166142(n+1)]+1` -/
def P2782983440295120224.Spec : Prop :=
  ∀ n, (P2782983440295120224.a n : ℤ) = A081062 (n + 1)

theorem P2782983440295120224.correct : P2782983440295120224.Spec := by
  intro n
  simp only [A081062, Nat.add_sub_cancel]

end A081062

/-! ## A081062.P1637648447416945701

`∪[A060700(n+1), A069900(n+1)]`
-/

namespace A081062.P1637648447416945701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P1637648447416945701

namespace A081062

/-- `∪[A060700(n+1), A069900(n+1)]` -/
def P1637648447416945701.Spec : Prop :=
  ∀ n, (P1637648447416945701.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P17741629219964285635

`∪[A061346(n+1), A069900(n+1)]`
-/

namespace A081062.P17741629219964285635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P17741629219964285635

namespace A081062

/-- `∪[A061346(n+1), A069900(n+1)]` -/
def P17741629219964285635.Spec : Prop :=
  ∀ n, (P17741629219964285635.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P6918249189244436370

`∪[A069900(n+1), A090196(n+1)]`
-/

namespace A081062.P6918249189244436370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P6918249189244436370

namespace A081062

/-- `∪[A069900(n+1), A090196(n+1)]` -/
def P6918249189244436370.Spec : Prop :=
  ∀ n, (P6918249189244436370.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P11091975038568288671

`∪[A061346(n+1), A251727(n+1)]`
-/

namespace A081062.P11091975038568288671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P11091975038568288671

namespace A081062

/-- `∪[A061346(n+1), A251727(n+1)]` -/
def P11091975038568288671.Spec : Prop :=
  ∀ n, (P11091975038568288671.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P8631456873687384561

`∪[A069900(n+1), A324110(n+1)]`
-/

namespace A081062.P8631456873687384561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P8631456873687384561

namespace A081062

/-- `∪[A069900(n+1), A324110(n+1)]` -/
def P8631456873687384561.Spec : Prop :=
  ∀ n, (P8631456873687384561.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P4432247044417386175

`lt[A020639(n+1), A332881(n+1)]+1`
-/

namespace A081062.P4432247044417386175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081062.P4432247044417386175

namespace A081062

/-- `lt[A020639(n+1), A332881(n+1)]+1` -/
def P4432247044417386175.Spec : Prop :=
  ∀ n, (P4432247044417386175.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P15596129912704817516

`∩[A024619(n+1), A059485(n+1)]`
-/

namespace A081062.P15596129912704817516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P15596129912704817516

namespace A081062

/-- `∩[A024619(n+1), A059485(n+1)]` -/
def P15596129912704817516.Spec : Prop :=
  ∀ n, (P15596129912704817516.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P10091200739529575606

`∩[A059485(n+1), A361102(n+1)]`
-/

namespace A081062.P10091200739529575606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P10091200739529575606

namespace A081062

/-- `∩[A059485(n+1), A361102(n+1)]` -/
def P10091200739529575606.Spec : Prop :=
  ∀ n, (P10091200739529575606.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P12363211322780556886

`∩[A059485(n+1), A387335(n+1)]`
-/

namespace A081062.P12363211322780556886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P12363211322780556886

namespace A081062

/-- `∩[A059485(n+1), A387335(n+1)]` -/
def P12363211322780556886.Spec : Prop :=
  ∀ n, (P12363211322780556886.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P8472102261677509670

`∩[A024619(n+1), A379851(n+1)]`
-/

namespace A081062.P8472102261677509670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P8472102261677509670

namespace A081062

/-- `∩[A024619(n+1), A379851(n+1)]` -/
def P8472102261677509670.Spec : Prop :=
  ∀ n, (P8472102261677509670.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P5452065914893784383

`∩[A361102(n+1), A379851(n+1)]`
-/

namespace A081062.P5452065914893784383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P5452065914893784383

namespace A081062

/-- `∩[A361102(n+1), A379851(n+1)]` -/
def P5452065914893784383.Spec : Prop :=
  ∀ n, (P5452065914893784383.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P705969658341978173

`∩[A379851(n+1), A387335(n+1)]`
-/

namespace A081062.P705969658341978173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081062.P705969658341978173

namespace A081062

/-- `∩[A379851(n+1), A387335(n+1)]` -/
def P705969658341978173.Spec : Prop :=
  ∀ n, (P705969658341978173.a n : ℤ) = A081062 (n + 1)

end A081062

/-! ## A081062.P3000891033667681661

`lt[A020725(A020639(n+1)), A006530(n+1)]+1`
-/

namespace A081062.P3000891033667681661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081062.P3000891033667681661

namespace A081062

/-- `lt[A020725(A020639(n+1)), A006530(n+1)]+1` -/
def P3000891033667681661.Spec : Prop :=
  ∀ n, (P3000891033667681661.a n : ℤ) = A081062 (n + 1)

end A081062

/-!
# A081063: Number of numbers <= n that are 3-smooth or prime powers.

The programs for A081063, the canonical program `A081063.P5329277844171493338` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081063 has offset 1).

The definition of A081063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081063.P11598547727836832757

`∑[C(2, 2*A046665(n+1))]`
-/

namespace A081063.P11598547727836832757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A046665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P11598547727836832757

namespace A081063

/-- `∑[C(2, 2*A046665(n+1))]` -/
def P11598547727836832757.Spec : Prop :=
  ∀ n, (P11598547727836832757.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P17208158383692703667

`∑[C(2, 2*A049087(n+1))]`
-/

namespace A081063.P17208158383692703667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A049087 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P17208158383692703667

namespace A081063

/-- `∑[C(2, 2*A049087(n+1))]` -/
def P17208158383692703667.Spec : Prop :=
  ∀ n, (P17208158383692703667.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P14083361579626432193

`∑[C(2, 2*A089631(n+1))]`
-/

namespace A081063.P14083361579626432193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A089631 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P14083361579626432193

namespace A081063

/-- `∑[C(2, 2*A089631(n+1))]` -/
def P14083361579626432193.Spec : Prop :=
  ∀ n, (P14083361579626432193.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P4277004487016549016

`∑[1-char[A081062(n+1)-1]]`
-/

namespace A081063.P4277004487016549016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P4277004487016549016

namespace A081063

/-- `∑[1-char[A081062(n+1)-1]]` -/
def P4277004487016549016.Spec : Prop :=
  ∀ n, P4277004487016549016.a n = A081063 (n + 1)

end A081063

/-! ## A081063.P17837778003065767026

`∑[C(C(n%6, 5)+1, A001221(n+1))]`
-/

namespace A081063.P17837778003065767026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n % 6) 5 + 1) (A001221 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P17837778003065767026

namespace A081063

/-- `∑[C(C(n%6, 5)+1, A001221(n+1))]` -/
def P17837778003065767026.Spec : Prop :=
  ∀ n, (P17837778003065767026.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P7766038314881040595

`∑[C(2, A000096(A046665(n+1)))]`
-/

namespace A081063.P7766038314881040595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000096 (A046665 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P7766038314881040595

namespace A081063

/-- `∑[C(2, A000096(A046665(n+1)))]` -/
def P7766038314881040595.Spec : Prop :=
  ∀ n, (P7766038314881040595.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P8398047982671337796

`∑[∏{p}[A046665(n+1), A046665(#)]]`
-/

namespace A081063.P8398047982671337796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A046665 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P8398047982671337796

namespace A081063

/-- `∑[∏{p}[A046665(n+1), A046665(#)]]` -/
def P8398047982671337796.Spec : Prop :=
  ∀ n, P8398047982671337796.a n = A081063 (n + 1)

end A081063

/-! ## A081063.P8333288135407792995

`A327247(n+1)+A069924(n+1)`
-/

namespace A081063.P8333288135407792995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (n + 1) + A069924 (n + 1)

end

end A081063.P8333288135407792995

namespace A081063

/-- `A327247(n+1)+A069924(n+1)` -/
def P8333288135407792995.Spec : Prop :=
  ∀ n, P8333288135407792995.a n = A081063 (n + 1)

end A081063

/-! ## A081063.P6493927201435047237

`∑[A000010(A089631(n+1)+1)%2]`
-/

namespace A081063.P6493927201435047237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A089631 (n + 1) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P6493927201435047237

namespace A081063

/-- `∑[A000010(A089631(n+1)+1)%2]` -/
def P6493927201435047237.Spec : Prop :=
  ∀ n, P6493927201435047237.a n = A081063 (n + 1)

end A081063

/-! ## A081063.P9712265490261299999

`∑[C(A049076(n+1), A049087(n+1))]`
-/

namespace A081063.P9712265490261299999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049076 (n + 1)).toNat (A049087 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P9712265490261299999

namespace A081063

/-- `∑[C(A049076(n+1), A049087(n+1))]` -/
def P9712265490261299999.Spec : Prop :=
  ∀ n, (P9712265490261299999.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P14666731274689599437

`∑[C(A089026(n+1), A046665(n+1))]`
-/

namespace A081063.P14666731274689599437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089026 (n + 1)).toNat (A046665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P14666731274689599437

namespace A081063

/-- `∑[C(A089026(n+1), A046665(n+1))]` -/
def P14666731274689599437.Spec : Prop :=
  ∀ n, (P14666731274689599437.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P5329277844171493338

`∑[C(2, A006530(n+1)-A014963(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A081063

/-- `∑[C(2, A006530(n+1)-A014963(n+1))]` -/
def P5329277844171493338.Spec : Prop :=
  ∀ n, (P5329277844171493338.a n : ℤ) = A081063 (n + 1)

theorem P5329277844171493338.correct : P5329277844171493338.Spec := by
  intro n
  simp only [A081063, Nat.add_sub_cancel]

end A081063

/-! ## A081063.P15596304758799182043

`∑[C(A157532(n+1)-2, A046665(n+1))]`
-/

namespace A081063.P15596304758799182043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157532 (n + 1) - 2).toNat (A046665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P15596304758799182043

namespace A081063

/-- `∑[C(A157532(n+1)-2, A046665(n+1))]` -/
def P15596304758799182043.Spec : Prop :=
  ∀ n, (P15596304758799182043.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P12877900633960575098

`∑[C(A089608(n+1), A089631(n+1)²²)]`
-/

namespace A081063.P12877900633960575098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089608 (n + 1)).toNat ((A089631 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P12877900633960575098

namespace A081063

/-- `∑[C(A089608(n+1), A089631(n+1)²²)]` -/
def P12877900633960575098.Spec : Prop :=
  ∀ n, (P12877900633960575098.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P7160275412939930599

`∑[A079978(A005063(A028234(n+1)))]`
-/

namespace A081063.P7160275412939930599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A005063 (A028234 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P7160275412939930599

namespace A081063

/-- `∑[A079978(A005063(A028234(n+1)))]` -/
def P7160275412939930599.Spec : Prop :=
  ∀ n, P7160275412939930599.a n = A081063 (n + 1)

end A081063

/-! ## A081063.P14113766196564676464

`∑[val(A006530(A080214(n+1)+1), 2)]`
-/

namespace A081063.P14113766196564676464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (A080214 (n + 1) + 1).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P14113766196564676464

namespace A081063

/-- `∑[val(A006530(A080214(n+1)+1), 2)]` -/
def P14113766196564676464.Spec : Prop :=
  ∀ n, (P14113766196564676464.a n : ℤ) = A081063 (n + 1)

end A081063

/-! ## A081063.P6628994029663900378

`∑[round(1/A080214(A080214(n+1)))]`
-/

namespace A081063.P6628994029663900378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A080214 (A080214 (n + 1)).toNat : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081063.P6628994029663900378

namespace A081063

/-- `∑[round(1/A080214(A080214(n+1)))]` -/
def P6628994029663900378.Spec : Prop :=
  ∀ n, P6628994029663900378.a n = A081063 (n + 1)

end A081063

/-!
# A081064: Irregular array, read by rows: T(n,k) is the number of labeled acyclic digraphs with n nodes and k arcs (n >= 0, 0 <= k <= n*(n-1)/2).

The programs for A081064, there is no canonical definition to state claims against.
-/

/-! ## A081064.P3090228003820501659

`A097622(A350749(n))`
-/

namespace A081064.P3090228003820501659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097622 (A350749 n).toNat

end

end A081064.P3090228003820501659

/-! ## A081064.P2330840772722759755

`A064989(A256504(n)!)`
-/

namespace A081064.P2330840772722759755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Nat.factorial (A256504 n).toNat)

end

end A081064.P2330840772722759755

/-! ## A081064.P8447944970960399712

`A225641(A066739(n)+5)`
-/

namespace A081064.P8447944970960399712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (A066739 n + 5).toNat

end

end A081064.P8447944970960399712

/-! ## A081064.P12311709923741281558

`A000010(A350749(n)+A053501(n))`
-/

namespace A081064.P12311709923741281558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350749 n + A053501 n).toNat

end

end A081064.P12311709923741281558

/-! ## A081064.P5060491508044113880

`A350749(n)-A122841(A321653(n))`
-/

namespace A081064.P5060491508044113880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350749 n - A122841 (A321653 n).toNat

end

end A081064.P5060491508044113880

/-!
# A081065: Numbers n such that n^2 = (1/3)*(n+floor(sqrt(3)*n*floor(sqrt(3)*n))).

The programs for A081065, the canonical program `A081065.P526074215347818451` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081065 has offset 1).

The definition of A081065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081065.P526074215347818451

`14*a(n-1)-a(n-2)-4` with `a(0)=2, a(1)=24`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081065

/-- `14*a(n-1)-a(n-2)-4` -/
def P526074215347818451.Spec : Prop :=
  ∀ n, P526074215347818451.a n = A081065 (n + 1)

theorem P526074215347818451.correct : P526074215347818451.Spec := by
  intro n
  simp only [A081065, Nat.add_sub_cancel]

end A081065

/-! ## A081065.P11209860701729037585

`∑[ogf((2-6x)/(1-14x+x^2))]`
-/

namespace A081065.P11209860701729037585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081065.P11209860701729037585

namespace A081065

/-- `∑[ogf((2-6x)/(1-14x+x^2))]` -/
def P11209860701729037585.Spec : Prop :=
  ∀ n, P11209860701729037585.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P14360565239744338501

`ogf((2-6x)/(1-15x+15x^2-x^3))`
-/

namespace A081065.P14360565239744338501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -15, 15, -1] n

end

end A081065.P14360565239744338501

namespace A081065

/-- `ogf((2-6x)/(1-15x+15x^2-x^3))` -/
def P14360565239744338501.Spec : Prop :=
  ∀ n, P14360565239744338501.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P3525048347173738744

`record[2-ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=2`
-/

namespace A081065.P3525048347173738744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081065.P3525048347173738744

namespace A081065

/-- `record[2-ceil((sqrt(3)+2)*a(n-1))]` -/
def P3525048347173738744.Spec : Prop :=
  ∀ n, P3525048347173738744.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P15306734742771879473

`2*A046174(n+1)`
-/

namespace A081065.P15306734742771879473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046174 (n + 1)

end

end A081065.P15306734742771879473

namespace A081065

/-- `2*A046174(n+1)` -/
def P15306734742771879473.Spec : Prop :=
  ∀ n, P15306734742771879473.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P8275183368017760471

`A217233(Δ[n²])+1`
-/

namespace A081065.P8275183368017760471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A081065.P8275183368017760471

namespace A081065

/-- `A217233(Δ[n²])+1` -/
def P8275183368017760471.Spec : Prop :=
  ∀ n, P8275183368017760471.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P14379805326692761343

`2*A109437(Δ[n²])`
-/

namespace A081065.P14379805326692761343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109437 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081065.P14379805326692761343

namespace A081065

/-- `2*A109437(Δ[n²])` -/
def P14379805326692761343.Spec : Prop :=
  ∀ n, P14379805326692761343.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P17710924020317384108

`Δ[2*∑[A046174(n)]]`
-/

namespace A081065.P17710924020317384108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081065.P17710924020317384108

namespace A081065

/-- `Δ[2*∑[A046174(n)]]` -/
def P17710924020317384108.Spec : Prop :=
  ∀ n, P17710924020317384108.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P10664835563664615997

`∑[2*A122769(n+1)]`
-/

namespace A081065.P10664835563664615997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081065.P10664835563664615997

namespace A081065

/-- `∑[2*A122769(n+1)]` -/
def P10664835563664615997.Spec : Prop :=
  ∀ n, P10664835563664615997.a n = A081065 (n + 1)

end A081065

/-! ## A081065.P17504870200519770926

`∑[A003699(2*n+1)]+1`
-/

namespace A081065.P17504870200519770926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003699 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A081065.P17504870200519770926

namespace A081065

/-- `∑[A003699(2*n+1)]+1` -/
def P17504870200519770926.Spec : Prop :=
  ∀ n, P17504870200519770926.a n = A081065 (n + 1)

end A081065

/-!
# A081066: Even order Taylor expansion coefficients at x=0 of exp(exp(x^2/2)-1), odd order coefficients being equal to zero.

The programs for A081066, there is no canonical definition to state claims against.
-/

/-! ## A081066.P2427965867330538473

`A000110(n)*A001147(n)`
-/

namespace A081066.P2427965867330538473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A001147 n

end

end A081066.P2427965867330538473

/-! ## A081066.P9033663343753103029

`abs(A001147(n)*A292935(n))`
-/

namespace A081066.P9033663343753103029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001147 n * A292935 n|

end

end A081066.P9033663343753103029

/-! ## A081066.P4871882442762841342

`A000110(n)*A028338(∑[n])`
-/

namespace A081066.P4871882442762841342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A028338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081066.P4871882442762841342

/-! ## A081066.P4204996765356500740

`A000110(n)*A055634(2*n)`
-/

namespace A081066.P4204996765356500740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A055634 (2 * n)

end

end A081066.P4204996765356500740

/-! ## A081066.P17392229609440130817

`A000110(n)*A123023(2*n)`
-/

namespace A081066.P17392229609440130817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A123023 (2 * n)

end

end A081066.P17392229609440130817

/-!
# A081067: a(n) = Lucas(4n+2)+2, or 5*Fibonacci(2n+1)^2.

The programs for A081067, the canonical program `A081067.P1910333897961818214` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081067 has offset 0).

The definition of A081067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081067.P1910333897961818214

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=5, a(1)=20, a(2)=125`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081067

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P1910333897961818214.Spec : Prop :=
  ∀ n, P1910333897961818214.a n = A081067 n

theorem P1910333897961818214.correct : P1910333897961818214.Spec := by
  intro n
  simp only [A081067]

end A081067

/-! ## A081067.P11933143033784580556

`A081077(n)-1`
-/

namespace A081067.P11933143033784580556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081077 n - 1

end

end A081067.P11933143033784580556

namespace A081067

/-- `A081077(n)-1` -/
def P11933143033784580556.Spec : Prop :=
  ∀ n, P11933143033784580556.a n = A081067 n

end A081067

/-! ## A081067.P15735189554708435024

`5*A081068(n)`
-/

namespace A081067.P15735189554708435024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081068 n

end

end A081067.P15735189554708435024

namespace A081067

/-- `5*A081068(n)` -/
def P15735189554708435024.Spec : Prop :=
  ∀ n, P15735189554708435024.a n = A081067 n

end A081067

/-! ## A081067.P11349576543417495733

`∑[ceil(ϕ^(2*n))]²+4`
-/

namespace A081067.P11349576543417495733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (2 * n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 4

end

end A081067.P11349576543417495733

namespace A081067

/-- `∑[ceil(ϕ^(2*n))]²+4` -/
def P11349576543417495733.Spec : Prop :=
  ∀ n, P11349576543417495733.a n = A081067 n

end A081067

/-! ## A081067.P4805845710278242388

`or(4, floor(ϕ^(2*n+1))²)`
-/

namespace A081067.P4805845710278242388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (⌊Real.goldenRatio ^ (2 * n + 1)⌋ ^ 2)

end

end A081067.P4805845710278242388

namespace A081067

/-- `or(4, floor(ϕ^(2*n+1))²)` -/
def P4805845710278242388.Spec : Prop :=
  ∀ n, P4805845710278242388.a n = A081067 n

end A081067

/-! ## A081067.P4320583844266295044

`xor(4, floor(ϕ^(2*n+1))²)`
-/

namespace A081067.P4320583844266295044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (⌊Real.goldenRatio ^ (2 * n + 1)⌋ ^ 2)

end

end A081067.P4320583844266295044

namespace A081067

/-- `xor(4, floor(ϕ^(2*n+1))²)` -/
def P4320583844266295044.Spec : Prop :=
  ∀ n, P4320583844266295044.a n = A081067 n

end A081067

/-! ## A081067.P3680274879967212371

`A092387(Δ[n²])`
-/

namespace A081067.P3680274879967212371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081067.P3680274879967212371

namespace A081067

/-- `A092387(Δ[n²])` -/
def P3680274879967212371.Spec : Prop :=
  ∀ n, P3680274879967212371.a n = A081067 n

end A081067

/-! ## A081067.P15127382105124056877

`A099921(Δ[n²])`
-/

namespace A081067.P15127382105124056877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099921 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081067.P15127382105124056877

namespace A081067

/-- `A099921(Δ[n²])` -/
def P15127382105124056877.Spec : Prop :=
  ∀ n, P15127382105124056877.a n = A081067 n

end A081067

/-! ## A081067.P7017541218221410984

`A233000(Δ[n²])`
-/

namespace A081067.P7017541218221410984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081067.P7017541218221410984

namespace A081067

/-- `A233000(Δ[n²])` -/
def P7017541218221410984.Spec : Prop :=
  ∀ n, P7017541218221410984.a n = A081067 n

end A081067

/-! ## A081067.P10127662155724980799

`5*A099496(n)²`
-/

namespace A081067.P10127662155724980799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A099496 n ^ 2

end

end A081067.P10127662155724980799

namespace A081067

/-- `5*A099496(n)²` -/
def P10127662155724980799.Spec : Prop :=
  ∀ n, P10127662155724980799.a n = A081067 n

end A081067

/-! ## A081067.P2106701737368049094

`5*A122367(n)²`
-/

namespace A081067.P2106701737368049094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A122367 n ^ 2

end

end A081067.P2106701737368049094

namespace A081067

/-- `5*A122367(n)²` -/
def P2106701737368049094.Spec : Prop :=
  ∀ n, P2106701737368049094.a n = A081067 n

end A081067

/-! ## A081067.P3560434595052809610

`Δ[5*A103433(n)]`
-/

namespace A081067.P3560434595052809610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A103433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081067.P3560434595052809610

namespace A081067

/-- `Δ[5*A103433(n)]` -/
def P3560434595052809610.Spec : Prop :=
  ∀ n, P3560434595052809610.a n = A081067 n

end A081067

/-! ## A081067.P5442463118667377832

`A000211(4*n+2)`
-/

namespace A081067.P5442463118667377832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (4 * n + 2)

end

end A081067.P5442463118667377832

namespace A081067

/-- `A000211(4*n+2)` -/
def P5442463118667377832.Spec : Prop :=
  ∀ n, P5442463118667377832.a n = A081067 n

end A081067

/-! ## A081067.P14201342974212601469

`5*(A058038(n)+1)`
-/

namespace A081067.P14201342974212601469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A058038 n + 1)

end

end A081067.P14201342974212601469

namespace A081067

/-- `5*(A058038(n)+1)` -/
def P14201342974212601469.Spec : Prop :=
  ∀ n, P14201342974212601469.a n = A081067 n

end A081067

/-! ## A081067.P5522143737822237720

`A068397(4*n+2)`
-/

namespace A081067.P5522143737822237720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068397 (4 * n + 2)

end

end A081067.P5522143737822237720

namespace A081067

/-- `A068397(4*n+2)` -/
def P5522143737822237720.Spec : Prop :=
  ∀ n, P5522143737822237720.a n = A081067 n

end A081067

/-! ## A081067.P5547501835371664458

`5*A208176(2*n)`
-/

namespace A081067.P5547501835371664458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A208176 (2 * n)

end

end A081067.P5547501835371664458

namespace A081067

/-- `5*A208176(2*n)` -/
def P5547501835371664458.Spec : Prop :=
  ∀ n, P5547501835371664458.a n = A081067 n

end A081067

/-! ## A081067.P9622371658915412507

`record[2-Δ[A178115(n)]]`
-/

namespace A081067.P9622371658915412507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081067.P9622371658915412507

namespace A081067

/-- `record[2-Δ[A178115(n)]]` -/
def P9622371658915412507.Spec : Prop :=
  ∀ n, P9622371658915412507.a n = A081067 n

end A081067

/-! ## A081067.P13560120737066573005

`5*A000045(Δ[n²])²`
-/

namespace A081067.P13560120737066573005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A081067.P13560120737066573005

namespace A081067

/-- `5*A000045(Δ[n²])²` -/
def P13560120737066573005.Spec : Prop :=
  ∀ n, P13560120737066573005.a n = A081067 n

end A081067

/-! ## A081067.P3273818524917455582

`5*A166516(2*n+1)`
-/

namespace A081067.P3273818524917455582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A166516 (2 * n + 1)

end

end A081067.P3273818524917455582

namespace A081067

/-- `5*A166516(2*n+1)` -/
def P3273818524917455582.Spec : Prop :=
  ∀ n, P3273818524917455582.a n = A081067 n

end A081067

/-! ## A081067.P5491824684428314501

`5*(∑[A000045(2*n)]+1)²`
-/

namespace A081067.P5491824684428314501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A081067.P5491824684428314501

namespace A081067

/-- `5*(∑[A000045(2*n)]+1)²` -/
def P5491824684428314501.Spec : Prop :=
  ∀ n, P5491824684428314501.a n = A081067 n

end A081067

/-!
# A081068: a(n) = (Lucas(4*n+2) + 2)/5, or Fibonacci(2*n+1)^2, or A081067(n)/5.

The programs for A081068, the canonical program `A081068.P14086700478526043101` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081068 has offset 0).

The definition of A081068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081068.P14086700478526043101

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081068

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P14086700478526043101.Spec : Prop :=
  ∀ n, P14086700478526043101.a n = A081068 n

theorem P14086700478526043101.correct : P14086700478526043101.Spec := by
  intro n
  simp only [A081068]

end A081068

/-! ## A081068.P9142116876139293525

`A122367(n)²`
-/

namespace A081068.P9142116876139293525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n ^ 2

end

end A081068.P9142116876139293525

namespace A081068

/-- `A122367(n)²` -/
def P9142116876139293525.Spec : Prop :=
  ∀ n, P9142116876139293525.a n = A081068 n

end A081068

/-! ## A081068.P2655062030110386079

`A058038(n)+1`
-/

namespace A081068.P2655062030110386079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058038 n + 1

end

end A081068.P2655062030110386079

namespace A081068

/-- `A058038(n)+1` -/
def P2655062030110386079.Spec : Prop :=
  ∀ n, P2655062030110386079.a n = A081068 n

end A081068

/-! ## A081068.P16022253377837075761

`A081067(n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081068.P16022253377837075761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081067 n : ℚ) / 5

end

end A081068.P16022253377837075761

namespace A081068

/-- `A081067(n)/5` -/
def P16022253377837075761.Spec : Prop :=
  ∀ n, P16022253377837075761.a n = (A081068 n : ℚ)

end A081068

/-! ## A081068.P8676984912932705557

`A001519(n+1)²`
-/

namespace A081068.P8676984912932705557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) ^ 2

end

end A081068.P8676984912932705557

namespace A081068

/-- `A001519(n+1)²` -/
def P8676984912932705557.Spec : Prop :=
  ∀ n, P8676984912932705557.a n = A081068 n

end A081068

/-! ## A081068.P16423450046768322554

`A103433(n+1)-A103433(n)`
-/

namespace A081068.P16423450046768322554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103433 (n + 1) - A103433 n

end

end A081068.P16423450046768322554

namespace A081068

/-- `A103433(n+1)-A103433(n)` -/
def P16423450046768322554.Spec : Prop :=
  ∀ n, P16423450046768322554.a n = A081068 n

end A081068

/-! ## A081068.P9322911698818391097

`floor(∑[(-ϕ²)^n])²`
-/

namespace A081068.P9322911698818391097
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-(Real.goldenRatio ^ 2)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2

end

end A081068.P9322911698818391097

namespace A081068

/-- `floor(∑[(-ϕ²)^n])²` -/
def P9322911698818391097.Spec : Prop :=
  ∀ n, P9322911698818391097.a n = A081068 n

end A081068

/-! ## A081068.P6849402088974623736

`∑[ogf((1-4x+x^2)/(1-7x+x^2))]`
-/

namespace A081068.P6849402088974623736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081068.P6849402088974623736

namespace A081068

/-- `∑[ogf((1-4x+x^2)/(1-7x+x^2))]` -/
def P6849402088974623736.Spec : Prop :=
  ∀ n, P6849402088974623736.a n = A081068 n

end A081068

/-! ## A081068.P10804240584852995428

`ogf((1-4x+x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081068.P10804240584852995428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 1] [1, -8, 8, -1] n

end

end A081068.P10804240584852995428

namespace A081068

/-- `ogf((1-4x+x^2)/(1-8x+8x^2-x^3))` -/
def P10804240584852995428.Spec : Prop :=
  ∀ n, P10804240584852995428.a n = A081068 n

end A081068

/-! ## A081068.P16452724771266308366

`floor(ϕ²²*a(n-1))-2` with `a(0)=1`
-/

namespace A081068.P16452724771266308366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (a (n - 1) : ℝ)⌋ - 2

end

end A081068.P16452724771266308366

namespace A081068

/-- `floor(ϕ²²*a(n-1))-2` -/
def P16452724771266308366.Spec : Prop :=
  ∀ n, P16452724771266308366.a n = A081068 n

end A081068

/-! ## A081068.P9978062865785617044

`7*a(n-1)-(a(n-2)+2)` with `a(0)=1, a(1)=4`
-/

namespace A081068.P9978062865785617044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  7 * a (n - 1) - (a (n - 2) + 2)

end

end A081068.P9978062865785617044

namespace A081068

/-- `7*a(n-1)-(a(n-2)+2)` -/
def P9978062865785617044.Spec : Prop :=
  ∀ n, P9978062865785617044.a n = A081068 n

end A081068

/-! ## A081068.P17444651246009364221

`7*a(n-1)-2-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A081068.P17444651246009364221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  7 * a (n - 1) - 2 - a (n - 2)

end

end A081068.P17444651246009364221

namespace A081068

/-- `7*a(n-1)-2-a(n-2)` -/
def P17444651246009364221.Spec : Prop :=
  ∀ n, P17444651246009364221.a n = A081068 n

end A081068

/-! ## A081068.P1234077305645078180

`Δ[A103433(n)]`
-/

namespace A081068.P1234077305645078180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081068.P1234077305645078180

namespace A081068

/-- `Δ[A103433(n)]` -/
def P1234077305645078180.Spec : Prop :=
  ∀ n, P1234077305645078180.a n = A081068 n

end A081068

/-! ## A081068.P5717316614875442038

`A208176(2*n)`
-/

namespace A081068.P5717316614875442038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 (2 * n)

end

end A081068.P5717316614875442038

namespace A081068

/-- `A208176(2*n)` -/
def P5717316614875442038.Spec : Prop :=
  ∀ n, P5717316614875442038.a n = A081068 n

end A081068

/-! ## A081068.P8328526110055007405

`A006498(4*n)`
-/

namespace A081068.P8328526110055007405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (4 * n)

end

end A081068.P8328526110055007405

namespace A081068

/-- `A006498(4*n)` -/
def P8328526110055007405.Spec : Prop :=
  ∀ n, P8328526110055007405.a n = A081068 n

end A081068

/-! ## A081068.P5646283632829542590

`abs(Δ[A156089(n)])`
-/

namespace A081068.P5646283632829542590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081068.P5646283632829542590

namespace A081068

/-- `abs(Δ[A156089(n)])` -/
def P5646283632829542590.Spec : Prop :=
  ∀ n, P5646283632829542590.a n = A081068 n

end A081068

/-! ## A081068.P837229935997112444

`A007598(Δ[n²])`
-/

namespace A081068.P837229935997112444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081068.P837229935997112444

namespace A081068

/-- `A007598(Δ[n²])` -/
def P837229935997112444.Spec : Prop :=
  ∀ n, P837229935997112444.a n = A081068 n

end A081068

/-! ## A081068.P13511272230782827614

`A166516(Δ[n²])`
-/

namespace A081068.P13511272230782827614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081068.P13511272230782827614

namespace A081068

/-- `A166516(Δ[n²])` -/
def P13511272230782827614.Spec : Prop :=
  ∀ n, P13511272230782827614.a n = A081068 n

end A081068

/-! ## A081068.P14542031526862666408

`record[A087123(n)²]`
-/

namespace A081068.P14542031526862666408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081068.P14542031526862666408

namespace A081068

/-- `record[A087123(n)²]` -/
def P14542031526862666408.Spec : Prop :=
  ∀ n, P14542031526862666408.a n = A081068 n

end A081068

/-! ## A081068.P7490772430376882302

`record[A097131(n)²]`
-/

namespace A081068.P7490772430376882302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081068.P7490772430376882302

namespace A081068

/-- `record[A097131(n)²]` -/
def P7490772430376882302.Spec : Prop :=
  ∀ n, P7490772430376882302.a n = A081068 n

end A081068

/-!
# A081069: a(n) = Lucas(4n)+2 = Lucas(2n)^2.

The programs for A081069, the canonical program `A081069.P9508905631308009107` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081069 has offset 0).

The definition of A081069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081069.P9508905631308009107

`7*a(n-1)-a(n-2)-10` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081069

/-- `7*a(n-1)-a(n-2)-10` -/
def P9508905631308009107.Spec : Prop :=
  ∀ n, P9508905631308009107.a n = A081069 n

theorem P9508905631308009107.correct : P9508905631308009107.Spec := by
  intro n
  simp only [A081069]

end A081069

/-! ## A081069.P3558163733479107672

`A005248(n)²`
-/

namespace A081069.P3558163733479107672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n ^ 2

end

end A081069.P3558163733479107672

namespace A081069

/-- `A005248(n)²` -/
def P3558163733479107672.Spec : Prop :=
  ∀ n, P3558163733479107672.a n = A081069 n

end A081069

/-! ## A081069.P8809366243999541468

`A056854(n)+2`
-/

namespace A081069.P8809366243999541468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 n + 2

end

end A081069.P8809366243999541468

namespace A081069

/-- `A056854(n)+2` -/
def P8809366243999541468.Spec : Prop :=
  ∀ n, P8809366243999541468.a n = A081069 n

end A081069

/-! ## A081069.P1592293128324848616

`2^(4*n)*(cos(π/5)^(2*n)+cos(3*π/5)^(2*n))²`
-/

namespace A081069.P1592293128324848616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (4 * n) : ℝ) * (Real.cos (Real.pi / 5) ^ (2 * n) + Real.cos (3 * Real.pi / 5) ^ (2 * n)) ^ 2

end

end A081069.P1592293128324848616

namespace A081069

/-- `2^(4*n)*(cos(π/5)^(2*n)+cos(3*π/5)^(2*n))²` -/
def P1592293128324848616.Spec : Prop :=
  ∀ n, P1592293128324848616.a n = (A081069 n : ℝ)

end A081069

/-! ## A081069.P1122734431083481990

`(floor((ϕ^n)²)+1)²`
-/

namespace A081069.P1122734431083481990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(Real.goldenRatio ^ n) ^ 2⌋ + 1) ^ 2

end

end A081069.P1122734431083481990

namespace A081069

/-- `(floor((ϕ^n)²)+1)²` -/
def P1122734431083481990.Spec : Prop :=
  ∀ n, P1122734431083481990.a n = A081069 n

end A081069

/-! ## A081069.P9031043671495849639

`∑[ogf((5x+5x^2)/(1-7x+x^2))]+4`
-/

namespace A081069.P9031043671495849639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 5] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A081069.P9031043671495849639

namespace A081069

/-- `∑[ogf((5x+5x^2)/(1-7x+x^2))]+4` -/
def P9031043671495849639.Spec : Prop :=
  ∀ n, P9031043671495849639.a n = A081069 n

end A081069

/-! ## A081069.P561567206185344800

`record[A075150(n)]`
-/

namespace A081069.P561567206185344800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081069.P561567206185344800

namespace A081069

/-- `record[A075150(n)]` -/
def P561567206185344800.Spec : Prop :=
  ∀ n, P561567206185344800.a n = A081069 n

end A081069

/-! ## A081069.P15824461064341572458

`A081076(n)-1`
-/

namespace A081069.P15824461064341572458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081076 n - 1

end

end A081069.P15824461064341572458

namespace A081069

/-- `A081076(n)-1` -/
def P15824461064341572458.Spec : Prop :=
  ∀ n, P15824461064341572458.a n = A081069 n

end A081069

/-! ## A081069.P16071336885425763416

`A001254(2*n)`
-/

namespace A081069.P16071336885425763416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (2 * n)

end

end A081069.P16071336885425763416

namespace A081069

/-- `A001254(2*n)` -/
def P16071336885425763416.Spec : Prop :=
  ∀ n, P16071336885425763416.a n = A081069 n

end A081069

/-! ## A081069.P17588136179314020313

`A075150(2*n)`
-/

namespace A081069.P17588136179314020313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 (2 * n)

end

end A081069.P17588136179314020313

namespace A081069

/-- `A075150(2*n)` -/
def P17588136179314020313.Spec : Prop :=
  ∀ n, P17588136179314020313.a n = A081069 n

end A081069

/-! ## A081069.P5198837891377797210

`A081070(n)+4`
-/

namespace A081069.P5198837891377797210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081070 n + 4

end

end A081069.P5198837891377797210

namespace A081069

/-- `A081070(n)+4` -/
def P5198837891377797210.Spec : Prop :=
  ∀ n, P5198837891377797210.a n = A081069 n

end A081069

/-! ## A081069.P2316622888191364770

`A092387(2*n)`
-/

namespace A081069.P2316622888191364770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092387 (2 * n)

end

end A081069.P2316622888191364770

namespace A081069

/-- `A092387(2*n)` -/
def P2316622888191364770.Spec : Prop :=
  ∀ n, P2316622888191364770.a n = A081069 n

end A081069

/-! ## A081069.P11410556891731918320

`A000211(4*n)`
-/

namespace A081069.P11410556891731918320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (4 * n)

end

end A081069.P11410556891731918320

namespace A081069

/-- `A000211(4*n)` -/
def P11410556891731918320.Spec : Prop :=
  ∀ n, P11410556891731918320.a n = A081069 n

end A081069

/-! ## A081069.P14203692306205996892

`A001638(4*n)`
-/

namespace A081069.P14203692306205996892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (4 * n)

end

end A081069.P14203692306205996892

namespace A081069

/-- `A001638(4*n)` -/
def P14203692306205996892.Spec : Prop :=
  ∀ n, P14203692306205996892.a n = A081069 n

end A081069

/-! ## A081069.P6380318396949400212

`record[A005247(n)²]`
-/

namespace A081069.P6380318396949400212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081069.P6380318396949400212

namespace A081069

/-- `record[A005247(n)²]` -/
def P6380318396949400212.Spec : Prop :=
  ∀ n, P6380318396949400212.a n = A081069 n

end A081069

/-! ## A081069.P4749332221238589185

`A047946(2*n)+1`
-/

namespace A081069.P4749332221238589185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047946 (2 * n) + 1

end

end A081069.P4749332221238589185

namespace A081069

/-- `A047946(2*n)+1` -/
def P4749332221238589185.Spec : Prop :=
  ∀ n, P4749332221238589185.a n = A081069 n

end A081069

/-! ## A081069.P459790753673879673

`A065034(2*n)+1`
-/

namespace A081069.P459790753673879673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065034 (2 * n) + 1

end

end A081069.P459790753673879673

namespace A081069

/-- `A065034(2*n)+1` -/
def P459790753673879673.Spec : Prop :=
  ∀ n, P459790753673879673.a n = A081069 n

end A081069

/-! ## A081069.P14872643640702388731

`A005248(2*n)+2`
-/

namespace A081069.P14872643640702388731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (2 * n) + 2

end

end A081069.P14872643640702388731

namespace A081069

/-- `A005248(2*n)+2` -/
def P14872643640702388731.Spec : Prop :=
  ∀ n, P14872643640702388731.a n = A081069 n

end A081069

/-! ## A081069.P5812976809312393639

`A005592(2*n)+3`
-/

namespace A081069.P5812976809312393639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (2 * n) + 3

end

end A081069.P5812976809312393639

namespace A081069

/-- `A005592(2*n)+3` -/
def P5812976809312393639.Spec : Prop :=
  ∀ n, P5812976809312393639.a n = A081069 n

end A081069

/-! ## A081069.P4262322202067264577

`A110391(2*n)+3`
-/

namespace A081069.P4262322202067264577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110391 (2 * n) + 3

end

end A081069.P4262322202067264577

namespace A081069

/-- `A110391(2*n)+3` -/
def P4262322202067264577.Spec : Prop :=
  ∀ n, P4262322202067264577.a n = A081069 n

end A081069

/-!
# A081070: Lucas(4n)-2, or 5*Fibonacci(2n)^2.

The programs for A081070, the canonical program `A081070.P17206188483115242791` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081070 has offset 0).

The definition of A081070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081070.P17206188483115242791

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=45`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081070

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P17206188483115242791.Spec : Prop :=
  ∀ n, P17206188483115242791.a n = A081070 n

theorem P17206188483115242791.correct : P17206188483115242791.Spec := by
  intro n
  simp only [A081070]

end A081070

/-! ## A081070.P14268241577775120042

`5*A049684(n)`
-/

namespace A081070.P14268241577775120042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049684 n

end

end A081070.P14268241577775120042

namespace A081070

/-- `5*A049684(n)` -/
def P14268241577775120042.Spec : Prop :=
  ∀ n, P14268241577775120042.a n = A081070 n

end A081070

/-! ## A081070.P17427173629468339812

`floor(ϕ^(4*n))-1`
-/

namespace A081070.P17427173629468339812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (4 * n)⌋ - 1

end

end A081070.P17427173629468339812

namespace A081070

/-- `floor(ϕ^(4*n))-1` -/
def P17427173629468339812.Spec : Prop :=
  ∀ n, P17427173629468339812.a n = A081070 n

end A081070

/-! ## A081070.P1338116302314906229

`∑[ogf((5x+5x^2)/(1-7x+x^2))]`
-/

namespace A081070.P1338116302314906229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 5] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081070.P1338116302314906229

namespace A081070

/-- `∑[ogf((5x+5x^2)/(1-7x+x^2))]` -/
def P1338116302314906229.Spec : Prop :=
  ∀ n, P1338116302314906229.a n = A081070 n

end A081070

/-! ## A081070.P5979909025013757012

`ogf((5x+5x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081070.P5979909025013757012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 5] [1, -8, 8, -1] n

end

end A081070.P5979909025013757012

namespace A081070

/-- `ogf((5x+5x^2)/(1-8x+8x^2-x^3))` -/
def P5979909025013757012.Spec : Prop :=
  ∀ n, P5979909025013757012.a n = A081070 n

end A081070

/-! ## A081070.P5588263103715266657

`A004146(2*n)`
-/

namespace A081070.P5588263103715266657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (2 * n)

end

end A081070.P5588263103715266657

namespace A081070

/-- `A004146(2*n)` -/
def P5588263103715266657.Spec : Prop :=
  ∀ n, P5588263103715266657.a n = A081070 n

end A081070

/-! ## A081070.P17337857736592364911

`A001350(4*n)`
-/

namespace A081070.P17337857736592364911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (4 * n)

end

end A081070.P17337857736592364911

namespace A081070

/-- `A001350(4*n)` -/
def P17337857736592364911.Spec : Prop :=
  ∀ n, P17337857736592364911.a n = A081070 n

end A081070

/-! ## A081070.P9121639668330847074

`5*A001906(n)²`
-/

namespace A081070.P9121639668330847074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001906 n ^ 2

end

end A081070.P9121639668330847074

namespace A081070

/-- `5*A001906(n)²` -/
def P9121639668330847074.Spec : Prop :=
  ∀ n, P9121639668330847074.a n = A081070 n

end A081070

/-! ## A081070.P5112209602907187042

`5*A007598(2*n)`
-/

namespace A081070.P5112209602907187042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007598 (2 * n)

end

end A081070.P5112209602907187042

namespace A081070

/-- `5*A007598(2*n)` -/
def P5112209602907187042.Spec : Prop :=
  ∀ n, P5112209602907187042.a n = A081070 n

end A081070

/-! ## A081070.P1745496480145313170

`xor(2, A005248(2*n))`
-/

namespace A081070.P1745496480145313170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A005248 (2 * n))

end

end A081070.P1745496480145313170

namespace A081070

/-- `xor(2, A005248(2*n))` -/
def P1745496480145313170.Spec : Prop :=
  ∀ n, P1745496480145313170.a n = A081070 n

end A081070

/-! ## A081070.P7567520854319994823

`xor(2, A000032(4*n))`
-/

namespace A081070.P7567520854319994823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A000032 (4 * n))

end

end A081070.P7567520854319994823

namespace A081070

/-- `xor(2, A000032(4*n))` -/
def P7567520854319994823.Spec : Prop :=
  ∀ n, P7567520854319994823.a n = A081070 n

end A081070

/-! ## A081070.P1607191535100554375

`5*A000045(2*n)²`
-/

namespace A081070.P1607191535100554375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (2 * n) ^ 2

end

end A081070.P1607191535100554375

namespace A081070

/-- `5*A000045(2*n)²` -/
def P1607191535100554375.Spec : Prop :=
  ∀ n, P1607191535100554375.a n = A081070 n

end A081070

/-! ## A081070.P16491639361049622896

`xor(2, A005248(n)²-2)`
-/

namespace A081070.P16491639361049622896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A005248 n ^ 2 - 2)

end

end A081070.P16491639361049622896

namespace A081070

/-- `xor(2, A005248(n)²-2)` -/
def P16491639361049622896.Spec : Prop :=
  ∀ n, P16491639361049622896.a n = A081070 n

end A081070

/-! ## A081070.P5983701985065351217

`∑[5*A000045(record[lcm(2, n)])]`
-/

namespace A081070.P5983701985065351217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081070.P5983701985065351217

namespace A081070

/-- `∑[5*A000045(record[lcm(2, n)])]` -/
def P5983701985065351217.Spec : Prop :=
  ∀ n, P5983701985065351217.a n = A081070 n

end A081070

/-! ## A081070.P9256094643368318345

`5*floor(A000032(2*n)²/5)`
-/

namespace A081070.P9256094643368318345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(A000032 (2 * n) ^ 2 : ℚ) / 5⌋

end

end A081070.P9256094643368318345

namespace A081070

/-- `5*floor(A000032(2*n)²/5)` -/
def P9256094643368318345.Spec : Prop :=
  ∀ n, P9256094643368318345.a n = A081070 n

end A081070

/-! ## A081070.P6968284695445231162

`A301653(A004273(2*n))`
-/

namespace A081070.P6968284695445231162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 (A004273 (2 * n)).toNat

end

end A081070.P6968284695445231162

namespace A081070

/-- `A301653(A004273(2*n))` -/
def P6968284695445231162.Spec : Prop :=
  ∀ n, P6968284695445231162.a n = A081070 n

end A081070

/-! ## A081070.P12800394675876138842

`A001906(n)*A054888(n)`
-/

namespace A081070.P12800394675876138842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A054888 n

end

end A081070.P12800394675876138842

namespace A081070

/-- `A001906(n)*A054888(n)` -/
def P12800394675876138842.Spec : Prop :=
  ∀ n, P12800394675876138842.a n = A081070 n

end A081070

/-! ## A081070.P10267319600104093526

`A037451(n)*A280154(n)`
-/

namespace A081070.P10267319600104093526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037451 n * A280154 n

end

end A081070.P10267319600104093526

namespace A081070

/-- `A037451(n)*A280154(n)` -/
def P10267319600104093526.Spec : Prop :=
  ∀ n, P10267319600104093526.a n = A081070 n

end A081070

/-! ## A081070.P16152630392807259766

`record[A000032(A019425(n))-2]`
-/

namespace A081070.P16152630392807259766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A019425 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081070.P16152630392807259766

namespace A081070

/-- `record[A000032(A019425(n))-2]` -/
def P16152630392807259766.Spec : Prop :=
  ∀ n, P16152630392807259766.a n = A081070 n

end A081070

/-! ## A081070.P9002154551324459951

`record[A000032(A022998(n))-2]`
-/

namespace A081070.P9002154551324459951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A022998 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081070.P9002154551324459951

namespace A081070

/-- `record[A000032(A022998(n))-2]` -/
def P9002154551324459951.Spec : Prop :=
  ∀ n, P9002154551324459951.a n = A081070 n

end A081070

/-!
# A081071: a(n) = Lucas(4*n+2)-2 = Lucas(2*n+1)^2.

The programs for A081071, the canonical program `A081071.P14381263369620263893` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081071 has offset 0).

The definition of A081071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081071.P14381263369620263893

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=16, a(2)=121`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081071

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P14381263369620263893.Spec : Prop :=
  ∀ n, P14381263369620263893.a n = A081071 n

theorem P14381263369620263893.correct : P14381263369620263893.Spec := by
  intro n
  simp only [A081071]

end A081071

/-! ## A081071.P7714146270781062965

`floor(ϕ^Δ[n²])²`
-/

namespace A081071.P7714146270781062965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌋ ^ 2

end

end A081071.P7714146270781062965

namespace A081071

/-- `floor(ϕ^Δ[n²])²` -/
def P7714146270781062965.Spec : Prop :=
  ∀ n, P7714146270781062965.a n = A081071 n

end A081071

/-! ## A081071.P8972790267174079465

`∑[ogf((1+8x+x^2)/(1-7x+x^2))]`
-/

namespace A081071.P8972790267174079465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081071.P8972790267174079465

namespace A081071

/-- `∑[ogf((1+8x+x^2)/(1-7x+x^2))]` -/
def P8972790267174079465.Spec : Prop :=
  ∀ n, P8972790267174079465.a n = A081071 n

end A081071

/-! ## A081071.P10997670581686897432

`ogf((1+8x+x^2)/(1-8x+8x^2-x^3))`
-/

namespace A081071.P10997670581686897432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 1] [1, -8, 8, -1] n

end

end A081071.P10997670581686897432

namespace A081071

/-- `ogf((1+8x+x^2)/(1-8x+8x^2-x^3))` -/
def P10997670581686897432.Spec : Prop :=
  ∀ n, P10997670581686897432.a n = A081071 n

end A081071

/-! ## A081071.P16158788278433774391

`and(-3, floor(ϕ^(2*n+1))²)`
-/

namespace A081071.P16158788278433774391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (⌊Real.goldenRatio ^ (2 * n + 1)⌋ ^ 2)

end

end A081071.P16158788278433774391

namespace A081071

/-- `and(-3, floor(ϕ^(2*n+1))²)` -/
def P16158788278433774391.Spec : Prop :=
  ∀ n, P16158788278433774391.a n = A081071 n

end A081071

/-! ## A081071.P12920591950305872026

`floor(ϕ^(2*n+1))^gcd(2, 2*n)`
-/

namespace A081071.P12920591950305872026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (2 * n + 1)⌋ ^ Nat.gcd 2 (2 * n)

end

end A081071.P12920591950305872026

namespace A081071

/-- `floor(ϕ^(2*n+1))^gcd(2, 2*n)` -/
def P12920591950305872026.Spec : Prop :=
  ∀ n, P12920591950305872026.a n = A081071 n

end A081071

/-! ## A081071.P11497504457807503535

`A081079(n)+1`
-/

namespace A081071.P11497504457807503535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081079 n + 1

end

end A081071.P11497504457807503535

namespace A081071

/-- `A081079(n)+1` -/
def P11497504457807503535.Spec : Prop :=
  ∀ n, P11497504457807503535.a n = A081071 n

end A081071

/-! ## A081071.P18247990032090811925

`A342710(n)-2`
-/

namespace A081071.P18247990032090811925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342710 n - 2

end

end A081071.P18247990032090811925

namespace A081071

/-- `A342710(n)-2` -/
def P18247990032090811925.Spec : Prop :=
  ∀ n, P18247990032090811925.a n = A081071 n

end A081071

/-! ## A081071.P15510194476699504202

`A200408(2*n)`
-/

namespace A081071.P15510194476699504202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200408 (2 * n)

end

end A081071.P15510194476699504202

namespace A081071

/-- `A200408(2*n)` -/
def P15510194476699504202.Spec : Prop :=
  ∀ n, P15510194476699504202.a n = A081071 n

end A081071

/-! ## A081071.P7323925508005493074

`A081067(n)-4`
-/

namespace A081071.P7323925508005493074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081067 n - 4

end

end A081071.P7323925508005493074

namespace A081071

/-- `A081067(n)-4` -/
def P7323925508005493074.Spec : Prop :=
  ∀ n, P7323925508005493074.a n = A081071 n

end A081071

/-! ## A081071.P14561676961196821483

`A006499(4*n)`
-/

namespace A081071.P14561676961196821483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006499 (4 * n)

end

end A081071.P14561676961196821483

namespace A081071

/-- `A006499(4*n)` -/
def P14561676961196821483.Spec : Prop :=
  ∀ n, P14561676961196821483.a n = A081071 n

end A081071

/-! ## A081071.P8154698893693827084

`A014739(4*n)`
-/

namespace A081071.P8154698893693827084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (4 * n)

end

end A081071.P8154698893693827084

namespace A081071

/-- `A014739(4*n)` -/
def P8154698893693827084.Spec : Prop :=
  ∀ n, P8154698893693827084.a n = A081071 n

end A081071

/-! ## A081071.P17821801629675827407

`A081077(n)-5`
-/

namespace A081071.P17821801629675827407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081077 n - 5

end

end A081071.P17821801629675827407

namespace A081071

/-- `A081077(n)-5` -/
def P17821801629675827407.Spec : Prop :=
  ∀ n, P17821801629675827407.a n = A081071 n

end A081071

/-! ## A081071.P14557874103008925207

`A001254(Δ[n²])`
-/

namespace A081071.P14557874103008925207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081071.P14557874103008925207

namespace A081071

/-- `A001254(Δ[n²])` -/
def P14557874103008925207.Spec : Prop :=
  ∀ n, P14557874103008925207.a n = A081071 n

end A081071

/-! ## A081071.P7117441033925098197

`A004146(Δ[n²])`
-/

namespace A081071.P7117441033925098197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081071.P7117441033925098197

namespace A081071

/-- `A004146(Δ[n²])` -/
def P7117441033925098197.Spec : Prop :=
  ∀ n, P7117441033925098197.a n = A081071 n

end A081071

/-! ## A081071.P12504927476479885859

`A152152(Δ[n²])`
-/

namespace A081071.P12504927476479885859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152152 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081071.P12504927476479885859

namespace A081071

/-- `A152152(Δ[n²])` -/
def P12504927476479885859.Spec : Prop :=
  ∀ n, P12504927476479885859.a n = A081071 n

end A081071

/-! ## A081071.P5297187515756717619

`A173661(Δ[n²])`
-/

namespace A081071.P5297187515756717619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173661 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081071.P5297187515756717619

namespace A081071

/-- `A173661(Δ[n²])` -/
def P5297187515756717619.Spec : Prop :=
  ∀ n, P5297187515756717619.a n = A081071 n

end A081071

/-! ## A081071.P6162409930333711513

`record[A154699(n)²]`
-/

namespace A081071.P6162409930333711513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081071.P6162409930333711513

namespace A081071

/-- `record[A154699(n)²]` -/
def P6162409930333711513.Spec : Prop :=
  ∀ n, P6162409930333711513.a n = A081071 n

end A081071

/-! ## A081071.P10415760557560255146

`Δ[A033888(n)]-2`
-/

namespace A081071.P10415760557560255146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A081071.P10415760557560255146

namespace A081071

/-- `Δ[A033888(n)]-2` -/
def P10415760557560255146.Spec : Prop :=
  ∀ n, P10415760557560255146.a n = A081071 n

end A081071

/-! ## A081071.P1162893440879158501

`∑[A054888(2*n)]`
-/

namespace A081071.P1162893440879158501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081071.P1162893440879158501

namespace A081071

/-- `∑[A054888(2*n)]` -/
def P1162893440879158501.Spec : Prop :=
  ∀ n, P1162893440879158501.a n = A081071 n

end A081071

/-!
# A081072: a(n) = Fibonacci(4*n) + 3, or Fibonacci(2*n+2)*Lucas(2*n-2).

The programs for A081072, the canonical program `A081072.P6725620215786614116` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081072 has offset 0).

The definition of A081072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081072.P6725620215786614116

`3+A033888(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081072

/-- `3+A033888(n)` -/
def P6725620215786614116.Spec : Prop :=
  ∀ n, P6725620215786614116.a n = A081072 n

theorem P6725620215786614116.correct : P6725620215786614116.Spec := by
  intro n
  simp only [A081072]

end A081072

/-! ## A081072.P5383292910386795755

`(A004187(n)+1)*3`
-/

namespace A081072.P5383292910386795755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004187 n + 1) * 3

end

end A081072.P5383292910386795755

namespace A081072

/-- `(A004187(n)+1)*3` -/
def P5383292910386795755.Spec : Prop :=
  ∀ n, P5383292910386795755.a n = A081072 n

end A081072

/-! ## A081072.P7289281364395967997

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=3, a(1)=6, a(2)=24`
-/

namespace A081072.P7289281364395967997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 24] fun n a =>
  8 * a (n - 1) - 8 * a (n - 2) + a (n - 3)

end

end A081072.P7289281364395967997

namespace A081072

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P7289281364395967997.Spec : Prop :=
  ∀ n, P7289281364395967997.a n = A081072 n

end A081072

/-! ## A081072.P421571215402424083

`∑[7*a(n-1)-a(n-2)]` with `a(0)=3, a(1)=3`
-/

namespace A081072.P421571215402424083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  7 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081072.P421571215402424083

namespace A081072

/-- `∑[7*a(n-1)-a(n-2)]` -/
def P421571215402424083.Spec : Prop :=
  ∀ n, P421571215402424083.a n = A081072 n

end A081072

/-! ## A081072.P4508345264307885343

`A081002(n)+2`
-/

namespace A081072.P4508345264307885343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081002 n + 2

end

end A081072.P4508345264307885343

namespace A081072

/-- `A081002(n)+2` -/
def P4508345264307885343.Spec : Prop :=
  ∀ n, P4508345264307885343.a n = A081072 n

end A081072

/-! ## A081072.P8382385822092733634

`A157726(4*n)`
-/

namespace A081072.P8382385822092733634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (4 * n)

end

end A081072.P8382385822092733634

namespace A081072

/-- `A157726(4*n)` -/
def P8382385822092733634.Spec : Prop :=
  ∀ n, P8382385822092733634.a n = A081072 n

end A081072

/-! ## A081072.P9660106068853645102

`A055588(2*n)+2`
-/

namespace A081072.P9660106068853645102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (2 * n) + 2

end

end A081072.P9660106068853645102

namespace A081072

/-- `A055588(2*n)+2` -/
def P9660106068853645102.Spec : Prop :=
  ∀ n, P9660106068853645102.a n = A081072 n

end A081072

/-! ## A081072.P3250848670352007320

`A001906(2*n)+3`
-/

namespace A081072.P3250848670352007320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) + 3

end

end A081072.P3250848670352007320

namespace A081072

/-- `A001906(2*n)+3` -/
def P3250848670352007320.Spec : Prop :=
  ∀ n, P3250848670352007320.a n = A081072 n

end A081072

/-! ## A081072.P14750106158265638349

`A254884(2*n)+3`
-/

namespace A081072.P14750106158265638349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (2 * n) + 3

end

end A081072.P14750106158265638349

namespace A081072

/-- `A254884(2*n)+3` -/
def P14750106158265638349.Spec : Prop :=
  ∀ n, P14750106158265638349.a n = A081072 n

end A081072

/-! ## A081072.P16373331287718638518

`A001611(4*n)+2`
-/

namespace A081072.P16373331287718638518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (4 * n) + 2

end

end A081072.P16373331287718638518

namespace A081072

/-- `A001611(4*n)+2` -/
def P16373331287718638518.Spec : Prop :=
  ∀ n, P16373331287718638518.a n = A081072 n

end A081072

/-! ## A081072.P4740878726961293361

`A008346(4*n)+2`
-/

namespace A081072.P4740878726961293361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (4 * n) + 2

end

end A081072.P4740878726961293361

namespace A081072

/-- `A008346(4*n)+2` -/
def P4740878726961293361.Spec : Prop :=
  ∀ n, P4740878726961293361.a n = A081072 n

end A081072

/-! ## A081072.P9964266161101200204

`A142880(3*n)+3`
-/

namespace A081072.P9964266161101200204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (3 * n) + 3

end

end A081072.P9964266161101200204

namespace A081072

/-- `A142880(3*n)+3` -/
def P9964266161101200204.Spec : Prop :=
  ∀ n, P9964266161101200204.a n = A081072 n

end A081072

/-! ## A081072.P12727357632116356607

`A142881(3*n)+3`
-/

namespace A081072.P12727357632116356607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n) + 3

end

end A081072.P12727357632116356607

namespace A081072

/-- `A142881(3*n)+3` -/
def P12727357632116356607.Spec : Prop :=
  ∀ n, P12727357632116356607.a n = A081072 n

end A081072

/-! ## A081072.P4747674401102865950

`3+A000045(4*n)`
-/

namespace A081072.P4747674401102865950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A000045 (4 * n)

end

end A081072.P4747674401102865950

namespace A081072

/-- `3+A000045(4*n)` -/
def P4747674401102865950.Spec : Prop :=
  ∀ n, P4747674401102865950.a n = A081072 n

end A081072

/-! ## A081072.P6759532813900503889

`A094966(4*n)+3`
-/

namespace A081072.P6759532813900503889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (4 * n) + 3

end

end A081072.P6759532813900503889

namespace A081072

/-- `A094966(4*n)+3` -/
def P6759532813900503889.Spec : Prop :=
  ∀ n, P6759532813900503889.a n = A081072 n

end A081072

/-! ## A081072.P15750778417544390084

`A249450(2*n)+5`
-/

namespace A081072.P15750778417544390084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (2 * n) + 5

end

end A081072.P15750778417544390084

namespace A081072

/-- `A249450(2*n)+5` -/
def P15750778417544390084.Spec : Prop :=
  ∀ n, P15750778417544390084.a n = A081072 n

end A081072

/-! ## A081072.P6709310333690029301

`∑[A098149(n)²+2]`
-/

namespace A081072.P6709310333690029301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098149 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081072.P6709310333690029301

namespace A081072

/-- `∑[A098149(n)²+2]` -/
def P6709310333690029301.Spec : Prop :=
  ∀ n, P6709310333690029301.a n = A081072 n

end A081072

/-! ## A081072.P8722957281152858315

`A128535(2*n+1)+4`
-/

namespace A081072.P8722957281152858315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (2 * n + 1) + 4

end

end A081072.P8722957281152858315

namespace A081072

/-- `A128535(2*n+1)+4` -/
def P8722957281152858315.Spec : Prop :=
  ∀ n, P8722957281152858315.a n = A081072 n

end A081072

/-! ## A081072.P10299862394188343964

`∑[A000032(abs(2-4*n))]`
-/

namespace A081072.P10299862394188343964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |2 - (4 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081072.P10299862394188343964

namespace A081072

/-- `∑[A000032(abs(2-4*n))]` -/
def P10299862394188343964.Spec : Prop :=
  ∀ n, P10299862394188343964.a n = A081072 n

end A081072

/-! ## A081072.P3267675808632404488

`A000045(eq[n, lcm(4, n)])+3`
-/

namespace A081072.P3267675808632404488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 3

end

end A081072.P3267675808632404488

namespace A081072

/-- `A000045(eq[n, lcm(4, n)])+3` -/
def P3267675808632404488.Spec : Prop :=
  ∀ n, P3267675808632404488.a n = A081072 n

end A081072

/-!
# A081073: Fibonacci(4n+2)+3, or Fibonacci(2n-1)*Lucas(2n+3).

The programs for A081073, the canonical program `A081073.P12170158962247579369` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081073 has offset 0).

The definition of A081073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081073.P12170158962247579369

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=4, a(1)=11, a(2)=58`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081073

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P12170158962247579369.Spec : Prop :=
  ∀ n, P12170158962247579369.a n = A081073 n

theorem P12170158962247579369.correct : P12170158962247579369.Spec := by
  intro n
  simp only [A081073]

end A081073

/-! ## A081073.P511625105857669243

`∑[ogf((2-7x)/(1-7x+x^2))]+2`
-/

namespace A081073.P511625105857669243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A081073.P511625105857669243

namespace A081073

/-- `∑[ogf((2-7x)/(1-7x+x^2))]+2` -/
def P511625105857669243.Spec : Prop :=
  ∀ n, P511625105857669243.a n = A081073 n

end A081073

/-! ## A081073.P11053937008736010155

`A081004(n)+2`
-/

namespace A081073.P11053937008736010155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081004 n + 2

end

end A081073.P11053937008736010155

namespace A081073

/-- `A081004(n)+2` -/
def P11053937008736010155.Spec : Prop :=
  ∀ n, P11053937008736010155.a n = A081073 n

end A081073

/-! ## A081073.P14119895867928519796

`A033890(n)+3`
-/

namespace A081073.P14119895867928519796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 n + 3

end

end A081073.P14119895867928519796

namespace A081073

/-- `A033890(n)+3` -/
def P14119895867928519796.Spec : Prop :=
  ∀ n, P14119895867928519796.a n = A081073 n

end A081073

/-! ## A081073.P4307078607571969641

`A081008(n)+4`
-/

namespace A081073.P4307078607571969641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081008 n + 4

end

end A081073.P4307078607571969641

namespace A081073

/-- `A081008(n)+4` -/
def P4307078607571969641.Spec : Prop :=
  ∀ n, P4307078607571969641.a n = A081073 n

end A081073

/-! ## A081073.P5719831308303035940

`∑[A056854(n)]+2`
-/

namespace A081073.P5719831308303035940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A081073.P5719831308303035940

namespace A081073

/-- `∑[A056854(n)]+2` -/
def P5719831308303035940.Spec : Prop :=
  ∀ n, P5719831308303035940.a n = A081073 n

end A081073

/-! ## A081073.P14027872156886346112

`A035508(2*n)+4`
-/

namespace A081073.P14027872156886346112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 (2 * n) + 4

end

end A081073.P14027872156886346112

namespace A081073

/-- `A035508(2*n)+4` -/
def P14027872156886346112.Spec : Prop :=
  ∀ n, P14027872156886346112.a n = A081073 n

end A081073

/-! ## A081073.P10561228036681654116

`A128533(2*n)+4`
-/

namespace A081073.P10561228036681654116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 (2 * n) + 4

end

end A081073.P10561228036681654116

namespace A081073

/-- `A128533(2*n)+4` -/
def P10561228036681654116.Spec : Prop :=
  ∀ n, P10561228036681654116.a n = A081073 n

end A081073

/-! ## A081073.P16051409595021910800

`A157726(4*n+2)`
-/

namespace A081073.P16051409595021910800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (4 * n + 2)

end

end A081073.P16051409595021910800

namespace A081073

/-- `A157726(4*n+2)` -/
def P16051409595021910800.Spec : Prop :=
  ∀ n, P16051409595021910800.a n = A081073 n

end A081073

/-! ## A081073.P126701407526189637

`A052952(4*n)+3`
-/

namespace A081073.P126701407526189637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (4 * n) + 3

end

end A081073.P126701407526189637

namespace A081073

/-- `A052952(4*n)+3` -/
def P126701407526189637.Spec : Prop :=
  ∀ n, P126701407526189637.a n = A081073 n

end A081073

/-! ## A081073.P15439524273275904989

`A109794(4*n)+3`
-/

namespace A081073.P15439524273275904989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (4 * n) + 3

end

end A081073.P15439524273275904989

namespace A081073

/-- `A109794(4*n)+3` -/
def P15439524273275904989.Spec : Prop :=
  ∀ n, P15439524273275904989.a n = A081073 n

end A081073

/-! ## A081073.P370825939805162357

`A052925(Δ[n²])+2`
-/

namespace A081073.P370825939805162357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052925 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A081073.P370825939805162357

namespace A081073

/-- `A052925(Δ[n²])+2` -/
def P370825939805162357.Spec : Prop :=
  ∀ n, P370825939805162357.a n = A081073 n

end A081073

/-! ## A081073.P9064774966676603026

`A055588(Δ[n²])+2`
-/

namespace A081073.P9064774966676603026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A081073.P9064774966676603026

namespace A081073

/-- `A055588(Δ[n²])+2` -/
def P9064774966676603026.Spec : Prop :=
  ∀ n, P9064774966676603026.a n = A081073 n

end A081073

/-! ## A081073.P3090283770164030118

`A001906(Δ[n²])+3`
-/

namespace A081073.P3090283770164030118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A081073.P3090283770164030118

namespace A081073

/-- `A001906(Δ[n²])+3` -/
def P3090283770164030118.Spec : Prop :=
  ∀ n, P3090283770164030118.a n = A081073 n

end A081073

/-! ## A081073.P10119558174321505777

`A088305(Δ[n²])+3`
-/

namespace A081073.P10119558174321505777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A081073.P10119558174321505777

namespace A081073

/-- `A088305(Δ[n²])+3` -/
def P10119558174321505777.Spec : Prop :=
  ∀ n, P10119558174321505777.a n = A081073 n

end A081073

/-! ## A081073.P16353260013461878532

`A152189(Δ[n²])+3`
-/

namespace A081073.P16353260013461878532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A081073.P16353260013461878532

namespace A081073

/-- `A152189(Δ[n²])+3` -/
def P16353260013461878532.Spec : Prop :=
  ∀ n, P16353260013461878532.a n = A081073 n

end A081073

/-! ## A081073.P15949396317113015479

`A237268(Δ[n²])+3`
-/

namespace A081073.P15949396317113015479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237268 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A081073.P15949396317113015479

namespace A081073

/-- `A237268(Δ[n²])+3` -/
def P15949396317113015479.Spec : Prop :=
  ∀ n, P15949396317113015479.a n = A081073 n

end A081073

/-! ## A081073.P16044045488038558760

`∑[A005248(2*n)]+2`
-/

namespace A081073.P16044045488038558760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A081073.P16044045488038558760

namespace A081073

/-- `∑[A005248(2*n)]+2` -/
def P16044045488038558760.Spec : Prop :=
  ∀ n, P16044045488038558760.a n = A081073 n

end A081073

/-! ## A081073.P10862904892786867255

`∑[A000032(4*n)]+2`
-/

namespace A081073.P10862904892786867255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A081073.P10862904892786867255

namespace A081073

/-- `∑[A000032(4*n)]+2` -/
def P10862904892786867255.Spec : Prop :=
  ∀ n, P10862904892786867255.a n = A081073 n

end A081073

/-! ## A081073.P13715841103797083632

`A128535(2*(n+1))+2`
-/

namespace A081073.P13715841103797083632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (2 * (n + 1)) + 2

end

end A081073.P13715841103797083632

namespace A081073

/-- `A128535(2*(n+1))+2` -/
def P13715841103797083632.Spec : Prop :=
  ∀ n, P13715841103797083632.a n = A081073 n

end A081073

/-!
# A081074: a(n) = Fibonacci(4n)-3, or Fibonacci(2n-2)*Lucas(2n+2).

The programs for A081074, the canonical program `A081074.P6541984208161581512` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081074 has offset 1).

The definition of A081074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081074.P17219457778351352584

`A033888(n+1)-3`
-/

namespace A081074.P17219457778351352584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 (n + 1) - 3

end

end A081074.P17219457778351352584

namespace A081074

/-- `A033888(n+1)-3` -/
def P17219457778351352584.Spec : Prop :=
  ∀ n, P17219457778351352584.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P6541984208161581512

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=0, a(1)=18, a(2)=141`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081074

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P6541984208161581512.Spec : Prop :=
  ∀ n, P6541984208161581512.a n = A081074 (n + 1)

theorem P6541984208161581512.correct : P6541984208161581512.Spec := by
  intro n
  simp only [A081074, Nat.add_sub_cancel]

end A081074

/-! ## A081074.P10987634634673335821

`∑[ogf((3-3x)/(1-7x+x^2))]-3`
-/

namespace A081074.P10987634634673335821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A081074.P10987634634673335821

namespace A081074

/-- `∑[ogf((3-3x)/(1-7x+x^2))]-3` -/
def P10987634634673335821.Spec : Prop :=
  ∀ n, P10987634634673335821.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P17519891366587279020

`7*a(n-1)-a(n-2)+15` with `a(0)=0, a(1)=18`
-/

namespace A081074.P17519891366587279020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18] fun n a =>
  7 * a (n - 1) - a (n - 2) + 15

end

end A081074.P17519891366587279020

namespace A081074

/-- `7*a(n-1)-a(n-2)+15` -/
def P17519891366587279020.Spec : Prop :=
  ∀ n, P17519891366587279020.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P13752169508927068948

`A003481(n)-2`
-/

namespace A081074.P13752169508927068948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003481 n - 2

end

end A081074.P13752169508927068948

namespace A081074

/-- `A003481(n)-2` -/
def P13752169508927068948.Spec : Prop :=
  ∀ n, P13752169508927068948.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P11684601964179065657

`∑[A342710(n)]-3`
-/

namespace A081074.P11684601964179065657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A081074.P11684601964179065657

namespace A081074

/-- `∑[A342710(n)]-3` -/
def P11684601964179065657.Spec : Prop :=
  ∀ n, P11684601964179065657.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P11579945501301926957

`A081002(n+1)-4`
-/

namespace A081074.P11579945501301926957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081002 (n + 1) - 4

end

end A081074.P11579945501301926957

namespace A081074

/-- `A081002(n+1)-4` -/
def P11579945501301926957.Spec : Prop :=
  ∀ n, P11579945501301926957.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P16548390421829677984

`A006327(4*(n+1))`
-/

namespace A081074.P16548390421829677984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (4 * (n + 1))

end

end A081074.P16548390421829677984

namespace A081074

/-- `A006327(4*(n+1))` -/
def P16548390421829677984.Spec : Prop :=
  ∀ n, P16548390421829677984.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P11688307732389476598

`A081072(n+1)-6`
-/

namespace A081074.P11688307732389476598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081072 (n + 1) - 6

end

end A081074.P11688307732389476598

namespace A081074

/-- `A081072(n+1)-6` -/
def P11688307732389476598.Spec : Prop :=
  ∀ n, P11688307732389476598.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P9374528014979822888

`A348591(4*n+2)`
-/

namespace A081074.P9374528014979822888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348591 (4 * n + 2)

end

end A081074.P9374528014979822888

namespace A081074

/-- `A348591(4*n+2)` -/
def P9374528014979822888.Spec : Prop :=
  ∀ n, P9374528014979822888.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P12051052931519008954

`A020706(4*n)-4`
-/

namespace A081074.P12051052931519008954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (4 * n) - 4

end

end A081074.P12051052931519008954

namespace A081074

/-- `A020706(4*n)-4` -/
def P12051052931519008954.Spec : Prop :=
  ∀ n, P12051052931519008954.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P1836086539040380188

`A035508(Δ[n²])-2`
-/

namespace A081074.P1836086539040380188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A081074.P1836086539040380188

namespace A081074

/-- `A035508(Δ[n²])-2` -/
def P1836086539040380188.Spec : Prop :=
  ∀ n, P1836086539040380188.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P1911031332275041705

`A249450(2*(n+1))-1`
-/

namespace A081074.P1911031332275041705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (2 * (n + 1)) - 1

end

end A081074.P1911031332275041705

namespace A081074

/-- `A249450(2*(n+1))-1` -/
def P1911031332275041705.Spec : Prop :=
  ∀ n, P1911031332275041705.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P6602555146529025193

`A001906(2*(n+1))-3`
-/

namespace A081074.P6602555146529025193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * (n + 1)) - 3

end

end A081074.P6602555146529025193

namespace A081074

/-- `A001906(2*(n+1))-3` -/
def P6602555146529025193.Spec : Prop :=
  ∀ n, P6602555146529025193.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P49320825444519039

`A088305(2*(n+1))-3`
-/

namespace A081074.P49320825444519039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (2 * (n + 1)) - 3

end

end A081074.P49320825444519039

namespace A081074

/-- `A088305(2*(n+1))-3` -/
def P49320825444519039.Spec : Prop :=
  ∀ n, P49320825444519039.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P18292968765765495974

`A192068(2*(n+1))-3`
-/

namespace A081074.P18292968765765495974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 (2 * (n + 1)) - 3

end

end A081074.P18292968765765495974

namespace A081074

/-- `A192068(2*(n+1))-3` -/
def P18292968765765495974.Spec : Prop :=
  ∀ n, P18292968765765495974.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P15908449832487387054

`A254884(2*(n+1))-3`
-/

namespace A081074.P15908449832487387054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (2 * (n + 1)) - 3

end

end A081074.P15908449832487387054

namespace A081074

/-- `A254884(2*(n+1))-3` -/
def P15908449832487387054.Spec : Prop :=
  ∀ n, P15908449832487387054.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P17969262000150340621

`A128533(2*n+1)-4`
-/

namespace A081074.P17969262000150340621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 (2 * n + 1) - 4

end

end A081074.P17969262000150340621

namespace A081074

/-- `A128533(2*n+1)-4` -/
def P17969262000150340621.Spec : Prop :=
  ∀ n, P17969262000150340621.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P18336985298553757077

`A128535(2*n+3)-2`
-/

namespace A081074.P18336985298553757077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (2 * n + 3) - 2

end

end A081074.P18336985298553757077

namespace A081074

/-- `A128535(2*n+3)-2` -/
def P18336985298553757077.Spec : Prop :=
  ∀ n, P18336985298553757077.a n = A081074 (n + 1)

end A081074

/-! ## A081074.P15633821250184558323

`A142880(3*(n+1))-3`
-/

namespace A081074.P15633821250184558323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (3 * (n + 1)) - 3

end

end A081074.P15633821250184558323

namespace A081074

/-- `A142880(3*(n+1))-3` -/
def P15633821250184558323.Spec : Prop :=
  ∀ n, P15633821250184558323.a n = A081074 (n + 1)

end A081074

/-!
# A081075: a(n) = Fibonacci(4n+2) - 3.

The programs for A081075, the canonical program `A081075.P10245657521731742976` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081075 has offset 1).

The definition of A081075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081075.P10245657521731742976

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=5, a(1)=52, a(2)=374`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081075

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P10245657521731742976.Spec : Prop :=
  ∀ n, P10245657521731742976.a n = A081075 (n + 1)

theorem P10245657521731742976.correct : P10245657521731742976.Spec := by
  intro n
  simp only [A081075, Nat.add_sub_cancel]

end A081075

/-! ## A081075.P16181754128658789959

`∑[floor(ϕ²²*a(n-1))]-2` with `a(0)=7`
-/

namespace A081075.P16181754128658789959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A081075.P16181754128658789959

namespace A081075

/-- `∑[floor(ϕ²²*a(n-1))]-2` -/
def P16181754128658789959.Spec : Prop :=
  ∀ n, P16181754128658789959.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P2943358555147006318

`A081008(n+1)-2`
-/

namespace A081075.P2943358555147006318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081008 (n + 1) - 2

end

end A081075.P2943358555147006318

namespace A081075

/-- `A081008(n+1)-2` -/
def P2943358555147006318.Spec : Prop :=
  ∀ n, P2943358555147006318.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P14661935856145884637

`A033890(n+1)-3`
-/

namespace A081075.P14661935856145884637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 (n + 1) - 3

end

end A081075.P14661935856145884637

namespace A081075

/-- `A033890(n+1)-3` -/
def P14661935856145884637.Spec : Prop :=
  ∀ n, P14661935856145884637.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P16315304005645895102

`A081004(n+1)-4`
-/

namespace A081075.P16315304005645895102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081004 (n + 1) - 4

end

end A081075.P16315304005645895102

namespace A081075

/-- `A081004(n+1)-4` -/
def P16315304005645895102.Spec : Prop :=
  ∀ n, P16315304005645895102.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P12750618275998914306

`A348591(4*(n+1))`
-/

namespace A081075.P12750618275998914306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348591 (4 * (n + 1))

end

end A081075.P12750618275998914306

namespace A081075

/-- `A348591(4*(n+1))` -/
def P12750618275998914306.Spec : Prop :=
  ∀ n, P12750618275998914306.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P8297215684309851787

`A081073(n+1)-6`
-/

namespace A081075.P8297215684309851787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081073 (n + 1) - 6

end

end A081075.P8297215684309851787

namespace A081075

/-- `A081073(n+1)-6` -/
def P8297215684309851787.Spec : Prop :=
  ∀ n, P8297215684309851787.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P18288337286078210524

`∑[A056854(n+1)]-2`
-/

namespace A081075.P18288337286078210524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A081075.P18288337286078210524

namespace A081075

/-- `∑[A056854(n+1)]-2` -/
def P18288337286078210524.Spec : Prop :=
  ∀ n, P18288337286078210524.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P8523799406423668682

`A035508(2*(n+1))-2`
-/

namespace A081075.P8523799406423668682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 (2 * (n + 1)) - 2

end

end A081075.P8523799406423668682

namespace A081075

/-- `A035508(2*(n+1))-2` -/
def P8523799406423668682.Spec : Prop :=
  ∀ n, P8523799406423668682.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P12780760270340510144

`A128533(2*(n+1))-2`
-/

namespace A081075.P12780760270340510144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 (2 * (n + 1)) - 2

end

end A081075.P12780760270340510144

namespace A081075

/-- `A128533(2*(n+1))-2` -/
def P12780760270340510144.Spec : Prop :=
  ∀ n, P12780760270340510144.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P2066507228222547840

`A249450(2*n+3)-1`
-/

namespace A081075.P2066507228222547840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (2 * n + 3) - 1

end

end A081075.P2066507228222547840

namespace A081075

/-- `A249450(2*n+3)-1` -/
def P2066507228222547840.Spec : Prop :=
  ∀ n, P2066507228222547840.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P11228778616501944075

`A192068(2*n+3)-2`
-/

namespace A081075.P11228778616501944075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 (2 * n + 3) - 2

end

end A081075.P11228778616501944075

namespace A081075

/-- `A192068(2*n+3)-2` -/
def P11228778616501944075.Spec : Prop :=
  ∀ n, P11228778616501944075.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P17121484816846289985

`A001906(2*n+3)-3`
-/

namespace A081075.P17121484816846289985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n + 3) - 3

end

end A081075.P17121484816846289985

namespace A081075

/-- `A001906(2*n+3)-3` -/
def P17121484816846289985.Spec : Prop :=
  ∀ n, P17121484816846289985.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P1699741968560365523

`A006327(2*(2*n+3))`
-/

namespace A081075.P1699741968560365523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (2 * (2 * n + 3))

end

end A081075.P1699741968560365523

namespace A081075

/-- `A006327(2*(2*n+3))` -/
def P1699741968560365523.Spec : Prop :=
  ∀ n, P1699741968560365523.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P2655066533808533490

`A088305(2*n+3)-3`
-/

namespace A081075.P2655066533808533490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (2 * n + 3) - 3

end

end A081075.P2655066533808533490

namespace A081075

/-- `A088305(2*n+3)-3` -/
def P2655066533808533490.Spec : Prop :=
  ∀ n, P2655066533808533490.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P15962698682513862233

`A152189(2*n+3)-3`
-/

namespace A081075.P15962698682513862233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152189 (2 * n + 3) - 3

end

end A081075.P15962698682513862233

namespace A081075

/-- `A152189(2*n+3)-3` -/
def P15962698682513862233.Spec : Prop :=
  ∀ n, P15962698682513862233.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P6217990209204879189

`A237268(2*n+3)-3`
-/

namespace A081075.P6217990209204879189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237268 (2 * n + 3) - 3

end

end A081075.P6217990209204879189

namespace A081075

/-- `A237268(2*n+3)-3` -/
def P6217990209204879189.Spec : Prop :=
  ∀ n, P6217990209204879189.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P7638935430450928669

`A000045(4*n+6)-3`
-/

namespace A081075.P7638935430450928669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n + 6) - 3

end

end A081075.P7638935430450928669

namespace A081075

/-- `A000045(4*n+6)-3` -/
def P7638935430450928669.Spec : Prop :=
  ∀ n, P7638935430450928669.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P11084656806289840555

`Δ[A001906(n+1)²]-3`
-/

namespace A081075.P11084656806289840555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A081075.P11084656806289840555

namespace A081075

/-- `Δ[A001906(n+1)²]-3` -/
def P11084656806289840555.Spec : Prop :=
  ∀ n, P11084656806289840555.a n = A081075 (n + 1)

end A081075

/-! ## A081075.P2527387330430006764

`Δ[A088305(n+1)²]-3`
-/

namespace A081075.P2527387330430006764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A081075.P2527387330430006764

namespace A081075

/-- `Δ[A088305(n+1)²]-3` -/
def P2527387330430006764.Spec : Prop :=
  ∀ n, P2527387330430006764.a n = A081075 (n + 1)

end A081075

/-!
# A081076: a(n) = Lucas(4n) + 3, or 5*Fibonacci(2n-1)*Fibonacci(2n+1).

The programs for A081076, the canonical program `A081076.P16798314503129126933` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081076 has offset 0).

The definition of A081076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081076.P16798314503129126933

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=5, a(1)=10, a(2)=50`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081076

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P16798314503129126933.Spec : Prop :=
  ∀ n, P16798314503129126933.a n = A081076 n

theorem P16798314503129126933.correct : P16798314503129126933.Spec := by
  intro n
  simp only [A081076]

end A081076

/-! ## A081076.P14662587103409243069

`5*A064170(n+2)`
-/

namespace A081076.P14662587103409243069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A064170 (n + 2)

end

end A081076.P14662587103409243069

namespace A081076

/-- `5*A064170(n+2)` -/
def P14662587103409243069.Spec : Prop :=
  ∀ n, P14662587103409243069.a n = A081076 n

end A081076

/-! ## A081076.P11720425902055616365

`floor(ϕ^(4*n))+4`
-/

namespace A081076.P11720425902055616365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (4 * n)⌋ + 4

end

end A081076.P11720425902055616365

namespace A081076

/-- `floor(ϕ^(4*n))+4` -/
def P11720425902055616365.Spec : Prop :=
  ∀ n, P11720425902055616365.a n = A081076 n

end A081076

/-! ## A081076.P3694586432127833908

`record[A075150(n)+1]`
-/

namespace A081076.P3694586432127833908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081076.P3694586432127833908

namespace A081076

/-- `record[A075150(n)+1]` -/
def P3694586432127833908.Spec : Prop :=
  ∀ n, P3694586432127833908.a n = A081076 n

end A081076

/-! ## A081076.P11939804825540968870

`5*(A049684(n)+1)`
-/

namespace A081076.P11939804825540968870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A049684 n + 1)

end

end A081076.P11939804825540968870

namespace A081076

/-- `5*(A049684(n)+1)` -/
def P11939804825540968870.Spec : Prop :=
  ∀ n, P11939804825540968870.a n = A081076 n

end A081076

/-! ## A081076.P2411063961825085088

`5*A166516(2*n)`
-/

namespace A081076.P2411063961825085088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A166516 (2 * n)

end

end A081076.P2411063961825085088

namespace A081076

/-- `5*A166516(2*n)` -/
def P2411063961825085088.Spec : Prop :=
  ∀ n, P2411063961825085088.a n = A081076 n

end A081076

/-! ## A081076.P2416162067955119723

`5*A245306(2*n)`
-/

namespace A081076.P2416162067955119723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A245306 (2 * n)

end

end A081076.P2416162067955119723

namespace A081076

/-- `5*A245306(2*n)` -/
def P2416162067955119723.Spec : Prop :=
  ∀ n, P2416162067955119723.a n = A081076 n

end A081076

/-! ## A081076.P5304181332678960985

`record[A005247(n)²+1]`
-/

namespace A081076.P5304181332678960985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081076.P5304181332678960985

namespace A081076

/-- `record[A005247(n)²+1]` -/
def P5304181332678960985.Spec : Prop :=
  ∀ n, P5304181332678960985.a n = A081076 n

end A081076

/-! ## A081076.P5643938004430381557

`5*(A000045(2*n)²+1)`
-/

namespace A081076.P5643938004430381557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000045 (2 * n) ^ 2 + 1)

end

end A081076.P5643938004430381557

namespace A081076

/-- `5*(A000045(2*n)²+1)` -/
def P5643938004430381557.Spec : Prop :=
  ∀ n, P5643938004430381557.a n = A081076 n

end A081076

/-! ## A081076.P4561625426630175602

`-xor(-1, A000032(2*n)²)`
-/

namespace A081076.P4561625426630175602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A000032 (2 * n) ^ 2)

end

end A081076.P4561625426630175602

namespace A081076

/-- `-xor(-1, A000032(2*n)²)` -/
def P4561625426630175602.Spec : Prop :=
  ∀ n, P4561625426630175602.a n = A081076 n

end A081076

/-! ## A081076.P12100706346836810255

`A001519(n)*A106729(n)`
-/

namespace A081076.P12100706346836810255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n * A106729 n

end

end A081076.P12100706346836810255

namespace A081076

/-- `A001519(n)*A106729(n)` -/
def P12100706346836810255.Spec : Prop :=
  ∀ n, P12100706346836810255.a n = A081076 n

end A081076

/-! ## A081076.P16642023679088867187

`A022088(2*n+1)*A212804(2*n)`
-/

namespace A081076.P16642023679088867187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (2 * n + 1) * A212804 (2 * n)

end

end A081076.P16642023679088867187

namespace A081076

/-- `A022088(2*n+1)*A212804(2*n)` -/
def P16642023679088867187.Spec : Prop :=
  ∀ n, P16642023679088867187.a n = A081076 n

end A081076

/-! ## A081076.P1607669851817720496

`(A001254(n+1)+A001254(n))*A001519(n)`
-/

namespace A081076.P1607669851817720496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001254 (n + 1) + A001254 n) * A001519 n

end

end A081076.P1607669851817720496

namespace A081076

/-- `(A001254(n+1)+A001254(n))*A001519(n)` -/
def P1607669851817720496.Spec : Prop :=
  ∀ n, P1607669851817720496.a n = A081076 n

end A081076

/-! ## A081076.P6331484236428538933

`(A005248(n+1)+A005248(n))*A001519(n)`
-/

namespace A081076.P6331484236428538933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 1) + A005248 n) * A001519 n

end

end A081076.P6331484236428538933

namespace A081076

/-- `(A005248(n+1)+A005248(n))*A001519(n)` -/
def P6331484236428538933.Spec : Prop :=
  ∀ n, P6331484236428538933.a n = A081076 n

end A081076

/-! ## A081076.P8776039843934184926

`(A054492(n+1)-A055267(n))*A001519(n)`
-/

namespace A081076.P8776039843934184926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054492 (n + 1) - A055267 n) * A001519 n

end

end A081076.P8776039843934184926

namespace A081076

/-- `(A054492(n+1)-A055267(n))*A001519(n)` -/
def P8776039843934184926.Spec : Prop :=
  ∀ n, P8776039843934184926.a n = A081076 n

end A081076

/-! ## A081076.P1174495788651854796

`A001519(n)/A001519(n+1)*A081067(n)`
-/

namespace A081076.P1174495788651854796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001519 n : ℚ) / (A001519 (n + 1) : ℚ) * (A081067 n : ℚ)

end

end A081076.P1174495788651854796

namespace A081076

/-- `A001519(n)/A001519(n+1)*A081067(n)` -/
def P1174495788651854796.Spec : Prop :=
  ∀ n, P1174495788651854796.a n = (A081076 n : ℚ)

end A081076

/-! ## A081076.P8601581764666805133

`(A201157(n+2)-A201157(n+1))*A001519(n)`
-/

namespace A081076.P8601581764666805133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A201157 (n + 2) - A201157 (n + 1)) * A001519 n

end

end A081076.P8601581764666805133

namespace A081076

/-- `(A201157(n+2)-A201157(n+1))*A001519(n)` -/
def P8601581764666805133.Spec : Prop :=
  ∀ n, P8601581764666805133.a n = A081076 n

end A081076

/-!
# A081077: a(n) = Lucas(4*n+2) + 3, or Lucas(2*n)*Lucas(2*n+2).

The programs for A081077, the canonical program `A081077.P100956688169237018` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081077 has offset 0).

The definition of A081077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081077.P100956688169237018

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=6, a(1)=21, a(2)=126`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081077

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P100956688169237018.Spec : Prop :=
  ∀ n, P100956688169237018.a n = A081077 n

theorem P100956688169237018.correct : P100956688169237018.Spec := by
  intro n
  simp only [A081077]

end A081077

/-! ## A081077.P14606348421736362293

`A081067(n)+1`
-/

namespace A081077.P14606348421736362293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081067 n + 1

end

end A081077.P14606348421736362293

namespace A081077

/-- `A081067(n)+1` -/
def P14606348421736362293.Spec : Prop :=
  ∀ n, P14606348421736362293.a n = A081077 n

end A081077

/-! ## A081077.P5739778569178773043

`Δ[floor((ϕ^n)²)]²+5`
-/

namespace A081077.P5739778569178773043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 5

end

end A081077.P5739778569178773043

namespace A081077

/-- `Δ[floor((ϕ^n)²)]²+5` -/
def P5739778569178773043.Spec : Prop :=
  ∀ n, P5739778569178773043.a n = A081077 n

end A081077

/-! ## A081077.P12815453873063537668

`A292696(Δ[n²])`
-/

namespace A081077.P12815453873063537668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081077.P12815453873063537668

namespace A081077

/-- `A292696(Δ[n²])` -/
def P12815453873063537668.Spec : Prop :=
  ∀ n, P12815453873063537668.a n = A081077 n

end A081077

/-! ## A081077.P12838351237032693374

`3*(A049685(n)+1)`
-/

namespace A081077.P12838351237032693374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A049685 n + 1)

end

end A081077.P12838351237032693374

namespace A081077

/-- `3*(A049685(n)+1)` -/
def P12838351237032693374.Spec : Prop :=
  ∀ n, P12838351237032693374.a n = A081077 n

end A081077

/-! ## A081077.P2621673397778211151

`A366506(4*n+2)`
-/

namespace A081077.P2621673397778211151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366506 (4 * n + 2)

end

end A081077.P2621673397778211151

namespace A081077

/-- `A366506(4*n+2)` -/
def P2621673397778211151.Spec : Prop :=
  ∀ n, P2621673397778211151.a n = A081077 n

end A081077

/-! ## A081077.P3750875932152682081

`abs(A292696(2*n+1))`
-/

namespace A081077.P3750875932152682081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292696 (2 * n + 1)|

end

end A081077.P3750875932152682081

namespace A081077

/-- `abs(A292696(2*n+1))` -/
def P3750875932152682081.Spec : Prop :=
  ∀ n, P3750875932152682081.a n = A081077 n

end A081077

/-! ## A081077.P1893401654340037443

`record[A000032(lcm(2, n+1))+3]`
-/

namespace A081077.P1893401654340037443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.lcm 2 (n + 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081077.P1893401654340037443

namespace A081077

/-- `record[A000032(lcm(2, n+1))+3]` -/
def P1893401654340037443.Spec : Prop :=
  ∀ n, P1893401654340037443.a n = A081077 n

end A081077

/-! ## A081077.P6062594628528888850

`A005248(n+1)*A005248(n)`
-/

namespace A081077.P6062594628528888850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A005248 n

end

end A081077.P6062594628528888850

namespace A081077

/-- `A005248(n+1)*A005248(n)` -/
def P6062594628528888850.Spec : Prop :=
  ∀ n, P6062594628528888850.a n = A081077 n

end A081077

/-! ## A081077.P16723556893450352442

`A000032(2*n)*Δ[A002878(n)]`
-/

namespace A081077.P16723556893450352442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * (f1 (n + 1) - f1 n)

end

end A081077.P16723556893450352442

namespace A081077

/-- `A000032(2*n)*Δ[A002878(n)]` -/
def P16723556893450352442.Spec : Prop :=
  ∀ n, P16723556893450352442.a n = A081077 n

end A081077

/-! ## A081077.P5186146725641103051

`A000032(2*n)*A075270(2*n)`
-/

namespace A081077.P5186146725641103051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * A075270 (2 * n)

end

end A081077.P5186146725641103051

namespace A081077

/-- `A000032(2*n)*A075270(2*n)` -/
def P5186146725641103051.Spec : Prop :=
  ∀ n, P5186146725641103051.a n = A081077 n

end A081077

/-! ## A081077.P10492957439903371511

`A005247(2*n)*A075270(2*n)`
-/

namespace A081077.P10492957439903371511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n) * A075270 (2 * n)

end

end A081077.P10492957439903371511

namespace A081077

/-- `A005247(2*n)*A075270(2*n)` -/
def P10492957439903371511.Spec : Prop :=
  ∀ n, P10492957439903371511.a n = A081077 n

end A081077

/-! ## A081077.P1851657138012063183

`A000032(2*n)*Δ[A075193(2*n)]`
-/

namespace A081077.P1851657138012063183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * (f1 (n + 1) - f1 n)

end

end A081077.P1851657138012063183

namespace A081077

/-- `A000032(2*n)*Δ[A075193(2*n)]` -/
def P1851657138012063183.Spec : Prop :=
  ∀ n, P1851657138012063183.a n = A081077 n

end A081077

/-! ## A081077.P5322885832981054557

`record[A000204(n+2)*A061084(n+1)]`
-/

namespace A081077.P5322885832981054557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) * A061084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081077.P5322885832981054557

namespace A081077

/-- `record[A000204(n+2)*A061084(n+1)]` -/
def P5322885832981054557.Spec : Prop :=
  ∀ n, P5322885832981054557.a n = A081077 n

end A081077

/-! ## A081077.P2559730062465219315

`A000032(2*n)*A000204(2*(n+1))`
-/

namespace A081077.P2559730062465219315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * A000204 (2 * (n + 1))

end

end A081077.P2559730062465219315

namespace A081077

/-- `A000032(2*n)*A000204(2*(n+1))` -/
def P2559730062465219315.Spec : Prop :=
  ∀ n, P2559730062465219315.a n = A081077 n

end A081077

/-! ## A081077.P858908727760209254

`A000204(2*(n+1))*A005247(2*n)`
-/

namespace A081077.P858908727760209254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) * A005247 (2 * n)

end

end A081077.P858908727760209254

namespace A081077

/-- `A000204(2*(n+1))*A005247(2*n)` -/
def P858908727760209254.Spec : Prop :=
  ∀ n, P858908727760209254.a n = A081077 n

end A081077

/-! ## A081077.P8560082314065941597

`A005247(2*(n+1))*A005247(2*n)`
-/

namespace A081077.P8560082314065941597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * (n + 1)) * A005247 (2 * n)

end

end A081077.P8560082314065941597

namespace A081077

/-- `A005247(2*(n+1))*A005247(2*n)` -/
def P8560082314065941597.Spec : Prop :=
  ∀ n, P8560082314065941597.a n = A081077 n

end A081077

/-! ## A081077.P6265280197203388534

`A020878(2*(n+1))*A020878(2*n)`
-/

namespace A081077.P6265280197203388534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 (2 * (n + 1)) * A020878 (2 * n)

end

end A081077.P6265280197203388534

namespace A081077

/-- `A020878(2*(n+1))*A020878(2*n)` -/
def P6265280197203388534.Spec : Prop :=
  ∀ n, P6265280197203388534.a n = A081077 n

end A081077

/-! ## A081077.P13718065140522705309

`A000204(2*(n+1))*A062724(2*n)`
-/

namespace A081077.P13718065140522705309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) * A062724 (2 * n)

end

end A081077.P13718065140522705309

namespace A081077

/-- `A000204(2*(n+1))*A062724(2*n)` -/
def P13718065140522705309.Spec : Prop :=
  ∀ n, P13718065140522705309.a n = A081077 n

end A081077

/-! ## A081077.P6810028009251744134

`A062724(2*(n+1))*A062724(2*n)`
-/

namespace A081077.P6810028009251744134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 (2 * (n + 1)) * A062724 (2 * n)

end

end A081077.P6810028009251744134

namespace A081077

/-- `A062724(2*(n+1))*A062724(2*n)` -/
def P6810028009251744134.Spec : Prop :=
  ∀ n, P6810028009251744134.a n = A081077 n

end A081077

/-!
# A081078: a(n) = Lucas(4n) - 3, or Lucas(2n-1)*Lucas(2n+1).

The programs for A081078, the canonical program `A081078.P403307850828294385` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081078 has offset 1).

The definition of A081078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081078.P403307850828294385

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=4, a(1)=44, a(2)=319`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081078

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P403307850828294385.Spec : Prop :=
  ∀ n, P403307850828294385.a n = A081078 (n + 1)

theorem P403307850828294385.correct : P403307850828294385.Spec := by
  intro n
  simp only [A081078, Nat.add_sub_cancel]

end A081078

/-! ## A081078.P2424285510370247016

`A056854(n+1)-3`
-/

namespace A081078.P2424285510370247016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 (n + 1) - 3

end

end A081078.P2424285510370247016

namespace A081078

/-- `A056854(n+1)-3` -/
def P2424285510370247016.Spec : Prop :=
  ∀ n, P2424285510370247016.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P12207065285673237376

`floor(ϕ^(4*(n+1)))-2`
-/

namespace A081078.P12207065285673237376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (4 * (n + 1))⌋ - 2

end

end A081078.P12207065285673237376

namespace A081078

/-- `floor(ϕ^(4*(n+1)))-2` -/
def P12207065285673237376.Spec : Prop :=
  ∀ n, P12207065285673237376.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P13127381904350158497

`A360278(Δ[n²])`
-/

namespace A081078.P13127381904350158497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081078.P13127381904350158497

namespace A081078

/-- `A360278(Δ[n²])` -/
def P13127381904350158497.Spec : Prop :=
  ∀ n, P13127381904350158497.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P13166305608422044238

`record[Δ[A221366(n)]]`
-/

namespace A081078.P13166305608422044238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081078.P13166305608422044238

namespace A081078

/-- `record[Δ[A221366(n)]]` -/
def P13166305608422044238.Spec : Prop :=
  ∀ n, P13166305608422044238.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P45102487267416378

`A292696(2*(n+1))`
-/

namespace A081078.P45102487267416378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292696 (2 * (n + 1))

end

end A081078.P45102487267416378

namespace A081078

/-- `A292696(2*(n+1))` -/
def P45102487267416378.Spec : Prop :=
  ∀ n, P45102487267416378.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P9255512169101911605

`A007390(4*(n+1))`
-/

namespace A081078.P9255512169101911605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007390 (4 * (n + 1))

end

end A081078.P9255512169101911605

namespace A081078

/-- `A007390(4*(n+1))` -/
def P9255512169101911605.Spec : Prop :=
  ∀ n, P9255512169101911605.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P8170020074234903805

`A027961(4*n+2)`
-/

namespace A081078.P8170020074234903805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (4 * n + 2)

end

end A081078.P8170020074234903805

namespace A081078

/-- `A027961(4*n+2)` -/
def P8170020074234903805.Spec : Prop :=
  ∀ n, P8170020074234903805.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P16680703016480791771

`record[A221366(n+1)-1]`
-/

namespace A081078.P16680703016480791771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221366 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081078.P16680703016480791771

namespace A081078

/-- `record[A221366(n+1)-1]` -/
def P16680703016480791771.Spec : Prop :=
  ∀ n, P16680703016480791771.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P4390945959916352222

`A391263(2*n+3)/2`
-/

namespace A081078.P4390945959916352222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391263 (2 * n + 3) : ℚ) / 2

end

end A081078.P4390945959916352222

namespace A081078

/-- `A391263(2*n+3)/2` -/
def P4390945959916352222.Spec : Prop :=
  ∀ n, P4390945959916352222.a n = (A081078 (n + 1) : ℚ)

end A081078

/-! ## A081078.P4256202336773883146

`A002878(n+1)*A002878(n)`
-/

namespace A081078.P4256202336773883146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) * A002878 n

end

end A081078.P4256202336773883146

namespace A081078

/-- `A002878(n+1)*A002878(n)` -/
def P4256202336773883146.Spec : Prop :=
  ∀ n, P4256202336773883146.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P18438225610846253705

`∩[A027961(n+1), A360278(n+1)]`
-/

namespace A081078.P18438225610846253705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081078.P18438225610846253705

namespace A081078

/-- `∩[A027961(n+1), A360278(n+1)]` -/
def P18438225610846253705.Spec : Prop :=
  ∀ n, (P18438225610846253705.a n : ℤ) = A081078 (n + 1)

end A081078

/-! ## A081078.P16440136087411777114

`A000032(Δ[n²])*Δ[A014739(2*n)]`
-/

namespace A081078.P16440136087411777114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * (f2 (n + 1) - f2 n)

end

end A081078.P16440136087411777114

namespace A081078

/-- `A000032(Δ[n²])*Δ[A014739(2*n)]` -/
def P16440136087411777114.Spec : Prop :=
  ∀ n, P16440136087411777114.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P13227672987393429676

`A000032(2*n+3)*A000032(Δ[n²])`
-/

namespace A081078.P13227672987393429676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 3) * A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081078.P13227672987393429676

namespace A081078

/-- `A000032(2*n+3)*A000032(Δ[n²])` -/
def P13227672987393429676.Spec : Prop :=
  ∀ n, P13227672987393429676.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P6170625714556125664

`Δ[A000032(2*n)]*Δ[A014739(2*n)]`
-/

namespace A081078.P6170625714556125664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A081078.P6170625714556125664

namespace A081078

/-- `Δ[A000032(2*n)]*Δ[A014739(2*n)]` -/
def P6170625714556125664.Spec : Prop :=
  ∀ n, P6170625714556125664.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P1624616090802431769

`A000032(n+3+n)*Δ[A000032(2*n)]`
-/

namespace A081078.P1624616090802431769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3 + n) * (f1 (n + 1) - f1 n)

end

end A081078.P1624616090802431769

namespace A081078

/-- `A000032(n+3+n)*Δ[A000032(2*n)]` -/
def P1624616090802431769.Spec : Prop :=
  ∀ n, P1624616090802431769.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P360907894372575930

`A000032(2*n+1)*A281387(2*n+1)`
-/

namespace A081078.P360907894372575930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) * A281387 (2 * n + 1)

end

end A081078.P360907894372575930

namespace A081078

/-- `A000032(2*n+1)*A281387(2*n+1)` -/
def P360907894372575930.Spec : Prop :=
  ∀ n, P360907894372575930.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P16099211338143044643

`A005013(2*n+1)*A281387(2*n+1)`
-/

namespace A081078.P16099211338143044643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (2 * n + 1) * A281387 (2 * n + 1)

end

end A081078.P16099211338143044643

namespace A081078

/-- `A005013(2*n+1)*A281387(2*n+1)` -/
def P16099211338143044643.Spec : Prop :=
  ∀ n, P16099211338143044643.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P2754658738175565947

`A000032(2*n+1)*A288219(2*n+1)`
-/

namespace A081078.P2754658738175565947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) * A288219 (2 * n + 1)

end

end A081078.P2754658738175565947

namespace A081078

/-- `A000032(2*n+1)*A288219(2*n+1)` -/
def P2754658738175565947.Spec : Prop :=
  ∀ n, P2754658738175565947.a n = A081078 (n + 1)

end A081078

/-! ## A081078.P1513111544004735486

`A000204(2*n+1)*A288219(2*n+1)`
-/

namespace A081078.P1513111544004735486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 1) * A288219 (2 * n + 1)

end

end A081078.P1513111544004735486

namespace A081078

/-- `A000204(2*n+1)*A288219(2*n+1)` -/
def P1513111544004735486.Spec : Prop :=
  ∀ n, P1513111544004735486.a n = A081078 (n + 1)

end A081078

/-!
# A081079: a(n) = Lucas(4*n+2) - 3 = 5*Fibonacci(2*n)*Fibonacci(2*n+2).

The programs for A081079, the canonical program `A081079.P17967324321795724055` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081079 has offset 0).

The definition of A081079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081079.P17967324321795724055

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=0, a(1)=15, a(2)=120`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081079

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P17967324321795724055.Spec : Prop :=
  ∀ n, P17967324321795724055.a n = A081079 n

theorem P17967324321795724055.correct : P17967324321795724055.Spec := by
  intro n
  simp only [A081079]

end A081079

/-! ## A081079.P489159976329019242

`5*A058038(n)`
-/

namespace A081079.P489159976329019242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A058038 n

end

end A081079.P489159976329019242

namespace A081079

/-- `5*A058038(n)` -/
def P489159976329019242.Spec : Prop :=
  ∀ n, P489159976329019242.a n = A081079 n

end A081079

/-! ## A081079.P8922553264574394954

`15*(-1)^n*A156088(n)`
-/

namespace A081079.P8922553264574394954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (-1) ^ n * A156088 n

end

end A081079.P8922553264574394954

namespace A081079

/-- `15*(-1)^n*A156088(n)` -/
def P8922553264574394954.Spec : Prop :=
  ∀ n, P8922553264574394954.a n = A081079 n

end A081079

/-! ## A081079.P13175069340705963678

`∑[ogf(15x/(1-7x+x^2))]`
-/

namespace A081079.P13175069340705963678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081079.P13175069340705963678

namespace A081079

/-- `∑[ogf(15x/(1-7x+x^2))]` -/
def P13175069340705963678.Spec : Prop :=
  ∀ n, P13175069340705963678.a n = A081079 n

end A081079

/-! ## A081079.P15575746013637442449

`ogf(15x/(1-8x+8x^2-x^3))`
-/

namespace A081079.P15575746013637442449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15] [1, -8, 8, -1] n

end

end A081079.P15575746013637442449

namespace A081079

/-- `ogf(15x/(1-8x+8x^2-x^3))` -/
def P15575746013637442449.Spec : Prop :=
  ∀ n, P15575746013637442449.a n = A081079 n

end A081079

/-! ## A081079.P16092392186829624496

`floor(ϕ^Δ[n²])²-1`
-/

namespace A081079.P16092392186829624496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌋ ^ 2 - 1

end

end A081079.P16092392186829624496

namespace A081079

/-- `floor(ϕ^Δ[n²])²-1` -/
def P16092392186829624496.Spec : Prop :=
  ∀ n, P16092392186829624496.a n = A081079 n

end A081079

/-! ## A081079.P16764777215849247260

`∑[A022088(4*n)]`
-/

namespace A081079.P16764777215849247260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081079.P16764777215849247260

namespace A081079

/-- `∑[A022088(4*n)]` -/
def P16764777215849247260.Spec : Prop :=
  ∀ n, P16764777215849247260.a n = A081079 n

end A081079

/-! ## A081079.P10181506059389161343

`∑[A203976(4*n)]`
-/

namespace A081079.P10181506059389161343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081079.P10181506059389161343

namespace A081079

/-- `∑[A203976(4*n)]` -/
def P10181506059389161343.Spec : Prop :=
  ∀ n, P10181506059389161343.a n = A081079 n

end A081079

/-! ## A081079.P4948094239582828613

`3*(A049685(n)-1)`
-/

namespace A081079.P4948094239582828613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A049685 n - 1)

end

end A081079.P4948094239582828613

namespace A081079

/-- `3*(A049685(n)-1)` -/
def P4948094239582828613.Spec : Prop :=
  ∀ n, P4948094239582828613.a n = A081079 n

end A081079

/-! ## A081079.P14414829509124654828

`A007390(4*n+2)`
-/

namespace A081079.P14414829509124654828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007390 (4 * n + 2)

end

end A081079.P14414829509124654828

namespace A081079

/-- `A007390(4*n+2)` -/
def P14414829509124654828.Spec : Prop :=
  ∀ n, P14414829509124654828.a n = A081079 n

end A081079

/-! ## A081079.P1713250702015913530

`5*(A081068(n)-1)`
-/

namespace A081079.P1713250702015913530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A081068 n - 1)

end

end A081079.P1713250702015913530

namespace A081079

/-- `5*(A081068(n)-1)` -/
def P1713250702015913530.Spec : Prop :=
  ∀ n, P1713250702015913530.a n = A081079 n

end A081079

/-! ## A081079.P10134408247400429567

`5*A059929(2*n)`
-/

namespace A081079.P10134408247400429567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A059929 (2 * n)

end

end A081079.P10134408247400429567

namespace A081079

/-- `5*A059929(2*n)` -/
def P10134408247400429567.Spec : Prop :=
  ∀ n, P10134408247400429567.a n = A081079 n

end A081079

/-! ## A081079.P6103345290682189543

`5*A064831(2*n)`
-/

namespace A081079.P6103345290682189543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A064831 (2 * n)

end

end A081079.P6103345290682189543

namespace A081079

/-- `5*A064831(2*n)` -/
def P6103345290682189543.Spec : Prop :=
  ∀ n, P6103345290682189543.a n = A081079 n

end A081079

/-! ## A081079.P11410846784129642186

`record[A154699(n)²-1]`
-/

namespace A081079.P11410846784129642186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081079.P11410846784129642186

namespace A081079

/-- `record[A154699(n)²-1]` -/
def P11410846784129642186.Spec : Prop :=
  ∀ n, P11410846784129642186.a n = A081079 n

end A081079

/-! ## A081079.P15411782186653044584

`∑[A201157(2*n+1)]`
-/

namespace A081079.P15411782186653044584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081079.P15411782186653044584

namespace A081079

/-- `∑[A201157(2*n+1)]` -/
def P15411782186653044584.Spec : Prop :=
  ∀ n, P15411782186653044584.a n = A081079 n

end A081079

/-! ## A081079.P11806493508915686366

`∑[5*A000045(4*n)]`
-/

namespace A081079.P11806493508915686366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081079.P11806493508915686366

namespace A081079

/-- `∑[5*A000045(4*n)]` -/
def P11806493508915686366.Spec : Prop :=
  ∀ n, P11806493508915686366.a n = A081079 n

end A081079

/-! ## A081079.P2719944049343534764

`abs(1-A000032(2*n+1)²)`
-/

namespace A081079.P2719944049343534764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000032 (2 * n + 1) ^ 2|

end

end A081079.P2719944049343534764

namespace A081079

/-- `abs(1-A000032(2*n+1)²)` -/
def P2719944049343534764.Spec : Prop :=
  ∀ n, P2719944049343534764.a n = A081079 n

end A081079

/-! ## A081079.P15011172640828983350

`5*ceil((ϕ*A000045(2*n))²)`
-/

namespace A081079.P15011172640828983350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌈(Real.goldenRatio * (A000045 (2 * n) : ℝ)) ^ 2⌉

end

end A081079.P15011172640828983350

namespace A081079

/-- `5*ceil((ϕ*A000045(2*n))²)` -/
def P15011172640828983350.Spec : Prop :=
  ∀ n, P15011172640828983350.a n = A081079 n

end A081079

/-! ## A081079.P6128506796038624604

`5*(A000045(2*n+1)²-1)`
-/

namespace A081079.P6128506796038624604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000045 (2 * n + 1) ^ 2 - 1)

end

end A081079.P6128506796038624604

namespace A081079

/-- `5*(A000045(2*n+1)²-1)` -/
def P6128506796038624604.Spec : Prop :=
  ∀ n, P6128506796038624604.a n = A081079 n

end A081079

/-! ## A081079.P7959821632028132589

`A001906(n)*A054888(n+1)`
-/

namespace A081079.P7959821632028132589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A054888 (n + 1)

end

end A081079.P7959821632028132589

namespace A081079

/-- `A001906(n)*A054888(n+1)` -/
def P7959821632028132589.Spec : Prop :=
  ∀ n, P7959821632028132589.a n = A081079 n

end A081079

/-!
# A081080: Number of n X n ortho-projection matrices over GF(2). Also, the number of labeled ortho-projection graphs on n vertices.

The programs for A081080, there is no canonical definition to state claims against.
-/

/-! ## A081080.P8624656030480643550

`A008611(A331336(n+1)+A074400(n+1))`
-/

namespace A081080.P8624656030480643550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A331336 (n + 1) + A074400 (n + 1)).toNat

end

end A081080.P8624656030480643550

/-!
# A081081: Number of labeled, connected ortho-projection graphs on n vertices.

The programs for A081081, there is no canonical definition to state claims against.
-/

/-! ## A081081.P15422137973707943613

`A348167(a(n-1)+1)+1` with `a(0)=2, a(1)=0`
-/

namespace A081081.P15422137973707943613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  A348167 (a (n - 1) + 1).toNat + 1

end

end A081081.P15422137973707943613

/-! ## A081081.P2758966058540368227

`A322553(A103620(n)+A087153(n))-1`
-/

namespace A081081.P2758966058540368227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (A103620 n + A087153 n).toNat - 1

end

end A081081.P2758966058540368227

/-!
# A081083: Numbers n such that rad(n+1)=rad(n)+1, where rad(m)=A007947(m) is the squarefree kernel of m.

The programs for A081083, the canonical program `A081083.P9286022400125285609` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081083 has offset 1).

The definition of A081083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081083.P9286022400125285609

`record[(n+1)/(A007947(n+2)-A007947(n+1))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081083

/-- `record[(n+1)/(A007947(n+2)-A007947(n+1))]` -/
def P9286022400125285609.Spec : Prop :=
  ∀ n, P9286022400125285609.a n = (A081083 (n + 1) : ℚ)

end A081083

/-! ## A081083.P3525584968777936458

`eq[1, Δ[∏{p}[n, #]]]`
-/

namespace A081083.P3525584968777936458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081083.P3525584968777936458

namespace A081083

/-- `eq[1, Δ[∏{p}[n, #]]]` -/
def P3525584968777936458.Spec : Prop :=
  ∀ n, (P3525584968777936458.a n : ℤ) = A081083 (n + 1)

end A081083

/-! ## A081083.P4653526006145670378

`record[(n+1)/Δ[∏{p}[n+1, #]]]`
-/

namespace A081083.P4653526006145670378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081083.P4653526006145670378

namespace A081083

/-- `record[(n+1)/Δ[∏{p}[n+1, #]]]` -/
def P4653526006145670378.Spec : Prop :=
  ∀ n, P4653526006145670378.a n = (A081083 (n + 1) : ℚ)

end A081083

/-! ## A081083.P7197188161700970248

`eq[∏{p}[n+1, #]-1, ∏{p}[n, #]]`
-/

namespace A081083.P7197188161700970248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℤ)) n

end

end A081083.P7197188161700970248

namespace A081083

/-- `eq[∏{p}[n+1, #]-1, ∏{p}[n, #]]` -/
def P7197188161700970248.Spec : Prop :=
  ∀ n, (P7197188161700970248.a n : ℤ) = A081083 (n + 1)

end A081083

/-! ## A081083.P2954135788686690118

`eq[1, A076334(n+1)]+1`
-/

namespace A081083.P2954135788686690118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081083.P2954135788686690118

namespace A081083

/-- `eq[1, A076334(n+1)]+1` -/
def P2954135788686690118.Spec : Prop :=
  ∀ n, (P2954135788686690118.a n : ℤ) = A081083 (n + 1)

end A081083

/-! ## A081083.P1380680996056861847

`eq[1, Δ[A007947(n+1)]]+1`
-/

namespace A081083.P1380680996056861847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081083.P1380680996056861847

namespace A081083

/-- `eq[1, Δ[A007947(n+1)]]+1` -/
def P1380680996056861847.Spec : Prop :=
  ∀ n, (P1380680996056861847.a n : ℤ) = A081083 (n + 1)

end A081083

/-!
# A081084: Nonsquarefree numbers m such that rad(m+1)=rad(m)+1, where rad(m)=A007947(m) is the squarefree kernel of m.

The programs for A081084, there is no canonical definition to state claims against.
-/

/-! ## A081084.P18253721770810433667

`A211012(A140769(n+1))`
-/

namespace A081084.P18253721770810433667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211012 (A140769 (n + 1)).toNat

end

end A081084.P18253721770810433667

/-! ## A081084.P10996603465331354719

`A000225(eq[0, Δ[A272334(n+1)]]+2)²-1`
-/

namespace A081084.P10996603465331354719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) ^ 2 - 1

end

end A081084.P10996603465331354719

/-! ## A081084.P9899286613495509445

`A000225(∩[A049093(n+1)+1, A049093(n+1)])²-1`
-/

namespace A081084.P9899286613495509445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) ^ 2 - 1

end

end A081084.P9899286613495509445

/-! ## A081084.P1171070355950018659

`A067998(2^lt[n, n*n%6])`
-/

namespace A081084.P1171070355950018659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081084.P1171070355950018659

/-!
# A081085: Expansion of 1 / AGM(1, 1 - 8*x) in powers of x.

The programs for A081085, there is no canonical definition to state claims against.
-/

/-! ## A081085.P2880394213713087076

`A239226(n)/A000984(n)`
-/

namespace A081085.P2880394213713087076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (A000984 n : ℚ)

end

end A081085.P2880394213713087076

/-! ## A081085.P7380518790776102631

`A239226(n)/sqrt(A002894(n))`
-/

namespace A081085.P7380518790776102631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℝ) / Real.sqrt (A002894 n : ℝ)

end

end A081085.P7380518790776102631

/-! ## A081085.P17998440403429269278

`A239226(n)/A115255(∑[n])`
-/

namespace A081085.P17998440403429269278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (A115255 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A081085.P17998440403429269278

/-! ## A081085.P9304367048771378961

`A239226(n)/record[A081668(n)]`
-/

namespace A081085.P9304367048771378961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A081085.P9304367048771378961

/-! ## A081085.P289413042421660104

`A239226(n)/record[A115255(n)]`
-/

namespace A081085.P289413042421660104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115255 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A081085.P289413042421660104

/-! ## A081085.P7529710443835793401

`A239226(n)/record[A126869(n)]`
-/

namespace A081085.P7529710443835793401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A081085.P7529710443835793401

/-! ## A081085.P14080610615122208149

`A239226(n)/A081668(2*n)`
-/

namespace A081085.P14080610615122208149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (A081668 (2 * n) : ℚ)

end

end A081085.P14080610615122208149

/-! ## A081085.P5697056957922271689

`A239226(n)/A126869(2*n)`
-/

namespace A081085.P5697056957922271689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (A126869 (2 * n) : ℚ)

end

end A081085.P5697056957922271689

/-! ## A081085.P11527943560883619429

`A239226(n)/A092392(A000217(n))`
-/

namespace A081085.P11527943560883619429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239226 n : ℚ) / (A092392 (A000217 n).toNat : ℚ)

end

end A081085.P11527943560883619429

/-!
# A081088: Smallest partial quotients of a series of continued fractions that have a sum of unity, where the n-th continued fraction term is [0; a(n),a(n-1),...,a(1)], so that sum(n>0, [0; a(n),a(n-1),...,a(1)] ) = 1, with a(1)=2.

The programs for A081088, there is no canonical definition to state claims against.
-/

/-! ## A081088.P7285305878209525245

`a(n-1)*A081089(n)` with `a(0)=2`
-/

namespace A081088.P7285305878209525245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A081089 n

end

end A081088.P7285305878209525245

/-! ## A081088.P4871037092442660636

`floor(ratio[sqrt(A081089(n+1))])`
-/

namespace A081088.P4871037092442660636
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081089 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A081088.P4871037092442660636

/-!
# A081089: Ratios of the terms of A081088: a(n) = A081088(n+1)/A081088(n); involves the partial quotients of a series of continued fractions that sum to unity.

The programs for A081089, the canonical program `A081089.P13086445699553807984` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081089 has offset 1).

The definition of A081089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081089.P13086445699553807984

`A081090(n+1)²+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081089

/-- `A081090(n+1)²+1` -/
def P13086445699553807984.Spec : Prop :=
  ∀ n, P13086445699553807984.a n = A081089 (n + 1)

theorem P13086445699553807984.correct : P13086445699553807984.Spec := by
  intro n
  simp only [A081089, Nat.add_sub_cancel]

end A081089

/-! ## A081089.P269320784994012749

`A081088(n+2)/A081088(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081089.P269320784994012749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081088 (n + 2) : ℚ) / (A081088 (n + 1) : ℚ)

end

end A081089.P269320784994012749

namespace A081089

/-- `A081088(n+2)/A081088(n+1)` -/
def P269320784994012749.Spec : Prop :=
  ∀ n, P269320784994012749.a n = (A081089 (n + 1) : ℚ)

end A081089

/-! ## A081089.P16470847565704033665

`ratio[A081088(n+1)]`
-/

namespace A081089.P16470847565704033665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081088 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A081089.P16470847565704033665

namespace A081089

/-- `ratio[A081088(n+1)]` -/
def P16470847565704033665.Spec : Prop :=
  ∀ n, P16470847565704033665.a n = (A081089 (n + 1) : ℚ)

end A081089

/-!
# A081090: a(n)^2 + 1 = A081089(n), where A081089(n) = A081088(n+1)/A081088(n); involves the partial quotients of a series of continued fractions that sum to unity.

The programs for A081090, the canonical program `A081090.P11954360173138485908` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081090 has offset 1).

The definition of A081090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081090.P11954360173138485908

`a(n-2)*(a(n-1)²+1)` with `a(0)=0, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081090

/-- `a(n-2)*(a(n-1)²+1)` -/
def P11954360173138485908.Spec : Prop :=
  ∀ n, (P11954360173138485908.a n : ℤ) = A081090 (n + 1)

theorem P11954360173138485908.correct : P11954360173138485908.Spec := by
  intro n
  simp only [A081090, Nat.add_sub_cancel]

end A081090

/-! ## A081090.P3040988359360983980

`a(n-2)+a(n-1)*a(n-2)*a(n-1)` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A081090.P3040988359360983980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  a (n - 2) + a (n - 1) * a (n - 2) * a (n - 1)

end

end A081090.P3040988359360983980

namespace A081090

/-- `a(n-2)+a(n-1)*a(n-2)*a(n-1)` -/
def P3040988359360983980.Spec : Prop :=
  ∀ n, (P3040988359360983980.a n : ℤ) = A081090 (n + 1)

theorem P3040988359360983980.correct : P3040988359360983980.Spec := by
  intro n
  simp only [A081090, Nat.add_sub_cancel, A081090.P3040988359360983980.a, A081090.P11954360173138485908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A081090

/-! ## A081090.P2227354292291285205

`sqrt(A081089(n+1)-1)`
-/

namespace A081090.P2227354292291285205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081089 (n + 1) - 1 : ℝ)

end

end A081090.P2227354292291285205

namespace A081090

/-- `sqrt(A081089(n+1)-1)` -/
def P2227354292291285205.Spec : Prop :=
  ∀ n, P2227354292291285205.a n = (A081090 (n + 1) : ℝ)

end A081090

/-!
# A081091: Primes of the form 2^i + 2^j + 1, i > j > 0.

The programs for A081091, there is no canonical definition to state claims against.
-/

/-! ## A081091.P1649981920052636192

`∩[A099628(n+1)+2, A128898(n+1)]`
-/

namespace A081091.P1649981920052636192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P1649981920052636192

/-! ## A081091.P15198382755963217001

`∩[A070739(n+1), A084468(n+1)]`
-/

namespace A081091.P15198382755963217001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P15198382755963217001

/-! ## A081091.P12584737566586844678

`∩[A084468(n+1), A128898(n+1)]`
-/

namespace A081091.P12584737566586844678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P12584737566586844678

/-! ## A081091.P11994801379753626151

`∩[A084468(n+1), A165255(n+1)]`
-/

namespace A081091.P11994801379753626151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P11994801379753626151

/-! ## A081091.P6169079494143031017

`∩[A070739(n+1), A340161(n)]`
-/

namespace A081091.P6169079494143031017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P6169079494143031017

/-! ## A081091.P17246240045435007917

`∩[A128898(n+1), A340161(n)]`
-/

namespace A081091.P17246240045435007917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P17246240045435007917

/-! ## A081091.P15473799048154055107

`∩[A165255(n+1), A340161(n)]`
-/

namespace A081091.P15473799048154055107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P15473799048154055107

/-! ## A081091.P12793880734598517067

`∩[A018900(n+1)+1, A128898(n+1)]`
-/

namespace A081091.P12793880734598517067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P12793880734598517067

/-! ## A081091.P13351754106151891814

`A362979(∑[n]+3)`
-/

namespace A081091.P13351754106151891814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362979 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A081091.P13351754106151891814

/-! ## A081091.P14476107200296078581

`∩[A014311(n+1), A070739(n+1)]`
-/

namespace A081091.P14476107200296078581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P14476107200296078581

/-! ## A081091.P6309562541454656111

`∩[A014311(n+1), A128898(n+1)]`
-/

namespace A081091.P6309562541454656111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P6309562541454656111

/-! ## A081091.P2157445396067413651

`∩[A014311(n+1), A165255(n+1)]`
-/

namespace A081091.P2157445396067413651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P2157445396067413651

/-! ## A081091.P15072321523840902498

`∩[A070739(n+1), A151757(n+1)]`
-/

namespace A081091.P15072321523840902498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081091.P15072321523840902498

/-!
# A081092: Primes having a prime number of 1's in their binary representation.

The programs for A081092, the canonical program `A081092.P1250874932712895324` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081092 has offset 1).

The definition of A081092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081092.P1250874932712895324

`p?[A000040(n+1)*A010051(A014499(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081092

/-- `p?[A000040(n+1)*A010051(A014499(n+1))]` -/
def P1250874932712895324.Spec : Prop :=
  ∀ n, P1250874932712895324.a n = A081092 (n + 1)

theorem P1250874932712895324.correct : P1250874932712895324.Spec := by
  intro n
  simp only [A081092, Nat.add_sub_cancel]

end A081092

/-! ## A081092.P17177498934212686744

`p?[A052294(n+1)]`
-/

namespace A081092.P17177498934212686744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081092.P17177498934212686744

namespace A081092

/-- `p?[A052294(n+1)]` -/
def P17177498934212686744.Spec : Prop :=
  ∀ n, P17177498934212686744.a n = A081092 (n + 1)

end A081092

/-! ## A081092.P12176861750942551758

`p?[A317294(n+3)]`
-/

namespace A081092.P12176861750942551758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081092.P12176861750942551758

namespace A081092

/-- `p?[A317294(n+3)]` -/
def P12176861750942551758.Spec : Prop :=
  ∀ n, P12176861750942551758.a n = A081092 (n + 1)

end A081092

/-! ## A081092.P11125728247051023760

`filter[A052294(n+1), A010051(#)]`
-/

namespace A081092.P11125728247051023760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A081092.P11125728247051023760

namespace A081092

/-- `filter[A052294(n+1), A010051(#)]` -/
def P11125728247051023760.Spec : Prop :=
  ∀ n, P11125728247051023760.a n = A081092 (n + 1)

end A081092

/-! ## A081092.P18080528361071417771

`filter[A317294(n+3), A010051(#)]`
-/

namespace A081092.P18080528361071417771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A081092.P18080528361071417771

namespace A081092

/-- `filter[A317294(n+3), A010051(#)]` -/
def P18080528361071417771.Spec : Prop :=
  ∀ n, P18080528361071417771.a n = A081092 (n + 1)

end A081092

/-! ## A081092.P963039619806515924

`∩[A000040(n+1), A052294(n+1)]`
-/

namespace A081092.P963039619806515924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P963039619806515924

namespace A081092

/-- `∩[A000040(n+1), A052294(n+1)]` -/
def P963039619806515924.Spec : Prop :=
  ∀ n, (P963039619806515924.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P6069262638941502477

`∩[A006005(n+1), A052294(n+1)]`
-/

namespace A081092.P6069262638941502477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P6069262638941502477

namespace A081092

/-- `∩[A006005(n+1), A052294(n+1)]` -/
def P6069262638941502477.Spec : Prop :=
  ∀ n, (P6069262638941502477.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P18243427297902991029

`∩[A008578(n+1), A052294(n+1)]`
-/

namespace A081092.P18243427297902991029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P18243427297902991029

namespace A081092

/-- `∩[A008578(n+1), A052294(n+1)]` -/
def P18243427297902991029.Spec : Prop :=
  ∀ n, (P18243427297902991029.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P5042102083911840900

`∩[A046022(n+1), A052294(n+1)]`
-/

namespace A081092.P5042102083911840900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P5042102083911840900

namespace A081092

/-- `∩[A046022(n+1), A052294(n+1)]` -/
def P5042102083911840900.Spec : Prop :=
  ∀ n, (P5042102083911840900.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P1518614666896286460

`∩[A052294(n+1), A062972(n+1)]`
-/

namespace A081092.P1518614666896286460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P1518614666896286460

namespace A081092

/-- `∩[A052294(n+1), A062972(n+1)]` -/
def P1518614666896286460.Spec : Prop :=
  ∀ n, (P1518614666896286460.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P15662603207480721596

`∩[A052294(n+1), A065091(n+1)]`
-/

namespace A081092.P15662603207480721596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P15662603207480721596

namespace A081092

/-- `∩[A052294(n+1), A065091(n+1)]` -/
def P15662603207480721596.Spec : Prop :=
  ∀ n, (P15662603207480721596.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P5430429902701510760

`∩[A052294(n+1), A066542(n+1)]`
-/

namespace A081092.P5430429902701510760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P5430429902701510760

namespace A081092

/-- `∩[A052294(n+1), A066542(n+1)]` -/
def P5430429902701510760.Spec : Prop :=
  ∀ n, (P5430429902701510760.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P3125508686624280779

`∩[A052294(n+1), A158611(n+1)]`
-/

namespace A081092.P3125508686624280779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P3125508686624280779

namespace A081092

/-- `∩[A052294(n+1), A158611(n+1)]` -/
def P3125508686624280779.Spec : Prop :=
  ∀ n, (P3125508686624280779.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P16843648530084696064

`∩[A052294(n+1), A174090(n+1)]`
-/

namespace A081092.P16843648530084696064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P16843648530084696064

namespace A081092

/-- `∩[A052294(n+1), A174090(n+1)]` -/
def P16843648530084696064.Spec : Prop :=
  ∀ n, (P16843648530084696064.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P6512560124369656867

`∩[A052294(n+1), A175787(n+1)]`
-/

namespace A081092.P6512560124369656867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P6512560124369656867

namespace A081092

/-- `∩[A052294(n+1), A175787(n+1)]` -/
def P6512560124369656867.Spec : Prop :=
  ∀ n, (P6512560124369656867.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P15637481567145792538

`∩[A052294(n+1), A182986(n+1)]`
-/

namespace A081092.P15637481567145792538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P15637481567145792538

namespace A081092

/-- `∩[A052294(n+1), A182986(n+1)]` -/
def P15637481567145792538.Spec : Prop :=
  ∀ n, (P15637481567145792538.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P2780013789063739281

`∩[A052294(n+1), A284696(n+1)]`
-/

namespace A081092.P2780013789063739281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P2780013789063739281

namespace A081092

/-- `∩[A052294(n+1), A284696(n+1)]` -/
def P2780013789063739281.Spec : Prop :=
  ∀ n, (P2780013789063739281.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P16520466954794013896

`∩[A348283(n+1), A052294(n+1)]`
-/

namespace A081092.P16520466954794013896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P16520466954794013896

namespace A081092

/-- `∩[A348283(n+1), A052294(n+1)]` -/
def P16520466954794013896.Spec : Prop :=
  ∀ n, (P16520466954794013896.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P17745606447206108211

`∩[A052294(n+1), A378441(n+1)]`
-/

namespace A081092.P17745606447206108211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P17745606447206108211

namespace A081092

/-- `∩[A052294(n+1), A378441(n+1)]` -/
def P17745606447206108211.Spec : Prop :=
  ∀ n, (P17745606447206108211.a n : ℤ) = A081092 (n + 1)

end A081092

/-! ## A081092.P16060146986345804798

`∩[A383300(n+1), A052294(n+1)]`
-/

namespace A081092.P16060146986345804798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081092.P16060146986345804798

namespace A081092

/-- `∩[A383300(n+1), A052294(n+1)]` -/
def P16060146986345804798.Spec : Prop :=
  ∀ n, (P16060146986345804798.a n : ℤ) = A081092 (n + 1)

end A081092

/-!
# A081093: a(n) is the smallest prime such that the number of 1's in its binary expansion is equal to the n-th prime.

The programs for A081093, there is no canonical definition to state claims against.
-/

/-! ## A081093.P1992955881267911902

`A061712(A000040(n+1))`
-/

namespace A081093.P1992955881267911902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A000040 (n + 1)).toNat

end

end A081093.P1992955881267911902

/-! ## A081093.P10203273349568152919

`A061712(p?[comp[n²]])`
-/

namespace A081093.P10203273349568152919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A081093.P10203273349568152919

/-! ## A081093.P6585527540210539503

`A061712(Δ[A007504(n)])`
-/

namespace A081093.P6585527540210539503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (f1 (n + 1) - f1 n).toNat

end

end A081093.P6585527540210539503

/-! ## A081093.P11338173204072366084

`A061712(A008578(n+2))`
-/

namespace A081093.P11338173204072366084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A008578 (n + 2)).toNat

end

end A081093.P11338173204072366084

/-! ## A081093.P16542710775094611839

`A061712(A158611(n+3))`
-/

namespace A081093.P16542710775094611839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A158611 (n + 3)).toNat

end

end A081093.P16542710775094611839

/-! ## A081093.P8112856386379103036

`A061712(sqrt(A001248(n+1)))`
-/

namespace A081093.P8112856386379103036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A081093.P8112856386379103036

/-! ## A081093.P17095369764908481610

`A061712(record[A039649(n+1)])`
-/

namespace A081093.P17095369764908481610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081093.P17095369764908481610

/-! ## A081093.P5854851641433495694

`A061712(record[A259153(n+2)])`
-/

namespace A081093.P5854851641433495694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081093.P5854851641433495694

/-! ## A081093.P17138316386567561174

`A072087(∏{d}[A000040(n+1), #])`
-/

namespace A081093.P17138316386567561174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072087 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A081093.P17138316386567561174

/-! ## A081093.P15482441156437001006

`A061712(A085818(A085971(n+1)))`
-/

namespace A081093.P15482441156437001006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A085818 (A085971 (n + 1)).toNat).toNat

end

end A081093.P15482441156437001006

/-!
# A081094: 4th differences of partition numbers A000041.

The programs for A081094, there is no canonical definition to state claims against.
-/

/-! ## A081094.P1952617546926234590

`A081095(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A081094.P1952617546926234590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A081095 (n - 1) + a (n - 1)

end

end A081094.P1952617546926234590

/-! ## A081094.P9366816254059041087

`Δ[A072380(n)]`
-/

namespace A081094.P9366816254059041087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081094.P9366816254059041087

/-! ## A081094.P7286344634047396154

`A072380(n+1)-A072380(n)`
-/

namespace A081094.P7286344634047396154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 (n + 1) - A072380 n

end

end A081094.P7286344634047396154

/-! ## A081094.P16255237953952416971

`Δ[Δ[A053445(n)]]`
-/

namespace A081094.P16255237953952416971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081094.P16255237953952416971

/-! ## A081094.P391064425727130054

`Δ[Δ[Δ[A002865(n+1)]]]`
-/

namespace A081094.P391064425727130054
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081094.P391064425727130054

/-! ## A081094.P12945286256033439389

`Δ[Δ[Δ[A232697(n+1)]]]`
-/

namespace A081094.P12945286256033439389
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081094.P12945286256033439389

/-! ## A081094.P8955081214900637186

`Δ[Δ[Δ[A085811(n+4)]]]`
-/

namespace A081094.P8955081214900637186
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081094.P8955081214900637186

/-! ## A081094.P10218338108896321393

`Δ[Δ[Δ[Δ[A000041(n)]]]]`
-/

namespace A081094.P10218338108896321393
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081094.P10218338108896321393

/-!
# A081095: 5th differences of partition numbers A000041.

The programs for A081095, there is no canonical definition to state claims against.
-/

/-! ## A081095.P7059064996522908454

`Δ[A081094(n)]`
-/

namespace A081095.P7059064996522908454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081095.P7059064996522908454

/-! ## A081095.P13615638104555202932

`A081094(n+1)-A081094(n)`
-/

namespace A081095.P13615638104555202932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081094 (n + 1) - A081094 n

end

end A081095.P13615638104555202932

/-! ## A081095.P5908628644521982341

`Δ[Δ[A072380(n)]]`
-/

namespace A081095.P5908628644521982341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081095.P5908628644521982341

/-! ## A081095.P14274635460244148473

`Δ[Δ[Δ[A053445(n)]]]`
-/

namespace A081095.P14274635460244148473
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081095.P14274635460244148473

/-! ## A081095.P15530359783849785184

`Δ[Δ[Δ[Δ[A002865(n+1)]]]]`
-/

namespace A081095.P15530359783849785184
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081095.P15530359783849785184

/-! ## A081095.P3941930595702410251

`Δ[Δ[Δ[Δ[Δ[A000041(n)]]]]]`
-/

namespace A081095.P3941930595702410251
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f5 (n + 1) - f5 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081095.P3941930595702410251

/-!
# A081096: Taylor coefficients at x=0 of exp(exp(x^3/3+x^2/2)-1).

The programs for A081096, there is no canonical definition to state claims against.
-/

/-! ## A081096.P14949982044314598206

`A348404(A075427(n)+1)`
-/

namespace A081096.P14949982044314598206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348404 (A075427 n + 1).toNat

end

end A081096.P14949982044314598206

/-! ## A081096.P14994967499827659819

`A348404(A097110(n+1))`
-/

namespace A081096.P14994967499827659819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348404 (A097110 (n + 1)).toNat

end

end A081096.P14994967499827659819

/-! ## A081096.P15193415727920136638

`A348404(A015927(n+2))`
-/

namespace A081096.P15193415727920136638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348404 (A015927 (n + 2)).toNat

end

end A081096.P15193415727920136638

/-!
# A081097: Numbers n such that n^2= (1/5)*(n+floor(sqrt(5)*n*floor(sqrt(5)*n))).

The programs for A081097, there is no canonical definition to state claims against.
-/

/-! ## A081097.P5227835907241600810

`∑[∑[A268367(A266206(n))]]`
-/

namespace A081097.P5227835907241600810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268367 (A266206 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081097.P5227835907241600810

/-!
# A081098: Atomic numbers of the chemical elements sorted with respect to melting point.

The programs for A081098, there is no canonical definition to state claims against.
-/

/-! ## A081098.P9465858669601112699

`A244582(A242474(n+1)%A193761(n+1))`
-/

namespace A081098.P9465858669601112699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244582 (Int.tmod (A242474 (n + 1)) (A193761 (n + 1))).toNat

end

end A081098.P9465858669601112699

/-! ## A081098.P8162162515499151106

`A244582(A351374(n+1)%A319904(n+2))`
-/

namespace A081098.P8162162515499151106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244582 (Int.tmod (A351374 (n + 1)) (A319904 (n + 2))).toNat

end

end A081098.P8162162515499151106

/-! ## A081098.P12078560755911071266

`A244582(A077342(n+1))`
-/

namespace A081098.P12078560755911071266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244582 (A077342 (n + 1)).toNat

end

end A081098.P12078560755911071266

/-! ## A081098.P174987397447743212

`A244582(A242474(n+1))`
-/

namespace A081098.P174987397447743212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244582 (A242474 (n + 1)).toNat

end

end A081098.P174987397447743212

/-! ## A081098.P1752178811018960807

`A244582(A351374(n+1))`
-/

namespace A081098.P1752178811018960807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244582 (A351374 (n + 1)).toNat

end

end A081098.P1752178811018960807

