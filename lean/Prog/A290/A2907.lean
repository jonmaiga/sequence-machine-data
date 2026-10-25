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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A290701: a(n) = Sum_{k=1..n-1} binomial(n, k)*G_n*G_{n-k} where G_n is the n-th Genocchi number (of the first kind).

The programs for A290701, there is no canonical definition to state claims against.
-/

/-! ## A290701.P2657092949728364862

`2*(n+2)*A036968(n+1)+2*(n+1)*A036968(n+2)`
-/

namespace A290701.P2657092949728364862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) * A036968 (n + 1) + (2 * (n + 1) : ℤ) * A036968 (n + 2)

end

end A290701.P2657092949728364862

/-!
# A290706: Greatest of 4 consecutive primes with consecutive gaps 2, 4, 6.

The programs for A290706, there is no canonical definition to state claims against.
-/

/-! ## A290706.P4441334591321463726

`A078847(n+1)+12`
-/

namespace A290706.P4441334591321463726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078847 (n + 1) + 12

end

end A290706.P4441334591321463726

/-! ## A290706.P17685400830140753643

`∩[A172454(n+1), A190792(n+1)]+12`
-/

namespace A290706.P17685400830140753643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 12

end

end A290706.P17685400830140753643

/-! ## A290706.P2911678224360319975

`∩[A022004(n+1), A190792(n+1)]+12`
-/

namespace A290706.P2911678224360319975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 12

end

end A290706.P2911678224360319975

/-! ## A290706.P13474642369217336881

`p?[A078561(n+1)-2]+12`
-/

namespace A290706.P13474642369217336881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 12

end

end A290706.P13474642369217336881

/-! ## A290706.P2727366827865455370

`p?[A054821(n+1)+6]`
-/

namespace A290706.P2727366827865455370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290706.P2727366827865455370

/-! ## A290706.P10995352180548852310

`∩[A031925(n+1), A054822(n+1)]`
-/

namespace A290706.P10995352180548852310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290706.P10995352180548852310

/-! ## A290706.P7828663323616856056

`∩[A046117(n+1), A054822(n+1)]`
-/

namespace A290706.P7828663323616856056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290706.P7828663323616856056

/-! ## A290706.P1172931775805337072

`∩[A054822(n+1), A067831(n+1)]`
-/

namespace A290706.P1172931775805337072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290706.P1172931775805337072

/-! ## A290706.P4490113963882107896

`∩[A054822(n+1), A172071(n+1)]`
-/

namespace A290706.P4490113963882107896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290706.P4490113963882107896

/-! ## A290706.P6775241472556874391

`∩[A054822(n+1), A172988(n+1)]`
-/

namespace A290706.P6775241472556874391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290706.P6775241472556874391

/-!
# A290707: a(n) = 2^(n+1) + n^2 - 1.

The programs for A290707, the canonical program `A290707.P15835248195487173407` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290707 has offset 0).

The definition of A290707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)+n²-1` (program `A290707.P15835248195487173407`, by `A290707.P15835248195487173407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290707.P15835248195487173407

`2^(n+1)+n²-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290707

/-- `2^(n+1)+n²-1` -/
def P15835248195487173407.Spec : Prop :=
  ∀ n, P15835248195487173407.a n = A290707 n

theorem P15835248195487173407.correct : P15835248195487173407.Spec := by
  intro n
  simp only [A290707]

end A290707

/-! ## A290707.P13893122853912252756

`record[or(n*(n-2), 2^n)]`
-/

namespace A290707.P13893122853912252756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * ((n : ℤ) - 2)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290707.P13893122853912252756

namespace A290707

/-- `record[or(n*(n-2), 2^n)]` -/
def P13893122853912252756.Spec : Prop :=
  ∀ n, P13893122853912252756.a n = A290707 n

end A290707

/-! ## A290707.P10388040277914419873

`record[xor(n*(n-2), 2^n)]`
-/

namespace A290707.P10388040277914419873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * ((n : ℤ) - 2)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290707.P10388040277914419873

namespace A290707

/-- `record[xor(n*(n-2), 2^n)]` -/
def P10388040277914419873.Spec : Prop :=
  ∀ n, P10388040277914419873.a n = A290707 n

end A290707

/-! ## A290707.P5959797520156531421

`∑[or(abs(1-2*n), 2^n)]`
-/

namespace A290707.P5959797520156531421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - (2 * n : ℤ)| (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P5959797520156531421

namespace A290707

/-- `∑[or(abs(1-2*n), 2^n)]` -/
def P5959797520156531421.Spec : Prop :=
  ∀ n, P5959797520156531421.a n = A290707 n

end A290707

/-! ## A290707.P16658392850045270991

`∑[2*n-or(1, -2^n)]`
-/

namespace A290707.P16658392850045270991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor 1 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P16658392850045270991

namespace A290707

/-- `∑[2*n-or(1, -2^n)]` -/
def P16658392850045270991.Spec : Prop :=
  ∀ n, P16658392850045270991.a n = A290707 n

end A290707

/-! ## A290707.P18025468589458055123

`∑[abs(Δ[or((1-n)², 2^n)])]`
-/

namespace A290707.P18025468589458055123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((1 - (n : ℤ)) ^ 2) (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P18025468589458055123

namespace A290707

/-- `∑[abs(Δ[or((1-n)², 2^n)])]` -/
def P18025468589458055123.Spec : Prop :=
  ∀ n, P18025468589458055123.a n = A290707 n

end A290707

/-! ## A290707.P12833820805365970989

`∑[ogf((-1+x+2x^3)/(-1+4x-5x^2+2x^3))]`
-/

namespace A290707.P12833820805365970989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -4, 5, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P12833820805365970989

namespace A290707

/-- `∑[ogf((-1+x+2x^3)/(-1+4x-5x^2+2x^3))]` -/
def P12833820805365970989.Spec : Prop :=
  ∀ n, P12833820805365970989.a n = A290707 n

end A290707

/-! ## A290707.P13645213886164520269

`∑[or(1, 2^n-1)+2*n]`
-/

namespace A290707.P13645213886164520269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P13645213886164520269

namespace A290707

/-- `∑[or(1, 2^n-1)+2*n]` -/
def P13645213886164520269.Spec : Prop :=
  ∀ n, P13645213886164520269.a n = A290707 n

end A290707

/-! ## A290707.P12708620503029370618

`floor(∑[2*a(n-1)]+n²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A290707.P12708620503029370618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A290707.P12708620503029370618

namespace A290707

/-- `floor(∑[2*a(n-1)]+n²)` -/
def P12708620503029370618.Spec : Prop :=
  ∀ n, (P12708620503029370618.a n : ℤ) = A290707 n

end A290707

/-! ## A290707.P7386485220122766476

`floor(n²-∑[2*a(n-1)])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A290707.P7386485220122766476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P7386485220122766476

namespace A290707

/-- `floor(n²-∑[2*a(n-1)])` -/
def P7386485220122766476.Spec : Prop :=
  ∀ n, P7386485220122766476.a n = A290707 n

end A290707

/-! ## A290707.P16994080103446990796

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A290707.P16994080103446990796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P16994080103446990796

namespace A290707

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P16994080103446990796.Spec : Prop :=
  ∀ n, P16994080103446990796.a n = A290707 n

end A290707

/-! ## A290707.P15006496656802230842

`abs(or((n+1)*(n-1), 2^(n+1)))`
-/

namespace A290707.P15006496656802230842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((n + 1 : ℤ) * ((n : ℤ) - 1)) (2 ^ (n + 1) : ℤ)|

end

end A290707.P15006496656802230842

namespace A290707

/-- `abs(or((n+1)*(n-1), 2^(n+1)))` -/
def P15006496656802230842.Spec : Prop :=
  ∀ n, P15006496656802230842.a n = A290707 n

end A290707

/-! ## A290707.P15646825947603648682

`floor(2^(n+1)-∑[a(n-1)-2])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A290707.P15646825947603648682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P15646825947603648682

namespace A290707

/-- `floor(2^(n+1)-∑[a(n-1)-2])` -/
def P15646825947603648682.Spec : Prop :=
  ∀ n, P15646825947603648682.a n = A290707 n

end A290707

/-! ## A290707.P790711209333051704

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A290707.P790711209333051704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P790711209333051704

namespace A290707

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P790711209333051704.Spec : Prop :=
  ∀ n, P790711209333051704.a n = A290707 n

end A290707

/-! ## A290707.P9304141081313260127

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A290707.P9304141081313260127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P9304141081313260127

namespace A290707

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P9304141081313260127.Spec : Prop :=
  ∀ n, P9304141081313260127.a n = A290707 n

end A290707

/-! ## A290707.P3960898641086020276

`∑[A081494(n+1)]`
-/

namespace A290707.P3960898641086020276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P3960898641086020276

namespace A290707

/-- `∑[A081494(n+1)]` -/
def P3960898641086020276.Spec : Prop :=
  ∀ n, P3960898641086020276.a n = A290707 n

end A290707

/-! ## A290707.P10961186736840342410

`∑[A132736(n)+n]`
-/

namespace A290707.P10961186736840342410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P10961186736840342410

namespace A290707

/-- `∑[A132736(n)+n]` -/
def P10961186736840342410.Spec : Prop :=
  ∀ n, P10961186736840342410.a n = A290707 n

end A290707

/-! ## A290707.P15282797356624299200

`∑[A132074(n)-n]`
-/

namespace A290707.P15282797356624299200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132074 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P15282797356624299200

namespace A290707

/-- `∑[A132074(n)-n]` -/
def P15282797356624299200.Spec : Prop :=
  ∀ n, P15282797356624299200.a n = A290707 n

end A290707

/-! ## A290707.P9469997450759890347

`∑[∑[A127904(n)+1]]`
-/

namespace A290707.P9469997450759890347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P9469997450759890347

namespace A290707

/-- `∑[∑[A127904(n)+1]]` -/
def P9469997450759890347.Spec : Prop :=
  ∀ n, P9469997450759890347.a n = A290707 n

end A290707

/-! ## A290707.P13460745822139260738

`∑[A132072(n)-n²]`
-/

namespace A290707.P13460745822139260738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132072 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290707.P13460745822139260738

namespace A290707

/-- `∑[A132072(n)-n²]` -/
def P13460745822139260738.Spec : Prop :=
  ∀ n, P13460745822139260738.a n = A290707 n

end A290707

/-!
# A290709: Number of irredundant sets in the complete tripartite graph K_{n,n,n}.

The programs for A290709, the canonical program `A290709.P4437288850885802580` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290709 has offset 1).

The definition of A290709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290709.P4437288850885802580

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=22, a(2)=49, a(3)=94, a(4)=169`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290709

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P4437288850885802580.Spec : Prop :=
  ∀ n, P4437288850885802580.a n = A290709 (n + 1)

theorem P4437288850885802580.correct : P4437288850885802580.Spec := by
  intro n
  simp only [A290709, Nat.add_sub_cancel]

end A290709

/-! ## A290709.P9469384624097057765

`6*2^n-5+3*∑[char[1]+Δ[n²]]`
-/

namespace A290709.P9469384624097057765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 2 ^ n : ℤ) - 5 + 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290709.P9469384624097057765

namespace A290709

/-- `6*2^n-5+3*∑[char[1]+Δ[n²]]` -/
def P9469384624097057765.Spec : Prop :=
  ∀ n, P9469384624097057765.a n = A290709 (n + 1)

end A290709

/-! ## A290709.P4820532451215692159

`abs(A290325(n+1)+6*2^n-5)`
-/

namespace A290709.P4820532451215692159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290325 (n + 1) + ((6 * 2 ^ n : ℤ) - 5)|

end

end A290709.P4820532451215692159

namespace A290709

/-- `abs(A290325(n+1)+6*2^n-5)` -/
def P4820532451215692159.Spec : Prop :=
  ∀ n, P4820532451215692159.a n = A290709 (n + 1)

end A290709

/-! ## A290709.P11481287258505009902

`A016777(A184985(∑[Δ[n²]+2^n]))`
-/

namespace A290709.P11481287258505009902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A184985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A290709.P11481287258505009902

namespace A290709

/-- `A016777(A184985(∑[Δ[n²]+2^n]))` -/
def P11481287258505009902.Spec : Prop :=
  ∀ n, P11481287258505009902.a n = A290709 (n + 1)

end A290709

/-! ## A290709.P8631158015451195814

`A016777(record[A324715(n+1)]+(n+1)²)`
-/

namespace A290709.P8631158015451195814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A290709.P8631158015451195814

namespace A290709

/-- `A016777(record[A324715(n+1)]+(n+1)²)` -/
def P8631158015451195814.Spec : Prop :=
  ∀ n, P8631158015451195814.a n = A290709 (n + 1)

end A290709

/-!
# A290712: Number of irredundant sets in the n X n white bishop graph.

The programs for A290712, there is no canonical definition to state claims against.
-/

/-! ## A290712.P16488506872937482356

`A290714(n+2)/A290713(n+2)`
-/

namespace A290712.P16488506872937482356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290714 (n + 2) : ℚ) / (A290713 (n + 2) : ℚ)

end

end A290712.P16488506872937482356

/-!
# A290713: Number of irredundant sets in the n X n black bishop graph.

The programs for A290713, there is no canonical definition to state claims against.
-/

/-! ## A290713.P4477772435625181752

`record[ceil(tan(A331141(n+1)))]`
-/

namespace A290713.P4477772435625181752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (A331141 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290713.P4477772435625181752

/-!
# A290716: Number of minimal dominating sets in the n-triangular (Johnson) graph.

The programs for A290716, there is no canonical definition to state claims against.
-/

/-! ## A290716.P18095268542901556675

`A128926(A249583(n))-2`
-/

namespace A290716.P18095268542901556675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128926 (A249583 n).toNat - 2

end

end A290716.P18095268542901556675

/-! ## A290716.P15614444222665559382

`A008618(lcm(8, A322924(n)))`
-/

namespace A290716.P15614444222665559382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lcm 8 (A322924 n))

end

end A290716.P15614444222665559382

/-!
# A290717: Number of minimal dominating sets in the n-triangular honeycomb queen graph.

The programs for A290717, there is no canonical definition to state claims against.
-/

/-! ## A290717.P2084562376948436247

`A204022(record[val(n, 2)-a(n-1)]^n)` with `a(0)=2, a(1)=1`
-/

namespace A290717.P2084562376948436247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n).toNat

end

end A290717.P2084562376948436247

/-!
# A290718: a(n) = 2^(n + 1) + 4^(n - 1) - 2.

The programs for A290718, the canonical program `A290718.P5793352813253617867` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290718 has offset 1).

The definition of A290718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)+4^n-2` (program `A290718.P5793352813253617867`, by `A290718.P5793352813253617867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290718.P5793352813253617867

`2^(n+2)+4^n-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290718

/-- `2^(n+2)+4^n-2` -/
def P5793352813253617867.Spec : Prop :=
  ∀ n, P5793352813253617867.a n = A290718 (n + 1)

theorem P5793352813253617867.correct : P5793352813253617867.Spec := by
  intro n
  simp only [A290718, Nat.add_sub_cancel]

end A290718

/-! ## A290718.P16718993217127764223

`abs(6-A052548(n)²)`
-/

namespace A290718.P16718993217127764223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A052548 n ^ 2|

end

end A290718.P16718993217127764223

namespace A290718

/-- `abs(6-A052548(n)²)` -/
def P16718993217127764223.Spec : Prop :=
  ∀ n, P16718993217127764223.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P6658147088592275766

`abs((A000051(n)+1)²-6)`
-/

namespace A290718.P6658147088592275766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000051 n + 1) ^ 2 - 6|

end

end A290718.P6658147088592275766

namespace A290718

/-- `abs((A000051(n)+1)²-6)` -/
def P6658147088592275766.Spec : Prop :=
  ∀ n, P6658147088592275766.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P3292863096402384555

`record[(A052552(n)+1)²-6]`
-/

namespace A290718.P3292863096402384555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052552 n + 1) ^ 2 - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290718.P3292863096402384555

namespace A290718

/-- `record[(A052552(n)+1)²-6]` -/
def P3292863096402384555.Spec : Prop :=
  ∀ n, P3292863096402384555.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P16136382070768183162

`∑[A002001(n)+2^(n+1)]`
-/

namespace A290718.P16136382070768183162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n + (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290718.P16136382070768183162

namespace A290718

/-- `∑[A002001(n)+2^(n+1)]` -/
def P16136382070768183162.Spec : Prop :=
  ∀ n, P16136382070768183162.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P7090915117129056263

`abs(4*a(n-1)-A131130(n))` with `a(0)=3`
-/

namespace A290718.P7090915117129056263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |4 * a (n - 1) - A131130 n|

end

end A290718.P7090915117129056263

namespace A290718

/-- `abs(4*a(n-1)-A131130(n))` -/
def P7090915117129056263.Spec : Prop :=
  ∀ n, P7090915117129056263.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P17430902555040203044

`∑[A060547(3*(n+1))+A002001(n)]`
-/

namespace A290718.P17430902555040203044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (3 * (n + 1)) + A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290718.P17430902555040203044

namespace A290718

/-- `∑[A060547(3*(n+1))+A002001(n)]` -/
def P17430902555040203044.Spec : Prop :=
  ∀ n, P17430902555040203044.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P275651111090516489

`or(A052968(2*n+1), A145654(n+1))`
-/

namespace A290718.P275651111090516489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052968 (2 * n + 1)) (A145654 (n + 1))

end

end A290718.P275651111090516489

namespace A290718

/-- `or(A052968(2*n+1), A145654(n+1))` -/
def P275651111090516489.Spec : Prop :=
  ∀ n, P275651111090516489.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P4452494091115517836

`∑[A122391(2*n+1)+A000079(n+1)]`
-/

namespace A290718.P4452494091115517836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (2 * n + 1) + A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290718.P4452494091115517836

namespace A290718

/-- `∑[A122391(2*n+1)+A000079(n+1)]` -/
def P4452494091115517836.Spec : Prop :=
  ∀ n, P4452494091115517836.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P8862771357396134064

`xor(A169726(n), A187560(n))`
-/

namespace A290718.P8862771357396134064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169726 n) (A187560 n)

end

end A290718.P8862771357396134064

namespace A290718

/-- `xor(A169726(n), A187560(n))` -/
def P8862771357396134064.Spec : Prop :=
  ∀ n, P8862771357396134064.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P15218065995833840484

`A093069(n+1)%A140660(n)`
-/

namespace A290718.P15218065995833840484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093069 (n + 1)) (A140660 n)

end

end A290718.P15218065995833840484

namespace A290718

/-- `A093069(n+1)%A140660(n)` -/
def P15218065995833840484.Spec : Prop :=
  ∀ n, P15218065995833840484.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P5211566935055940378

`Δ[A145654(n+1)+A002450(n)]`
-/

namespace A290718.P5211566935055940378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145654 (n + 1) + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290718.P5211566935055940378

namespace A290718

/-- `Δ[A145654(n+1)+A002450(n)]` -/
def P5211566935055940378.Spec : Prop :=
  ∀ n, P5211566935055940378.a n = A290718 (n + 1)

end A290718

/-! ## A290718.P13245865473001148338

`(A173033(n+1)+2*A000079(n)²)/2`
-/

namespace A290718.P13245865473001148338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173033 (n + 1) + 2 * A000079 n ^ 2 : ℚ) / 2

end

end A290718.P13245865473001148338

namespace A290718

/-- `(A173033(n+1)+2*A000079(n)²)/2` -/
def P13245865473001148338.Spec : Prop :=
  ∀ n, P13245865473001148338.a n = (A290718 (n + 1) : ℚ)

end A290718

/-! ## A290718.P8884161643753131196

`(A028399(n+3)+2*A000079(n)²)/2`
-/

namespace A290718.P8884161643753131196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028399 (n + 3) + 2 * A000079 n ^ 2 : ℚ) / 2

end

end A290718.P8884161643753131196

namespace A290718

/-- `(A028399(n+3)+2*A000079(n)²)/2` -/
def P8884161643753131196.Spec : Prop :=
  ∀ n, P8884161643753131196.a n = (A290718 (n + 1) : ℚ)

end A290718

/-! ## A290718.P16705778809423529939

`(A134067(n+1)+A000918(2*n+1))/2`
-/

namespace A290718.P16705778809423529939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134067 (n + 1) + A000918 (2 * n + 1) : ℚ) / 2

end

end A290718.P16705778809423529939

namespace A290718

/-- `(A134067(n+1)+A000918(2*n+1))/2` -/
def P16705778809423529939.Spec : Prop :=
  ∀ n, P16705778809423529939.a n = (A290718 (n + 1) : ℚ)

end A290718

/-! ## A290718.P1208796524530028710

`(A173033(n+1)+A000079(2*n+1))/2`
-/

namespace A290718.P1208796524530028710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173033 (n + 1) + A000079 (2 * n + 1) : ℚ) / 2

end

end A290718.P1208796524530028710

namespace A290718

/-- `(A173033(n+1)+A000079(2*n+1))/2` -/
def P1208796524530028710.Spec : Prop :=
  ∀ n, P1208796524530028710.a n = (A290718 (n + 1) : ℚ)

end A290718

/-! ## A290718.P3360527212891944516

`(A028399(n+3)+A000079(2*n+1))/2`
-/

namespace A290718.P3360527212891944516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028399 (n + 3) + A000079 (2 * n + 1) : ℚ) / 2

end

end A290718.P3360527212891944516

namespace A290718

/-- `(A028399(n+3)+A000079(2*n+1))/2` -/
def P3360527212891944516.Spec : Prop :=
  ∀ n, P3360527212891944516.a n = (A290718 (n + 1) : ℚ)

end A290718

/-!
# A290720: a(n) = 2*3^n + 4^n + 3*n.

The programs for A290720, the canonical program `A290720.P3930899614742176784` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290720 has offset 0).

The definition of A290720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n+4^n+3*n` (program `A290720.P3930899614742176784`, by `A290720.P3930899614742176784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290720.P3930899614742176784

`2*3^n+4^n+3*n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290720

/-- `2*3^n+4^n+3*n` -/
def P3930899614742176784.Spec : Prop :=
  ∀ n, (P3930899614742176784.a n : ℤ) = A290720 n

theorem P3930899614742176784.correct : P3930899614742176784.Spec := by
  intro n
  simp only [A290720]

end A290720

/-! ## A290720.P18013720002236102327

`abs(1-(A176805(n)+A074605(n)))`
-/

namespace A290720.P18013720002236102327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A176805 n + A074605 n)|

end

end A290720.P18013720002236102327

namespace A290720

/-- `abs(1-(A176805(n)+A074605(n)))` -/
def P18013720002236102327.Spec : Prop :=
  ∀ n, P18013720002236102327.a n = A290720 n

end A290720

/-! ## A290720.P10918453117324852445

`or(A221905(n)+A074605(n), char[1])`
-/

namespace A290720.P10918453117324852445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221905 n + A074605 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290720.P10918453117324852445

namespace A290720

/-- `or(A221905(n)+A074605(n), char[1])` -/
def P10918453117324852445.Spec : Prop :=
  ∀ n, P10918453117324852445.a n = A290720 n

end A290720

/-! ## A290720.P4684245837181829167

`(A221905(n)+A074605(n))*A001045(n+1)%2`
-/

namespace A290720.P4684245837181829167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221905 n + A074605 n) * Int.tmod (A001045 (n + 1)) 2

end

end A290720.P4684245837181829167

namespace A290720

/-- `(A221905(n)+A074605(n))*A001045(n+1)%2` -/
def P4684245837181829167.Spec : Prop :=
  ∀ n, P4684245837181829167.a n = A290720 n

end A290720

/-! ## A290720.P16827926380711136733

`xor(A221905(n)+A074605(n), A008683(4*(n+1)))`
-/

namespace A290720.P16827926380711136733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A221905 n + A074605 n) (A008683 (4 * (n + 1)))

end

end A290720.P16827926380711136733

namespace A290720

/-- `xor(A221905(n)+A074605(n), A008683(4*(n+1)))` -/
def P16827926380711136733.Spec : Prop :=
  ∀ n, P16827926380711136733.a n = A290720 n

end A290720

/-! ## A290720.P526926248219273946

`(A221905(n)+A074605(n))*A008683(A020484(n))²`
-/

namespace A290720.P526926248219273946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221905 n + A074605 n) * A008683 (A020484 n).toNat ^ 2

end

end A290720.P526926248219273946

namespace A290720

/-- `(A221905(n)+A074605(n))*A008683(A020484(n))²` -/
def P526926248219273946.Spec : Prop :=
  ∀ n, P526926248219273946.a n = A290720 n

end A290720

/-! ## A290720.P15832690154936065305

`(A221905(n)+A074605(n))*A001222(A158813(n+1))`
-/

namespace A290720.P15832690154936065305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221905 n + A074605 n) * A001222 (A158813 (n + 1)).toNat

end

end A290720.P15832690154936065305

namespace A290720

/-- `(A221905(n)+A074605(n))*A001222(A158813(n+1))` -/
def P15832690154936065305.Spec : Prop :=
  ∀ n, P15832690154936065305.a n = A290720 n

end A290720

/-! ## A290720.P1235449294837801782

`(A221905(n)+A074605(n))*A007318(∑[n])`
-/

namespace A290720.P1235449294837801782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221905 n + A074605 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290720.P1235449294837801782

namespace A290720

/-- `(A221905(n)+A074605(n))*A007318(∑[n])` -/
def P1235449294837801782.Spec : Prop :=
  ∀ n, P1235449294837801782.a n = A290720 n

end A290720

/-! ## A290720.P10208962316158619848

`(A221905(n)+A074605(n))*A013609(∑[n])`
-/

namespace A290720.P10208962316158619848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221905 n + A074605 n) * A013609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290720.P10208962316158619848

namespace A290720

/-- `(A221905(n)+A074605(n))*A013609(∑[n])` -/
def P10208962316158619848.Spec : Prop :=
  ∀ n, P10208962316158619848.a n = A290720 n

end A290720

/-!
# A290721: a(n) = 4^n - n - 1.

The programs for A290721, the canonical program `A290721.P11398146788262714008` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290721 has offset 1).

The definition of A290721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)-(n+1)-1` (program `A290721.P11398146788262714008`, by `A290721.P11398146788262714008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290721.P11398146788262714008

`4^(n+1)-(n+1)-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290721

/-- `4^(n+1)-(n+1)-1` -/
def P11398146788262714008.Spec : Prop :=
  ∀ n, P11398146788262714008.a n = A290721 (n + 1)

theorem P11398146788262714008.correct : P11398146788262714008.Spec := by
  intro n
  simp only [A290721, Nat.add_sub_cancel]

end A290721

/-! ## A290721.P8384569800208822148

`∑[ogf((2+x)/(1-5x+4x^2))]`
-/

namespace A290721.P8384569800208822148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P8384569800208822148

namespace A290721

/-- `∑[ogf((2+x)/(1-5x+4x^2))]` -/
def P8384569800208822148.Spec : Prop :=
  ∀ n, P8384569800208822148.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P527788833289160698

`ogf((2+x)/(1-6x+9x^2-4x^3))`
-/

namespace A290721.P527788833289160698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -6, 9, -4] n

end

end A290721.P527788833289160698

namespace A290721

/-- `ogf((2+x)/(1-6x+9x^2-4x^3))` -/
def P527788833289160698.Spec : Prop :=
  ∀ n, P527788833289160698.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P13019043750423489127

`abs(∑[lcm(3, 4^n)-1])`
-/

namespace A290721.P13019043750423489127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (4 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A290721.P13019043750423489127

namespace A290721

/-- `abs(∑[lcm(3, 4^n)-1])` -/
def P13019043750423489127.Spec : Prop :=
  ∀ n, P13019043750423489127.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P431601656766470665

`xor(n+1, ∑[3*4^n])`
-/

namespace A290721.P431601656766470665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290721.P431601656766470665

namespace A290721

/-- `xor(n+1, ∑[3*4^n])` -/
def P431601656766470665.Spec : Prop :=
  ∀ n, (P431601656766470665.a n : ℤ) = A290721 (n + 1)

end A290721

/-! ## A290721.P14775761644891711440

`floor(∑[4*a(n-1)+3])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A290721.P14775761644891711440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  4 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P14775761644891711440

namespace A290721

/-- `floor(∑[4*a(n-1)+3])` -/
def P14775761644891711440.Spec : Prop :=
  ∀ n, (P14775761644891711440.a n : ℤ) = A290721 (n + 1)

end A290721

/-! ## A290721.P3528622355512626477

`floor(∑[∑[4*a(n-1)]])` with `a(0)=2, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A290721.P3528622355512626477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P3528622355512626477

namespace A290721

/-- `floor(∑[∑[4*a(n-1)]])` -/
def P3528622355512626477.Spec : Prop :=
  ∀ n, (P3528622355512626477.a n : ℤ) = A290721 (n + 1)

end A290721

/-! ## A290721.P16204511939516810134

`abs(or(n+2, -4^(n+1)))`
-/

namespace A290721.P16204511939516810134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 2 : ℤ) (-(4 ^ (n + 1) : ℤ))|

end

end A290721.P16204511939516810134

namespace A290721

/-- `abs(or(n+2, -4^(n+1)))` -/
def P16204511939516810134.Spec : Prop :=
  ∀ n, P16204511939516810134.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P3222372854859517466

`-or(n+2, -4^(n+1))`
-/

namespace A290721.P3222372854859517466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n + 2 : ℤ) (-(4 ^ (n + 1) : ℤ))

end

end A290721.P3222372854859517466

namespace A290721

/-- `-or(n+2, -4^(n+1))` -/
def P3222372854859517466.Spec : Prop :=
  ∀ n, P3222372854859517466.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P11265645830686253771

`abs(xor(n+2, -4^(n+1)))`
-/

namespace A290721.P11265645830686253771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 2 : ℤ) (-(4 ^ (n + 1) : ℤ))|

end

end A290721.P11265645830686253771

namespace A290721

/-- `abs(xor(n+2, -4^(n+1)))` -/
def P11265645830686253771.Spec : Prop :=
  ∀ n, P11265645830686253771.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P13171291566091356292

`-xor(n+2, -4^(n+1))`
-/

namespace A290721.P13171291566091356292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n + 2 : ℤ) (-(4 ^ (n + 1) : ℤ))

end

end A290721.P13171291566091356292

namespace A290721

/-- `-xor(n+2, -4^(n+1))` -/
def P13171291566091356292.Spec : Prop :=
  ∀ n, P13171291566091356292.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P3713005411842438522

`record[ceil(4^(n-2)-(n-1))]`
-/

namespace A290721.P3713005411842438522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - ((n : ℤ) - 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290721.P3713005411842438522

namespace A290721

/-- `record[ceil(4^(n-2)-(n-1))]` -/
def P3713005411842438522.Spec : Prop :=
  ∀ n, P3713005411842438522.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P442595628516595324

`round(record[4^(n-3)-(n-2)])`
-/

namespace A290721.P442595628516595324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - ((n : ℤ) - 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A290721.P442595628516595324

namespace A290721

/-- `round(record[4^(n-3)-(n-2)])` -/
def P442595628516595324.Spec : Prop :=
  ∀ n, P442595628516595324.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P8957278235484827986

`∑[A198693(n)]`
-/

namespace A290721.P8957278235484827986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P8957278235484827986

namespace A290721

/-- `∑[A198693(n)]` -/
def P8957278235484827986.Spec : Prop :=
  ∀ n, P8957278235484827986.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P10199427307048134421

`∑[A096045(n)+1]`
-/

namespace A290721.P10199427307048134421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096045 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P10199427307048134421

namespace A290721

/-- `∑[A096045(n)+1]` -/
def P10199427307048134421.Spec : Prop :=
  ∀ n, P10199427307048134421.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P14228719801782737237

`∑[A164346(n)-1]`
-/

namespace A290721.P14228719801782737237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P14228719801782737237

namespace A290721

/-- `∑[A164346(n)-1]` -/
def P14228719801782737237.Spec : Prop :=
  ∀ n, P14228719801782737237.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P9799725585020515421

`∑[A140660(n)-2]`
-/

namespace A290721.P9799725585020515421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140660 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P9799725585020515421

namespace A290721

/-- `∑[A140660(n)-2]` -/
def P9799725585020515421.Spec : Prop :=
  ∀ n, P9799725585020515421.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P10210701425579971262

`∑[A153893(2*n)]`
-/

namespace A290721.P10210701425579971262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P10210701425579971262

namespace A290721

/-- `∑[A153893(2*n)]` -/
def P10210701425579971262.Spec : Prop :=
  ∀ n, P10210701425579971262.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P8198684689736376618

`∑[A201630(2*n)]`
-/

namespace A290721.P8198684689736376618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201630 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290721.P8198684689736376618

namespace A290721

/-- `∑[A201630(2*n)]` -/
def P8198684689736376618.Spec : Prop :=
  ∀ n, P8198684689736376618.a n = A290721 (n + 1)

end A290721

/-! ## A290721.P16714770974606241379

`A320933(2*(n+1))`
-/

namespace A290721.P16714770974606241379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320933 (2 * (n + 1))

end

end A290721.P16714770974606241379

namespace A290721

/-- `A320933(2*(n+1))` -/
def P16714770974606241379.Spec : Prop :=
  ∀ n, P16714770974606241379.a n = A290721 (n + 1)

end A290721

/-!
# A290722: Number of dissections of a 2n-gon into polygons with even number of sides counted up to rotations and reflections.

The programs for A290722, there is no canonical definition to state claims against.
-/

/-! ## A290722.P17420042635924253440

`record[A111757(n+2)]`
-/

namespace A290722.P17420042635924253440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111757 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290722.P17420042635924253440

/-! ## A290722.P15992301207210236872

`A111757(2*(n+2))`
-/

namespace A290722.P15992301207210236872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111757 (2 * (n + 2))

end

end A290722.P15992301207210236872

/-! ## A290722.P931947237039640618

`record[Δ[A111757(2*n-(n-1))]]`
-/

namespace A290722.P931947237039640618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111757 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290722.P931947237039640618

/-! ## A290722.P13310416065289247664

`filter[A111757(n+3), A368916(#)]`
-/

namespace A290722.P13310416065289247664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111757 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A290722.P13310416065289247664

/-!
# A290723: a(n) = (1/11520) * n*(n+7)^2 * (3*n^7 + 83*n^6 + 961*n^5 + 6201*n^4 + 24708*n^3 + 60700*n^2 + 87968*n + 85056).

The programs for A290723, there is no canonical definition to state claims against.
-/

/-! ## A290723.P16582219713472914724

`abs(A290053(A167499(n+4)+1))`
-/

namespace A290723.P16582219713472914724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290053 (A167499 (n + 4) + 1).toNat|

end

end A290723.P16582219713472914724

/-!
# A290725: Numbers with 3k digits for some k such that the first k digits minus the middle k digits equals the last k digits.

The programs for A290725, there is no canonical definition to state claims against.
-/

/-! ## A290725.P7100661758905257840

`A233583(A352438(n+10)+1)`
-/

namespace A290725.P7100661758905257840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A352438 (n + 10) + 1).toNat

end

end A290725.P7100661758905257840

/-! ## A290725.P10181997367482637980

`∩[A068520(n+1), A240237(n)]`
-/

namespace A290725.P10181997367482637980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290725.P10181997367482637980

/-! ## A290725.P11525788648572707811

`∩[A083967(n+1), A240237(n)]`
-/

namespace A290725.P11525788648572707811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290725.P11525788648572707811

/-! ## A290725.P9992413723127725876

`∩[A240237(n), A352438(n+1)]`
-/

namespace A290725.P9992413723127725876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290725.P9992413723127725876

/-! ## A290725.P2108032908394202391

`∩[A387911(n+1), A240237(n)]`
-/

namespace A290725.P2108032908394202391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290725.P2108032908394202391

/-! ## A290725.P16822135219463022743

`A352438(round(acot(A337984(n+1))+n)+10)`
-/

namespace A290725.P16822135219463022743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A337984 (n + 1) : ℝ) + (n : ℝ)) + 10).toNat

end

end A290725.P16822135219463022743

/-! ## A290725.P11767137618391117475

`A352438(A102494(n+1))`
-/

namespace A290725.P11767137618391117475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (A102494 (n + 1)).toNat

end

end A290725.P11767137618391117475

/-!
# A290726: a(n) = maximal number of semicircles that pass through an intersection point in the configuration A290447(n).

The programs for A290726, there is no canonical definition to state claims against.
-/

/-! ## A290726.P11408326494759410298

`Δ[eq[0, A290867(n+1)]]`
-/

namespace A290726.P11408326494759410298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290726.P11408326494759410298

/-! ## A290726.P11073569049768611468

`Δ[lt[A290867(n+1), A141044(n)]]`
-/

namespace A290726.P11073569049768611468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290726.P11073569049768611468

/-! ## A290726.P3664173766376299818

`Δ[lt[A290867(n+1), A057427(n+1)]]`
-/

namespace A290726.P3664173766376299818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290726.P3664173766376299818

/-! ## A290726.P6306474400132907322

`Δ[lt[A290867(n+1), A158416(2*n+1)]]`
-/

namespace A290726.P6306474400132907322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290726.P6306474400132907322

/-! ## A290726.P12727099970456513890

`Δ[lt[A290867(n+1), A295920(2*n+5)]]`
-/

namespace A290726.P12727099970456513890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (2 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A290726.P12727099970456513890

/-!
# A290727: Analog of A085635, replacing "quadratic residue" (X^2) with "value of X^2+X".

The programs for A290727, there is no canonical definition to state claims against.
-/

/-! ## A290727.P2673564609158054364

`∩[A194712(n+1), A337037(n+1)]`
-/

namespace A290727.P2673564609158054364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290727.P2673564609158054364

/-! ## A290727.P4323327602753848535

`∩[A194712(n+1), A392698(n+1)]`
-/

namespace A290727.P4323327602753848535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290727.P4323327602753848535

/-!
# A290728: Analog of A084848, replacing "quadratic residue" (X^2) with "value of X^2+X".

The programs for A290728, there is no canonical definition to state claims against.
-/

/-! ## A290728.P2159767313806998606

`A290731(A290727(n+1))`
-/

namespace A290728.P2159767313806998606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A290727 (n + 1)).toNat

end

end A290728.P2159767313806998606

/-! ## A290728.P17737907543006565517

`A000224(ceil(A290727(n+1)/2))`
-/

namespace A290728.P17737907543006565517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 ⌈(A290727 (n + 1) : ℚ) / 2⌉.toNat

end

end A290728.P17737907543006565517

/-! ## A290728.P7123585521135922816

`A117484(ceil(A290727(n+1)/2))`
-/

namespace A290728.P7123585521135922816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 ⌈(A290727 (n + 1) : ℚ) / 2⌉.toNat

end

end A290728.P7123585521135922816

/-! ## A290728.P280520568889053084

`A000224(round(A290727(n+1)/2))`
-/

namespace A290728.P280520568889053084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (SequenceMachineLib.roundAway ((A290727 (n + 1) : ℚ) / 2)).toNat

end

end A290728.P280520568889053084

/-! ## A290728.P15901679147541374839

`A117484(round(A290727(n+1)/2))`
-/

namespace A290728.P15901679147541374839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 (SequenceMachineLib.roundAway ((A290727 (n + 1) : ℚ) / 2)).toNat

end

end A290728.P15901679147541374839

/-!
# A290729: Analog of A085635, replacing "quadratic residue" (X^2) with "value of X(3X-1)/2".

The programs for A290729, there is no canonical definition to state claims against.
-/

/-! ## A290729.P7480875784375787760

`eq[A001945(A298917(n+1)), A010155(n)]`
-/

namespace A290729.P7480875784375787760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (A298917 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290729.P7480875784375787760

/-! ## A290729.P9343149000699983692

`eq[A010144(n), A185170(A298183(n+1))]`
-/

namespace A290729.P9343149000699983692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (A298183 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290729.P9343149000699983692

/-! ## A290729.P7460094542197281187

`eq[A010155(n), A185170(A298183(n+1))]`
-/

namespace A290729.P7460094542197281187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (A298183 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290729.P7460094542197281187

/-! ## A290729.P3975171283757325840

`eq[A010144(n), A185170(A298917(n+1))]`
-/

namespace A290729.P3975171283757325840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (A298917 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290729.P3975171283757325840

/-! ## A290729.P13738169842543073559

`eq[A040502(n), A185170(A298183(n+1))]`
-/

namespace A290729.P13738169842543073559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (A298183 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290729.P13738169842543073559

/-!
# A290730: Analog of A084848, replacing "quadratic residue" (X^2) with "value of X(3X-1)/2". a(n) = A290732(A290729(n)).

The programs for A290730, there is no canonical definition to state claims against.
-/

/-! ## A290730.P7682863344566806142

`A290732(A290729(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290730.P7682863344566806142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290732 (A290729 (n + 1)).toNat

end

end A290730.P7682863344566806142

/-! ## A290730.P3330538419117207148

`A290731(or(1, A290729(n+1)))`
-/

namespace A290730.P3330538419117207148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (Int.lor 1 (A290729 (n + 1))).toNat

end

end A290730.P3330538419117207148

/-! ## A290730.P11658468999144407051

`A290731(A290729(2*n+1-n))`
-/

namespace A290730.P11658468999144407051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A290729 (2 * n + 1 - n)).toNat

end

end A290730.P11658468999144407051

/-! ## A290730.P6011240530299256844

`A290731(A290729(n+1)+A000007(n))`
-/

namespace A290730.P6011240530299256844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A290729 (n + 1) + A000007 n).toNat

end

end A290730.P6011240530299256844

/-! ## A290730.P1081369441934570451

`A000224(A290729(n+1)+A000038(n+2))`
-/

namespace A290730.P1081369441934570451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A290729 (n + 1) + A000038 (n + 2)).toNat

end

end A290730.P1081369441934570451

/-!
# A290731: Number of distinct values of X*(X+1) mod n.

The programs for A290731, there is no canonical definition to state claims against.
-/

/-! ## A290731.P14257392821403710121

`A117484(gcd(n+1, ∑[n]))`
-/

namespace A290731.P14257392821403710121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A290731.P14257392821403710121

/-! ## A290731.P13436832474251595890

`A117484((∑[n]+n)%(n+1)+1)`
-/

namespace A290731.P13436832474251595890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)

end

end A290731.P13436832474251595890

/-! ## A290731.P4291676033628759696

`A117484(A026741(n+1))`
-/

namespace A290731.P4291676033628759696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 (A026741 (n + 1)).toNat

end

end A290731.P4291676033628759696

/-! ## A290731.P235878468322568848

`A117484(A065423(n+1)+1)`
-/

namespace A290731.P235878468322568848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 (A065423 (n + 1) + 1).toNat

end

end A290731.P235878468322568848

/-! ## A290731.P14601133977313010333

`A117484((n+1)/A000034(n))`
-/

namespace A290731.P14601133977313010333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A290731.P14601133977313010333

/-! ## A290731.P11434048821864368631

`A117484(n+1-A000217(n)%(n+1))`
-/

namespace A290731.P11434048821864368631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117484 ((n + 1 : ℤ) - Int.tmod (A000217 n) (n + 1 : ℤ)).toNat

end

end A290731.P11434048821864368631

/-! ## A290731.P16885802553521365537

`∑{d}[n+1, A117484(#)*A154955((n+1)/#)]`
-/

namespace A290731.P16885802553521365537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117484 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290731.P16885802553521365537

/-! ## A290731.P15343205803702696201

`A117484(n+1)/A290732(n+1)*A317623(n+1)`
-/

namespace A290731.P15343205803702696201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117484 (n + 1) : ℚ) / (A290732 (n + 1) : ℚ) * (A317623 (n + 1) : ℚ)

end

end A290731.P15343205803702696201

/-! ## A290731.P12022073627465000852

`A000224(4*(n+1))-A000224(n+1)`
-/

namespace A290731.P12022073627465000852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (4 * (n + 1)) - A000224 (n + 1)

end

end A290731.P12022073627465000852

/-! ## A290731.P11522137605770134396

`A105612(A004767(n)+1)-A105612(n+1)`
-/

namespace A290731.P11522137605770134396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A004767 n + 1).toNat - A105612 (n + 1)

end

end A290731.P11522137605770134396

/-! ## A290731.P13411831724185103299

`A105612(A008574(n+1))-A105612(n+1)`
-/

namespace A290731.P13411831724185103299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A008574 (n + 1)).toNat - A105612 (n + 1)

end

end A290731.P13411831724185103299

/-!
# A290732: Number of distinct values of X*(3*X-1)/2 mod n.

The programs for A290732, there is no canonical definition to state claims against.
-/

/-! ## A290732.P2648352205987015226

`A317623(n+1)*A040001(n+1)`
-/

namespace A290732.P2648352205987015226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317623 (n + 1) * A040001 (n + 1)

end

end A290732.P2648352205987015226

/-! ## A290732.P4898896421581146313

`A000034(n)*A317623(n+1)`
-/

namespace A290732.P4898896421581146313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A317623 (n + 1)

end

end A290732.P4898896421581146313

/-! ## A290732.P17157025800962738307

`∑{d}[n+1, A209229(#)*A317623((n+1)/#)]`
-/

namespace A290732.P17157025800962738307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209229 d * A317623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290732.P17157025800962738307

/-! ## A290732.P17290050862712757979

`∑{d}[n+1, A036987(#-1)*A317623((n+1)/#)]`
-/

namespace A290732.P17290050862712757979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A317623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290732.P17290050862712757979

/-! ## A290732.P1161507451624507284

`A117484(n+1)/A290731(n+1)*A317623(n+1)`
-/

namespace A290732.P1161507451624507284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117484 (n + 1) : ℚ) / (A290731 (n + 1) : ℚ) * (A317623 (n + 1) : ℚ)

end

end A290732.P1161507451624507284

/-! ## A290732.P17898257871222419854

`A317623(A022998(n+1))`
-/

namespace A290732.P17898257871222419854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317623 (A022998 (n + 1)).toNat

end

end A290732.P17898257871222419854

/-! ## A290732.P16641717476202882914

`A317623(A059029(n)+1)`
-/

namespace A290732.P16641717476202882914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317623 (A059029 n + 1).toNat

end

end A290732.P16641717476202882914

/-! ## A290732.P15135676962208410273

`A317623(A257088(n+1))`
-/

namespace A290732.P15135676962208410273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317623 (A257088 (n + 1)).toNat

end

end A290732.P15135676962208410273

/-! ## A290732.P18039634517995919109

`A317623(2*(n+1))`
-/

namespace A290732.P18039634517995919109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317623 (2 * (n + 1))

end

end A290732.P18039634517995919109

/-!
# A290735: a(n) = weighted sum over all the self-conjugate partitions of 4n + 1 into odd parts, with respect to a certain weight.

The programs for A290735, there is no canonical definition to state claims against.
-/

/-! ## A290735.P12998532920506169942

`A008443(n)+A143064(n)-A290737(n)`
-/

namespace A290735.P12998532920506169942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 n + (A143064 n - A290737 n)

end

end A290735.P12998532920506169942

/-! ## A290735.P15495685875564549446

`A008443(n)-(A290739(n)+A290737(n))`
-/

namespace A290735.P15495685875564549446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 n - (A290739 n + A290737 n)

end

end A290735.P15495685875564549446

/-! ## A290735.P18309835254143138800

`A005869(n)/2-A290737(n)-A290739(n)`
-/

namespace A290735.P18309835254143138800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005869 n : ℚ) / 2 - (A290737 n : ℚ) - (A290739 n : ℚ)

end

end A290735.P18309835254143138800

/-! ## A290735.P8133005086736771641

`A005869(n)-A008443(n)-A290737(n)-A290739(n)`
-/

namespace A290735.P8133005086736771641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005869 n - A008443 n - A290737 n - A290739 n

end

end A290735.P8133005086736771641

/-! ## A290735.P17414786037419040214

`A134478(eq[A004830(n+1), A318909(n+1)])`
-/

namespace A290735.P17414786037419040214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A290735.P17414786037419040214

/-!
# A290736: Number of partitions of 2n+1 into odd parts in which the largest part appears an odd number of times and all other parts appear twice.

The programs for A290736, there is no canonical definition to state claims against.
-/

/-! ## A290736.P13800536485769307897

`A178863(n+1)-A051903(A288146(n))`
-/

namespace A290736.P13800536485769307897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1) - A051903 (A288146 n).toNat

end

end A290736.P13800536485769307897

/-! ## A290736.P14919405078512672110

`A300118(record[A321980(n+1)])`
-/

namespace A290736.P14919405078512672110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290736.P14919405078512672110

/-!
# A290737: Weighted count of partitions of 2n+1 into odd parts in which the largest part appears an odd number of times and all other parts appear twice, with respect to a certain weight.

The programs for A290737, there is no canonical definition to state claims against.
-/

/-! ## A290737.P9071323565517112816

`A008443(n)+A143064(n)-A290735(n)`
-/

namespace A290737.P9071323565517112816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 n + (A143064 n - A290735 n)

end

end A290737.P9071323565517112816

/-! ## A290737.P82659562406494866

`A008443(n)-(A290739(n)+A290735(n))`
-/

namespace A290737.P82659562406494866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 n - (A290739 n + A290735 n)

end

end A290737.P82659562406494866

/-!
# A290738: a(n) is the number of fixed polycubes of size n that are proper in n-5 dimensions.

The programs for A290738, there is no canonical definition to state claims against.
-/

/-! ## A290738.P9295018758942842627

`A195739(Δ[A264443(n)])`
-/

namespace A290738.P9295018758942842627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (f1 (n + 1) - f1 n).toNat

end

end A290738.P9295018758942842627

/-! ## A290738.P16988255844816027889

`A195739(A056115(n)+11)`
-/

namespace A290738.P16988255844816027889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (A056115 n + 11).toNat

end

end A290738.P16988255844816027889

/-!
# A290739: a(n) = 0 unless n = 3j^2+2j or 3j^2+4j+1 for some j>=0, in which case a(n) = (-1)^(j+1).

The programs for A290739, the canonical program `A290739.P10153310189044843911` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290739 has offset 0).

The definition of A290739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290739.P3246726052150800362

`A274719(A183856(n+1))`
-/

namespace A290739.P3246726052150800362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (A183856 (n + 1)).toNat

end

end A290739.P3246726052150800362

namespace A290739

/-- `A274719(A183856(n+1))` -/
def P3246726052150800362.Spec : Prop :=
  ∀ n, P3246726052150800362.a n = A290739 n

end A290739

/-! ## A290739.P15018070006773354434

`A274719(A183858(n+1))`
-/

namespace A290739.P15018070006773354434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (A183858 (n + 1)).toNat

end

end A290739.P15018070006773354434

namespace A290739

/-- `A274719(A183858(n+1))` -/
def P15018070006773354434.Spec : Prop :=
  ∀ n, P15018070006773354434.a n = A290739 n

end A290739

/-! ## A290739.P10153310189044843911

`A089802(n)*A089802(∑[A089802(n)]²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290739

/-- `A089802(n)*A089802(∑[A089802(n)]²)` -/
def P10153310189044843911.Spec : Prop :=
  ∀ n, P10153310189044843911.a n = A290739 n

theorem P10153310189044843911.correct : P10153310189044843911.Spec := by
  intro n
  simp only [A290739]

end A290739

/-! ## A290739.P1281706033735754990

`A113277(n)/A300154(n+1)*A099837(A080030(n))`
-/

namespace A290739.P1281706033735754990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (A300154 (n + 1) : ℚ) * (A099837 (A080030 n).toNat : ℚ)

end

end A290739.P1281706033735754990

namespace A290739

/-- `A113277(n)/A300154(n+1)*A099837(A080030(n))` -/
def P1281706033735754990.Spec : Prop :=
  ∀ n, P1281706033735754990.a n = (A290739 n : ℚ)

end A290739

/-! ## A290739.P12995824678516647592

`A113277(n)/A300154(n+1)*A099837(A151800(n))`
-/

namespace A290739.P12995824678516647592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (A300154 (n + 1) : ℚ) * (A099837 (A151800 n).toNat : ℚ)

end

end A290739.P12995824678516647592

namespace A290739

/-- `A113277(n)/A300154(n+1)*A099837(A151800(n))` -/
def P12995824678516647592.Spec : Prop :=
  ∀ n, P12995824678516647592.a n = (A290739 n : ℚ)

end A290739

/-! ## A290739.P6295678833005049402

`A121373(A000037(3*n+2)-(n+1))`
-/

namespace A290739.P6295678833005049402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A000037 (3 * n + 2) - (n + 1 : ℤ)).toNat

end

end A290739.P6295678833005049402

namespace A290739

/-- `A121373(A000037(3*n+2)-(n+1))` -/
def P6295678833005049402.Spec : Prop :=
  ∀ n, P6295678833005049402.a n = A290739 n

end A290739

/-! ## A290739.P6026616517048705713

`-A143064(n)`
-/

namespace A290739.P6026616517048705713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A143064 n

end

end A290739.P6026616517048705713

namespace A290739

/-- `-A143064(n)` -/
def P6026616517048705713.Spec : Prop :=
  ∀ n, P6026616517048705713.a n = A290739 n

theorem P6026616517048705713.correct : P6026616517048705713.Spec := by
  intro n
  simp only [A290739, Nat.add_sub_cancel, A290739.P6026616517048705713.a, A290739.P10153310189044843911.f1, A290739.P10153310189044843911.a, A089802, A089802.P8029284349685483497.a, A143064, A143064.P13024267726719583527.a, A089801, A089801.P7513188891248060037.a, A033684, A033684.P12387515410583376305.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A011655, A011655.P6146775691868591852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290739

/-! ## A290739.P8987000762183095630

`A000007(n+1)-A143064(n)`
-/

namespace A290739.P8987000762183095630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A143064 n

end

end A290739.P8987000762183095630

namespace A290739

/-- `A000007(n+1)-A143064(n)` -/
def P8987000762183095630.Spec : Prop :=
  ∀ n, P8987000762183095630.a n = A290739 n

theorem P8987000762183095630.correct : P8987000762183095630.Spec := by
  intro n
  simp only [A290739, Nat.add_sub_cancel, A290739.P8987000762183095630.a, A290739.P10153310189044843911.f1, A290739.P10153310189044843911.a, A000007, A000007.P6599383543502402472.a, A089802, A089802.P8029284349685483497.a, A143064, A143064.P13024267726719583527.a, A089801, A089801.P7513188891248060037.a, A033684, A033684.P12387515410583376305.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A011655, A011655.P6146775691868591852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290739

/-! ## A290739.P11532706909077763287

`A000035(2*n)-A143064(n)`
-/

namespace A290739.P11532706909077763287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A143064 n

end

end A290739.P11532706909077763287

namespace A290739

/-- `A000035(2*n)-A143064(n)` -/
def P11532706909077763287.Spec : Prop :=
  ∀ n, P11532706909077763287.a n = A290739 n

end A290739

/-! ## A290739.P3238128628537723213

`(A089801(n)-2)*A143064(n)`
-/

namespace A290739.P3238128628537723213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089801 n - 2) * A143064 n

end

end A290739.P3238128628537723213

namespace A290739

/-- `(A089801(n)-2)*A143064(n)` -/
def P3238128628537723213.Spec : Prop :=
  ∀ n, P3238128628537723213.a n = A290739 n

end A290739

/-! ## A290739.P8530169155699380923

`n*A000007(n)-A143064(n)`
-/

namespace A290739.P8530169155699380923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A143064 n

end

end A290739.P8530169155699380923

namespace A290739

/-- `n*A000007(n)-A143064(n)` -/
def P8530169155699380923.Spec : Prop :=
  ∀ n, P8530169155699380923.a n = A290739 n

end A290739

/-! ## A290739.P13399025074065317956

`1-(A143064(n)+A242179(n)²)`
-/

namespace A290739.P13399025074065317956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A143064 n + A242179 n ^ 2)

end

end A290739.P13399025074065317956

namespace A290739

/-- `1-(A143064(n)+A242179(n)²)` -/
def P13399025074065317956.Spec : Prop :=
  ∀ n, P13399025074065317956.a n = A290739 n

end A290739

/-! ## A290739.P60379978549011855

`char[A265713(n+1)]-A143064(n)`
-/

namespace A290739.P60379978549011855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265713 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A143064 n

end

end A290739.P60379978549011855

namespace A290739

/-- `char[A265713(n+1)]-A143064(n)` -/
def P60379978549011855.Spec : Prop :=
  ∀ n, P60379978549011855.a n = A290739 n

end A290739

/-! ## A290739.P6059814285384962996

`A089805(2*n+1)-A143064(n)`
-/

namespace A290739.P6059814285384962996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089805 (2 * n + 1) - A143064 n

end

end A290739.P6059814285384962996

namespace A290739

/-- `A089805(2*n+1)-A143064(n)` -/
def P6059814285384962996.Spec : Prop :=
  ∀ n, P6059814285384962996.a n = A290739 n

end A290739

/-! ## A290739.P14293656794739721343

`char[A143011(3*(n+1))]-A143064(n)`
-/

namespace A290739.P14293656794739721343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143011 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A143064 n

end

end A290739.P14293656794739721343

namespace A290739

/-- `char[A143011(3*(n+1))]-A143064(n)` -/
def P14293656794739721343.Spec : Prop :=
  ∀ n, P14293656794739721343.a n = A290739 n

end A290739

/-! ## A290739.P12822186047813261989

`char[A143023(3*(n+2))]-A143064(n)`
-/

namespace A290739.P12822186047813261989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143023 (3 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A143064 n

end

end A290739.P12822186047813261989

namespace A290739

/-- `char[A143023(3*(n+2))]-A143064(n)` -/
def P12822186047813261989.Spec : Prop :=
  ∀ n, P12822186047813261989.a n = A290739 n

end A290739

/-! ## A290739.P16824067655154855065

`A185284(A320267(n+1))-A143064(n)`
-/

namespace A290739.P16824067655154855065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A320267 (n + 1)).toNat - A143064 n

end

end A290739.P16824067655154855065

namespace A290739

/-- `A185284(A320267(n+1))-A143064(n)` -/
def P16824067655154855065.Spec : Prop :=
  ∀ n, P16824067655154855065.a n = A290739 n

end A290739

/-! ## A290739.P14649731488856204348

`A057979(A057979(2*n))-A143064(n)`
-/

namespace A290739.P14649731488856204348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057979 (2 * n)).toNat - A143064 n

end

end A290739.P14649731488856204348

namespace A290739

/-- `A057979(A057979(2*n))-A143064(n)` -/
def P14649731488856204348.Spec : Prop :=
  ∀ n, P14649731488856204348.a n = A290739 n

end A290739

/-! ## A290739.P15588517281368883731

`A143064(or(2, A057979(n)))-A143064(n)`
-/

namespace A290739.P15588517281368883731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 (Int.lor 2 (A057979 n)).toNat - A143064 n

end

end A290739.P15588517281368883731

namespace A290739

/-- `A143064(or(2, A057979(n)))-A143064(n)` -/
def P15588517281368883731.Spec : Prop :=
  ∀ n, P15588517281368883731.a n = A290739 n

end A290739

/-! ## A290739.P4657369423093199339

`A035327(A035327(n)+n)-A143064(n)`
-/

namespace A290739.P4657369423093199339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 n + (n : ℤ)).toNat - A143064 n

end

end A290739.P4657369423093199339

namespace A290739

/-- `A035327(A035327(n)+n)-A143064(n)` -/
def P4657369423093199339.Spec : Prop :=
  ∀ n, P4657369423093199339.a n = A290739 n

end A290739

/-!
# A290740: a(n) = A290735(n) - |A290737(n) + A290739(n)|.

The programs for A290740, there is no canonical definition to state claims against.
-/

/-! ## A290740.P7930838343365391578

`A298071(A312039(lcm(n, A208615(n))))`
-/

namespace A290740.P7930838343365391578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298071 (A312039 (Int.lcm (n : ℤ) (A208615 n))).toNat

end

end A290740.P7930838343365391578

/-! ## A290740.P5363890264732122534

`A159481(n)-A159459(A085880(n))`
-/

namespace A290740.P5363890264732122534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n - A159459 (A085880 n).toNat

end

end A290740.P5363890264732122534

/-! ## A290740.P18058071084770749418

`A279387(A208314(n+1))+A056172(n+1)`
-/

namespace A290740.P18058071084770749418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A208314 (n + 1)).toNat + A056172 (n + 1)

end

end A290740.P18058071084770749418

/-! ## A290740.P4491791458533599083

`A000120(A243349(record[A166974(n)]))`
-/

namespace A290740.P4491791458533599083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A243349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A290740.P4491791458533599083

/-! ## A290740.P14700871232144945461

`A225643(n)+A124769(A098361(n))`
-/

namespace A290740.P14700871232144945461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 n + A124769 (A098361 n).toNat

end

end A290740.P14700871232144945461

/-!
# A290743: Maximum number of distinct Lyndon factors that can appear in words of length n over an alphabet of size 2.

The programs for A290743, the canonical program `A290743.P8327156519044207070` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290743 has offset 1).

The definition of A290743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290743.P8327156519044207070

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290743

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P8327156519044207070.Spec : Prop :=
  ∀ n, P8327156519044207070.a n = A290743 (n + 1)

theorem P8327156519044207070.correct : P8327156519044207070.Spec := by
  intro n
  simp only [A290743, Nat.add_sub_cancel]

end A290743

/-! ## A290743.P3139279654502624883

`∑[ceil(n/2)]+2`
-/

namespace A290743.P3139279654502624883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A290743.P3139279654502624883

namespace A290743

/-- `∑[ceil(n/2)]+2` -/
def P3139279654502624883.Spec : Prop :=
  ∀ n, P3139279654502624883.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P14367082051804892610

`∑[round(acot(n)+n/2)]`
-/

namespace A290743.P14367082051804892610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + ((n : ℚ) / 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290743.P14367082051804892610

namespace A290743

/-- `∑[round(acot(n)+n/2)]` -/
def P14367082051804892610.Spec : Prop :=
  ∀ n, P14367082051804892610.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P15804894953783702436

`abs(a(n-2)+n)` with `a(0)=2, a(1)=3`
-/

namespace A290743.P15804894953783702436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + n

end

end A290743.P15804894953783702436

namespace A290743

/-- `abs(a(n-2)+n)` -/
def P15804894953783702436.Spec : Prop :=
  ∀ n, (P15804894953783702436.a n : ℤ) = A290743 (n + 1)

end A290743

/-! ## A290743.P12475549641834185174

`floor(a(n-2)+n)` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A290743.P12475549641834185174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + n

end

end A290743.P12475549641834185174

namespace A290743

/-- `floor(a(n-2)+n)` -/
def P12475549641834185174.Spec : Prop :=
  ∀ n, (P12475549641834185174.a n : ℤ) = A290743 (n + 1)

end A290743

/-! ## A290743.P15129539584410995098

`ceil(a(n-2)+n)` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A290743.P15129539584410995098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + n

end

end A290743.P15129539584410995098

namespace A290743

/-- `ceil(a(n-2)+n)` -/
def P15129539584410995098.Spec : Prop :=
  ∀ n, (P15129539584410995098.a n : ℤ) = A290743 (n + 1)

end A290743

/-! ## A290743.P18329824127716365851

`round(a(n-2)+n)` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A290743.P18329824127716365851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + n

end

end A290743.P18329824127716365851

namespace A290743

/-- `round(a(n-2)+n)` -/
def P18329824127716365851.Spec : Prop :=
  ∀ n, (P18329824127716365851.a n : ℤ) = A290743 (n + 1)

end A290743

/-! ## A290743.P14151421298066331893

`∑[n-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A290743.P14151421298066331893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290743.P14151421298066331893

namespace A290743

/-- `∑[n-a(n-1)]` -/
def P14151421298066331893.Spec : Prop :=
  ∀ n, P14151421298066331893.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P18382860126077445815

`∑[2-∑[(2-n)%2]]`
-/

namespace A290743.P18382860126077445815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - (n : ℤ)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290743.P18382860126077445815

namespace A290743

/-- `∑[2-∑[(2-n)%2]]` -/
def P18382860126077445815.Spec : Prop :=
  ∀ n, P18382860126077445815.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P2217248350928536465

`ceil((n+2)/acot(n/4))`
-/

namespace A290743.P2217248350928536465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot ((n : ℚ) / 4 : ℝ)⌉

end

end A290743.P2217248350928536465

namespace A290743

/-- `ceil((n+2)/acot(n/4))` -/
def P2217248350928536465.Spec : Prop :=
  ∀ n, P2217248350928536465.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P2139881715327271484

`(or(3, (n+1)²)+5)/4`
-/

namespace A290743.P2139881715327271484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 ((n + 1) ^ 2) + 5 : ℚ) / 4

end

end A290743.P2139881715327271484

namespace A290743

/-- `(or(3, (n+1)²)+5)/4` -/
def P2139881715327271484.Spec : Prop :=
  ∀ n, P2139881715327271484.a n = (A290743 (n + 1) : ℚ)

end A290743

/-! ## A290743.P4618726024078771586

`floor(record[((n-1)/2)²+2])`
-/

namespace A290743.P4618726024078771586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 2) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A290743.P4618726024078771586

namespace A290743

/-- `floor(record[((n-1)/2)²+2])` -/
def P4618726024078771586.Spec : Prop :=
  ∀ n, P4618726024078771586.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P18392900245987163166

`round(record[((n-1)/2)²+2])`
-/

namespace A290743.P18392900245987163166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 2) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A290743.P18392900245987163166

namespace A290743

/-- `round(record[((n-1)/2)²+2])` -/
def P18392900245987163166.Spec : Prop :=
  ∀ n, P18392900245987163166.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P13997406597635744773

`ceil(record[((1-n)²+5)/4])`
-/

namespace A290743.P13997406597635744773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + 5 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A290743.P13997406597635744773

namespace A290743

/-- `ceil(record[((1-n)²+5)/4])` -/
def P13997406597635744773.Spec : Prop :=
  ∀ n, P13997406597635744773.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P11311303448322352905

`ceil(tan(1)+((n+1)/2)²)`
-/

namespace A290743.P11311303448322352905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (1 : ℝ) + (((n + 1 : ℚ) / 2) ^ 2 : ℝ)⌉

end

end A290743.P11311303448322352905

namespace A290743

/-- `ceil(tan(1)+((n+1)/2)²)` -/
def P11311303448322352905.Spec : Prop :=
  ∀ n, P11311303448322352905.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P7010501506615984530

`round(tan(1)+((n+1)/2)²)`
-/

namespace A290743.P7010501506615984530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (1 : ℝ) + (((n + 1 : ℚ) / 2) ^ 2 : ℝ))

end

end A290743.P7010501506615984530

namespace A290743

/-- `round(tan(1)+((n+1)/2)²)` -/
def P7010501506615984530.Spec : Prop :=
  ∀ n, P7010501506615984530.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P8415925088470983947

`floor(((n+1)/2)²-tan(2))`
-/

namespace A290743.P8415925088470983947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1 : ℚ) / 2) ^ 2 : ℝ) - Real.tan (2 : ℝ)⌋

end

end A290743.P8415925088470983947

namespace A290743

/-- `floor(((n+1)/2)²-tan(2))` -/
def P8415925088470983947.Spec : Prop :=
  ∀ n, P8415925088470983947.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P9704006511216953908

`ceil(asin(1)+((n+1)/2)²)`
-/

namespace A290743.P9704006511216953908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (1 : ℝ) + (((n + 1 : ℚ) / 2) ^ 2 : ℝ)⌉

end

end A290743.P9704006511216953908

namespace A290743

/-- `ceil(asin(1)+((n+1)/2)²)` -/
def P9704006511216953908.Spec : Prop :=
  ∀ n, P9704006511216953908.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P6702482090471205159

`round(asin(1)+((n+1)/2)²)`
-/

namespace A290743.P6702482090471205159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (1 : ℝ) + (((n + 1 : ℚ) / 2) ^ 2 : ℝ))

end

end A290743.P6702482090471205159

namespace A290743

/-- `round(asin(1)+((n+1)/2)²)` -/
def P6702482090471205159.Spec : Prop :=
  ∀ n, P6702482090471205159.a n = A290743 (n + 1)

end A290743

/-! ## A290743.P10997557023103139242

`ceil(cosh(1)+((n+1)/2)²)`
-/

namespace A290743.P10997557023103139242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (1 : ℝ) + (((n + 1 : ℚ) / 2) ^ 2 : ℝ)⌉

end

end A290743.P10997557023103139242

namespace A290743

/-- `ceil(cosh(1)+((n+1)/2)²)` -/
def P10997557023103139242.Spec : Prop :=
  ∀ n, P10997557023103139242.a n = A290743 (n + 1)

end A290743

/-!
# A290744: Maximum number of distinct Lyndon factors that can appear in words of length n over an alphabet of size 5.

The programs for A290744, the canonical program `A290744.P7902962104703009926` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290744 has offset 1).

The definition of A290744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290744.P7902962104703009926

`∑[∑[(n^4)%5]]+5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290744

/-- `∑[∑[(n^4)%5]]+5` -/
def P7902962104703009926.Spec : Prop :=
  ∀ n, (P7902962104703009926.a n : ℤ) = A290744 (n + 1)

theorem P7902962104703009926.correct : P7902962104703009926.Spec := by
  intro n
  simp only [A290744, Nat.add_sub_cancel]

end A290744

/-! ## A290744.P14330721304880256028

`∑[n-floor(n/5)]+5`
-/

namespace A290744.P14330721304880256028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A290744.P14330721304880256028

namespace A290744

/-- `∑[n-floor(n/5)]+5` -/
def P14330721304880256028.Spec : Prop :=
  ∀ n, P14330721304880256028.a n = A290744 (n + 1)

end A290744

/-! ## A290744.P15960789381050296295

`ceil(a(n-1)+4*n/5)` with `a(0)=5`
-/

namespace A290744.P15960789381050296295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈(a (n - 1) : ℚ) + 4 * ((n : ℚ) / 5)⌉

end

end A290744.P15960789381050296295

namespace A290744

/-- `ceil(a(n-1)+4*n/5)` -/
def P15960789381050296295.Spec : Prop :=
  ∀ n, P15960789381050296295.a n = A290744 (n + 1)

end A290744

/-! ## A290744.P12050869667078234801

`∑[n-floor(a(n-1)/4)]` with `a(0)=5, a(1)=1`
-/

namespace A290744.P12050869667078234801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  (n : ℤ) - ⌊(f1 (n - 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290744.P12050869667078234801

namespace A290744

/-- `∑[n-floor(a(n-1)/4)]` -/
def P12050869667078234801.Spec : Prop :=
  ∀ n, P12050869667078234801.a n = A290744 (n + 1)

end A290744

/-! ## A290744.P12538434235077307582

`∑[a(n-5)+4]` with `a(0)=5, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=4`
-/

namespace A290744.P12538434235077307582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 2, 3, 4, 4] fun n f1 =>
  f1 (n - 5) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290744.P12538434235077307582

namespace A290744

/-- `∑[a(n-5)+4]` -/
def P12538434235077307582.Spec : Prop :=
  ∀ n, (P12538434235077307582.a n : ℤ) = A290744 (n + 1)

end A290744

/-! ## A290744.P17500478529330644521

`abs(floor(n/5)-a(n-1)-n)` with `a(0)=5`
-/

namespace A290744.P17500478529330644521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |⌊(n : ℚ) / 5⌋ - a (n - 1) - (n : ℤ)|

end

end A290744.P17500478529330644521

namespace A290744

/-- `abs(floor(n/5)-a(n-1)-n)` -/
def P17500478529330644521.Spec : Prop :=
  ∀ n, P17500478529330644521.a n = A290744 (n + 1)

end A290744

/-! ## A290744.P8804689163690508368

`floor(a(n-1)-floor(n/5)+n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A290744.P8804689163690508368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - ⌊(n : ℚ) / 5⌋ + (n : ℤ)

end

end A290744.P8804689163690508368

namespace A290744

/-- `floor(a(n-1)-floor(n/5)+n)` -/
def P8804689163690508368.Spec : Prop :=
  ∀ n, P8804689163690508368.a n = A290744 (n + 1)

end A290744

/-! ## A290744.P6921226813479692394

`floor(a(n-1)-floor(n/5-n))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A290744.P6921226813479692394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - ⌊(n : ℚ) / 5 - (n : ℚ)⌋

end

end A290744.P6921226813479692394

namespace A290744

/-- `floor(a(n-1)-floor(n/5-n))` -/
def P6921226813479692394.Spec : Prop :=
  ∀ n, P6921226813479692394.a n = A290744 (n + 1)

end A290744

/-! ## A290744.P16017606535724208503

`A020710(A033437(n+1))`
-/

namespace A290744.P16017606535724208503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A033437 (n + 1)).toNat

end

end A290744.P16017606535724208503

namespace A290744

/-- `A020710(A033437(n+1))` -/
def P16017606535724208503.Spec : Prop :=
  ∀ n, P16017606535724208503.a n = A290744 (n + 1)

end A290744

/-! ## A290744.P3918862134759933276

`A068962(A189836(n+1))`
-/

namespace A290744.P3918862134759933276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A189836 (n + 1)).toNat

end

end A290744.P3918862134759933276

namespace A290744

/-- `A068962(A189836(n+1))` -/
def P3918862134759933276.Spec : Prop :=
  ∀ n, P3918862134759933276.a n = A290744 (n + 1)

end A290744

/-!
# A290745: Maximum number of distinct Lyndon factors that can appear in words of length n over an alphabet of size 10.

The programs for A290745, the canonical program `A290745.P12939001347705518517` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290745 has offset 1).

The definition of A290745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290745.P12939001347705518517

`∑[ceil(9*n/10)]+10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290745

/-- `∑[ceil(9*n/10)]+10` -/
def P12939001347705518517.Spec : Prop :=
  ∀ n, P12939001347705518517.a n = A290745 (n + 1)

theorem P12939001347705518517.correct : P12939001347705518517.Spec := by
  intro n
  simp only [A290745, Nat.add_sub_cancel]

end A290745

/-! ## A290745.P20096398994332108

`∑[n-floor(a(n-1)/9)]` with `a(0)=10, a(1)=1`
-/

namespace A290745.P20096398994332108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  (n : ℤ) - ⌊(f1 (n - 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290745.P20096398994332108

namespace A290745

/-- `∑[n-floor(a(n-1)/9)]` -/
def P20096398994332108.Spec : Prop :=
  ∀ n, P20096398994332108.a n = A290745 (n + 1)

end A290745

/-! ## A290745.P8360652998317242774

`abs(floor(n/10)-a(n-1)-n)` with `a(0)=10`
-/

namespace A290745.P8360652998317242774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |⌊(n : ℚ) / 10⌋ - a (n - 1) - (n : ℤ)|

end

end A290745.P8360652998317242774

namespace A290745

/-- `abs(floor(n/10)-a(n-1)-n)` -/
def P8360652998317242774.Spec : Prop :=
  ∀ n, P8360652998317242774.a n = A290745 (n + 1)

end A290745

/-! ## A290745.P4254381760485887556

`A028310(A033442(n+1)+10)`
-/

namespace A290745.P4254381760485887556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A033442 (n + 1) + 10).toNat

end

end A290745.P4254381760485887556

namespace A290745

/-- `A028310(A033442(n+1)+10)` -/
def P4254381760485887556.Spec : Prop :=
  ∀ n, P4254381760485887556.a n = A290745 (n + 1)

end A290745

/-! ## A290745.P16704587990711087047

`∑[A081600(A000007((2*n+1)*a(n-1))+n)]` with `a(0)=10`
-/

namespace A290745.P16704587990711087047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A081600 (A000007 ((2 * n + 1 : ℤ) * f1 (n - 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290745.P16704587990711087047

namespace A290745

/-- `∑[A081600(A000007((2*n+1)*a(n-1))+n)]` -/
def P16704587990711087047.Spec : Prop :=
  ∀ n, P16704587990711087047.a n = A290745 (n + 1)

end A290745

/-!
# A290748: Let F denote the two-way infinite sequence of Fibonacci numbers (for all positive or negative integers k, F(k+2)=F(k)+F(k+1) with F(0)=0, F(1)=1). Sequence lists positive numbers that are the difference between two terms of F.

The programs for A290748, there is no canonical definition to state claims against.
-/

/-! ## A290748.P16277849427340131913

`eq[char[A290749(n+1)], A151933(n)]`
-/

namespace A290748.P16277849427340131913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A290748.P16277849427340131913

/-! ## A290748.P8698128523479473825

`lt[A008287(n)², A292154(n+1)]`
-/

namespace A290748.P8698128523479473825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290748.P8698128523479473825

/-! ## A290748.P18154163464084055164

`∑[A061704(A229915(n))]`
-/

namespace A290748.P18154163464084055164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A229915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290748.P18154163464084055164

/-! ## A290748.P741491696179688888

`lt[A343642(A343659(2*n+5)), A343638(3*n)]`
-/

namespace A290748.P741491696179688888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343642 (A343659 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343638 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290748.P741491696179688888

/-!
# A290749: Let F denote the two-way infinite sequence of Fibonacci numbers (for all positive or negative integers k, F(k+2)=F(k)+F(k+1) with F(0)=0, F(1)=1). Sequence lists positive numbers that are not the difference between two terms of F.

The programs for A290749, there is no canonical definition to state claims against.
-/

/-! ## A290749.P6177319023279418631

`comp[A290748(n+1)-1]+1`
-/

namespace A290749.P6177319023279418631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A290749.P6177319023279418631

/-! ## A290749.P13277047992886757320

`eq[char[A290748(n+1)], A000007(n)]`
-/

namespace A290749.P13277047992886757320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A290749.P13277047992886757320

/-! ## A290749.P14409087561796461355

`eq[char[A290748(n+1)], A000038(n)]`
-/

namespace A290749.P14409087561796461355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A290749.P14409087561796461355

/-! ## A290749.P12055071445356493193

`eq[char[A290748(n+1)], A306957(n)]`
-/

namespace A290749.P12055071445356493193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A290749.P12055071445356493193

/-! ## A290749.P13630131380599596986

`comp[∪[A290748(n+1), A290723(n)]]`
-/

namespace A290749.P13630131380599596986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290723 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A290749.P13630131380599596986

/-! ## A290749.P7920530531677283785

`eq[char[A290748(n+1)], A036987(2*n)]`
-/

namespace A290749.P7920530531677283785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A290749.P7920530531677283785

/-! ## A290749.P13528114290308035839

`eq[char[A290748(n+1)], A076141(7*n)]`
-/

namespace A290749.P13528114290308035839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A290749.P13528114290308035839

/-! ## A290749.P10127235511334403769

`eq[char[A290748(n+1)], 2*A285982(3*n)]`
-/

namespace A290749.P10127235511334403769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285982 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A290749.P10127235511334403769

/-!
# A290750: Inverse Euler transform of [3, 13, 55, 233, 987, 4181, 17711, 75025, 317811, ...], Fibonacci(3*k+1).

The programs for A290750, there is no canonical definition to state claims against.
-/

/-! ## A290750.P14575823942896343721

`A154099(A199845(n+2))`
-/

namespace A290750.P14575823942896343721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A199845 (n + 2)).toNat

end

end A290750.P14575823942896343721

/-!
# A290751: Primes p such that the concatenation 1p is a semiprime.

The programs for A290751, there is no canonical definition to state claims against.
-/

/-! ## A290751.P10931705680987947374

`A047814(A290753(n+1))`
-/

namespace A290751.P10931705680987947374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A290753 (n + 1)).toNat

end

end A290751.P10931705680987947374

/-! ## A290751.P5515175271271019315

`record[A331097(A290752(n+1))]`
-/

namespace A290751.P5515175271271019315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A290752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290751.P5515175271271019315

/-! ## A290751.P16367462463257708329

`A331097(or(1, A290753(n+1)))`
-/

namespace A290751.P16367462463257708329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (Int.lor 1 (A290753 (n + 1))).toNat

end

end A290751.P16367462463257708329

/-! ## A290751.P1474213420513575988

`A331097(∏{p}[A290753(n+1), #])`
-/

namespace A290751.P1474213420513575988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A290751.P1474213420513575988

/-! ## A290751.P17001683714053550396

`∑{d}[A331097(A290753(n+1)), A000010(#)]`
-/

namespace A290751.P17001683714053550396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A290753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A290751.P17001683714053550396

/-! ## A290751.P18437500622755338705

`∑{p}[A331097(A290753(n+1)), A014963(#)]`
-/

namespace A290751.P18437500622755338705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A290753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A290751.P18437500622755338705

/-! ## A290751.P15241638266291607458

`A331097(A290753(n+1))%Δ[A001249(n)]`
-/

namespace A290751.P15241638266291607458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331097 (A290753 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A290751.P15241638266291607458

/-! ## A290751.P2539150911278763661

`A331097(A290753(n+1))+A000007(n+1)`
-/

namespace A290751.P2539150911278763661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A290753 (n + 1)).toNat + A000007 (n + 1)

end

end A290751.P2539150911278763661

/-! ## A290751.P3548698837387926652

`A000034(2*n)*A331097(A290753(n+1))`
-/

namespace A290751.P3548698837387926652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A331097 (A290753 (n + 1)).toNat

end

end A290751.P3548698837387926652

/-! ## A290751.P18112157792647473118

`A331097(A290753(n+1))+A004526(∑[(-1)^n])`
-/

namespace A290751.P18112157792647473118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A290753 (n + 1)).toNat + A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290751.P18112157792647473118

/-!
# A290752: Semiprimes beginning with 1 such that deleting the 1 leaves a prime.

The programs for A290752, there is no canonical definition to state claims against.
-/

/-! ## A290752.P780698970776348172

`∏{p}[A290753(n+1)², #]`
-/

namespace A290752.P780698970776348172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290753 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A290752.P780698970776348172

/-! ## A290752.P17994990438976065416

`A290753(A062399(n+1))`
-/

namespace A290752.P17994990438976065416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290753 (A062399 (n + 1)).toNat

end

end A290752.P17994990438976065416

/-! ## A290752.P11470404762055791918

`A290753(A351870(n+1))`
-/

namespace A290752.P11470404762055791918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290753 (A351870 (n + 1)).toNat

end

end A290752.P11470404762055791918

/-! ## A290752.P1578372821040443435

`A007947(A290753(n+1)²)`
-/

namespace A290752.P1578372821040443435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A290753 (n + 1) ^ 2).toNat

end

end A290752.P1578372821040443435

/-! ## A290752.P3539147144580449442

`A007947(A290753(n+1)^2)`
-/

namespace A290752.P3539147144580449442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A290753 (n + 1) ^ 2).toNat

end

end A290752.P3539147144580449442

/-!
# A290753: Semiprimes beginning with 1 such that deleting the 1 leaves a prime.

The programs for A290753, there is no canonical definition to state claims against.
-/

/-! ## A290753.P16143149993488101132

`∩[A039790(n+1), A290752(n+1)]`
-/

namespace A290753.P16143149993488101132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290753.P16143149993488101132

/-! ## A290753.P3653443479892735712

`A037283(A290751(n+1))`
-/

namespace A290753.P3653443479892735712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037283 (A290751 (n + 1)).toNat

end

end A290753.P3653443479892735712

/-! ## A290753.P4722960440659723109

`A123132(p?[A290751(n+1)])`
-/

namespace A290753.P4722960440659723109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A290753.P4722960440659723109

/-! ## A290753.P17899559351906527793

`A123132(or(1, A290751(n+1)))`
-/

namespace A290753.P17899559351906527793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (Int.lor 1 (A290751 (n + 1))).toNat

end

end A290753.P17899559351906527793

/-! ## A290753.P17935301230210594532

`filter[A039790(n+1), A064911(#)]`
-/

namespace A290753.P17935301230210594532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A290753.P17935301230210594532

/-! ## A290753.P12349070820574033343

`filter[A039790(n+1), A280710(#)]`
-/

namespace A290753.P12349070820574033343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A290753.P12349070820574033343

/-! ## A290753.P1832108221882635618

`filter[A039790(n+1), A340370(#)]`
-/

namespace A290753.P1832108221882635618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A290753.P1832108221882635618

/-! ## A290753.P1101932689599187768

`filter[A039790(n+1), A353480(#)]`
-/

namespace A290753.P1101932689599187768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A290753.P1101932689599187768

/-! ## A290753.P11760985292318259279

`filter[A039790(n+1), A353481(#)]`
-/

namespace A290753.P11760985292318259279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A290753.P11760985292318259279

/-! ## A290753.P260961384009994942

`filter[A039790(n+2), A359828(#)]`
-/

namespace A290753.P260961384009994942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A290753.P260961384009994942

/-! ## A290753.P8507204134410610793

`A123132(∏{d}[A290751(n+1), #])`
-/

namespace A290753.P8507204134410610793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A290753.P8507204134410610793

/-! ## A290753.P18359121973311833197

`∩[A001358(n+1), A039790(n+1)]`
-/

namespace A290753.P18359121973311833197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290753.P18359121973311833197

/-! ## A290753.P4639258926915585105

`∩[A006881(n+1), A039790(n+1)]`
-/

namespace A290753.P4639258926915585105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290753.P4639258926915585105

/-! ## A290753.P5456866085324656746

`∩[A039790(n+1), A046315(n+1)]`
-/

namespace A290753.P5456866085324656746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290753.P5456866085324656746

/-! ## A290753.P17038854005847443346

`∩[A039790(n+1), A046388(n+1)]`
-/

namespace A290753.P17038854005847443346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290753.P17038854005847443346

/-! ## A290753.P15800417444840992937

`A123132(2*A290751(n+1)-A290751(n+1))`
-/

namespace A290753.P15800417444840992937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (2 * A290751 (n + 1) - A290751 (n + 1)).toNat

end

end A290753.P15800417444840992937

/-!
# A290754: Number of 4 X n binary matrices that are "primitive"; that is, they cannot be expressed as a "tiling" by a smaller matrix.

The programs for A290754, there is no canonical definition to state claims against.
-/

/-! ## A290754.P4254628677364359499

`A323862(Δ[n²]+∑[n+2]+4)`
-/

namespace A290754.P4254628677364359499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A290754.P4254628677364359499

/-!
# A290755: Number of minimal edge covers in the n-crown graph.

The programs for A290755, there is no canonical definition to state claims against.
-/

/-! ## A290755.P14596560919990879851

`A246731(n)-A201912(A270919(n))`
-/

namespace A290755.P14596560919990879851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246731 n - A201912 (A270919 n).toNat

end

end A290755.P14596560919990879851

/-! ## A290755.P5623921420160326486

`A115414(n+1)%A022304(A006129(n))`
-/

namespace A290755.P5623921420160326486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115414 (n + 1)) (A022304 (A006129 n).toNat)

end

end A290755.P5623921420160326486

/-!
# A290756: Number of (non-null) connected induced subgraphs of the complete tripartite graph K_{n,n,n}.

The programs for A290756, the canonical program `A290756.P8950354292545954813` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290756 has offset 1).

The definition of A290756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290756.P8950354292545954813

`8^(n+1)-3*2^(n+1)+3*(n+1)+2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290756

/-- `8^(n+1)-3*2^(n+1)+3*(n+1)+2` -/
def P8950354292545954813.Spec : Prop :=
  ∀ n, P8950354292545954813.a n = A290756 (n + 1)

theorem P8950354292545954813.correct : P8950354292545954813.Spec := by
  intro n
  simp only [A290756, Nat.add_sub_cancel]

end A290756

/-! ## A290756.P16317352398724457227

`∑[Δ[A302942(n)]+3]`
-/

namespace A290756.P16317352398724457227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290756.P16317352398724457227

namespace A290756

/-- `∑[Δ[A302942(n)]+3]` -/
def P16317352398724457227.Spec : Prop :=
  ∀ n, P16317352398724457227.a n = A290756 (n + 1)

end A290756

/-!
# A290757: Number of (non-null) connected induced subgraphs in the (2 n)-crossed prism graph.

The programs for A290757, the canonical program `A290757.P7136561897913226983` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290757 has offset 2).

The definition of A290757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290757.P7136561897913226983

`7^(n+2)+(n+2)*(191*7^n-14)/3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290757

/-- `7^(n+2)+(n+2)*(191*7^n-14)/3` -/
def P7136561897913226983.Spec : Prop :=
  ∀ n, P7136561897913226983.a n = (A290757 (n + 2) : ℚ)

end A290757

/-!
# A290758: Number of (non-null) connected induced subgraphs in the n-hypercube graph Q_n.

The programs for A290758, there is no canonical definition to state claims against.
-/

/-! ## A290758.P18231163557738403294

`A051179(n)-A362519(n)`
-/

namespace A290758.P18231163557738403294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051179 n - A362519 n

end

end A290758.P18231163557738403294

/-!
# A290759: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of continued fraction 1/(1 - x/(1 - k*x/(1 - k^2*x/(1 - k^3*x/(1 - k^4*x/(1 - ...)))))).

The programs for A290759, there is no canonical definition to state claims against.
-/

/-! ## A290759.P4811771611752605469

`A090182(∑[char[∑[n]]]²-(n+1))`
-/

namespace A290759.P4811771611752605469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A290759.P4811771611752605469

/-! ## A290759.P6183875845786390190

`A185016(3*n+4)+A090182(A061579(n))`
-/

namespace A290759.P6183875845786390190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (3 * n + 4) + A090182 (A061579 n).toNat

end

end A290759.P6183875845786390190

/-! ## A290759.P3404557152332606468

`A090182(A061579(n))*A296077(A000005(n+1))`
-/

namespace A290759.P3404557152332606468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (A061579 n).toNat * A296077 (A000005 (n + 1)).toNat

end

end A290759.P3404557152332606468

/-! ## A290759.P9223897638077150090

`A090182(A061579(n))*A296077(A000040(n+1))`
-/

namespace A290759.P9223897638077150090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (A061579 n).toNat * A296077 (A000040 (n + 1)).toNat

end

end A290759.P9223897638077150090

/-! ## A290759.P8360414789499849054

`A090182(A061579(n))%A042504(n)`
-/

namespace A290759.P8360414789499849054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090182 (A061579 n).toNat) (A042504 n)

end

end A290759.P8360414789499849054

/-!
# A290760: Matula-Goebel numbers of transitive rooted identity trees (or transitive finitary sets).

The programs for A290760, there is no canonical definition to state claims against.
-/

/-! ## A290760.P8184357832182835154

`filter[A120383(n+1), A008966(#)]`
-/

namespace A290760.P8184357832182835154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A290760.P8184357832182835154

/-! ## A290760.P1506644508028514388

`∩[A005117(n+1), A120383(n+1)]`
-/

namespace A290760.P1506644508028514388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290760.P1506644508028514388

/-! ## A290760.P9119636958987418173

`∩[A034044(n+1), A120383(n+1)]`
-/

namespace A290760.P9119636958987418173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290760.P9119636958987418173

/-! ## A290760.P9861551589685685632

`∩[A080324(n+1), A120383(n+1)]`
-/

namespace A290760.P9861551589685685632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290760.P9861551589685685632

/-! ## A290760.P7970566177306639608

`∩[A089269(n+1), A120383(n+1)]`
-/

namespace A290760.P7970566177306639608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290760.P7970566177306639608

/-!
# A290762: Number of minimal edge covers in the n-gear graph.

The programs for A290762, there is no canonical definition to state claims against.
-/

/-! ## A290762.P8174369809773155315

`A325534(3*n+2)+A206487(A000669(n+1))`
-/

namespace A290762.P8174369809773155315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (3 * n + 2) + A206487 (A000669 (n + 1)).toNat

end

end A290762.P8174369809773155315

/-! ## A290762.P16971165590560277585

`A067539(A301676(3*n))+1`
-/

namespace A290762.P16971165590560277585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (A301676 (3 * n)).toNat + 1

end

end A290762.P16971165590560277585

/-!
# A290764: Number of (non-null) connected induced subgraphs in the 2 X n king graph.

The programs for A290764, the canonical program `A290764.P6996163627235583452` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290764 has offset 1).

The definition of A290764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290764.P814925003644763084

`3/4*(3^(n+2)-2*(n+1)-3)`
-/

namespace A290764.P814925003644763084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * ((3 ^ (n + 2) : ℤ) - (2 * (n + 1) : ℤ) - 3 : ℚ)

end

end A290764.P814925003644763084

namespace A290764

/-- `3/4*(3^(n+2)-2*(n+1)-3)` -/
def P814925003644763084.Spec : Prop :=
  ∀ n, P814925003644763084.a n = (A290764 (n + 1) : ℚ)

theorem P814925003644763084.correct : P814925003644763084.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A290764, Nat.add_sub_cancel, A290764.P814925003644763084.a, A290764.P6996163627235583452.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A290764, Nat.add_sub_cancel, A290764.P814925003644763084.a, A290764.P6996163627235583452.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290764

/-! ## A290764.P6996163627235583452

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=15, a(2)=54`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290764

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P6996163627235583452.Spec : Prop :=
  ∀ n, P6996163627235583452.a n = A290764 (n + 1)

theorem P6996163627235583452.correct : P6996163627235583452.Spec := by
  intro n
  simp only [A290764, Nat.add_sub_cancel]

end A290764

/-! ## A290764.P10060902035467590920

`∑[ogf(3/(1-4x+3x^2))]`
-/

namespace A290764.P10060902035467590920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P10060902035467590920

namespace A290764

/-- `∑[ogf(3/(1-4x+3x^2))]` -/
def P10060902035467590920.Spec : Prop :=
  ∀ n, P10060902035467590920.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P15466037886005862072

`ogf(3/(1-5x+7x^2-3x^3))`
-/

namespace A290764.P15466037886005862072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -5, 7, -3] n

end

end A290764.P15466037886005862072

namespace A290764

/-- `ogf(3/(1-5x+7x^2-3x^3))` -/
def P15466037886005862072.Spec : Prop :=
  ∀ n, P15466037886005862072.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P17549726567451201302

`lcm(3, ∑[∑[3*3^n]])`
-/

namespace A290764.P17549726567451201302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290764.P17549726567451201302

namespace A290764

/-- `lcm(3, ∑[∑[3*3^n]])` -/
def P17549726567451201302.Spec : Prop :=
  ∀ n, (P17549726567451201302.a n : ℤ) = A290764 (n + 1)

end A290764

/-! ## A290764.P6215883865725347056

`abs(∑[∑[3*a(n-1)]])` with `a(0)=3`
-/

namespace A290764.P6215883865725347056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P6215883865725347056

namespace A290764

/-- `abs(∑[∑[3*a(n-1)]])` -/
def P6215883865725347056.Spec : Prop :=
  ∀ n, (P6215883865725347056.a n : ℤ) = A290764 (n + 1)

end A290764

/-! ## A290764.P10810002624647192453

`floor(∑[∑[3*a(n-1)]])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A290764.P10810002624647192453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P10810002624647192453

namespace A290764

/-- `floor(∑[∑[3*a(n-1)]])` -/
def P10810002624647192453.Spec : Prop :=
  ∀ n, (P10810002624647192453.a n : ℤ) = A290764 (n + 1)

end A290764

/-! ## A290764.P341141864203303549

`ceil(∑[∑[3*a(n-1)]])` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A290764.P341141864203303549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P341141864203303549

namespace A290764

/-- `ceil(∑[∑[3*a(n-1)]])` -/
def P341141864203303549.Spec : Prop :=
  ∀ n, (P341141864203303549.a n : ℤ) = A290764 (n + 1)

end A290764

/-! ## A290764.P15797225660990468139

`round(∑[∑[3*a(n-1)]])` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A290764.P15797225660990468139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P15797225660990468139

namespace A290764

/-- `round(∑[∑[3*a(n-1)]])` -/
def P15797225660990468139.Spec : Prop :=
  ∀ n, (P15797225660990468139.a n : ℤ) = A290764 (n + 1)

end A290764

/-! ## A290764.P15727645510386666418

`floor(∑[a(n-1)+a(n-1)+a(n-1)+3])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A290764.P15727645510386666418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P15727645510386666418

namespace A290764

/-- `floor(∑[a(n-1)+a(n-1)+a(n-1)+3])` -/
def P15727645510386666418.Spec : Prop :=
  ∀ n, (P15727645510386666418.a n : ℤ) = A290764 (n + 1)

end A290764

/-! ## A290764.P15906779035283970254

`∑[A123109(n+1)]`
-/

namespace A290764.P15906779035283970254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P15906779035283970254

namespace A290764

/-- `∑[A123109(n+1)]` -/
def P15906779035283970254.Spec : Prop :=
  ∀ n, P15906779035283970254.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P10035132435784605692

`∑[A029858(n+2)]`
-/

namespace A290764.P10035132435784605692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P10035132435784605692

namespace A290764

/-- `∑[A029858(n+2)]` -/
def P10035132435784605692.Spec : Prop :=
  ∀ n, P10035132435784605692.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P4211616634337916478

`∑[∑[A000244(n+1)]]`
-/

namespace A290764.P4211616634337916478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P4211616634337916478

namespace A290764

/-- `∑[∑[A000244(n+1)]]` -/
def P4211616634337916478.Spec : Prop :=
  ∀ n, P4211616634337916478.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P18181890037804472077

`∑[∑[A133494(n+2)]]`
-/

namespace A290764.P18181890037804472077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P18181890037804472077

namespace A290764

/-- `∑[∑[A133494(n+2)]]` -/
def P18181890037804472077.Spec : Prop :=
  ∀ n, P18181890037804472077.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P13513625611091927142

`∑[∑[A140429(n+2)]]`
-/

namespace A290764.P13513625611091927142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P13513625611091927142

namespace A290764

/-- `∑[∑[A140429(n+2)]]` -/
def P13513625611091927142.Spec : Prop :=
  ∀ n, P13513625611091927142.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P9826494141932365680

`∑[∑[A155734(n+2)]]`
-/

namespace A290764.P9826494141932365680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P9826494141932365680

namespace A290764

/-- `∑[∑[A155734(n+2)]]` -/
def P9826494141932365680.Spec : Prop :=
  ∀ n, P9826494141932365680.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P9277265709142723535

`∑[∑[A376478(n+3)]]`
-/

namespace A290764.P9277265709142723535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376478 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P9277265709142723535

namespace A290764

/-- `∑[∑[A376478(n+3)]]` -/
def P9277265709142723535.Spec : Prop :=
  ∀ n, P9277265709142723535.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P2018722142199927208

`∑[A087503(2*n+1)]`
-/

namespace A290764.P2018722142199927208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P2018722142199927208

namespace A290764

/-- `∑[A087503(2*n+1)]` -/
def P2018722142199927208.Spec : Prop :=
  ∀ n, P2018722142199927208.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P17763273228297308911

`∑[A094025(2*n+1)]`
-/

namespace A290764.P17763273228297308911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094025 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290764.P17763273228297308911

namespace A290764

/-- `∑[A094025(2*n+1)]` -/
def P17763273228297308911.Spec : Prop :=
  ∀ n, P17763273228297308911.a n = A290764 (n + 1)

end A290764

/-! ## A290764.P3909644988350800551

`Δ[A052150(n)]-(n+2)`
-/

namespace A290764.P3909644988350800551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A290764.P3909644988350800551

namespace A290764

/-- `Δ[A052150(n)]-(n+2)` -/
def P3909644988350800551.Spec : Prop :=
  ∀ n, P3909644988350800551.a n = A290764 (n + 1)

end A290764

/-!
# A290767: Primes p such that p^2 +/ - p +/ - 1 are all nonprimes.

The programs for A290767, there is no canonical definition to state claims against.
-/

/-! ## A290767.P12117005438186329403

`p?[A291689(n+1)]`
-/

namespace A290767.P12117005438186329403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290767.P12117005438186329403

/-! ## A290767.P8979961469125845074

`filter[A291689(n+1), A010051(#)]`
-/

namespace A290767.P8979961469125845074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A290767.P8979961469125845074

/-! ## A290767.P7226881396319858048

`record[A006530(2*A291689(n+1))]`
-/

namespace A290767.P7226881396319858048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A291689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290767.P7226881396319858048

/-! ## A290767.P12373548344462553931

`record[A006530(lcm(2, A291689(n+1)))]`
-/

namespace A290767.P12373548344462553931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A291689 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290767.P12373548344462553931

/-! ## A290767.P9650983354488297872

`∩[A000040(n+1), A291689(n+1)]`
-/

namespace A290767.P9650983354488297872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P9650983354488297872

/-! ## A290767.P3408586801711761793

`∩[A004139(n+1), A291689(n+1)]`
-/

namespace A290767.P3408586801711761793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P3408586801711761793

/-! ## A290767.P10038742357513316170

`∩[A006005(n+1), A291689(n+1)]`
-/

namespace A290767.P10038742357513316170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P10038742357513316170

/-! ## A290767.P8699637411667684666

`∩[A008578(n+1), A291689(n+1)]`
-/

namespace A290767.P8699637411667684666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P8699637411667684666

/-! ## A290767.P11399081251847338114

`∩[A033946(n+1), A291689(n+1)]`
-/

namespace A290767.P11399081251847338114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P11399081251847338114

/-! ## A290767.P7587665073739467160

`∩[A045319(n+1), A291689(n+1)]`
-/

namespace A290767.P7587665073739467160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P7587665073739467160

/-! ## A290767.P181355147613865306

`∩[A045344(n+1), A291689(n+1)]`
-/

namespace A290767.P181355147613865306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P181355147613865306

/-! ## A290767.P2968832631380922267

`∩[A046022(n+1), A291689(n+1)]`
-/

namespace A290767.P2968832631380922267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P2968832631380922267

/-! ## A290767.P16831586794112012989

`∩[A051948(n+1), A291689(n+1)]`
-/

namespace A290767.P16831586794112012989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P16831586794112012989

/-! ## A290767.P2180135425447065348

`∩[A065091(n+1), A291689(n+1)]`
-/

namespace A290767.P2180135425447065348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P2180135425447065348

/-! ## A290767.P15286466216740805781

`∩[A066050(n+1), A291689(n+1)]`
-/

namespace A290767.P15286466216740805781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P15286466216740805781

/-! ## A290767.P3455129831532276515

`∩[A067126(n+1), A291689(n+1)]`
-/

namespace A290767.P3455129831532276515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P3455129831532276515

/-! ## A290767.P2269150685239647306

`∩[A140826(n+1), A291689(n+1)]`
-/

namespace A290767.P2269150685239647306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290767.P2269150685239647306

/-! ## A290767.P15157106844151250140

`p?[(n+1)*A291654(n+1)]`
-/

namespace A290767.P15157106844151250140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A291654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290767.P15157106844151250140

/-! ## A290767.P10997994611281476538

`filter[A291689(n+1), A080339(#)]`
-/

namespace A290767.P10997994611281476538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A290767.P10997994611281476538

/-! ## A290767.P11907310235900236070

`filter[A291689(n+1), A080545(#)]`
-/

namespace A290767.P11907310235900236070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A290767.P11907310235900236070

/-!
# A290768: a(n) = (3/2)*(n^2 - n + 2).

The programs for A290768, the canonical program `A290768.P12007897247886688948` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290768 has offset 1).

The definition of A290768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3/2*((n+1)²-(n+1)+2)` (program `A290768.P14496899006640299317`, by `A290768.P14496899006640299317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290768.P14496899006640299317

`3/2*((n+1)²-(n+1)+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290768.P14496899006640299317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2 : ℚ)

end

end A290768.P14496899006640299317

namespace A290768

/-- `3/2*((n+1)²-(n+1)+2)` -/
def P14496899006640299317.Spec : Prop :=
  ∀ n, P14496899006640299317.a n = (A290768 (n + 1) : ℚ)

theorem P14496899006640299317.correct : P14496899006640299317.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A290768, Nat.add_sub_cancel, A290768.P14496899006640299317.a, A290768.P12007897247886688948.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A290768, Nat.add_sub_cancel, A290768.P14496899006640299317.a, A290768.P12007897247886688948.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290768

/-! ## A290768.P12007897247886688948

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=6, a(2)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290768

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12007897247886688948.Spec : Prop :=
  ∀ n, P12007897247886688948.a n = A290768 (n + 1)

theorem P12007897247886688948.correct : P12007897247886688948.Spec := by
  intro n
  simp only [A290768, Nat.add_sub_cancel]

end A290768

/-! ## A290768.P17339722577773564499

`lcm(3, ∑[n]+1)`
-/

namespace A290768.P17339722577773564499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A290768.P17339722577773564499

namespace A290768

/-- `lcm(3, ∑[n]+1)` -/
def P17339722577773564499.Spec : Prop :=
  ∀ n, (P17339722577773564499.a n : ℤ) = A290768 (n + 1)

end A290768

/-! ## A290768.P5247437033300521921

`abs(3*xor(-1, ∑[n]))`
-/

namespace A290768.P5247437033300521921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A290768.P5247437033300521921

namespace A290768

/-- `abs(3*xor(-1, ∑[n]))` -/
def P5247437033300521921.Spec : Prop :=
  ∀ n, P5247437033300521921.a n = A290768 (n + 1)

end A290768

/-! ## A290768.P15383666560617693695

`-(3*xor(-1, ∑[n]))`
-/

namespace A290768.P15383666560617693695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 * Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A290768.P15383666560617693695

namespace A290768

/-- `-(3*xor(-1, ∑[n]))` -/
def P15383666560617693695.Spec : Prop :=
  ∀ n, P15383666560617693695.a n = A290768 (n + 1)

end A290768

/-! ## A290768.P2597841473782616323

`ceil(3*(∑[n]-cos(3)))`
-/

namespace A290768.P2597841473782616323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (3 : ℝ))⌉

end

end A290768.P2597841473782616323

namespace A290768

/-- `ceil(3*(∑[n]-cos(3)))` -/
def P2597841473782616323.Spec : Prop :=
  ∀ n, P2597841473782616323.a n = A290768 (n + 1)

end A290768

/-! ## A290768.P18414912128698178079

`round(3*(∑[n]-cos(3)))`
-/

namespace A290768.P18414912128698178079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (3 : ℝ)))

end

end A290768.P18414912128698178079

namespace A290768

/-- `round(3*(∑[n]-cos(3)))` -/
def P18414912128698178079.Spec : Prop :=
  ∀ n, P18414912128698178079.a n = A290768 (n + 1)

end A290768

/-! ## A290768.P12447823681613130902

`floor(3/acot(∑[n]+1))`
-/

namespace A290768.P12447823681613130902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌋

end

end A290768.P12447823681613130902

namespace A290768

/-- `floor(3/acot(∑[n]+1))` -/
def P12447823681613130902.Spec : Prop :=
  ∀ n, P12447823681613130902.a n = A290768 (n + 1)

end A290768

/-! ## A290768.P5067641135392210200

`∑[3*round(1/acot(n))]`
-/

namespace A290768.P5067641135392210200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290768.P5067641135392210200

namespace A290768

/-- `∑[3*round(1/acot(n))]` -/
def P5067641135392210200.Spec : Prop :=
  ∀ n, P5067641135392210200.a n = A290768 (n + 1)

end A290768

/-! ## A290768.P13147392412832874046

`3/tan(acot(∑[n]+1))`
-/

namespace A290768.P13147392412832874046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))

end

end A290768.P13147392412832874046

namespace A290768

/-- `3/tan(acot(∑[n]+1))` -/
def P13147392412832874046.Spec : Prop :=
  ∀ n, P13147392412832874046.a n = (A290768 (n + 1) : ℝ)

end A290768

/-! ## A290768.P12272788743555269507

`(∑[n]+1)/cot(atan(3))`
-/

namespace A290768.P12272788743555269507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ) / Real.cot (Real.arctan (3 : ℝ))

end

end A290768.P12272788743555269507

namespace A290768

/-- `(∑[n]+1)/cot(atan(3))` -/
def P12272788743555269507.Spec : Prop :=
  ∀ n, P12272788743555269507.a n = (A290768 (n + 1) : ℝ)

end A290768

/-! ## A290768.P2460517452572013895

`∑[3*n^floor(atan(n))]`
-/

namespace A290768.P2460517452572013895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290768.P2460517452572013895

namespace A290768

/-- `∑[3*n^floor(atan(n))]` -/
def P2460517452572013895.Spec : Prop :=
  ∀ n, P2460517452572013895.a n = (A290768 (n + 1) : ℚ)

end A290768

/-! ## A290768.P3086662287595456827

`3*C(n+1, 2)+3`
-/

namespace A290768.P3086662287595456827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) 2 + 3

end

end A290768.P3086662287595456827

namespace A290768

/-- `3*C(n+1, 2)+3` -/
def P3086662287595456827.Spec : Prop :=
  ∀ n, (P3086662287595456827.a n : ℤ) = A290768 (n + 1)

end A290768

/-! ## A290768.P3790420130070078327

`∑[a(n-1)+3]` with `a(0)=3, a(1)=3`
-/

namespace A290768.P3790420130070078327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290768.P3790420130070078327

namespace A290768

/-- `∑[a(n-1)+3]` -/
def P3790420130070078327.Spec : Prop :=
  ∀ n, (P3790420130070078327.a n : ℤ) = A290768 (n + 1)

end A290768

/-! ## A290768.P2059163755288029950

`a(n-1)+3*n` with `a(0)=3`
-/

namespace A290768.P2059163755288029950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 3 * n

end

end A290768.P2059163755288029950

namespace A290768

/-- `a(n-1)+3*n` -/
def P2059163755288029950.Spec : Prop :=
  ∀ n, (P2059163755288029950.a n : ℤ) = A290768 (n + 1)

end A290768

/-! ## A290768.P16539962277925058814

`∑[n+1]+or(2, n²)`
-/

namespace A290768.P16539962277925058814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 2 (n ^ 2)

end

end A290768.P16539962277925058814

namespace A290768

/-- `∑[n+1]+or(2, n²)` -/
def P16539962277925058814.Spec : Prop :=
  ∀ n, (P16539962277925058814.a n : ℤ) = A290768 (n + 1)

end A290768

/-! ## A290768.P10692356465424456139

`∑[n+1]+xor(2, n²)`
-/

namespace A290768.P10692356465424456139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 2 (n ^ 2)

end

end A290768.P10692356465424456139

namespace A290768

/-- `∑[n+1]+xor(2, n²)` -/
def P10692356465424456139.Spec : Prop :=
  ∀ n, (P10692356465424456139.a n : ℤ) = A290768 (n + 1)

end A290768

/-! ## A290768.P2362032655106255475

`∑[n*a(∑[(-1)^n])]` with `a(0)=3`
-/

namespace A290768.P2362032655106255475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290768.P2362032655106255475

namespace A290768

/-- `∑[n*a(∑[(-1)^n])]` -/
def P2362032655106255475.Spec : Prop :=
  ∀ n, (P2362032655106255475.a n : ℤ) = A290768 (n + 1)

end A290768

/-! ## A290768.P5535759610533153385

`∑[ogf((3-3x+3x^2)/(1-2x+x^2))]`
-/

namespace A290768.P5535759610533153385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290768.P5535759610533153385

namespace A290768

/-- `∑[ogf((3-3x+3x^2)/(1-2x+x^2))]` -/
def P5535759610533153385.Spec : Prop :=
  ∀ n, P5535759610533153385.a n = A290768 (n + 1)

end A290768

/-! ## A290768.P7505689369326780035

`ogf((3-3x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A290768.P7505689369326780035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 3] [1, -3, 3, -1] n

end

end A290768.P7505689369326780035

namespace A290768

/-- `ogf((3-3x+3x^2)/(1-3x+3x^2-x^3))` -/
def P7505689369326780035.Spec : Prop :=
  ∀ n, P7505689369326780035.a n = A290768 (n + 1)

end A290768

/-!
# A290769: Number of (non-null) connected induced subgraphs in the n X n white bishop graph.

The programs for A290769, there is no canonical definition to state claims against.
-/

/-! ## A290769.P14499924898034163877

`A291595(n+2)-A290719(n+2)`
-/

namespace A290769.P14499924898034163877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291595 (n + 2) - A290719 (n + 2)

end

end A290769.P14499924898034163877

/-!
# A290770: a(n) = Product_{k=1..n} k^(2*k).

The programs for A290770, there is no canonical definition to state claims against.
-/

/-! ## A290770.P5813151495386311652

`A002109(n)²`
-/

namespace A290770.P5813151495386311652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002109 n ^ 2

end

end A290770.P5813151495386311652

/-! ## A290770.P6232492859145595633

`∏[(n^n)²]`
-/

namespace A290770.P6232492859145595633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290770.P6232492859145595633

/-! ## A290770.P3805478314410033415

`(n^n)²*a(n-1)` with `a(0)=1`
-/

namespace A290770.P3805478314410033415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n) ^ 2 * a (n - 1)

end

end A290770.P3805478314410033415

/-! ## A290770.P5437584722754972988

`abs(n^(2*n)*a(n-1))` with `a(0)=1`
-/

namespace A290770.P5437584722754972988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ (2 * n) * a (n - 1)

end

end A290770.P5437584722754972988

/-! ## A290770.P18063561986712245205

`floor(n^(2*n)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A290770.P18063561986712245205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ (2 * n) * a (n - 1)

end

end A290770.P18063561986712245205

/-!
# A290771: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of the continued fraction 1/(1 - x/(1 - x^(2^k)/(1 - x^(3^k)/(1 - x^(4^k)/(1 - x^(5^k)/(1 - ...)))))).

The programs for A290771, there is no canonical definition to state claims against.
-/

/-! ## A290771.P7034922892108991009

`A118759(ceil(A009766(n)/A173881(n)))`
-/

namespace A290771.P7034922892108991009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ⌈(A009766 n : ℚ) / (A173881 n : ℚ)⌉.toNat

end

end A290771.P7034922892108991009

/-! ## A290771.P8670847075283133376

`A000196(ceil(A009766(n)/A173881(n))²)`
-/

namespace A290771.P8670847075283133376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (⌈(A009766 n : ℚ) / (A173881 n : ℚ)⌉ ^ 2).toNat

end

end A290771.P8670847075283133376

/-! ## A290771.P1495005010876860419

`ceil(A003056(A001498(n))/A001497(n))`
-/

namespace A290771.P1495005010876860419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 (A001498 n).toNat : ℚ) / (A001497 n : ℚ)⌉

end

end A290771.P1495005010876860419

/-! ## A290771.P10374417029882712355

`ceil(A118759(A009766(n))/A001497(n))`
-/

namespace A290771.P10374417029882712355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118759 (A009766 n).toNat : ℚ) / (A001497 n : ℚ)⌉

end

end A290771.P10374417029882712355

/-! ## A290771.P3218754557896946389

`gcd(A112395(A008292(n+1)), A309522(n))`
-/

namespace A290771.P3218754557896946389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112395 (A008292 (n + 1)).toNat) (A309522 n)

end

end A290771.P3218754557896946389

/-!
# A290772: Number of cyclic Gray codes of length 2n which include all-0 bit sequence and use the least possible number of bits.

The programs for A290772, there is no canonical definition to state claims against.
-/

/-! ## A290772.P10221694406469258347

`A367299(record[A296355(n)+1])`
-/

namespace A290772.P10221694406469258347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296355 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290772.P10221694406469258347

/-!
# A290775: Number of 5-cycles in the n-triangular honeycomb bishop graph.

The programs for A290775, the canonical program `A290775.P15145667519499342208` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290775 has offset 1).

The definition of A290775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290775.P15145667519499342208

`2/5*C(n+2, 4)*(8-7*(n+1)+2*(n+1)²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290775

/-- `2/5*C(n+2, 4)*(8-7*(n+1)+2*(n+1)²)` -/
def P15145667519499342208.Spec : Prop :=
  ∀ n, P15145667519499342208.a n = (A290775 (n + 1) : ℚ)

end A290775

/-! ## A290775.P220087380725054192

`(n+1)*(2*(n+1)^5-11*(n+1)^4+20*(n+1)^3-5*(n+1)²-22*(n+1)+16)/60`
-/

namespace A290775.P220087380725054192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 5 : ℤ) - (11 * (n + 1) ^ 4 : ℤ) + (20 * (n + 1) ^ 3 : ℤ) - (5 * (n + 1) ^ 2 : ℤ) - (22 * (n + 1) : ℤ) + 16) : ℚ) / 60

end

end A290775.P220087380725054192

namespace A290775

/-- `(n+1)*(2*(n+1)^5-11*(n+1)^4+20*(n+1)^3-5*(n+1)²-22*(n+1)+16)/60` -/
def P220087380725054192.Spec : Prop :=
  ∀ n, P220087380725054192.a n = (A290775 (n + 1) : ℚ)

end A290775

/-!
# A290776: Triangle T(n,k) read by rows: the number of connected, loopless, non-oriented, vertex-labeled graphs with n >= 0 edges and k >= 1 vertices, allowing multi-edges.

The programs for A290776, there is no canonical definition to state claims against.
-/

/-! ## A290776.P2414832333515327996

`∑{d}[A327027(n), A194980(#)]`
-/

namespace A290776.P2414832333515327996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A194980 d

end

end A290776.P2414832333515327996

/-! ## A290776.P1082314217373253724

`A216806(n)+A102683(A006822(n))`
-/

namespace A290776.P1082314217373253724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 n + A102683 (A006822 n).toNat

end

end A290776.P1082314217373253724

/-! ## A290776.P6857677324672220972

`A216806(n)+A185284(A055922(n))`
-/

namespace A290776.P6857677324672220972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 n + A185284 (A055922 n).toNat

end

end A290776.P6857677324672220972

/-! ## A290776.P9868265322557523485

`A216806(n)+A185284(A349061(n))`
-/

namespace A290776.P9868265322557523485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 n + A185284 (A349061 n).toNat

end

end A290776.P9868265322557523485

/-! ## A290776.P15010290620216796322

`A055570(A216806(n)-A102683(n))`
-/

namespace A290776.P15010290620216796322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A216806 n - A102683 n).toNat

end

end A290776.P15010290620216796322

/-!
# A290777: a(n) = n-th Carlitz-Riordan q-Catalan number (recurrence version) for q = n.

The programs for A290777, there is no canonical definition to state claims against.
-/

/-! ## A290777.P5482695451296093044

`A090182(∑[4*n])`
-/

namespace A290777.P5482695451296093044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290777.P5482695451296093044

/-! ## A290777.P16135572811219407123

`A290759(∑[4*n])`
-/

namespace A290777.P16135572811219407123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290777.P16135572811219407123

/-! ## A290777.P5314821371999886047

`A090182(A046092(n))^A178334(n)`
-/

namespace A290777.P5314821371999886047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090182 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A290777.P5314821371999886047

/-! ## A290777.P6023978417452758559

`lcm(A015111(n), A090182(A046092(n)))`
-/

namespace A290777.P6023978417452758559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015111 n) (A090182 (A046092 n).toNat)

end

end A290777.P6023978417452758559

/-! ## A290777.P4446326018725664830

`A290759(A046092(n))+A161089(n+1)`
-/

namespace A290777.P4446326018725664830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A046092 n).toNat + A161089 (n + 1)

end

end A290777.P4446326018725664830

/-!
# A290778: Number of connected undirected unlabeled loopless multigraphs with 4 vertices and n edges.

The programs for A290778, the canonical program `A290778.P11544281249416864993` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290778 has offset 0).

The definition of A290778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290778.P15247771534846155614

`A328652(round(sqrt(n²+1)))-floor(n/2)`
-/

namespace A290778.P15247771534846155614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328652 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - ⌊(n : ℚ) / 2⌋

end

end A290778.P15247771534846155614

namespace A290778

/-- `A328652(round(sqrt(n²+1)))-floor(n/2)` -/
def P15247771534846155614.Spec : Prop :=
  ∀ n, P15247771534846155614.a n = A290778 n

end A290778

/-! ## A290778.P11544281249416864993

`ceil(n/2)+A328652(A028310(n))-n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A290778

/-- `ceil(n/2)+A328652(A028310(n))-n` -/
def P11544281249416864993.Spec : Prop :=
  ∀ n, P11544281249416864993.a n = A290778 n

theorem P11544281249416864993.correct : P11544281249416864993.Spec := by
  intro n
  simp only [A290778]

end A290778

/-! ## A290778.P8136579675529521463

`A003082(n)-(A004526(n)+A001399(n))`
-/

namespace A290778.P8136579675529521463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 n - (A004526 n + A001399 n)

end

end A290778.P8136579675529521463

namespace A290778

/-- `A003082(n)-(A004526(n)+A001399(n))` -/
def P8136579675529521463.Spec : Prop :=
  ∀ n, P8136579675529521463.a n = A290778 n

end A290778

/-! ## A290778.P13796018342868428573

`A191646(C(n+2, 2)+2-A233583(n+1))`
-/

namespace A290778.P13796018342868428573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191646 ((Nat.choose (n + 2) 2 + 2 : ℤ) - A233583 (n + 1)).toNat

end

end A290778.P13796018342868428573

namespace A290778

/-- `A191646(C(n+2, 2)+2-A233583(n+1))` -/
def P13796018342868428573.Spec : Prop :=
  ∀ n, P13796018342868428573.a n = A290778 n

end A290778

/-! ## A290778.P7699655752125969556

`A191646(A034856(n+1)-A004275(n))`
-/

namespace A290778.P7699655752125969556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191646 (A034856 (n + 1) - A004275 n).toNat

end

end A290778.P7699655752125969556

namespace A290778

/-- `A191646(A034856(n+1)-A004275(n))` -/
def P7699655752125969556.Spec : Prop :=
  ∀ n, P7699655752125969556.a n = A290778 n

end A290778

/-! ## A290778.P7316271086175284810

`A191646(A000124(n)+2)%A000664(n)`
-/

namespace A290778.P7316271086175284810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191646 (A000124 n + 2).toNat) (A000664 n)

end

end A290778.P7316271086175284810

namespace A290778

/-- `A191646(A000124(n)+2)%A000664(n)` -/
def P7316271086175284810.Spec : Prop :=
  ∀ n, P7316271086175284810.a n = A290778 n

end A290778

/-! ## A290778.P16177091639873910674

`A008683(A001748(n+1))*A191646(A000124(n)+2)`
-/

namespace A290778.P16177091639873910674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001748 (n + 1)).toNat * A191646 (A000124 n + 2).toNat

end

end A290778.P16177091639873910674

namespace A290778

/-- `A008683(A001748(n+1))*A191646(A000124(n)+2)` -/
def P16177091639873910674.Spec : Prop :=
  ∀ n, P16177091639873910674.a n = A290778 n

end A290778

/-!
# A290779: Number of 6-cycles in the n-triangular honeycomb bishop graph.

The programs for A290779, there is no canonical definition to state claims against.
-/

/-! ## A290779.P16631674473863359858

`A243159(A057827(n))`
-/

namespace A290779.P16631674473863359858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243159 (A057827 n).toNat

end

end A290779.P16631674473863359858

/-!
# A290781: a(n) = 20*n + 15.

The programs for A290781, the canonical program `A290781.P16709635685453272756` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290781 has offset 0).

The definition of A290781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*n+15` (program `A290781.P16709635685453272756`, by `A290781.P16709635685453272756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290781.P16709635685453272756

`20*n+15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290781

/-- `20*n+15` -/
def P16709635685453272756.Spec : Prop :=
  ∀ n, (P16709635685453272756.a n : ℤ) = A290781 n

theorem P16709635685453272756.correct : P16709635685453272756.Spec := by
  intro n
  simp only [A290781]

end A290781

/-!
# A290784: Number of (non-null) connected induced subgraphs in the n-triangular honeycomb obtuse knight graph.

The programs for A290784, there is no canonical definition to state claims against.
-/

/-! ## A290784.P13036959387693075461

`∑[A328675(∏[∏{e}[n+1, #+1]])]`
-/

namespace A290784.P13036959387693075461
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328675 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290784.P13036959387693075461

/-!
# A290786: a(n) = n-th Carlitz-Riordan q-Catalan number (recurrence version) for q = -n.

The programs for A290786, there is no canonical definition to state claims against.
-/

/-! ## A290786.P9523529789579434524

`A290789(∑[4*n])`
-/

namespace A290786.P9523529789579434524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290786.P9523529789579434524

/-! ## A290786.P1790302106832083292

`A290789(A046092(n))+A025469(n)`
-/

namespace A290786.P1790302106832083292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (A046092 n).toNat + A025469 n

end

end A290786.P1790302106832083292

/-! ## A290786.P5421536404293603549

`A047996(n)*A290789(A046092(n))`
-/

namespace A290786.P5421536404293603549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A290789 (A046092 n).toNat

end

end A290786.P5421536404293603549

/-! ## A290786.P1806835325565531185

`or(A080953(n), A290789(A046092(n)))`
-/

namespace A290786.P1806835325565531185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080953 n) (A290789 (A046092 n).toNat)

end

end A290786.P1806835325565531185

/-! ## A290786.P474801462730842229

`or(A097331(n), A290789(A046092(n)))`
-/

namespace A290786.P474801462730842229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097331 n) (A290789 (A046092 n).toNat)

end

end A290786.P474801462730842229

/-!
# A290787: a(n) is the position of the first occurrence of n^3 in the concatenation of the positive integers in decimal representation.

The programs for A290787, there is no canonical definition to state claims against.
-/

/-! ## A290787.P11096639572918819592

`A031297(Δ[∑[n]²])`
-/

namespace A290787.P11096639572918819592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290787.P11096639572918819592

/-! ## A290787.P7130472263552871262

`A229186(Δ[∑[n]²])`
-/

namespace A290787.P7130472263552871262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290787.P7130472263552871262

/-! ## A290787.P16878719088213201353

`A086044((n+1)^3)-1`
-/

namespace A290787.P16878719088213201353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 ((n + 1) ^ 3) - 1

end

end A290787.P16878719088213201353

/-! ## A290787.P8121495445529196570

`A229186(A000578(n+1))+char[24]`
-/

namespace A290787.P8121495445529196570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (A000578 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290787.P8121495445529196570

/-! ## A290787.P17872424510341861424

`A031297((n+1)^3)%A166581(n+1)`
-/

namespace A290787.P17872424510341861424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031297 ((n + 1) ^ 3)) (A166581 (n + 1))

end

end A290787.P17872424510341861424

/-!
# A290788: Values of n such that 6^n ends in n, or expomorphic numbers in "base" 6.

The programs for A290788, there is no canonical definition to state claims against.
-/

/-! ## A290788.P9045741287818938805

`∑[10^n*A133616(n)]`
-/

namespace A290788.P9045741287818938805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A133616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290788.P9045741287818938805

/-! ## A290788.P10517769377082502769

`∑[dr(A133616(n))*A011557(n)]`
-/

namespace A290788.P10517769377082502769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A133616 n) : ℤ) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290788.P10517769377082502769

/-!
# A290789: A(n,k) is the n-th Carlitz-Riordan q-Catalan number (recurrence version) for q = -k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A290789, there is no canonical definition to state claims against.
-/

/-! ## A290789.P6093043954096841496

`A101021(A048993(n))*A336727(n)`
-/

namespace A290789.P6093043954096841496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101021 (A048993 n).toNat * A336727 n

end

end A290789.P6093043954096841496

/-!
# A290790: Number of maximal irredundant sets in the n X n grid graph.

The programs for A290790, there is no canonical definition to state claims against.
-/

/-! ## A290790.P16738527864619187621

`A291439(∑[4*n]+1)`
-/

namespace A290790.P16738527864619187621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A290790.P16738527864619187621

/-!
# A290791: a(n) is the smallest integer k > n such that (k+1)(k+2)...(2k-2n+1)/(k(k-1)...(k-n+1)) is an integer.

The programs for A290791, there is no canonical definition to state claims against.
-/

/-! ## A290791.P9860660161378280392

`A291545(Δ[n²])`
-/

namespace A290791.P9860660161378280392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290791.P9860660161378280392

/-! ## A290791.P3550401965206695756

`record[A291545(or(2, n))]`
-/

namespace A290791.P3550401965206695756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290791.P3550401965206695756

/-! ## A290791.P5689843251265296579

`root(A291545(2*n+1), 2)²`
-/

namespace A290791.P5689843251265296579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A291545 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A290791.P5689843251265296579

/-! ## A290791.P12831544904016666324

`A291545(2*(n+1))-char[1]`
-/

namespace A290791.P12831544904016666324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (2 * (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290791.P12831544904016666324

/-! ## A290791.P381468567553891932

`record[A291545(n+1)-n%2]`
-/

namespace A290791.P381468567553891932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290791.P381468567553891932

/-! ## A290791.P5937391860620126854

`filter[A291545(2*n+1), A005171(#)]`
-/

namespace A290791.P5937391860620126854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A290791.P5937391860620126854

/-! ## A290791.P6610792205942423937

`filter[A291545(2*n+1), A014306(#)]`
-/

namespace A290791.P6610792205942423937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A290791.P6610792205942423937

/-! ## A290791.P8329220148825313102

`filter[A291545(2*n+1), A066247(#)]`
-/

namespace A290791.P8329220148825313102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A290791.P8329220148825313102

/-! ## A290791.P5234270104575850324

`filter[A291545(2*n+1), A283265(#)]`
-/

namespace A290791.P5234270104575850324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A290791.P5234270104575850324

/-! ## A290791.P2379021152009029526

`filter[A291545(2*n+1), A131695(#)]`
-/

namespace A290791.P2379021152009029526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291545 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j).toNat = 1) n)

end

end A290791.P2379021152009029526

/-!
# A290792: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)^2*(k+2)/12)).

The programs for A290792, there is no canonical definition to state claims against.
-/

/-! ## A290792.P10085304109628062838

`A052409(2^A025770(A004526(n)))`
-/

namespace A290792.P10085304109628062838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025770 (A004526 n).toNat : ℤ))).toNat

end

end A290792.P10085304109628062838

/-! ## A290792.P14555997702016194399

`A025770(A004526(n))%p?[A109722(n)]`
-/

namespace A290792.P14555997702016194399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025770 (A004526 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A290792.P14555997702016194399

/-! ## A290792.P5841497989194579299

`A025770(A123108(n)%A308486(n+1))`
-/

namespace A290792.P5841497989194579299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (Int.tmod (A123108 n) (A308486 (n + 1))).toNat

end

end A290792.P5841497989194579299

/-! ## A290792.P7500212256029496197

`A025770(A008619(n)-A233562(n+1)%2)`
-/

namespace A290792.P7500212256029496197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (A008619 n - Int.tmod (A233562 (n + 1)) 2).toNat

end

end A290792.P7500212256029496197

/-! ## A290792.P17415562908634918160

`A025770(A004526(n))+A000007(A002939(n+1))`
-/

namespace A290792.P17415562908634918160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (A004526 n).toNat + A000007 (A002939 (n + 1)).toNat

end

end A290792.P17415562908634918160

/-! ## A290792.P6259515736377376224

`A010142(A045104(n+1))*A025770(A004526(n))`
-/

namespace A290792.P6259515736377376224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 (A045104 (n + 1)).toNat * A025770 (A004526 n).toNat

end

end A290792.P6259515736377376224

/-! ## A290792.P15457496133537198304

`A025770(A004526(n))*A084642(A014206(2*n))`
-/

namespace A290792.P15457496133537198304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (A004526 n).toNat * A084642 (A014206 (2 * n)).toNat

end

end A290792.P15457496133537198304

/-!
# A290794: Coefficients in 7-adic expansion of sqrt(-6).

The programs for A290794, there is no canonical definition to state claims against.
-/

/-! ## A290794.P16034362402074970683

`A000007(n)+6-A290795(n)`
-/

namespace A290794.P16034362402074970683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A290795 n)

end

end A290794.P16034362402074970683

/-! ## A290794.P12218776662111446857

`or(6-A290795(n), A323152(A016825(n)))`
-/

namespace A290794.P12218776662111446857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 - A290795 n) (A323152 (A016825 n).toNat)

end

end A290794.P12218776662111446857

/-! ## A290794.P10220444376320532664

`A051277(n)+A290558(n)-A290795(n)`
-/

namespace A290794.P10220444376320532664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051277 n + (A290558 n - A290795 n)

end

end A290794.P10220444376320532664

/-! ## A290794.P8966819193531246013

`A290798(n)+A290799(n)-A290795(n)`
-/

namespace A290794.P8966819193531246013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290798 n + (A290799 n - A290795 n)

end

end A290794.P8966819193531246013

/-! ## A290794.P13434021741749225302

`char[A326540(A001222(n+1))]+6-A290795(n)`
-/

namespace A290794.P13434021741749225302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 (A001222 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (6 - A290795 n)

end

end A290794.P13434021741749225302

/-! ## A290794.P8453708783416428071

`A323152(A323139(n+1))+6-A290795(n)`
-/

namespace A290794.P8453708783416428071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (A323139 (n + 1)).toNat + (6 - A290795 n)

end

end A290794.P8453708783416428071

/-! ## A290794.P12165887695643070850

`A323152((n+1)²)+6-A290795(n)`
-/

namespace A290794.P12165887695643070850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 ((n + 1) ^ 2) + (6 - A290795 n)

end

end A290794.P12165887695643070850

/-! ## A290794.P2500172286471949497

`A020715(A151878(n))-A290795(n)`
-/

namespace A290794.P2500172286471949497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A151878 n).toNat - A290795 n

end

end A290794.P2500172286471949497

/-! ## A290794.P7594992166064189088

`A290796(n)+A290797(n)-A290795(n)`
-/

namespace A290794.P7594992166064189088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290796 n + (A290797 n - A290795 n)

end

end A290794.P7594992166064189088

/-! ## A290794.P6101010876027332783

`A020715(A151933(n))-A290795(n)`
-/

namespace A290794.P6101010876027332783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A151933 n).toNat - A290795 n

end

end A290794.P6101010876027332783

/-!
# A290795: Coefficients in 7-adic expansion of sqrt(-6).

The programs for A290795, there is no canonical definition to state claims against.
-/

/-! ## A290795.P950347117256425503

`A000007(n)+6-A290794(n)`
-/

namespace A290795.P950347117256425503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A290794 n)

end

end A290795.P950347117256425503

/-! ## A290795.P17846156257036110624

`6-lcm(A062157(n), A290794(n))`
-/

namespace A290795.P17846156257036110624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (Int.lcm (A062157 n) (A290794 n) : ℤ)

end

end A290795.P17846156257036110624

/-! ## A290795.P11554077424926113678

`A051277(n)+A290558(n)-A290794(n)`
-/

namespace A290795.P11554077424926113678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051277 n + (A290558 n - A290794 n)

end

end A290795.P11554077424926113678

/-! ## A290795.P2123281040860620828

`A290798(n)+A290799(n)-A290794(n)`
-/

namespace A290795.P2123281040860620828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290798 n + (A290799 n - A290794 n)

end

end A290795.P2123281040860620828

/-! ## A290795.P9489888349168249697

`A007814(A000040(n+1))+6-A290794(n)`
-/

namespace A290795.P9489888349168249697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000040 (n + 1)).toNat + (6 - A290794 n)

end

end A290795.P9489888349168249697

/-! ## A290795.P15967812795159284187

`A020710(A014963(A014574(n+1)))-A290794(n)`
-/

namespace A290795.P15967812795159284187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A014963 (A014574 (n + 1)).toNat).toNat - A290794 n

end

end A290795.P15967812795159284187

/-! ## A290795.P10860232307036832738

`A290796(n)+A290797(n)-A290794(n)`
-/

namespace A290795.P10860232307036832738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290796 n + (A290797 n - A290794 n)

end

end A290795.P10860232307036832738

/-!
# A290796: Coefficients in 7-adic expansion of sqrt(-3).

The programs for A290796, there is no canonical definition to state claims against.
-/

/-! ## A290796.P17199293139210334532

`floor(acot(n)+6-A290797(n))`
-/

namespace A290796.P17199293139210334532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (6 - A290797 n : ℝ)⌋

end

end A290796.P17199293139210334532

/-! ## A290796.P2905563588012890155

`A000007(n)+6-A290797(n)`
-/

namespace A290796.P2905563588012890155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A290797 n)

end

end A290796.P2905563588012890155

/-! ## A290796.P8286728855912271522

`A151878(n)+6-A290797(n)`
-/

namespace A290796.P8286728855912271522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (6 - A290797 n)

end

end A290796.P8286728855912271522

/-! ## A290796.P2262106842803171353

`7-(A290797(n)+A057427(n))`
-/

namespace A290796.P2262106842803171353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (A290797 n + A057427 n)

end

end A290796.P2262106842803171353

/-! ## A290796.P7142665548810893728

`A008683((n+1)²)+6-A290797(n)`
-/

namespace A290796.P7142665548810893728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (6 - A290797 n)

end

end A290796.P7142665548810893728

/-! ## A290796.P12121328934574724083

`(6-A290797(n))*A014963(4*n+2)`
-/

namespace A290796.P12121328934574724083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - A290797 n) * A014963 (4 * n + 2)

end

end A290796.P12121328934574724083

/-! ## A290796.P14845353790865408674

`A000045(C(2, n+2))+6-A290797(n)`
-/

namespace A290796.P14845353790865408674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (6 - A290797 n)

end

end A290796.P14845353790865408674

/-! ## A290796.P13295209924340182724

`A001222(ceil(2/(n+1)))+6-A290797(n)`
-/

namespace A290796.P13295209924340182724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈2 / (n + 1 : ℚ)⌉.toNat + (6 - A290797 n)

end

end A290796.P13295209924340182724

/-! ## A290796.P7211992287862126945

`((A000040(n+1)+3)%2)^n+6-A290797(n)`
-/

namespace A290796.P7211992287862126945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + 3) 2 ^ n + (6 - A290797 n)

end

end A290796.P7211992287862126945

/-! ## A290796.P8669477593859973197

`((p?[a(A001222(n+1)-1)+41]-1)%3)²+6-A290797(n)` with `a(0)=2`
-/

namespace A290796.P8669477593859973197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (A001222 (n + 1) - 1).toNat + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) 3 ^ 2 + (6 - A290797 n)

end

end A290796.P8669477593859973197

/-!
# A290797: Coefficients in 7-adic expansion of sqrt(-3).

The programs for A290797, there is no canonical definition to state claims against.
-/

/-! ## A290797.P401311406412371729

`floor(acot(n))+6-A290796(n)`
-/

namespace A290797.P401311406412371729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (6 - A290796 n)

end

end A290797.P401311406412371729

/-! ## A290797.P10453921877165459576

`A000007(n)+6-A290796(n)`
-/

namespace A290797.P10453921877165459576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A290796 n)

end

end A290797.P10453921877165459576

/-! ## A290797.P5444225726613020635

`6-A290796(n)/A054977(n)`
-/

namespace A290797.P5444225726613020635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 - (A290796 n : ℚ) / (A054977 n : ℚ)

end

end A290797.P5444225726613020635

/-! ## A290797.P14946576971371214594

`A008683((n+1)²)+6-A290796(n)`
-/

namespace A290797.P14946576971371214594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (6 - A290796 n)

end

end A290797.P14946576971371214594

/-! ## A290797.P16971376391442190575

`val(A000040(n+1), 2)+6-A290796(n)`
-/

namespace A290797.P16971376391442190575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (6 - A290796 n)

end

end A290797.P16971376391442190575

/-! ## A290797.P3106549369028460904

`and(1, A000010(n+2))+6-A290796(n)`
-/

namespace A290797.P3106549369028460904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (n + 2)) + (6 - A290796 n)

end

end A290797.P3106549369028460904

/-! ## A290797.P7236470458436325308

`A000045(C(2, n+2))+6-A290796(n)`
-/

namespace A290797.P7236470458436325308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (6 - A290796 n)

end

end A290797.P7236470458436325308

/-! ## A290797.P2495153000477580085

`A000005(C(2, n+2)+1)-A290796(n)+5`
-/

namespace A290797.P2495153000477580085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (n + 2) + 1) - A290796 n + 5

end

end A290797.P2495153000477580085

/-!
# A290798: Coefficients in 7-adic expansion of sqrt(-5).

The programs for A290798, there is no canonical definition to state claims against.
-/

/-! ## A290798.P7376600764537689130

`A000007(n)+6-A290799(n)`
-/

namespace A290798.P7376600764537689130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A290799 n)

end

end A290798.P7376600764537689130

/-! ## A290798.P1598594015763029453

`and(7, A040210(n)-A290799(n))`
-/

namespace A290798.P1598594015763029453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A040210 n - A290799 n)

end

end A290798.P1598594015763029453

/-! ## A290798.P8902241078334419187

`7-A062157(n)²-A290799(n)`
-/

namespace A290798.P8902241078334419187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A062157 n ^ 2 - A290799 n

end

end A290798.P8902241078334419187

/-! ## A290798.P1143037713528507418

`A051277(n)+A290558(n)-A290799(n)`
-/

namespace A290798.P1143037713528507418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051277 n + (A290558 n - A290799 n)

end

end A290798.P1143037713528507418

/-! ## A290798.P9705187978522310728

`A290794(n)+A290795(n)-A290799(n)`
-/

namespace A290798.P9705187978522310728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290794 n + (A290795 n - A290799 n)

end

end A290798.P9705187978522310728

/-! ## A290798.P5397118600766106584

`7-(A290799(n)+A242481(2*n+1))`
-/

namespace A290798.P5397118600766106584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (A290799 n + A242481 (2 * n + 1))

end

end A290798.P5397118600766106584

/-! ## A290798.P16395848816605870248

`A008683(A102376(n))+6-A290799(n)`
-/

namespace A290798.P16395848816605870248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A102376 n).toNat + (6 - A290799 n)

end

end A290798.P16395848816605870248

/-! ## A290798.P16522541537461279659

`A290796(n)+A290797(n)-A290799(n)`
-/

namespace A290798.P16522541537461279659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290796 n + (A290797 n - A290799 n)

end

end A290798.P16522541537461279659

/-! ## A290798.P1653366919355655997

`A145511(A001248(n+1))-A290799(n)`
-/

namespace A290798.P1653366919355655997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (A001248 (n + 1)).toNat - A290799 n

end

end A290798.P1653366919355655997

/-!
# A290799: Coefficients in 7-adic expansion of sqrt(-5).

The programs for A290799, there is no canonical definition to state claims against.
-/

/-! ## A290799.P610764027135963758

`C(2, n+2)+6-A290798(n)`
-/

namespace A290799.P610764027135963758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (6 - A290798 n)

end

end A290799.P610764027135963758

/-! ## A290799.P18438471725942391697

`A000007(n)+6-A290798(n)`
-/

namespace A290799.P18438471725942391697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A290798 n)

end

end A290799.P18438471725942391697

/-! ## A290799.P9546686908363578463

`A056965(a(n-1))+6-A290798(n)` with `a(0)=4`
-/

namespace A290799.P9546686908363578463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A056965 (a (n - 1)).toNat + (6 - A290798 n)

end

end A290799.P9546686908363578463

/-! ## A290799.P16541362673485855688

`A008683(A008574(n))+6-A290798(n)`
-/

namespace A290799.P16541362673485855688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (6 - A290798 n)

end

end A290799.P16541362673485855688

/-! ## A290799.P2454039758819173839

`A051277(n)+A290558(n)-A290798(n)`
-/

namespace A290799.P2454039758819173839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051277 n + (A290558 n - A290798 n)

end

end A290799.P2454039758819173839

/-! ## A290799.P17923834501368861313

`A290794(n)+A290795(n)-A290798(n)`
-/

namespace A290799.P17923834501368861313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290794 n + (A290795 n - A290798 n)

end

end A290799.P17923834501368861313

/-! ## A290799.P10558763013593473794

`7-(A290798(n)+A163963(n+2)%2)`
-/

namespace A290799.P10558763013593473794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (A290798 n + Int.tmod (A163963 (n + 2)) 2)

end

end A290799.P10558763013593473794

/-! ## A290799.P3365211706379482182

`and(1, A151878(n))+6-A290798(n)`
-/

namespace A290799.P3365211706379482182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A151878 n) + (6 - A290798 n)

end

end A290799.P3365211706379482182

/-! ## A290799.P2707090504335636677

`A151933(n)%2+6-A290798(n)`
-/

namespace A290799.P2707090504335636677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151933 n) 2 + (6 - A290798 n)

end

end A290799.P2707090504335636677

